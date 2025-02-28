type FBSYMBOL_ as FBSYMBOL

'' errors
enum FB_ERRMSG
	FB_ERRMSG_OK
	FB_ERRMSG_ARGCNTMISMATCH
	FB_ERRMSG_EXPECTEDEOF
	FB_ERRMSG_EXPECTEDEOL
	FB_ERRMSG_DUPDEFINITION
	FB_ERRMSG_EXPECTINGAS
	FB_ERRMSG_EXPECTEDLPRNT
	FB_ERRMSG_EXPECTEDRPRNT
	FB_ERRMSG_UNDEFINEDSYMBOL
	FB_ERRMSG_EXPECTEDEXPRESSION
	FB_ERRMSG_EXPECTEDEQ
	FB_ERRMSG_EXPECTEDCONST
	FB_ERRMSG_EXPECTEDTO
	FB_ERRMSG_EXPECTEDNEXT
	FB_ERRMSG_EXPECTEDVAR
	FB_ERRMSG_EXPECTEDIDENTIFIER        = FB_ERRMSG_EXPECTEDVAR
	FB_ERRMSG_EXPECTEDMINUS
	FB_ERRMSG_EXPECTEDCOMMA
	FB_ERRMSG_SYNTAXERROR
	FB_ERRMSG_ELEMENTNOTDEFINED
	FB_ERRMSG_EXPECTEDENDTYPE
	FB_ERRMSG_TYPEMISMATCH
	FB_ERRMSG_INTERNAL
	FB_ERRMSG_PARAMTYPEMISMATCH
	FB_ERRMSG_FILENOTFOUND
	FB_ERRMSG_INVALIDDATATYPES
	FB_ERRMSG_INVALIDCHARACTER
	FB_ERRMSG_FILEACCESSERROR
	FB_ERRMSG_RECLEVELTOODEEP
	FB_ERRMSG_EXPECTEDPOINTER
	FB_ERRMSG_EXPECTEDLOOP
	FB_ERRMSG_EXPECTEDWEND
	FB_ERRMSG_EXPECTEDTHEN
	FB_ERRMSG_EXPECTEDENDIF
	FB_ERRMSG_ILLEGALEND
	FB_ERRMSG_EXPECTEDCASE
	FB_ERRMSG_EXPECTEDENDSELECT
	FB_ERRMSG_WRONGDIMENSIONS
	FB_ERRMSG_BOUNDSDIFFERFROMEXTERN
	FB_ERRMSG_INNERPROCNOTALLOWED
	FB_ERRMSG_EXPECTEDENDSUBORFUNCT
	FB_ERRMSG_RETURNTYPEMISMATCH
	FB_ERRMSG_CALLINGCONVMISMATCH
	FB_ERRMSG_VARIABLENOTDECLARED
	FB_ERRMSG_VARIABLEREQUIRED
	FB_ERRMSG_ILLEGALOUTSIDECOMP
	FB_ERRMSG_EXPECTEDENDASM
	FB_ERRMSG_PROCNOTDECLARED
	FB_ERRMSG_EXPECTEDSEMICOLON
	FB_ERRMSG_UNDEFINEDLABEL
	FB_ERRMSG_TOOMANYDIMENSIONS
	FB_ERRMSG_ARRAYTOOBIG
	FB_ERRMSG_UDTTOOBIG
	FB_ERRMSG_EXPECTEDSCALAR
	FB_ERRMSG_ILLEGALOUTSIDEAPROC
	FB_ERRMSG_EXPECTEDDYNAMICARRAY
	FB_ERRMSG_CANNOTRETURNFIXLENFROMFUNCTS
	FB_ERRMSG_ARRAYALREADYDIMENSIONED
	FB_ERRMSG_ILLEGALRESUMEERROR
	FB_ERRMSG_PARAMTYPEMISMATCHAT
	FB_ERRMSG_ILLEGALPARAMSPECAT
	FB_ERRMSG_EXPECTEDENDWITH
	FB_ERRMSG_ILLEGALINSIDEASUB
	FB_ERRMSG_ILLEGALINSIDESELECT
	FB_ERRMSG_EXPECTEDARRAY
	FB_ERRMSG_EXPECTEDLBRACE
	FB_ERRMSG_EXPECTEDRBRACE
	FB_ERRMSG_EXPECTEDRBRACKET
	FB_ERRMSG_TOOMANYEXPRESSIONS
	FB_ERRMSG_EXPECTEDRESTYPE
	FB_ERRMSG_RANGETOOLARGE
	FB_ERRMSG_FORWARDREFNOTALLOWED
	FB_ERRMSG_INCOMPLETETYPE
	FB_ERRMSG_ARRAYNOTALLOCATED
	FB_ERRMSG_EXPECTEDINDEX
	FB_ERRMSG_EXPECTEDENDENUM
	FB_ERRMSG_CANTINITDYNAMICARRAYS
	FB_ERRMSG_DYNAMICARRAYWITHELLIPSIS
	FB_ERRMSG_ARRAYFIELDWITHELLIPSIS
	FB_ERRMSG_INVALIDBITFIELD
	FB_ERRMSG_TOOMANYPARAMS
	FB_ERRMSG_MACROTEXTTOOLONG
	FB_ERRMSG_INVALIDCMDOPTION
	FB_ERRMSG_DOSWITHNONX86
	FB_ERRMSG_GENGASWITHNONX86
	FB_ERRMSG_GENGASWITHOUTINTEL
	FB_ERRMSG_PICNOTSUPPORTEDFOREXE
	FB_ERRMSG_PICNOTSUPPORTEDFORTARGET
	FB_ERRMSG_CANTINITDYNAMICSTRINGS
	FB_ERRMSG_RECURSIVEUDT
	FB_ERRMSG_RECURSIVEMACRO
	FB_ERRMSG_CANTINCLUDEPERIODS
	FB_ERRMSG_EXEMISSING
	FB_ERRMSG_ARRAYOUTOFBOUNDS
	FB_ERRMSG_MISSINGCMDOPTION
	FB_ERRMSG_EXPECTEDANY
	FB_ERRMSG_EXPECTEDENDSCOPE
	FB_ERRMSG_ILLEGALINSIDEASCOPE
	FB_ERRMSG_CANTPASSUDTRESULTBYREF
	FB_ERRMSG_AMBIGUOUSCALLTOPROC
	FB_ERRMSG_NOMATCHINGPROC
	FB_ERRMSG_DIVBYZERO
	FB_ERRMSG_STACKUNDERFLOW
	FB_ERRMSG_CANTINITDYNAMICFIELDS
	FB_ERRMSG_BRANCHTOBLOCKWITHLOCALVARS
	FB_ERRMSG_BRANCHTARGETOUTSIDECURRPROC
	FB_ERRMSG_BRANCHCROSSINGDYNDATADEF
	FB_ERRMSG_LOOPWITHOUTDO
	FB_ERRMSG_NEXTWITHOUTFOR
	FB_ERRMSG_WENDWITHOUTWHILE
	FB_ERRMSG_ENDWITHWITHOUTWITH
	FB_ERRMSG_ENDIFWITHOUTIF
	FB_ERRMSG_ENDSELECTWITHOUTSELECT
	FB_ERRMSG_ENDSUBWITHOUTSUB
	FB_ERRMSG_ENDSCOPEWITHOUTSCOPE
	FB_ERRMSG_ENDNAMESPACEWITHOUTNAMESPACE
	FB_ERRMSG_ENDEXTERNWITHOUTEXTERN
	FB_ERRMSG_ELSEIFWITHOUTIF
	FB_ERRMSG_ELSEWITHOUTIF
	FB_ERRMSG_CASEWITHOUTSELECT
	FB_ERRMSG_CONSTANTCANTBECHANGED
	FB_ERRMSG_EXPECTEDPERIOD
	FB_ERRMSG_EXPECTEDENDNAMESPACE
	FB_ERRMSG_ILLEGALINSIDEANAMESPC
	FB_ERRMSG_CANTREMOVENAMESPCSYMBOLS
	FB_ERRMSG_EXPECTEDENDEXTERN
	FB_ERRMSG_EXPECTEDENDSUB
	FB_ERRMSG_EXPECTEDENDFUNCTION
	FB_ERRMSG_EXPECTEDENDCTOR
	FB_ERRMSG_EXPECTEDENDDTOR
	FB_ERRMSG_EXPECTEDENDOPERATOR
	FB_ERRMSG_EXPECTEDENDPROPERTY
	FB_ERRMSG_DECLOUTSIDENAMESPC
	FB_ERRMSG_EXPECTEDENDCOMMENT
	FB_ERRMSG_TOOMANYERRORS
	FB_ERRMSG_EXPECTEDMACRO
	FB_ERRMSG_CANNOTINITEXTERNORCOMMON
	FB_ERRMSG_DYNAMICEXTERNCANTHAVEBOUNDS
	FB_ERRMSG_ATLEASTONEPARAMMUSTBEANUDT
	FB_ERRMSG_PARAMORRESULTMUSTBEANUDT
	FB_ERRMSG_SAMEPARAMETERTYPES
	FB_ERRMSG_SAMEPARAMANDRESULTTYPES
	FB_ERRMSG_INVALIDRESULTTYPEFORTHISOP
	FB_ERRMSG_PARAMTYPEINCOMPATIBLEWITHPARENT
	FB_ERRMSG_VARARGPARAMNOTALLOWED
	FB_ERRMSG_ILLEGALOUTSIDEANOPERATOR
	FB_ERRMSG_PARAMCANTBEOPTIONAL
	FB_ERRMSG_ONLYVALIDINLANG
	FB_ERRMSG_DEFTYPEONLYVALIDINLANG
	FB_ERRMSG_SUFFIXONLYVALIDINLANG
	FB_ERRMSG_IMPLICITVARSONLYVALIDINLANG
	FB_ERRMSG_AUTOVARONLYVALIDINLANG
	FB_ERRMSG_INVALIDARRAYINDEX
	FB_ERRMSG_OPMUSTBEAMETHOD
	FB_ERRMSG_OPCANNOTBEAMETHOD
	FB_ERRMSG_METHODINANONUDT
	FB_ERRMSG_CONSTINANONUDT
	FB_ERRMSG_STATICVARINANONUDT
	FB_ERRMSG_EXPECTEDOPERATOR
	FB_ERRMSG_DECLOUTSIDECLASS
	FB_ERRMSG_DTORCANTCONTAINPARAMS
	FB_ERRMSG_EXPECTEDCLASSID
	FB_ERRMSG_VARLENSTRINGINUNION
	FB_ERRMSG_DYNAMICARRAYINUNION
	FB_ERRMSG_CTORINUNION
	FB_ERRMSG_DTORINUNION
	FB_ERRMSG_ILLEGALOUTSIDEACTOR
	FB_ERRMSG_ILLEGALOUTSIDEADTOR
	FB_ERRMSG_STRUCTISNOTUNIQUE
	FB_ERRMSG_PARENTISNOTACLASS
	FB_ERRMSG_CTORCHAINMUSTBEFIRST
	FB_ERRMSG_BASEINITMUSTBEFIRST
	FB_ERRMSG_REDIMCTORMUSTBECDEL
	FB_ERRMSG_REDIMDTORMUSTBECDEL
	FB_ERRMSG_REDIMCTORMUSTHAVEONEPARAM
	FB_ERRMSG_ERASECTORMUSTBECDEL
	FB_ERRMSG_ERASEDTORMUSTBECDEL
	FB_ERRMSG_ERASECTORMUSTHAVEONEPARAM
	FB_ERRMSG_CANTUNDEF
	FB_ERRMSG_RETURNMIXEDWITHASSIGN
	FB_ERRMSG_ASSIGNMIXEDWITHRETURN
	FB_ERRMSG_MISSINGRETURNFORCTORRESULT
	FB_ERRMSG_ILLEGALASSIGNMENT
	FB_ERRMSG_INVALIDSUBSCRIPT
	FB_ERRMSG_NODEFAULTCTORDEFINED
	FB_ERRMSG_RESULTHASNODEFCTOR
	FB_ERRMSG_NOBASEINIT
	FB_ERRMSG_NEEDEXPLICITDEFCTOR
	FB_ERRMSG_NEEDEXPLICITCOPYCTOR
	FB_ERRMSG_NEEDEXPLICITCOPYCTORCONST
	FB_ERRMSG_INVALIDPRIORITY
	FB_ERRMSG_PARAMCNTFORPROPGET
	FB_ERRMSG_PARAMCNTFORPROPSET
	FB_ERRMSG_EXPECTEDPROPERTY
	FB_ERRMSG_ILLEGALOUTSIDEAPROPERTY
	FB_ERRMSG_PROPERTYHASNOGETMETHOD
	FB_ERRMSG_PROPERTYHASNOSETMETHOD
	FB_ERRMSG_PROPERTYHASNOIDXGETMETHOD
	FB_ERRMSG_PROPERTYHASNOIDXSETMETHOD
	FB_ERRMSG_UDTINFORNEEDSOPERATORS
	FB_ERRMSG_EXPLICITCTORCALLINVECTOR
	FB_ERRMSG_VECTORCANTBEINITIALIZED
	FB_ERRMSG_NEWCANTBEUSEDWITHFIXLENSTRINGS
	FB_ERRMSG_ILLEGALMEMBERACCESS
	FB_ERRMSG_EXPECTEDSTMTSEP
	FB_ERRMSG_NOACCESSTODEFAULTCTOR
	FB_ERRMSG_NOACCESSTOCTOR
	FB_ERRMSG_NOACCESSTODTOR
	FB_ERRMSG_NOACCESSTOBASEDEFCTOR
	FB_ERRMSG_NOACCESSTOBASEDTOR
	FB_ERRMSG_ACCESSTONONSTATICMEMBER
	FB_ERRMSG_ABSTRACTCTOR
	FB_ERRMSG_VIRTUALCTOR
	FB_ERRMSG_ABSTRACTDTOR
	FB_ERRMSG_MEMBERCANTBESTATIC
	FB_ERRMSG_MEMBERISNTSTATIC
	FB_ERRMSG_STATICMEMBERHASNOINSTANCEPTR
	FB_ERRMSG_PRIVORPUBTTRIBNOTALLOWED
	FB_ERRMSG_PROCPROTOTYPENOTSTATIC
	FB_ERRMSG_PROCPROTOTYPENOTCONST
	FB_ERRMSG_PROCPROTOTYPENOTVIRTUAL
	FB_ERRMSG_PROCPROTOTYPENOTABSTRACT
	FB_ERRMSG_VIRTUALWITHOUTRTTI
	FB_ERRMSG_ABSTRACTWITHOUTRTTI
	FB_ERRMSG_OVERRIDINGNOTHING
	FB_ERRMSG_ABSTRACTBODY
	FB_ERRMSG_OVERRIDERETTYPEDIFFERS
	FB_ERRMSG_OVERRIDECALLCONVDIFFERS
	FB_ERRMSG_IMPLICITDTOROVERRIDECALLCONVDIFFERS
	FB_ERRMSG_IMPLICITLETOVERRIDECALLCONVDIFFERS
	FB_ERRMSG_OVERRIDEISNTCONSTMEMBER
	FB_ERRMSG_OVERRIDEISCONSTMEMBER
	FB_ERRMSG_OVERRIDEPARAMSDIFFER
	FB_ERRMSG_OPERATORCANTBESTATIC
	FB_ERRMSG_OPERATORCANTBEVIRTUAL
	FB_ERRMSG_OPERATORCANTBECONST
	FB_ERRMSG_PARAMMUSTBEANINTEGER
	FB_ERRMSG_PARAMMUSTBEAPOINTER
	FB_ERRMSG_AUTONEEDSINITIALIZER
	FB_ERRMSG_KEYWORDFIELDSNOTALLOWEDINCLASSES
	FB_ERRMSG_ILLEGALOUTSIDEFORSTMT
	FB_ERRMSG_ILLEGALOUTSIDEDOSTMT
	FB_ERRMSG_ILLEGALOUTSIDEWHILESTMT
	FB_ERRMSG_ILLEGALOUTSIDESELSTMT
	FB_ERRMSG_EXPECTEDFOR
	FB_ERRMSG_EXPECTEDDO
	FB_ERRMSG_EXPECTEDWHILE
	FB_ERRMSG_EXPECTEDSELECT
	FB_ERRMSG_NOENCLOSEDFORSTMT
	FB_ERRMSG_NOENCLOSEDDOSTMT
	FB_ERRMSG_NOENCLOSEDWHILESTMT
	FB_ERRMSG_NOENCLOSEDSELSTMT
	FB_ERRMSG_INVALIDEXITSTMT
	FB_ERRMSG_INVALIDCONTINUESTMT
	FB_ERRMSG_ILLEGALOUTSIDEASUB
	FB_ERRMSG_ILLEGALOUTSIDEAFUNCTION
	FB_ERRMSG_AMBIGUOUSSYMBOLACCESS
	FB_ERRMSG_NOELEMENTSDEFINED
	FB_ERRMSG_NONSCOPEDENUM
	FB_ERRMSG_STATICNONMEMBERPROC
	FB_ERRMSG_CONSTNONMEMBERPROC
	FB_ERRMSG_ABSTRACTNONMEMBERPROC
	FB_ERRMSG_VIRTUALNONMEMBERPROC
	FB_ERRMSG_INVALIDINITIALIZER
	FB_ERRMSG_NOOOPINFUNCTIONS
	FB_ERRMSG_NOSTATICMEMBERVARINNESTEDUDT
	FB_ERRMSG_EXPECTEDUDT
	FB_ERRMSG_TOOMANYELEMENTS
	FB_ERRMSG_NOTADATAMEMBER
	FB_ERRMSG_UNIONSNOTALLOWED
	FB_ERRMSG_ARRAYSNOTALLOWED
	FB_ERRMSG_COMMONCANTBEOBJINST
	FB_ERRMSG_CLONECANTTAKESELFBYVAL
	FB_ERRMSG_INVALIDREFERENCETOLOCAL
	FB_ERRMSG_EXPECTEDPTRORPOINTER
	FB_ERRMSG_TOOMANYPTRINDIRECTIONS
	FB_ERRMSG_DYNAMICARRAYSCANTBECONST
	FB_ERRMSG_CONSTUDTTONONCONSTMETHOD
	FB_ERRMSG_ELEMENTSMUSTBEEMPTY
	FB_ERRMSG_NOGOSUB
	FB_ERRMSG_INVALIDLANG
	FB_ERRMSG_CANTUSEANYINITELLIPSIS
	FB_ERRMSG_MUSTHAVEINITWITHELLIPSIS
	FB_ERRMSG_CANTUSEELLIPSISASLOWERBOUND
	FB_ERRMSG_FORNEXTVARIABLEMISMATCH
	FB_ERRMSG_OPTIONREQUIRESSSE
	FB_ERRMSG_EXPECTEDRELOP
	FB_ERRMSG_STMTUNSUPPORTEDINGCC
	FB_ERRMSG_TOOMANYLABELS
	FB_ERRMSG_UNSUPPORTEDFUNCTION
	FB_ERRMSG_EXPECTEDSUB
	FB_ERRMSG_EXPECTEDPPENDIF
	FB_ERRMSG_RCFILEWRONGTARGET
	FB_ERRMSG_OBJFILEWITHOUTINPUTFILE
	FB_ERRMSG_EXPECTEDCLASSTYPE
	FB_ERRMSG_ILLEGALOUTSIDEAMETHOD
	FB_ERRMSG_CLASSNOTDERIVED
	FB_ERRMSG_CLASSWITHOUTCTOR
	FB_ERRMSG_TYPEHASNORTTI
	FB_ERRMSG_TYPESARENOTRELATED
	FB_ERRMSG_TYPEMUSTBEAUDT
	FB_ERRMSG_CASTDERIVEDPTRFROMINCOMPATIBLE
	FB_ERRMSG_CASTDERIVEDPTRFROMUNRELATED
	FB_ERRMSG_CASTDERIVEDPTRTOINCOMPATIBLE
	FB_ERRMSG_CASTDERIVEDPTRTOUNRELATED
	FB_ERRMSG_EMPTYALIASSTRING
	FB_ERRMSG_EMPTYLIBSTRING
	FB_ERRMSG_OBJECTOFABSTRACTCLASS
	FB_ERRMSG_CALLTOABSTRACT
	FB_ERRMSG_PPASSERT_FAILED
	FB_ERRMSG_EXPECTEDGT
	FB_ERRMSG_INVALIDSIZE
	FB_ERRMSG_DIFFERENTALIASTHANPROTO
	FB_ERRMSG_VARARGONLYALLOWEDINCDECL
	FB_ERRMSG_VARARGNOTALLOWEDASFIRSTPARAM
	FB_ERRMSG_CONSTCTOR
	FB_ERRMSG_CONSTDTOR
	FB_ERRMSG_NOBYREFFUNCTIONRESULT
	FB_ERRMSG_RESULTASSIGNOUTSIDEFUNCTION
	FB_ERRMSG_TYPEMISMATCHINBYREFRESULTASSIGN
	FB_ERRMSG_ASMOPTIONGIVENFORNONX86
	FB_ERRMSG_MISSINGREFINIT
	FB_ERRMSG_INCOMPATIBLEREFINIT
	FB_ERRMSG_ARRAYOFREFS
	FB_ERRMSG_INVALIDCASERANGE
	FB_ERRMSG_BYREFFIXSTR
	FB_ERRMSG_ILLEGALUSEOFRESERVEDSYMBOL
	FB_ERRMSG_EXPECTEDCOMMAORSEMICOLON
	FB_ERRMSG_EXPECTEDFILENUMBEREXPRESSION
	FB_ERRMSG_MALFORMEDSOURCEDATEEPOCH

	FB_ERRMSGS
