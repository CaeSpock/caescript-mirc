HelpScribble project file.
16
Pneybf Navoneeb-08R252
0
2
IRCop Tools for mIRC


© 2000-2018 CaeSpock @ DALnet
TRUE

C:\Otros\codigo\caescript.mrc\ircoptools\help
1
BrowseButtons()
0
FALSE

FALSE
TRUE
16777215
0
16711680
8388736
255
TRUE
TRUE
TRUE
TRUE
30
30
800
600
TRUE
TRUE
1
FALSE
FALSE
Contents
%s Contents
Index
%s Index
Previous
Next
FALSE

50
10
Scribble10
IRCop Tools for mIRC
IRCop Tools for mIRC


:000010
Writing


IRCop Tools for mIRC
FALSE
24
{\rtf1\ansi\ansicpg1252\deff0\deflang1034{\fonttbl{\f0\fswiss Arial;}{\f1\fswiss\fcharset0 Arial;}}
{\colortbl ;\red128\green0\blue0;\red0\green0\blue128;\red0\green0\blue0;\red0\green128\blue0;}
\viewkind4\uc1\pard\qc\cf1\f0\fs20 
\par 
\par \lang3082\b\f1\fs48\{bmct ircoptools-logo.jpg\}\cf2 
\par \fs40 v. 7.0\cf1\lang1034\f0\fs48 
\par \cf0\f1\fs20\'a9 2000-2018 Carlos An\'edbarro\f0 
\par \lang3082\f1 WhiteSith Solutions Inc
\par 
\par \cf1\b0\{html=<a href="http://www.caespock.org/ircsoftware/" target="_blank">\cf2\b http://www.caespock.org/ircsoftware/\cf1\b0 </a>\}\cf0\b 
\par \cf3\lang1034\f0 
\par \pard\li1380 
\par \f1\'b7 \cf2\strike\f0 What are th\lang1033\f1 ese\lang1034\f0  IRCop Tools?\cf1\lang3082\strike0\f1\{linkID=%20\}\cf3 
\par \cf0 
\par \cf3\'b7 \cf2\strike\f0 How to Install the IRCop Tools\cf1\strike0\f1\{linkID=%30\}\cf0 
\par 
\par \cf3\'b7 \cf2\strike License\cf1\strike0\{linkID=%40\}\cf3 
\par 
\par \'b7 \cf2\strike\f0 How \lang1033\f1 do \lang3082\f0 they work?\cf1\strike0\f1\{linkID=%50\}\cf0 
\par 
\par \cf3\'b7 \cf2\strike\f0 Thanks\cf1\strike0\f1\{linkID=%490\}\cf4\strike 
\par 
\par \cf3\strike0\'b7 \cf2\strike\f0 About the Author\cf1\strike0\f1\{linkID=%500\}\cf0 
\par }
20
Scribble20
What are these IRCop Tools?
What are these IRCop Tools?


:000020
Writing


What are these IRCop Tools? Introduction
FALSE
21
{\rtf1\ansi\ansicpg1252\deff0\deflang1034{\fonttbl{\f0\fswiss Arial;}{\f1\fswiss\fcharset0 Arial;}}
{\colortbl ;\red0\green128\blue128;\red0\green0\blue128;\red0\green0\blue255;\red128\green0\blue0;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs8 
\par \pard\qc\cf2\fs40 What Are th\lang1033\f1 e\lang1034\f0 s\lang1033\f1 e\lang1034\f0  IRCop Tools?\cf3\fs32 
\par \pard\cf1\fs8 
\par \cf4\b0\fs20\{keepn\}\cf5 
\par \cf0\b\fs8 
\par \fs20 IRCop Tools for \lang3082\f1 mIRC\lang1034\f0  are a set of Aliases, \lang3082\f1 Remotes\lang1034\f0  and PopUps that will make our life as IRCops a bit eas\lang1033\f1 i\lang1034\f0 er.
\par 
\par This tools were made for DALnet\lang3082\f1  \lang1034\f0 and \lang3082\f1 any network that uses bahamut as their ircD. T\lang1034\f0 he filters were tested under a bahamut server.
\par 
\par The latest version is always available at:
\par \lang1033\f1\tab\cf4\b0\{html=<a href="http://www.caespock.org/ircsoftware/" target=\rdblquote _blank\rdblquote >http://www.caespock.org/ircsoftware/</a>\}\cf0\lang1034\b\f0 
\par \lang1033\f1 
\par \lang1034\f0\tab 
\par I\lang1033\f1 '\lang1034\f0 ll try to explain the best I can how to install this TOOLS and how they work. Sorry for my english, sometimes is not as good as I would like.
\par 
\par 
\par \cf2\lang3082\strike\f1 << Back to Main\cf4\strike0\{linkID=%10\}\cf0\lang1034\f0 
\par 
\par }
30
Scribble30
Installation
Installation


:000030
Writing


Installation
FALSE
24
{\rtf1\ansi\ansicpg1252\deff0\deflang1034{\fonttbl{\f0\fswiss Arial;}{\f1\fswiss\fcharset0 Arial;}}
{\colortbl ;\red0\green128\blue128;\red0\green0\blue128;\red128\green0\blue0;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs8 
\par \pard\qc\cf2\fs40 Installation
\par \pard\cf1\fs8 
\par \cf3\b0\fs20\{keepn\}\cf4 
\par \cf0\b\fs8 
\par \fs20 The Installation of th\lang1033\f1 ese\lang1034\f0  IRCop Tools is quite easy. 
\par 
\par Note: I have included several scripts from other authors so this is just a compilation of all the tools I use. Please respect all the \lang1033\f1 individual \lang1034\f0 authorship.
\par 
\par Steps to correctly \lang1033\f1 i\lang1034\f0 nstall the tools:
\par 
\par \pard\fi-120\li660\f1\'b7 \lang3082 Run the installer and install them in your mIRC roaming directory (ie: C:\\Users\\%user%\\AppData\\Roaming\\mIRC)
\par \lang1034\'b7 \lang3082 That will create a subdirectory named ircoptools (ie: c:\\Users\\%user%\\AppData\\Roaming\\mIRC\\ircoptools\\)
\par \lang1034\'b7 \lang3082 When opered, type:
\par \tab /load -rs ircoptools\\ircoptools.mrc
\par    Feel free to add this line to your perform list too.
\par \lang1034\'b7 \lang3082 If you want to configure your IRCopTools, press F3 or type:
\par \tab /configure\lang1034\f0 
\par \pard 
\par 
\par \cf2\lang3082\strike\f1 << Back to Main\cf3\strike0\{linkID=%10\}\cf0\lang1034\f0 
\par }
40
Scribble40
License
License


:000040
Writing


License
FALSE
20
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\fswiss\fcharset0 Arial;}{\f2\fnil\fcharset0 Arial;}}
{\colortbl ;\red0\green128\blue128;\red0\green0\blue128;\red128\green0\blue0;\red0\green0\blue0;\red0\green0\blue255;}
\viewkind4\uc1\pard\cf1\lang1034\b\f0\fs8 
\par \pard\qc\cf2\lang3082\f1\fs40 License\lang1034\f0 
\par \pard\cf1\fs8 
\par \cf3\b0\fs20\{keepn\}\cf4 
\par \pard\fi-120\li660\cf0\b\fs8 
\par \pard\qc\fs20 CaeScript/IRCopTools License
\par \pard 
\par \pard\fi-260\li680 1. \lang1033\f1 Based in GPL v3.
\par 2. \lang1034\f0 You can use this script for the time you want, \lang1033\f1 as long as you respect \lang1034\f0 any \lang1033\f1 part \lang1034\f0 of the authorship information. Respect the complete and the individual authorship.
\par \pard\fi-240\li660 2. This script is provided as is and how it is. The author takes no charge of any damage of any kind. Using this software you agree to the terms established here.
\par \pard\fi-140\li560 3. The distribution of this script is limited to distribute the executable file, w\lang1033\f1 h\lang1034\f0 ich garantizes that the file has not being modif\lang1033\f1 i\lang1034\f0 ed.\lang1033\f1  If you want to access the source code, you can find it in our GitHub page: \cf3\b0\{html=<a href="https://github.com/CaeSpock/caescript-mirc" target=\rdblquote _blank\rdblquote >https://github.com/CaeSpock/caescript-mirc</a>\}\cf0\lang1034\b\f0 
\par 4. The licence of CaeScript or IRCopTools is diferent f\lang3082\f1 rom\lang1034\f0  the mIRC licence (shareware).
\par \pard 
\par 
\par 
\par \cf2\lang3082\strike\f1 << Back to Main\cf3\strike0\{linkID=%10\}\cf0\lang1034\f0 
\par \cf5\lang3082\f2\fs32 
\par }
50
Scribble50
How do they work?
How do they work?


:000050
Writing


How do they work?
FALSE
66
{\rtf1\ansi\ansicpg1252\deff0\deflang1034{\fonttbl{\f0\fswiss Arial;}{\f1\fswiss\fcharset0 Arial;}}
{\colortbl ;\red0\green128\blue128;\red0\green0\blue128;\red0\green0\blue255;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs8 
\par \pard\qc\cf2\fs40 How \lang1033\f1 do t\lang1034\f0 hey \lang1033\f1 w\lang1034\f0 ork?\cf3 
\par \pard\cf1\fs8 
\par \cf4\b0\fs20\{keepn\}\cf0 
\par \cf1\b\fs8 
\par \cf0\fs20 Once they are installed, the TOOLS are ready to \lang1033\f1 w\lang1034\f0 ork
\par 
\par The Popups, are like other popups, they will prompt you for nick or text when needed.
\par The \lang3082\f1 remotes will filter all server notices.\lang1034\f0 
\par 
\par The Aliases:
\par \pard\li420\cf2\strike /ac\cf4\strike0\{linkID=%60\}\cf2 
\par \strike /afl\cf4\strike0\{linkID=%70\}
\par \cf2\strike /afn\cf4\strike0\{linkID=90\}\cf2 
\par \strike /afs\cf4\strike0\{linkID=%80\}\cf2 
\par \strike /ahp\cf4\strike0\{linkID=%100\}\cf2 
\par \strike /ahs\cf4\strike0\{linkID=%110\}\cf2\strike 
\par /akill\cf4\strike0\{linkID=%120\}
\par \cf2\strike /ams\cf4\strike0\{linkID=%130\}
\par \cf2\strike /amw\cf4\strike0\{linkID=%140\}
\par \cf2\strike /an\cf4\strike0\{linkID=%160\}
\par \cf2\strike /an\lang3082\f1 c\cf4\lang1034\strike0\f0\{linkID=%150\}
\par \cf2\strike /aps\cf4\strike0\{linkID=%170\}
\par \cf2\strike /asa\cf4\strike0\{linkID=%180\}
\par \cf2\strike /as\lang3082\f1 i\cf4\lang1034\strike0\f0\{linkID=%190\}
\par \cf2\strike /ats\cf4\strike0\{linkID=%200\}
\par \cf2\strike /atssp\cf4\strike0\{linkID=%210\}
\par \cf2\strike /chatops\cf4\strike0\{linkID=%220\}
\par \cf2\strike /clones\cf4\strike0\{linkID=%230\}
\par \cf2\strike /clones2\cf4\strike0\{linkID=%240\}
\par \cf2\strike /clscan\cf4\strike0\{linkID=%250\}
\par \cf2\strike /c\lang3082\f1 ollisions\cf4\lang1034\strike0\f0\{linkID=%260\}
\par \cf2\strike /c\lang3082\f1 ollisionsoff\cf4\lang1034\strike0\f0\{linkID=%270\}
\par \cf2\strike /configure\cf4\strike0\{linkID=%280\}
\par \cf2\strike /forbiddennicks\cf4\strike0\{linkID=290\}
\par \cf2\strike /forbiddennicksoff\cf4\strike0\{linkID=300\}
\par \cf2\strike /globops\cf4\strike0\{linkID=%350\}
\par \cf2\strike /\lang3082\f1 inspiration\cf4\lang1034\strike0\f0\{linkID=%310\}
\par \cf2\strike /\lang3082\f1 k\lang1034\f0 fl\cf4\strike0\{linkID=%320\}
\par \cf2\strike /\lang3082\f1 k\lang1034\f0 fl\lang3082\f1 sp\cf4\lang1034\strike0\f0\{linkID=%320\}
\par \cf2\strike /\lang3082\f1 k\lang1034\f0 hs\cf4\strike0\{linkID=%330\}
\par \cf2\strike /\lang3082\f1 k\lang1034\f0 hs\lang3082\f1 sp\cf4\lang1034\strike0\f0\{linkID=%330\}
\par \cf2\strike /\lang3082\f1 k\lang1034\f0 ms\cf4\strike0\{linkID=%340\}
\par \cf2\strike /\lang3082\f1 k\lang1034\f0 ms\lang3082\f1 sp\cf4\lang1034\strike0\f0\{linkID=%340\}
\par \cf2\strike /infected\cf4\strike0\{linkID=%360\}
\par \cf2\strike /infectado\cf4\strike0\{linkID=%370\}
\par \cf2\strike /locops\cf4\strike0\{linkID=%450\}
\par \cf2\strike /report\cf4\strike0\{linkID=%390\}
\par \cf2\strike /saopme\cf4\strike0\{linkID=%400\}
\par \cf2\strike /setos\cf4\strike0\{linkID=%410\}
\par \cf2\strike /snotice\cf4\strike0\{linkID=%420\}
\par \cf2\lang3082\strike\f1 /sping\cf4\strike0\{linkID=%430\}\lang1034\f0 
\par \cf2\strike /statsl\cf4\strike0\{linkID=%440\}
\par \cf2\strike /statsl2\cf4\strike0\{linkID=%450\}
\par \cf2\strike /uauth\cf4\strike0\{linkID=460\}
\par \cf2\strike /unload.ircoptools\cf4\strike0\{linkID=%470\}
\par \cf2\strike /wm\cf4\strike0\{linkID=%480\}
\par \pard\cf0 
\par \lang3082\f1 Aditionally, this set of tools includes 'windowfilter.mrc', script coded by alaskaguy and friends wich will help with window filtering.\lang1034\f0 
\par 
\par 
\par \cf2\lang3082\strike\f1 << Back to Main\cf4\strike0\{linkID=%10\}\cf0\lang1034\f0 
\par 
\par }
60
Scribble60
/ac
/ac



Writing


/ac
FALSE
18
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil\fcharset0 Arial;}{\f1\fnil Arial;}{\f2\fswiss\fcharset0 Arial;}{\f3\fswiss Arial;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue128;\red0\green0\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\lang3082\b\fs8 
\par \cf2\fs32 /ac <nick!ident@host.ip>\cf3\lang1033\b0\f1\fs20 
\par \cf1\lang3082\b\f0\fs8 
\par \cf4\lang1033\b0\f1\fs20\{keepn\}\cf3 
\par \cf1\lang3082\b\f0\fs8 
\par \cf3\fs20 Will set an auto kill for "cloning".
\par You can configure the time and the reason with the \cf2\strike /configure\cf4\strike0\{linkID=%280\}\cf3  option
\par 
\par \cf0\lang1034\f2 ie: /ac 44.55.22.33\f3 
\par 
\par \cf2\lang3082\strike\f2 << Back to How they Work\cf4\strike0\{linkID=%50\}\cf0\lang1034\f3 
\par \cf2\lang3082\strike\f2 << Back to Main\cf4\strike0\{linkID=%10\}\cf0\lang1034\f3 
\par \cf3\lang3082\f0 
\par \cf1\lang1034\fs32 
\par 
\par }
70
Scribble70
/afl
/afl



Writing


/afl
FALSE
18
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil\fcharset0 Arial;}{\f1\fnil Arial;}{\f2\fswiss\fcharset0 Arial;}{\f3\fswiss Arial;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue128;\red0\green0\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\lang3082\b\fs8 
\par \cf2\fs32 /afl <nick!ident@host.ip>\cf3\lang1033\b0\f1\fs20 
\par \cf1\lang3082\b\f0\fs8 
\par \cf4\lang1033\b0\f1\fs20\{keepn\}\cf3 
\par \cf1\lang3082\b\f0\fs8 
\par \cf3\fs20 Will set an auto kill for "flooding".
\par You can configure the time and the reason with the \cf2\strike /configure\cf4\strike0\{linkID=%280\}\cf3  option
\par 
\par \cf0\lang1034\f2 ie: /afl 44.55.22.33\f3 
\par 
\par \cf2\lang3082\strike\f2 << Back to How they Work\cf4\strike0\{linkID=%50\}\cf0\lang1034\f3 
\par \cf2\lang3082\strike\f2 << Back to Main\cf4\strike0\{linkID=%10\}\cf0\lang1034\f3 
\par \cf3\lang3082\f0 
\par \cf1\lang1034\fs32 
\par 
\par }
80
Scribble80
/afs
/afs



Writing


/afs
FALSE
17
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil\fcharset0 Arial;}{\f1\fnil Arial;}{\f2\fswiss\fcharset0 Arial;}{\f3\fswiss Arial;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue128;\red0\green0\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\lang3082\b\fs8 
\par \cf2\fs32 /afs <nick!ident@host.ip>\cf3\lang1033\b0\f1\fs20 
\par \cf1\lang3082\b\f0\fs8 
\par \cf4\lang1033\b0\f1\fs20\{keepn\}\cf3 
\par \cf1\lang3082\b\f0\fs8 
\par \cf3\fs20 Will set an auto kill for "flooding services".
\par You can configure the time and the reason with the \cf2\strike /configure\cf4\strike0\{linkID=%280\}\cf3  option
\par 
\par \cf0\lang1034\f2 ie: /afs 44.55.22.33\f3 
\par 
\par \cf2\lang3082\strike\f2 << Back to How they Work\cf4\strike0\{linkID=%50\}\cf0\lang1034\f3 
\par \cf2\lang3082\strike\f2 << Back to Main\cf4\strike0\{linkID=%10\}\cf0\lang1034\f3 
\par \cf3\lang3082\f0 
\par \cf1\lang1034\fs32 
\par }
90
Scribble90
/afn
/afn



