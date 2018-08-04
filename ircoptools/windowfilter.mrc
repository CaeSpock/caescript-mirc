;*********** windowfilter.mrc 2.0 (07-Apr-07) - Created by alaskaguy ( using code from Stevie-O & Hammer, with help from Micki ) ************

;***  WARNING: This script requires version 1.4 or later of massakill-fast.mrc to function properly when using "Process for AKills"!

;***  Note: You MUST have aHa's MassAKill script loaded to use any of the "Process for AKills" selections!!!
;***  AND this script must be loaded after the MassAKill script...
;***  Do NOT test-click any of the "Auto AKill Start" selections!! ONLY click these if you really mean it. :)  

;****************      INSTRUCTIONS:
;***********  WARNING: Make sure you are in the window you intend to be in when you use ANY selections in these popups.
;***********
;***********  1) "Filter this Window" - Highlight the string within the window that you wish to filter for, right-click, select "Filter this Window", click "OK"
;***********      In the resulting @Filtered* window, you can then use other windowfilter.mrc popup choices to take action
;***********      Filter then Clear this Window - does the above then clears the source window
;***********
;***********  2) "Filter Lines Out" - Filters source window to destination window, removing all lines which match the string you specify for exclusion 
;***********
;***********  3) "Copy All" - does exactly what it says. Copies the entire contents of the active window buffer to the clipboard.
;***********       If you do "Copy All" in a window with a large buffer, expect mIRC to freeze while it's copying
;***********
;***********  4) "Copy Selected Lines" - Copies the selected lines of the active window listbox to the clipboard.
;***********
;***********  5) "Process for AKills" - Will make use of aHa's Mass AKill script to process the window's contents for an AKill run
;***********     a)  You may select "Manual AKill Start" which does all processing for MassAKills EXCEPT clicking "Start Mass AKill" in that dialog
;***********          Then YOU have to click "Start Mass AKill" in the massakill-fast.mrc dialog, and make any other needed checkbox selections
;***********     b)  Alternatively you may use one of the "Auto AKill Start" selections
;***********           In this case, YOU are responsible for the consequences of being in the wrong window, etc!
;***********
;***********  6) "Auto AKill Start" - Selections under this will do ALL processing, including starting the Mass AKill run!
;***********     a)  "exp/fldhst" - Ticks proper checkboxes in ccc.akill dialog, and sets comments to "Compromised Hosts used in floodnet"
;***********     b)  "exp/comp" - Ticks proper checkboxes in ccc.akill dialog, and sets comments to "Compromised Hosts"
;***********     c) "exp/clones" - Ticks proper checkboxes in ccc.akill dialog, and sets comments to "Clones / Channel Fillers"
;***********     d) "Compose" - Ticks proper checkboxes in ccc.akill dialog, and sets comments to "See AutoKill reason"
;***********
;***********  7) "Load File to Filter" -  Allows you to pull a mIRC log file into a window buffer for filter processing
;***********  
;***********  8) "Load Clipboard to Filter" -  Allows you to clipboard into a window buffer for filter processing
;*********** 
;***********  9) "Save Buffer to File" - Allows you to save a filtering results window to a file for later use
;***********  
;****************      END OF INSTRUCTIONS