end enum

enum FB_WARNINGMSG
	FB_WARNINGMSG_PASSINGSCALARASPTR            = 1
	FB_WARNINGMSG_PASSINGPTRTOSCALAR
	FB_WARNINGMSG_PASSINGDIFFPOINTERS
	FB_WARNINGMSG_SUSPICIOUSPTRASSIGN
	FB_WARNINGMSG_IMPLICITCONVERSION
	FB_WARNINGMSG_CANNOTEXPORT
	FB_WARNINGMSG_IDNAMETOOBIG
	FB_WARNINGMSG_NUMBERTOOBIG
	FB_WARNINGMSG_LITSTRINGTOOBIG
	FB_WARNINGMSG_POINTERFIELDS
	FB_WARNINGMSG_IMPLICITALLOCATION
	FB_WARNINGMSG_NOCLOSINGQUOTE
	FB_WARNINGMSG_NOFUNCTIONRESULT
	FB_WARNINGMSG_BRANCHCROSSINGLOCALVAR
	FB_WARNINGMSG_NOEXPLICITPARAMMODE
	FB_WARNINGMSG_POSSIBLEESCSEQ
	FB_WARNINGMSG_PARAMSIZETOOBIG
	FB_WARNINGMSG_PARAMLISTSIZETOOBIG
	FB_WARNINGMSG_ANYINITHASNOEFFECT
	FB_WARNINGMSG_MIXINGMTMODES
	FB_WARNINGMSG_MIXINGLANGMODES
	FB_WARNINGMSG_DELETEANYPTR
	FB_WARNINGMSG_HUGEARRAYONSTACK
	FB_WARNINGMSG_HUGEVARONSTACK
	FB_WARNINGMSG_CONVOVERFLOW
	FB_WARNINGMSG_NEXTVARMEANINGLESS
	FB_WARNINGMSG_CASTTONONPTR
	FB_WARNINGMSG_RETURNMETHODMISMATCH
	FB_WARNINGMSG_PASSINGPTR
	FB_WARNINGMSG_CMDLINEOVERRIDES
	FB_WARNINGMSG_DIRECTIVEIGNORED
	FB_WARNINGMSG_IFFOUNDAFTERELSE
	FB_WARNINGMSG_SHIFTEXCEEDSBITSINDATATYPE
	FB_WARNINGMSG_BYREFEQAFTERPARENS
	FB_WARNINGMSG_OPERANDSMIXEDSIGNEDNESS
	FB_WARNINGMSG_MISMATCHINGPARAMINIT
	FB_WARNINGMSG_AMBIGIOUSLENSIZEOF
	FB_WARNINGMSG_OPERANDSMIXEDTYPES
	FB_WARNINGMSG_REDEFINITIONOFINTRINSIC
	FB_WARNINGMSG_CONSTQUALIFIERDISCARDED
	FB_WARNINGMSG_RETURNTYPEMISMATCH
	FB_WARNINGMSG_CALLINGCONVMISMATCH
	FB_WARNINGMSG_ARGCNTMISMATCH
	FB_WARNINGMSG_SUFFIXIGNORED
	FB_WARNINGMSG_FORENDTOOBIG
	FB_WARNINGMSG_CMDLINEIGNORED
	FB_WARNINGMSG_RESERVEDGLOBALSYMBOL
	FB_WARNINGMSG_EXPECTEDDIGIT

	FB_WARNINGMSGS
