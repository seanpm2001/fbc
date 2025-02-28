' TEST_MODE : MULTI_MODULE_TEST

'' test mapping of mangling and calling convention
'' between fbc and c/c++ class procedures

'' helper macro to track progress
#define DLOG( msg ) '' print #msg

#if ENABLE_CHECK_BUGS
	#define DOTEST
	#define DOFUNCS
#else
	#define DOTEST

	'' some structures returned by value from g++
	'' not working for several targets.  Just disable
	'' for now.  It's likely related to passing
	'' structs in registers and size of the struct.
	#if defined( __FB_WIN32__ )
		#define DOFUNCS
	#endif
#endif

#ifndef NULL
#define NULL 0
#endif

extern "c++"
	'' getters to retrieve call information
	'' from the c++ side
	declare sub resetChecks()
	declare function getPtr1() as any ptr
	declare function getPtr2() as any ptr
	declare function getPtr3() as any ptr
	declare function getMsg1() as zstring ptr

type UDT
	value as long
	declare constructor ()
	declare constructor ( byval rhs as long )
	declare constructor ( byref rhs as const UDT )
	declare destructor ()
end type

end extern

extern "c"
	declare sub sub1_c_default( byref a as const UDT )
	declare sub sub1_c_cdecl cdecl( byref a as const UDT )
	declare sub sub1_c_stdcall stdcall( byref a as const UDT )
	declare function func1_c_default( byref a as const UDT ) as UDT
	declare function func1_c_cdecl cdecl( byref a as const UDT ) as UDT
	declare function func1_c_stdcall stdcall( byref a as const UDT ) as UDT

	declare sub sub2_c_default( byref a as const UDT, byref b as const UDT )
	declare sub sub2_c_cdecl cdecl( byref a as const UDT, byref b as const UDT )
	declare sub sub2_c_stdcall stdcall( byref a as const UDT, byref b as const UDT )
	declare function func2_c_default( byref a as const UDT, byref b as const UDT ) as UDT
	declare function func2_c_cdecl cdecl( byref a as const UDT, byref b as const UDT ) as UDT
	declare function func2_c_stdcall stdcall( byref a as const UDT, byref b as const UDT ) as UDT

	declare sub sub3_c_default( byref a as const UDT, byref b as const UDT, byref c as const UDT )
	declare sub sub3_c_cdecl cdecl( byref a as const UDT, byref b as const UDT, byref c as const UDT )
	declare sub sub3_c_stdcall stdcall( byref a as const UDT, byref b as const UDT, byref c as const UDT )
	declare function func3_c_default( byref a as const UDT, byref b as const UDT, byref c as const UDT ) as UDT
	declare function func3_c_cdecl cdecl( byref a as const UDT, byref b as const UDT, byref c as const UDT ) as UDT
	declare function func3_c_stdcall stdcall( byref a as const UDT, byref b as const UDT, byref c as const UDT ) as UDT
end extern

extern "c++"
	declare sub sub1_cpp_default( byref a as const UDT )
	declare sub sub1_cpp_cdecl cdecl( byref a as const UDT )
	declare sub sub1_cpp_stdcall stdcall( byref a as const UDT )
	declare function func1_cpp_default( byref a as const UDT ) as UDT
	declare function func1_cpp_cdecl cdecl( byref a as const UDT ) as UDT
	declare function func1_cpp_stdcall stdcall( byref a as const UDT ) as UDT

	declare sub sub2_cpp_default( byref a as const UDT, byref b as const UDT )
	declare sub sub2_cpp_cdecl cdecl( byref a as const UDT, byref b as const UDT )
	declare sub sub2_cpp_stdcall stdcall( byref a as const UDT, byref b as const UDT )
	declare function func2_cpp_default( byref a as const UDT, byref b as const UDT ) as UDT
	declare function func2_cpp_cdecl cdecl( byref a as const UDT, byref b as const UDT ) as UDT
	declare function func2_cpp_stdcall stdcall( byref a as const UDT, byref b as const UDT ) as UDT

	declare sub sub3_cpp_default( byref a as const UDT, byref b as const UDT, byref c as const UDT )
	declare sub sub3_cpp_cdecl cdecl( byref a as const UDT, byref b as const UDT, byref c as const UDT )
	declare sub sub3_cpp_stdcall stdcall( byref a as const UDT, byref b as const UDT, byref c as const UDT )
	declare function func3_cpp_default( byref a as const UDT, byref b as const UDT, byref c as const UDT ) as UDT
	declare function func3_cpp_cdecl cdecl( byref a as const UDT, byref b as const UDT, byref c as const UDT ) as UDT
	declare function func3_cpp_stdcall stdcall( byref a as const UDT, byref b as const UDT, byref c as const UDT ) as UDT
