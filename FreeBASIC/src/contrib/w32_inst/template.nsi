; Script generated by the HM NIS Edit Script Wizard.
;
; Modified by MJS to be used with the "makescript" tool that creates a
; usable NSIS installer script from this template and the configuration
; file ( replace.conf ).
;

; HM NIS Edit Wizard helper defines
!define PRODUCT_NAME "FreeBASIC"
!define PRODUCT_VERSION       ;;;PRODUCT_VERSION;;;
!define PRODUCT_PUBLISHER     ;;;PRODUCT_PUBLISHER;;;
!define PRODUCT_WEB_SITE      "http://www.freebasic.net"
!define PRODUCT_DIR_REGKEY "Software\Microsoft\Windows\CurrentVersion\App Paths\fbc.exe"
!define PRODUCT_UNINST_KEY "Software\Microsoft\Windows\CurrentVersion\Uninstall\${PRODUCT_NAME}"
!define PRODUCT_UNINST_ROOT_KEY "HKLM"
!define PRODUCT_STARTMENU_REGVAL "NSIS:StartMenuDir"

;SetCompressor /SOLID lzma
SetCompressor zlib

; MUI 1.67 compatible ------
!include "MUI.nsh"

; MUI Settings
!define MUI_ABORTWARNING
!define MUI_ICON "fblogo.ico"
!define MUI_UNICON "fblogo.ico"
!define MUI_HEADERIMAGE
!define MUI_HEADERIMAGE_BITMAP "fblogo_header.bmp"
!define MUI_WELCOMEFINISHPAGE_BITMAP "fblogo_welcome.bmp"

; Language Selection Dialog Settings
!define MUI_LANGDLL_REGISTRY_ROOT "${PRODUCT_UNINST_ROOT_KEY}"
!define MUI_LANGDLL_REGISTRY_KEY "${PRODUCT_UNINST_KEY}"
!define MUI_LANGDLL_REGISTRY_VALUENAME "NSIS:Language"

; Welcome page
!insertmacro MUI_PAGE_WELCOME
; License page
!insertmacro MUI_PAGE_LICENSE "license.txt"
; Components page
!insertmacro MUI_PAGE_COMPONENTS
; Directory page
!insertmacro MUI_PAGE_DIRECTORY
; Start menu page
var ICONS_GROUP
!define MUI_STARTMENUPAGE_NODISABLE
!define MUI_STARTMENUPAGE_DEFAULTFOLDER "FreeBASIC"
!define MUI_STARTMENUPAGE_REGISTRY_ROOT "${PRODUCT_UNINST_ROOT_KEY}"
!define MUI_STARTMENUPAGE_REGISTRY_KEY "${PRODUCT_UNINST_KEY}"
!define MUI_STARTMENUPAGE_REGISTRY_VALUENAME "${PRODUCT_STARTMENU_REGVAL}"
!insertmacro MUI_PAGE_STARTMENU Application $ICONS_GROUP
; Instfiles page
!insertmacro MUI_PAGE_INSTFILES
; Finish page
!define MUI_FINISHPAGE_RUN "$INSTDIR\start_shell.exe"
!define MUI_FINISHPAGE_RUN_PARAMETERS ""
!insertmacro MUI_PAGE_FINISH

; Uninstaller pages
!insertmacro MUI_UNPAGE_CONFIRM
!insertmacro MUI_UNPAGE_INSTFILES
!insertmacro MUI_UNPAGE_FINISH

; Language files
!insertmacro MUI_LANGUAGE "English"
!insertmacro MUI_LANGUAGE "German"
!insertmacro MUI_LANGUAGE "PortugueseBR"

; Reserve files
!insertmacro MUI_RESERVEFILE_INSTALLOPTIONS

; MUI end ------

Name "${PRODUCT_NAME} ${PRODUCT_VERSION}"
OutFile ;;;SETUP_EXE_NAME;;;
InstallDir "$PROGRAMFILES\FreeBASIC"
InstallDirRegKey HKLM "${PRODUCT_DIR_REGKEY}" ""
ShowInstDetails show
ShowUnInstDetails show

LangString TEXT_SECTION_MAIN     ${LANG_ENGLISH} "Main"
LangString TEXT_SECTION_MAIN     ${LANG_GERMAN}  "Haupt"
LangString TEXT_SECTION_MAIN     ${LANG_PORTUGUESEBR} "Principal"