end enum

const FB_WARNINGMSGS_LOWEST_LEVEL =  0
const FB_WARNINGMSGS_DEFAULT_LEVEL = 1
const FB_WARNINGMSGS_HIGHEST_LEVEL = 3

enum FB_ERRMSGOPT
	FB_ERRMSGOPT_NONE       = &h00000000
	FB_ERRMSGOPT_ADDCOMMA   = &h00000001
	FB_ERRMSGOPT_ADDCOLON   = &h00000002
	FB_ERRMSGOPT_ADDQUOTES  = &h00000004

	FB_ERRMSGOPT_DEFAULT    = FB_ERRMSGOPT_ADDCOMMA
end enum

declare sub errPreInit( )
declare sub errInit( )
declare sub errEnd( )
declare sub errHideFurtherErrors( )
declare function errGetCount( ) as integer

declare sub errPushParamLocation _
	( _
		byval proc as FBSYMBOL_ ptr, _
		byval tk as integer, _
		byval paramindex as integer, _
		byval paramid as zstring ptr _
	)
declare sub errPopParamLocation( )

declare sub errReportEx _
	( _
		byval errnum as integer, _
		byval msgex as const zstring ptr, _
		byval linenum as integer = 0, _
		byval options as FB_ERRMSGOPT = FB_ERRMSGOPT_DEFAULT, _
		byval customText as const zstring ptr = 0 _
	)