;****************      CHANGES
;***********  Version 2.0 (07-Apr-07) alaskaguy
;*********** 
;***********  Added Regex searches. Currently, special characters need {}[]|\() need to be to escaped with a \ in the string provided to the search. 
;***********  Optimized various while loops
;***********  Reworked wf.dofilter alias so that it is more flexible and usable for more search tasks
;***********  Fixed ftw alias so it accepts a command line argument OR pops up the dialog requesting data
;***********  
;*********** 
;*********** 
;*********** 
;*********** 
;***********  Version 1.9 (03/06/2005) alaskaguy
;***********  
;***********  Added  "Filter Window's Active LogFile" selection - allows you to filter logfile of source window rather than just the window's contents. You can /flf "string" to do this as well.
;***********  Added  "Filter All LogFiles for Window" selection - allows you to filter all logfiles of source window rather than just the window's contents. You can /flfw "string" to do this as well.
;***********  Added  "Filter All LogFiles" selection - allows you to filter all *.log files in mIRC folder. You can /flfa "string" to do this as well. This one is resource intensive and takes time!
;*********** 
;***********  Version 1.8 (01/28/2005) alaskaguy
;***********  
;***********  Added  "Filter Lines Out" selection - allows you to filter source window to destination window, *excluding* lines matching the supplied string, results show all else
;***********  
;***********  Version 1.7 (12/29/2004) alaskaguy
;***********  
;***********  Added "Copy Selected Lines" popup. Copies selected lines from a window if it is a listbox window.
;***********  Added "Load Clipboard to Filter" popup. This is good for say, copying logs from an AKill posting on the web, then loading into a window for analysis/filtering
;***********  Slightly changed popup order & structuring
;***********  Moved /fch and /ffn aliases to teamwork.mrc
;***********