LangString TEXT_SECTION_EXAMPLES ${LANG_ENGLISH} "Examples"
LangString TEXT_SECTION_EXAMPLES ${LANG_GERMAN}  "Beispiele"
LangString TEXT_SECTION_EXAMPLES ${LANG_PORTUGUESEBR} "Exemplos"

LangString TEXT_SECTION_LIBS ${LANG_ENGLISH} "Libraries"
LangString TEXT_SECTION_LIBS ${LANG_GERMAN}  "Bibliotheken"
LangString TEXT_SECTION_LIBS ${LANG_PORTUGUESEBR} "Bibliotecas"

;;;ENABLE_SOURCES;;;LangString TEXT_SECTION_SOURCES  ${LANG_ENGLISH} "Sources"
;;;ENABLE_SOURCES;;;LangString TEXT_SECTION_SOURCES  ${LANG_GERMAN}  "Quelltexte"
;;;ENABLE_SOURCES;;;LangString TEXT_SECTION_SOURCES  ${LANG_PORTUGUESEBR}  "C�digo-Fonte"

LangString TEXT_SECT_DESCR_MAIN     ${LANG_ENGLISH} "Compiler and obligatory libraries"
LangString TEXT_SECT_DESCR_MAIN     ${LANG_GERMAN}  "Compiler und Bibliotheken"
LangString TEXT_SECT_DESCR_MAIN     ${LANG_PORTUGUESEBR} "Compilador e bibliotecas obrigat�rias"

LangString TEXT_SECT_DESCR_EXAMPLES ${LANG_ENGLISH} "Example applications"
LangString TEXT_SECT_DESCR_EXAMPLES ${LANG_GERMAN}  "Beispiel-Programme"
LangString TEXT_SECT_DESCR_EXAMPLES ${LANG_PORTUGUESEBR} "Aplicativos de exemplo"

LangString TEXT_SECT_DESCR_LIBS ${LANG_ENGLISH} "External libraries and their include files"
LangString TEXT_SECT_DESCR_LIBS ${LANG_GERMAN}  "Bibliotheken und Include-Dateien"
LangString TEXT_SECT_DESCR_LIBS ${LANG_PORTUGUESEBR} "Bibliotecas externas e seus cabe�alhos"

;;;ENABLE_SOURCES;;;LangString TEXT_SECT_DESCR_SOURCES  ${LANG_ENGLISH} "Sources the compiler and its libraries were built from"
;;;ENABLE_SOURCES;;;LangString TEXT_SECT_DESCR_SOURCES  ${LANG_GERMAN}  "Quelltexte aus denen der Compiler und die Bibliotheken erstellt wurden"
;;;ENABLE_SOURCES;;;LangString TEXT_SECT_DESCR_SOURCES  ${LANG_PORTUGUESEBR} "C�digo-fonte do compilador e suas bibliotecas"

Function .onInit
  !insertmacro MUI_LANGDLL_DISPLAY
FunctionEnd

Section $(TEXT_SECTION_MAIN) SEC01
  SetOverwrite try
  SectionIn RO

  SetOutPath "$INSTDIR"
  File "start_shell.exe"
  File "fblogo.ico"

  ;;;FILES_MAIN;;;
  ;;;ENABLE_IMPORT_LIBS;;;  SetOutPath "$INSTDIR\lib\win32"
  ;;;FILES_IMPORT_LIBS;;;

; Shortcuts
  SetOutPath "$INSTDIR"
  !insertmacro MUI_STARTMENU_WRITE_BEGIN Application
  CreateDirectory "$SMPROGRAMS\$ICONS_GROUP"
  CreateShortCut "$SMPROGRAMS\$ICONS_GROUP\FreeBASIC.lnk" "$INSTDIR\start_shell.exe" "" "$INSTDIR\fblogo.ico"
  CreateShortCut "$DESKTOP\FreeBASIC.lnk" "$INSTDIR\start_shell.exe" "" "$INSTDIR\fblogo.ico"
  !insertmacro MUI_STARTMENU_WRITE_END
SectionEnd

SectionGroup $(TEXT_SECTION_LIBS) SEC02
  ;;;FILES_LIBS;;;
SectionGroupEnd

Section $(TEXT_SECTION_EXAMPLES) SEC03
  ;;;FILES_EXAMPLES;;;

; Shortcuts
  !insertmacro MUI_STARTMENU_WRITE_BEGIN Application
  !insertmacro MUI_STARTMENU_WRITE_END
SectionEnd

;;;ENABLE_SOURCES;;;Section /o $(TEXT_SECTION_SOURCES) SEC04
  ;;;FILES_SOURCES;;;