Writing


/afn
FALSE
17
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil\fcharset0 Arial;}{\f1\fnil Arial;}{\f2\fswiss\fcharset0 Arial;}{\f3\fswiss Arial;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue128;\red0\green0\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\lang3082\b\fs8 
\par \cf2\fs32 /afn <nick!ident@host.ip>\cf3\lang1033\b0\f1\fs20 
\par \cf1\lang3082\b\f0\fs8 
\par \cf4\lang1033\b0\f1\fs20\{keepn\}\cf3 
\par \cf1\lang3082\b\f0\fs8 
\par \cf3\fs20 Will set an auto kill for "trying to use a forbidden nick".
\par You can configure the time and the reason with the \cf2\strike /configure\cf4\strike0\{linkID=%280\}\cf3  option
\par 
\par \cf0\lang1034\f2 ie: /afn 44.55.22.33\f3 
\par 
\par \cf2\lang3082\strike\f2 << Back to How they Work\cf4\strike0\{linkID=%50\}\cf0\lang1034\f3 
\par \cf2\lang3082\strike\f2 << Back to Main\cf4\strike0\{linkID=%10\}\cf0\lang1034\f3 
\par \cf3\lang3082\f0 
\par \cf1\lang1034\fs32 
\par }
100
Scribble100
/ahp
/ahp



