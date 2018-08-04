; argh-amp
; by Andy Dufilie
; Translated for CaeScript
; Actualizado el 2005.08.08
; http://pages.cthome.net/pdufilie/

on *:load:aamp.init 1
on *:start:{
  ; *CAE* if (!%aamp.nocheck) aampcheck 1
  if (%aamp.startup) aamp
}
alias aampversion {
  var %v = 2005.06.02
  if ($1) return %v
  return argh-amp $+([,%v,])
}
; for mIRC 6.03
alias -l floor {
  if ($1 < 0) && (. isin $1) return $calc($int($1) - 1)
  return $int($1)
}
alias aamp.init {
  %aamp.switchbar = 1 ; *CAE*
  %aamp.loop = 1 ; *CAE*
  ; %aamp.shuffle = 1 ; *CAE*
  if ($version < 6.03) {
    echo $colour(i) -a *** Necesitas mIRC v6.03 o superior para usar argh-amp - http://www.mirc.com/get.html
    unload -rs " $+ $script $+ "
    return
  }
  if ($isdir($skn)) {
    echo $colour(i) -a *** argh-amp no puede continuar debido a que un directorio llamado $skn existe. Debes remover o renombrar ese directorio.
    unload -rs $+(",$script,")
    return
  }
  if (!$isfile($skn)) {
    close -@ @mp3-player.temp
    window -hl @mp3-player.temp
    ;0 Default
    aline @mp3-player.temp 0 0 350 19	3 3 10 13	320 3 13 13	334 3 13 13	125 3 14 13	139 3 14 13	153 3 14 13	167 3 14 13	181 3 14 13	197 3 14 13	14 3 108 13	5 38 62 25	69 41 55 19	126 41 45 19	287 7 30 5 5 13	214 7 70 5 5 13	 	   Playlist	verdana	9	lucida console	9	verdana	18	verdana	9	tahoma	10	0	0	1	0	1	1	1	12632256	16777215	14737632	8421504	0	0	8421504	16777215	14737632	12632256	12632256	0	0	12632256	0	0	0	12632256	12632256	9474192	0	4210752	12632256	4144959	12632256
    ;1-10
    aline @mp3-player.temp 0 0 200 98	2 2 196 15	173 4 11 11	185 4 11 11	5 74 27 19	35 74 27 19	65 74 27 19	95 74 27 19	125 74 27 19	158 74 27 19	5 20 180 19	5 42 56 19	64 42 62 19	129 42 56 19	189 20 5 73 7 20	5 65 180 5 29 7	tahoma	11	tahoma	11	tahoma	11	tahoma	11	 argh-amp	1	1	2	1	2105376	2105376	11316396	11316396	11316396	4210752	9737364	13156030	4737096	5255184	3810842	14211288	13684944	13158600	0	0	0	11316396	1
    aline @mp3-player.temp 0 0 315 84	2 2 311 15	287 4 11 11	300 4 11 11	6 58 25 20	36 58 25 20	66 58 25 20	96 58 25 20	126 58 25 20	160 58 25 20	6 21 243 20	253 21 43 20	194 58 55 20	253 58 43 20	301 21 7 57 11 11	6 46 290 7 50 11	   a r g h - a m p	   P l a y l i s t	tahoma	11	tahoma	11	tahoma	11	tahoma	11	tahoma	11	0	0	1	2	1	1	1	10920096	0	13156030	9737364	0	8550520	7564910	0	1315860	10920096	10920096	0	0	13158600	0	0	0	10920096	13158600	9868950	0	4210752	11644333	5132882	10920096
    aline @mp3-player.temp 0 0 315 84	2 2 311 15	287 4 11 11	300 4 11 11	6 58 25 20	36 58 25 20	66 58 25 20	96 58 25 20	126 58 25 20	160 58 25 20	6 21 243 20	253 21 43 20	194 58 55 20	253 58 43 20	301 21 7 57 11 11	6 46 290 7 50 11	   a r g h - a m p	   P l a y l i s t	tahoma	11	tahoma	11	tahoma	11	tahoma	11	tahoma	11	0	0	1	2	1	1	1	9602180	0	11838114	9866380	0	7232604	6246994	0	1315860	9602180	9602180	0	0	13158600	0	0	0	9602180	13158600	9868950	0	4210752	10787482	5989733	9602180
    aline @mp3-player.temp 0 0 200 98	2 2 196 15	173 4 11 11	185 4 11 11	5 74 27 19	35 74 27 19	65 74 27 19	95 74 27 19	125 74 27 19	158 74 27 19	5 20 180 19	5 42 56 19	64 42 62 19	129 42 56 19	189 20 5 73 7 20	5 65 180 5 29 7	 argh-amp	 Playlist	tahoma	11	tahoma	11	tahoma	11	tahoma	11	tahoma	11	1	1	1	0	1	1	1	10920096	11842740	11184810	7895160	5789784	8550520	7564910	0	1315860	10920096	10920096	0	0	13025472	0	0	0	11578026	13025472	9736336	0	4210752	11578026	5199189	11578026
    aline @mp3-player.temp 0 0 200 98	2 2 196 15	173 4 11 11	185 4 11 11	5 74 27 19	35 74 27 19	65 74 27 19	95 74 27 19	125 74 27 19	158 74 27 19	5 20 180 19	5 42 56 19	64 42 62 19	129 42 56 19	189 20 5 73 7 20	5 65 180 5 29 7	tahoma	11	tahoma	11	tahoma	11	tahoma	11	 argh-amp	1	1	0	1	0	0	12632256	12632256	12105912	7368816	9474192	13684944	14737632	10000536	11053224	0	0	12632256	0	0	0	12632256	1
    aline @mp3-player.temp 0 0 200 98	2 2 196 15	173 4 11 11	185 4 11 11	5 74 27 19	35 74 27 19	65 74 27 19	95 74 27 19	125 74 27 19	158 74 27 19	5 20 180 19	5 42 56 19	64 42 62 19	129 42 56 19	189 20 5 73 7 20	5 65 180 5 29 7	tahoma	11	tahoma	11	tahoma	11	tahoma	11	 argh-amp	1	1	2	1	0	0	14606046	14606046	14606046	10780780	14606046	16777215	10780780	6565888	6697728	16777215	14474460	16777215	0	0	0	14474460	1
    aline @mp3-player.temp 0 0 200 98	2 2 196 15	173 4 11 11	185 4 11 11	5 74 27 19	35 74 27 19	65 74 27 19	95 74 27 19	125 74 27 19	158 74 27 19	5 20 180 19	5 42 56 19	64 42 62 19	129 42 56 19	189 20 5 73 7 20	5 65 180 5 29 7	 argh-amp	 Playlist	tahoma	11	tahoma	11	tahoma	11	tahoma	11	tahoma	11	1	1	1	3	0	1	1	10776394	13743531	13743531	8142884	8142884	8142884	8142884	16777215	12632256	10776394	10776394	0	0	2236191	16777215	16777215	16777215	10776394	2236191	5855063	16777215	12566463	7885883	5855063	10776394
    aline @mp3-player.temp 0 0 189 86	2 2 185 15	4 4 11 11	174 4 11 11	4 63 27 19	33 63 27 19	62 63 27 19	91 63 27 19	120 63 27 19	149 63 27 19	4 19 172 14	4 35 54 17	60 35 60 17	122 35 54 17	180 19 3 63 7 15	4 56 172 3 29 7	 argh-amp	 Playlist	tahoma	11	lucida console	10	lucida console	10	lucida console	10	lucida console	10	1	1	1	3	0	1	1	12632256	16777215	16777215	0	0	8142884	8142884	16777215	12632256	12632256	12632256	0	0	12632256	8388608	8388608	8388608	12632256	12632256	11571344	8388608	12599360	12632256	4144959	12632256
    aline @mp3-player.temp 0 0 188 61	1 1 186 9	170 1 9 9	178 1 9 9	3 45 14 13	19 45 14 13	35 45 14 13	51 45 14 13	67 45 14 13	83 45 14 13	3 13 182 15	3 30 38 13	194 58 55 20	253 58 43 20	101 50 83 1 5 10	43 30 142 13 5 9	 	   Playlist	tahoma	11	small fonts	9	small fonts	9	tahoma	11	small fonts	9	0	0	1	3	0	1	1	5777152	16777215	16777215	16777215	16777215	13223369	13223369	0	1315860	5777152	8478015	16777215	16777215	5777152	16777215	16777215	16777215	16777215	5777152	8478015	16777215	12566463	5777152	8478015	5777152
    aline @mp3-player.temp 0 0 46 159	2 2 42 15	189 233 11 11	201 233 11 11	3 19 19 20	16 41 26 20	16 62 26 20	16 83 26 20	24 19 19 20	16 104 26 20	136 175 46 15	4 126 38 17	91 201 55 19	148 201 45 19	4 147 38 5 4 11	6 41 6 83 10 5	 Tallamp	   Playlist	verdana	10	terminal	9	verdana	9	verdana	9	terminal	9	1	0	1	3	0	0	1	4534820	5587508	5587508	5587508	5587508	5587508	5587508	16777215	12369084	4534820	4534820	12369084	16777215	4534820	16777215	16777215	16777215	12369084	4534820	7562586	16777215	12566463	4534820	7562586	4534820
    ;11-20
    aline @mp3-player.temp 0 0 315 84	2 2 311 15	287 4 11 11	300 4 11 11	6 58 25 20	36 58 25 20	66 58 25 20	96 58 25 20	126 58 25 20	160 58 25 20	6 21 243 20	253 21 43 20	194 58 55 20	253 58 43 20	301 21 7 57 11 11	6 46 290 7 50 11	   a r g h - a m p	   P l a y l i s t	tahoma	11	tahoma	11	tahoma	11	tahoma	11	tahoma	11	0	0	1	3	1	1	1	12766159	16777215	12766159	7697781	3552822	9139557	10325379	14739945	14739945	12766159	12766159	0	0	14739945	0	0	0	12766159	14739945	11641239	0	5778954	13424087	10325379	12766159
    aline @mp3-player.temp 0 0 315 84	2 2 311 15	287 4 11 11	300 4 11 11	6 58 25 20	36 58 25 20	66 58 25 20	96 58 25 20	126 58 25 20	160 58 25 20	6 21 243 20	253 21 43 20	194 58 55 20	253 58 43 20	301 21 7 57 11 11	6 46 290 7 50 11	   a r g h - a m p	   P l a y l i s t	tahoma	11	tahoma	11	tahoma	11	tahoma	11	tahoma	11	0	0	1	3	0	1	1	6325145	0	0	0	0	3695744	3695744	0	3158064	8036505	5802112	0	0	9741222	0	0	0	8036505	8032377	5796952	0	3158064	9741222	7900304	8036505
    aline @mp3-player.temp 0 0 315 84	2 2 311 15	287 4 11 11	300 4 11 11	6 58 25 20	36 58 25 20	66 58 25 20	96 58 25 20	126 58 25 20	160 58 25 20	6 21 243 20	253 21 43 20	194 58 55 20	253 58 43 20	301 21 7 57 11 11	6 46 290 7 50 11	   a r g h - a m p	   P l a y l i s t	tahoma	11	tahoma	11	tahoma	11	tahoma	11	tahoma	11	0	0	1	3	0	1	1	7629917	0	0	0	0	4208681	4208681	15395562	13421772	13421772	10066329	0	0	5787713	14007976	13421772	13421772	13421772	5787713	4208681	13421772	14007976	13421772	10066329	13421772
    aline @mp3-player.temp 0 0 200 98	2 2 196 15	173 4 11 11	185 4 11 11	5 74 27 19	35 74 27 19	65 74 27 19	95 74 27 19	125 74 27 19	158 74 27 19	5 20 180 19	5 42 56 19	64 42 62 19	129 42 56 19	189 20 5 73 7 20	5 65 180 5 29 7	 argh-amp	 Playlist	tahoma	11	tahoma	11	tahoma	11	tahoma	11	tahoma	11	1	1	1	3	0	1	1	7629917	0	0	0	0	4208681	4208681	15395562	13421772	13421772	10066329	0	0	5787713	14007976	13421772	13421772	13421772	5787713	4208681	13421772	14007976	13421772	10066329	13421772
    aline @mp3-player.temp 0 0 189 85	3 3 183 13	4 4 11 11	174 4 11 11	4 62 27 19	33 62 27 19	62 62 27 19	91 62 27 19	120 62 27 19	149 62 27 19	3 17 174 16	3 33 56 19	59 33 62 19	121 33 56 19	180 17 3 65 7 15	3 55 174 3 29 7	 argh-amp	 Playlist	terminal	9	terminal	9	terminal	11	terminal	9	terminal	9	1	1	1	1	0	1	1	5921370	0	5263440	5263440	0	1973790	4605510	10526880	9539985	3289650	3289650	7895160	11184810	3289650	10526880	10526880	10526880	7895160	3289650	5066061	10526880	14737632	5000268	11776947	3289650
    aline @mp3-player.temp 0 0 193 102	3 3 187 13	166 4 11 11	178 4 11 11	5 77 26 20	32 77 26 20	59 77 26 20	86 77 26 20	113 77 26 20	145 77 26 20	5 19 183 17	5 38 62 25	69 41 55 19	126 41 45 19	177 41 8 56 14 6	5 65 166 9 29 7	verdana	9	verdana	18	verdana	9	verdana	10	 argh-amp	0	1	1	0	1315860	0	11184810	12500670	5921370	11842740	5263440	5263440	10197915	1973790	4605510	12500670	9539985	3289650	12829635	11513775	12829635	11184810	1
    aline @mp3-player.temp 0 0 193 102	3 3 187 13	166 4 11 11	178 4 11 11	5 77 26 20	32 77 26 20	59 77 26 20	86 77 26 20	113 77 26 20	145 77 26 20	5 19 183 17	5 38 62 25	69 41 55 19	126 41 45 19	177 41 8 56 14 6	5 65 166 9 29 7	verdana	9	verdana	18	verdana	9	verdana	10	 argh-amp	0	1	0	1	9998	9998	23843	23843	23843	16384	20518	32050	32603	8968	16132	26548	32632	8192	28152	26548	32461	23843	1
    aline @mp3-player.temp 0 0 193 102	3 3 187 13	166 4 11 11	178 4 11 11	5 77 26 20	32 77 26 20	59 77 26 20	86 77 26 20	113 77 26 20	145 77 26 20	5 19 183 17	5 38 62 25	69 41 55 19	126 41 45 19	177 41 8 56 14 6	5 65 166 9 29 7	terminal	9	verdana	18	verdana	9	verdana	10	 boamp	0	1	0	1	10192740	10192740	5327160	5327160	5458491	854532	3682079	7562579	9008471	3288355	3946285	4819108	4290705	0	11114106	3172739	3172739	5327160	1
    aline @mp3-player.temp 0 0 350 19	3 3 10 13	320 3 13 13	334 3 13 13	125 3 14 13	139 3 14 13	153 3 14 13	167 3 14 13	181 3 14 13	197 3 14 13	14 3 108 13	5 38 62 25	69 41 55 19	126 41 45 19	287 7 30 5 5 13	214 7 70 5 5 13	 	   Playlist	verdana	9	lucida console	9	verdana	18	verdana	9	tahoma	10	0	0	1	0	1	1	1	12632256	16777215	14737632	8421504	0	0	8421504	16777215	14737632	12632256	12632256	0	0	12632256	0	0	0	12632256	12632256	9474192	0	4210752	12632256	4144959	12632256
    aline @mp3-player.temp 0 0 46 159	4 4 38 14	189 233 11 11	201 233 11 11	3 19 19 20	16 41 26 20	16 62 26 20	16 83 26 20	24 19 19 20	16 104 26 20	136 175 46 15	4 126 38 17	91 201 55 19	148 201 45 19	4 147 38 5 4 11	6 41 6 83 10 5	terminal	9	verdana	9	verdana	9	verdana	10	 tallamp	0	1	0	1	0	0	9211020	9211020	7895160	2631720	5263440	9211020	12500670	1973790	4605510	12500670	9539985	1315860	12829635	11513775	12829635	9211020	1
    ;end
    savebuf @mp3-player.temp $skn
    close -@ @mp3-player.temp
  }
  if (%aamp.skn !isnum) %aamp.skn = 1
  if (%aamp.dclickpl !isnum) %aamp.dclickpl = 1
  if (%aamp.displength !isnum) %aamp.displength = 1
  if (%aamp.dispdead !isnum) %aamp.dispdead = 1
  if (%aamp.cont !isnum) %aamp.cont = 1
  ; *CAE* if (%aamp.startup) || ($1) aamp
  if (%mp3player == 1) {
    if (%aamp.startup) || ($1) aamp
  }
  ;  close -@ @argh-amp loaded
  ;  window -k @argh-amp loaded -1 -1 777 444
  ;  var %e = echo @argh-amp loaded
  ;  %e Changes:
  ;  %e - Added LEFT & RIGHT arrow key shortcuts (for seeking 5 seconds)
  ;  %e - Added CTRL+C & CTRL+INSERT shortcut keys for copying skin to clipboard
  ;  %e - Added an auto-spam option with channel setting
  ;  %e - Stopped window from re-opening when changing skin
  ;  %e - Hold down CTRL to move the window as if EasyMove were enabled.
  ;  %e - New skin format for copying to clipboard -> skins are about 100 bytes smaller <- (old skins still work) !!!! :)
  ;  %e - Added Alt-Border mode 2 for skinning
  ;  %e - Added right-align mode for title text
  ;  %e 2003.01.29
  ;  %e - No longer compatible with mIRC 6.01
  ;  %e - New graphical playlist
  ;  %e - Added option to sort playlist by filename only
  ;  %e - Added Alt-Border mode 3
  ;  %e 2003.02.07
  ;  %e - Added separate color settings for playlist, including a separate color for the current mp3
  ;  %e - Sorting the playlist keeps the selection and current mp3
  ;  %e - Deleting and dragging playlist entries will now properly keep track of current mp3
  ;  %e 2003.02.09
  ;  %e - Added 's' shortcut key for loading a skin you have copied to the clipboard.
  ;  %e - Removed MDI support.
  ;  %e - The playlist now snaps to the player window.
  ;  %e 2003.02.23
  ;  %e - No longer compatible with mIRC 6.02.
  ;  %e - Added option to enable/disable playlist looping.
  ;  %e - Added options to save the playlist, load M3Us, and remove dead files.
  ;  %e - Added playlist CTRL+A shortcut key to select all lines.
  ;  %e 2003.03.10
  ;  %e - Added an option to add argh-amp to the mIRC switchbar instead of the Windows taskbar.
  ;  %e - Escape key now minimizes argh-amp properly.
  ;  %e - Shortcut keys that work in the main window now work in the playlist also.
  ;  %e 2003.03.10b - Fixed a bug with shortcut keys.
  ;  %e 2003.03.10c - Fixed a bug with next/prev buttons when the playlist was closed.
  ;  %e 2004.04.19
  ;  %e - Added additional shortcut keys for changing skins (U, I, -, +).  Certain keyboard layouts made it impossible to use '[' and ']' as intended.  Contact me if you have other keyboard problems.
  ;  %e - "Randomize playlist" now keeps the selection.
  ;  %e - Added an option to open the playlist on double click (available under the window menu).
  ;  %e - Added documentation for the /aamp.mod command.
  ;  %e - Worked around a bug in mIRC 6.14 that stopped the script from updating automatically.
  ;  %e 2004.04.24 - Added an option to automatically scroll to the current song in the playlist.
  ;  %e 2004.04.25
  ;  %e - Added an option to automatically scroll to and select the current song.
  ;  %e - Added the 'F' key to scroll to and select the current song in the playlist (works in both windows).
  ;  %e 2004.04.29
  ;  %e - Added options for displaying ID3 tags and song lengths in the playlist (both enabled by default).
  ;  %e - Added an option for indicating missing files with question marks in the playlist (disabled by default).
  ;  %e 2004.xx.xx
  ;  %e - Added an option to load extra file info immediately in the playlist (disabled by default).
  ;  %e - The playlist window is now activated (if it is open) when PGUP/PGDN/HOME/END are pressed in the player window.
  ;  %e - Added a shortcut key (A) to add the current song to an M3U (so you can keep a favorites.m3u and such).
  ;  %e 2005.04.24
  ;  %e - Added options to automatically find files which have moved since being added to a playlist (under auto-search options in the playlist menu).
  ;  %e 2005.06.02
  ;  %e - Fixed an error in the popup menu.
  ;  %e ================================
  ;  %e For help on making argh-amp skins, view the HTML readme.
  ;  %e Please report any bugs you find! -> http://pages.cthome.net/pdufilie/
  ;  %e ================================
  ;  %e Until I add an option to download new skins, you can see all the skins I have here:
  ;  %e http://pages.cthome.net/pdufilie/irc/aamp_skin_collection.zip
  ;  %e Before you copy it, back up your current .skn file if you've made any skins you want to save.
}
menu @argh-amp loaded {
  /aamp:aamp
}
;$base64(N,inbase,outbase,zeropad)
alias base64 {
  var %chars = 0123456789abcdefghijklmnopqrstuvwxyz@~ABCDEFGHIJKLMNOPQRSTUVWXYZ
  var %negative, %input = $1, %inbase = $2, %outbase = $3, %zeropad = $4
  if (%zeropad !isnum 1-) %zeropad = 1
  if (-* iswm %input) var %negative = -, %input = $mid(%input,2)
  var %base10 = 0, %pos = 1, %length = $len(%input), %digit, %output
  while (%pos <= %length) {
    %digit = $poscs(%chars,$mid(%input,%pos,1)) - 1
    %base10 = $calc(%inbase * %base10 + %digit)
    inc %pos
  }
  while (%base10 > 0) {
    %digit = %base10 % %outbase
    %output = $mid(%chars,$calc(1+%digit),1) $+ %output
    %base10 = $calc((%base10 - %digit) / %outbase)
  }
  while ($len(%output) < %zeropad) %output = 0 $+ %output
  return %negative $+ %output
}
alias -l skin.compress {
  if (	 !isin $1-) return $1-
  var %skin = $1-, %i = 1, %out = 4, %temp, %names
  ;16 coords, 2 text, 10 fonts, 7 options, 25 colors
  var %skin.coords = $gettok(%skin,1-16,9)
  var %skin.text = $gettok(%skin,17-18,9)
  var %skin.fonts = $gettok(%skin,19-28,9)
  var %skin.options = $gettok(%skin,29-35,9)
  var %skin.colors = $gettok(%skin,36-60,9)
  ; skin version %out = 4
  ; window 1 wwhh
  ; rect 2-14 xxyywwhh
  ; bar&knob 15-16 xxyywwhhwwhh
  while (%i <= 16) {
    tokenize 32 $gettok(%skin.coords,%i,9)
    if ($abs($1) > 4095) tokenize 32 4095 $2-
    if ($abs($2) > 4095) tokenize 32 $1 4095 $3-
    if ($abs($3) > 4095) tokenize 32 $1-2 4095 $4-
    if ($abs($4) > 4095) tokenize 32 $1-3 4095 $5-
    if (%i > 1) %out = $+(%out,$base64($1,10,64,2),$base64($2,10,64,2))
    %out = $+(%out,$base64($3,10,64,2),$base64($4,10,64,2))
    if (%i > 14) {
      if ($abs($5) > 4095) tokenize 32 $1-4 4095 $6
      if ($abs($6) > 4095) tokenize 32 $1-5 4095
      %out = $+(%out,$base64($5,10,64,2),$base64($6,10,64,2))
    }
    inc %i
  }
  ; 25 colors cccc
  %i = 1
  while (%i <= 25) {
    %out = %out $+ $base64($gettok(%skin.colors,%i,9),10,64,4)
    inc %i
  }
  ; 7 options (combine 9 bits -> 2 base64 digits) oo
  ; needed bits: 2 1 1 2 1 1 1
  tokenize 9 %skin.options
  %temp = $+($base64($1,10,2,2),$2,$3,$base64($4,10,2,2),$5,$6,$7)
  %out = %out $+ $base64(%temp,2,64,2)
  ; 5 font sizes ss
  %i = 2
  while (%i <= 10) {
    %temp = $gettok(%skin.fonts,%i,9)
    if ($abs(%temp) > 4095) %temp = 4095
    %out = %out $+ $base64(%temp,10,64,2)
    inc %i 2
  }
  ; 5 font name lengths l
  %i = 1
  while (%i <= 10) {
    %temp = $left($gettok(%skin.fonts,%i,9),63)
    %names = %names $+ %temp
    %out = %out $+ $base64($len(%temp),10,64)
    inc %i 2
  }
  ; 2 text lengths ll
  %i = 1
  while (%i <= 2) {
    %temp = $mid($gettok(%skin.text,%i,9),2,4095)
    %names = %names $+ %temp
    %out = %out $+ $base64($len(%temp),10,64,2)
    inc %i
  }
  ; append font names and text
  %out = %out $+ %names
  return $replace(%out,&,&amp;,$chr(160),&nbsp;)
}
;----------------------------
; bytes*number
;     1*1 = version, v
;     4*1 = window, wwhh
;    8*14 = rectangle, xxyywwhh
;    12*2 = bar&knob, xxyywwhhwwhh
;    4*25 = color, cccc
;     2*1 = 7 options, oo
;     2*5 = fontsize, ss
;     1*5 = lengths of font names, l
;     2*1 = lengths of text, ll
;       ? = font names
;       ? = text
;   total = 260+?
;----------------------------
alias -l skin.decompress {
  if (	 isin $1-) return $1-
  var %version = $left($1,1)
  ; skin version 1-3
  if (%version isnum 1-3) return $skin.decompress.1-3($1-)
  ; skin version 4
  if (%version != 4) return
  ; window 1 wwhh
  ; rect 2-14 xxyywwhh
  ; bar&knob 15-16 xxyywwhhwwhh
  var %skin = $replace($1-,&nbsp;, ,&amp;,&), %pos = 2, %i = 1, %j, %n, %w
  var %skin.coords, %skin.text, %skin.fonts, %skin.options, %skin.colors
  while (%i <= 16) {
    if (%i > 14) %n = 6
    elseif (%i == 1) %n = 2
    else %n = 4
    var %temp
    if (%i == 1) %temp = 0 0
    %j = 1
    while (%j <= %n) {
      if ($mid(%skin,%pos,1) == -) %w = 3
      else %w = 2
      %temp = %temp $base64($mid(%skin,%pos,%w),64,10)
      inc %pos %w
      inc %j
    }
    %skin.coords = $instok(%skin.coords,%temp,0,9)
    inc %i
  }
  ; 25 colors cccc
  %i = 1
  while (%i <= 25) {
    %skin.colors = $instok(%skin.colors,$base64($mid(%skin,%pos,4),64,10),0,9)
    inc %pos 4
    inc %i
  }
  ; 7 options (combine 9 bits -> 2 base64 digits) oo
  ; needed bits: 2 1 1 2 1 1 1
  %temp = $base64($mid(%skin,%pos,2),64,2,9)
  tokenize 32 $left(%temp,2) $mid(%temp,3,1) $mid(%temp,4,1) $mid(%temp,5,2) $mid(%temp,7,1) $mid(%temp,8,1) $mid(%temp,9,1)
  %skin.options = $+($base64($1,2,10),	,$2,	,$3,	,$base64($4,2,10),	,$5,	,$6,	,$7)
  inc %pos 2
  ; 5 font sizes ss
  %i = 1
  while (%i <= 5) {
    if ($mid(%skin,%pos,1) == -) %w = 3
    else %w = 2
    %skin.fonts = $instok(%skin.fonts,$base64($mid(%skin,%pos,%w),64,10),0,9)
    inc %pos %w
    inc %i
  }
  ; 5 font name lengths l
  ; 2 text lengths ll
  %temp =
  %i = 1
  %w = 1
  while (%i <= 7) {
    if (%i > 5) %w = 2
    %temp = %temp $base64($mid(%skin,%pos,%w),64,10)
    inc %pos %w
    inc %i
  }
  ; 5 font names
  ; 2 text labels
  tokenize 32 %temp
  %i = 1
  while (%i <= 7) {
    var %temp
    if ($1) %temp = $mid(%skin,%pos,$1)
    if (%i <= 5) %skin.fonts = $instok(%skin.fonts,%temp,$calc(2*%i -1),9)
    else %skin.text = $instok(%skin.text,$+( ,%temp),0,9)
    inc %pos $1
    tokenize 32 $2-
    inc %i
  }
  return $+(%skin.coords,	,%skin.text,	,%skin.fonts,	,%skin.options,	,%skin.colors)
}
alias -l skin.decompress.1-3 {
  if (	 isin $1-) return $1-
  var %version = $left($1,1)
  ; skin version 1-3
  if (%version !isnum 1-3) return
  ; window 1 wwhh
  ; rect 2-14 xxyywwhh
  ; bar&knob 15-16 xxyywwhhwwhh
  var %skin = $1-, %out = $mid($str(	 ,48),2), %pos = 2, %i = 1, %j, %n, %w
  while (%i < 17) {
    %j = 1
    if (%i > 14) %n = 6
    elseif (%i == 1) %n = 2
    else %n = 4
    var %temp = $iif(%i == 1,0 0)
    while (%j <= %n) {
      if ($mid(%skin,%pos,1) == -) %w = 3
      else %w = 2
      %temp = %temp $base64($mid(%skin,%pos,%w),36,10)
      %out = $puttok(%out,%temp,%i,9)
      inc %pos %w
      inc %j
    }
    inc %i
  }
  ; color 30-47 ccccc
  %i = 30
  while (%i < 48) {
    %out = $puttok(%out,$base64($mid(%skin,%pos,5),36,10),%i,9)
    inc %pos 5
    inc %i
  }
  ; version 1: options 26-29,48 o    (combine 4 base2 digits into 1 base36 digit)
  ; version 2: options 26,27,29,48 o (combine 4 base2 digits into 1 base36 digit)
  ; version 3: modes 26-29,48 mm     (combine 5 base3 digits into 2 base36 digits)
  var %zeropad = 5, %modebase = 3, %modebytes = 2
  if (%version == 2) %zeropad = 4
  if (%version < 3) var %modebase = 2, %modebytes = 1
  %temp = $base64($mid(%skin,%pos,%modebytes),36,%modebase,%zeropad)
  inc %pos %modebytes
  %i = 26
  while (%i < 49) {
    if (%i == 30) %i = 48
    elseif (%version == 2) && (%i == 28) %i = 29
    %out = $puttok(%out,$left(%temp,1),%i,9)
    %temp = $mid(%temp,2)
    inc %i
  }
  ; version 2 only: modes 28 m
  if (%version == 2) {
    %out = $puttok(%out,$mid(%skin,%pos,1),28,9)
    inc %pos
  }
  ; fontsize 18,20,22,24 ss
  %i = 18
  while (%i < 25) {
    if ($mid(%skin,%pos,1) == -) %w = 3
    else %w = 2
    %out = $puttok(%out,$base64($mid(%skin,%pos,%w),36,10),%i,9)
    inc %pos %w
    inc %i 2
  }
  ; font name lengths 17,19,21,23 l
  %temp =
  %i = 4
  while (%i) {
    %temp = %temp $base64($mid(%skin,%pos,1),36,10)
    inc %pos
    dec %i
  }
  ; font names and title 17,19,21,23,25 ?
  tokenize 32 %temp
  %i = 17
  while (%i < 26) {
    if (%i == 25) %temp =   $+ $replace($mid(%skin,%pos),&nbsp;, ,&amp;,&)
    else %temp = $mid(%skin,%pos,$1)
    %out = $puttok(%out,%temp,%i,9)
    inc %pos $1
    tokenize 32 $2-
    inc %i 2
  }
  return %out
}
;loadskin N mouse.key
;loadskin TabbedSkin
;loadskin CompressedSkin
alias -l loadskin {
  var %mouse.key, %skin
  if ($1 isnum 1-) {
    ;load from aamp.skn
    var %mouse.key = $2, %skn = $skn, %lines = $lines(%skn)
    if (%mouse.key > 1) %aamp.* = 1
    else %aamp.* = 0
    if ($1 <= %lines) %aamp.skn = $1
    else %aamp.skn = 1
    %skin = $read(%skn,nl,%aamp.skn)
  }
  elseif ($len($1-) > 236) {
    %aamp.* = 1
    %skin = $skin.decompress($1-)
  }
  if ($1- == 0) {
    ;load default skin
    %aamp.* = 1
    if (%aamp.skn !isnum 1-) %aamp.skn = 1
    %skin = $skin.decompress(35k2q02025g0f4t040b0b55040b0b05220r0j0z220r0j1t220r0j2n220r0j3h220r0j4e220r0j050k500j05161k0j1s161q0j3l161k0j590k0521070k051t50050t07194io194io6qjsc6qjsc6qjsc2i91c5spec7tz9a2tj6034mxc29ogq8gli085bdc7u18o0000000000000006qjsc3m0b0b0b0b6666tahomatahomatahomatahomaargh-amp)
  }
  ;convert from old format
  if ($numtok(%skin,9) == 48) {
    var %text.pl-titlebar =  Playlist
    var %font.playlist = $gettok(%skin,17,9)
    var %fontsize.playlist = $gettok(%skin,18,9)
    var %option.pl-title-position = 1
    if ($gettok(%skin,26,9) == 0) {
      %option.pl-title-position = 0
      %text.pl-titlebar =    Playlist
    }
    var %option.pl-knobborder = 1
    var %color.pl-edit = $gettok(%skin,43,9)
    var %color.pl-text = $gettok(%skin,44,9)

    tokenize 44 $rgb(%color.pl-text) , $rgb(%color.pl-edit)
    var %color.pl-edit2 = $rgb($calc(($1 +3*$4)/4),$calc(($2 +3*$5)/4),$calc(($3 +3*$6)/4))

    tokenize 44 $rgb(%color.pl-text)
    var %inc = 64, %avg = $calc(($1 +$2 +$3)/3)
    if (%avg > 192) %inc = -64
    var %r = $1 + %inc, %g = $2 + %inc, %b = $3 + %inc
    if (%r > 255) %r = 255
    if (%g > 255) %g = 255
    if (%b > 255) %b = 255
    if (%r < 0) %r = 0
    if (%g < 0) %g = 0
    if (%b < 0) %b = 0
    var %color.pl-text2 = $rgb(%r,%g,%b)

    tokenize 44 $rgb($gettok(%skin,34,9)) $+ , $+ $rgb(%color.pl-edit)
    var %color.pl-bar = $rgb($calc((2*$1 +$4)/3),$calc((2*$2 +$5)/3),$calc((2*$3 +$6)/3))

    tokenize 44 $rgb(%color.pl-bar)
    if ($abs($calc($1 -$2)) < 16) && ($abs($calc($2 -$3)) < 16) && ($abs($calc($1 -$3)) < 16) var %color.pl-bar2 = $rgb($calc(255-$1),$calc(255-$2),$calc(255-$3))
    else var %color.pl-bar2 = %color.pl-edit2

    var %color.pl-knob = $gettok(%skin,47,9)

    %skin = $gettok(%skin,1-16,9) $+ 	 $+ $&
      $+($gettok(%skin,25,9),	,%text.pl-titlebar,	) $+ $&
      $+($gettok(%skin,23-24,9),	,$gettok(%skin,17-22,9),	,%font.playlist,	,%fontsize.playlist,	) $+ $&
      $+($gettok(%skin,26,9),	,%option.pl-title-position,	,$gettok(%skin,27-29,9),	,$gettok(%skin,48,9),	,%option.pl-knobborder,	) $+ $&
      $+($gettok(%skin,34,9),	,$gettok(%skin,38,9),	,$gettok(%skin,37,9),	,$gettok(%skin,36,9),	,$gettok(%skin,35,9),	) $+ $&
      $+($gettok(%skin,39-42,9),	,$gettok(%skin,32-33,9),	,$gettok(%skin,30-31,9),	,$gettok(%skin,43-47,9),	) $+ $&
      $+(%color.pl-edit,	,%color.pl-edit2,	,%color.pl-text,	,%color.pl-text2,	) $+ $&
      $+(%color.pl-bar,	,%color.pl-bar2,	,%color.pl-knob)
  }
  if ($numtok(%skin,9) < 60) return
  if (%mouse.key & 2) {
    ;change layout
    %aamp.skin.coords = $gettok(%skin,1-16,9)
    %aamp.skin.text = $gettok(%skin,17-18,9)
    %aamp.skin.fonts = $gettok(%skin,19-28,9)
    %aamp.skin.options = $+($gettok(%skin,29-31,9),	,$gettok(%aamp.skin.options,4-,9))
  }
  elseif (%mouse.key & 4) {
    ;change colors, options 4-
    %aamp.skin.options = $+($gettok(%aamp.skin.options,1-3,9),	,$gettok(%skin,32-35,9))
    %aamp.skin.colors = $gettok(%skin,36-,9)
  }
  else {
    ;16 coords, 2 text, 10 fonts, 7 options, 25 colors
    %aamp.skin.coords = $gettok(%skin,1-16,9)
    %aamp.skin.text = $gettok(%skin,17-18,9)
    %aamp.skin.fonts = $gettok(%skin,19-28,9)
    %aamp.skin.options = $gettok(%skin,29-35,9)
    %aamp.skin.colors = $gettok(%skin,36-60,9)
  }
  snap
}
alias aamp.save {
  if (%aamp.*) {
    write $skn $aamp.skin(1)
    aamp $lines($skn)
  }
}
alias aamp.skin {
  var %skin
  %skin = $+(%aamp.skin.coords,	,%aamp.skin.text,	,%aamp.skin.fonts,	,%aamp.skin.options,	,%aamp.skin.colors)
  if ($1) return %skin
  return $skin.compress(%skin)
}
alias -l addtom3u {
  ;add current file to an m3u
  var %fname = $longfn($inmp3.fname)
  var %m3u = $$aamp.pick.m3u(Adicionar la canción actual al M3U,Adicionar canción), %dir = $nofile(%m3u)
  if (*?.?* !iswm %m3u) %m3u = %m3u $+ .m3u
  if (!$isdir(%m3u)) write $+(",%m3u,") $remove(%fname,%dir)
}
alias aamp.copy clipboard $aamp.skin
alias aamp {
  if ($isdir($skn)) {
    echo $colour(i) -a *** argh-amp no puede continuar debido a que un directorio llamado $skn existe. Debes remover o renombrar este directorio.
    return
  }
  if ($isdir($m3u)) {
    echo $colour(i) -a *** argh-amp no puede continuar debido a que un directorio llamado $m3u existe. Debes remover o renombrar este directorio.
    return
  }
  close -@ @mp3-player.editor
  if (%aamp.mp3stuff) %aamp.mp3stuff = $script(mp3stuff.mrc)
  ; *CAE* if (* !iswm %aamp.spamchan) %aamp.spamchan = #argh
  if (* !iswm %aamp.spamchan) %aamp.spamchan = #
  unset %aamp.button
  ; *CAE* if (!%aamp.file) %aamp.file = $mp3dir $+ argh-amp.mp3
  if (!%aamp.file) %aamp.file = %pathmp3 $+ CaeScript.mp3
  if (!$isfile($skn)) write $skn
  if (!$isfile($m3u)) write $m3u
  if (* iswm $1-) loadskin $1-
  elseif (%aamp.skin) {
    loadskin %aamp.skin
    unset %aamp.skin
  }
  elseif (* !iswm %aamp.skin.colors) loadskin %aamp.skn
  if (!%aamp.xy) %aamp.xy = -1 -1
  if ($window(@mp3-player).type != picture) closeamp
  if (!$window(@mp3-player.pl.text)) && (!%aamp.mp3stuff) {
    window -hlk @mp3-player.pl.text
    loadbuf @mp3-player.pl.text $m3u
    if ($line(@mp3-player.pl.text,1) == #EXTM3U) dline @mp3-player.pl.text 1
    ; combine extinf and filename into the same line
    var %i = 1, %n = $line(@mp3-player.pl.text,0)
    while (%i < %n) {
      var %line = $line(@mp3-player.pl.text,%i)
      if (#EXTINF:* iswm %line) {
        dline @mp3-player.pl.text %i
        rline @mp3-player.pl.text %i $+(%line,$lf,$line(@mp3-player.pl.text,%i))
        dec %n
      }
      ; remove blank lines
      elseif (*.mp3 !iswm %line) {
        dline @mp3-player.pl.text %i
        dec %n
        dec %i
      }
      inc %i
    }
  }
  if ($window(@mp3-player).type != picture) {
    close -@ @mp3-player
    window $aamp.switches @mp3-player %aamp.xy $mid($gettok(%aamp.skin.coords,1,9),4) $+(",$mircexe,") 14
    if (%aamp.switchbar) window -w @mp3-player
  }
  if ($window(@mp3-player.title).type != picture) {
    close -@ @mp3-player.title
    window -khpfB +d @mp3-player.title
  }
  aamp.draw
  if (%aamp.plopen) aamp.pl.open
  window -ar @mp3-player
  ; *CAE*
  if ($2) {
    aamp.playfile $2-
  }
}
alias -l aamp.switches return -zkhndBpf $+ $iif(%aamp.ontop,o) $iif(%aamp.switchbar,+Ld,+d)
alias -l aamp.draw {
  if (!$window(@mp3-player)) return

  ;1 width/height
  tokenize 32 $gettok(%aamp.skin.coords,1,9)
  var %w = $3, %h = $4
  if ($window(-1).dw < %w) %w = $ifmatch
  if ($window(-1).dh < %h) %h = $ifmatch

  var %@w = $window(@mp3-player).w, %@h = $window(@mp3-player).h
  if (%@w < %w) drawrect -rnf @mp3-player $gettok(%aamp.skin.colors,1,9) 1 %@w 0 $calc(%w - %@w) %h
  if (%@h < %h) drawrect -rnf @mp3-player $gettok(%aamp.skin.colors,1,9) 1 0 %@h %w $calc(%h - %@h)
  ; *CAE* window @mp3-player -1 -1 %w %h
  if $os == XP {
    window @mp3-player 355 26 %w %h
  }
  else {
    window @mp3-player 355 19 %w %h
  }

  var %altborder = $gettok(%aamp.skin.options,4,9)
  ;1 color.main
  ;10 color.button
  ;11 color.button2
  ;14 color.edit
  ;2-5 hilight(1) 3dlight(2) shadow(3) frame(4)
  var %1 = 2, %2 = 3, %3 = 4, %4 = 5
  if (%altborder == 1) {
    %aamp.border.main = 1 %2 %1 %1 %2
    %aamp.border.button = 10 %1 %2 %2 %1
    %aamp.border.pressed = 11 %4 %3 %3 %4
    %aamp.border.edit = 14 %3 %4 %4 %3
  }
  elseif (%altborder == 2) {
    %aamp.border.main = 1 %1 %2 %3 %4
    %aamp.border.button = 10 %1 %2 %3 %4
    %aamp.border.pressed = 11 %4 %3 %3 %4
    %aamp.border.edit = 14 %4 %3 %2 %1
  }
  elseif (%altborder == 3) {
    %aamp.border.main = 1 %1 0 0 %4
    %aamp.border.button = 10 %1 0 0 %4
    %aamp.border.pressed = 11 %4 0 0 %1
    %aamp.border.edit = 14 %3 0 0 %2
  }
  else {
    %aamp.border.main = 1 %2 %1 %3 %4
    %aamp.border.button = 10 %1 %2 %3 %4
    %aamp.border.pressed = 11 %4 %3 %3 %4
    %aamp.border.edit = 14 %3 %4 %2 %1
  }

  if ($gettok(%aamp.skin.options,3,9)) drawbox %aamp.border.main $1-
  else drawrect -rfn @mp3-player $gettok(%aamp.skin.colors,1,9) 1 $1-

  ;3-10 min close prev play pause stop next eject
  ;11-16 song time kbps khz vol pos
  var %i = 16
  while (%i > 2) {
    if (%i < 11) aamp.label %i
    else drawbox %aamp.border.edit $gettok(%aamp.skin.coords,%i,9)
    dec %i
  }
  aamp.pl.setxywh
  aamp.pl.setSkin
  aamp.pl.refresh
  aamp.top 1
  aamp.update 0
  drawdot @mp3-player
}
;aamp.top [0=appactive|1=forced redraw|@win=active]
alias -l aamp.top {
  if (!$window(@mp3-player)) return
  if (!$timer(aamp.update)) aamp.update

  var %appactive = $appactive, %isactive, %playlist = $window(@mp3-player.playlist), %active = $iif(??* iswm $1,$1,$active)
  if (%active == @mp3-player) {
    %aamp.pl.active = 0
    if (%appactive) %isactive = 1
  }
  elseif (%active == @mp3-player.playlist) {
    %aamp.pl.active = 1
    if (%appactive) %isactive = 2
  }
  if (!%appactive) %isactive = 0

  if (%appactive) && (normal isin $window(@mp3-player).state $window(@mp3-player.playlist).state) {
    if (%aamp.ontop) || (!%aamp.neverontop) || (%active == @mp3-player) {
      if (%aamp.pl.active) {
        window -o @mp3-player
        window -o @mp3-player.playlist
      }
      else {
        if (%playlist) window -o @mp3-player.playlist
        window -o @mp3-player
      }
      if (%aamp.switchbar) window -w @mp3-player
    }
    if (!%aamp.ontop) && (!$window(@mp3-player.editor)) {
      if (%aamp.pl.active) {
        window -u @mp3-player
        if (%playlist) window -u @mp3-player.playlist
      }
      else {
        if (%playlist) window -u @mp3-player.playlist
        window -u @mp3-player
      }
    }
    if ($1 !isnum) && (%active != @mp3-player) %aamp.restore = %active
    if (%playlist) && ($window(@mp3-player.playlist).state != normal) {
      window -ra @mp3-player.playlist
      if (%active) window -ra $+(",%active,")
    }
    if ($window(@mp3-player).state != normal) {
      window -ra @mp3-player
      if (%active) window -ra $+(",%active,")
    }
    .timeraamp.restore -o 1 0 unset % $+ aamp.restore
  }
  ;return if titlebar doesn't need to be redrawn
  if ($1 != 1) && (%aamp.active == %isactive) return
  %aamp.active = %isactive

  ;draw titlebar
  var %color.bg = 7, %color.text = 9, %font = tahoma, %fontsize = 11
  if (%aamp.active == 1) var %color.bg = 6, %color.text = 8
  ;2 titlebar
  aamp.draw.editText -t %color.bg $gettok(%aamp.skin.coords,2,9) %color.text 2 $mid($gettok(%aamp.skin.text,1,9),2)
  ;3 minimize
  aamp.label 3
  ;4 close
  aamp.label 4

  if ($1 != 1) drawdot @mp3-player
  if (%playlist) {
    aamp.pl.draw.titlebar
    drawdot @mp3-player.playlist
  }
}
alias aampspam {
  ;  if (!$server) || (!$inmp3) return
  var %colors = 3,6,7,10,12,14
  var %color = $gettok(%colors,$rand(1,$numtok(%colors,44)),44)
  ; *CAE* var %input = <c>argh</c> [<song>] <c>-</c> (<length>/<kbps>kbps) <c>amp
  var %input = <c> $+ %mp3texto $+ </c> [<song>] <c>-</c> (<length>/<kbps>kbps) <c> $+ %version.caescript $+ </c>
  var %length = $insong.length
  var %length = $floor($calc(%length /60000% 100)) $+ : $+ $mid($floor($calc(100+%length /1000% 60)),-2)
  var %song = $replace($deltok($nopath($longfn($inmp3.fname)),-1,46),_,$chr(32))
  if (%aamp.dispID3) && ($isfile($inmp3.fname)) {
    var %artist = $mp3($inmp3.fname).artist, %title = $mp3($inmp3.fname).title
    if (*? ?* iswm %artist %title) %song = %artist - %title
  }
  var %output = $replace(%input,<c>, $+ %color,</c>,99,<song>,%song,<length>,%length,<kbps>,$mp3($inmp3.fname).bitrate,<size>,$lower($bytes($lof($insong.fname),bkmgt3).suf))
  var %x = 1, %chan, %list
  if ($1) %list = $1
  elseif ($active ischan) || ($query($active)) %list = $active
  else %list = %aamp.spamchan
  while ($gettok(%list,%x,44)) {
    %chan = $ifmatch
    ; *CAE* if ($chan(%chan)) || ($query(%chan)) && ($server) msg %chan %output
    if ($chan(%chan)) || ($query(%chan)) && ($server) {
     describe %chan %output
    }
    inc %x
  }
}
alias -l setskin {
  %aamp.skin. [ $+ [ $1 ] ] = $puttok(%aamp.skin. [ $+ [ $1 ] ] ,$3-,$2,9)
  %aamp.* = 1
}
alias -l m3u return $+(",$scriptdir,aamp.m3u")
alias -l skn return $+(",$scriptdir,aamp.skn")
; drawbox 1.face 2.hilight 3.3dlight 4.shadow 5.frame 6.x 7.y 8.w 9.h
alias -l drawbox {
  var %@ = @mp3-player
  if (@* iswm $1) {
    %@ = $1
    tokenize 32 $2-
  }
  drawrect -rfn %@ $gettok(%aamp.skin.colors,$1,9) 1 $6-9
  ; outer lines
  drawrect -rn %@ $gettok(%aamp.skin.colors,$2,9) 1 $6-9
  var %x = $calc($7 - 1 + $9) $calc($6 - 1 + $8)
  drawline -rn %@ $gettok(%aamp.skin.colors,$5,9) 1 $6 %x %x $calc($7 - 1)

  ;if no inner lines, return
  if ($3 == 0) return

  tokenize 32 $1-5 $calc(1 + $6) $calc(1 + $7) $calc($8 - 2) $calc($9 - 2)
  drawrect -rn %@ $gettok(%aamp.skin.colors,$3,9) 1 $6-9
  var %x = $calc($7 - 1 + $9) $calc($6 - 1 + $8)
  drawline -rn %@ $gettok(%aamp.skin.colors,$4,9) 1 $6 %x %x $calc($7 - 1)
}
alias -l aamp.label {
  var %coords = $gettok(%aamp.skin.coords,$1,9)
  if (!$2) drawbox %aamp.border.button %coords
  tokenize 32 %coords $1-
  var %w = $floor($calc(.4 * $3)), %h = $floor($calc(.4 * $4))
  if (%w < 5) %w = 5
  if (%h < 5) %h = 5
  var %x = $floor($calc(($3 - %w) / 2 + $1)), %y = $floor($calc(($4 - %h) / 2 + $2))
  if ($6) && ($gettok(%aamp.skin.options,5,9)) {
    inc %x
    inc %y
  }
  var %c = $gettok(%aamp.skin.colors,$calc(12 + $6),9)
  if ($5 isnum 3-10) goto $5
  return

  :3
  ;minimize
  var %.8h = $floor($calc(.8 * %h))
  drawrect -rfn @mp3-player %c 1 %x $floor($calc(%y + %.8h)) %w $floor($calc(%h - %.8h))
  return

  :4
  ;close
  var %y+h = %y + %h
  drawline -rn @mp3-player %c 1 %x %y $calc(%x + %w) %y+h
  drawline -rn @mp3-player %c 1 $calc(%x - 1 + %w) %y $calc(%x - 1) %y+h
  return

  :5
  ;prev
  var %.2w = %w - $floor($calc(.8 * %w))
  var %x.2w = %x + %.2w
  var %x+w-1 = $calc(%x - 1 + %w)
  var %y+h-1 = $calc(%y - 1 + %h)
  var %ycenter = $calc((%h - 1) / 2 + %y)
  var %ycenter- = $floor(%ycenter)
  drawrect -rfn @mp3-player %c 1 %x %y %.2w %h
  drawline -rn @mp3-player %c 1 %x+w-1 %y %x+w-1 %y+h-1 %x+w-1 %y
  drawline -rn @mp3-player %c 1 %x.2w %ycenter- %x+w-1 %y
  drawline -rn @mp3-player %c 1 %x.2w $floor($calc(.5 + %ycenter)) %x+w-1 %y+h-1
  drawfill -rn @mp3-player %c %c $calc(%x - 2 + %w) %ycenter-
  return

  :6
  ;play
  var %right = $calc(%x - 1 + %w)
  var %ycenter = $calc((%h - 1) / 2 + %y)
  var %ycenter- = $floor(%ycenter)
  drawline -rn @mp3-player %c 1 %x %y %x $calc(%y - 1 + %h) %right $floor($calc(.5 + %ycenter)) %right %ycenter- %x %y
  drawfill -rn @mp3-player %c %c $calc(1 + %x) %ycenter-
  return

  :7
  ;pause
  var %.4w = $floor($calc(.4 * %w))
  drawrect -rfn @mp3-player %c 1 %x %y %.4w %h
  drawrect -rfn @mp3-player %c 1 $floor($calc(%x + %w - %.4w)) %y %.4w %h
  return

  :8
  ;stop
  drawrect -rfn @mp3-player %c 1 %x %y %w %h
  return

  :9
  ;next
  var %.8w = $floor($calc(.8 * %w))
  var %.2w = $calc(%w - %.8w)
  var %x.8w-1 = $calc(%x - 1 + %.8w)
  var %ycenter = $calc(%y + %h / 2 - .5)
  var %ycenter- = $floor(%ycenter)
  drawrect -rfn @mp3-player %c 1 $calc(%x + %.8w) %y %.2w %h
  drawline -rn @mp3-player %c 1 %x %y %x $calc(%y - 1 + %h) %x.8w-1 $floor($calc(.5 + %ycenter)) %x.8w-1 %ycenter- %x %y
  drawfill -rn @mp3-player %c %c $calc(1 + %x) %ycenter-
  return

  :10
  ;eject
  var %.8w = $floor($calc(.8 * %w))
  var %x.8w = %.8w + %x
  var %.4w = $floor($calc(.4 * %w))
  var %bottom = $floor($calc(%y - .7 + .6 * %h))
  var %right = $calc(%x - 1 + %w)
  var %xcenter = $calc(%x + %w / 2 - .5)
  var %xcenter- = $floor(%xcenter)
  drawline -rn @mp3-player %c 1 %x %bottom %right %bottom $floor($calc(.5 + %xcenter)) %y %xcenter- %y %x %bottom
  drawfill -rn @mp3-player %c %c %xcenter- $calc(%bottom - 1)
  var %.8h = $floor($calc(.8 * %h))
  drawrect -rfn @mp3-player %c 1 %x $calc(%y + %.8h) %w $calc(%h - %.8h)
  return
}
alias -l aamp.findfile {
  ; if file doesn't exist in specified directory, search for it in %aamp.searchdir
  if (*.mp3 iswm $1-) && (!$isfile($1-)) && ($isdir(%aamp.searchdir)) return $findfile(%aamp.searchdir,$nopath($1-),1)
  else return $1-
}
alias -l aamp.playfile {
  ; find valid path to file if needed
  var %file = $aamp.findfile($1-)
  if (*.mp3 iswm %file) && ($isfile(%file)) {
    splay -p $+(",%file,")
    if (%aamp.autospam) && (!%aamp.mp3stuff) aampspam %aamp.spamchan
  }
  elseif (%aamp.plpos < $line(@mp3-player.pl.text,0)) return 1
  else %aamp.plpos = $line(@mp3-player.pl.text,0) $+ .5
  ; returns 1 if file doesn't exist but there is an available file in the playlist
}
alias -l pl.play {
  %aamp.plpos = $floor($1)
  ;loop while file can't be played
  while ($aamp.playfile($gettok($line(@mp3-player.pl.text,%aamp.plpos),-1,10))) {
    aamp.pl.extinf %aamp.plpos
    ; this file can't be played.. go to next one
    inc %aamp.plpos
    ; if the playlist entry was deleted in /aamp.pl.extinf, %aamp.plpos will be %aamp.plpos - 0.5
    ; so use $floor to get %aamp.plpos back to where it was at the start of this loop iteration
    ; ( floor(int - .5 + 1) = int )
    %aamp.plpos = $floor(%aamp.plpos)
  }
  ; update playlist entry if file has moved
  ; this is already done in /aamp.pl.extinf if %aamp.autodead is enabled
  if (!%aamp.autodead) {
    var %oldline = $line(@mp3-player.pl.text,%aamp.plpos), %oldfile = $gettok(%oldline,-1,10), %newfile = $aamp.findfile(%oldfile)
    if (!$isfile(%oldfile)) && ($isfile(%newfile)) rline @mp3-player.pl.text %aamp.plpos $puttok(%oldline,%newfile,-1,10)
  }
  aamp.pl.extinf %aamp.plpos
  ;update playlist display
  if ($window(@mp3-player.playlist)) {
    ; scroll to current song
    if (%aamp.autoscroll) || (%aamp.autosel) {
      if (%aamp.autosel) {
        %aamp.pl.clicked = %aamp.plpos
        my.sline %aamp.plpos
      }
      aamp.pl.scrollTo $int($calc(1 + %aamp.plpos - %aamp.pl.showlines / 2)) 1
      aamp.pl.draw.bar
    }
    else aamp.pl.draw.text
    drawdot @mp3-player.playlist
  }
}
alias -l gui.editor {
  unset %aamp.snap
  clear @mp3-player.editor
  window -drolk +L @mp3-player.editor -1 -1 275 -1 fixedsys 15
  tokenize 32 Width/Height Titlebar Minimize Close Prev Play Pause Stop Next Eject Song Time kbps kHz Volume Position-Bar
  var %i = 1
  while ($1) {
    aline @mp3-player.editor $1 $gettok(%aamp.skin.coords,%i,9)
    inc %i
    tokenize 32 $2-
  }
  tokenize 32 Text.Titlebar Text.PL-Titlebar
  %i = 1
  while ($1) {
    aline @mp3-player.editor $1 $gettok(%aamp.skin.text,%i,9)
    inc %i
    tokenize 32 $2-
  }
  tokenize 32 Font.Titlebar FontSize.Titlebar Font.Song FontSize.Song Font.Time FontSize.Time Font.Quality FontSize.Quality Font.Playlist FontSize.Playlist
  %i = 1
  while ($1) {
    aline @mp3-player.editor $1 $gettok(%aamp.skin.fonts,%i,9)
    inc %i
    tokenize 32 $2-
  }
  tokenize 32 Option.Title-Position Option.PL-Title-Position Option.Main-Border Option.Alt-Borders Option.Label-Move Option.KnobBorder Option.PL-KnobBorder
  %i = 1
  while ($1) {
    aline @mp3-player.editor $1 $gettok(%aamp.skin.options,%i,9)
    inc %i
    tokenize 32 $2-
  }
  tokenize 32 Color.Main Color.Hilight(1) Color.3DLight(2) Color.Shadow(3) Color.Frame(4) $&
    Color.Titlebar Color.Titlebar2 Color.Titlebar-Text Color.Titlebar-Text2 $&
    Color.Button Color.Button2 Color.Button-Label Color.Button-Label2 $&
    Color.Edit Color.Song Color.Time Color.Quality Color.Knob $&
    Color.PL-Edit Color.PL-Edit2 Color.PL-Text Color.PL-Text2 Color.PL-Bar Color.PL-Bar2 Color.PL-Knob
  %i = 1
  while ($1) {
    aline @mp3-player.editor $1 $hexrgb($gettok(%aamp.skin.colors,%i,9))
    inc %i
    tokenize 32 $2-
  }
}
alias -l edit {
  var %k = $mouse.key, %i = 1
  while ($sline(@mp3-player.editor,%i).ln < 17) {
    tokenize 32 $1-2 $ifmatch $sline(@mp3-player.editor,%i)

    ;change knob when ctrl key is down
    if (%k & 2) && ($9-) {
      var %w = $calc($9 -1+$1), %h = $calc($10 -1+$2)
      if (%w < 2) %w = 2
      if (%h < 2) %h = 2
      tokenize 32 $1-8 %w %h
    }

    ;change width/height when shift key is down
    elseif (%k & 4) {
      var %w = $calc($7 -1+$1), %h = $calc($8 -1+$2)
      if ($3 == 1) {
        if ($window(-1).dw < %w) %w = $ifmatch
        if ($window(-1).dh < %h) %h = $ifmatch
      }
      tokenize 32 $1-6 %w %h $9-
    }

    ;change actual "width/height" line
    elseif ($3 == 1) {
      ;if width/height line is the only one selected
      if (!$sline(@mp3-player.editor,2).ln) {
        ;reposition window
        window @mp3-player $calc($1 -1+$window(@mp3-player).x) $calc($2 -1+$window(@mp3-player).y)
        return
      }
      tokenize 32 $1-4 0 0 $7-
    }

    ;change x/y
    else tokenize 32 $1-4 $calc($5 -1+$1) $calc($6 -1+$2) $7-

    rline -a @mp3-player.editor $3-
    setskin coords $3 $5-
    inc %i
  }
  if (%i > 1) aamp.draw
}
;$snap(@1,@2,x1,y1)
alias -l snap {
  if (!$isid) {
    tokenize 32 $gettok(%aamp.skin.coords,1,9) %aamp.snap
    if ($3 != $7) || ($4 != $8) unset %aamp.snap
    return
  }
  if (!$window($2)) || (* !iswm $3) return $3-4
  var %x1 = $3, %y1 = $4, %w1 = $window($1).dw, %h1 = $window($1).dh
  var %x2 = $window($2).dx, %y2 = $window($2).dy, %w2 = $window($2).dw, %h2 = $window($2).dh
  var %snap, %snap2
  var %x = $calc(%x2 - %w1 + 1), %w = $calc(%w1 + %w2 - 2)
  if ($inrect(%x1,%y1,%x,$calc(%y2 - %h1 - 10),%w,21)) %snap = BT
  elseif ($inrect(%x1,%y1,%x,$calc(%y2 + %h2 - 10),%w,21)) %snap = TB
  else {
    var %y = $calc(%y2 - %h1 + 1), %h = $calc(%h1 + %h2 - 2)
    if ($inrect(%x1,%y1,$calc(%x2 - %w1 - 10),%y,21,%h)) %snap = RL
    elseif ($inrect(%x1,%y1,$calc(%x2 + %w2 - 10),%y,21,%h)) %snap = LR
  }
  if (%snap isin TB BT) {
    if ($calc(10 + %x1 - %x2) isnum 0-20) %snap2 = LL
    elseif ($calc(10 + %x1 + %w1 - %x2 - %w2) isnum 0-20) %snap2 = RR
  }
  elseif (%snap isin LR RL) {
    if ($calc(10 + %y1 - %y2) isnum 0-20) %snap2 = TT
    elseif ($calc(10 + %y1 + %h1 - %y2 - %h2) isnum 0-20) %snap2 = BB
  }
  if (RL isin %snap) %x1 = %x2 - %w1
  elseif (LR isin %snap) %x1 = %x2 + %w2
  elseif (LL isin %snap2) %x1 = %x2
  elseif (RR isin %snap2) %x1 = $calc(%x2 + %w2 - %w1)
  if (BT isin %snap) %y1 = %y2 - %h1
  elseif (TB isin %snap) %y1 = %y2 + %h2
  elseif (TT isin %snap2) %y1 = %y2
  elseif (BB isin %snap2) %y1 = $calc(%y2 + %h2 - %h1)
  if ($1 == @mp3-player) %aamp.snap = $calc(%x2 - %x1) $calc(%y2 - %y1) $window(@mp3-player).dw $window(@mp3-player).dh %snap %snap2
  else %aamp.snap = $calc(%x1 - %x2) $calc(%y1 - %y2) $window(@mp3-player).dw $window(@mp3-player).dh $replace(%snap,R,-,L,R,-,L,B,-,T,B,-,T) %snap2
  if ($5) {
    %aamp.snap.temp = %aamp.snap
    unset %aamp.snap
  }
  return %x1 %y1
}
;aamp.move ID prev.dx prev.dy
alias -l aamp.move {
  ;%x %y = distance moved
  var %id = $1, %dx = $mouse.dx, %dy = $mouse.dy, %x = %dx - $2, %y = %dy - $3
  %aamp.move = %id
  var %pressed = $iif($mouse.key & 1,1), %timer = .timeraamp.move -o 1 0 aamp.move %id, %continue = %timer $2-
  if ($window(@mp3-player.editor)) {
    edit $calc(1+%x) $calc(1+%y)
    if (%pressed) %timer %dx %dy
    elseif ($version <= 6.03) {
      window -wroa @mp3-player.editor
      window -a @mp3-player
    }
    else window -wro @mp3-player.editor
    return
  }
  if (%id == 2) {
    if (%pressed) {
      tokenize 32 $gettok(%aamp.skin.coords,1,9)
      if (* * * * * !iswm %aamp.snap) {
        tokenize 32 $snap(@mp3-player,@mp3-player.playlist,%x,%y,1) $3-
        %x = $1
        %y = $2
      }
      var %dw = $window(-1).dw, %dh = $window(-1).dh, %xmin = 0, %ymin = 0, %xmax = %dw - $3, %ymax = %dh - $4
      if (%x < %xmin) %x = %xmin
      elseif (%x > %xmax) %x = %xmax
      if (%y < %ymin) %y = %ymin
      elseif (%y > %ymax) %y = %ymax
      if (* * * * * iswm %aamp.snap) && ($window(@mp3-player.playlist)) {
        tokenize 32 %aamp.plxy %aamp.snap
        var %px = %x + $5, %py = %y + $6, %px.max = %dw - $3, %py.max = %dh - $4
        if (%px > %px.max) var %x = $calc(%x - %px + %px.max), %px = %px.max
        elseif (%px < 0) var %x = %x - %px, %px = 0
        if (%py > %py.max) var %y = $calc(%y - %py + %py.max), %py = %py.max
        elseif (%py < 0) var %y = %y - %py, %py = 0
        window @mp3-player.playlist %px %py
      }
      %aamp.xy = %x %y
      window @mp3-player %x %y
      %continue
    }
    elseif (%aamp.snap.temp) {
      %aamp.snap = %aamp.snap.temp
      unset %aamp.snap.temp
    }
    return
  }
  if (%id == 15) || ($inmp3) {
    var %x = %dx - $$window(@mp3-player).dx, %y = %dy - $window(@mp3-player).dy, %coords = $gettok(%aamp.skin.coords,%id,9), %tall
    tokenize 32 %coords %x %y
    ;1=bx 2=by 3=bw 4=bh 5=kw 6=kh 7=wx 8=wy
    if ($4 > $3) {
      %tall = 1-
      tokenize 32 $2-
    }
    var %offset = $calc($7 - $1 - $5 / 2), %space = $calc($3 - $5)
    if (%offset < 0) %offset = 0
    elseif (%offset > %space) %offset = %space
    else %offset = $floor(%offset)
    aamp.draw.bar %coords %offset %space
    drawdot @mp3-player
    if (%pressed) {
      if (%id == 15) vol -p $round($calc( 65535 * ( %tall %offset / %space ) ),0)
      %continue
      return
    }
    if (%id == 16) splay -p seek $round($calc( $inmp3.length * %offset / %space ),0)
  }
}
;aamp.draw.bar  1=bar.x 2=bar.y  3=bar.w 4=bar.h  5=knob.w 6=knob.h  7=part 8=whole  9=[+|1-] 10=[return]
alias -l aamp.draw.bar {
  var %coords = $1-6, %part = $7, %whole = $8, %1- = $9, %return = $10

  var %x = $floor($calc( $1 + ( $3 + 1 - $5 ) / 2 )), %y = $floor($calc( $2 + ( $4 + 1 - $6 ) / 2 ))
  if ($5 > $3) tokenize 32 %x $2 $5 $4
  if ($6 > $4) tokenize 32 $1 %y $3 $6
  drawrect -rfn @mp3-player $gettok(%aamp.skin.colors,1,9) 1 $1-4
  drawbox %aamp.border.edit %coords
  %return

  tokenize 32 %coords
  var %params

  ;offset = round( (space) * (part) / (whole) )
  if ($4 > $3) %params = %x $floor($calc( $2 + .5 + ( $4 - $6 ) * ( %1- %part / %whole ) )) $5-6
  else %params = $floor($calc( $1 + .5 + ( $3 - $5 ) * %part / %whole )) %y $5-6

  ;draw knob
  if ($gettok(%aamp.skin.options,6,9)) {
    tokenize 32 %aamp.border.button
    drawbox 18 $2-5 %params
  }
  else drawrect -rfn @mp3-player $gettok(%aamp.skin.colors,18,9) 1 %params
}
alias -l aamp.update {
  if ($window(@mp3-player).type != picture) halt
  if (!$timer(aamp.update)) .timeraamp.update -om 0 200 aamp.update
  var %time = --:--, %1 = $1, %fname = $inmp3.fname, %inmp3 = $inmp3, %pos = $inmp3.pos, %length = $inmp3.length
  if (!$timer(aamp.move)) unset %aamp.move
  %aamp.paused = %inmp3
  if (%inmp3) {
    %time = $mid($floor($calc(100 + (%pos / 60000) % 100)),-2) $+ : $+ $mid($floor($calc(100 + (%pos / 1000) % 60)),-2)
    if (%aamp.updatePos != %pos) {
      %aamp.updatePos = %pos
      %aamp.paused = 0
    }
  }
  aamp.draw.editText $gettok(%aamp.skin.coords,12,9) 16 6 %time

  ;knob offset = round( (pixels not used) * (lines above position) / (lines not shown) )
  if (%aamp.move != 15) aamp.draw.bar $gettok(%aamp.skin.coords,15,9) $vol(s) 65535 1-
  if (%aamp.move != 16) aamp.draw.bar $gettok(%aamp.skin.coords,16,9) %pos %length + $iif(!%inmp3,return)

  if (%aamp.length != %length) || (%fname != %aamp.file) && (%inmp3) || (* iswm %1) {
    if (%inmp3) {
      %aamp.file = %fname
      %aamp.length = %length
    }
    %aamp.songWidth =
    ;11 song
    ;12 time
    ;13 kbps
    ;14 khz
    aamp.draw.editText $gettok(%aamp.skin.coords,13,9) 17 8 $mp3(%aamp.file).bitrate $+ kbps
    aamp.draw.editText $gettok(%aamp.skin.coords,14,9) 17 8 $left($mp3(%aamp.file).sample,-3) $+ kHz
    tokenize 32 $gettok(%aamp.skin.coords,11,9)
    var %text = $replace($left($nopath($longfn(%aamp.file)),-4),_,$chr(32))
    if (%aamp.dispID3) && ($isfile(%aamp.file)) {
      var %artist = $mp3(%aamp.file).artist, %title = $mp3(%aamp.file).title
      if (*? ?* iswm %artist %title) %text = %artist - %title
    }
    %text = %text ( $+ $floor($calc((%aamp.length / 60000) % 100)) $+ : $+ $mid($floor($calc(100 + (%aamp.length / 1000) % 60)),-2) $+ )
    var %font.song = $gettok(%aamp.skin.fonts,3,9), %fontsize.song = $gettok(%aamp.skin.fonts,4,9), %width = $width(%text,%font.song,%fontsize.song)
    if ($calc(%width + 6) > $3) && (!$window(@mp3-player.editor)) {
      %aamp.songWidth = $calc(%width +$width(00,%font.song,%fontsize.song))
      %aamp.songOffset = 0
      var %wh = $calc(2*%aamp.songWidth) $4
      window @mp3-player.title 0 0 %wh
      var %color.song = $gettok(%aamp.skin.colors,15,9)
      drawrect -rnf @mp3-player.title $gettok(%aamp.skin.colors,14,9) 1 0 0 %wh
      var %y = $floor($calc(($4 -$height(%text,%font.song,%fontsize.song))/2))
      drawtext -rn @mp3-player.title %color.song $+(",%font.song,") %fontsize.song 0 %y %text
      drawtext -rn @mp3-player.title %color.song $+(",%font.song,") %fontsize.song %aamp.songWidth %y %text
    }
    else aamp.draw.editText $1-4 15 4 %text
  }
  if (%aamp.songWidth) {
    ;11 song
    tokenize 32 $gettok(%aamp.skin.coords,11,9)
    if (0 0 isin %aamp.border.edit) drawcopy -n @mp3-player.title %aamp.songOffset 1 $calc($3 -2) $calc($4 -2) @mp3-player $calc(1+$1) $calc(1+$2)
    else drawcopy -n @mp3-player.title %aamp.songOffset 2 $calc($3 -4) $calc($4 -4) @mp3-player $calc(2+$1) $calc(2+$2)
    %aamp.songOffset = $floor($calc((%aamp.songOffset +5)% %aamp.songWidth))
  }
  if (%1 != 0) drawdot @mp3-player
}
;aamp.draw.editText [-t titlebarColorID] x y w h textColorID fontsizeID text
;[-t titlebarColorID] is for titlebar
alias -l aamp.draw.editText {
  var %titlepos
  if ($1 == -t) {
    %titlepos = $gettok(%aamp.skin.options,1,9)
    var %color.edit = $gettok(%aamp.skin.colors,$2,9)
    tokenize 32 $3-
  }
  elseif (0 0 isin %aamp.border.edit) tokenize 32 $calc(1+$1) $calc(1+$2) $calc($3 -2) $calc($4 -2) $5-
  else tokenize 32 $calc(2+$1) $calc(2+$2) $calc($3 -4) $calc($4 -4) $5-
  if (%titlepos !isnum) var %color.edit = $gettok(%aamp.skin.colors,14,9)
  var %drawrect = drawrect -rfn @mp3-player %color.edit 1 $1-4
  if (* !iswm $7) {
    if (%titlepos isnum) %drawrect
    return
  }
  var %font = $gettok(%aamp.skin.fonts,$calc($6 -1),9), %fontsize = $gettok(%aamp.skin.fonts,$6,9)
  var %width = $width($7-,%font,%fontsize), %height = $height($7-,%font,%fontsize)
  var %x, %y = $floor($calc(($4 -%height)/2))
  if (%titlepos == 0) {
    %x = 1
    inc %width
  }
  elseif (%titlepos == 2) {
    inc %width
    %x = $calc($3 -%width)
  }
  else %x = $floor($calc(($3 +1-%width)/2))
  if (%width > $3) || (%height > $4) {
    if ($window(@mp3-player.text).type != picture) {
      close -@ @mp3-player.text
      window -khpfB +d @mp3-player.text 0 0 $3-4
    }
    else window @mp3-player.text -1 -1 $3-4
    drawrect -rnf @mp3-player.text %color.edit 1 0 0 $3-4
    drawtext -nr @mp3-player.text $gettok(%aamp.skin.colors,$5,9) $+(",%font,") %fontsize %x %y $7-
    drawcopy -n @mp3-player.text 0 0 $3-4 @mp3-player $1-2
    return
  }
  %drawrect
  drawtext -nr @mp3-player $gettok(%aamp.skin.colors,$5,9) $+(",%font,") %fontsize $calc(%x +$1) $calc(%y +$2) $7-
}
alias -l closeamp {
  close -@ @mp3-player @mp3-player.editor @mp3-player.title @mp3-player.text
  aamp.pl.savexy
  .timeraamp.* off
  if ($1) closeamp2
  else .timer -o 1 0 if ($script(aamp.mrc)) closeamp2
}
alias -l closeamp2 {
  if ($window(@mp3-player).type != picture) {
    aamp.pl.close
    aamp.pl.save
    close -@ @mp3-player.pl.text
    if (%aamp.stop) splay stop
    if (%aamp.mp3stuff) && (%aamp.stopcont) && ($script(mp3stuff.mrc)) mp3stuff cont 0
  }
}
alias -l aamp.input return $input($1,1,argh-amp,$2)
alias -l hexrgb {
  tokenize 44 $rgb($1)
  return $+($chr(35),$base($1,10,16,2),$base($2,10,16,2),$base($3,10,16,2))
}
menu @mp3-player.editor {
  lbclick:{
    if ($1 < 17) return
    tokenize 32 $1 $line(@mp3-player.editor,$1)
    var %offset = 28, %skin = options, %type = $2, %value = $3-, %input, %output
    if (Option.Title-Position == $2) %output = $calc(1+%value) % 3
    elseif (Option.Alt-Borders == $2) %output = $calc(1+%value) % 4
    elseif (Option.* iswm $2) %output = $iif(%value,0,1)
    elseif (Font.* iswm $2) {
      %offset = 18
      %skin = fonts
      %output = $aamp.input(%type,%value)
    }
    elseif (FontSize.* iswm $2) {
      %offset = 18
      %skin = fonts
      %input = $aamp.input(%type,%value)
      if (%input isnum) %output = %input
    }
    elseif (Color.* iswm %type) {
      %offset = 35
      %skin = colors
      %value = $gettok(%aamp.skin.colors,$calc($1 -%offset),9)
      %input = $remove($aamp.input(%type   $hexrgb(%value),$rgb(%value)),$chr(32))
      if (%input == $cancel) || (* !iswm %input) return
      if ($numtok(%input,44) == 3) %output = $rgb( [ $deltok(%input,0,44) ] )
      elseif (#?????? iswm %input) {
        if ($base($+($mid(%input,-2),$mid(%input,4,2),$mid(%input,2,2)),16,10)) %output = $ifmatch
      }
      elseif (%input isnum 0-16777215) %output = $ifmatch
    }
    elseif (Text.* iswm $2) {
      %offset = 16
      %skin = text
      %input = $aamp.input(%type,$replace($mid(%value,2),&,&amp;, ,&nbsp;))
      if (* !iswm %input) if (!$?!="Clear %type ?") return
      %output =   $+ $replace(%input,&nbsp;, ,&amp;,&)
    }
    %output = $remove(%output,	)
    if (* !iswm %output) return
    setskin %skin $calc($1 -%offset) %output
    if (Color.* iswm $2) %output = $hexrgb(%output)
    rline -a @mp3-player.editor $1 %type %output
    aamp.draw
  }
}
menu @mp3-player {
  mouse:aamp.mousemove
  sclick:{
    aamp.mouseclick
    .timeraamp.sclick -o 1 0 aamp.mousemove
  }
  dclick:aamp.mouseclick 1
  uclick:if ($active == @mp3-player) aamp.buttons $mouse.x $mouse.y
  leave:aamp.buttons
}
alias -l aamp.mousemove {
  if ($mouse.key !& 1) unset %aamp.clicked
  if (%aamp.clicked) || (%aamp.button) aamp.buttons $mouse.x $mouse.y 1
}
alias -l aamp.mouseclick {
  aamp.top @mp3-player
  var %dclick = $1, %dx = $mouse.dx, %dy = $mouse.dy, %x = $mouse.x, %y = $mouse.y
  %aamp.clicked = 1
  if ($aamp.buttons(%x,%y,1,%dclick)) return
  if ($window(@mp3-player.editor)) {
    window -h @mp3-player.editor
    aamp.move g %dx %dy %x %y
    return
  }

  var %barID = 16
  while (%barID > 14) {
    ;15 volume
    ;16 position-bar
    tokenize 32 $gettok(%aamp.skin.coords,%barID,9)
    var %w = $3, %h = $4
    if ($5 > %w) %w = $5
    if ($6 > %h) %h = $6
    if ($inrect(%x,%y,$floor($calc(($3 -%w)/2+.5+$1)),$floor($calc(($4 -%h)/2+.5+$2)),%w,%h)) {
      aamp.move %barID %dx %dy %x %y
      return
    }
    dec %barID
  }

  var %move
  if (%aamp.easymove) %move = 1
  elseif ($mouse.key & 2) %move = 1
  else {
    ;2 titlebar
    tokenize 32 $gettok(%aamp.skin.coords,2,9)
    if ($inrect(%x,%y,$1,$2,$3,$4)) %move = 1
  }
  if (%move) {
    aamp.move 2 $calc(%dx - $window(@mp3-player).x) $calc(%dy - $window(@mp3-player).y)
    return
  }
}
alias -l aamp.buttons {
  if ($timer(aamp.move)) || ($window(@mp3-player.editor)) return
  var %down = $3, %inside = $iif(* iswm $1-2,1), %dclick = $4, %over, %button = %aamp.button, %i = 10
  if (%inside) {
    while (%i > 2) {
      tokenize 32 $1-2 $gettok(%aamp.skin.coords,%i,9)
      if ($inrect($1,$2,$3,$4,$5,$6)) {
        %over = %i
        if (%over != %button) || (!%down) && (%button) {
          aamp.label %button
          %button = 0
        }
        if (!%down) && (%aamp.clicked) aamp.push %over
        elseif (%button != %over) {
          drawbox %aamp.border.pressed $gettok(%aamp.skin.coords,%over,9)
          aamp.label %over 1
          %button = %over
        }
        break
      }
      dec %i
    }
  }
  if (%over) && (%button) && (%aamp.clicked) %aamp.button = %button
  else {
    if (%button) aamp.label %button
    unset %aamp.button
  }
  drawdot @mp3-player
  if (%aamp.dclickpl) && (!%over) && (%dclick) {
    aamp.push 11
    return 11
  }
  if (!%down) && (%inside) unset %aamp.clicked
  return %over
}
alias -l delete.skin {
  if ($?!="Delete this skin?") {
    write -dl $+ %aamp.skn $skn
    var %lines = $lines($skn)
    if (%aamp.skn > %lines) && (%lines > 0) %aamp.skn = %lines
    aamp %aamp.skn
  }
}
alias -l aamp.pick.mp3 {
  if ($sfile($nofile(%aamp.file) $+ *.mp3,$iif($1,$1,Play an mp3),$iif($2,$2,Play))) {
    %aamp.file = $ifmatch
    return %aamp.file
  }
}
alias -l aamp.pick.m3u {
  if ($sfile($nofile(%aamp.m3u) $+ *.m3u,$iif($1,$1,Pick an m3u),$iif($2,$2,Select))) {
    %aamp.m3u = $ifmatch
    return %aamp.m3u
  }
}
menu @mp3-player,@mp3-player.editor,@mp3-player.playlist {
  Notificar
  .Notificar ahora $iif(%aamp.mp3stuff,(/mp3stuff spam),(/aampspam)):{
    if (%aamp.mp3stuff) mp3stuff spam
    else aampspam %aamp.spamchan
  }
  .-
  .$checkbox($iif(%aamp.mp3stuff,%mp3stuffplay,%aamp.autospam)) Auto-Notificar al tocar:{
    if (%aamp.mp3stuff) mp3stuff t 0 play
    else %aamp.autospam = $iif(%aamp.autospam,0,1)
  }
  .-
  .$iif(%aamp.mp3stuff,&Edit play message...):mp3stuffo 87
  .-
  .Asignar canales... $+([,$iif(%aamp.mp3stuff,%mp3stuffplayto,%aamp.spamchan),]):{
    if (%aamp.mp3stuff) mp3stuff setchans
    else %aamp.spamchan = $$replace($aamp.input($+(Entre canales de notificación,$chr(44),$chr(32),separados por comas),%aamp.spamchan),$chr(32),$chr(44))
  }
  -
  Skin
  .Skin Anterior:aamp.push 13
  .Skin Siguiente:aamp.push 14
  .-
  .Copiar al Clipboard:aamp.copy
  .Editor GUI:gui.editor
  .-
  .$iif(%aamp.*,Recargar grabada):aamp %aamp.skn
  .-
  .$iif(%aamp.*,Guardar Skin Actual):aamp.save
  .$iif(!%aamp.* && %aamp.skn,Borrar skin):delete.skin
  -
  Abrir Archivo:aamp.push 12
  $iif(!$window(@mp3-player.playlist),Abrir Playlist):aamp.push 11
  $iif($window(@mp3-player.playlist),Playlist)
  .Adicionar Archivos:{
    if ($version == 6.03) {
      while (1) {
        var %file = $$aamp.pick.mp3
        if (*.mp3 !iswm %file) break
        aline @mp3-player.pl.text %file
        aamp.pl.refresh
      }
    }
    else {
      var %i = 1, %n = $msfile($nofile(%aamp.file) $+ *.mp3,Adicionar archivos al Playlist,Adicionar)
      if (%n < 0) return $input(Seleccionaste demasiados archivos. $+ $str($crlf,2) $+ Una limitación en el comando $!msfile de mIRC evita al script de adicionarlos al Playlist.,o,Limitación de mIRC)
      while (%i <= %n) {
        var %file = $msfile(%i)
        if (*.mp3 iswm %file) aline @mp3-player.pl.text %file
        inc %i
      }
      aamp.pl.refresh
    }
  }
  .Adicionar desde M3U:{
    var %m3u = $$shortfn($aamp.pick.m3u(Cargar un M3U,Cargar)), %dir = $nofile(%m3u)
    close -@ @mp3-player.temp
    window -hl @mp3-player.temp
    loadbuf @mp3-player.temp %m3u
    var %i = 1, %n = $line(@mp3-player.temp,0), %extinf, %file
    while (%i <= %n) {
      var %line = $line(@mp3-player.temp,%i)
      if (#EXTINF:* iswm %line) %extinf = %line
      elseif (*.mp3 !iswm %line) %extinf =
      else {
        if (?:* iswm %line) { }
        elseif (\* iswm %line) %line = $left(%dir,2) $+ %line
        else %line = %dir $+ %line
        if (%extinf) {
          %line = $+(%extinf,$lf,%line)
          %extinf =
        }
        aline @mp3-player.pl.text %line
      }
      inc %i
    }
    close -@ @mp3-player.temp
    aamp.pl.refresh
  }
  .Adicionar directorio:{
    close -@ @mp3-player.temp
    window -hls @mp3-player.temp
    var %n = $findfile($sdir($nofile(%aamp.file)),*.mp3,@mp3-player.temp)
    filter -ww @mp3-player.temp @mp3-player.pl.text
    close -@ @mp3-player.temp
    aamp.pl.refresh
  }
  .-
  .$iif(!%aamp.autodead,Remover archivos muertos):{
    var %i = %aamp.pl.lines
    while (%i) {
      var %line = $line(@mp3-player.pl.text,%i), %file = $gettok(%line,-1,10)
      if (!$isfile(%file)) {
        ; try to find the new location for this file if it has moved
        var %newfile = $aamp.findfile(%file)
        if ($isfile(%newfile)) {
          ; update playlist entry
          %file = %newfile
          %line = $puttok(%line,%file,-1,10)
          rline @mp3-player.pl.text %i %line
        }
      }
      if (!$isfile(%file)) {
        dline @mp3-player.pl.text %i
        dline @mp3-player.pl.state %i
        if (%i == %aamp.plpos) dec %aamp.plpos .5
        elseif (%i < %aamp.plpos) dec %aamp.plpos
      }
      dec %i
    }
    aamp.pl.refresh
  }
  .Limpiar Playlist:{
    %aamp.plpos = .5
    clear @mp3-player.pl.text
    clear @mp3-player.pl.state
    aamp.pl.refresh
  }
  .-
  .Randomizar Playlist:{
    close -@ @mp3-player.temp
    renwin @mp3-player.pl.text @mp3-player.temp
    renwin @mp3-player.pl.state @mp3-player.temp.state
    window -hlk @mp3-player.pl.text
    window -hlk @mp3-player.pl.state
    var %lines = %aamp.pl.lines
    while (%lines) {
      var %temp = $rand(1,%lines)
      aline @mp3-player.pl.text $line(@mp3-player.temp,%temp)
      aline @mp3-player.pl.state $calc(+$line(@mp3-player.temp.state,%temp))
      dline @mp3-player.temp %temp
      dline @mp3-player.temp.state %temp
      dec %lines
    }
    close -@ @mp3-player.temp @mp3-player.temp.state
    unset %aamp.plpos
    %aamp.pl.scrollpos = 1
    aamp.pl.refresh
  }
  .Ordenar por directorio y nombre de archivo:aamp.pl.sort
  .Ordenar solo por nombre de archivo:aamp.pl.sort 1
  .-
  .Opciones de Despliegue
  ..$checkbox(%aamp.dispID3) Mostrar etiquetas ID3 cuando esten disponibles:{
    %aamp.dispID3 = $iif(%aamp.dispID3,0,1)
    aamp.update 1
    aamp.pl.draw.text
    drawdot @mp3-player.playlist
  }
  ..$checkbox(%aamp.displength) Mostrar largo de las canciones:{
    %aamp.displength = $iif(%aamp.displength,0,1)
    aamp.pl.draw.text
    drawdot @mp3-player.playlist
  }
  ..$checkbox(%aamp.dispdead) Indicar archivos faltantes con signos de interrogación:{
    %aamp.dispdead = $iif(%aamp.dispdead,0,1)
    aamp.pl.draw.text
    drawdot @mp3-player.playlist
  }
  ..$checkbox(%aamp.nopltimer) Cargar info extra inmediatamente (sin temporizador):%aamp.nopltimer = $iif(%aamp.nopltimer,0,1)
  ..-
  ..Borrar del cache titulos y largos de las canciones:{
    var %i = 1, %n = $line(@mp3-player.pl.text,0)
    close -@ @mp3-player.pl.text.temp
    renwin @mp3-player.pl.text @mp3-player.pl.text.temp
    window -hlk @mp3-player.pl.text
    while (%i <= %n) {
      aline @mp3-player.pl.text $gettok($line(@mp3-player.pl.text.temp,%i),-1,10)
      inc %i
    }
    aamp.pl.draw.text
    drawline @mp3-player.playlist
    close -@ @mp3-player.pl.text.temp
  }
  .Opciones de Auto-Deslizamiento
  ..$checkbox(%aamp.autoscroll) Deslizar automáticamente a la canción actual:%aamp.autoscroll = $iif(%aamp.autoscroll,0,1) | %aamp.autosel =
  ..$checkbox(%aamp.autosel) Deslizar automáticamente y selecionar la canción actual:%aamp.autosel = $iif(%aamp.autosel,0,1) | %aamp.autoscroll =
  .Opciones de Auto-Búsqueda
  ..$iif(!%aamp.searchdir,Establecer un directorio de búsqueda para buscar archivos faltantes):set %aamp.searchdir $$sdir($nofile(%aamp.file),Establecer un directorio de búsqueda (los subdirectorios serán usados))
  ..$iif(%aamp.searchdir,Cambiar directorio de búsqueda ( $+ %aamp.searchdir $+ )):set %aamp.searchdir $$sdir(%aamp.searchdir,Establecer un directorio de búsqueda (los subdirectorios serán usados))
  ..$iif(!%aamp.searchdir,$style(2)) Desactivar auto-búsqueda para archivos faltantes:unset %aamp.searchdir
  ..-
  ..$checkbox(%aamp.autodead) Remover automáticamente archivos muertos del playlist:%aamp.autodead = $iif(%aamp.autodead,0,1) | aamp.pl.update timer
  .-
  .Guardar playlist:{
    var %m3u = $$aamp.pick.m3u(Save playlist,Save)
    if (*?.?* !iswm %m3u) %m3u = %m3u $+ .m3u
    if ($isdir(%m3u)) return
    if ($isfile(%m3u)) if (!$input($+(",$nopath(%m3u),",$crlf,$crlf,Sobre-Escribir este archivo?),8,El archivo existe)) return
    var %dir* = $nofile(%m3u) $+ *, %mid = $len(%dir*)
    close -@ @mp3-player.temp
    window -hl @mp3-player.temp
    var %i = 1, %n = %aamp.pl.lines
    while (%i <= %n) {
      var %line = $deltok($line(@mp3-player.pl.text,%i),0,10)
      var %file = %line
      var %extinf = ""
      if (#EXTINF:* iswm %line) {
        %extinf = $gettok(%line,1,10)
        %file = $gettok(%line,-1,10)
      }
      if (%dir* iswm %file) %file = $mid(%file,%mid)
      if (%extinf) aline @mp3-player.temp %extinf
      aline @mp3-player.temp %file
      inc %i
    }
    write -c $+(",%m3u,") #EXTM3U
    savebuf -a @mp3-player.temp $+(",%m3u,")
    close -@ @mp3-player.temp
  }
  -
  $checkbox($iif(%aamp.mp3stuff,%mp3stuffcont,%aamp.cont)) Reproducción contínua:{
    if (%aamp.mp3stuff) { mp3stuff .t 0 cont | return }
    %aamp.cont = $iif(%aamp.cont,0,1)
  }
  $checkbox($iif(%aamp.mp3stuff,%mp3stuffshuf,%aamp.shuffle)) $iif(%aamp.mp3stuff,Aleatorio,Randomico):{
    if (%aamp.mp3stuff) { mp3stuff .t 0 shuf | return }
    %aamp.shuffle = $iif(%aamp.shuffle,0,1)
  }
  $iif(!%aamp.mp3stuff,$style($calc($iif(%aamp.loop,1,0) + $iif(%aamp.shuffle,2,0))) &Loop playlist):%aamp.loop = $iif(%aamp.loop,0,1)
  -
  Ver Readme:{
    var %f = $+($scriptdir,aamp.htm)
    if ($isfile(%f)) run %f
    else run http://pages.cthome.net/pdufilie/irc/aamp.htm
  }
  -
  ;  Version
  ;  .&Check for a new version (/aampcheck):aampcheck
  ;  .I&nstall the newest version (/downloadaamp):downloadaamp
  ;  .-
  ;  .$checkbox($iif(%aamp.nocheck,0,1)) Check for new versions at &startup:%aamp.nocheck = $iif(%aamp.nocheck,0,1)
  ;  .$checkbox($iif(%aamp.noinstall,0,1)) Install new versions &automatically:%aamp.noinstall = $iif(%aamp.noinstall,0,1)
  ;  .-
  ;  .&Uninstall:if ($input(Uninstall argh-amp?,8,Uninstall)) .unload -rs $+(",$script,")
  Ventana
  .$checkbox(%aamp.ejectpl) Eject abre el playlist:%aamp.ejectpl = $iif(%aamp.ejectpl,0,1)
  .$checkbox(%aamp.dclickpl) Doble-Click abre el playlist:%aamp.dclickpl = $iif(%aamp.dclickpl,0,1)
  .-
  .$checkbox(%aamp.easymove) Movimiento Sencillo:%aamp.easymove = $iif(%aamp.easymove,0,1)
  .-
  .$checkbox(%aamp.switchbar) Mostrar en mIRC en vez del taskbar:{
    %aamp.switchbar = $iif(%aamp.switchbar,0,1)
    var %wh = $window(@mp3-player).w $window(@mp3-player).h, %active = $active
    var %aamp160 = @mp3-player $+ $chr(160)
    close -@ %aamp160
    renwin @mp3-player %aamp160
    window $aamp.switches @mp3-player $window(%aamp160).x $window(%aamp160).y %wh $+(",$mircexe,") 14
    drawcopy %aamp160 0 0 %wh @mp3-player 0 0
    aamp.top %active
    window -a @mp3-player
    if (%aamp.switchbar) window -w @mp3-player
    close -@ %aamp160
  }
  .-
  .$style($calc($iif(%aamp.neverontop,0,1) + $iif(%aamp.ontop,2,0))) Al tope cuando mIRC sea activo:{
    %aamp.neverontop = $iif(%aamp.neverontop,0,1)
    aamp.top $active
  }
  .$checkbox(%aamp.ontop) Siempre al tope:{
    %aamp.ontop = $iif(%aamp.ontop,0,1)
    aamp.top $active
  }
  Sistema
  .$checkbox(%aamp.dispID3) Mostrar etiquetas ID3 cuando esten disponibles:{
    %aamp.dispID3 = $iif(%aamp.dispID3,0,1)
    aamp.update 1
    if ($window(@mp3-player.playlist)) {
      aamp.pl.draw.text
      drawdot @mp3-player.playlist
    }
  }
  .-
  .$checkbox(%aamp.startup) Abrir al iniciar:%aamp.startup = $iif(%aamp.startup,0,1)
  .$iif(%aamp.mp3stuff,$checkbox(%aamp.splay) &Open when mp3stuff plays an mp3):%aamp.splay = $iif(%aamp.splay,0,1)
  .-
  .$checkbox(%aamp.stop) Detener mp3 al cerrar:%aamp.stop = $iif(%aamp.stop,0,1)
  .$iif(%aamp.mp3stuff,$checkbox(%aamp.stopcont) Desactivar reproducción contínua al cerrar):%aamp.stopcont = $iif(%aamp.stopcont,0,1)
  .-
  .$iif($script(mp3stuff.mrc),$checkbox(%aamp.mp3stuff) Integrar con &mp3stuff):{
    %aamp.mp3stuff = $iif(%aamp.mp3stuff,0,1)
    if (%aamp.mp3stuff) {
      aamp.pl.close
      aamp.pl.save
      close -@ @mp3-player.pl.text
      mp3stuff t player mIRC
    }
    else aamp
  }
  -
  Cerrar:closeamp
}
alias -l checkbox if ($1) return $style(1)
  ;on *:keydown:@mp3-player:*:{
  ;  var %keyval = $keyval, %direction = %keyval - 37, %left/right = %keyval % 2
  ;  ;0=LEFT, 1=UP, 2=RIGHT, 3=DOWN
  ;  if (%direction isnum 0-3) {
  ;    if ($window(@mp3-player.editor)) edit $iif(%left/right,%direction,1) $iif(%left/right,1,$calc(%direction -1))
  ;    elseif (!%left/right) {
  ;      var %n = $calc((2-%direction)*1024+$vol(mp3))
  ;      if (%n < 0) %n = 0
  ;      elseif (%n > 65535) %n = 65535
  ;      vol -p %n
  ;    }
  ;    elseif ($inmp3) {
  ;      var %n = $calc((%direction -1)*5000+$inmp3.pos)
  ;      if (%n < 0) %n = 0
  ;      elseif (%n > %aamp.length) %n = %aamp.length
  ;      splay -p seek %n
  ;    }
  ;  }
  ;  else aamp.key %keyval
  ;}
alias -l aamp.key {
  var %keyval = $1, %mouse = $mouse.key
  %keyval = $replace(%keyval,33,-page,34,+page,36,home,35,end)
  if (%keyval isin -page +page) && ($window(@mp3-player.playlist)) {
    aamp.pl.scrollTo $calc(%aamp.pl.scrollPos $left(%keyval,1) $iif(%mouse & 2,1,%aamp.pl.showlines))
    aamp.pl.draw.bar
    drawdot @mp3-player.playlist
    window -a @mp3-player.playlist
  }
  elseif (%keyval isin home end) && ($window(@mp3-player.playlist)) {
    aamp.pl.scrollTo $iif(%keyval == home,1,%aamp.pl.lines)
    aamp.pl.draw.bar
    drawdot @mp3-player.playlist
    window -a @mp3-player.playlist
  }
  elseif (%keyval == 65) && (%mouse !& 2) addtom3u
  elseif ((%keyval == 45) || (%keyval == 67)) && (%mouse & 2) aamp.copy
  elseif (%keyval == 69) && (%mouse & 2) gui.editor
  elseif (%keyval == 46) && (%mouse & 2) && (!%aamp.*) delete.skin
  elseif (%keyval == 82) && (%mouse & 2) aamp %aamp.skn
  elseif (%keyval == 83) && (%mouse & 2) aamp.save
  elseif (%keyval == 83) {
    tokenize 32 $cb
    if ($len($1-) > 236) {
      if ($1 == /aamp) loadskin $2-
      else loadskin $1-
      aamp.draw
    }
  }
  elseif (%keyval == 27) aamp.push 3
  elseif (%keyval == 70) && (!%aamp.mp3stuff) && (%aamp.plpos) && (.5 !isin %aamp.plpos) {
    aamp.pl.open
    %aamp.pl.clicked = %aamp.plpos
    my.sline %aamp.plpos
    aamp.pl.scrollTo $int($calc(1 + %aamp.plpos - %aamp.pl.showlines / 2)) 1
    aamp.pl.draw.bar
    drawdot @mp3-player.playlist
  }
  elseif (((%keyval == 189) || (%keyval == 109)) && (* !iswm $keychar)) || ($keychar isin [{u_-) aamp.push 13
  elseif (((%keyval == 187) || (%keyval == 107)) && (* !iswm $keychar)) || ((%keyval != 9) && ($keychar isin ]}i	=+)) aamp.push 14
  elseif (%keyval > 27) aamp.push $calc(4+$$pos(zxcvblpo,$keychar))
}
alias -l aamp.push {
  if ($1 isnum 3-14) goto $1
  return

  :3
  ; minimize
  window -n @mp3-player
  if (%aamp.switchbar) window -w @mp3-player
  if ($window(@mp3-player.playlist)) window -h @mp3-player.playlist
  return

  :4
  ; close
  closeamp
  halt

  :5
  ; prev
  if (%aamp.mp3stuff) {
    mp3stuff prev
    return
  }
  var %lines = $line(@mp3-player.pl.text,0), %pos = %aamp.plpos
  if (*.5 iswm %pos) inc %pos .5
  elseif (%pos !isnum 1-) %pos = 1
  if (%pos > %lines) %pos = %lines + 1
  if (%aamp.shuffle) pl.play $rand(1,%lines)
  elseif (%pos > 1) pl.play $calc(%pos - 1)
  elseif (%aamp.loop) pl.play %lines
  return

  :6
  ; play
  if (%aamp.paused) splay -p resume
  elseif (%aamp.file) aamp.playfile %aamp.file
  else goto 10
  return

  :7
  ; pause
  if (%aamp.paused) splay -p resume
  elseif ($inmp3) splay -p pause
  return

  :8
  ; stop
  splay -p stop
  return

  :9
  ; next
  if (%aamp.mp3stuff) {
    mp3stuff adv
    return
  }
  ;if (%aamp.pl.lines == 0) && ($isdir(%aamp.searchdir)) {
  ;  var %n = $findfile(%aamp.searchdir,*.mp3,0)
  ;  aamp.playfile $findfile(%aamp.searchdir,*.mp3,$rand(1,%n))
  ;  return
  ;}
  var %lines = $line(@mp3-player.pl.text,0), %pos = %aamp.plpos
  if (*.5 iswm %pos) dec %pos .5
  elseif (%pos !isnum 0-) %pos = 0
  if (%pos > %lines) %pos = %lines
  if (%aamp.shuffle) pl.play $rand(1,%lines)
  elseif (%pos < %lines) pl.play $calc(1 + %pos)
  elseif (%aamp.loop) pl.play 1
  return

  :10
  ; eject
  goto $iif(%aamp.ejectpl,11,12)
  return

  :11
  ; playlist
  if (%aamp.mp3stuff) {
    mp3stuff stuff 6
    return
  }
  aamp.pl.open
  return

  :12
  ; open
  if (%aamp.mp3stuff) {
    if ($dialog(mp3stuffs)) mp3stuff stuff
    else mp3stuff stuff 5
  }
  else aamp.playfile $aamp.pick.mp3
  return

  :13
  ; [ u -
  var %lines = $lines($skn)
  aamp $calc(1 + (%aamp.skn - 2 + %lines) % %lines) $mouse.key
  return

  :14
  ; ] - = +
  var %lines = $lines($skn)
  aamp $calc(1 + (%aamp.skn + %lines) % %lines) $mouse.key
  return
}
on *:signal:mp3start:if (%aamp.mp3stuff) && (%aamp.splay) if (!$window(@mp3-player)) aamp
on *:mp3end:{
  if (%aamp.mp3stuff) if ($script(mp3stuff.mrc)) return
  if (%aamp.cont) aamp.push 9
}
on *:active:*:{
  if ($istok(@mp3-player.title @mp3-player.text @mp3-player.pl.text @mp3-player.pl.state,$target,32)) .timer -o 1 0 window -h $target
  if (%aamp.restore == @mp3-player) unset %aamp.restore
  if ($window(%aamp.restore)) && (=* !iswm %aamp.restore) && ($window(%aamp.restore).state == normal) window -a $+(",%aamp.restore,")
  else aamp.top $active
}
on *:appactive:aamp.top 0
on *:close:@mp3-player.editor:{
  if (!%aamp.ontop) {
    if ($window(@mp3-player)) window -u @mp3-player
    if ($window(@mp3-player.playlist)) window -u @mp3-player.playlist
  }
  if (!%aamp.songWidth) .timeraamp.editor -o 1 0 aamp.update 1
}
on *:close:@mp3-player,@mp3-player.title,@mp3-player.pl.text:closeamp
on *:exit:closeamp 1
on *:unload:{
  closeamp 1
  unset %aamp.*
}

;-------------------------------------------------- jump to file ------------------------------------------------

dialog aampjump {
  title "Saltar a un archivo"
  size -1 -1 194 168
  option dbu
  edit "", 10, 10 14 173 11, autohs
  list 20, 5 35 183 113, sort size hsbar vsbar
  button "&Cancelar", 30, 5 151 183 11, cancel
  box "Buscar por texto", 40, 5 6 183 24
}

on *:dialog:aampjump:init:*:{
  ; list files
}

on *:dialog:aampjump:edit:10:{
  ; update list
}

;-------------------------------------------------- playlist ------------------------------------------------


alias -l aamp.pl.save {
  if ($window(@mp3-player.pl.text)) {
    write -c $m3u #EXTM3U
    savebuf -a @mp3-player.pl.text $m3u
  }
}
alias -l aamp.pl.savexy if ($window(@mp3-player.playlist)) %aamp.plxy = $window(@mp3-player.playlist).x $window(@mp3-player.playlist).y $window(@mp3-player.playlist).w $window(@mp3-player.playlist).h
alias -l aamp.pl.open {
  if (%aamp.mp3stuff) return
  if ($window(@mp3-player.playlist)) {
    window -ar @mp3-player.playlist
    return
  }
  aamp.pl.init
  tokenize 32 %aamp.plxy
  window -zkhndBpf $+ $iif(%aamp.ontop,o) +dL @mp3-player.playlist $1-

  ;update number of lines
  %aamp.pl.lines = $line(@mp3-player.pl.text,0)

  aamp.pl.draw
  drawdot @mp3-player.playlist
  aamp.top @mp3-player.playlist
  window -ar @mp3-player.playlist
}

on *:close:@mp3-player.playlist,@mp3-player.pl.state:aamp.pl.close
alias -l aamp.pl.close {
  .timeraamp.pl* off
  var %playlist = $window(@mp3-player.playlist)
  if (%playlist) aamp.pl.savexy
  if ($window(@mp3-player)) {
    %aamp.plopen = 0
    unset %aamp.snap
  }
  elseif (%playlist) %aamp.plopen = 1
  close -@ @mp3-player.playlist @mp3-player.pl.state
  unset %aamp.pl.*
}

alias -l aamp.pl.init {
  ;if the hidden window isn't open yet, open it.
  if (* !iswm $window(@mp3-player.pl.text)) {
    window -hlk @mp3-player.pl.text
    %aamp.pl.scrollPos = 1
  }
  if (* !iswm $window(@mp3-player.pl.state)) window -hlk @mp3-player.pl.state

  ;return if already initialized
  if (* * * * iswm %aamp.pl.xywh) return
  aamp.pl.setxywh
  aamp.pl.setSkin
}
alias -l aamp.pl.setxywh {
  if (!%aamp.plxy) %aamp.plxy = -1 -1 350 230
  tokenize 32 %aamp.plxy

  var %w = $3, %h = $4, %min.h = 65

  if (%w < 80) %w = 80
  if (%h < %min.h) %h = %min.h
  if ($window(-1).dw < %w) %w = $ifmatch
  if ($window(-1).dh < %h) %h = $ifmatch
  %aamp.plxy = $1-2 %w %h

  %aamp.pl.titlebar = 2 2 $calc(%w - 4) 15
  %aamp.pl.close = $calc(%w - 15) 4 11 11

  var %x = 6, %y = 21, %w = %w - 12, %h = %h - 27, %bar.w = 13, %button.h = 13

  %aamp.pl.border = %x %y %w %h

  ;use extra space when border mode is 3
  if (0 0 isin %aamp.border.edit) {
    inc %x 1
    inc %y 1
    dec %w 2
    dec %h 2
  }
  else {
    inc %x 2
    inc %y 2
    dec %w 4
    dec %h 4
  }

  %aamp.pl.xywh = %x %y %w %h
  %aamp.pl.lines = $line(@mp3-player.pl.text,0)

  if (%bar.w < 8) %bar.w = 8
  if (%button.h < 8) %button.h = 8

  var %text.w = %w - %bar.w
  var %bar.x = $calc(%x + %w - %bar.w)
  var %down.y = $calc(%y + %h - %button.h)

  ;knob doesn't matter when being initialized
  var %knob.y = %y + %button.h
  var %knob.h = 0

  var %pgup.y = %y + %button.h
  var %pgup.h = %knob.y - %pgup.y

  var %pgdn.y = %knob.y + %knob.h
  var %pgdn.h = %down.y - %pgdn.y

  %aamp.pl.xywh = %x %y %w %h
  %aamp.pl.text = %x %y %text.w %h
  %aamp.pl.up = %bar.x %y %bar.w %button.h
  %aamp.pl.pgup = %bar.x %pgup.y %bar.w %pgup.h
  %aamp.pl.knob = %bar.x %knob.y %bar.w %knob.h
  %aamp.pl.pgdn = %bar.x %pgdn.y %bar.w %pgdn.h
  %aamp.pl.down = %bar.x %down.y %bar.w %button.h

  %aamp.pl.showlines = $floor($calc(%h / %aamp.pl.font.h))
}
alias -l aamp.pl.setSkin {
  if (* * * * !iswm %aamp.pl.text) return
  var %r, %g, %b

  %aamp.pl.font = $gettok(%aamp.skin.fonts,9,9)
  %aamp.pl.fontsize = $gettok(%aamp.skin.fonts,10,9)
  %aamp.pl.font.w = $width(?,%aamp.pl.font,%aamp.pl.fontsize) + 1
  %aamp.pl.font.wtime = $width(00:00,%aamp.pl.font,%aamp.pl.fontsize) + 1
  %aamp.pl.font.h = $height(?,%aamp.pl.font,%aamp.pl.fontsize)
  %aamp.pl.color.edit = $gettok(%aamp.skin.colors,19,9)
  %aamp.pl.color.edit2 = $gettok(%aamp.skin.colors,20,9)
  %aamp.pl.color.text = $gettok(%aamp.skin.colors,21,9)
  %aamp.pl.color.text2 = $gettok(%aamp.skin.colors,22,9)
  %aamp.pl.color.bar = $gettok(%aamp.skin.colors,23,9)
  %aamp.pl.color.bar2 = $gettok(%aamp.skin.colors,24,9)
  %aamp.pl.color.knob = $gettok(%aamp.skin.colors,25,9)

  ; --- <grip colors> ------------------------------

  tokenize 44 $rgb($gettok(%aamp.skin.colors,1,9))

  if ($1 < 49) %r = 0
  else %r = $1 - 48
  if ($2 < 49) %g = 0
  else %g = $2 - 48
  if ($3 < 49) %b = 0
  else %b = $3 - 48
  %aamp.pl.color.grip1 = $rgb(%r,%g,%b)

  ;255 - 48 = 207
  if ($1 > 206) %r = 255
  else %r = $1 + 48
  if ($2 > 206) %g = 255
  else %g = $2 + 48
  if ($3 > 206) %b = 255
  else %b = $3 + 48
  %aamp.pl.color.grip2 = $rgb(%r,%g,%b)

  ; --- </grip colors> -----------------------------

  tokenize 32 %aamp.pl.text
  %aamp.pl.showlines = $floor($calc($4 / %aamp.pl.font.h))
}

alias -l aamp.pl.refresh {
  if ($window(@mp3-player.playlist)) {
    %aamp.pl.lines = $line(@mp3-player.pl.text,0)
    aamp.pl.draw
    drawdot @mp3-player.playlist
  }
}

;draw the whole thing
alias -l aamp.pl.draw {
  tokenize 32 %aamp.plxy
  ;3 option.main-border
  if ($gettok(%aamp.skin.options,3,9)) drawbox @mp3-player.playlist %aamp.border.main 0 0 $3-4
  else drawrect -rfn @mp3-player.playlist $gettok(%aamp.skin.colors,1,9) 1 0 0 $3-4

  ;draw grips
  var %x = $3 - 4, %y = $4 - 3, %x2 = $3 - 2, %y2 = $4 - 5, %i = 4
  while (%i) {
    drawline -rn @mp3-player.playlist %aamp.pl.color.grip1 1 %x %y %x2 %y2
    dec %x
    dec %y2
    drawline -rn @mp3-player.playlist %aamp.pl.color.grip1 1 %x %y %x2 %y2
    dec %x
    dec %y2
    drawline -rn @mp3-player.playlist %aamp.pl.color.grip2 1 %x %y %x2 %y2
    dec %x 2
    dec %y2 2
    dec %i
  }

  ;draw the border
  drawbox @mp3-player.playlist %aamp.border.edit %aamp.pl.border
  ;draw the rest
  aamp.pl.draw.titlebar
  aamp.pl.draw.text
  aamp.pl.draw.bar
  aamp.pl.draw.up
  aamp.pl.draw.down
}

alias -l aamp.pl.draw.titlebar {
  if (!$window(@mp3-player.playlist)) return
  var %color.bg = 7, %color.text = 9, %font = tahoma, %fontsize = 11
  if (%aamp.active == 2) var %color.bg = 6, %color.text = 8

  ;draw titlebar
  ;2 titlebar
  tokenize 32 %aamp.pl.titlebar
  drawrect -rfn @mp3-player.playlist $gettok(%aamp.skin.colors,%color.bg,9) 1 $1-4

  ;draw titlebar text
  var %title = $mid($gettok(%aamp.skin.text,2,9),2)
  if (* iswm %title) {
    var %titlepos = $gettok(%aamp.skin.options,2,9)
    if (%titlepos) {
      var %x = $floor($calc(($3 +1-$width(%title,%font,%fontsize))/2+$1))
      if (%x < $1) %x = $1
    }
    else {
      var %x = $1 + 1
      tokenize 32 $1-2 $calc($3 -1) $4
    }
    drawtext -nrc @mp3-player.playlist $gettok(%aamp.skin.colors,%color.text,9) $+(",%font,") %fontsize %x 3 $3 13 %title
  }

  aamp.pl.draw.close
}
alias -l aamp.pl.draw.close {
  var %color, %pressed = $1
  if (%pressed) %color = $gettok(%aamp.skin.colors,13,9)
  else %color = $gettok(%aamp.skin.colors,12,9)

  ;draw button
  if (%pressed) drawbox @mp3-player.playlist %aamp.border.pressed %aamp.pl.close
  else drawbox @mp3-player.playlist %aamp.border.button %aamp.pl.close

  ;draw label
  tokenize 32 %aamp.pl.close
  var %w = $floor($calc(.4*$3)), %h = $floor($calc(.4*$4))
  if (%w < 5) %w = 5
  if (%h < 5) %h = 5
  var %x = $floor($calc(($3 -%w)/2+$1)), %y = $floor($calc(($4 -%h)/2+$2))
  ;5 option.label-move
  if (%pressed) && ($gettok(%aamp.skin.options,5,9)) {
    inc %x
    inc %y
  }
  var %y+h = %y + %h
  drawline -rn @mp3-player.playlist %color 1 %x %y $calc(%x +%w) %y+h
  drawline -rn @mp3-player.playlist %color 1 $calc(%x -1+%w) %y $calc(%x -1) %y+h
}

; $2 = nodraw
alias -l aamp.pl.extinf {
  if ($1 > 0) && ($1 <= %aamp.pl.lines) {
    var %line = $line(@mp3-player.pl.text,$1), %file = $gettok(%line,-1,10)
    if (%aamp.autodead) && (!$isfile(%file)) {
      ; try to find the new location for this file if it has moved
      var %newfile = $aamp.findfile(%file)
      if ($isfile(%newfile)) %file = %newfile
    }
    if (!$isfile(%file)) {
      if (%aamp.autodead) {
        aamp.pl.del-line $1
        ; $2 = nodraw
        aamp.pl.del-cleanup %aamp.pl.scrollPos $2
      }
      elseif (%aamp.dispdead) rline @mp3-player.pl.text $1 $+($chr(10),%file)
      elseif (%line != %file) rline @mp3-player.pl.text $1 %file
    }
    elseif (%aamp.dispID3) || (%aamp.displength) || (%aamp.dispdead) || (%aamp.autodead) {
      var %text = $replace($left($nopath($longfn(%file)),-4),_,$chr(32))
      ; save extended info for this playlist entry
      var %artist = $mp3(%file).artist, %title = $mp3(%file).title
      if (*? ?* iswm %artist %title) %text = %artist - %title
      var %time = $floor($calc($mp3(%file).length / 1000))
      rline @mp3-player.pl.text $1 $+(#EXTINF:,%time,$chr(44),%text,$lf,%file)
    }
    ; $2 = nodraw
    if (!$2) && ($1 >= %aamp.pl.scrollPos) && ($1 <= $calc(%aamp.pl.scrollPos + %aamp.pl.showlines)) {
      aamp.pl.draw.text
      drawdot @mp3-player.playlist
    }
  }
}

; /aamp.pl.update [timer]
alias -l aamp.pl.update {
  if (!$window(@mp3-player.playlist)) return
  if ($1) {
    .timeraamp.pl.update -om %aamp.pl.showlines 200 aamp.pl.update
    return
  }
  if (%aamp.dispID3) || (%aamp.displength) || (%aamp.dispdead) || (%aamp.autodead) {
    var %i = %aamp.pl.scrollPos, %last = %aamp.pl.scrollPos + %aamp.pl.showlines
    ; try to update the first line that has no extinf
    while (%i < %last) && (%i <= %aamp.pl.lines) {
      var %line = $line(@mp3-player.pl.text,%i)
      var %file = $gettok(%line,-1,10)
      ; use chr 10 to signify dead file if dispdead is enabled
      if (!%file) { }
      elseif (%aamp.dispdead) && ($chr(10) isin %line) && (!%aamp.autodead) { }
      elseif (#EXTINF:* iswm %line) { }
      else {
        aamp.pl.extinf %i
        break
      }
      inc %i
    }
    if (%i >= %last) && (%i >= %aamp.pl.lines) .timeraamp.pl.update off
  }
}

alias -l aamp.pl.draw.text {

  var %drawbar = 0
  if (!%aamp.nopltimer) { }
  elseif (%aamp.dispID3) || (%aamp.displength) || (%aamp.dispdead) || (%aamp.autodead) {
    ; get extinf before drawing anything because lines might be deleted due to %aamp.autodead setting
    var %i = 1, %windowline = %aamp.pl.scrollPos
    while (%i <= %aamp.pl.showlines) {
      var %prevtotal = %aamp.pl.lines
      ; update extinf if no extinf and no timer and extinf wanted
      if (#EXTINF:* !iswm $line(@mp3-player.pl.text,%windowline)) {
        ; use $2 to prevent redraw
        aamp.pl.extinf %windowline nodraw
      }
      ; reset loop if line was deleted
      if (%prevtotal != %aamp.pl.lines) var %i = 1, %windowline = %aamp.pl.scrollPos, %drawbar = 1
      else {
        inc %i
        inc %windowline
      }
    }
  }
  if (%drawbar) aamp.pl.draw.bar

  ; set $1- to x y w h
  if (%aamp.pl.lines <= %aamp.pl.showlines) tokenize 32 %aamp.pl.xywh
  else tokenize 32 %aamp.pl.text

  ;clear text portion
  drawrect -rnf @mp3-player.playlist %aamp.pl.color.edit 1 $1-

  ;make sure scrollPos is ok
  if ($calc(%aamp.pl.lines - %aamp.pl.showlines + 1) < %aamp.pl.scrollPos) %aamp.pl.scrollPos = $ifmatch
  if (%aamp.pl.scrollPos !isnum 1-) %aamp.pl.scrollPos = 1

  ;draw lines of text
  var %i = 1, %windowline = %aamp.pl.scrollPos, %xpos = $1 + 1, %ypos = $2, %width = $3 - 1
  var %linewidth, %deadwidth = $calc(%width - %aamp.pl.font.w - 8), %xdead = $calc(%xpos + %width - %aamp.pl.font.w), %time
  while (%i <= %aamp.pl.showlines) {
    var %line = $line(@mp3-player.pl.text,%windowline)
    var %file = $gettok(%line,-1,10)
    var %text = $replace($left($nopath($longfn(%file)),-4),_,$chr(32))
    %time =
    if (%aamp.dispID3) || (%aamp.displength) || (%aamp.dispdead) || (%aamp.autodead) {
      if (#EXTINF:* iswm %line) {
        var %extinf = $gettok(%line,1,10)
        if (%aamp.dispID3) %text = $right(%extinf,$calc(-$pos(%extinf,$chr(44),1)))
        if (%aamp.displength) %time = $gettok($gettok(%extinf,1,44),2,58)
      }
      elseif (!%aamp.nopltimer) aamp.pl.update timer
      if (%aamp.displength) && (%time isnum) %time = $floor($calc((%time / 60) % 100)) $+ : $+ $mid($floor($calc(100 + %time % 60)),-2)
    }
    if ($line(@mp3-player.pl.state,%windowline)) drawrect -nrf @mp3-player.playlist %aamp.pl.color.edit2 1 $1 %ypos $3 %aamp.pl.font.h
    if (* iswm $remove(%text,$chr(32))) {
      %linewidth = %width
      if (%time) {
        var %w = $width(%time,%aamp.pl.font,%aamp.pl.fontsize) + 1
        %linewidth = $calc(%width - %w - 8)
        drawtext -ncr @mp3-player.playlist $iif(%windowline == %aamp.plpos,%aamp.pl.color.text2,%aamp.pl.color.text) $+(",%aamp.pl.font,") %aamp.pl.fontsize $calc(%xpos + %width - %w) %ypos %w %aamp.pl.font.h %time
      }
      elseif (%aamp.dispdead) && (%width >= %aamp.pl.font.w) {
        if ($asc(%line) == 10) {
          ; indicate missing files with '?'
          drawtext -ncr @mp3-player.playlist %aamp.pl.color.text2 $+(",%aamp.pl.font,") %aamp.pl.fontsize %xdead %ypos %aamp.pl.font.w %aamp.pl.font.h ?
          %linewidth = %deadwidth
        }
      }
      drawtext -ncr @mp3-player.playlist $iif(%windowline == %aamp.plpos,%aamp.pl.color.text2,%aamp.pl.color.text) $+(",%aamp.pl.font,") %aamp.pl.fontsize %xpos %ypos %linewidth %aamp.pl.font.h %text
      ;debug
      ;if (%windowline == $floor(%aamp.plpos)) { var %temp = $floor($calc($iif(. !isin %aamp.plpos,.5*,-.5+) %aamp.pl.font.h -.5+%ypos)) | drawline -n @mp3-player.playlist 4 1 $1 %temp $calc($1 +%width) %temp }
    }
    ;need $line().state
    inc %i
    inc %windowline
    inc %ypos %aamp.pl.font.h
  }
}
;aamp.pl.draw.bar [pgup|pgdn|knob]
alias -l aamp.pl.draw.bar {
  ;if bar is disabled, return
  if (%aamp.pl.lines <= %aamp.pl.showlines) return

  var %pressed = $1

  tokenize 32 %aamp.pl.pgup %aamp.pl.down

  ;bar height = down.y - pgup.y
  var %bar.h = $calc($6 - $2)
  drawrect -rnf @mp3-player.playlist %aamp.pl.color.bar 1 $1-3 %bar.h

  ;if knob is pressed, don't calculate the knob height.  It's already been set.
  if (%pressed != knob) {
    ;find height of knob
    var %knob.h = $floor($calc(%bar.h * %aamp.pl.showlines / %aamp.pl.lines))
    ;enforce a minimum height
    if (%knob.h < 8) %knob.h = 8

    ;find y coordinate of knob
    ;round( pgup.y + (pixels not used) * (lines above position) / (lines not shown) )
    var %knob.y = $floor($calc(.5 + $2 + (%bar.h - %knob.h) * (%aamp.pl.scrollPos - 1) / (%aamp.pl.lines - %aamp.pl.showlines)))
    %aamp.pl.knob = $1 %knob.y $3 %knob.h

    ;pgup.h = knob.y - pgup.y
    %aamp.pl.pgup = $1-3 $calc(%knob.y - $2)

    ;pgdn.y = knob.y + knob.h
    var %pgdn.y = %knob.y + %knob.h
    ;pgdn.h = down.y - pgdn.y
    %aamp.pl.pgdn = $1 %pgdn.y $3 $calc($6 - %pgdn.y)

    if (%pressed == pgup) drawrect -rnf @mp3-player.playlist %aamp.pl.color.bar2 1 %aamp.pl.pgup
    if (%pressed == pgdn) drawrect -rnf @mp3-player.playlist %aamp.pl.color.bar2 1 %aamp.pl.pgdn
  }

  ;draw the knob on the bar
  ;7 option.pl-knobborder
  tokenize 32 %aamp.border.button
  if ($gettok(%aamp.skin.options,7,9)) drawbox @mp3-player.playlist 25 $2-5 %aamp.pl.knob
  else drawrect -rfn @mp3-player.playlist $gettok(%aamp.skin.colors,25,9) 1 %aamp.pl.knob
}
alias -l aamp.pl.draw.up {
  if (%aamp.pl.lines <= %aamp.pl.showlines) return

  var %color, %pressed = $1
  if (%pressed) %color = $gettok(%aamp.skin.colors,13,9)
  else %color = $gettok(%aamp.skin.colors,12,9)

  ;draw button
  if (%pressed) drawbox @mp3-player.playlist %aamp.border.pressed %aamp.pl.up
  else drawbox @mp3-player.playlist %aamp.border.button %aamp.pl.up

  ;draw label
  tokenize 32 %aamp.pl.up
  var %lbl.w = $floor($calc($3 / 2))
  if ($calc(%lbl.w % 2) == 0) dec %lbl.w
  var %lbl.dist = $calc((%lbl.w - 1) / 2)
  if ($calc($4 * .25 - 1) < %lbl.dist) %lbl.dist = $floor($ifmatch)
  var %lbl.x = $floor($calc($1 + $3 / 2 - .5 - %lbl.dist))
  var %lbl.y = $floor($calc($2 + $4 / 2 - .5 + %lbl.dist / 2))
  if (%pressed) && ($gettok(%aamp.skin.options,5,9)) {
    inc %lbl.x
    inc %lbl.y
  }
  drawline -rn @mp3-player.playlist %color 1 %lbl.x %lbl.y $calc(%lbl.x + 2 * %lbl.dist) %lbl.y $calc(%lbl.x + %lbl.dist) $calc(%lbl.y - %lbl.dist) %lbl.x %lbl.y
  drawfill -rn @mp3-player.playlist %color %color $calc(%lbl.x + %lbl.dist) $calc(%lbl.y - 1)
}
alias -l aamp.pl.draw.down {
  if (%aamp.pl.lines <= %aamp.pl.showlines) return

  var %color, %pressed = $1
  if (%pressed) %color = $gettok(%aamp.skin.colors,13,9)
  else %color = $gettok(%aamp.skin.colors,12,9)

  ;draw button
  if (%pressed) drawbox @mp3-player.playlist %aamp.border.pressed %aamp.pl.down
  else drawbox @mp3-player.playlist %aamp.border.button %aamp.pl.down

  ;draw label
  tokenize 32 %aamp.pl.down
  var %lbl.w = $floor($calc($3 / 2))
  if ($calc(%lbl.w % 2) == 0) dec %lbl.w
  var %lbl.dist = $calc((%lbl.w - 1) / 2)
  if ($calc($4 * .25 - 1) < %lbl.dist) %lbl.dist = $floor($ifmatch)
  var %lbl.x = $floor($calc($1 + $3 / 2 - .5 - %lbl.dist))
  var %lbl.y = $floor($calc($2 + $4 / 2 - .5 - %lbl.dist / 2))
  if (%pressed) && ($gettok(%aamp.skin.options,5,9)) {
    inc %lbl.x
    inc %lbl.y
  }
  drawline -rn @mp3-player.playlist %color 1 %lbl.x %lbl.y $calc(%lbl.x + 2 * %lbl.dist) %lbl.y $calc(%lbl.x + %lbl.dist) $calc(%lbl.y + %lbl.dist) %lbl.x %lbl.y
  drawfill -rn @mp3-player.playlist %color %color $calc(%lbl.x + %lbl.dist) $calc(%lbl.y + 1)
}

alias -l my.sline {
  ;/my.sline -ar N
  var %flags, %ln = $1
  if (-* iswm %ln) {
    %flags = $1
    %ln = $2
  }
  if (%ln > %aamp.pl.lines) || (%ln !isnum 1-) return
  var %n = $line(@mp3-player.pl.state,0)
  while (%n < %ln) {
    aline @mp3-player.pl.state 0
    inc %n
  }
  if (r isin %flags) rline @mp3-player.pl.state %ln 0
  elseif (a isin %flags) rline @mp3-player.pl.state %ln 1
  else {
    while ($fline(@mp3-player.pl.state,1,1)) rline @mp3-player.pl.state $ifmatch 0
    rline @mp3-player.pl.state %ln 1
  }
}

alias -l aamp.pl.shift {
  var %slines = $1, %shift = $2
  ;move selected lines %shift spaces
  if (%shift < 0) {
    var %ln = $fline(@mp3-player.pl.state,1,1)
    if ($calc(%ln + %shift) < 1) %shift = 1 - %ln
    if (%shift < 0) {
      var %i = 1, %.5 = 0
      if (*.5 iswm %aamp.plpos) {
        inc %aamp.plpos .5
        %.5 = .5
      }
      while (%i <= %slines) {
        var %ln = $fline(@mp3-player.pl.state,1,%i), %newln = %ln + %shift, %text = $line(@mp3-player.pl.text,%ln)
        if (%ln == %aamp.plpos) %aamp.plpos = %newln
        elseif (%ln > %aamp.plpos) && (%newln <= %aamp.plpos) inc %aamp.plpos
        dline @mp3-player.pl.text %ln
        dline @mp3-player.pl.state %ln
        iline @mp3-player.pl.text %newln %text
        iline @mp3-player.pl.state %newln 1
        inc %i
      }
      dec %aamp.plpos %.5
    }
  }
  elseif (%shift > 0) {
    var %ln = $fline(@mp3-player.pl.state,1,%slines), %newln = %ln + %shift
    if (%newln > %aamp.pl.lines) %shift = %aamp.pl.lines - %ln
    if (%shift > 0) {
      var %i = %slines, %.5 = 0
      if (*.5 iswm %aamp.plpos) {
        inc %aamp.plpos .5
        %.5 = .5
      }
      while (%i) {
        var %ln = $fline(@mp3-player.pl.state,1,%i), %newln = %ln + %shift, %text = $line(@mp3-player.pl.text,%ln)
        if (%ln == %aamp.plpos) %aamp.plpos = %newln
        elseif (%ln < %aamp.plpos) && (%newln >= %aamp.plpos) dec %aamp.plpos
        dline @mp3-player.pl.text %ln
        dline @mp3-player.pl.state %ln
        iline @mp3-player.pl.text %newln %text
        var %n = $line(@mp3-player.pl.state,0) + 1
        while (%n < %newln) {
          aline @mp3-player.pl.state 0
          inc %n
        }
        iline @mp3-player.pl.state %newln 1
        dec %i
      }
      dec %aamp.plpos %.5
    }
  }

  inc %aamp.pl.clicked %shift

  if (%moveTo < %aamp.pl.scrollPos) || (%moveTo >= $calc(%aamp.pl.scrollPos + %aamp.pl.showlines)) {
    aamp.pl.scrollTo $iif(%moveTo < %aamp.pl.scrollPos,%moveTo,$calc(%moveTo +1- %aamp.pl.showlines))
    aamp.pl.draw.bar
    .timeraamp.pl -om 0 25 aamp.pl.menu mouse
  }
  else aamp.pl.draw.text
}
alias -l aamp.pl.sort {
  close -@ @mp3-player.temp.sort @mp3-player.temp.text @mp3-player.temp.state
  renwin @mp3-player.pl.state @mp3-player.temp.state
  window -hlk @mp3-player.pl.state
  window -hls @mp3-player.temp.sort
  window -hl @mp3-player.temp.text
  filter -wwc @mp3-player.pl.text @mp3-player.temp.text
  var %n = $line(@mp3-player.temp.text,0), %i = %n, %pos = 0
  while (%i) {
    if ($1) aline @mp3-player.temp.sort $nopath($gettok($line(@mp3-player.temp.text,%i),-1,10)) %i
    else aline @mp3-player.temp.sort $gettok($line(@mp3-player.temp.text,%i),-1,10) %i
    dec %i
  }
  clear @mp3-player.pl.text
  var %i = 1, %.5 = 0
  if (*.5 iswm %aamp.plpos) {
    inc %aamp.plpos .5
    %.5 = .5
  }
  while (%i <= %n) {
    var %temp = $gettok($line(@mp3-player.temp.sort,%i),-1,32)
    if (%temp == %aamp.plpos) %pos = %i
    aline @mp3-player.pl.text $line(@mp3-player.temp.text,%temp)
    aline @mp3-player.pl.state $calc(+$line(@mp3-player.temp.state,%temp))
    inc %i
  }
  %aamp.plpos = %pos - %.5
  close -@ @mp3-player.temp.sort @mp3-player.temp.text @mp3-player.temp.state
  %aamp.pl.scrollpos = 1
  aamp.pl.refresh
}

alias -l aamp.pl.del-line {
  if ($1 == %aamp.plpos) dec %aamp.plpos .5
  elseif ($1 < %aamp.plpos) dec %aamp.plpos
  if ($1 < %aamp.pl.clicked) dec %aamp.pl.clicked
  dline @mp3-player.pl.text $1
  dline @mp3-player.pl.state $1
  dec %aamp.pl.lines
}
; $2 = nodraw
alias -l aamp.pl.del-cleanup {
  ; /aamp.pl.scrollto's $3 = nodraw
  aamp.pl.scrollTo $1 1 $2
  if (!$2) aamp.pl.draw.bar
  aamp.update
}

on *:keydown:@mp3-player.playlist:*:{
  var %keyval = $keyval, %key = $replace(%keyval,38,up,40,down,46,del,13,enter,65,[a]), %mkey = $mouse.key
  if (%key !isnum) && (%aamp.pl.button) aamp.pl.menu uclick
  if (%key isin up down) {
    if (%mkey & 2) {
      var %slines = $calc(+$fline(@mp3-player.pl.state,1,0))
      if (%key == up) aamp.pl.shift %slines -1
      else aamp.pl.shift %slines 1
      aamp.pl.draw.text
    }
    else {
      var %bottom = $calc(%aamp.pl.scrollPos + %aamp.pl.showlines - 1)
      %aamp.pl.clicked = $fline(@mp3-player.pl.state,1,1)
      if (%aamp.pl.clicked !isnum 1-) %aamp.pl.clicked = %aamp.pl.scrollPos
      elseif (%aamp.pl.clicked < %aamp.pl.scrollPos) || (%aamp.pl.clicked > %bottom) %aamp.pl.clicked = %aamp.pl.scrollPos
      else {
        $iif(%key == up,dec,inc) %aamp.pl.clicked
        if (%aamp.pl.clicked < 1) %aamp.pl.clicked = 1
        if (%aamp.pl.clicked > %aamp.pl.lines) %aamp.pl.clicked = %aamp.pl.lines
      }
      if (%aamp.pl.clicked isnum 1-) my.sline %aamp.pl.clicked
      if (%key == up) {
        if (%aamp.pl.clicked < %aamp.pl.scrollPos) {
          aamp.pl.scrollTo %aamp.pl.clicked
          aamp.pl.draw.bar
        }
        else aamp.pl.draw.text
      }
      else {
        if (%aamp.pl.clicked > %bottom) {
          aamp.pl.scrollTo $calc(%aamp.pl.scrollPos + 1)
          aamp.pl.draw.bar
        }
        else aamp.pl.draw.text
      }
    }
  }
  elseif (%key == del) && (%mkey !& 2) {
    %aamp.pl.clicked = $fline(@mp3-player.pl.state,1,1)
    while ($fline(@mp3-player.pl.state,1,1)) {
      aamp.pl.del-line $ifmatch
    }
    if (%aamp.pl.clicked > %aamp.pl.lines) %aamp.pl.clicked = %aamp.pl.lines
    if (%aamp.pl.clicked isnum 1-) my.sline %aamp.pl.clicked
    var %gotopos = %aamp.pl.scrollPos
    if (%aamp.pl.clicked < %aamp.pl.scrollPos) || (%aamp.pl.clicked >= $calc(%aamp.pl.scrollPos + %aamp.pl.showlines)) {
      %gotopos = %aamp.pl.clicked
    }
    aamp.pl.del-cleanup %gotopos
  }
  elseif (%key == enter) {
    if ($fline(@mp3-player.pl.state,1,1)) pl.play $ifmatch
  }
  elseif (%key == [a]) && (%mkey & 2) {
    %aamp.pl.clicked = 1
    clear @mp3-player.pl.state
    var %i = %aamp.pl.lines
    while (%i) {
      aline @mp3-player.pl.state 1
      dec %i
    }
    aamp.pl.draw.text
  }
  else aamp.key %keyval
  drawdot @mp3-player.playlist
}

;mouse events
menu @mp3-player.playlist {
  mouse:aamp.pl.menu mouse
  leave:aamp.pl.menu leave
  sclick:aamp.pl.menu sclick
  dclick:aamp.pl.menu dclick
  uclick:aamp.pl.menu uclick
}
alias -l aamp.pl.menu {
  var %key = $mouse.key, %wx = $$window(@mp3-player.playlist).dx, %wy = $window(@mp3-player.playlist).dy, %dx = $mouse.dx, %dy = $mouse.dy, %mx = %dx - %wx, %my = %dy - %wy
  var %event = $1, %over, %key1 = 0
  if (%event isin sclick dclick) aamp.top @mp3-player.playlist
  if (%key & 1) && (%event != uclick) %key1 = 1

  if ($active != @mp3-player.playlist) var %event = uclick, %key = 0

  tokenize 32 %aamp.pl.xywh %aamp.pl.text %aamp.pl.up %aamp.pl.pgup %aamp.pl.knob %aamp.pl.pgdn %aamp.pl.down %aamp.pl.close %aamp.pl.titlebar
  ;xywh = $1-4
  ;text = $5-8
  ;up = $9-12
  ;pgup = $13-16
  ;knob = $17-20
  ;pgdn = $21-24
  ;down = $25-28
  ;close = $29-32
  ;titlebar = $33-36
  if ($inrect(%mx,%my,$1,$2,$3,$4)) {
    if (%aamp.pl.lines <= %aamp.pl.showlines) %over = text
    elseif (%mx < $9) %over = text
    elseif (%my < $14) %over = up
    elseif (%my < $18) %over = pgup
    elseif (%my < $22) %over = knob
    elseif (%my < $26) %over = pgdn
    else %over = down
  }
  elseif (%mx >= $25) && (%my >= $26) %over = resize
  elseif ($inrect(%mx,%my,$29,$30,$31,$32)) %over = close
  elseif ($inrect(%mx,%my,$33,$34,$35,$36)) %over = titlebar
  elseif (* !iswm %aamp.pl.button) return

  if (text isin %over %aamp.pl.button) {
    ;find out what line was clicked
    var %line = $floor($calc((%my - $6) / %aamp.pl.font.h))
    var %slines = $calc(+$fline(@mp3-player.pl.state,1,0))
  }

  if (%event isin sclick dclick) {
    %aamp.pl.button = %over
    if (%over == text) {
      ; no support for partial line at bottom
      if (%line == %aamp.pl.showlines) {
        unset %aamp.pl.button
        return
      }
      inc %line %aamp.pl.scrollPos
      if (%line > %aamp.pl.lines) {
        unset %aamp.pl.button
        return
      }

      if (%event == dclick) {
        pl.play %line
        unset %aamp.pl.button
        return
      }

      %aamp.pl.moved = %key - 1

      ;need $line().state
      var %state = $calc(+$line(@mp3-player.pl.state,%line)), %flags = -, %newstate = %state

      if (%key & 2) {
        %newstate = 1 - %state
        %flags = %flags $+ a
      }
      elseif (%state == 0) || (%key & 4) {
        %newstate = 1
        my.sline %line
      }

      if (%aamp.pl.clicked !isnum 1-) %aamp.pl.clicked = %line


      ;get min/max for selecting multiple lines w/ shift
      var %min = %aamp.pl.clicked, %max = %min
      if (%min < %line) %max = %line
      else %min = %line
      if (%aamp.pl.lines < %max) %max = %aamp.pl.lines

      if (%key & 4) {
        if (%slines < 0) return
        my.sline %flags %max
        ;make sure rline will work for lines up to %max
        var %n = $line(@mp3-player.pl.state,0)
        while (%n < %max) {
          aline @mp3-player.pl.state 0
          inc %n
        }
        ;loop and select buncha crap
        while (%min < %max) {
          ;mark line as selected
          rline @mp3-player.pl.state %min 1
          inc %min
        }
        aamp.pl.draw.text
        drawdot @mp3-player.playlist
      }
      else {
        %aamp.pl.clicked = %line
        if (%state != %newstate) {
          if (%newstate == 0) %flags = %flags $+ r
          my.sline %flags %line
          aamp.pl.draw.text
          drawdot @mp3-player.playlist
        }
      }
      %aamp.pl.moveFrom = %line
    }
    elseif (%over == knob) {
      %aamp.pl.offset = %my - $18
      .timeraamp.pl -o 0 0 aamp.pl.menu mouse
    }
    elseif (%over == resize) {
      %aamp.plxy = $window(@mp3-player.playlist).dx $window(@mp3-player.playlist).dy $window(@mp3-player.playlist).dw $window(@mp3-player.playlist).dh
      tokenize 32 %aamp.plxy
      %aamp.pl.offset = $calc($3 - %mx) $calc($4 - %my)
      .timeraamp.pl -o 0 0 aamp.pl.menu mouse
    }
    elseif (%over == close) {
      aamp.pl.draw.close
      .timeraamp.pl -o 0 0 aamp.pl.menu mouse
    }
    elseif (%over == titlebar) {
      %aamp.pl.offset = $window(@mp3-player.playlist).x $window(@mp3-player.playlist).y %dx %dy
      .timeraamp.pl -o 0 0 aamp.pl.menu mouse
    }
    else {
      aamp.pl.timercommand
      .timeraamp.pl -om 1 250 aamp.pl.timercommand 1
    }
    return
  }
  elseif (%event isin mouse leave) && (%key1) {
    if (%aamp.pl.button == text) {
      if (%slines < 1) return

      ;      if (%line < -4) %line = -3
      ;      elseif (%line < -2) %line = -2
      ;      elseif (%line < 0) %line = -1

      ;      var %temp = %line - %aamp.pl.showlines
      ;      if (%temp > 4) %line = %aamp.pl.showlines + 2
      ;      elseif (%temp > 2) %line = %aamp.pl.showlines + 1
      ;      elseif (%temp > 0) %line = %aamp.pl.showlines

      var %moveTo = %line + %aamp.pl.scrollPos
      if (%moveTo < 1) %moveTo = 1
      if (%moveTo > %aamp.pl.lines) %moveTo = %aamp.pl.lines
      var %shift = %moveTo - %aamp.pl.moveFrom

      ;shift is the distance you have dragged the mouse
      if (%shift == 0) return

      %aamp.pl.moved = 1
      %aamp.pl.moveFrom = %moveTo

      aamp.pl.shift %slines %shift

      if (%moveTo < %aamp.pl.scrollPos) || (%moveTo >= $calc(%aamp.pl.scrollPos + %aamp.pl.showlines)) {
        aamp.pl.scrollTo $iif(%moveTo < %aamp.pl.scrollPos,%moveTo,$calc(%moveTo +1- %aamp.pl.showlines))
        aamp.pl.draw.bar
        .timeraamp.pl -om 0 25 aamp.pl.menu mouse
      }
      else aamp.pl.draw.text

      drawdot @mp3-player.playlist
    }
    elseif (%aamp.pl.button == knob) {
      var %knob.y = %my - %aamp.pl.offset
      if (%knob.y < $14) %knob.y = $14
      if ($calc($26 - $20) < %knob.y) %knob.y = $ifmatch
      %aamp.pl.knob = $17 %knob.y $19-20
      ;round( 1 + lines_not_shown * pgup.h / pixels_not_used )
      var %scrollTo = $floor($calc(1.5 + (%aamp.pl.lines - %aamp.pl.showlines) * (%knob.y - $14) / ($26 - $14 - $20)))
      aamp.pl.scrollTo %scrollTo
      aamp.pl.draw.bar knob
      drawdot @mp3-player.playlist
    }
    elseif (%aamp.pl.button == resize) {
      tokenize 32 %aamp.pl.offset %aamp.plxy
      var %x = $3, %y = $4, %w = %mx + $1, %h = %my + $2, %max.w = $window(-1).dw - %x, %max.h = $window(-1).dh - %y
      var %xa = $window(@mp3-player).dx, %ya = $window(@mp3-player).dy, %wa = $window(@mp3-player).dw, %ha = $window(@mp3-player).dh

      var %snap, %snap2
      if ($calc(%xa + %wa - %x) > 0) && ($calc(%x + %w - %xa) > 0) {
        if (%y == $calc(%ya + %ha)) {
          %snap = BT
          if ($calc(%x + %w - %xa - %wa + 16) isnum 0-32) var %snap2 = RR, %w = $calc(%xa + %wa - %x)
        }
        elseif ($calc(%y + %h - %ya + 16) isnum 0-32) {
          %snap = TB
          %h = %ya - %y
          if ($calc(%x + %w - %xa - %wa + 16) isnum 0-32) var %snap2 = RR, %w = $calc(%xa + %wa - %x)
        }
      }
      if ($calc(%ya + %ha - %y) > 0) && ($calc(%y + %h - %ya) > 0) {
        if (%x == $calc(%xa + %wa)) {
          %snap = RL
          if ($calc(%y + %h - %ya - %ha + 16) isnum 0-32) var %snap2 = BB, %h = $calc(%ya + %ha - %y)
        }
        elseif ($calc(%x + %w - %xa + 16) isnum 0-32) {
          %snap = LR
          %w = %xa - %x
          if ($calc(%y + %h - %ya - %ha + 16) isnum 0-32) var %snap2 = BB, %h = $calc(%ya + %ha - %y)
        }
      }
      if (%w < 80) {
        %w = 80
        if (%snap == LR) var %snap, %snap2
      }
      if (%h < 65) {
        %h = 65
        if (%snap == TB) var %snap, %snap2
      }
      if (%w > %max.w) %w = %max.w
      if (%h > %max.h) %h = %max.h
      %aamp.snap = $calc(%x - %xa) $calc(%y - %ya) %wa %ha %snap %snap2

      %aamp.plxy = %x %y %w %h
      aamp.pl.setxywh
      var %@w = $window(@mp3-player.playlist).w, %@h = $window(@mp3-player.playlist).h
      if (%@w < %w) drawrect -rnf @mp3-player.playlist $gettok(%aamp.skin.colors,1,9) 1 %@w 0 $calc(%w - %@w) %h
      if (%@h < %h) drawrect -rnf @mp3-player.playlist $gettok(%aamp.skin.colors,1,9) 1 0 %@h %w $calc(%h - %@h)
      window @mp3-player.playlist %aamp.plxy
      aamp.pl.draw
      drawdot @mp3-player.playlist
    }
    elseif (%aamp.pl.button == close) {
      if (%over == close) aamp.pl.draw.close 1
      else aamp.pl.draw.close
      drawdot @mp3-player.playlist
    }
    elseif (%aamp.pl.button == titlebar) {
      tokenize 32 %aamp.pl.offset %aamp.plxy
      var %x = $calc($1 + %dx - $3), %y = $calc($2 + %dy - $4), %max.x = $window(-1).dw - $7, %max.y = $window(-1).dh - $8
      tokenize 32 $snap(@mp3-player.playlist,@mp3-player,%x,%y) $3-
      %x = $1
      %y = $2
      if (%x < 0) %x = 0
      if (%y < 0) %y = 0
      if (%x > %max.x) %x = %max.x
      if (%y > %max.y) %y = %max.y
      %aamp.plxy = %x %y $7-8
      window @mp3-player.playlist %x %y
    }
    elseif (%aamp.pl.pressed != 1) && (%over == %aamp.pl.button) aamp.pl.timercommand 1
    elseif (%over != %aamp.pl.button) aamp.pl.timercommand 0
  }

  ;triggers once when it finds out the button is unclicked
  if (%key1 != 1) && (%aamp.pl.button) {
    if (%aamp.pl.button == text) {
      if (%aamp.pl.moved == 0) && (%key !& 2) {
        my.sline %aamp.pl.clicked
        aamp.pl.draw.text
      }
    }
    elseif (%aamp.pl.button isin up down close) aamp.pl.draw. $+ %aamp.pl.button
    else aamp.pl.draw.bar
    drawdot @mp3-player.playlist
    if (%aamp.pl.button == close) && (%over == close) aamp.pl.close
    unset %aamp.pl.offset %aamp.pl.button %aamp.pl.moved %aamp.pl.pressed
    .timeraamp.pl off
  }
}
alias -l aamp.pl.timercommand {
  if (* !iswm $window(@mp3-player.playlist)) return
  if ($mouse.key !& 1) {
    if (%aamp.pl.button isin up down) aamp.pl.draw. $+ $ifmatch
    else aamp.pl.draw.bar
    unset %aamp.pl.button %aamp.pl.pressed
    .timeraamp.pl off
    drawdot @mp3-player.playlist
    return
  }

  var %cmd = $1
  if (%cmd) {
    .timeraamp.pl -om 0 50 aamp.pl.timercommand
    if (%aamp.pl.pressed) return
  }

  tokenize 32 %aamp.pl. [ $+ [ %aamp.pl.button ] ]

  var %c = %aamp.pl.scrollPos
  if (%aamp.pl.button == up) dec %c 1
  elseif (%aamp.pl.button == pgup) dec %c %aamp.pl.showlines
  elseif (%aamp.pl.button == pgdn) inc %c %aamp.pl.showlines
  elseif (%aamp.pl.button == down) inc %c 1

  if (%cmd != 0) && ($inrect($mouse.x,$mouse.y,$1,$2,$3,$4)) {
    %aamp.pl.pressed = 1
    aamp.pl.scrollTo %c
    if (%aamp.pl.button isin up down) aamp.pl.draw. $+ %aamp.pl.button 1
    aamp.pl.draw.bar %aamp.pl.button
    drawdot @mp3-player.playlist
    return
  }
  %aamp.pl.pressed = 0
  if (%aamp.pl.button isin up down) aamp.pl.draw. $+ %aamp.pl.button
  aamp.pl.draw.bar
  drawdot @mp3-player.playlist
}

; $2 = force draw unless $3;  $3 = nodraw
alias -l aamp.pl.scrollTo {
  if ($1 !isnum) return
  var %x = $round($1,0)
  if ($calc(%aamp.pl.lines - %aamp.pl.showlines + 1) < %x) %x = $ifmatch
  if (%x < 1) %x = 1
  if (%x != %aamp.pl.scrollPos) || ($2) {
    %aamp.pl.scrollPos = %x
    ; $3 = nodraw
    if (!$3) aamp.pl.draw.text
  }
}


;--------------------------------------------------- update -------------------------------------------------

alias -l aamp.echo echo $color(info) -qs $aampversion $+ : $1-
alias aampcheck {
  if ($sock(aampversion)) || ($sock(downloadaamp)) return
  if ($1) %aamp.silentcheck = 1
  else aamp.echo Checking...
  sockopen aampversion pages.cthome.net 80
}
on *:sockopen:aampversion:{
  if ($sockerr) {
    aamp.echo Error: $sock($sockname).wsmsg
    return
  }
  sockwrite -n $sockname GET /pdufilie/versions.txt HTTP/1.0
  sockwrite -n $sockname Accept: */*
  sockwrite -n $sockname Host: pages.cthome.net
  sockwrite -n $sockname
}
on *:sockread:aampversion:{
  if ($sockerr) {
    aamp.echo Error: $sock($sockname).wsmsg
    return
  }
  var %read, %this = $aampversion(1)
  while (1) {
    sockread %read
    tokenize 32 %read
    ; script version mirc
    if ($1 == aamp) {
      if ($2 != %this) {
        if ($3 > $version) {
          aamp.echo New version: $2 $+ , requires mIRC v $+ $3 - http://www.mirc.com/get.html
          if (!%aamp.nocheck) {
            %aamp.nocheck = 1
            aamp.echo Automatic version check has been disabled.
          }
          return
        }
        aamp.echo New version: $+([,$2,])
        if (%aamp.noinstall) aamp.echo Type /downloadaamp
        ; need to use a timer due to a bug in mIRC 6.14
        else .timeraamp.download -o 1 0 downloadaamp
      }
      elseif (!%aamp.silentcheck) aamp.echo No new version.
    }
    if (!$sock($sockname)) || ($sockerr) || (!$sockbr) return
  }
}
on *:sockclose:aampversion:unset %aamp.silentcheck
alias -l dlwin {
  var %@ = @Downloading argh-amp
  if ($window(%@).type != picture) {
    close -@ %@
    window -BhaCdfopk +Ldf %@ -1 -1 176 24
  }
  drawrect -frn %@ 0 0 0 0 176 24
  if (%aamp.dlb) drawrect -rn %@ %aamp.dlb 0 0 0 176 24
  if ($calc(174 * $sock(downloadaamp).rcvd / %aamp.dl)) drawrect -frn %@ 7368816 0 1 1 $ifmatch 22
  drawtext -rn %@ 12632256 Fixedsys 15 8 4 Downloading argh-amp
  drawpic %@
}
alias -l movedlwin {
  if ($window(@Downloading argh-amp)) {
    window @downloading argh-amp $calc($mouse.dx -$1) $calc($mouse.dy -$2)
    if ($mouse.key & 1) .timeraampdlwin -o 1 0 movedlwin $1-
  }
}
menu @Downloading argh-amp {
  sclick:{
    movedlwin $calc($mouse.dx -$window(@Downloading argh-amp).x) $calc($mouse.dy -$window(@Downloading argh-amp).y)
  }
  &Cancel:{
    close -@ @Downloading argh-amp
    sockclose downloadaamp
  }
}
on *:close:@Downloading argh-amp:sockclose downloadaamp
alias downloadaamp {
  sockclose aampversion
  if ($sock(downloadaamp)) || ($timer(installaamp)) return
  aamp.echo Downloading...
  sockopen downloadaamp pages.cthome.net 80
}
on *:sockopen:downloadaamp:{
  if ($sockerr) {
    aamp.echo Error: $sock($sockname).wsmsg
    return
  }
  write -c $+(",$scriptdir,aamp.exe")
  %aamp.dlb = 0
  %aamp.dl = 1
  sockwrite -n $sockname GET /pdufilie/irc/aamp.exe HTTP/1.0
  sockwrite -n $sockname Accept: */*
  sockwrite -n $sockname Host: pages.cthome.net
  sockwrite -n $sockname
}
on *:sockread:downloadaamp:{
  if ($sockerr) {
    aamp.echo Error: $sock($sockname).wsmsg
    return
  }
  var %exe = $+(",$scriptdir,aamp.exe"), %read
  while (%aamp.dlb !isnum 1-) {
    sockread -f %read
    tokenize 32 %read
    if ($sockbr) {
      if ($1 == Content-Length:) %aamp.dl = $2
      elseif (!$1-) {
        %aamp.dlb = $rand(1,16777215)
        break
      }
    }
    else return
  }
  while (1) {
    sockread &d
    bwrite %exe -1 -1 &d
    dlwin
    if (!$sockbr) return
  }
}
on *:sockclose:downloadaamp:install
alias -l install {
  close -@ @Downloading argh-amp
  unset %aamp.dl*
  var %exe = $+(",$scriptdir,aamp.exe")
  if ($isfile(%exe)) {
    aamp.echo Installing...
    .timeraamperror -o 1 0 echo $color(i) -s *** Error occured while downloading argh-amp.
    run %exe
    .timeraamperror off
    _load 0
  }
}
alias -l _load {
  if (!$isfile($+($scriptdir,aamp.exe))) || ($1 > 25) {
    closeamp
    .timer -o 1 0 aamp.init
    .reload -rs $+(",$script,")
  }
  else .timerinstallaamp -om 1 200 _load $calc(1+$1)
}

;--------------------------------------------------- skin mod -------------------------------------------------

;layout
; /aamp.mod double
; /aamp.mod scale <scale>
; /aamp.mod flipv
; /aamp.mod fliph
;colors
; /aamp.mod rotate
; /aamp.mod swap
; /aamp.mod gray
; /aamp.mod invert
; /aamp.mod gamma <increment>
; /aamp.mod red <increment>
; /aamp.mod green <increment>
; /aamp.mod blue <increment>
; /aamp.mod red+ <increment>
; /aamp.mod green+ <increment>
; /aamp.mod blue+ <increment>
alias aamp.mod {
  close -@ @mp3-player.editor
  if (double isin $1) tokenize 32 scale 2
  if (scale isin $1) && ($calc($2) isnum) && ($2) {
    var %i = 1, %scale = $calc($2)
    while (%i <= 16) {
      tokenize 32 $gettok(%aamp.skin.coords,%i,9)
      var %temp
      while ($1 isnum) {
        %temp = %temp $int($calc($1 * %scale))
        tokenize 32 $2- 
      }
      setskin coords %i %temp
      inc %i
    }
    %i = 2
    while (%i <= 10) {
      setskin fonts %i $int($calc($gettok(%aamp.skin.fonts,%i,9) * %scale))
      inc %i 2
    }
    unset %aamp.snap
  }
  elseif (flip isin $1) {
    ; rect 2-14 xxyywwhh
    ; bar&knob 15-16 xxyywwhhwwhh
    var %i = 2, %op = $1, %wh = $gettok(%aamp.skin.coords,1,9), %w = $gettok(%wh,3,32), %h = $gettok(%wh,4,32)
    while (%i < 17) {
      tokenize 32 $gettok(%aamp.skin.coords,%i,9)
      if (h isin %op) tokenize 32 $calc(%w -$1 -$3) $2-
      else tokenize 32 $1 $calc(%h -$2 -$4) $3-
      setskin coords %i $1-
      inc %i
    }
    if (h isin %op) {
      ; fix title position
      var %title = $mid($gettok(%aamp.skin.text,1,9),2), %titlepos = $gettok(%aamp.skin.options,1,9)
      if (%titlepos == 0) {
        while ($left(%title,1) ==  ) %title = $mid(%title,2) $+  
      }
      elseif (%titlepos == 2) {
        while ($right(%title,1) ==  ) %title =   $+ $left(%title,-1)
      }
      setskin text 1   $+ %title
      setskin options 1 $calc(2-%titlepos)
      ; swap prev(5) & next(9) if at same y position
      var %5 = $gettok(%aamp.skin.coords,5,9), %9 = $gettok(%aamp.skin.coords,9,9)
      if ($gettok(%5,2,32) == $gettok(%9,2,32)) {
        setskin coords 5 %9
        setskin coords 9 %5
      }
      ; swap play(6) & stop(8) if at same y position
      var %6 = $gettok(%aamp.skin.coords,6,9), %8 = $gettok(%aamp.skin.coords,8,9)
      if ($gettok(%6,2,32) == $gettok(%8,2,32)) {
        setskin coords 6 %8
        setskin coords 8 %6
      }
    }
  }
  else {
    ;colors 1-25
    var %i = 1, %op = $1, %arg = $2
    while (%i <= 25) {
      tokenize 44 $rgb($gettok(%aamp.skin.colors,%i,9))
      if (rotate isin %op) tokenize 32 $3 $1 $2
      elseif (swap isin %op) tokenize 32 $3 $2 $1
      elseif (gray isin %op) {
        var %c = $floor($calc(+($1 + $2 + $3)/3))
        tokenize 32 %c %c %c
      }
      elseif (invert isin %op) tokenize 32 $calc(255-$1) $calc(255-$2) $calc(255-$3)
      elseif (gamma isin %op) && (%arg isnum) {
        %arg = $int(%arg)
        tokenize 32 $calc(%arg + $1) $calc(%arg + $2) $calc(%arg + $3)
      }
      elseif ($left(%op,1) isin rgb) && (%arg isnum) {
        var %tok = $pos(rgb,$left(%op,1),1)
        if ($1 != $2) || ($2 != $3) || (+ isin %op) tokenize 32 $puttok($1-,$calc($ [ $+ [ %tok ] ] + $int(%arg)),%tok,32)
      }
      setskin colors %i $calc(+$rgb($1,$2,$3))
      inc %i
    }
  }
  %aamp.* = 1
  aamp.draw
}

;--------------------------------------------------- eof -------------------------------------------------