; Shortcuts
;;;ENABLE_SOURCES;;;  !insertmacro MUI_STARTMENU_WRITE_BEGIN Application
;;;ENABLE_SOURCES;;;  !insertmacro MUI_STARTMENU_WRITE_END
;;;ENABLE_SOURCES;;;SectionEnd

Section -AdditionalIcons
  SetOutPath $INSTDIR
  !insertmacro MUI_STARTMENU_WRITE_BEGIN Application
  WriteIniStr "$INSTDIR\${PRODUCT_NAME}.url" "InternetShortcut" "URL" "${PRODUCT_WEB_SITE}"
  WriteIniStr "$INSTDIR\${PRODUCT_NAME}_forum.url" "InternetShortcut" "URL" "${PRODUCT_WEB_SITE}/forum"
  CreateShortCut "$SMPROGRAMS\$ICONS_GROUP\Project website.lnk" "$INSTDIR\${PRODUCT_NAME}.url"
  CreateShortCut "$SMPROGRAMS\$ICONS_GROUP\Project forum.lnk" "$INSTDIR\${PRODUCT_NAME}_forum.url"
  CreateShortCut "$SMPROGRAMS\$ICONS_GROUP\Uninstall.lnk" "$INSTDIR\uninst.exe"
  !insertmacro MUI_STARTMENU_WRITE_END
SectionEnd

Section -Post
  WriteUninstaller "$INSTDIR\uninst.exe"
  WriteRegStr HKLM "${PRODUCT_DIR_REGKEY}" "" "$INSTDIR\fbc.exe"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayName" "$(^Name)"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "UninstallString" "$INSTDIR\uninst.exe"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayIcon" "$INSTDIR\fblogo.ico"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayVersion" "${PRODUCT_VERSION}"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "URLInfoAbout" "${PRODUCT_WEB_SITE}"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "Publisher" "${PRODUCT_PUBLISHER}"
  ;;;GEN_IMP_LIBS;;;
SectionEnd

; Section descriptions
!insertmacro MUI_FUNCTION_DESCRIPTION_BEGIN
  !insertmacro MUI_DESCRIPTION_TEXT ${SEC01} "$(TEXT_SECT_DESCR_MAIN)"
  !insertmacro MUI_DESCRIPTION_TEXT ${SEC02} "$(TEXT_SECT_DESCR_LIBS)"
  !insertmacro MUI_DESCRIPTION_TEXT ${SEC03} "$(TEXT_SECT_DESCR_EXAMPLES)"
;;;ENABLE_SOURCES;;;  !insertmacro MUI_DESCRIPTION_TEXT ${SEC04} "$(TEXT_SECT_DESCR_SOURCES)"
!insertmacro MUI_FUNCTION_DESCRIPTION_END

Section Uninstall
  !insertmacro MUI_STARTMENU_GETFOLDER "Application" $ICONS_GROUP
  Delete "$INSTDIR\${PRODUCT_NAME}.url"
  Delete "$INSTDIR\${PRODUCT_NAME}_forum.url"
  Delete "$INSTDIR\uninst.exe"
  Delete "$INSTDIR\fblogo.ico"
  Delete "$INSTDIR\start_shell.exe"
  ;;;DELETE_SOURCES;;;
  ;;;DELETE_LIBS;;;
  ;;;DELETE_EXAMPLES;;;
  ;;;DELETE_MAIN;;;
  ;;;DELETE_IMPORT_LIBS;;;

  IfFileExists "$INSTDIR\setvars.bat" 0 +2
  Delete "$INSTDIR\setvars.bat"

  Delete "$SMPROGRAMS\$ICONS_GROUP\Uninstall.lnk"
  Delete "$SMPROGRAMS\$ICONS_GROUP\Project website.lnk"
  Delete "$SMPROGRAMS\$ICONS_GROUP\Project forum.lnk"
  Delete "$DESKTOP\FreeBASIC.lnk"
  Delete "$SMPROGRAMS\$ICONS_GROUP\FreeBASIC.lnk"

  RMDir "$SMPROGRAMS\$ICONS_GROUP"
  ;;;DELETE_FOLDERS;;;
  RMDir "$INSTDIR\inc"
  RMDir "$INSTDIR\lib\win32"
  RMDir "$INSTDIR\lib"
  RMDir "$INSTDIR"

  DeleteRegKey ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}"
  DeleteRegKey HKLM "${PRODUCT_DIR_REGKEY}"
  SetAutoClose true
SectionEnd
