'' examples/manual/array/clear.bas
''
'' NOTICE: This file is part of the FreeBASIC Compiler package and can't
''         be included in other distributions without authorization.
''
'' See Also: http://www.freebasic.net/wiki/wikka.php?wakka=KeyPgClear
'' --------

'create an array with 100 elements
Dim array(0 To 99) As Integer

'clear the contents of the array to 0, starting with the first element
Clear array(1), , 100 * SizeOf(Integer)


'allocate 20 bytes of memory
Dim As Byte Ptr p = Allocate(20)

'set each of the first ten bytes to 0
Clear *p, 0, 10

'set each of the next ten bytes to 42
Clear p[10], 42, 10

'check the values of the allocated bytes
For i As Integer = 0 To 19
	Print i, p[i]
Next

'deallocate memory
Deallocate p