Writing


/ahp
FALSE
18
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil\fcharset0 Arial;}{\f1\fnil Arial;}{\f2\fswiss\fcharset0 Arial;}{\f3\fswiss Arial;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue128;\red0\green0\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\lang3082\b\fs8 
\par \cf2\fs32 /ahp <nick!ident@host.ip>\cf3\lang1033\b0\f1\fs20 
\par \cf1\lang3082\b\f0\fs8 
\par \cf4\lang1033\b0\f1\fs20\{keepn\}\cf3 
\par \cf1\lang3082\b\f0\fs8 
\par \cf3\fs20 Will set an auto kill for "trying to hack passwords".
\par You can configure the time and the reason with the \cf2\strike /configure\cf4\strike0\{linkID=%280\}\cf3  option
\par 
\par \cf0\lang1034\f2 ie: /ahp 44.55.22.33\f3 
\par 
\par \cf2\lang3082\strike\f2 << Back to How they Work\cf4\strike0\{linkID=%50\}\cf0\lang1034\f3 
\par \cf2\lang3082\strike\f2 << Back to Main\cf4\strike0\{linkID=%10\}\cf0\lang1034\f3 
\par \cf3\lang3082\f0 
\par \cf1\lang1034\fs32 
\par 
\par }
110
Scribble110
/ahs
/ahs



Writing


/ahs
FALSE
18
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil\fcharset0 Arial;}{\f1\fnil Arial;}{\f2\fswiss\fcharset0 Arial;}{\f3\fswiss Arial;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue128;\red0\green0\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\lang3082\b\fs8 
\par \cf2\fs32 /ahs <nick!ident@host.ip>\cf3\lang1033\b0\f1\fs20 
\par \cf1\lang3082\b\f0\fs8 
\par \cf4\lang1033\b0\f1\fs20\{keepn\}\cf3 
\par \cf1\lang3082\b\f0\fs8 
\par \cf3\fs20 Will set an auto kill for "harrassment".
\par You can configure the time and the reason with the \cf2\strike /configure\cf4\strike0\{linkID=%280\}\cf3  option
\par 
\par \cf0\lang1034\f2 ie: /ahs 44.55.22.33\f3 
\par 
\par \cf2\lang3082\strike\f2 << Back to How they Work\cf4\strike0\{linkID=%50\}\cf0\lang1034\f3 
\par \cf2\lang3082\strike\f2 << Back to Main\cf4\strike0\{linkID=%10\}\cf0\lang1034\f3 
\par \cf3\lang3082\f0 
\par \cf1\lang1034\fs32 
\par 
\par }
120
Scribble120
/akill
/akill



Writing


/akill
FALSE
16
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil\fcharset0 Arial;}{\f1\fnil Arial;}{\f2\fswiss Arial;}{\f3\fswiss\fcharset0 Arial;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue128;\red0\green0\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\lang3082\b\fs8 
\par \cf2\fs32 /akill [time in minutes] <userid@host.ip|host.domain> [Reason]\cf3\lang1033\b0\f1\fs20 
\par \cf1\lang3082\b\f0\fs8 
\par \cf4\lang1033\b0\f1\fs20\{keepn\}\cf3 
\par \cf1\lang3082\b\f0\fs8 
\par \cf3\fs20 Will set an auto kill.
\par Please specify the time in minutes the host and the reason.
\par \cf0\lang1034\f2 
\par \f3 ie: /akill 30 *!*@abuser.host.testing.com Flooding is not permitted here\f2 
\par 
\par \cf2\lang3082\strike\f3 << Back to How they Work\cf4\strike0\{linkID=%50\}\cf0\lang1034\f2 
\par \cf2\lang3082\strike\f3 << Back to Main\cf4\strike0\{linkID=%10\}\cf0\lang1034\f2 
\par \cf3\lang3082\f0 
\par }
130
Scribble130
/ams
/ams



Writing


ams
FALSE
18
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil\fcharset0 Arial;}{\f1\fnil Arial;}{\f2\fswiss\fcharset0 Arial;}{\f3\fswiss Arial;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue128;\red0\green0\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\lang3082\b\fs8 
\par \cf2\fs32 /ams <nick!ident@host.ip>\cf3\lang1033\b0\f1\fs20 
\par \cf1\lang3082\b\f0\fs8 
\par \cf4\lang1033\b0\f1\fs20\{keepn\}\cf3 
\par \cf1\lang3082\b\f0\fs8 
\par \cf3\fs20 Will set an auto kill for "mass inviting".
\par You can configure the time and the reason with the \cf2\strike /configure\cf4\strike0\{linkID=%280\}\cf3  option
\par 
\par \cf0\lang1034\f2 ie: /ams 44.55.22.33\f3 
\par 
\par \cf2\lang3082\strike\f2 << Back to How they Work\cf4\strike0\{linkID=%50\}\cf0\lang1034\f3 
\par \cf2\lang3082\strike\f2 << Back to Main\cf4\strike0\{linkID=%10\}\cf0\lang1034\f3 
\par \cf3\lang3082\f0 
\par \cf1\lang1034\fs32 
\par 
\par }
140
Scribble140
/amw
/amw



Writing


amw
FALSE
16
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil\fcharset0 Arial;}{\f1\fnil Arial;}{\f2\fswiss\fcharset0 Arial;}{\f3\fswiss Arial;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue128;\red0\green0\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\lang3082\b\fs8 
\par \cf2\fs32 /amw <nick!ident@host.ip>\cf3\lang1033\b0\f1\fs20 
\par \cf1\lang3082\b\f0\fs8 
\par \cf4\lang1033\b0\f1\fs20\{keepn\}\cf3 
\par \cf1\lang3082\b\f0\fs8 
\par \cf3\fs20 Will set an auto kill for "mass advertising web sites".
\par You can configure the time and the reason with the \cf2\strike /configure\cf4\strike0\{linkID=%280\}\cf3  option
\par 
\par \cf0\lang1034\f2 ie: /amw 44.55.22.33\f3 
\par 
\par \cf2\lang3082\strike\f2 << Back to How they Work\cf4\strike0\{linkID=%50\}\cf0\lang1034\f3 
\par \cf2\lang3082\strike\f2 << Back to Main\cf4\strike0\{linkID=%10\}\cf0\lang1034\f3 
\par \cf3\lang1033\b0\f1 
\par }
150
Scribble150
/anc
/anc



Writing