end extern

#macro chksub( count, n )
	DLOG( n )
	resetChecks()
	scope
	#if count = 1
		dim a as UDT
		a.value = 10
		n( a )
		assert( a.value = 10 )
		assert( @a = getPtr1() )
	#elseif count = 2
		dim a as UDT, b as UDT
		a.value = 10
		b.value = 20
		n( a, b )
		assert( a.value = 10 )
		assert( b.value = 20 )
		assert( @a = getPtr1() )
		assert( @b = getPtr2() )
	#else
		dim a as UDT, b as UDT, c as UDT
		a.value = 10
		b.value = 20
		c.value = 30
		n( a, b, c )
		assert( a.value = 10 )
		assert( b.value = 20 )
		assert( c.value = 30 )
		assert( @a = getPtr1() )
		assert( @b = getPtr2() )
		assert( @c = getPtr3() )
	#endif
		assert( #n = *getMsg1() )
	end scope
#endmacro

#macro chkfunc( count, n )
	DLOG( n )
	resetChecks()
	scope
	#if count = 1
		dim a as UDT, r as UDT
		a.value = 11
		r.value = 0
		r = n( a )
		assert( r.value = 1 )
		assert( a.value = 11 )
		assert( @a = getPtr1() )
	#elseif count = 2
		dim a as UDT, b as UDT, r as UDT
		a.value = 21
		b.value = 22
		r.value = 0
		r = n( a, b )
		assert( r.value = 1 )
		assert( a.value = 21 )
		assert( b.value = 22 )
		assert( @a = getPtr1() )
		assert( @b = getPtr2() )
	#else
		dim a as UDT, b as UDT, c as UDT, r as UDT
		a.value = 31
		b.value = 32
		c.value = 33
		r.value = 0
		r = n( a, b, c )
		assert( r.value = 1 )
		assert( a.value = 31 )
		assert( b.value = 32 )
		assert( c.value = 33 )
		assert( @a = getPtr1() )
		assert( @b = getPtr2() )
		assert( @c = getPtr3() )
	#endif
		assert( #n = *getMsg1() )
	end scope
#endmacro

#ifdef DOTEST


chksub( 1, sub1_c_default )
chksub( 1, sub1_c_cdecl )
chksub( 1, sub1_c_stdcall )
#ifdef DOFUNCS
chkfunc( 1, func1_c_default )
chkfunc( 1, func1_c_cdecl )
chkfunc( 1, func1_c_stdcall )
#endif

chksub( 1, sub1_cpp_default )
chksub( 1, sub1_cpp_cdecl )
chksub( 1, sub1_cpp_stdcall )
#ifdef DOFUNCS
chkfunc( 1, func1_cpp_default )
chkfunc( 1, func1_cpp_cdecl )
chkfunc( 1, func1_cpp_stdcall )
#endif

chksub( 2, sub2_c_default )
chksub( 2, sub2_c_cdecl )
chksub( 2, sub2_c_stdcall )
#ifdef DOFUNCS
chkfunc( 2, func2_c_default )
chkfunc( 2, func2_c_cdecl )
chkfunc( 2, func2_c_stdcall )
#endif

chksub( 2, sub2_cpp_default )
chksub( 2, sub2_cpp_cdecl )
chksub( 2, sub2_cpp_stdcall )
#ifdef DOFUNCS
chkfunc( 2, func2_cpp_default )
chkfunc( 2, func2_cpp_cdecl )
chkfunc( 2, func2_cpp_stdcall )
#endif

chksub( 3, sub3_c_default )
chksub( 3, sub3_c_cdecl )
chksub( 3, sub3_c_stdcall )
#ifdef DOFUNCS
chkfunc( 3, func3_c_default )
chkfunc( 3, func3_c_cdecl )
chkfunc( 3, func3_c_stdcall )
#endif

chksub( 3, sub3_cpp_default )
chksub( 3, sub3_cpp_cdecl )
chksub( 3, sub3_cpp_stdcall )
#ifdef DOFUNCS
chkfunc( 3, func3_cpp_default )
chkfunc( 3, func3_cpp_cdecl )
chkfunc( 3, func3_cpp_stdcall )
#endif

#endif