;***********  DO NOT EDIT BELOW THIS LINE!! (or you accept the consequences)
menu status,query,channel,@* {
  -
  Filter Selections
  .Filter this Window
  ..String Match: ftw
  ..Regex Match: set %wf.filter.regex ON | ftw 
  .Filter then Clear this Window: set %wf.clear $active | wf.dofilter | /clear %wf.clear
  .Filter Window's Active LogFile: flf $$input(Enter string to filter window's logfile for:, eq, String to filter Window's LogFile for, $+($cb(1)))
  .Filter All LogFiles for Window: flfw $$input(Enter string to filter window's logfiles for:, eq, String to filter Window's LogFiles for, $+($cb(1)))
  .Filter All LogFiles: flfa $$input(Enter string to filter all logfiles for:, eq, String to filter all LogFiles for, $+($cb(1)))
  .Filter All Open Windows
  ..String Match: faw $$input(Enter string to filter all open windows for:, eq, String to filter all Open Windows for, $+($cb(1)))
  ..Regex Match: fawg $$input(Enter string to filter all open windows for:, eq, String to filter all Open Windows for, $+($cb(1)))
  .Filter Lines Out
  ..String Match: set %wf.filter.exclude ON | ftw 
  ..Regex Match: set %wf.filter.regex ON | set %wf.filter.exclude ON | ftw
  Copy Selections
  .Copy All: var %x = 0 | clipboard | var %f = $line($active, 0) | while (%x < %f) { inc %x | clipboard -a $strip($line($active, %x)) $+ $crlf }
  ;  .Copy All: var %x = 0 | clipboard | filter -wkb $active wf.clip *
  .Copy Selected Lines: var %x = 0 | clipboard | var %l = $sline($active, 0) | while (%x < %l) { inc %x | clipboard -a $strip($sline($active, %x)) $+ $crlf }
  Load Selections  
  .Load File to Filter:{
    if !$window(@filter-logs) { window -bek @filter-logs fixedsys 9 }
    clear @filter-logs
    .loadbuf 500000 @filter-logs $+(",$sfile($logdir, Select the log file to load,Load),")
    .filter -wwcb @filter-logs @filter-logs 
  }
  .Load Clipboard to Filter:{
    if !$window(@filter-logs) { window -bek @filter-logs fixedsys 9 }
    clear @filter-logs
    var %y = 1 | var %r = $cb(0) | while (%y < %r) { aline -np @filter-logs $strip($cb(%y)) | inc %y }
  }
  Miscellaneous
  .Routing Notices: faw routing
  .Gecos Clone Warnings: faw +gecos clones
  .VHost Clone Warnings: faw vhost clones
  .Service Flooding: faw Services is being flooded by
  .Potential Clones Channels: faw [ #*% ] 
  Save Buffer to File: .savebuf 500000 $active " $+ $sfile($+($logdir,$active,$chr(45),$date(yyyy),$chr(45),$date(mm),$chr(45),$date(dd),$chr(45),$replace($time,$chr(58),$chr(45)),.txt), Select file to save to, Save) $+ "
  $iif($script(massakill-fast.mrc) && (@*-filtered iswm $active || @*-logfile iswm $active), Process for AKills)
  .Manual AKill Start: {
    if ($dialog(ccc.akill) == $null) { dialog -md ccc.akill ccc.akill } {
      wf.process
    }
  }
  .Auto AKill Start
  ..exp/fldhst: {
    if ($dialog(ccc.akill) == $null) { dialog -md ccc.akill ccc.akill | ccc.reset.channels } {
      wf.process
      did -c ccc.akill 395 | did -u ccc.akill 396,397,398,399
      did -c ccc.akill 390 | did -u ccc.akill 391
      did -c ccc.akill 1304 | did -u ccc.akill 142 | did -mr ccc.akill 1202
      did -r ccc.akill 745 | did -a ccc.akill 745 Compromised Hosts used in floodnet
      wf.doakillrun
    }
  }
  ..exp/comp: { 
    if ($dialog(ccc.akill) == $null) { dialog -md ccc.akill ccc.akill | ccc.reset.channels } {
      wf.process
      did -c ccc.akill 396 | did -u ccc.akill 395,397,398,399
      did -c ccc.akill 390 | did -u ccc.akill 391
      did -c ccc.akill 1304 | did -u ccc.akill 142 | did -mr ccc.akill 1202
      did -r ccc.akill 745 | did -a ccc.akill 745 Compromised Hosts
      wf.doakillrun
    }
  }
  ..exp/clones: {
    if ($dialog(ccc.akill) == $null) { dialog -md ccc.akill ccc.akill | ccc.reset.channels } {
      wf.process
      did -c ccc.akill 397 | did -u ccc.akill 395,396,398,399
      did -c ccc.akill 390 | did -u ccc.akill 391
      did -c ccc.akill 1304 | did -u ccc.akill 142 | did -mr ccc.akill 1202
      did -r ccc.akill 745 | did -a ccc.akill 745 Clones / Channel Fillers
      wf.doakillrun
    }
  }
  ..exp/ma: {
    if ($dialog(ccc.akill) == $null) { dialog -md ccc.akill ccc.akill | ccc.reset.channels } {
      wf.process
      did -c ccc.akill 398 | did -u ccc.akill 395,396,397,399
      did -c ccc.akill 390 | did -u ccc.akill 391
      did -c ccc.akill 1304 | did -u ccc.akill 142 | did -mr ccc.akill 1202
      did -r ccc.akill 745 | did -a ccc.akill 745 MassAds - exploited
      wf.doakillrun
    }
  }
  ..Compose: {
    if ($dialog(ccc.akill) == $null) { dialog -md ccc.akill ccc.akill | ccc.reset.channels } {
      wf.process
      did -c ccc.akill 399 | did -u ccc.akill 395,396,397,398
      did -c ccc.akill 390 | did -u ccc.akill 391
      did -c ccc.akill 1304 | did -u ccc.akill 142 | did -mr ccc.akill 1202
      did -r ccc.akill 745 | did -a ccc.akill 745 See AutoKill reason
      wf.doakillrun
    }
  }
  -
}

alias wf.dofilter {
  ;  var %mask = $+($iif(%wf.filter.regex = ON,$chr(46)),$chr(42),$$input(Please enter the mask of the information you want $&
    ;    to search for and filter on:, eq, Filtering $active, $strip($cb(1))),$iif(%wf.filter.regex = ON,$chr(46)),$chr(42))
  var %mask = $+($iif(%wf.filter.regex = ON,$chr(46)),$chr(42),$iif($1- != $null, $1-, $$input(Please enter the mask of the information you want $&
    to search for and filter on:, eq, Filtering $active, $strip($cb(1)))),$iif(%wf.filter.regex = ON,$chr(46)),$chr(42))
  var %target = $+($iif(@* !iswm $active,@), $active, -filtered)
  var %active = $active
  var %flags = $eval($+(-ww,$iif(%wf.filter.exclude = ON,x),$iif(%wf.filter.regex = ON,g),pb) $active,2)
  if $active == Status Window { 
    %target = @Status Window-filtered 
    %flags = $+(-sw,$iif(%wf.filter.exclude = ON,x),$iif(%wf.filter.regex = ON,g),pb)
  }
  if !$window(%target) { window -bekg0 %target }
  filter %flags %target %mask
  echo 2 -t %target $filtered $iif(%wf.filter.regex = ON,regex,string) matches found $iif(%wf.filter.exclude = ON,excluding,for) %mask in %active
  set %wf.filter.exclude OFF | set %wf.filter.regex OFF
}

alias wf.prep.mak.dialog {
  if ($dialog(ccc.akill) == $null) { dialog -md ccc.akill ccc.akill | ccc.reset.channels } {
    wf.process
    did -c ccc.akill %wf.mak.dialog.click | did -u ccc.akill %wf.mak.dialog.unclick
    did -mr ccc.akill %wf.mak.dialog. | did -r ccc.akill %wf.mak.dialog. | did -a ccc.akill %wf.mak.dialog. %wf.mak.dialog.reason
    wf.doakillrun
  }
}

alias wf.process {
  filter -wfcb $active temp.txt * | filter -wocb $active ccc.akill 1205 *
  echo -a 4 Mass AKill: 12 Copied $filtered filter results to temp.txt and Mass AKill dialog logs pane 
  dialog -v ccc.akill
  ccc.readtemp
}

alias wf.doakillrun {
  ccc.doakill.run
}

alias flf {
  var %z = $active | var %y = $1-
  if !$window(@filter-logfile) { window -bek @filter-logfile fixedsys 9 }
  set %filter.start $ctime
  .filter -fwcb $window(%z).logfile @filter-logfile $+($chr(42),%y,$chr(42)) 
  tokenize 58 $duration($calc($ctime - %filter.start),3)
  echo @filter-logfile $filtered results matching $+($chr(42),%y,$chr(42)) found in $window(%z).logfile $+($chr(40),Search Duration) - $iif($1 != 0, $1 hrs )  $iif($2 != 0, $2 mins ) $iif($3 != 0, $3 secs) $+ $chr(41)
}

alias flfw {
  var %z = $remove($active,@) | var %y = $1-
  if !$window(@filter-logfile) { window -bek @filter-logfile fixedsys 9 }
  clear @filter-logfile
  echo -s Please be patient, this search may take a few minutes...
  set %filter.start $ctime
  ; Old version of next line:   set %logfile.count $findfile($mircdir\, $+($chr(42),$gettok(%z,1,32),$chr(42)), 0, 20, .filter -fwb $1- @filter-logfile $+($chr(42),%y,$chr(42)) ) 
  set %logfile.count $findfile($mircdir\, $+($chr(42),$gettok(%z,1,32),$chr(42)), 0, 20, .filter -fwb $1- @filter-logfile $+($chr(42),%y,$chr(42)) )  
  tokenize 58 $duration($calc($ctime - %filter.start),3)
  echo @filter-logfile $line(@filter-logfile,0) lines matching $+($chr(42),%y,$chr(42)) found in %logfile.count files $+($chr(40),Search Duration) - $iif($1 != 0, $1 hrs )  $iif($2 != 0, $2 mins ) $iif($3 != 0, $3 secs) $+ $chr(41)
}

alias flfa {
  var %y = $1-
  if !$window(@filter-logfile) { window -bek @filter-logfile fixedsys 9 }
  clear @filter-logfile
  echo -s Please be patient, this search may take a few minutes...
  set %filter.start $ctime
  ; Old version of next line:  set %logfile.count $findfile($logdir\, *.log, 0, 20, .filter -fwb $1- @filter-logfile $+($chr(42),%y,$chr(42)) ) 
  set %logfile.count $findfile($mircdir\, *.log, 0, 20, .filter -fwb $1- @filter-logfile $+($chr(42),%y,$chr(42)) )  
  tokenize 58 $duration($calc($ctime - %filter.start),3)
  echo @filter-logfile $line(@filter-logfile,0) lines matching $+($chr(42),%y,$chr(42)) found in %logfile.count files $+($chr(40),Search Duration) - $iif($1 != 0, $1 hrs )  $iif($2 != 0, $2 mins ) $iif($3 != 0, $3 secs) $+ $chr(41)
}

alias ftw {
  wf.dofilter $1-
}

alias faw { 
  var %window.count = $window(*,0) | var %window.no = 0 | var %y = $1- |  var %filter.start = $ctime
  if !$window(@filter-logfile) { window -bek @filter-logfile fixedsys 9 } | clear @filter-logfile
  while %window.no < %window.count { inc %window.no 
    if (links isin $window(*,%window.no)) || (channels isin $window(*,%window.no)) || ($window(*,%window.no).type == chat) { return }
    .filter $iif(%window.no == 1, -swb, -wwb $window(*,%window.no)) @filter-logfile $+($chr(42),%y,$chr(42)) 
  }
  tokenize 58 $duration($calc($ctime - %filter.start),3)
  echo @filter-logfile $line(@filter-logfile,0) results matching $+($chr(42),%y,$chr(42)) found in %window.count open windows. $+($chr(40),Search Duration) - $iif($1 != 0, $1 hrs )  $iif($2 != 0, $2 mins ) $iif($3 != 0, $3 secs) $+ $chr(41)
}

alias fawg { 
  var %window.count = $window(*,0) | var %window.no = 0 | var %y = $1- |  var %filter.start = $ctime
  if !$window(@filter-window-regex) { window -bek @filter-window-regex fixedsys 9 } | clear @filter-window-regex
  while %window.no < %window.count { inc %window.no 
    if (links isin $window(*,%window.no)) || (channels isin $window(*,%window.no)) || ($window(*,%window.no).type == chat) { return }
    .filter $iif(%window.no == 1, -swbg, -wwbg $window(*,%window.no)) @filter-window-regex $+($chr(46),$chr(42),%y,$chr(46),$chr(42)) 
  }
  tokenize 58 $duration($calc($ctime - %filter.start),3)
  echo @filter-window-regex $line(@filter-window-regex,0) results matching $+($chr(42),%y,$chr(42)) found in %window.count open windows. $+($chr(40),Search Duration) - $iif($1 != 0, $1 hrs )  $iif($2 != 0, $2 mins ) $iif($3 != 0, $3 secs) $+ $chr(41)
}

alias wf.clip {
  clipboard -an $1-
}

alias test.regexp.escape { wf.regexp.escape.special($1-) }

alias wf.regexp.escape.special {
  var %s = $1-
  set %s $replace(%s,$chr(92),$+($chr(92),$chr(92)))
  set %s $replace(%s,$chr(63),$+($chr(92),$chr(63)))
  set %s $replace(%s,$chr(42),$+($chr(92),$chr(42)))
  set %s $replace(%s,$chr(43),$+($chr(92),$chr(43)))
  set %s $replace(%s,$chr(46),$+($chr(92),$chr(46)))
  set %s $replace(%s,$chr(5),$+($chr(92),$chr(5)))
  set %s $replace(%s,$chr(123),$+($chr(92),$chr(123)))
  set %s $replace(%s,$chr(125),$+($chr(92),$chr(125)))
  set %s $replace(%s,$chr(91),$+($chr(92),$chr(91)))
  set %s $replace(%s,$chr(93),$+($chr(92),$chr(93)))
  set %s $replace(%s,$chr(40),$+($chr(92),$chr(40)))
  set %s $replace(%s,$chr(41),$+($chr(92),$chr(41)))
  return %s
}

alias SF12 retest
alias retest {
  set %retest.regex $input(Regular Expression,e,RegExp Test,%retest.regex)
  set %retest.data $input(Raw Data,e,RegExp Test,%retest.data)
  echo -tmga --- RegExp Test ---
  echo -tmga RegExp: %retest.regex
  echo -tmga Data: %retest.data
  if ($regex(%retest.data,%retest.regex)) {
    echo -tmga Match!
    var %g 1
    while ($regml(%g)) {
      echo -tmga Group ( $+ %g $+ ): $ifmatch
      inc %g
    }
    if (%g == 1) echo -tmga 4! no groups found
  }
  else echo -tmga 4! no matches found
  echo -tmga --- * ---
}