/anc
FALSE
16
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil\fcharset0 Arial;}{\f1\fnil Arial;}{\f2\fswiss\fcharset0 Arial;}{\f3\fswiss Arial;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue128;\red0\green0\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\lang3082\b\fs8 
\par \cf2\fs32 /anc <nick!ident@host.ip>\cf3\lang1033\b0\f1\fs20 
\par \cf1\lang3082\b\f0\fs8 
\par \cf4\lang1033\b0\f1\fs20\{keepn\}\cf3 
\par \cf1\lang3082\b\f0\fs8 
\par \cf3\fs20 Will set an auto kill for "nick chasing".
\par You can configure the time and the reason with the \cf2\strike /configure\cf4\strike0\{linkID=%280\}\cf3  option
\par 
\par \cf0\lang1034\f2 ie: /anc 44.55.22.33\f3 
\par 
\par \cf2\lang3082\strike\f2 << Back to How they Work\cf4\strike0\{linkID=%50\}\cf0\lang1034\f3 
\par \cf2\lang3082\strike\f2 << Back to Main\cf4\strike0\{linkID=%10\}\cf0\lang1034\f3 
\par \cf3\lang1033\b0\f1 
\par }
160
Scribble160
/an
/an



Writing


an
FALSE
18
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil\fcharset0 Arial;}{\f1\fnil Arial;}{\f2\fswiss\fcharset0 Arial;}{\f3\fswiss Arial;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue128;\red0\green0\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\lang3082\b\fs8 
\par \cf2\fs32 /ans <nick>\cf3\lang1033\b0\f1\fs20 
\par \cf1\lang3082\b\f0\fs8 
\par \cf4\lang1033\b0\f1\fs20\{keepn\}\cf3 
\par \cf1\lang3082\b\f0\fs8 
\par \cf3\fs20 Will notice "nick" for adding *!*@*  to any channel access list, wich is considered abuse.
\par You can configure the message with the \cf2\strike /configure\cf4\strike0\{linkID=%280\}\cf3  option
\par 
\par \cf0\lang1034\f2 ie: /an Splock\f3 
\par 
\par \cf2\lang3082\strike\f2 << Back to How they Work\cf4\strike0\{linkID=%50\}\cf0\lang1034\f3 
\par \cf2\lang3082\strike\f2 << Back to Main\cf4\strike0\{linkID=%10\}\cf0\lang1034\f3 
\par \cf3\lang3082\f0 
\par \cf1\lang1034\fs32 
\par \cf3\lang1033\b0\f1\fs20 
\par }
170
Scribble170
/aps
/aps



Writing


/aps
FALSE
17
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil\fcharset0 Arial;}{\f1\fnil Arial;}{\f2\fswiss\fcharset0 Arial;}{\f3\fswiss Arial;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue128;\red0\green0\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\lang3082\b\fs8 
\par \cf2\fs32 /aps <nick!ident@host.ip>\cf3\lang1033\b0\f1\fs20 
\par \cf1\lang3082\b\f0\fs8 
\par \cf4\lang1033\b0\f1\fs20\{keepn\}\cf3 
\par \cf1\lang3082\b\f0\fs8 
\par \cf3\fs20 Will set an auto kill for "ctcp ping flooding services".
\par You can configure the time and the reason with the \cf2\strike /configure\cf4\strike0\{linkID=%280\}\cf3  option
\par 
\par \cf0\lang1034\f2 ie: /aps 44.55.22.33\f3 
\par 
\par \cf2\lang3082\strike\f2 << Back to How they Work\cf4\strike0\{linkID=%50\}\cf0\lang1034\f3 
\par \cf2\lang3082\strike\f2 << Back to Main\cf4\strike0\{linkID=%10\}\cf0\lang1034\f3 
\par \cf3\lang3082\f0 
\par \lang1033\b0\f1 
\par }
180
Scribble180
/asa
/asa



Writing


/asa
FALSE
18
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil\fcharset0 Arial;}{\f1\fnil Arial;}{\f2\fswiss\fcharset0 Arial;}{\f3\fswiss Arial;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue128;\red0\green0\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\lang3082\b\fs8 
\par \cf2\fs32 /asa <nick!ident@host.ip>\cf3\lang1033\b0\f1\fs20 
\par \cf1\lang3082\b\f0\fs8 
\par \cf4\lang1033\b0\f1\fs20\{keepn\}\cf3 
\par \cf1\lang3082\b\f0\fs8 
\par \cf3\fs20 Will set an auto kill for "services abuse".
\par You can configure the time and the reason with the \cf2\strike /configure\cf4\strike0\{linkID=%280\}\cf3  option
\par 
\par \cf0\lang1034\f2 ie: /asa 44.55.22.33\f3 
\par 
\par \cf2\lang3082\strike\f2 << Back to How they Work\cf4\strike0\{linkID=%50\}\cf0\lang1034\f3 
\par \cf2\lang3082\strike\f2 << Back to Main\cf4\strike0\{linkID=%10\}\cf0\lang1034\f3 
\par \cf3\lang3082\f0 
\par \cf1\lang1034\fs32 
\par 
\par }
190
Scribble190
/asi
/asi



Writing


/asi
FALSE
18
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil\fcharset0 Arial;}{\f1\fnil Arial;}{\f2\fswiss\fcharset0 Arial;}{\f3\fswiss Arial;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue128;\red0\green0\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\lang3082\b\fs8 
\par \cf2\fs32 /asi <nick!ident@host.ip>\cf3\lang1033\b0\f1\fs20 
\par \cf1\lang3082\b\f0\fs8 
\par \cf4\lang1033\b0\f1\fs20\{keepn\}\cf3 
\par \cf1\lang3082\b\f0\fs8 
\par \cf3\fs20 Will set an auto kill for "repeated identify to the same nicks or channels".
\par You can configure the time and the reason with the \cf2\strike /configure\cf4\strike0\{linkID=%280\}\cf3  option
\par 
\par \cf0\lang1034\f2 ie: /asi 44.55.22.33\f3 
\par 
\par \cf2\lang3082\strike\f2 << Back to How they Work\cf4\strike0\{linkID=%50\}\cf0\lang1034\f3 
\par \cf2\lang3082\strike\f2 << Back to Main\cf4\strike0\{linkID=%10\}\cf0\lang1034\f3 
\par \cf3\lang3082\f0 
\par \cf1\lang1034\fs32 
\par \cf3\lang1033\b0\f1\fs20 
\par }
200
Scribble200
/ats
/ats



Writing


/ats
FALSE
18
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil\fcharset0 Arial;}{\f1\fnil Arial;}{\f2\fswiss\fcharset0 Arial;}{\f3\fswiss Arial;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue128;\red0\green0\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\lang3082\b\fs8 
\par \cf2\fs32 /ats <nick!ident@host.ip>\cf3\lang1033\b0\f1\fs20 
\par \cf1\lang3082\b\f0\fs8 
\par \cf4\lang1033\b0\f1\fs20\{keepn\}\cf3 
\par \cf1\lang3082\b\f0\fs8 
\par \cf3\fs20 Will set an auto kill for "sending trojans".
\par You can configure the time and the reason with the \cf2\strike /configure\cf4\strike0\{linkID=%280\}\cf3  option
\par 
\par \cf0\lang1034\f2 ie: /ats 166.114.10.222\f3 
\par 
\par \cf2\lang3082\strike\f2 << Back to How they Work\cf4\strike0\{linkID=%50\}\cf0\lang1034\f3 
\par \cf2\lang3082\strike\f2 << Back to Main\cf4\strike0\{linkID=%10\}\cf0\lang1034\f3 
\par \cf3\lang3082\f0 
\par \cf1\lang1034\fs32 
\par \cf3\lang1033\b0\f1\fs20 
\par }
210
Scribble210
/atssp
/atssp



Writing


/attsp
FALSE
18
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil\fcharset0 Arial;}{\f1\fnil Arial;}{\f2\fswiss\fcharset0 Arial;}{\f3\fswiss Arial;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue128;\red0\green0\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\lang3082\b\fs8 
\par \cf2\fs32 /atssp <nick!ident@host.ip>\cf3\lang1033\b0\f1\fs20 
\par \cf1\lang3082\b\f0\fs8 
\par \cf4\lang1033\b0\f1\fs20\{keepn\}\cf3 
\par \cf1\lang3082\b\f0\fs8 
\par \cf3\fs20 Will set an auto kill for "sending trojans" in spanish.
\par You can configure the time and the reason with the \cf2\strike /configure\cf4\strike0\{linkID=%280\}\cf3  option
\par 
\par \cf0\lang1034\f2 ie: /ats 166.114.10.222\f3 
\par 
\par \cf2\lang3082\strike\f2 << Back to How they Work\cf4\strike0\{linkID=%50\}\cf0\lang1034\f3 
\par \cf2\lang3082\strike\f2 << Back to Main\cf4\strike0\{linkID=%10\}\cf0\lang1034\f3 
\par \cf3\lang3082\f0 
\par \cf1\lang1034\fs32 
\par \cf3\lang1033\b0\f1\fs20 
\par }
220
Scribble220
/chatops
/chatops



Writing