declare sub errReport _
	( _
		byval errnum as integer, _
		byval isbefore as integer = FALSE, _
		byval customText as const zstring ptr = 0 _
	)

declare sub errReportWarn _
	( _
		byval msgnum as integer, _
		byval msgex as const zstring ptr = NULL, _
		byval options as FB_ERRMSGOPT = FB_ERRMSGOPT_DEFAULT, _
		byval customText as const zstring ptr = NULL _
	)

declare sub errReportWarnEx _
	( _
		byval msgnum as integer, _
		byval msgex as const zstring ptr = NULL, _
		byval linenum as integer = 0, _
		byval options as FB_ERRMSGOPT = FB_ERRMSGOPT_DEFAULT, _
		byval customText as const zstring ptr = NULL _
	)

declare sub errReportParam _
	( _
		byval proc as FBSYMBOL_ ptr, _
		byval pnum as integer, _
		byval pid as zstring ptr, _
		byval msgnum as integer _
	)

declare sub errReportParamWarn _
	( _
		byval proc as FBSYMBOL_ ptr, _
		byval pnum as integer, _
		byval pid as zstring ptr, _
		byval msgnum as integer _
	)

declare sub errReportUndef _
	( _
		byval errnum as integer, _
		byval id as zstring ptr _
	)

declare sub errReportNotAllowed _
	( _
		byval opt as FB_LANG_OPT, _
		byval errnum as integer = FB_ERRMSG_ONLYVALIDINLANG, _
		byval msgex as zstring ptr = NULL _
	)