/chatops
FALSE
16
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil\fcharset0 Arial;}{\f1\fnil Arial;}{\f2\fswiss Arial;}{\f3\fswiss\fcharset0 Arial;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue128;\red0\green0\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\lang3082\b\fs8 
\par \cf2\fs32 /chatops <text>\cf3\lang1033\b0\f1\fs20 
\par \cf1\lang3082\b\f0\fs8 
\par \cf4\lang1033\b0\f1\fs20\{keepn\}\cf3 
\par \cf1\lang3082\b\f0\fs8 
\par \cf3\fs20 Will send a Chatops!
\par \cf0\lang1034\f2 
\par \f3 ie: /chatops Heya everybody!\f2 
\par 
\par \cf2\lang3082\strike\f3 << Back to How they Work\cf4\strike0\{linkID=%50\}\cf0\lang1034\f2 
\par \cf2\lang3082\strike\f3 << Back to Main\cf4\strike0\{linkID=%10\}\cf0\lang1034\f2 
\par \cf3\lang1033\b0\f1 
\par \b 
\par }
230
Scribble230
/clones
/clones



Writing


/clones
FALSE
22
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil\fcharset0 Arial;}{\f1\fnil Arial;}{\f2\fswiss\fcharset0 Arial;}{\f3\fswiss Arial;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue128;\red128\green0\blue0;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\lang3082\b\fs8 
\par \cf2\fs32 /clones <host>
\par \cf1\fs8 
\par \cf3\lang1033\b0\f1\fs20\{keepn\}\cf4 
\par \cf1\lang3082\b\f0\fs8 
\par \cf4\fs20 Will search for all clones from the given host.
\par 
\par \pard\qc\cf3\f2\{bmc clones.bmp\}\cf0 
\par \pard 
\par The options you have after scanning for clones are: MassKill, Akill, Kline, TempKline.
\par 
\par ie: /clones 166.114.10.239\lang1034\f3 
\par 
\par \cf2\lang3082\strike\f2 << Back to How they Work\cf3\strike0\{linkID=%50\}\cf0\lang1034\f3 
\par \cf2\lang3082\strike\f2 << Back to Main\cf3\strike0\{linkID=%10\}\cf0\lang1034\f3 
\par \cf4\lang1033\b0\f1 
\par \b 
\par \cf1\lang3082\f0\fs32 
\par 
\par }
240
Scribble240
/clones2
/clones2



Writing


/clones2
FALSE
23
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil\fcharset0 Arial;}{\f1\fnil Arial;}{\f2\fswiss\fcharset0 Arial;}{\f3\fswiss Arial;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue128;\red128\green0\blue0;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\lang3082\b\fs8 
\par \cf2\fs32 /clones2 <user@host>
\par \cf1\fs8 
\par \cf3\lang1033\b0\f1\fs20\{keepn\}\cf4 
\par \cf1\lang3082\b\f0\fs8 
\par \cf4\fs20 Will search for all clones from the given user@ip. Very usefull for tracing vhosts.
\par 
\par \pard\qc\cf3\f2\{bmc clones.bmp\}\cf0 
\par \pard 
\par The options you have after scanning for clones are: MassKill, Akill, Kline, TempKline.
\par 
\par ie: /clones2 cae@166.114.10.*\lang1034\f3 
\par 
\par \cf2\lang3082\strike\f2 << Back to How they Work\cf3\strike0\{linkID=%50\}\cf0\lang1034\f3 
\par \cf2\lang3082\strike\f2 << Back to Main\cf3\strike0\{linkID=%10\}\cf0\lang1034\f3 
\par \cf4\lang1033\b0\f1 
\par \b 
\par \cf1\lang3082\f0\fs32 
\par 
\par \lang1034 
\par }
250
Scribble250
/clscan
/clscan



Writing


/clscan
FALSE
18
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil\fcharset0 Arial;}{\f1\fnil Arial;}{\f2\fswiss Arial;}{\f3\fswiss\fcharset0 Arial;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue128;\red128\green0\blue0;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\lang3082\b\fs8 
\par \cf2\fs32 /clscan <nick>
\par \cf1\fs8 
\par \cf3\lang1033\b0\f1\fs20\{keepn\}\cf4 
\par \cf1\lang3082\b\f0\fs8 
\par \cf4\fs20 Will search for all clones from the host of the given nick.
\par 
\par ie: /clscan DaClonner
\par \cf0\lang1034\f2 
\par \cf2\lang3082\strike\f3 << Back to How they Work\cf3\strike0\{linkID=%50\}\cf0\lang1034\f2 
\par \cf2\lang3082\strike\f3 << Back to Main\cf3\strike0\{linkID=%10\}\cf0\lang1034\f2 
\par \cf4\lang1033\b0\f1 
\par \b 
\par \cf1\lang3082\f0\fs32 
\par 
\par }
260
Scribble260
/collisions
/collisions



Writing


/collisions
FALSE
18
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil\fcharset0 Arial;}{\f1\fnil Arial;}{\f2\fswiss Arial;}{\f3\fswiss\fcharset0 Arial;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue128;\red128\green0\blue0;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\lang3082\b\fs8 
\par \cf2\fs32 /collisions
\par \cf1\fs8 
\par \cf3\lang1033\b0\f1\fs20\{keepn\}\cf4 
\par \cf1\lang3082\b\f0\fs8 
\par \cf4\fs20 Will enable the nick collisions detector, and set the usermode to +k.
\par 
\par ie: /collisions
\par \cf0\lang1034\f2 
\par \cf2\lang3082\strike\f3 << Back to How they Work\cf3\strike0\{linkID=%50\}\cf0\lang1034\f2 
\par \cf2\lang3082\strike\f3 << Back to Main\cf3\strike0\{linkID=%10\}\cf0\lang1034\f2 
\par \cf4\lang1033\b0\f1 
\par \b 
\par \cf1\lang3082\f0\fs32 
\par \cf4\lang1033\b0\f1\fs20 
\par }
270
Scribble270
/collisionsoff
/collisionsoff



Writing


/collisionsoff
FALSE
18
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil\fcharset0 Arial;}{\f1\fnil Arial;}{\f2\fswiss Arial;}{\f3\fswiss\fcharset0 Arial;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue128;\red128\green0\blue0;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\lang3082\b\fs8 
\par \cf2\fs32 /collisionsoff
\par \cf1\fs8 
\par \cf3\lang1033\b0\f1\fs20\{keepn\}\cf4 
\par \cf1\lang3082\b\f0\fs8 
\par \cf4\fs20 Will disable the nick collisions detector.
\par 
\par ie: /collisionsoff
\par \cf0\lang1034\f2 
\par \cf2\lang3082\strike\f3 << Back to How they Work\cf3\strike0\{linkID=%50\}\cf0\lang1034\f2 
\par \cf2\lang3082\strike\f3 << Back to Main\cf3\strike0\{linkID=%10\}\cf0\lang1034\f2 
\par \cf4\lang1033\b0\f1 
\par \b 
\par \cf1\lang3082\f0\fs32 
\par \cf4\lang1033\b0\f1\fs20 
\par }
280
Scribble280
/configure
/configure



Writing


/configure
FALSE
18
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil\fcharset0 Arial;}{\f1\fnil Arial;}{\f2\fswiss Arial;}{\f3\fswiss\fcharset0 Arial;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue128;\red128\green0\blue0;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\lang3082\b\fs8 
\par \cf2\fs32 /configure
\par \cf1\fs8 
\par \cf3\lang1033\b0\f1\fs20\{keepn\}\cf4 
\par \cf1\lang3082\b\f0\fs8 
\par \cf4\fs20 Will open the configuration window for IRCop Tools.
\par \cf0\lang1034\f2 
\par \f3 ie: /configure
\par \f2 
\par \cf2\lang3082\strike\f3 << Back to How they Work\cf3\strike0\{linkID=%50\}\cf0\lang1034\f2 
\par \cf2\lang3082\strike\f3 << Back to Main\cf3\strike0\{linkID=%10\}\cf0\lang1034\f2 
\par \cf4\lang1033\b0\f1 
\par \b 
\par \cf1\lang3082\f0\fs32 
\par 
\par }
290
Scribble290
/forbiddennicks
/forbiddennicks



Writing


/forbiddennicks
FALSE
18
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil\fcharset0 Arial;}{\f1\fnil Arial;}{\f2\fswiss Arial;}{\f3\fswiss\fcharset0 Arial;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue128;\red128\green0\blue0;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\lang3082\b\fs8 
\par \cf2\fs32 /forbiddennicks
\par \cf1\fs8 
\par \cf3\lang1033\b0\f1\fs20\{keepn\}\cf4 
\par \cf1\lang3082\b\f0\fs8 
\par \cf4\fs20 Will enable the forbidden nicks detector, and set the usermode to +j.
\par 
\par ie: /forbiddennicks
\par \cf0\lang1034\f2 
\par \cf2\lang3082\strike\f3 << Back to How they Work\cf3\strike0\{linkID=%50\}\cf0\lang1034\f2 
\par \cf2\lang3082\strike\f3 << Back to Main\cf3\strike0\{linkID=%10\}\cf0\lang1034\f2 
\par \cf4\lang1033\b0\f1 
\par \b 
\par \cf1\lang3082\f0\fs32 
\par \cf4\lang1033\b0\f1\fs20 
\par }
300
Scribble300
/forbiddennicksoff
/forbiddennicksoff



Writing


/forbiddennicksoff
FALSE
18
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil\fcharset0 Arial;}{\f1\fnil Arial;}{\f2\fswiss Arial;}{\f3\fswiss\fcharset0 Arial;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue128;\red128\green0\blue0;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\lang3082\b\fs8 
\par \cf2\fs32 /forbiddennicksoff
\par \cf1\fs8 
\par \cf3\lang1033\b0\f1\fs20\{keepn\}\cf4 
\par \cf1\lang3082\b\f0\fs8 
\par \cf4\fs20 Will disable the forbidden nicks detector.
\par 
\par ie: /forbiddennicksoff
\par \cf0\lang1034\f2 
\par \cf2\lang3082\strike\f3 << Back to How they Work\cf3\strike0\{linkID=%50\}\cf0\lang1034\f2 
\par \cf2\lang3082\strike\f3 << Back to Main\cf3\strike0\{linkID=%10\}\cf0\lang1034\f2 
\par \cf4\lang1033\b0\f1 
\par \b 
\par \cf1\lang3082\f0\fs32 
\par \cf4\lang1033\b0\f1\fs20 
\par }
310
Scribble310
/inspiration
/inspiration



Writing


/inspiration
FALSE
18
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil\fcharset0 Arial;}{\f1\fnil Arial;}{\f2\fswiss Arial;}{\f3\fswiss\fcharset0 Arial;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue128;\red128\green0\blue0;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\lang3082\b\fs8 
\par \cf2\fs32 /inspiration
\par \cf1\fs8 
\par \cf3\lang1033\b0\f1\fs20\{keepn\}\cf4 
\par \cf1\lang3082\b\f0\fs8 
\par \cf4\fs20 Opens https://inspiration.dal.net/ web site, for DALnet opers.
\par \cf0\lang1034\f2 
\par \f3 ie: /inspiration
\par \f2 
\par \cf2\lang3082\strike\f3 << Back to How they Work\cf3\strike0\{linkID=%50\}\cf0\lang1034\f2 
\par \cf2\lang3082\strike\f3 << Back to Main\cf3\strike0\{linkID=%10\}\cf0\lang1034\f2 
\par \cf4\lang1033\b0\f1 
\par \b 
\par \cf1\lang3082\f0\fs32 
\par \cf4\lang1033\b0\f1\fs20 
\par }
320
Scribble320
/kfl
/kfl



Writing


/kfl
FALSE
21
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil\fcharset0 Arial;}{\f1\fnil Arial;}{\f2\fswiss Arial;}{\f3\fswiss\fcharset0 Arial;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue128;\red128\green0\blue0;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\lang3082\b\fs8 
\par \cf2\fs32 /kfl <nick>
\par /kflsp <nick>\cf1 
\par \fs8 
\par \cf3\lang1033\b0\f1\fs20\{keepn\}\cf4 
\par \cf1\lang3082\b\f0\fs8 
\par \cf4\fs20 Will isue a kill on the given <nick> for flood
\par /flsp will send a message in spanish.
\par \cf0\lang1034\f2 
\par \f3 ie: /fl DaFlooder
\par \f2 
\par \cf2\lang3082\strike\f3 << Back to How they Work\cf3\strike0\{linkID=%50\}\cf0\lang1034\f2 
\par \cf2\lang3082\strike\f3 << Back to Main\cf3\strike0\{linkID=%10\}\cf0\lang1034\f2 
\par \cf4\lang1033\b0\f1 
\par \b 
\par 
\par 
\par \cf1\lang3082\f0\fs32 
\par }
330
Scribble330
/khs
/khs



Writing


/khs
FALSE
19
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil\fcharset0 Arial;}{\f1\fnil Arial;}{\f2\fswiss Arial;}{\f3\fswiss\fcharset0 Arial;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue128;\red128\green0\blue0;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\lang3082\b\fs8 
\par \cf2\fs32 /khs <nick>
\par /khssp <nick>\cf1 
\par \fs8 
\par \cf3\lang1033\b0\f1\fs20\{keepn\}\cf4 
\par \cf1\lang3082\b\f0\fs8 
\par \cf4\fs20 Will isue a kill on the given <nick> for harassment
\par /hssp will send a message in spanish.
\par \cf0\lang1034\f2 
\par \f3 ie: /hs DaAbuser\f2 
\par 
\par \cf2\lang3082\strike\f3 << Back to How they Work\cf3\strike0\{linkID=%50\}\cf0\lang1034\f2 
\par \cf2\lang3082\strike\f3 << Back to Main\cf3\strike0\{linkID=%10\}\cf0\lang1034\f2 
\par \cf4\lang1033\b0\f1 
\par \b 
\par \cf1\lang3082\f0\fs32 
\par }
340
Scribble340
/kms
/kms



Writing


/kms
FALSE
20
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil\fcharset0 Arial;}{\f1\fnil Arial;}{\f2\fswiss Arial;}{\f3\fswiss\fcharset0 Arial;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue128;\red128\green0\blue0;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\lang3082\b\fs8 
\par \cf2\fs32 /kms <nick>
\par /kmssp <nick>\cf1 
\par \fs8 
\par \cf3\lang1033\b0\f1\fs20\{keepn\}\cf4 
\par \cf1\lang3082\b\f0\fs8 
\par \cf4\fs20 Will isue a kill on the given <nick> for mass invites
\par /mssp will send a message in spanish.
\par \cf0\lang1034\f2 
\par \f3 ie: /kms DaInviter\f2 
\par 
\par \cf2\lang3082\strike\f3 << Back to How they Work\cf3\strike0\{linkID=%50\}\cf0\lang1034\f2 
\par \cf2\lang3082\strike\f3 << Back to Main\cf3\strike0\{linkID=%10\}\cf0\lang1034\f2 
\par \cf4\lang1033\b0\f1 
\par \b 
\par 
\par 
\par }
350
Scribble350
/globops
/globops



Writing


/globops
FALSE
16
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil\fcharset0 Arial;}{\f1\fnil Arial;}{\f2\fswiss Arial;}{\f3\fswiss\fcharset0 Arial;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue128;\red0\green0\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\lang3082\b\fs8 
\par \cf2\fs32 /globops <text>\cf3\lang1033\b0\f1\fs20 
\par \cf1\lang3082\b\f0\fs8 
\par \cf4\lang1033\b0\f1\fs20\{keepn\}\cf3\lang3082\f0 
\par \cf1\b\fs8 
\par \cf3\fs20 Will send a Globops\lang1033\f1 
\par \cf0\lang1034\f2 
\par \f3 ie: /globops DaAbuser is looking for the pass of DaAbuser2 He admitted he gave his pass to a friend, he will csop shop\f2 
\par 
\par \cf2\lang3082\strike\f3 << Back to How they Work\cf4\strike0\{linkID=%50\}\cf0\lang1034\f2 
\par \cf2\lang3082\strike\f3 << Back to Main\cf4\strike0\{linkID=%10\}\cf0\lang1034\f2 
\par \cf3\lang1033\b0\f1 
\par \b 
\par }
360
Scribble360
/infected
/infected



Writing


/infected
FALSE
18
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil\fcharset0 Arial;}{\f1\fnil Arial;}{\f2\fswiss Arial;}{\f3\fswiss\fcharset0 Arial;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue128;\red128\green0\blue0;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\lang3082\b\fs8 
\par \cf2\fs32 /infected <nick>
\par \cf1\fs8 
\par \cf3\lang1033\b0\f1\fs20\{keepn\}\cf4 
\par \cf1\lang3082\b\f0\fs8 
\par \cf4\fs20 Will ban from the current channel and issue a KILL on the given <nick> with a reason that includes the virus name (that you have to enter in a box that oppens).
\par 
\par ie: /infected NotNow
\par \cf0\lang1034\f2 
\par \cf2\lang3082\strike\f3 << Back to How they Work\cf3\strike0\{linkID=%50\}\cf0\lang1034\f2 
\par \cf2\lang3082\strike\f3 << Back to Main\cf3\strike0\{linkID=%10\}\cf0\lang1034\f2 
\par \cf4\lang1033\b0\f1 
\par \b 
\par \cf1\lang3082\f0\fs32 
\par 
\par }
370
Scribble370
/infectado
/infectado



Writing


/infectado
FALSE
19
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil\fcharset0 Arial;}{\f1\fnil Arial;}{\f2\fswiss Arial;}{\f3\fswiss\fcharset0 Arial;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue128;\red128\green0\blue0;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\lang3082\b\fs8 
\par \cf2\fs32 /infectado <nick>
\par \cf1\fs8 
\par \cf3\lang1033\b0\f1\fs20\{keepn\}\cf4 
\par \cf1\lang3082\b\f0\fs8 
\par \cf4\fs20 Will ban from the current channel and issue a KILL on the given <nick> with a reason that includes the virus name (that you have to enter in a box that oppens). Msg is in spanish.
\par 
\par ie: /infectado EresFeo
\par \cf0\lang1034\f2 
\par \cf2\lang3082\strike\f3 << Back to How they Work\cf3\strike0\{linkID=%50\}\cf0\lang1034\f2 
\par \cf2\lang3082\strike\f3 << Back to Main\cf3\strike0\{linkID=%10\}\cf0\lang1034\f2 
\par \cf4\lang1033\b0\f1 
\par \b 
\par \cf1\lang3082\f0\fs32 
\par 
\par 
\par }
380
Scribble380
/locops
/locops



Writing


/locops
FALSE
17
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil\fcharset0 Arial;}{\f1\fnil Arial;}{\f2\fswiss Arial;}{\f3\fswiss\fcharset0 Arial;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue128;\red0\green0\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\lang3082\b\fs8 
\par \cf2\fs32 /locops <text>\cf3\lang1033\b0\f1\fs20 
\par \cf1\lang3082\b\f0\fs8 
\par \cf4\lang1033\b0\f1\fs20\{keepn\}\cf3 
\par \cf1\lang3082\b\f0\fs8 
\par \cf3\fs20 Will send a Local Operators Notice
\par \cf0\lang1034\f2 
\par \f3 ie: /locops Heya friends :)\f2 
\par 
\par \cf2\lang3082\strike\f3 << Back to How they Work\cf4\strike0\{linkID=%50\}\cf0\lang1034\f2 
\par \cf2\lang3082\strike\f3 << Back to Main\cf4\strike0\{linkID=%10\}\cf0\lang1034\f2 
\par \cf3\lang1033\b0\f1 
\par \b 
\par 
\par }
390
Scribble390
/report
/report



Writing


/report
FALSE
18
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil\fcharset0 Arial;}{\f1\fnil Arial;}{\f2\fswiss Arial;}{\f3\fswiss\fcharset0 Arial;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue128;\red128\green0\blue0;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\lang3082\b\fs8 
\par \cf2\fs32 /report
\par \cf1\fs8 
\par \cf3\lang1033\b0\f1\fs20\{keepn\}\cf4 
\par \cf1\lang3082\b\f0\fs8 
\par \cf4\fs20 Will send an email to reports@dal.net
\par \cf0\lang1034\f2 
\par \f3 ie: /report\f2 
\par 
\par \cf2\lang3082\strike\f3 << Back to How they Work\cf3\strike0\{linkID=%50\}\cf0\lang1034\f2 
\par \cf2\lang3082\strike\f3 << Back to Main\cf3\strike0\{linkID=%10\}\cf0\lang1034\f2 
\par \cf4\lang1033\b0\f1 
\par \b 
\par \cf1\lang3082\f0\fs32 
\par \cf0\lang1034\f2\fs20 
\par }
400
Scribble400
/saopme
/saopme



Writing


/saopme
FALSE
16
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil\fcharset0 Arial;}{\f1\fnil Arial;}{\f2\fswiss Arial;}{\f3\fswiss\fcharset0 Arial;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue128;\red0\green0\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\lang3082\b\fs8 
\par \cf2\fs32 /saopme\cf3\lang1033\b0\f1\fs20 
\par \cf1\lang3082\b\f0\fs8 
\par \cf4\lang1033\b0\f1\fs20\{keepn\}\cf3 
\par \cf1\lang3082\b\f0\fs8 
\par \cf3\fs20 Will op you in the current channel using SAMODE
\par Just like /samode #CurrentChannel +o YourNick
\par \cf0\lang1034\f2 
\par \f3 ie: /saopme\f2 
\par 
\par \cf2\lang3082\strike\f3 << Back to How they Work\cf4\strike0\{linkID=%50\}\cf0\lang1034\f2 
\par \cf2\lang3082\strike\f3 << Back to Main\cf4\strike0\{linkID=%10\}\cf0\lang1034\f2 
\par \cf3\lang1033\b0\f1 
\par }
410
Scribble410
/setos
/setos



Writing


/setos
FALSE
15
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil\fcharset0 Arial;}{\f1\fnil Arial;}{\f2\fswiss\fcharset0 Arial;}{\f3\fswiss Arial;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue128;\red0\green0\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\lang3082\b\fs8 
\par \cf2\fs32 /setos <servicename>\cf3\lang1033\b0\f1\fs20 
\par \cf1\lang3082\b\f0\fs8 
\par \cf4\lang1033\b0\f1\fs20\{keepn\}\cf3 
\par \cf1\lang3082\b\f0\fs8 
\par \cf3\fs20 Will change the service used for all akills
\par 
\par \cf0\lang1034\f2 ie: /setos operserv2\f3 
\par 
\par \cf2\lang3082\strike\f2 << Back to How they Work\cf4\strike0\{linkID=%50\}\cf0\lang1034\f3 
\par \cf2\lang3082\strike\f2 << Back to Main\cf4\strike0\{linkID=%10\}\cf0\lang1034\f3 
\par \cf3\lang1033\b0\f1 
\par }
420
Scribble420
/snotice
/snotice



Writing


/snotice
FALSE
19
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil\fcharset0 Arial;}{\f1\fnil Arial;}{\f2\fswiss Arial;}{\f3\fswiss\fcharset0 Arial;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue128;\red128\green0\blue0;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\lang3082\b\fs8 
\par \cf2\fs32 /snotice <text>
\par \cf1\fs8 
\par \cf3\lang1033\b0\f1\fs20\{keepn\}\cf4 
\par \cf1\lang3082\b\f0\fs8 
\par \cf4\fs20 Will send a server notice, in the form of:
\par \tab /notice $current.server [Server Notice] <text> [Please do not respond]\cf0\lang1034\f2 
\par 
\par \f3 ie: /snotice This server is going down for a quick reboot\f2 
\par 
\par \cf2\lang3082\strike\f3 << Back to How they Work\cf3\strike0\{linkID=%50\}\cf0\lang1034\f2 
\par \cf2\lang3082\strike\f3 << Back to Main\cf3\strike0\{linkID=%10\}\cf0\lang1034\f2 
\par \cf4\lang1033\b0\f1 
\par \b 
\par \cf1\lang3082\f0\fs32 
\par 
\par }
430
Scribble430
/sping
/sping



Writing


/sping
FALSE
19
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil\fcharset0 Arial;}{\f1\fnil Arial;}{\f2\fswiss Arial;}{\f3\fswiss\fcharset0 Arial;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue128;\red128\green0\blue0;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\lang3082\b\fs8 
\par \cf2\fs32 /sping <server>
\par \cf1\fs8 
\par \cf3\lang1033\b0\f1\fs20\{keepn\}\cf4 
\par \cf1\lang3082\b\f0\fs8 
\par \cf4\fs20 Will do a server ping to the given <sever>.
\par NOTE: you have to introduce the FULL server name.
\par \cf0\lang1034\f2 
\par \f3 ie: /sping sodre.nj.us.dal.net
\par \f2 
\par \cf2\lang3082\strike\f3 << Back to How they Work\cf3\strike0\{linkID=%50\}\cf0\lang1034\f2 
\par \cf2\lang3082\strike\f3 << Back to Main\cf3\strike0\{linkID=%10\}\cf0\lang1034\f2 
\par \cf4\lang1033\b0\f1 
\par \b 
\par \cf1\lang3082\f0\fs32 
\par 
\par }
440
Scribble440
/statsl
/statsl



Writing


/statsl
FALSE
19
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil\fcharset0 Arial;}{\f1\fnil Arial;}{\f2\fswiss Arial;}{\f3\fswiss\fcharset0 Arial;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue128;\red128\green0\blue0;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\lang3082\b\fs8 
\par \cf2\fs32 /statsl <server>
\par \cf1\fs8 
\par \cf3\lang1033\b0\f1\fs20\{keepn\}\cf4 
\par \cf1\lang3082\b\f0\fs8 
\par \cf4\fs20 Will do a /STATS L on the given server and report the results in a Window named StatsL.
\par \cf0\lang1034\f2 
\par \f3 ie: /statsl sodre.*
\par \f2 
\par \cf2\lang3082\strike\f3 << Back to How they Work\cf3\strike0\{linkID=%50\}\cf0\lang1034\f2 
\par \cf2\lang3082\strike\f3 << Back to Main\cf3\strike0\{linkID=%10\}\cf0\lang1034\f2 
\par \cf4\lang1033\b0\f1 
\par \b 
\par \cf1\lang3082\f0\fs32 
\par 
\par 
\par }
450
Scribble450
/statsl2
/statsl2



Writing


/statsl2
FALSE
22
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil\fcharset0 Arial;}{\f1\fnil Arial;}{\f2\fswiss Arial;}{\f3\fswiss\fcharset0 Arial;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue128;\red128\green0\blue0;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\lang3082\b\fs8 
\par \cf2\fs32 /statsl2 <server>
\par \cf1\fs8 
\par \cf3\lang1033\b0\f1\fs20\{keepn\}\cf4 
\par \cf1\lang3082\b\f0\fs8 
\par \cf4\fs20 Will do a /STATS L on the given server and report the results in a GUI Window.
\par 
\par \pard\qc\cf3\{bmc statsl2.bmp\}\cf4 
\par \pard\cf0\lang1034\f2 
\par \f3 ie: /statsl2 sodre.*
\par \f2 
\par \cf2\lang3082\strike\f3 << Back to How they Work\cf3\strike0\{linkID=%50\}\cf0\lang1034\f2 
\par \cf2\lang3082\strike\f3 << Back to Main\cf3\strike0\{linkID=%10\}\cf0\lang1034\f2 
\par \cf4\lang1033\b0\f1 
\par \b 
\par \cf1\lang3082\f0\fs32 
\par 
\par 
\par 
\par }
460
Scribble460
/uauth
/uauth



Writing


/uauth
FALSE
20
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil\fcharset0 Arial;}{\f1\fnil Arial;}{\f2\fswiss Arial;}{\f3\fswiss\fcharset0 Arial;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue128;\red128\green0\blue0;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\lang3082\b\fs8 
\par \cf2\fs32 /uauth
\par \cf1\fs8 
\par \cf3\lang1033\b0\f1\fs20\{keepn\}\cf4 
\par \cf1\lang3082\b\f0\fs8 
\par \cf4\fs20 Will quickly get an auth code to log into inspiration.*
\par \cf0\lang1034\f2 
\par \f3 ie: /uauth
\par \f2 
\par \cf2\lang3082\strike\f3 << Back to How they Work\cf3\strike0\{linkID=%50\}\cf0\lang1034\f2 
\par \cf2\lang3082\strike\f3 << Back to Main\cf3\strike0\{linkID=%10\}\cf0\lang1034\f2 
\par \cf4\lang1033\b0\f1 
\par \b 
\par \cf1\lang3082\f0\fs32 
\par 
\par 
\par 
\par }
470
Scribble470
/unload.ircoptools
/unload.ircoptools



Writing


/unload.ircoptools
FALSE
15
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss Arial;}{\f1\fnil\fcharset0 Arial;}{\f2\fnil Arial;}{\f3\fswiss\fcharset0 Arial;}}
{\colortbl ;\red0\green128\blue128;\red0\green0\blue128;\red128\green0\blue0;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\lang1034\b\f0\fs8 
\par \cf2\lang3082\f1\fs32 /unload.ircoptools\lang1033\b0\f2\fs20 
\par \cf1\lang1034\b\f0\fs8 
\par \cf3\lang1033\b0\f2\fs20\{keepn\}\cf4 
\par \cf1\lang1034\b\f0\fs8 
\par \cf4\lang3082\f1\fs20 Essential alias to close IRCop tools properly.
\par \cf0\lang1034\f0 
\par \f3 ie: /unload.ircoptools
\par \f0 
\par \cf2\lang3082\strike\f3 << Back to How they Work\cf3\strike0\{linkID=%50\}\cf0\lang1034\f0 
\par \cf2\lang3082\strike\f3 << Back to Main\cf3\strike0\{linkID=%10\}\cf0\lang1034\f0 
\par \cf4\lang1033\f2 
\par }
480
Scribble480
/wm
/wm



Writing


/wm
FALSE
18
{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fnil\fcharset0 Arial;}{\f1\fnil Arial;}{\f2\fswiss\fcharset0 Arial;}{\f3\fswiss Arial;}}
{\colortbl ;\red0\green0\blue255;\red0\green0\blue128;\red0\green0\blue0;\red128\green0\blue0;}
\viewkind4\uc1\pard\cf1\lang3082\b\fs8 
\par \cf2\fs32 /wm <nick>\cf3\lang1033\b0\f1\fs20 
\par \cf1\lang3082\b\f0\fs8 
\par \cf4\lang1033\b0\f1\fs20\{keepn\}\cf3 
\par \cf1\lang3082\b\f0\fs8 
\par \cf3\fs20 Will send a warning message to "nick" concerning password cracking
\par You can configure message with the \cf2\strike /configure\cf4\strike0\{linkID=%280\}\cf3  option
\par 
\par \cf0\lang1034\f2 ie: /wm Puckie
\par 
\par \cf2\lang3082\strike << Back to How they Work\cf4\strike0\{linkID=%50\}\cf0\lang1034\f3 
\par \cf2\lang3082\strike\f2 << Back to Main\cf4\strike0\{linkID=%10\}\cf0\lang1034\f3 
\par \cf3\lang3082\f0 
\par \cf1\lang1034\fs32 
\par \cf3\lang1033\b0\f1\fs20 
\par }
490
Scribble490
Thanks
Thanks


:000060
Writing



FALSE
16
{\rtf1\ansi\ansicpg1252\deff0\deflang1034{\fonttbl{\f0\fswiss Arial;}{\f1\fswiss\fcharset0 Arial;}}
{\colortbl ;\red0\green128\blue128;\red0\green0\blue128;\red128\green0\blue0;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs8 
\par \pard\qc\cf2\fs40 Thanks\cf1 
\par \pard\fs8 
\par \cf3\b0\fs20\{keepn\}\cf4 
\par \cf1\b\fs8 
\par \cf0\fs20 Many thanks to:
\par 
\par \pard\fi-120\li660\cf4\f1\'b7 alaskaguy (for letting me use his windowfilter.mrc)
\par \cf0\lang3082\'b7 everybody that helped test this tools
\par . everybody that contributed with ideas\lang1034\f0 
\par \pard 
\par \cf2\lang3082\strike\f1 << Back to Main\cf3\strike0\{linkID=%10\}\cf0\lang1034\f0 
\par 
\par }
500
Scribble500
About the author
Aboput the author


:000070
Writing


about the author cae caespock
FALSE
20
{\rtf1\ansi\ansicpg1252\deff0\deflang1034{\fonttbl{\f0\fswiss Arial;}{\f1\fswiss\fcharset0 Arial;}}
{\colortbl ;\red0\green128\blue128;\red0\green0\blue128;\red0\green0\blue255;\red128\green0\blue0;\red0\green0\blue0;}
\viewkind4\uc1\pard\cf1\b\f0\fs8 
\par \pard\qc\cf2\fs40 About the author\cf3\fs32 
\par \pard\cf1\fs8 
\par \cf4\b0\fs20\{keepn\}\cf5 
\par \cf1\b\fs8 
\par \cf4\b0\fs20\{bm\lang1033\f1 l\lang1034\f0 t CaePic.jpg\}\cf5\b\f1 Hello, my name is Carlos An\'edbarro, but everybody calls me CAE.
\par I was born in La Paz Bolivia, the highest capital city of the world at 3670 meters over the sea level.
\par I'm a Systems Engineer and a fanatic of all refered to computing, comunication and Internet.\f0 
\par For more information, visit my personal web ....
\par \lang1033\f1\tab\cf4\b0\{html=<a href="http://www.caespock.org/" target=\rdblquote _blank\rdblquote >http://www.caespock.org/</a>\}\cf5\lang1034\b\f0 
\par \tab 
\par or find me online .....
\par \pard\li680 I'm always \lang1033\f1 chatting in \cf4\b0\{html=<a href="http://www.dal.net/" target="_blank">\cf2\b DALnet\cf4\b0 </a>\}\cf5\lang1034\f0 ,\b  my nick is CaeSpock\lang1033\f1  or Cae\lang1034\f0 .
\par \pard\cf0 
\par 
\par \cf2\lang3082\strike\f1 << Back to Main\cf4\strike0\{linkID=%10\}\cf0\lang1034\f0 
\par \pard\li680\cf5 
\par }
1
main="",(60,68,771,785),0,(210,210,210),(190,194,241),0
0
0
0
6
*InternetLink
16711680
Courier New
0
10
1
....
0
0
0
0
0
0
*ParagraphTitle
0
Arial
0
11
1
B...
0
0
0
0
0
0
*PopupLink
0
Arial
0
8
1
....
0
0
0
0
0
0
*PopupTopicTitle
16711680
Arial
0
10
1
B...
0
0
0
0
0
0
*TopicText
0
Arial
0
10
1
....
0
0
0
0
0
0
*TopicTitle
16711680
Arial
0
16
1
B...
0
0
0
0
0
0
