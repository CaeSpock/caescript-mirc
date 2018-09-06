; IRCopTools 7.1b1
; - part of CaeScript 7.1b1
; by CaeSpock 
;- More Info
;  http://www.caespock.org/ircsoftware/
;
; #### REMOTES ####                                                                                                 
;
on *:LOAD:{
  .set %version.ircoptools IRCopTools 7.1b1
  .load -rs " $+ $scriptdir $+ windowfilter.mrc $+ "
  if ($version >= 6.03 ) {
    .echo -s 2[N] 5-----------------------------------------
    .echo -s 2[N] %version.ircoptools loaded ....
    .echo -s 2[N] 5-----------------------------------------
    if $version >= 6.2 {
      if $toolbar(ircoptools) == $null {
        toolbar -i0n10z1 ircoptools "Configure IRCopTools" ircoptools\ircoptools.icl /configure
      }
      if $toolbar(ircophelp) == $null {
        toolbar -i0n9z1 ircophelp "IRCopTools help" ircoptools\ircoptools.icl /help.ircoptools
      }
    }
    .notify OperServ Operators Service
    .notify OperServ2 Operators Backup Service
    .notify RootServ Root Operators Service
    .disable #sping
    .disable #whoreply
    .disable #whoreply2
    .disable #whoreply3
    .disable #whoreply4
    .disable #whoreply5
    .disable #clscan
    .disable #statsl
    .disable #statsl2
    ; ### Open the common windows 
    .createwindows
    ;
    ; #### Variable asignment starting on ircoptools\ircoptools.ini
    ;
    if ( !$isfile( $mircdir $+ ircoptools\ircoptools.ini) ) {
      .echo -s 2[N] %version.ircoptools wasnt configured .... configuring ....
      .echo -s 2[N] Configuration file not found . . .
      .echo -s 2[N] Generating new configuration based on the default values . . .
      .copy -o " $+ $mircdir $+ ircoptools\default-ircoptools.ini" " $+ $mircdir $+ ircoptools\ircoptools.ini"
    }
    .set %akill.reason $readini ircoptools\ircoptools.ini akills reason
    .set %akill.time $readini ircoptools\ircoptools.ini akills time
    .set %reason.clonelist3 %akill.reason
    .set %time.clonelist3 %akill.time
    .set %reason.clonelist4 %akill.reason
    .set %time.clonelist4 %akill.time
    .set %reason.clonelist5 %akill.reason
    .set %time.clonelist5 %akill.time
    .set %akill.cmd $readini ircoptools\ircoptools.ini akills command
    .set %akill.service $readini ircoptools\ircoptools.ini akills service
    .set %akill.default $readini ircoptools\ircoptools.ini akills default
    .set %akill.afs $readini ircoptools\ircoptools.ini akills afs
    .set %akill.aps $readini ircoptools\ircoptools.ini akills aps
    .set %akill.ahp $readini ircoptools\ircoptools.ini akills ahp
    .set %akill.ahp2 $readini ircoptools\ircoptools.ini akills ahp2
    .set %akill.aif $readini ircoptools\ircoptools.ini akills aif
    .set %akill.asi $readini ircoptools\ircoptools.ini akills asi
    .set %akill.ac $readini ircoptools\ircoptools.ini akills ac
    .set %akill.ams $readini ircoptools\ircoptools.ini akills ams
    .set %akill.amw $readini ircoptools\ircoptools.ini akills amw
    .set %akill.afl $readini ircoptools\ircoptools.ini akills afl
    .set %akill.ahs $readini ircoptools\ircoptools.ini akills ahs
    .set %akill.asa $readini ircoptools\ircoptools.ini akills asa
    .set %akill.ats $readini ircoptools\ircoptools.ini akills ats
    .set %akill.atssp $readini ircoptools\ircoptools.ini akills atssp
    .set %akill.anc $readini ircoptools\ircoptools.ini akills anc
    .set %akill.acl $readini ircoptools\ircoptools.ini akills acl
    .set %akill.afn $readini ircoptools\ircoptools.ini akills afn
    .set %akill.afs.time $readini ircoptools\ircoptools.ini akills afs.time
    .set %akill.aps.time $readini ircoptools\ircoptools.ini akills aps.time
    .set %akill.ahp.time $readini ircoptools\ircoptools.ini akills ahp.time
    .set %akill.ahp2.time $readini ircoptools\ircoptools.ini akills ahp2.time
    .set %akill.aif.time $readini ircoptools\ircoptools.ini akills aif.time
    .set %akill.asi.time $readini ircoptools\ircoptools.ini akills asi.time
    .set %akill.ac.time $readini ircoptools\ircoptools.ini akills ac.time
    .set %akill.ams.time $readini ircoptools\ircoptools.ini akills ams.time
    .set %akill.amw.time $readini ircoptools\ircoptools.ini akills amw.time
    .set %akill.afl.time $readini ircoptools\ircoptools.ini akills afl.time
    .set %akill.ahs.time $readini ircoptools\ircoptools.ini akills ahs.time
    .set %akill.asa.time $readini ircoptools\ircoptools.ini akills asa.time
    .set %akill.ats.time $readini ircoptools\ircoptools.ini akills ats.time
    .set %akill.atssp.time $readini ircoptools\ircoptools.ini akills atssp.time
    .set %akill.anc.time $readini ircoptools\ircoptools.ini akills anc.time
    .set %akill.acl.time $readini ircoptools\ircoptools.ini akills acl.time
    .set %akill.afn.time $readini ircoptools\ircoptools.ini akills afn.time
    .set %show.msg $readini ircoptools\ircoptools.ini akills show.msg
    .set %kline.reason $readini ircoptools\ircoptools.ini kline reason
    .set %kline.time $readini ircoptools\ircoptools.ini kline time
    .set %kill.reason $readini ircoptools\ircoptools.ini kill reason
    .set %kill.ms $readini ircoptools\ircoptools.ini kill ms
    .set %kill.mssp $readini ircoptools\ircoptools.ini kill mssp
    .set %kill.hs $readini ircoptools\ircoptools.ini kill hs
    .set %kill.hssp $readini ircoptools\ircoptools.ini kill hssp
    .set %kill.fl $readini ircoptools\ircoptools.ini kill fl
    .set %kill.flsp $readini ircoptools\ircoptools.ini kill flsp
    .set %msg.an $readini ircoptools\ircoptools.ini messages an
    .set %msg.wm $readini ircoptools\ircoptools.ini messages wm
    .set %globops $readini ircoptools\ircoptools.ini logs globops
    .set %globopslog $readini ircoptools\ircoptools.ini logs globopslog
    .set %chatops $readini ircoptools\ircoptools.ini logs chatops
    .set %chatopslog $readini ircoptools\ircoptools.ini logs chatopslog
    .set %locops $readini ircoptools\ircoptools.ini logs locops
    .set %locopslog $readini ircoptools\ircoptools.ini logs locopslog
    .set %services $readini ircoptools\ircoptools.ini logs services
    .set %serviceslog $readini ircoptools\ircoptools.ini logs serviceslog
    .set %routing $readini ircoptools\ircoptools.ini logs routing
    .set %routinglog $readini ircoptools\ircoptools.ini logs routinglog
    .set %massclone $readini ircoptools\ircoptools.ini logs massclone
    .set %massclonelog $readini ircoptools\ircoptools.ini logs massclonelog
    .set %massclonecw $readini ircoptools\ircoptools.ini logs massclonecw
    .set %collisionstime $readini ircoptools\ircoptools.ini collisions time
    .set %collisionsenabled $readini ircoptools\ircoptools.ini collisions enabled
    .set %collisionsdisplayfrom $readini ircoptools\ircoptools.ini collisions startdisplayfrom
    if (%collisionsenabled == 1) {
      .collisions
    }
    .set %forbnickstime $readini ircoptools\ircoptools.ini ForbNicks time
    .set %forbnicksenabled $readini ircoptools\ircoptools.ini ForbNicks enabled
    .set %forbnicksdisplayfrom $readini ircoptools\ircoptools.ini ForbNicks startdisplayfrom
    if (%forbnicksenabled == 1) {
      .forbiddennicks
    }
    if ( %version.caescript == $null ) {
      .enable #caescriptfunctions
    } else {
      .disable #caescriptfunctions
    }
  }
  else {
    .echo -s 2[N] %version.ircoptools cannot run on mIRC $version
    .echo -s 2[N] Please update your mIRC to the latest version.
    .echo -s 2[N] You can download it from http://www.mirc.co.uk/
    .unload.ircoptools
  }
}
ON ^*:WALLOPS:*:{ 
  .echo $colour(wallops) -s [W] $nick $+ : $1-
  halt
}
;
; #### Please do not modify from here ####
;
;--------------------------- Ignore
;
on ^*:SNOTICE:*Notice -- *BOPM added temporary*:halt
on ^*:SNOTICE:*Invalid usernam*:halt
on ^*:SNOTICE:*from NickServ path*:halt
on ^*:SNOTICE:*from NickServ path*:halt
; on ^*:SNOTICE:*Global -- Nick collision*:halt
on ^*:SNOTICE:*No user_count to decrement*:halt
on ^*:SNOTICE:*MODE for unknown #*:halt
on ^*:SNOTICE:*desynched from services during*:halt
on ^*:SNOTICE:*IP# Mismatch*:halt
on ^*:SNOTICE:*connect failure*:halt
on ^*:SNOTICE:*Connection reset by pee*:halt
; on ^*:SNOTICE:*Nick collision on*:halt
on ^*:SNOTICE:*Notice -- Send Message (*:halt
on ^*:SNOTICE:*Notice -- Message (*:halt
on ^*:SNOTICE:*Notice -- Unknown prefix (*:halt
; on ^*:SNOTICE:*Nick change collision from*:halt
on ^*:SNOTICE:*Not dropping server*:halt
on ^*:SNOTICE:*I-line is full*:halt
on ^*:SNOTICE:*Notice -- Ghosted*:halt
on ^*:SNOTICE:*introduced without a T*:halt
on ^*:SNOTICE:*dropped, no N: lin*:halt
on ^*:SNOTICE:*Failed in connecting to*:halt
; ---- Paranoid Flood Start
; ---- Feel free to comment the following lines:
on ^*:SNOTICE:*Rejecting*drone*:halt
on ^*:SNOTICE:*** Notice -- Rejecting possible Spambot*:halt
on ^*:SNOTICE:*** Notice -- clone*:halt
on ^*:SNOTICE:*** throttled connections*:halt
on ^*:SNOTICE:*Global -- from OperServ2* akill for * by AploreBot affects*:halt
on ^*:SNOTICE:*Global -- from OperServ2* akill for * by MOBot affects*:halt
on ^*:SNOTICE:*Local -- from*monitor*Maximum number of open connections reached*:halt
on ^*:SNOTICE:*Global -- from OperServ* akill for * by OperServ affects*:halt
on ^*:SNOTICE:*Notice -- *K-Line for*You are infected with the Mini Oblivion trojan*:halt
on ^*:SNOTICE:*Notice -- *K-Line for*You currently match the profile of an exploited drone*:halt
on ^*:SNOTICE:*Notice -- *K-Line for*[proxy/socks5] Open proxy.*:halt
on ^*:SNOTICE:*Notice -- *K-Line for*[proxy/socks4] Open proxy.*:halt
on ^*:SNOTICE:*Notice -- *K-Line for*[proxy/squid] Open proxy.*:halt
on ^*:SNOTICE:*Notice -- *K-Line for*[proxy/cisco] Open proxy.*:halt
on ^*:SNOTICE:*Notice -- *K-Line for*[proxy/http-80] Open proxy.*:halt
on ^*:SNOTICE:*Notice -- *K-Line for*[proxy/http-81] Open proxy.*:halt
on ^*:SNOTICE:*Notice -- *K-Line for*[proxy/http-8080] Open proxy.*:halt
on ^*:SNOTICE:*Notice -- *K-Line for*[proxy/http-8081] Open proxy.*:halt
on ^*:SNOTICE:*Notice -- *K-Line for*[[proxy/open wingate] Open proxy.*:halt
; on ^*:SNOTICE:*Global -- from OperServ2* Removed timed autokill*:halt
; on ^*:SNOTICE:*Global -- from stats.dal.net* Removed timed autokill*:halt
on ^*:SNOTICE:*Notice -- K-Line active*:halt
on ^*:SNOTICE:*Notice -- Autokill active*:halt
on ^*:SNOTICE:*Notice -- Z-Line active*:halt
on ^*:SNOTICE:*Notice -- Local-ban active*:halt
on ^*:SNOTICE:*Notice -- Network-ban active*:halt
on ^*:SNOTICE:*Notice -- *local-ban for*You are infected with the Mini Oblivion trojan*:halt
on ^*:SNOTICE:*Notice -- *local-ban for*You currently match the profile of an exploited drone*:halt
on ^*:SNOTICE:*Notice -- *local-ban for*[proxy/socks5] Open proxy.*:halt
on ^*:SNOTICE:*Notice -- *local-ban for*[proxy/socks4] Open proxy.*:halt
on ^*:SNOTICE:*Notice -- *local-ban for*[proxy/squid] Open proxy.*:halt
on ^*:SNOTICE:*Notice -- *local-ban for*[proxy/cisco] Open proxy.*:halt
on ^*:SNOTICE:*Notice -- *local-ban for*[proxy/http-80] Open proxy.*:halt
on ^*:SNOTICE:*Notice -- *local-ban for*[proxy/http-81] Open proxy.*:halt
on ^*:SNOTICE:*Notice -- *local-ban for*[proxy/http-8080] Open proxy.*:halt
on ^*:SNOTICE:*Notice -- *local-ban for*[proxy/http-8081] Open proxy.*:halt
on ^*:SNOTICE:*Notice -- *local-ban for*[[proxy/open wingate] Open proxy.*:halt
on ^*:SNOTICE:*Notice -- *kill*enforcer.dal.net*Ghosted services.dal.net*:halt
;
; ---- Paranoid Flood End
;
; # Colissions administration
;
#collisions on
on ^&*:snotice:*Notice*Nick*Collision*:{
  if (*(?)*<-* iswm $1-) || (*stats.dal.net* iswm $1-) || (*[AKILL*ID:* iswm $1-) { haltdef }
  if (*Ghosted* iswm $4-$6) || (*<-* iswm $14) { haltdef }
  if ( ( $14 == Ghosted ) && ( . isin $15 ) ) { haltdef }
  if ($13 == Collision) && (Guest* !iswm $gettok($8,1,33)) {
    hinc -mu $+ %collisionstime collision $gettok($8,1,33)
    if ( $hget(collision,$gettok($8,1,33)) >= %collisionsdisplayfrom) {
      if ( $active != @Nick-Collisions ) {
        window -kem @Nick-Collisions
        titlebar @Nick-Collisions on $network
      }
      window -g1 @Nick-Collisions
      if ( $hget(collision,$gettok($8,1,33)) < 10 ) {
        if ( $hget(collision,$gettok($8,1,33)) == 1 ) {
          echo -ti2 @Nick-Collisions 3 $+ $chr(91) $+ $date $time $+ $chr(93) $+  2 $+ $chr(91) $+ $chr(32) $+ $hget(collision,$gettok($8,1,33)) collision $chr(93) $+  $gettok($8,1,33) ( $+ $gettok($8,2,33) $+ )
        }
        else {
          echo -ti2 @Nick-Collisions 3 $+ $chr(91) $+ $date $time $+ $chr(93) $+  2 $+ $chr(91) $+ $chr(32) $+ $hget(collision,$gettok($8,1,33)) collisions $+ $chr(93) $+  $gettok($8,1,33) ( $+ $gettok($8,2,33) $+ )
        }
      }
      else {
        echo -ti2 @Nick-Collisions 3 $+ $chr(91) $+ $date $time $+ $chr(93) $+  2 $+ $chr(91) $+ $hget(collision,$gettok($8,1,33)) collisions $+  $+ $chr(93) $gettok($8,1,33) ( $+ $gettok($8,2,33) $+ )
      }
    }
  }
  haltdef
}
#collisions end
;
;
; # Forbidden nicks administration
;
#forbiddennicks off
on ^&*:snotice:*Notice*Forbidding*restricted*nick*:{
  hinc -mu $+ %forbnickstime forbnick $7
  if ( $hget(forbnick,$7) >= %forbnicksdisplayfrom) {
    if ( $active != @Forbidden-Nicks ) {
      window -kem @Forbidden-Nicks
      titlebar @Forbidden-Nicks on $network
    }
    window -g1 @Forbidden-Nicks
    if ( $hget(forbnick,$7) < 10 ) {
      if ( $hget(forbnick,$7) == 1 ) {
        echo -ti2 @Forbidden-Nicks 3 $+ $chr(91) $+ $date $time $+ $chr(93) $+  2 $+ $chr(91) $+ $chr(32) $+ $hget(forbnick,$7) try $chr(93) $+  $7 $9-
      }
      else {
        echo -ti2 @Forbidden-Nicks 3 $+ $chr(91) $+ $date $time $+ $chr(93) $+  2 $+ $chr(91) $+ $chr(32) $+ $hget(forbnick,$7) tries $+ $chr(93) $+  $7 $9-
      }
    }
    else {
      echo -ti2 @Forbidden-Nicks 3 $+ $chr(91) $+ $date $time $+ $chr(93) $+  2 $+ $chr(91) $+ $hget(forbnick,$7) tries $+ $chr(93) $+  $7 $9-
    }
  }
  haltdef
}
#forbiddennicks end
;

;--------------------------- *** Global -- 
;
on ^*:SNOTICE:*** Global -- from * Read error from * closing link*:{
  if ( $active != @Network Stuff ) {
    window -kem @Network Stuff
    titlebar @Network Stuff on $network
  }
  window -g1 @Network Stuff
  echo -ti2 @Network Stuff 3[Routing] $5-
  if ( %routing ) {
    .write " $+ $logdir $+ %routinglog $+ . $+ $network $+ .log $+ " $chr(91) $+ $date(yyyy-mm-dd HH:nn:ss) $+ $chr(93) [R] $5-
  }
  haltdef
}
on ^*:SNOTICE:*** Global -- from * No response from * closing link*:{
  if ( $active != @Network Stuff ) {
    window -kem @Network Stuff
    titlebar @Network Stuff on $network
  }
  window -g1 @Network Stuff
  echo -ti2 @Network Stuff 3[Routing] $5-
  if ( %routing ) {
    .write " $+ $logdir $+ %routinglog $+ . $+ $network $+ .log $+ " $chr(91) $+ $date(yyyy-mm-dd HH:nn:ss) $+ $chr(93) [R] $5-
  }
  haltdef
}
on ^*:SNOTICE:*** Global -- from * Server * closed the connection*:{
  if ( $active != @Network Stuff ) {
    window -kem @Network Stuff
    titlebar @Network Stuff on $network
  }
  window -g1 @Network Stuff
  echo -ti2 @Network Stuff 3[Routing] $5-
  if ( %routing ) {
    .write " $+ $logdir $+ %routinglog $+ . $+ $network $+ .log $+ " $chr(91) $+ $date(yyyy-mm-dd HH:nn:ss) $+ $chr(93) [R] $5-
  }
  haltdef
}
on ^*:SNOTICE:*** Global -- from * Link with * established* TS link*:{
  if ( $active != @Network Stuff ) {
    window -kem @Network Stuff
    titlebar @Network Stuff on $network
  }
  window -g1 @Network Stuff
  echo -ti2 @Network Stuff 3[Routing] $5-
  if ( %routing ) {
    .write " $+ $logdir $+ %routinglog $+ . $+ $network $+ .log $+ " $chr(91) $+ $date(yyyy-mm-dd HH:nn:ss) $+ $chr(93) [R] $5-
  }
  haltdef
}
on ^*:SNOTICE:*** Global -- from * CONNECT * from*:{
  if ( $active != @Network Stuff ) {
    window -kem @Network Stuff
    titlebar @Network Stuff on $network
  }
  window -g1 @Network Stuff
  echo -ti2 @Network Stuff 3[Routing] $5-
  if ( %routing ) {
    .write " $+ $logdir $+ %routinglog $+ . $+ $network $+ .log $+ " $chr(91) $+ $date(yyyy-mm-dd HH:nn:ss) $+ $chr(93) [R] $5-
  }
  haltdef
}
on ^*:SNOTICE:*** Global -- * was connected for * seconds.*:{
  if ( $active != @Network Stuff ) {
    window -kem @Network Stuff
    titlebar @Network Stuff on $network
  }
  window -g1 @Network Stuff
  echo -ti2 @Network Stuff 3[Routing] $4-
  if ( %routing ) {
    .write " $+ $logdir $+ %routinglog $+ . $+ $network $+ .log $+ " $chr(91) $+ $date(yyyy-mm-dd HH:nn:ss) $+ $chr(93) [R] $4-
  }
  haltdef
}
on ^*:SNOTICE:on ^*:SNOTICE:*** Couldn't look up your host*:{
  if ( $active != @Network Stuff ) {
    window -kem @Network Stuff
    titlebar @Network Stuff on $network
  }
  window -g1 @Network Stuff
  echo -ti2 @Network Stuff 2[N] $4-
  haltdef
}
on ^*:SNOTICE:*** Global -- from*:{
  ;[CAE] -bifrost.ca.us.dal.net- *** Global -- from OperServ: akill for *!*@84.238.85.149 by start` affects 1 user (0.0125%) for 20160 minutes.
  ;[CAE]                         1   2      3  4    5         6
  ;[CAE]
  ;[CAE] echo 1 es $1 2 es $2 y 5 es $5 Y 6 ES $6-
  if (($5 == NickServ:) || ($5 == ChanServ:) || ($5 == MemoServ:) || ($5 == OperServ:) || ($5 == RootServ:)) {
    ; This will catch any GlobOp from NickServ, ChanServ, MemoServ, OperServ and RootServ
    if ( $active != @Services ) {
      window -kem @Services
      titlebar @Services on $network
    }
    window -g1 @Services
    echo -ti2 @Services 3 $+ $chr(91) $+ $5 $+ $chr(93) $+  $6-
    if ( %services ) {
      .write " $+ $logdir $+ %serviceslog $+ . $+ $network $+ .log $+ " $chr(91) $+ $date(yyyy-mm-dd HH:nn:ss) $+ $chr(93) $chr(91) $+ $5 $+ $chr(93) $6-
    }
  }
  elseif ( $5 == OperServ2: ) {
    ; we will now catch OperServ2 GlobOps
    if ($9 == clients) {
      if ( $active != @Clones ) {
        window -kem @Clones
        titlebar @Clones on $network
      }
      if ( @ isin $11 ) {
        set %clone.buscar * $+ $11
      }
      else {
        set %clone.buscar $11
      }
      window -g1 @Clones
      echo -ti2 @Clones 3[Clients:]2 $8 clients from2 $11 Press2 F8 to scan 3[OS2]
    }
    elseif ($7 == vhost) {
      if ( $active != @Clones ) {
        window -kem @Clones
        titlebar @Clones on $network
      }
      if ( @ isin $12 ) {
        set %clone.buscar2 * $+ $12
      }
      else {
        set %clone.buscar2 $12
      }
      window -g1 @Clones
      echo -ti2 @Clones 7[VHosts:]2 $9 clients from2 $12 Press2 F9 to scan 3[OS2] $13-
    }
    elseif ($7 == nick+gecos) {
      if ( $active != @Clones ) {
        window -kem @Clones
        titlebar @Clones on $network
      }
      if ( @ isin $12 ) {
        set %clone.buscar * $+ $12
      }
      else {
        set %clone.buscar $12
      }
      window -g1 @Clones
      echo -ti2 @Clones 3[Nick+Gecos:]2 $9 clients from2 $12 Press2 F8 to scan $13- 3[OS2]
    }
    elseif ($7 == uname+gecos) {
      if ( $active != @Clones ) {
        window -kem @Clones
        titlebar @Clones on $network
      }
      if ( @ isin $12 ) {
        set %clone.buscar * $+ $12
      }
      else {
        set %clone.buscar $12
      }
      window -g1 @Clones
      echo -ti2 @Clones 3[UName+Gecos:]2 $9 clients from2 $12 Press2 F8 to scan $13- 3[OS2]
    }
    elseif ($7 == drones: ) {
      if ( $active != @Clones ) {
        window -kem @Clones
        titlebar @Clones on $network
      }
      if ( @ isin $10 ) {
        set %clone.buscar * $+ $10
      }
      else {
        set %clone.buscar $10
      }
      window -g1 @Clones
      echo -ti2 @Clones 3[Drones:]2 $8 clients from2 $10 Press2 F8 to scan $11- 3[OS2]
    }
    else {
      if ( $active != @Services ) {
        window -kem @Services
        titlebar @Services on $network
      }
      window -g1 @Services
      echo -ti2 @Services 3 $+ $chr(91) $+ $5 $+ $chr(93) $+  $6-
      if ( %services ) {
        .write " $+ $logdir $+ %serviceslog $+ . $+ $network $+ .log $+ " $chr(91) $+ $date(yyyy-mm-dd HH:nn:ss) $+ $chr(93) $5-
      }
    }
  }
  elseif (*.*: !iswm $5) {
    ; This will catch any normal GlobOp message
    if ( $active != @Global Operator Notices ) {
      window -kem @Global Operator Notices
      titlebar @Global Operator Notices on $network
    }
    window -g1 @Global Operator Notices
    echo -ti2 @Global Operator Notices 4[G] $5-
    if ( %globops ) {
      .write " $+ $logdir $+ %globopslog $+ . $+ $network $+ .log $+ " $chr(91) $+ $date(yyyy-mm-dd HH:nn:ss) $+ $chr(93) [G] $5-
    }
  }
  elseif ( $lower( $left($5,6) ) == stats. ) {
    ; This will catch globops from stats.*
    if ($9 == clients) {
      if ( $active != @Clones ) {
        window -kem @Clones
        titlebar @Clones on $network
      }
      if ( @ isin $11 ) {
        set %clone.buscar * $+ $11
      }
      else {
        set %clone.buscar $11
      }
      window -g1 @Clones
      echo -ti2 @Clones 3[Clients:]2 $8 clients from2 $11 Press2 F8 to scan
    }
    elseif ($7 == nick+gecos ) {
      if ( $active != @Clones ) {
        window -kem @Clones
        titlebar @Clones on $network
      }
      if ( @ isin $11 ) {
        set %clone.buscar * $+ $11
      }
      else {
        set %clone.buscar $11
      }
      window -g1 @Clones
      echo -ti2 @Clones 3[Nick+Gecos:]2 $8 nick+gecos clients from2 $11 Press2 F8 to scan
    }
    elseif ($7 == uname+gecos ) {
      if ( $active != @Clones ) {
        window -kem @Clones
        titlebar @Clones on $network
      }
      if ( @ isin $11 ) {
        set %clone.buscar * $+ $11
      }
      else {
        set %clone.buscar $11
      }
      window -g1 @Clones
      echo -ti2 @Clones 3[UName+Gecos:]2 $8 nick+gecos clients from2 $11 Press2 F8 to scan
    }
    elseif ($10 == clients) {
      if ( $active != @Clones ) {
        window -kem @Clones
        titlebar @Clones on $network
      }
      if ( @ isin $12 ) {
        set %clone.buscar2 * $+ $12
      }
      else {
        set %clone.buscar2 $12
      }
      window -g1 @Clones
      echo -ti2 @Clones 7[VHosts:]2 $9 clients from2 $12 Press2 F9 to scan
    }
    else {
      if ( $active != @Services ) {
        window -kem @Services
        titlebar @Services on $network
      }
      window -g1 @Services
      echo -ti2 @Services 3 $+ [Stats]  $+ $6-
      if ( %services ) {
        .write " $+ $logdir $+ %serviceslog $+ . $+ $network $+ .log $+ " $chr(91) $+ $date(yyyy-mm-dd HH:nn:ss) $+ $chr(93) [Stats] $6-
      }
    }
  }
  elseif ( $lower( $left($5,9) ) == services.) {
    ; This will catch globops from services.*
    if ( $active != @Services ) {
      window -kem @Services
      titlebar @Services on $network
    }
    window -g1 @Services
    echo -ti2 @Services 3 $+ [Services]  $+ $6-
    if ( %services ) {
      .write " $+ $logdir $+ %serviceslog $+ . $+ $network $+ .log $+ " $chr(91) $+ $date(yyyy-mm-dd HH:nn:ss) $+ $chr(93) [Services] $6-
    }
  }
  elseif ( $lower( $left($5,19) ) == services-redundant.) {
    ; This will catch globops from services-redundant.*
    if ( $active != @Services ) {
      window -kem @Services
      titlebar @Services on $network
    }
    window -g1 @Services
    echo -ti2 @Services 3 $+ [Redundant Services]  $+ $6-
    if ( %services ) {
      .write " $+ $logdir $+ %serviceslog $+ . $+ $network $+ .log $+ " $chr(91) $+ $date(yyyy-mm-dd HH:nn:ss) $+ $chr(93) [Redundant Services] $6-
    }
  }
  elseif ( $lower( $left($5,10) ) == services2.) {
    ; This will catch globops from services2.*
    if ( $active != @Services ) {
      window -kem @Services
      titlebar @Services on $network
    }
    window -g1 @Services
    echo -ti2 @Services 3 $+ [Services2]  $+ $6-
    if ( %services ) {
      .write " $+ $logdir $+ %serviceslog $+ . $+ $network $+ .log $+ " $chr(91) $+ $date(yyyy-mm-dd HH:nn:ss) $+ $chr(93) [Services2] $6-
    }
  }
  elseif (( $7 == used ) && ( $8 == SAMODE )) {
    if ( $active != @Global Operator Notices ) {
      window -kem @Global Operator Notices
      titlebar @Global Operator Notices on $network
    }
    window -g1 @Global Operator Notices
    echo -ti2 @Global Operator Notices 4[G] $5-
    if ( %globops ) {
      .write " $+ $logdir $+ %globopslog $+ . $+ $network $+ .log $+ " $chr(91) $+ $date(yyyy-mm-dd HH:nn:ss) $+ $chr(93) [G] $left($5,-1) $+ : $6-
    }
  }
  elseif (( $7 == used ) && ( $8 == SAJOIN )) {
    if ( $active != @Global Operator Notices ) {
      window -kem @Global Operator Notices
      titlebar @Global Operator Notices on $network
    }
    window -g1 @Global Operator Notices
    echo -ti2 @Global Operator Notices 4[G] $5-
    if ( %globops ) {
      .write " $+ $logdir $+ %globopslog $+ . $+ $network $+ .log $+ " $chr(91) $+ $date(yyyy-mm-dd HH:nn:ss) $+ $chr(93) [G] $left($5,-1) $+ : $6-
    }
  }
  elseif ( ( $6 == Received ) && ( $7 == SQUIT) && ( $9 == from )) {
    if ( $active != @Network Stuff ) {
      window -kem @Network Stuff
      titlebar @Network Stuff on $network
    }
    window -g1 @Network Stuff
    echo -ti2 @Network Stuff 3[Routing] $5-
    if ( %routing ) {
      .write " $+ $logdir $+ %routinglog $+ . $+ $network $+ .log $+ " $chr(91) $+ $date(yyyy-mm-dd HH:nn:ss) $+ $chr(93) [R] $5-
    }
  }
  else {
    if ( $active != @Network Stuff ) {
      window -kem @Network Stuff
      titlebar @Network Stuff on $network
    }
    window -g1 @Network Stuff
    echo -ti2 @Network Stuff 4[G] $5-
  }
  haltdef
}
;
;--------------------------- *** ChatOps -- 
;
on ^*:SNOTICE:*** ChatOps -- from*:{
  if ( $active != @ChatOps ) {
    window -kem @ChatOps
    titlebar @ChatOps on $network
  }
  window -g1 @ChatOps
  echo -ti2 @ChatOps 6[C] $5-
  if ( %chatops ) {
    .write " $+ $logdir $+ %chatopslog $+ . $+ $network $+ .log $+ " $chr(91) $+ $date(yyyy-mm-dd HH:nn:ss) $+ $chr(93) [C] $5-
  }
  haltdef
}
;
;--------------------------- *** LocOps --
;
on ^*:SNOTICE:*** LocOps -- from*:{
  if (( $7 == clones ) && ( $8 == from )) {
    if ( $active != @Clones ) {
      window -kem @Clones
      titlebar @Clones on $network
    }
    if ( @ isin $9 ) {
      set %clone.buscar * $+ $9
    }
    else {
      set %clone.buscar $9
    }
    window -g1 @Clones
    echo -ti2 @Clones 3 $+ $left($5,-1) $+ :2 $6  $+ $7 $8 $+ 2 $9 Press F8 to Scan
  }
  elseif (( $6 == Auto-KLine ) && ( $7 == activated )) {
    if ( $active != @Kill Messages ) {
      window -kem @Kill Messages
      titlebar @Kill Messages on $network
    }
    window -g1 @Kill Messages
    echo -ti2 @Kill Messages 3[L] $left($5,-1) $+ : $6-
    if ( %locops ) {
      .write " $+ $logdir $+ %locopslog $+ . $+ $network $+ .log $+ " $chr(91) $+ $date(yyyy-mm-dd HH:nn:ss) $+ $chr(93) [L] $left($5,-1) $+ : $6-
    }
    haltdef
  }
  else {
    if ( $active != @Local Operator Notices ) {
      window -kem @Local Operator Notices
      titlebar @Local Operator Notices on $network
    }
    window -g1 @Local Operator Notices
    echo -ti2 @Local Operator Notices 3[L] $5-
    if ( %locops ) {
      .write " $+ $logdir $+ %locopslog $+ . $+ $network $+ .log $+ " $chr(91) $+ $date(yyyy-mm-dd HH:nn:ss) $+ $chr(93) [L] $5-
    }
  }
  haltdef
}
;
; Stuff that goes on Routing Window
;
;--------------------------- *** Connecting to
;
on ^*:SNOTICE:*** Connecting to *:{
  if ( $active != @Network Stuff ) {
    window -kem @Network Stuff
    titlebar @Network Stuff on $network
  }
  window -g1 @Network Stuff
  echo -ti2 @Network Stuff 3[Routing] $2-
  if ( %routing ) {
    .write " $+ $logdir $+ %routinglog $+ . $+ $network $+ .log $+ " $chr(91) $+ $date(yyyy-mm-dd HH:nn:ss) $+ $chr(93) [R] $2-
  }
  haltdef
}
on ^*:SNOTICE:Server *:{
  if ( $active != @Network Stuff ) {
    window -kem @Network Stuff
    titlebar @Network Stuff on $network
  }
  window -g1 @Network Stuff
  echo -ti2 @Network Stuff 3[Routing] $1-
  if ( %routing ) {
    .write " $+ $logdir $+ %routinglog $+ . $+ $network $+ .log $+ " $chr(91) $+ $date(yyyy-mm-dd HH:nn:ss) $+ $chr(93) [R] $1-
  }
  haltdef
}
on ^*:SNOTICE:*** Notice -- Link *:{
  if ( $active != @Network Stuff ) {
    window -kem @Network Stuff
    titlebar @Network Stuff on $network
  }
  window -g1 @Network Stuff
  echo -ti2 @Network Stuff 3[Routing] $4-
  if ( %routing ) {
    .write " $+ $logdir $+ %routinglog $+ . $+ $network $+ .log $+ " $chr(91) $+ $date(yyyy-mm-dd HH:nn:ss) $+ $chr(93) [R] $4-
  }
  haltdef
}
on ^*:SNOTICE:*** Could*:{
  if ( $active != @Network Stuff ) {
    window -kem @Network Stuff
    titlebar @Network Stuff on $network
  }
  window -g1 @Network Stuff
  echo -ti2 @Network Stuff 3[Routing] $2-
  if ( %routing ) {
    .write " $+ $logdir $+ %routinglog $+ . $+ $network $+ .log $+ " $chr(91) $+ $date(yyyy-mm-dd HH:nn:ss) $+ $chr(93) [R] $2-
  }
  haltdef
}
on ^*:SNOTICE:*Lost server*during negotiation*:{
  if ( $active != @Network Stuff ) {
    window -kem @Network Stuff
    titlebar @Network Stuff on $network
  }
  window -g1 @Network Stuff
  echo -ti2 @Network Stuff 3[Routing] $4-
  if ( %routing ) {
    .write " $+ $logdir $+ %routinglog $+ . $+ $network $+ .log $+ " $chr(91) $+ $date(yyyy-mm-dd HH:nn:ss) $+ $chr(93) [R] $4-
  }
  haltdef
}
on ^*:SNOTICE:*** Initiating diffie-hellman key exchange*:{
  if ( $active != @Network Stuff ) {
    window -kem @Network Stuff
    titlebar @Network Stuff on $network
  }
  window -g1 @Network Stuff
  echo -ti2 @Network Stuff 3[Routing] $4-
  if ( %routing ) {
    .write " $+ $logdir $+ %routinglog $+ . $+ $network $+ .log $+ " $chr(91) $+ $date(yyyy-mm-dd HH:nn:ss) $+ $chr(93) [R] $4-
  }
  haltdef
}
on ^*:SNOTICE:CHECK NICK*:{
  echo $colour(notice) -a $1-
  haltdef
}
on ^*:SNOTICE:*** Diffie-Hellman exchange*:{
  if ( $active != @Network Stuff ) {
    window -kem @Network Stuff
    titlebar @Network Stuff on $network
  }
  window -g1 @Network Stuff
  echo -ti2 @Network Stuff 3[Routing] $4-
  if ( %routing ) {
    .write " $+ $logdir $+ %routinglog $+ . $+ $network $+ .log $+ " $chr(91) $+ $date(yyyy-mm-dd HH:nn:ss) $+ $chr(93) [R] $4-
  }
  haltdef
}
on ^*:SNOTICE:*No C line found*:{
  if ( $active != @Network Stuff ) {
    window -kem @Network Stuff
    titlebar @Network Stuff on $network
  }
  window -g1 @Network Stuff
  echo -ti2 @Network Stuff 3[Routing] $2-
  if ( %routing ) {
    .write " $+ $logdir $+ %routinglog $+ . $+ $network $+ .log $+ " $chr(91) $+ $date(yyyy-mm-dd HH:nn:ss) $+ $chr(93) [R] $2-
  }
  haltdef
}
on ^*:SNOTICE:Lost server *:{
  if ( $active != @Network Stuff ) {
    window -kem @Network Stuff
    titlebar @Network Stuff on $network
  }
  window -g1 @Network Stuff
  echo -ti2 @Network Stuff 3[Routing] $1-
  if ( %routing ) {
    .write " $+ $logdir $+ %routinglog $+ . $+ $network $+ .log $+ " $chr(91) $+ $date(yyyy-mm-dd HH:nn:ss) $+ $chr(93) [R] $1-
  }
  haltdef
}
;
on ^*:SNOTICE:*** Routing *:{
  if ( $active != @Network Stuff ) {
    window -kem @Network Stuff
    titlebar @Network Stuff on $network
  }
  window -g1 @Network Stuff
  echo -ti2 @Network Stuff 3[Routing] $4-
  if ( %routing ) {
    .write " $+ $logdir $+ %routinglog $+ . $+ $network $+ .log $+ " $chr(91) $+ $date(yyyy-mm-dd HH:nn:ss) $+ $chr(93) [R] $4-
  }
  haltdef
}
;
on ^*:SNOTICE:*** Debug --*:{
  if ( $active != @Network Stuff ) {
    window -kem @Network Stuff
    titlebar @Network Stuff on $network
  }
  window -g1 @Network Stuff
  echo -ti2 @Network Stuff 12[Debug] $4-
  haltdef
}
;
;--------------------------- *** Notice --
on ^*:SNOTICE:*** Notice -- * is now operator (O)*:{
  if ( $active != @Network Stuff ) {
    window -kem @Network Stuff
    titlebar @Network Stuff on $network
  }
  window -g1 @Network Stuff
  echo -ti2 @Network Stuff 6 $+ $9  $+ $4 $+  $+ $5 has received the power of the gods (is now an IRCop)
  haltdef
}
raw 005:*:{ 
  echo -ti2 @Network Stuff 6 $+ [Info]  $+ $2- 
  haltdef
}
on ^*:SNOTICE:*** Notice -- * has masked their hostname*:{
  if ( $active != @Network Stuff ) {
    window -kem @Network Stuff
    titlebar @Network Stuff on $network
  }
  window -g1 @Network Stuff
  echo -ti2 @Network Stuff 6[O] $4-
  haltdef
}
on ^*:SNOTICE:*** Notice -- Hacked ops *:{
  if ( $active != @Network Stuff ) {
    window -kem @Network Stuff
    titlebar @Network Stuff on $network
  }
  window -g1 @Network Stuff
  echo -ti2 @Network Stuff 4[N] $4-
  haltdef
}
on ^*:SNOTICE:*** Notice -- TS*:{
  if ( $active != @Network Stuff ) {
    window -kem @Network Stuff
    titlebar @Network Stuff on $network
  }
  window -g1 @Network Stuff
  echo -ti2 @Network Stuff 4[N] $4-
  haltdef
}
on ^*:SNOTICE:*** Notice -- HTM*:{
  if ( $active != @Network Stuff ) {
    window -kem @Network Stuff
    titlebar @Network Stuff on $network
  }
  window -g1 @Network Stuff
  echo -ti2 @Network Stuff 2[N] $4-
  haltdef
}
on ^*:SNOTICE:Commands are*:{
  if ( $active != @Network Stuff ) {
    window -kem @Network Stuff
    titlebar @Network Stuff on $network
  }
  window -g1 @Network Stuff
  echo -ti2 @Network Stuff 2[N] $1-
  haltdef
}
on ^*:SNOTICE:*** Notice -- Resuming standard operation*:{
  if ( $active != @Network Stuff ) {
    window -kem @Network Stuff
    titlebar @Network Stuff on $network
  }
  window -g1 @Network Stuff
  echo -ti2 @Network Stuff 2[N] $4-
  haltdef
}
on ^*:SNOTICE:*** Notice -- Entering high-traffic mode*:{
  if ( $active != @Network Stuff ) {
    window -kem @Network Stuff
    titlebar @Network Stuff on $network
  }
  window -g1 @Network Stuff
  echo -ti2 @Network Stuff 2[N] $4-
  haltdef
}
on ^*:SNOTICE:*** Notice -- Still high-traffic mode*:{
  if ( $active != @Network Stuff ) {
    window -kem @Network Stuff
    titlebar @Network Stuff on $network
  }
  window -g1 @Network Stuff
  echo -ti2 @Network Stuff 2[N] $4-
  haltdef
}
on ^*:SNOTICE:*** Notice -- * set new HTM rate*:{
  if ( $active != @Network Stuff ) {
    window -kem @Network Stuff
    titlebar @Network Stuff on $network
  }
  window -g1 @Network Stuff
  echo -ti2 @Network Stuff 2[N] $4-
  haltdef
}
on ^*:SNOTICE:NEW Max rate*:{
  if ( $active != @Network Stuff ) {
    window -kem @Network Stuff
    titlebar @Network Stuff on $network
  }
  window -g1 @Network Stuff
  echo -ti2 @Network Stuff 2[N] $1-
  haltdef
}
on ^*:SNOTICE:HTM*:{
  if ( $active != @Network Stuff ) {
    window -kem @Network Stuff
    titlebar @Network Stuff on $network
  }
  window -g1 @Network Stuff
  echo -ti2 @Network Stuff 2[N] $1-
  haltdef
}
on ^*:SNOTICE:*Resetting HTM and raising limit to*:{
  if ( $active != @Network Stuff ) {
    window -kem @Network Stuff
    titlebar @Network Stuff on $network
  }
  window -g1 @Network Stuff
  echo -ti2 @Network Stuff 2[N] $4-
  haltdef
}
on ^*:SNOTICE:Current Maxclients*:{
  if ( $active != @Network Stuff ) {
    window -kem @Network Stuff
    titlebar @Network Stuff on $network
  }
  window -g1 @Network Stuff
  echo -ti2 @Network Stuff 2[N] $1-
  haltdef
}
on ^*:SNOTICE:NEW MAXCLIENTS*:{
  if ( $active != @Network Stuff ) {
    window -kem @Network Stuff
    titlebar @Network Stuff on $network
  }
  window -g1 @Network Stuff
  echo -ti2 @Network Stuff 2[N] $1-
  haltdef
}
on ^*:SNOTICE:*set new MAXCLIENTS to*:{
  if ( $active != @Network Stuff ) {
    window -kem @Network Stuff
    titlebar @Network Stuff on $network
  }
  window -g1 @Network Stuff
  echo -ti2 @Network Stuff 2[N] $4-
  haltdef
}
on ^*:SNOTICE:You cannot set MAXCLIENTS to > MASTER_MAX*:{
  if ( $active != @Network Stuff ) {
    window -kem @Network Stuff
    titlebar @Network Stuff on $network
  }
  window -g1 @Network Stuff
  echo -ti2 @Network Stuff 2[N] $1-
  haltdef
}
on ^*:SNOTICE:*** Notice -- Rejecting possible Spambot*:{
  if ( $active != @Network Stuff ) {
    window -kem @Network Stuff
    titlebar @Network Stuff on $network
  }
  window -g1 @Network Stuff
  echo -ti2 @Network Stuff 12[N] $4-
  haltdef
}
on ^*:SNOTICE:*** Spam --*:{
  if ( $active != @Network Stuff ) {
    window -kem @Network Stuff
    titlebar @Network Stuff on $network
  }
  window -g1 @Network Stuff
  echo -ti2 @Network Stuff 12[Spam] $4-
  haltdef
}
on ^*:SNOTICE:*** Notice -- Hacked ops*:{
  if ( $active != @Network Stuff ) {
    window -kem @Network Stuff
    titlebar @Network Stuff on $network
  }
  window -g1 @Network Stuff
  echo -ti2 @Network Stuff 4[N] $4-
  haltdef
}
on ^*:SNOTICE:*** Notice -- Floo*:{
  if ( $active != @Flood ) {
    window -kem @Flood
    titlebar @Flood on $server
  }
  window -g1 @Flood
  echo -ti2 @Flood 12[Flood] $4-
  haltdef
}
on ^*:SNOTICE:*** Flood -- *:{
  if ( $active != @Flood ) {
    window -kem @Flood
    titlebar @Flood on $server
  }
  window -g1 @Flood
  echo -ti2 @Flood 12[Flood] $4-
  haltdef
}
on ^*:SNOTICE:*** DCCAllow -- * sending forbidden filetyped*:{
  if ( $active != @Exploits ) {
    window -kem @Exploits
    titlebar @Exploits - Forbidden Filetypes sends on $server
  }
  window -g1 @Exploits
  echo -ti2 @Exploits 2[N] $4-
  haltdef
}
on ^*:NOTICE:*** Notice -- User * (*@*.*) trying to join #* is a possible spambot*:{
  if ( $active != @Network Stuff ) {
    window -kem @Network Stuff
    titlebar @Network Stuff on $network
  }
  window -g1 @Network Stuff
  echo -ti2 @Network Stuff $4- 
  haltdef
}
on ^*:SNOTICE:*** Client -- Client connecting*:{
  if ( $active != @Clients ) {
    window -kem @Clients
    titlebar @Clients on $server
  }
  window -g1 @Clients
  echo -ti2 @Clients 3[C] $4-
  haltdef
}
on ^*:SNOTICE:*** Client -- Client exiting*:{
  if ( $active != @Clients ) {
    window -kem @Clients
    titlebar @Clients on $server
  }
  window -g1 @Clients
  echo -ti2 @Clients 4[Q] $4-
  haltdef
}
on ^*:SNOTICE:*** Notice -- Failed OPER attempt by *:{
  if ( $active != @Network Stuff ) {
    window -kem @Network Stuff
    titlebar @Network Stuff on $network
  }
  window -g1 @Network Stuff
  echo -ti2 @Network Stuff 7[O] $4-
  haltdef
}
on ^*:SNOTICE:*** Notice -- Failed OPERMASK attempt by *:{
  if ( $active != @Network Stuff ) {
    window -kem @Network Stuff
    titlebar @Network Stuff on $network
  }
  window -g1 @Network Stuff
  echo -ti2 @Network Stuff 7[O] $4-
  haltdef
}
on ^*:SNOTICE:*** Notice -- Received KILL message for *:{
  if ( $active != @Kill Messages ) {
    window -kem @Kill Messages
    titlebar @Kill Messages on $network
  }
  if ($gettok($10,0,46) > 2) var %oper = $gettok($10,1,46) $+ .*
  else var %oper = $10

  if ( $right($8,1) = . ) var %killed = $left( $8 ,$calc( $len( $8 ) -1 ))
  else var %killed = $8

  window -g1 @Kill Messages
  echo -ti2 @Kill Messages 2[K] %oper killed %killed $13-
  haltdef
}
on ^*:SNOTICE:*** Notice -- K-line active for *:{
  if ( $active != @Kill Messages ) {
    window -kem @Kill Messages
    titlebar @Kill Messages on $network
  }
  window -g1 @Kill Messages
  echo -ti2 @Kill Messages 10[K] $4-
  haltdef
}
on ^*:SNOTICE:*** Notice -- Local-ban active for *:{
  if ( $active != @Kill Messages ) {
    window -kem @Kill Messages
    titlebar @Kill Messages on $network
  }
  window -g1 @Kill Messages
  echo -ti2 @Kill Messages 10[B] $4-
  haltdef
}
on ^*:SNOTICE:*** Notice -- Network-ban for *:{
  if ( $active != @Kill Messages ) {
    window -kem @Kill Messages
    titlebar @Kill Messages on $network
  }
  window -g1 @Kill Messages
  echo -ti2 @Kill Messages 10[B] $4-
  haltdef
}
on ^*:SNOTICE:*** Notice -- Autokill active for *:{
  if ( $active != @Kill Messages ) {
    window -kem @Kill Messages
    titlebar @Kill Messages on $network
  }
  window -g1 @Kill Messages
  echo 14 -ti2 @Kill Messages 10[K] $4-
  haltdef
}
on ^*:SNOTICE:*** Notice -- Z-line active for *:{
  if ( $active != @Kill Messages ) {
    window -kem @Kill Messages
    titlebar @Kill Messages on $network
  }
  window -g1 @Kill Messages
  echo 14 -ti2 @Kill Messages 10[Z] $4-
  haltdef
}
on ^*:SNOTICE:*** SPY -- STATS*:{
  var %desc
  if ($5 == c) %desc = c (3C/N lines)
  elseif ($5 == h) %desc = h (3H/L lines)
  elseif ($5 == i) %desc = i (3I lines)
  elseif ($5 === k) %desc = k (3Temp klines)
  elseif ($5 === K) %desc = K (3Perm Klines)
  elseif ($5 === L) %desc = L (3IP + info)
  elseif ($5 === l) %desc = l (3Host + info)
  elseif ($5 == m) %desc = m (3Commands)
  elseif ($5 == o) %desc = o (3O lines)
  elseif ($5 == p) %desc = p (3Opers)
  elseif ($5 == t) %desc = t (3Server info)
  elseif ($5 === U) %desc = U (3U lines)
  elseif ($5 === u) %desc = u (3Uptime)
  elseif ($5 == v) %desc = v (3Other servers)
  elseif ($5 == y) %desc = y (3Y lines)
  elseif ($5 == z) %desc = z (3Memory)
  elseif ($5 == ?) %desc = ? (3Servers SendQ)
  if ( $active != @User ) {
    window -kem @User
    titlebar @User Requests on $server
  }
  window -g1 @User
  echo -ti2 @User 12[N] STATS %desc $8-10
  haltdef
}
on ^*:SNOTICE:*** SPY -- LINKS*:{
  if ( $active != @User ) {
    window -kem @User
    titlebar @User Requests on $server
  }
  window -g1 @User
  echo -ti2 @User 12[N] $4-
  haltdef
}
on ^*:SNOTICE:*** throttled connections*:{
  if ( $active != @Throttled ) {
    window -kem @Throttled
    titlebar @Throttled Connections on $server
  }
  window -g1 @Throttled
  echo -ti2 @Throttled 12[N] Throttled: $7-
  haltdef
}
on ^*:SNOTICE:*** Notice -- Target limited*:{
  if ( $active != @Target ) {
    window -kem @Target
    titlebar @Target limitations on $server
  }
  window -g1 @Target
  echo -ti2 @Target 12[N] $6-
  haltdef
}
on ^*:SNOTICE:*** Forbidding Q*:{
  if ( $active != @Throttled ) {
    window -kem @Throttled
    titlebar @Throttled Connections on $server
  }
  window -g1 @Throttled
  echo -ti2 @Throttled 12[N] Q:lined nick: $7-
  haltdef
}
on ^*:SNOTICE:*** Notice -- clone*:{
  if ( $active != @Clones ) {
    window -kem @Clones
    titlebar @Clones on $network
  }
  window -g1 @Clones
  echo -ti2 @Clones 12[Clone] $5-
  haltdef
}
on ^*:SNOTICE:*** Rejecting *:{
  if ( $active != @Throttled ) {
    window -kem @Throttled
    titlebar @Throttled Connections on $server
  }
  window -g1 @Throttled
  echo -ti2 @Throttled 12[N] $4-
  haltdef
}
on ^*:SNOTICE:*** Notice -- Rejecting*drone*:{
  if ( $active != @Throttled ) {
    window -kem @Throttled
    titlebar @Throttled Connections on $server
  }
  window -g1 @Throttled
  echo -ti2 @Throttled 12[N] $4-
  haltdef
}
on ^*:SNOTICE:*** Notice -- Exiting server*:{
  if ( $active != @Network Stuff ) {
    window -kem @Network Stuff
    titlebar @Network Stuff on $network
  }
  window -g1 @Network Stuff
  echo -ti2 @Network Stuff 3[Routing] $4-
  if ( %routing ) {
    .write " $+ $logdir $+ %routinglog $+ . $+ $network $+ .log $+ " $chr(91) $+ $date(yyyy-mm-dd HH:nn:ss) $+ $chr(93) [R] $4-
  }
}
on ^*:SNOTICE:*** Notice -- * requested by *:{
  if ( $active != @User ) {
    window -kem @User
    titlebar @User Requests on $server
  }
  window -g1 @User
  echo -ti2 @User 12[N] $4-
  haltdef
}
on ^*:SNOTICE:Added Z-Line [*:{
  if ( $active != @Network Stuff ) {
    window -kem @Network Stuff
    titlebar @Network Stuff on $network
  }
  window -g1 @Network Stuff
  echo -ti2 @Network Stuff 3[+Z] $1-
  haltdef
}
on ^*:SNOTICE:K-Line for*:{
  if ( $active != @Network Stuff ) {
    window -kem @Network Stuff
    titlebar @Network Stuff on $network
  }
  window -g1 @Network Stuff
  echo -ti2 @Network Stuff 3[K] $1-
  haltdef
}
on ^*:SNOTICE:*** Notice -- *:{
  if (( $9 == K-Line ) && ( $5 == added )) {
    if ( $active != @Kill Messages ) {
      window -kem @Kill Messages
      titlebar @Kill Messages on $network
    }
    window -g1 @Kill Messages
    echo -ti2 @Kill Messages 3[+K] $4-
  }
  elseif (( $9 == Local-ban ) && ( $5 == added )) {
    if ( $active != @Kill Messages ) {
      window -kem @Kill Messages
      titlebar @Kill Messages on $network
    }
    window -g1 @Kill Messages
    echo -ti2 @Kill Messages 3[+B] $4-
  }
  elseif (( $8 == K-Line ) && ( $6 == removed )) {
    if ( $active != @Kill Messages ) {
      window -kem @Kill Messages
      titlebar @Kill Messages on $network
    }
    window -g1 @Kill Messages
    echo -ti2 @Kill Messages 3[-K] $4-
  }
  elseif (( $8 == Local-ban ) && ( $6 == removed )) {
    if ( $active != @Kill Messages ) {
      window -kem @Kill Messages
      titlebar @Kill Messages on $network
    }
    window -g1 @Kill Messages
    echo -ti2 @Kill Messages 3[-B] $4-
  }
  elseif (( $5 == added ) && ( $6 == Z-Line )) {
    if ( $active != @Kill Messages ) {
      window -kem @Kill Messages
      titlebar @Kill Messages on $network
    }
    window -g1 @Kill Messages
    echo -ti2 @Kill Messages 3[+Z] $4-
  }
  elseif (( $6 == sending ) && ( $7 == forbidden ) && ( $8 == filetyped )) {
    if ( $active != @Network Stuff ) {
      window -kem @Network Stuff
      titlebar @Network Stuff on $network
    }
    window -g1 @Network Stuff
    echo -ti2 @Network Stuff 2[N] $4-
  }
  elseif ( ( $5 == introducing ) && ( $6 == U:lined ) && ( $7 == server) ) {
    if ( $active != @Network Stuff ) {
      window -kem @Network Stuff
      titlebar @Network Stuff on $network
    }
    window -g1 @Network Stuff
    echo -ti2 @Network Stuff 3[Routing] $4-
    if ( %routing ) {
      .write " $+ $logdir $+ %routinglog $+ . $+ $network $+ .log $+ " $chr(91) $+ $date(yyyy-mm-dd HH:nn:ss) $+ $chr(93) [R] $4-
    }
  }
  elseif ( ( $5 == was ) && ( $6 == connected ) && ( $7 == for ) ) {
    if ( $active != @Network Stuff ) {
      window -kem @Network Stuff
      titlebar @Network Stuff on $network
    }
    window -g1 @Network Stuff
    echo -ti2 @Network Stuff 3[Routing] $4-
    if ( %routing ) {
      .write " $+ $logdir $+ %routinglog $+ . $+ $network $+ .log $+ " $chr(91) $+ $date(yyyy-mm-dd HH:nn:ss) $+ $chr(93) [R] $4-
    }
  }
  elseif ( ( $4 == Server ) && ( $6 == already ) && ( $7 == present ) && ( $8 == from) ) {
    if ( $active != @Network Stuff ) {
      window -kem @Network Stuff
      titlebar @Network Stuff on $network
    }
    window -g1 @Network Stuff
    echo -ti2 @Network Stuff 3[Routing] $4-
    if ( %routing ) {
      .write " $+ $logdir $+ %routinglog $+ . $+ $network $+ .log $+ " $chr(91) $+ $date(yyyy-mm-dd HH:nn:ss) $+ $chr(93) [R] $4-
    }
  }
  elseif ( $regex($4-,rehashing Server config file) || $regex($4-,while whistling innocently) || $regex($4-,^Got signal) ) {
    if ( $active != @Network Stuff ) {
      window -kem @Network Stuff
      titlebar @Network Stuff on $network
    }
    window -g1 @Network Stuff
    echo -ti2 @Network Stuff 2[N] $4-
  }
  elseif ( $regex($4,ERROR) && $regex($4-,Closing Link) ) {
    if ( $active != @Network Stuff ) {
      window -kem @Network Stuff
      titlebar @Network Stuff on $network
    }
    window -g1 @Network Stuff
    echo -ti2 @Network Stuff 3[Routing] $4-
    if ( %routing ) {
      .write " $+ $logdir $+ %routinglog $+ . $+ $network $+ .log $+ " $chr(91) $+ $date(yyyy-mm-dd HH:nn:ss) $+ $chr(93) [R] $4-
    }
  }
  elseif ( $regex($4,names) && $regex($5,abuser) ) {
    if ( $active != @Network Stuff ) {
      window -kem @Network Stuff
      titlebar @Network Stuff on $network
    }
    window -g1 @Network Stuff
    echo -ti2 @Network Stuff 3[N] $4-
  }
  else {
    if ( $active != @Raw Network Messages ) {
      window -kem @Raw Network Messages
    }
    window -g1 @Raw Network Messages
    echo -ti2 @Raw Network Messages 12[Notice] $4-
  }
  haltdef
}
on ^*:SNOTICE:*** ADMIN --*:{
  if ( $active != @Network Stuff ) {
    window -kem @Network Stuff
    titlebar @Network Stuff on $network
  }
  window -g1 @Network Stuff
  echo -ti2 @Network Stuff 4[Admin] $4-
  haltdef
}
on ^*:SNOTICE:Error*:{
  if ( $active != @Network Stuff ) {
    window -kem @Network Stuff
    titlebar @Network Stuff on $network
  }
  window -g1 @Network Stuff
  echo -ti2 @Network Stuff 3[Routing] $1- 
  if ( %routing ) {
    .write " $+ $logdir $+ %routinglog $+ . $+ $network $+ .log $+ " $chr(91) $+ $date(yyyy-mm-dd HH:nn:ss) $+ $chr(93) [R] $1-
  }
  haltdef
}
on ^*:SNOTICE:Connect*:{
  if ( $active != @Network Stuff ) {
    window -kem @Network Stuff
    titlebar @Network Stuff on $network
  }
  window -g1 @Network Stuff
  echo -ti2 @Network Stuff 3[Routing] $1- 
  if ( %routing ) {
    .write " $+ $logdir $+ %routinglog $+ . $+ $network $+ .log $+ " $chr(91) $+ $date(yyyy-mm-dd HH:nn:ss) $+ $chr(93) [R] $1-
  }
  haltdef
}
raw 382:*:{ 
  echo -ti2 @Network Stuff 6 $+ [Info]  $+ $2- 
  haltdef
}
on ^*:SNOTICE:*** Error*:{
  if ( $active != @Network Stuff ) {
    window -kem @Network Stuff
    titlebar @Network Stuff on $network
  }
  window -g1 @Network Stuff
  echo -ti2 @Network Stuff 3[Routing] $2-
  if ( %routing ) {
    .write " $+ $logdir $+ %routinglog $+ . $+ $network $+ .log $+ " $chr(91) $+ $date(yyyy-mm-dd HH:nn:ss) $+ $chr(93) [R] $2-
  }
  haltdef
}
on ^*:SNOTICE:UNKLINE*:{
  if ( $active != @Kill Messages ) {
    window -kem @Kill Messages
    titlebar @Kill Messages on $network
  }
  window -g1 @Kill Messages
  echo -ti2 @Kill Messages 3[-K] $1-
  haltdef
}
;
; #### Here go the non recognized Snotices ####
;
on ^*:SNOTICE:*:{
  if ( $active != @Raw Network Messages ) {
    window -kem @Raw Network Messages
  }
  window -g1 @Raw Network Messages
  echo -ti2 @Raw Network Messages 12[SNotice] $1-
  haltdef
}
;
; #### ALIAS ####
;
alias unload.ircoptools { 
  .unload -rs " $+ $scriptdir $+ windowfilter.mrc $+ "
  if $version >= 6.2 {
    if $toolbar(ircophelp) != $null {
      toolbar -d ircophelp
    }
    if $toolbar(ircoptools) != $null {
      toolbar -d ircoptools
    }
  }
  .disable #whoreply
  .disable #whoreply2
  .disable #whoreply3
  .disable #whoreply4
  .disable #whoreply5
  .disable #caescriptfunctions
  .notify -r OperServ
  .notify -r OperServ2
  .notify -r RootServ
  .unset %globops
  .unset %globopslog
  .unset %chatops
  .unset %chatopslog
  .unset %locops
  .unset %locopslog
  .unset %services
  .unset %serviceslog
  .unset %routing
  .unset %routinglog
  .unset %massclone
  .unset %massclonelog
  .unset %massclonecw
  .unset %forbnickstime
  .unset %forbnicksenabled
  .unset %forbnicksdisplayfrom
  .unset %collisionstime
  .unset %collisionsenabled
  .unset %collisionsdisplayfrom
  .unset %msg.an 
  .unset %msg.wm
  .unset %show.msg
  .unset %makillstart
  .unset %time.clonelist5
  .unset %reason.clonelist5
  .unset %time.clonelist4
  .unset %reason.clonelist4
  .unset %time.clonelist3
  .unset %reason.clonelist3
  .unset %akill.reason
  .unset %akill.time
  .unset %akill.ams.time
  .unset %akill.amw.time
  .unset %akill.afl.time
  .unset %akill.ahs.time
  .unset %akill.asa.time
  .unset %akill.anc.time
  .unset %akill.acl.time
  .unset %akill.afn.time
  .unset %akill.atssp.time
  .unset %akill.ats.time
  .unset %akill.afs.time
  .unset %akill.aps.time
  .unset %akill.ahp.time
  .unset %akill.ahp2.time
  .unset %akill.aif.time
  .unset %akill.asi.time
  .unset %akill.cmd
  .unset %akill.service
  .unset %akill.default
  .unset %akill.afs
  .unset %akill.aps
  .unset %akill.ahp
  .unset %akill.ahp2
  .unset %akill.aif
  .unset %akill.asi
  .unset %akill.ac
  .unset %akill.ac.time
  .unset %akill.ams
  .unset %akill.amw
  .unset %akill.afl
  .unset %akill.ahs
  .unset %akill.asa
  .unset %akill.ats
  .unset %akill.atssp
  .unset %akill.anc
  .unset %akill.acl
  .unset %akill.afn
  .unset %kline.reason
  .unset %kline.time
  .unset %kill.ms
  .unset %kill.mssp
  .unset %kill.hs
  .unset %kill.hssp
  .unset %kill.fl
  .unset %kill.flsp
  .unset %kill.reason
  .unset %clone.buscar
  .unset %clone.buscar2
  .unset %reason
  .unset %clone.add
  .unset %clone.ident
  .unset %whoreply
  .unset %servidor.stats.l
  .unset %posicion.arroba
  .unset %posicion.rescate
  .unset %clone.num
  .unset %posicion.punto
  .unset %slserver
  .echo -s 2[N] %version.ircoptools Unloaded ....
  .unset %version.ircoptools
  .unload -rs ircoptools\ircoptools.mrc 
  .halt
}
alias saopme { /samode # +o $me }
alias sajoinme { /sajoin $1- }
alias setos { 
  if (!$1) {
    echo -ati2 4*** Usage: /SETOS <ServiceName>
  }
  else {
    echo -ati2 4*** Setting $1 as new OperServ Service
    set %akill.service $1
  }
}
alias chatops .raw CHATOPS : $+ $1-
alias help.ircoptools {
  /run $mircdir $+ ircoptools\ircoptools.chm
}
alias globops .raw GLOBOPS : $+ $1-
alias locops .raw LOCOPS : $+ $1-
alias logmassclone {
  //  echo -s Recibido ID: $1 Texto: $2-
  if ( %massclone ) {
    .write " $+ $logdir $+ %massclonelog $+ . $+ $network $+ .log $+ " $chr(91) $+ $date(yyyy-mm-dd HH:nn:ss) $+ $chr(93) $chr(91) $+ $1 $+ $chr(93) $2-
  }
  if ( %massclonecw ) {
    if ( $active != @MassClone Logs ) {
      window -kem @MassClone Logs
      titlebar @MassClone Logs on $network
    }
    window -g1 @MassClone Logs
    echo -ti2 @MassClone $chr(91) $+ $date(yyyy-mm-dd HH:nn:ss) $+ $chr(93) $chr(91) $+ $1 $+ $chr(93) $2-
  }
}
alias helpserv .raw privmsg HelpServ : $+ $1-
alias statserv .raw privmsg StatServ : $+ $1-
alias akill {
  if (. !isin $2) {
    echo -ati2 4*** Usage: /AKILL [time in minutes] <userid@host.ip|host.domain> [Reason]
  }
  else {
    var %time = 30, %target, %reason
    if (*@* iswm $$2) var %target = $$2
    else var %target = *!*@ $+ $$2
    if ($1 isnum) var %time = $1
    if (($1 isnum) && ($3)) set %reason $3-
    elseif (($1) && ($1 !isnum)) set %reason $2-
    else set %reason %akill.default
    if (%show.msg == 1) {
      echo -at 4*** Adding %time $+ -minute AKILL for %target ( $+ %reason $+ )
    }
    .raw PRIVMSG %akill.service :autokill time %time %target %reason
  }
}
alias afs {
  var %time = 30, %target, %reason
  if ($2 && ($int($1)!=0) ) {
    .set %akill.subject $2
    .set %time $1
    .set %reason $3- %akill.afs
  }
  else {
    .set %akill.subject $1
    .set %time %akill.afs.time
    .set %reason $2- %akill.afs
  }
  if (. !isin %akill.subject) {
    echo -ati2 4*** Usage: /AFS [Time in Minutes] <userid@host.ip|host.domain> [Reason]
  }
  else {
    if (*@* iswm %akill.subject) var %target = %akill.subject
    else var %target = *!*@ $+ %akill.subject
    if (%show.msg == 1) {
      echo -at 4*** Adding %time $+ -minute AKILL for %target ( $+ %reason $+ )
    }
    .raw PRIVMSG %akill.service :autokill time %time %target %reason
  }
  .unset %akill.subject
  .unset %time
  .unset %reason
  .unset %target
}
alias aps {
  var %time = 30, %target, %reason
  if ($2 && ($int($1)!=0) ) {
    .set %akill.subject $2
    .set %time $1
    .set %reason $3- %akill.aps
  }
  else {
    .set %akill.subject $1
    .set %time %akill.aps.time
    .set %reason $2- %akill.aps
  }
  if (. !isin %akill.subject) {
    echo -ati2 4*** Usage: /APS [Time in Minutes] <userid@host.ip|host.domain> [Reason]
  }
  else {
    if (*@* iswm %akill.subject) var %target = %akill.subject
    else var %target = *!*@ $+ %akill.subject
    if (%show.msg == 1) {
      echo -at 4*** Adding %time $+ -minute AKILL for %target ( $+ %reason $+ )
    }
    .raw PRIVMSG %akill.service :autokill time %time %target %reason
  }
  .unset %akill.subject
  .unset %time
  .unset %reason
  .unset %target
}
alias ahp {
  var %time = 30, %target, %reason
  if ($2 && ($int($1)!=0) ) {
    .set %akill.subject $2
    .set %time $1
    .set %reason $3- %akill.ahp
  }
  else {
    .set %akill.subject $1
    .set %time %akill.ahp.time
    .set %reason $2- %akill.ahp
  }
  if (. !isin %akill.subject) {
    echo -ati2 4*** Usage: /AHP [Time in Minutes] <userid@host.ip|host.domain> [Reason]
  }
  else {
    if (*@* iswm %akill.subject) var %target = %akill.subject
    else var %target = *!*@ $+ %akill.subject
    if (%show.msg == 1) {
      echo -at 4*** Adding %time $+ -minute AKILL for %target ( $+ %reason $+ )
    }
    .raw PRIVMSG %akill.service :autokill time %time %target %reason
  }
  .unset %akill.subject
  .unset %time
  .unset %reason
  .unset %target
}
alias ahp2 {
  var %time = 30, %target, %reason
  if ($2 && ($int($1)!=0) ) {
    .set %akill.subject $2
    .set %time $1
    .set %reason $3- %akill.ahp2
  }
  else {
    .set %akill.subject $1
    .set %time %akill.ahp2.time
    .set %reason $2- %akill.ahp2
  }
  if (. !isin %akill.subject) {
    echo -ati2 4*** Usage: /AHP2 [Time in Minutes] <userid@host.ip|host.domain> [Reason]
  }
  else {
    if (*@* iswm %akill.subject) var %target = %akill.subject
    else var %target = *!*@ $+ %akill.subject
    if (%show.msg == 1) {
      echo -at 4*** Adding %time $+ -minute AKILL for %target ( $+ %reason $+ )
    }
    .raw PRIVMSG %akill.service :autokill time %time %target %reason
  }
  .unset %akill.subject
  .unset %time
  .unset %reason
  .unset %target
}
alias aif {
  var %time = 30, %target, %reason
  if ($2 && ($int($1)!=0) ) {
    .set %akill.subject $2
    .set %time $1
    .set %reason $3- %akill.aif
  }
  else {
    .set %akill.subject $1
    .set %time %akill.aif.time
    .set %reason $2- %akill.aif
  }
  if (. !isin %akill.subject) {
    echo -ati2 4*** Usage: /AIF [Time in Minutes] <userid@host.ip|host.domain> [Reason]
  }
  else {
    if (*@* iswm %akill.subject) var %target = %akill.subject
    else var %target = *!*@ $+ %akill.subject
    if (%show.msg == 1) {
      echo -at 4*** Adding %time $+ -minute AKILL for %target ( $+ %reason $+ )
    }
    .raw PRIVMSG %akill.service :autokill time %time %target %reason
  }
  .unset %akill.subject
  .unset %time
  .unset %reason
  .unset %target
}
alias asi {
  var %time = 30, %target, %reason
  if ($2 && ($int($1)!=0) ) {
    .set %akill.subject $2
    .set %time $1
    .set %reason $3- %akill.asi
  }
  else {
    .set %akill.subject $1
    .set %time %akill.asi.time
    .set %reason $2- %akill.asi
  }
  if (. !isin %akill.subject) {
    echo -ati2 4*** Usage: /ASI [Time in Minutes] <userid@host.ip|host.domain> [Reason]
  }
  else {
    if (*@* iswm %akill.subject) var %target = %akill.subject
    else var %target = *!*@ $+ %akill.subject
    if (%show.msg == 1) {
      echo -at 4*** Adding %time $+ -minute AKILL for %target ( $+ %reason $+ )
    }
    .raw PRIVMSG %akill.service :autokill time %time %target %reason
  }
  .unset %akill.subject
  .unset %time
  .unset %reason
  .unset %target
}
alias ac {
  var %time = 30, %target, %reason
  if ($2 && ($int($1)!=0) ) {
    .set %akill.subject $2
    .set %time $1
    .set %reason $3- %akill.ac
  }
  else {
    .set %akill.subject $1
    .set %time %akill.ac.time
    .set %reason $2- %akill.ac
  }
  if (. !isin %akill.subject) {
    echo -ati2 4*** Usage: /AC [Time in Minutes] <userid@host.ip|host.domain> [Reason]
  }
  else {
    if (*@* iswm %akill.subject) var %target = %akill.subject
    else var %target = *!*@ $+ %akill.subject
    if (%show.msg == 1) {
      echo -at 4*** Adding %time $+ -minute AKILL for %target ( $+ %reason $+ )
    }
    .raw PRIVMSG %akill.service :autokill time %time %target %reason
  }
  .unset %akill.subject
  .unset %time
  .unset %reason
  .unset %target
}
alias ams {
  var %time = 30, %target, %reason
  if ($2 && ($int($1)!=0) ) {
    .set %akill.subject $2
    .set %time $1
    .set %reason $3- %akill.ams
  }
  else {
    .set %akill.subject $1
    .set %time %akill.ams.time
    .set %reason $2- %akill.ams
  }
  if (. !isin %akill.subject) {
    echo -ati2 4*** Usage: /AMS [Time in Minutes] <userid@host.ip|host.domain> [Reason]
  }
  else {
    if (*@* iswm %akill.subject) var %target = %akill.subject
    else var %target = *!*@ $+ %akill.subject
    if (%show.msg == 1) {
      echo -at 4*** Adding %time $+ -minute AKILL for %target ( $+ %reason $+ )
    }
    .raw PRIVMSG %akill.service :autokill time %time %target %reason
  }
  .unset %akill.subject
  .unset %time
  .unset %reason
  .unset %target
}
alias amw {
  var %time = 30, %target, %reason
  if ($2 && ($int($1)!=0) ) {
    .set %akill.subject $2
    .set %time $1
    .set %reason $3- %akill.amw
  }
  else {
    .set %akill.subject $1
    .set %time %akill.amw.time
    .set %reason $2- %akill.amw
  }
  if (. !isin %akill.subject) {
    echo -ati2 4*** Usage: /AMW [Time in Minutes] <userid@host.ip|host.domain> [Reason]
  }
  else {
    if (*@* iswm %akill.subject) var %target = %akill.subject
    else var %target = *!*@ $+ %akill.subject
    if (%show.msg == 1) {
      echo -at 4*** Adding %time $+ -minute AKILL for %target ( $+ %reason $+ )
    }
    .raw PRIVMSG %akill.service :autokill time %time %target %reason
  }
  .unset %akill.subject
  .unset %time
  .unset %reason
  .unset %target
}
alias afl {
  var %time = 30, %target, %reason
  if ($2 && ($int($1)!=0) ) {
    .set %akill.subject $2
    .set %time $1
    .set %reason $3- %akill.afl
  }
  else {
    .set %akill.subject $1
    .set %time %akill.afl.time
    .set %reason $2- %akill.afl
  }
  if (. !isin %akill.subject) {
    echo -ati2 4*** Usage: /AFL [Time in Minutes] <userid@host.ip|host.domain> [Reason]
  }
  else {
    if (*@* iswm %akill.subject) var %target = %akill.subject
    else var %target = *!*@ $+ %akill.subject
    if (%show.msg == 1) {
      echo -at 4*** Adding %time $+ -minute AKILL for %target ( $+ %reason $+ )
    }
    .raw PRIVMSG %akill.service :autokill time %time %target %reason
  }
  .unset %akill.subject
  .unset %time
  .unset %reason
  .unset %target
}
alias ahs {
  var %time = 30, %target, %reason
  if ($2 && ($int($1)!=0) ) {
    .set %akill.subject $2
    .set %time $1
    .set %reason $3- %akill.ahs
  }
  else {
    .set %akill.subject $1
    .set %time %akill.ahs.time
    .set %reason $2- %akill.ahs
  }
  if (. !isin %akill.subject) {
    echo -ati2 4*** Usage: /AHS [Time in Minutes] <userid@host.ip|host.domain> [Reason]
  }
  else {
    if (*@* iswm %akill.subject) var %target = %akill.subject
    else var %target = *!*@ $+ %akill.subject
    if (%show.msg == 1) {
      echo -at 4*** Adding %time $+ -minute AKILL for %target ( $+ %reason $+ )
    }
    .raw PRIVMSG %akill.service :autokill time %time %target %reason
  }
  .unset %akill.subject
  .unset %time
  .unset %reason
  .unset %target
}
alias anc {
  var %time = 30, %target, %reason
  if ($2 && ($int($1)!=0) ) {
    .set %akill.subject $2
    .set %time $1
    .set %reason $3- %akill.anc
  }
  else {
    .set %akill.subject $1
    .set %time %akill.anc.time
    .set %reason $2- %akill.anc
  }
  if (. !isin %akill.subject) {
    echo -ati2 4*** Usage: /ANC [Time in Minutes] <userid@host.ip|host.domain> [Reason]
  }
  else {
    if (*@* iswm %akill.subject) var %target = %akill.subject
    else var %target = *!*@ $+ %akill.subject
    if (%show.msg == 1) {
      echo -at 4*** Adding %time $+ -minute AKILL for %target ( $+ %reason $+ )
    }
    .raw PRIVMSG %akill.service :autokill time %time %target %reason
  }
  .unset %akill.subject
  .unset %time
  .unset %reason
  .unset %target
}
alias acl {
  var %time = 30, %target, %reason
  if ($2 && ($int($1)!=0) ) {
    .set %akill.subject $2
    .set %time $1
    .set %reason $3- %akill.acl
  }
  else {
    .set %akill.subject $1
    .set %time %akill.acl.time
    .set %reason $2- %akill.acl
  }
  if (. !isin %akill.subject) {
    echo -ati2 4*** Usage: /ACL [Time in Minutes] <userid@host.ip|host.domain> [Reason]
  }
  else {
    if (*@* iswm %akill.subject) var %target = %akill.subject
    else var %target = *!*@ $+ %akill.subject
    if (%show.msg == 1) {
      echo -at 4*** Adding %time $+ -minute AKILL for %target ( $+ %reason $+ )
    }
    .raw PRIVMSG %akill.service :autokill time %time %target %reason
  }
  .unset %akill.subject
  .unset %time
  .unset %reason
  .unset %target
}
alias afn {
  var %time = 30, %target, %reason
  if ($2 && ($int($1)!=0) ) {
    .set %akill.subject $2
    .set %time $1
    .set %reason $3- %akill.afn
  }
  else {
    .set %akill.subject $1
    .set %time %akill.afn.time
    .set %reason $2- %akill.afn
  }
  if (. !isin %akill.subject) {
    echo -ati2 4*** Usage: /afn [Time in Minutes] <userid@host.ip|host.domain> [Reason]
  }
  else {
    if (*@* iswm %akill.subject) var %target = %akill.subject
    else var %target = *!*@ $+ %akill.subject
    if (%show.msg == 1) {
      echo -at 4*** Adding %time $+ -minute AKILL for %target ( $+ %reason $+ )
    }
    .raw PRIVMSG %akill.service :autokill time %time %target %reason
  }
  .unset %akill.subject
  .unset %time
  .unset %reason
  .unset %target
}
alias asa {
  var %time = 30, %target, %reason
  if ($2 && ($int($1)!=0) ) {
    .set %akill.subject $2
    .set %time $1
    .set %reason $3- %akill.asa
  }
  else {
    .set %akill.subject $1
    .set %time %akill.asa.time
    .set %reason $2- %akill.asa
  }
  if (. !isin %akill.subject) {
    echo -ati2 4*** Usage: /ASA [Time in Minutes] <userid@host.ip|host.domain> [Reason]
  }
  else {
    if (*@* iswm %akill.subject) var %target = %akill.subject
    else var %target = *!*@ $+ %akill.subject
    if (%show.msg == 1) {
      echo -at 4*** Adding %time $+ -minute AKILL for %target ( $+ %reason $+ )
    }
    .raw PRIVMSG %akill.service :autokill time %time %target %reason
  }
  .unset %akill.subject
  .unset %time
  .unset %reason
  .unset %target
}
alias ats {
  var %time = 30, %target, %reason
  if ($2 && ($int($1)!=0) ) {
    .set %akill.subject $2
    .set %time $1
    .set %reason $3- %akill.ats
  }
  else {
    .set %akill.subject $1
    .set %time %akill.ats.time
    .set %reason $2- %akill.ats
  }
  if (. !isin %akill.subject) {
    echo -ati2 4*** Usage: /ATS [Time in Minutes] <userid@host.ip|host.domain> [Reason]
  }
  else {
    if (*@* iswm %akill.subject) var %target = %akill.subject
    else var %target = *!*@ $+ %akill.subject
    if (%show.msg == 1) {
      echo -at 4*** Adding %time $+ -minute AKILL for %target ( $+ %reason $+ )
    }
    .raw PRIVMSG %akill.service :autokill time %time %target %reason
  }
  .unset %akill.subject
  .unset %time
  .unset %reason
  .unset %target
}
alias atssp {
  var %time = 30, %target, %reason
  if ($2 && ($int($1)!=0) ) {
    .set %akill.subject $2
    .set %time $1
    .set %reason $3- %akill.atssp
  }
  else {
    .set %akill.subject $1
    .set %time %akill.atssp.time
    .set %reason $2- %akill.atssp
  }
  if (. !isin %akill.subject) {
    echo -ati2 4*** Usage: /ATSSP [Time in Minutes] <userid@host.ip|host.domain> [Reason]
  }
  else {
    if (*@* iswm %akill.subject) var %target = %akill.subject
    else var %target = *!*@ $+ %akill.subject
    if (%show.msg == 1) {
      echo -at 4*** Adding %time $+ -minute AKILL for %target ( $+ %reason $+ )
    }
    .raw PRIVMSG %akill.service :autokill time %time %target %reason
  }
  .unset %akill.subject
  .unset %time
  .unset %reason
  .unset %target
}
alias an .raw PRIVMSG $1 : $+ %msg.an
alias wm .raw PRIVMSG $1 : $+ %msg.wm
alias kms .kill $1 %kill.ms
alias kmssp .kill $1 %kill.mssp
alias khs .kill $1 %kill.hs
alias khssp .kill $1 %kill.hssp
alias kfl .kill $1 %kill.fl
alias kflsp .kill $1 %kill.flsp
alias report { /run mailto:kline-report@dal.net?Subject= $+ $input(KLINE Auth ID,1,Akill Report) for $input(Time in minutes,1,Akill Report) minutes?body= $+ $input(Reason,1,Akill Report) }
alias snotice { /notice $ $+ $server [Server Notice] $1- [Please do NOT respond] }
alias clones { /set %clone.add $1 | set %whoreply 1 | .enable #whoreply | dialog -m clonelist clonelist }
alias clones2 { /set %clone.add $1 | set %whoreply 1 | .enable #whoreply2 | dialog -m clonelist2 clonelist2 }
alias cdrones { /set %clone.add $1 | set %whoreply 1 | .enable #whoreply3 | dialog -m clonelist3 clonelist3 }
alias clscan { .enable #clscan | .userhost $1 }
alias collisions {
  .echo -s 2[N] Nick Collission detector enabled
  .enable #collisions
  .mode $me +k
}
alias collisionsoff {
  .echo -s 2[N] Nick Collission detector disabled
  .disable #collisions
  .mode $me -k
}
alias configure { dialog -m controlp controlp }
alias conf_akill { dialog -m cfakills cfakills }
alias conf_kline { dialog -m cfklines cfklines }
alias conf_kills { dialog -m cfkill cfkill }
alias conf_logs { dialog -m cflogs cflogs }
alias conf_collisions { dialog -m cfcollisions cfcollisions }
alias conf_forbnicks { dialog -m cfforbnicks cfforbnicks }
alias conf_save {
  .echo -s 2[N] Saving configuration . . .
  .write -c " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " ;
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " ; #### Configuration file for 
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " ; #### IRCopTools %version.ircoptools
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " ; #### Generated on: $date $time
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " ; #### by: $address($me,5)
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " ;
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " [AKILLS]
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " ; Akill Reason for clone killer
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " reason= $+ %akill.reason
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " ; Default akill time for clone killer and all akills
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " Time= $+ %akill.time
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " ; Command to issue an autokill for clone killer
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " ; DALnet,SquirrelsNET = autokill aIRCDnet and ArabChat = AKILL
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " Command= $+ %akill.cmd
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " ; Service to msg for the autokill
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " Service= $+ %akill.service
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " ; Default reason for akills with /akill
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " default= $+ %akill.default
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " ; Reason and time for /afs (Flooding Services by SABUSE)
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " afs= $+ %akill.afs
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " afs.time= $+ %akill.afs.time
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " ; Reason and time for /afs (Ping Flooding Services by SABUSE)
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " aps= $+ %akill.aps
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " aps.time= $+ %akill.aps.time
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " ; Reason and time for /ahp (Trying to hack passwords by SABUSE)
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " ahp= $+ %akill.ahp
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " ahp.time= $+ %akill.ahp.time
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " ; Reason and time for /ahp2 (Trying to hack password via email by SABUSE)
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " ahp2= $+ %akill.ahp2
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " ahp2.time= $+ %akill.ahp2.time
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " ; Reason and time for /aif (SAbuse: info flood)
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " aif= $+ %akill.aif
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " aif.time= $+ %akill.aif.time
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " ; Reason and time for /asi (Broken Identify Script by SABUSE)
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " asi= $+ %akill.asi
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " asi.time= $+ %akill.asi.time
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " ; Reason and time for /ac (clones)
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " ac= $+ %akill.ac
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " ac.time= $+ %akill.ac.time
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " ; Reason and time for /ams (Mass Invites)
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " ams= $+ %akill.ams
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " ams.time= $+ %akill.ams.time
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " ; Reason and time for /amw (Mass advertising web)
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " amw= $+ %akill.amw
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " amw.time= $+ %akill.amw.time
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " ; Reason and time for /afl (Flood)
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " afl= $+ %akill.afl
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " afl.time= $+ %akill.afl.time
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " ; Reason and time for /ahs (Harassment)
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " ahs= $+ %akill.ahs
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " ahs.time= $+ %akill.ahs.time
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " ; Reason and time for /asa (Services Abuse)
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " asa= $+ %akill.asa
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " asa.time= $+ %akill.asa.time
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " ; Reason and time for /ats (Trojan Send)
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " ats= $+ %akill.ats
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " ats.time= $+ %akill.ats.time
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " ; Reason and time for /anc - Akill for Nick Chasing
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " anc= $+ %akill.anc
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " anc.time= $+ %akill.anc.time
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " ; Reason and time for /acl - Akill for Nick Colliding
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " acl= $+ %akill.acl
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " acl.time= $+ %akill.acl.time
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " ; Reason and time for /afn - Akill for Trying to use a forbidden nick
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " afn= $+ %akill.afn
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " afn.time= $+ %akill.afn.time
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " ; Show the akills with an echo to the current screen ?
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " show.msg= $+ %show.msg
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " ;
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " [KLINE]
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " ; Default kline reason for clone killer
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " reason= $+ %kline.reason
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " ; Default kline time for clone killer
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " time= $+ %kline.time
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " ;
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " [KILL]
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " ; Reason for the masskill clones feature
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " reason= $+ %kill.reason
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " ; Reason for the mass invites kill
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " ms= $+ %kill.ms
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " ; Reason for the Mass invites kill Spanish
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " mssp= $+ %kill.mssp
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " ; Reason for the Harassment kill
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " hs= $+ %kill.hs
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " ; Reason for the Harassment kill spanish
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " hssp= $+ %kill.hssp
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " ; Reason for the flooding kill
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " fl= $+ %kill.fl
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " ; Reason for the flooding kill (spanish)
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " flsp= $+ %kill.flsp
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " ;
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " [Messages]
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " ; Reason for /an (Services Abuse Notify)
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " an= $+ %msg.an
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " ; Reason for /mw (Stop trying to hack passwords notify)
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " wm= $+ %msg.wm
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " ;
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " [LOGS]
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " ; [0/1] Want to Log GlobOps?
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " globops= $+ %globops
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " ; File to log globops
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " globopslog= $+ %globopslog
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " ; [0/1] Want to Log ChatOps?
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " chatops= $+ %chatops
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " ; File to log chatops
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " chatopslog= $+ %chatopslog
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " ; [0/1] Want to Log LocOps?
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " locops= $+ %locops
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " ; File to log globops
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " locopslog= $+ %locopslog
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " ; [0/1] Want to Log Services Notices
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " services= $+ %services
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " ; File to log Services notices
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " serviceslog= $+ %serviceslog
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " ; [0/1] Want to Log Routing Notices?
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " routing= $+ %routing
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " ; File to log routing
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " routinglog= $+ %routinglog
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " ; [0/1] Want to Log Mass/clone results and operations?
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " massclone= $+ %massclone
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " ; File to log Mass/clone results and operations
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " massclonelog= $+ %massclonelog
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " ; [0/1] Aditionally open a custom window and show in mIRC
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " massclonecw= $+ %massclonecw
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " ;
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " [Collisions]
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " ; Time in seconds for collisions detections
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " time= $+ %collisionstime
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " ; Enable by default?
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " enabled= $+ %collisionsenabled
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " ; Display from collide number:
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " startdisplayfrom= $+ %collisionsdisplayfrom
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " ;
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " [ForbNicks]
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " ; Time in seconds for forbidden nicks detections
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " time= $+ %forbnickstime
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " ; Enable by default?
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " enabled= $+ %forbnicksenabled
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " ; Display from try number:
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " startdisplayfrom= $+ %forbnicksdisplayfrom
  .write " $+ %mircdir $+ ircoptools\ircoptools.ini $+ " ;
}
alias conf_messages { 
  if (%msg.an == $null ) { .set %msg.an $readini ircoptools\default-ircoptools.ini messages an }
  .set %msg.an $input(Reason for Services Abuse Notify /an,1,IRCopTools Configuration,%msg.an)
  if (%msg.an == $null ) { .set %msg.an $readini ircoptools\default-ircoptools.ini messages an }

  if (%msg.wm == $null ) { .set %msg.wm $readini ircoptools\default-ircoptools.ini messages wm }
  .set %msg.wm $input(Reason for Stop trying to hack passwords notify /wm,1,IRCopTools Configuration,%msg.wm)
  if (%msg.wm == $null ) { .set %msg.wm $readini ircoptools\default-ircoptools.ini messages wm }
}
alias conf_akilltm {
  if (%akill.afs == $null ) { .set %akill.afs $readini ircoptools\default-ircoptools.ini akills afs }
  .set %akill.afs $input(Reason for akill for flooding services /afs,1,IRCopTools Configuration,%akill.afs)
  if (%akill.afs == $null ) { .set %akill.afs $readini ircoptools\default-ircoptools.ini akills afs }

  if (%akill.afs.time == $null ) { .set %akill.afs.time $readini ircoptools\default-ircoptools.ini akills afs.time }
  .set %akill.afs.time $input(Time for akill for flooding services /afs,1,IRCopTools Configuration,%akill.afs.time)
  if (%akill.afs.time == $null ) { .set %akill.afs.time $readini ircoptools\default-ircoptools.ini akills afs.time }

  if (%akill.aps == $null ) { .set %akill.aps $readini ircoptools\default-ircoptools.ini akills aps }
  .set %akill.aps $input(Reason for akill for ping flooding services /aps,1,IRCopTools Configuration,%akill.aps)
  if (%akill.aps == $null ) { .set %akill.aps $readini ircoptools\default-ircoptools.ini akills aps }

  if (%akill.aps.time == $null ) { .set %akill.aps.time $readini ircoptools\default-ircoptools.ini akills aps.time }
  .set %akill.aps.time $input(Time for akill for ping flooding services /aps,1,IRCopTools Configuration,%akill.aps.time)
  if (%akill.aps.time == $null ) { .set %akill.aps.time $readini ircoptools\default-ircoptools.ini akills aps.time }

  if (%akill.ahp == $null ) { .set %akill.ahp $readini ircoptools\default-ircoptools.ini akills ahp }
  .set %akill.ahp $input(Reason for akill for trying to hack passwords /ahp,1,IRCopTools Configuration,%akill.ahp)
  if (%akill.ahp == $null ) { .set %akill.ahp $readini ircoptools\default-ircoptools.ini akills ahp }

  if (%akill.ahp.time == $null ) { .set %akill.ahp.time $readini ircoptools\default-ircoptools.ini akills ahp.time }
  .set %akill.ahp.time $input(Time for akill for trying to hack passwords /ahp,1,IRCopTools Configuration,%akill.ahp.time)
  if (%akill.ahp.time == $null ) { .set %akill.ahp.time $readini ircoptools\default-ircoptools.ini akills ahp.time }

  if (%akill.ahp2 == $null ) { .set %akill.ahp2 $readini ircoptools\default-ircoptools.ini akills ahp2 }
  .set %akill.ahp2 $input(Reason for akill for trying to hack password via E-Mail /ahp2,1,IRCopTools Configuration,%akill.ahp2)
  if (%akill.ahp2 == $null ) { .set %akill.ahp2 $readini ircoptools\default-ircoptools.ini akills ahp2 }

  if (%akill.ahp2.time == $null ) { .set %akill.ahp2.time $readini ircoptools\default-ircoptools.ini akills ahp2.time }
  .set %akill.ahp2.time $input(Time for akill for trying to hack passwords via E-Mail /ahp2,1,IRCopTools Configuration,%akill.ahp2.time)
  if (%akill.ahp2.time == $null ) { .set %akill.ahp2.time $readini ircoptools\default-ircoptools.ini akills ahp2.time }

  if (%akill.aif == $null ) { .set %akill.aif $readini ircoptools\default-ircoptools.ini akills aif }
  .set %akill.aif $input(Reason for akill for trying to flood services with INFOs /aif,1,IRCopTools Configuration,%akill.aif)
  if (%akill.aif == $null ) { .set %akill.aif $readini ircoptools\default-ircoptools.ini akills aif }

  if (%akill.aif.time == $null ) { .set %akill.aif.time $readini ircoptools\default-ircoptools.ini akills aif.time }
  .set %akill.aif.time $input(Reason for akill for trying to flood services with INFOs /aif,1,IRCopTools Configuration,%akill.aif.time)
  if (%akill.aif.time == $null ) { .set %akill.aif.time $readini ircoptools\default-ircoptools.ini akills aif.time }

  if (%akill.asi == $null ) { .set %akill.asi $readini ircoptools\default-ircoptools.ini akills asi }
  .set %akill.asi $input(Reason for akill for broken identify script /asi,1,IRCopTools Configuration,%akill.asi)
  if (%akill.asi == $null ) { .set %akill.asi $readini ircoptools\default-ircoptools.ini akills asi }

  if (%akill.asi.time == $null ) { .set %akill.asi.time $readini ircoptools\default-ircoptools.ini akills asi.time }
  .set %akill.asi.time $input(Time for akill for broken identify script /asi,1,IRCopTools Configuration,%akill.asi.time)
  if (%akill.asi.time == $null ) { .set %akill.asi.time $readini ircoptools\default-ircoptools.ini akills asi.time }

  if (%akill.ac == $null ) { .set %akill.ac $readini ircoptools\default-ircoptools.ini akills ac }
  .set %akill.ac $input(Reason for akill for clones /ac,1,IRCopTools Configuration,%akill.ac)
  if (%akill.ac == $null ) { .set %akill.ac $readini ircoptools\default-ircoptools.ini akills ac }

  if (%akill.ac.time == $null ) { .set %akill.ac.time $readini ircoptools\default-ircoptools.ini akills ac.time }
  .set %akill.ac.time $input(Time for akill for clones /ac,1,IRCopTools Configuration,%akill.ac.time)
  if (%akill.ac.time == $null ) { .set %akill.ac.time $readini ircoptools\default-ircoptools.ini akills ac.time }

  if (%akill.ams == $null ) { .set %akill.ams $readini ircoptools\default-ircoptools.ini akills ams }
  .set %akill.ams $input(Reason for akill for mass invites /ams,1,IRCopTools Configuration,%akill.ams)
  if (%akill.ams == $null ) { .set %akill.ams $readini ircoptools\default-ircoptools.ini akills ams }

  if (%akill.ams.time == $null ) { .set %akill.ams.time $readini ircoptools\default-ircoptools.ini akills ams.time }
  .set %akill.ams.time $input(Time for akill for mass invitess /ams,1,IRCopTools Configuration,%akill.ams.time)
  if (%akill.ams.time == $null ) { .set %akill.ams.time $readini ircoptools\default-ircoptools.ini akills ams.time }

  if (%akill.amw == $null ) { .set %akill.amw $readini ircoptools\default-ircoptools.ini akills amw }
  .set %akill.amw $input(Reason for akill for mass advertising web /amw,1,IRCopTools Configuration,%akill.amw)
  if (%akill.amw == $null ) { .set %akill.amw $readini ircoptools\default-ircoptools.ini akills amw }

  if (%akill.amw.time == $null ) { .set %akill.amw.time $readini ircoptools\default-ircoptools.ini akills amw.time }
  .set %akill.amw.time $input(Time for akill for mass advertising web /amw,1,IRCopTools Configuration,%akill.amw.time)
  if (%akill.amw.time == $null ) { .set %akill.amw.time $readini ircoptools\default-ircoptools.ini akills amw.time }

  if (%akill.afl == $null ) { .set %akill.afl $readini ircoptools\default-ircoptools.ini akills afl }
  .set %akill.afl $input(Reason for akill for flooding /afl,1,IRCopTools Configuration,%akill.afl)
  if (%akill.afl == $null ) { .set %akill.afl $readini ircoptools\default-ircoptools.ini akills afl }

  if (%akill.afl.time == $null ) { .set %akill.afl.time $readini ircoptools\default-ircoptools.ini akills afl.time }
  .set %akill.afl.time $input(Time for akill for flooding /afl,1,IRCopTools Configuration,%akill.afl.time)
  if (%akill.afl.time == $null ) { .set %akill.afl.time $readini ircoptools\default-ircoptools.ini akills afl.time }

  if (%akill.ahs == $null ) { .set %akill.ahs $readini ircoptools\default-ircoptools.ini akills ahs }
  .set %akill.ahs $input(Reason for akill for harassment /ahs,1,IRCopTools Configuration,%akill.ahs)
  if (%akill.ahs == $null ) { .set %akill.ahs $readini ircoptools\default-ircoptools.ini akills ahs }

  if (%akill.ahs.time == $null ) { .set %akill.ahs.time $readini ircoptools\default-ircoptools.ini akills ahs.time }
  .set %akill.ahs.time $input(Time for akill for harassment /ahs,1,IRCopTools Configuration,%akill.ahs.time)
  if (%akill.ahs.time == $null ) { .set %akill.ahs.time $readini ircoptools\default-ircoptools.ini akills ahs.time }

  if (%akill.asa == $null ) { .set %akill.asa $readini ircoptools\default-ircoptools.ini akills asa }
  .set %akill.asa $input(Reason for akill for abusing services /asa,1,IRCopTools Configuration,%akill.asa)
  if (%akill.asa == $null ) { .set %akill.asa $readini ircoptools\default-ircoptools.ini akills asa }

  if (%akill.asa.time == $null ) { .set %akill.asa.time $readini ircoptools\default-ircoptools.ini akills asa.time }
  .set %akill.asa.time $input(Time for akill for abusing services /asa,1,IRCopTools Configuration,%akill.asa.time)
  if (%akill.asa.time == $null ) { .set %akill.asa.time $readini ircoptools\default-ircoptools.ini akills asa.time }

  if (%akill.ats == $null ) { .set %akill.ats $readini ircoptools\default-ircoptools.ini akills ats }
  .set %akill.ats $input(Reason for akill for sending trojans /ats,1,IRCopTools Configuration,%akill.ats)
  if (%akill.ats == $null ) { .set %akill.ats $readini ircoptools\default-ircoptools.ini akills ats }

  if (%akill.ats.time == $null ) { .set %akill.ats.time $readini ircoptools\default-ircoptools.ini akills ats.time }
  .set %akill.ats.time $input(Time for akill for sending trojans /ats,1,IRCopTools Configuration,%akill.ats.time)
  if (%akill.ats.time == $null ) { .set %akill.ats.time $readini ircoptools\default-ircoptools.ini akills ats.time }

  if (%akill.atssp == $null ) { .set %akill.atssp $readini ircoptools\default-ircoptools.ini akills atssp }
  .set %akill.atssp $input(Reason for akill for sending trojans - Spanish /atssp,1,IRCopTools Configuration,%akill.atssp)
  if (%akill.atssp == $null ) { .set %akill.atssp $readini ircoptools\default-ircoptools.ini akills atssp }

  if (%akill.atssp.time == $null ) { .set %akill.atssp.time $readini ircoptools\default-ircoptools.ini akills atssp.time }
  .set %akill.atssp.time $input(Time for akill for sending trojans - Spanish /atssp,1,IRCopTools Configuration,%akill.atssp.time)
  if (%akill.atssp.time == $null ) { .set %akill.atssp.time $readini ircoptools\default-ircoptools.ini akills atssp.time }

  if (%akill.anc == $null ) { .set %akill.anc $readini ircoptools\default-ircoptools.ini akills anc }
  .set %akill.anc $input(Reason for akill for Nick Chasing /anc,1,IRCopTools Configuration,%akill.anc)
  if (%akill.anc == $null ) { .set %akill.anc $readini ircoptools\default-ircoptools.ini akills anc }

  if (%akill.anc.time == $null ) { .set %akill.anc.time $readini ircoptools\default-ircoptools.ini akills anc.time }
  .set %akill.anc.time $input(Time for akill for Nick Chasing /anc,1,IRCopTools Configuration,%akill.anc.time)
  if (%akill.anc.time == $null ) { .set %akill.anc.time $readini ircoptools\default-ircoptools.ini akills anc.time }

  if (%akill.acl == $null ) { .set %akill.acl $readini ircoptools\default-ircoptools.ini akills acl }
  .set %akill.acl $input(Reason for akill for Nick Colliding /acl,1,IRCopTools Configuration,%akill.acl)
  if (%akill.acl == $null ) { .set %akill.acl $readini ircoptools\default-ircoptools.ini akills acl }

  if (%akill.acl.time == $null ) { .set %akill.acl.time $readini ircoptools\default-ircoptools.ini akills acl.time }
  .set %akill.acl.time $input(Time for akill for Nick Colliding /acl,1,IRCopTools Configuration,%akill.acl.time)
  if (%akill.acl.time == $null ) { .set %akill.acl.time $readini ircoptools\default-ircoptools.ini akills acl.time }

  if (%akill.afn == $null ) { .set %akill.afn $readini ircoptools\default-ircoptools.ini akills afn }
  .set %akill.afn $input(Reason for akill for Trying to use a forbidden nick /afn,1,IRCopTools Configuration,%akill.afn)
  if (%akill.afn == $null ) { .set %akill.afn $readini ircoptools\default-ircoptools.ini akills afn }

  if (%akill.afn.time == $null ) { .set %akill.afn.time $readini ircoptools\default-ircoptools.ini akills afn.time }
  .set %akill.afn.time $input(Time for akill for Trying to use a forbidden nick /afn,1,IRCopTools Configuration,%akill.afn.time)
  if (%akill.afn.time == $null ) { .set %akill.afn.time $readini ircoptools\default-ircoptools.ini akills afn.time }
}
alias conf_killm {
  if (%kill.ms == $null ) { .set %kill.ms $readini ircoptools\default-ircoptools.ini kill ms }
  .set %kill.ms $input(Reason for the mass invites kill,1,IRCopTools Configuration,%kill.ms)
  if (%kill.ms == $null ) { .set %kill.ms $readini ircoptools\default-ircoptools.ini kill ms }

  if (%kill.mssp == $null ) { .set %kill.mssp $readini ircoptools\default-ircoptools.ini kill mssp }
  .set %kill.mssp $input(Reason for the mass invites kill Spanish,1,IRCopTools Configuration,%kill.mssp)
  if (%kill.mssp == $null ) { .set %kill.mssp $readini ircoptools\default-ircoptools.ini kill mssp }

  if (%kill.hs == $null ) { .set %kill.hs $readini ircoptools\default-ircoptools.ini kill hs }
  .set %kill.hs $input(Reason for Harassment kill,1,IRCopTools Configuration,%kill.hs)
  if (%kill.hs == $null ) { .set %kill.hs $readini ircoptools\default-ircoptools.ini kill hs }

  if (%kill.hssp == $null ) { .set %kill.hssp $readini ircoptools\default-ircoptools.ini kill hssp }
  .set %kill.hssp $input(Reason for the Harassment kill Spanish,1,IRCopTools Configuration,%kill.hssp)
  if (%kill.hssp == $null ) { .set %kill.hssp $readini ircoptools\default-ircoptools.ini kill hssp }

  if (%kill.fl == $null ) { .set %kill.fl $readini ircoptools\default-ircoptools.ini kill fl }
  .set %kill.fl $input(Reason for the flooding kill,1,IRCopTools Configuration,%kill.fl)
  if (%kill.fl == $null ) { .set %kill.fl $readini ircoptools\default-ircoptools.ini kill fl }

  if (%kill.flsp == $null ) { .set %kill.flsp $readini ircoptools\default-ircoptools.ini kill flsp }
  .set %kill.flsp $input(Reason for the flooding kill Spanish,1,IRCopTools Configuration,%kill.flsp)
  if (%kill.flsp == $null ) { .set %kill.flsp $readini ircoptools\default-ircoptools.ini kill flsp }
}
alias createwindows {
  window -knem @Kill Messages
  titlebar @Kill Messages on $network
  ; #### Commented the Flood window
  ; window -knem @Flood
  ; titlebar @Flood on $server
  ; echo -ti2 @Flood 4[N] If you arent +f you can safelly close this window
  ; #### Commented the Exploits window
  ; window -knem @Exploits
  ; titlebar @Exploits - Forbidden Filetypes sends on $server
  ; echo -ti2 @Exploits 4[N] If you arent +e you can safelly close this window
  ; #### Commented the Clients window
  ; window -knem @Clients
  ; titlebar @Clients on $server
  ; echo -ti2 @Clients 4[N] If you arent +c you can safelly close this window
  ; #### Commented the user requests window
  ; window -knem @User
  ; titlebar @User Requests on $server
  ; echo -ti2 @User 4[N] If you arent +y you can safelly close this window
  ; #### commented the STATSL window
  ; window -knem @StatsL
  ; titlebar @StatsL on $network
  ; #### commented the RAW NETWORK MESSAGES
  ; window -knem @Raw Network Messages
  window -knem @Network Stuff
  titlebar @Network Stuff on $network
  window -knem @Clones
  titlebar @Clones on $network
  window -knem @Local Operator Notices
  titlebar @Local Operator Notices on $network
  window -knem @ChatOps
  titlebar @ChatOps on $network
  window -knem @Global Operator Notices
  titlebar @Global Operator Notices on $network
  window -knem @Services
  titlebar @Services on $network
  ; window -knem @Nick-Collisions
  ; titlebar @Nick-Collisions on $network
  ; window -knem @Forbidden-Nicks
  ; titlebar @Forbidden-Nicks on $network
}
alias infectado { /ban # $1- 2 | /kill $1- Tienes el virus $input(Nombre del virus,1,Virus) cargado en tu sistema, ve a http://www.nohack.net/ para deshacerte de él. }
alias infected { /ban # $1- 2 | /kill $1- You have the virus $input(Virus Name,1,Virus) loaded in your system, please go to http://www.nohack.net/ to get rid of it. }
alias inspiration /run https://inspiration.dal.net/
alias f3 .configure
alias forbiddennicks {
  .echo -s 2[N] Forbidden Nicks detector enabled
  .enable #forbiddennicks
  .mode $me +j
}
alias forbiddennicksoff {
  .echo -s 2[N] Forbidden Nicks detector disabled
  .disable #forbiddennicks
  .mode $me -j
}
alias kline { 
  if (. !isin $2) { .quote kline $1 : $+ $2- }
  else { .quote kline $1 $2 : $+ $3- }
}
alias kdms { /ban # $1- 2 | /kill $1- There is a new virus thats being offered on the IRC via DCC; its name is dmsetup.exe(or similar). DO NOT ACCEPT IT. DO NOT EXECUT IT. For more info please go to http://www.nohack.net/ and get rid of that virus }
alias kdmssp { /ban # $1- 2 | /kill $1- Hay un nuevo virus que esta siendo pasado via DCC; su nombre es dmsetup.exe(o similar). NO LO ACEPTES. NO LO EJECUTES. Para más información ve a  http://www.nohack.net/ y ve como debes hacer para deshacerte de este virus }
alias mass { /set %clone.add $1- | set %whoreply 1 | .enable #whoreply4 | dialog -m clonelist4 clonelist4 }
alias massr { /set %clone.add $1- | set %whoreply 1 | .enable #whoreply5 | dialog -m clonelist5 clonelist5 }
alias statsl { .enable #statsl | if ($1-) { set %servidor.stats.l $1 | .stats l $1 } | else { set %servidor.stats.l $server | .stats l $1 } }
alias statsl2 { .enable #statsl2 | if ($1-) { set %servidor.stats.l $1 | .stats l $1 } | else { set %servidor.stats.l $server | .stats l $1 } | dialog -m statsl statsl }
;
alias sping {
  .enable #sping
  .set %hora.envio.sping $ctime($asctime)
  if ($1) {
    .raw ping $server $1-
  }
  else {
    .echo -a 2[N] Usage: /sping <complete.server.name>
  }
}
alias uauth .msg operserv usersauth
#sping off
on ^*:PONG:{
  .set %tiempo.sping $calc(%hora.envio.sping - $ctime($asctime))
  if ( %tiempo.sping < 0 ) { .set %tiempo.sping 0 }
  .echo -a 6[2 $+ $1 SPING Reply6] $duration(%tiempo.sping)
  .unset %hora.envio.sping
  .unset %tiempo.sping
  .disable #sping
  haltdef
}
#sping end
;
; #### Inputs for the Windows ####
;
on *:INPUT:@ChatOps:if ( !$regex($1-,^/) ) { chatops $1- | halt }
on *:INPUT:@Global Operator Notices:if ( !$regex($1-,^/) ) { globops $1- | halt }
on *:INPUT:@Local Operator Notices:if ( !$regex($1-,^/) ) { locops $1- | halt }
;
; #### Dialogs
;
dialog controlp {
  title "IRCopTools Control Panel"
  icon ircoptools\ircoptools.icl, 9
  size -1 -1 135 80
  option dbu
  icon 4, 11 2 16 16, ircoptools\ircoptools.icl, 1
  text "Akills", 5, 3 20 33 8, center
  icon 6, 44 2 16 16, ircoptools\ircoptools.icl, 2
  text "K-lines", 7, 40 20 24 8, center
  icon 8, 75 2 16 16, ircoptools\ircoptools.icl, 3
  text "Kills", 9, 67 20 33 8, center
  icon 10, 108 2 16 16, ircoptools\ircoptools.icl, 4
  text "Messages", 11, 104 20 24 8, center

  icon 20, 10 33 16 16, ircoptools\ircoptools.icl, 5
  text "Logs", 21, 6 54 23 8, center
  icon 22, 42 33 16 16, ircoptools\ircoptools.icl, 6
  text "Collisions", 23, 37 54 29 9, center
  icon 26, 75 33 16 16, ircoptools\ircoptools.icl, 7
  text "Forbidden nicks", 27, 72 54 24 16, center
  icon 28, 107 33 16 16, ircoptools\ircoptools.icl, 8
  text "Save", 29, 99 54 32 8, center

  edit "", 1, 1 70 135 10, read
  button "Button", 3, 57 85 37 12, hide ok
}
on *:dialog:controlp:init:0: {
  did -ra $dname 1 Hover over an icon to view it's description
  did -f $dname 28
}
on *:dialog:controlp:*:*: {
  if ($devent == mouse) { if ($did == 4) { did -ra $dname 1 Akills configuration } }
  if ($devent == mouse) { if ($did == 6) { did -ra $dname 1 K-Lines configuration } }
  if ($devent == mouse) { if ($did == 8) { did -ra $dname 1 Kills configuration } }
  if ($devent == mouse) { if ($did == 10) { did -ra $dname 1 Messages configuration } }
  if ($devent == mouse) { if ($did == 20) { did -ra $dname 1 Logs configuration } }
  if ($devent == mouse) { if ($did == 22) { did -ra $dname 1 Nick collision configuration } }
  if ($devent == mouse) { if ($did == 26) { did -ra $dname 1 Forbidden nicks configuration } }
  if ($devent == mouse) { if ($did == 28) { did -ra $dname 1 Save configuration } }

  if ($did == 4) && ($devent == sclick) { conf_akill }
  if ($did == 6) && ($devent == sclick) { conf_kline }
  if ($did == 8) && ($devent == sclick) { conf_kills }
  if ($did == 10) && ($devent == sclick) { conf_messages }
  if ($did == 20) && ($devent == sclick) { conf_logs }
  if ($did == 22) && ($devent == sclick) { conf_collisions }
  if ($did == 26) && ($devent == sclick) { conf_forbnicks }
  if ($did == 28) && ($devent == sclick) { conf_save }
}
dialog cfakills {
  title Akills configuration
  icon ircoptools\ircoptools.icl, 9
  size -1 -1 310 115
  option dbu
  text "Akill Reason for Clone Killer:", 1, 5 2 85 8, left
  edit "", 2, 5 11 300 10
  text "Default akill time for clone killer:                 mins", 3, 5 22 120 8, left
  edit "", 4, 83 21 20 10
  text "Command to issue an autokill for clone killer:", 5, 5 32 1205 8, left
  edit "", 6, 5 41 300 10
  text "Service to msg for the autokill:", 7, 5 52 85 8, left
  edit "", 8, 5 61 300 10
  text "Default reason for akills with /akill:", 9, 5 72 85 8, left
  edit "", 10, 5 81 300 10
  check "Show akill messages with an echo to the current screen?", 11, 5 92 200 10, flat
  link "Press here to configure other specific akill times and messages", 12, 5 102 300 28
}
on *:dialog:cfakills:init:0: {
  did -f $dname 1
  if (%akill.reason == $null ) { .set %akill.reason $readini ircoptools\default-ircoptools.ini akills reason }
  if (%akill.time == $null ) { .set %akill.time $readini ircoptools\default-ircoptools.ini akills time }
  if (%akill.cmd == $null ) { .set %akill.cmd $readini ircoptools\default-ircoptools.ini akills command }
  if (%akill.service == $null ) { .set %akill.service $readini ircoptools\default-ircoptools.ini akills service }
  if (%akill.default == $null ) { .set %akill.default $readini ircoptools\default-ircoptools.ini akills default }
  if (%show.msg == $null ) { .set %show.msg $readini ircoptools\default-ircoptools.ini akills show.msg }
  did -r $dname 2
  did -a $dname 2 %akill.reason
  did -r $dname 4
  did -a $dname 4 %akill.time
  did -r $dname 6
  did -a $dname 6 %akill.cmd
  did -r $dname 8
  did -a $dname 8 %akill.service
  did -r $dname 10
  did -a $dname 10 %akill.default
  if (%show.msg == 1) { did -c $dname 11 }
}
on *:dialog:cfakills:*:*: {
  if ($did == 2) && ($devent == edit) { .set %akill.reason $did(2).text }
  if ($did == 4) && ($devent == edit) { .set %akill.time $did(4).text }
  if ($did == 6) && ($devent == edit) { .set %akill.cmd $did(6).text }
  if ($did == 8) && ($devent == edit) { .set %akill.service $did(8).text }
  if ($did == 10) && ($devent == edit) { .set %akill.default $did(10).text }
  if ($did == 11) && ($devent == sclick) { .set %show.msg $did(11).state }
  if ($did == 12) && ($devent == sclick) { conf_akilltm }
  if (%akill.reason == $null ) { .set %akill.reason $readini ircoptools\default-ircoptools.ini akills reason | did -r $dname 2 | did -a $dname 2 %akill.reason }
  if (%akill.time == $null ) { .set %akill.time $readini ircoptools\default-ircoptools.ini akills time | did -r $dname 4 | did -a $dname 4 %akill.time }
  if (%akill.cmd == $null ) { .set %akill.cmd $readini ircoptools\default-ircoptools.ini akills command | did -r $dname 6 | did -a $dname 6 %akill.cmd }
  if (%akill.service == $null ) { .set %akill.service $readini ircoptools\default-ircoptools.ini akills service | did -r $dname 8 | did -a $dname 8 %akill.service }
  if (%akill.default == $null ) { .set %akill.default $readini ircoptools\default-ircoptools.ini akills default | did -r $dname 10 | did -a $dname 10 %akill.default }
  if (%show.msg == $null ) { .set %show.msg $readini ircoptools\default-ircoptools.ini akills show.msg }
}
dialog cfklines {
  title K-lines configuration
  icon ircoptools\ircoptools.icl, 9
  size -1 -1 310 34
  option dbu
  text "Default kline reason for clone killer:", 1, 5 2 85 8, left
  edit "", 2, 5 11 300 10
  text "Default kline time for clone killer                 mins", 3, 5 22 120 8, left
  edit "", 4, 83 21 20 10
}
on *:dialog:cfklines:init:0: {
  did -f $dname 1
  if (%kline.reason == $null ) { .set %kline.reason $readini ircoptools\default-ircoptools.ini kline reason }
  if (%kline.time == $null ) { .set %kline.time $readini ircoptools\default-ircoptools.ini kline time }
  did -r $dname 2
  did -a $dname 2 %kline.reason
  did -r $dname 4
  did -a $dname 4 %kline.time
}
on *:dialog:cfklines:*:*: {
  if ($did == 2) && ($devent == edit) { .set %kline.reason $did(2).text }
  if ($did == 4) && ($devent == edit) { .set %kline.time $did(4).text }
  if (%kline.reason == $null ) { .set %kline.reason $readini ircoptools\default-ircoptools.ini kline reason | did -r $dname 2 | did -a $dname 2 %kline.reason }
  if (%kline.time == $null ) { .set %kline.time $readini ircoptools\default-ircoptools.ini kline time | did -r $dname 4 | did -a $dname 4 %kline.time }
}
dialog cfkill {
  title Kills configuration
  icon ircoptools\ircoptools.icl, 9
  size -1 -1 310 34
  option dbu
  text "Reason for the clone-killer masskill feature:", 1, 5 2 150 8, left
  edit "", 2, 5 11 300 10
  link "Press here to configure other specific kill messages", 12, 5 22 300 28
}
on *:dialog:cfkill:init:0: {
  did -f $dname 1
  if (%kill.reason == $null ) { .set %kill.reason $readini ircoptools\default-ircoptools.ini kill reason }
  did -r $dname 2
  did -a $dname 2 %kill.reason
}
on *:dialog:cfkill:*:*: {
  if ($did == 2) && ($devent == edit) { .set %kill.reason $did(2).text }
  if ($did == 12) && ($devent == sclick) { conf_killm }
  if (%kill.reason == $null ) { .set %kill.reason $readini ircoptools\default-ircoptools.ini kill reason | did -r $dname 2 | did -a $dname 2 %kill.reason }
}
dialog cflogs {
  title Logging configuration
  icon ircoptools\ircoptools.icl, 9
  size -1 -1 150 195
  option dbu
  check "Log globops?", 1, 5 2 200 10, flat
  text "File to log globops:", 2, 5 12 85 8, left
  edit "", 3, 5 21 140 10
  check "Log chatops?", 4, 5 32 200 10, flat
  text "File to log chatops:", 5, 5 42 85 8, left
  edit "", 6, 5 51 140 10
  check "Log locops?", 7, 5 62 200 10, flat
  text "File to log locops:", 8, 5 72 85 8, left
  edit "", 9, 5 81 140 10
  check "Log services info?", 10, 5 92 200 10, flat
  text "File to log services:", 11, 5 102 85 8, left
  edit "", 12, 5 111 140 10
  check "Log routing info?", 13, 5 122 200 10, flat
  text "File to log routing:", 14, 5 132 85 8, left
  edit "", 15, 5 141 140 10
  check "Log Mass/Clone info?", 16, 5 152 200 10, flat
  text "File to log Mass/Clone:", 17, 5 162 85 8, left
  edit "", 18, 5 171 140 10
  check "Open Additional Mass/Clone window?", 19, 5 182 200 10, flat
}
on *:dialog:cflogs:init:0: {
  did -f $dname 1
  if (%globops == $null ) { .set %globops $readini ircoptools\default-ircoptools.ini logs globops }
  if (%globopslog == $null ) { .set %globopslog $readini ircoptools\default-ircoptools.ini logs globopslog }
  if (%globops != 1) { .set %globopslog $readini ircoptools\default-ircoptools.ini logs globopslog }
  if (%chatops == $null ) { .set %chatops $readini ircoptools\default-ircoptools.ini logs chatops }
  if (%chatopslog == $null ) { .set %chatopslog $readini ircoptools\default-ircoptools.ini logs chatopslog }
  if (%chatops != 1) { .set %chatopslog $readini ircoptools\default-ircoptools.ini logs chatopslog }
  if (%locops == $null ) { .set %locops $readini ircoptools\default-ircoptools.ini logs locops }
  if (%locopslog == $null ) { .set %locopslog $readini ircoptools\default-ircoptools.ini logs locopslog }
  if (%locops != 1) { .set %locopslog $readini ircoptools\default-ircoptools.ini logs locopslog }
  if (%services == $null ) { .set %services $readini ircoptools\default-ircoptools.ini logs services }
  if (%serviceslog == $null ) { .set %serviceslog $readini ircoptools\default-ircoptools.ini logs serviceslog }
  if (%services != 1) { .set %serviceslog $readini ircoptools\default-ircoptools.ini logs serviceslog }
  if (%routing == $null ) { .set %routing $readini ircoptools\default-ircoptools.ini logs routing }
  if (%routinglog == $null ) { .set %routinglog $readini ircoptools\default-ircoptools.ini logs routinglog }
  if (%routing != 1) { .set %routinglog $readini ircoptools\default-ircoptools.ini logs routinglog }
  if (%massclone == $null ) { .set %massclone $readini ircoptools\default-ircoptools.ini logs massclone }
  if (%massclonelog == $null ) { .set %massclonelog $readini ircoptools\default-ircoptools.ini logs massclonelog }
  if (%massclone != 1) { .set %massclonelog $readini ircoptools\default-ircoptools.ini logs massclonelog }
  if (%massclonecw != 1) { .set %massclonecw $readini ircoptools\default-ircoptools.ini logs massclonecw }
  did -r $dname 3
  did -a $dname 3 %globopslog
  did -r $dname 6
  did -a $dname 6 %chatopslog
  did -r $dname 9
  did -a $dname 9 %locopslog
  did -r $dname 12
  did -a $dname 12 %serviceslog
  did -r $dname 15
  did -a $dname 15 %routinglog
  did -r $dname 18
  did -a $dname 18 %massclonelog
  if (%globops == 1) {
    did -c $dname 1
  }
  else {
    did -b $dname 2
    did -b $dname 3
  }
  if (%chatops == 1) {
    did -c $dname 4
  }
  else {
    did -b $dname 5
    did -b $dname 6
  }
  if (%locops == 1) {
    did -c $dname 7
  }
  else {
    did -b $dname 8
    did -b $dname 9
  }
  if (%services == 1) {
    did -c $dname 10
  }
  else {
    did -b $dname 11
    did -b $dname 12
  }
  if (%routing == 1) {
    did -c $dname 13
  }
  else {
    did -b $dname 14
    did -b $dname 15
  }
  if (%massclone == 1) {
    did -c $dname 16
  }
  else {
    did -b $dname 17
    did -b $dname 18
  }
  if (%massclonecw == 1) {
    did -c $dname 19
  }
}
on *:dialog:cflogs:*:*: {
  if ($did == 1) && ($devent == sclick) {
    .set %globops $did(1).state
    if ($did(1).state == 1) {
      did -e cflogs 2
      did -e cflogs 3
    }
    else {
      did -b cflogs 2
      did -b cflogs 3
      .set %globopslog $readini ircoptools\default-ircoptools.ini logs globopslog
      did -r $dname 3
      did -a $dname 3 %globopslog
    }
  }
  if ($did == 3) && ($devent == edit) { .set %globopslog $did(3).text }
  if ($did == 4) && ($devent == sclick) { 
    .set %chatops $did(4).state
    if ($did(4).state == 1) {
      did -e cflogs 5
      did -e cflogs 6
    }
    else {
      did -b cflogs 5
      did -b cflogs 6
      .set %chatopslog $readini ircoptools\default-ircoptools.ini logs chatopslog
      did -r $dname 6
      did -a $dname 6 %chatopslog
    }
  }
  if ($did == 6) && ($devent == edit) { .set %chatopslog $did(6).text }
  if ($did == 7) && ($devent == sclick) { 
    .set %locops $did(7).state
    if ($did(7).state == 1) {
      did -e cflogs 8
      did -e cflogs 9
    }
    else {
      did -b cflogs 8
      did -b cflogs 9
      .set %locopslog $readini ircoptools\default-ircoptools.ini logs locopslog
      did -r $dname 9
      did -a $dname 9 %locopslog
    }
  }
  if ($did == 9) && ($devent == edit) { .set %locopslog $did(9).text }
  if ($did == 10) && ($devent == sclick) { 
    .set %services $did(10).state
    if ($did(10).state == 1) {
      did -e cflogs 11
      did -e cflogs 12
    }
    else {
      did -b cflogs 11
      did -b cflogs 12
      .set %serviceslog $readini ircoptools\default-ircoptools.ini logs serviceslog
      did -r $dname 12
      did -a $dname 12 %serviceslog
    }
  }
  if ($did == 12) && ($devent == edit) { .set %serviceslog $did(12).text }
  if ($did == 13) && ($devent == sclick) { 
    .set %routing $did(13).state
    if ($did(13).state == 1) {
      did -e cflogs 14
      did -e cflogs 15
    }
    else {
      did -b cflogs 14
      did -b cflogs 15
      .set %routinglog $readini ircoptools\default-ircoptools.ini logs routinglog
      did -r $dname 15
      did -a $dname 15 %routinglog
    }
  }
  if ($did == 15) && ($devent == edit) { .set %routinglog $did(15).text }
  if ($did == 16) && ($devent == sclick) { 
    .set %massclone $did(16).state
    if ($did(16).state == 1) {
      did -e cflogs 17
      did -e cflogs 18
    }
    else {
      did -b cflogs 17
      did -b cflogs 18
      .set %massclonelog $readini ircoptools\default-ircoptools.ini logs massclonelog
      did -r $dname 18
      did -a $dname 18 %massclonelog
    }
  }
  if ($did == 18) && ($devent == edit) { .set %massclonelog $did(18).text }
  if ($did == 19) && ($devent == sclick) { 
    .set %massclonecw $did(19).state
  }

  if ( %globops == $null ) { .set %globops $readini ircoptools\default-ircoptools.ini logs globops  | did -r $dname 3 | did -a $dname 3 %globopslog }
  if ( %globopslog == $null ) { .set %globopslog $readini ircoptools\default-ircoptools.ini logs globopslog  | did -r $dname 3 | did -a $dname 3 %globopslog }
  if ( %globops != 1 ) { .set %globopslog $readini ircoptools\default-ircoptools.ini logs globopslog  | did -r $dname 3 | did -a $dname 3 %globopslog }
  if ( %chatops == $null ) { .set %chatops $readini ircoptools\default-ircoptools.ini logs chatops  | did -r $dname 6 | did -a $dname 6 %chatopslog }
  if ( %chatopslog == $null ) { .set %chatopslog $readini ircoptools\default-ircoptools.ini logs chatopslog  | did -r $dname 6 | did -a $dname 6 %chatopslog }
  if ( %chatops != 1 ) { .set %chatopslog $readini ircoptools\default-ircoptools.ini logs chatopslog  | did -r $dname 6 | did -a $dname 6 %chatopslog }
  if ( %locops == $null ) { .set %locops $readini ircoptools\default-ircoptools.ini logs locops  | did -r $dname 9 | did -a $dname 9 %locopslog }
  if ( %locopslog == $null ) { .set %locopslog $readini ircoptools\default-ircoptools.ini logs locopslog  | did -r $dname 9 | did -a $dname 9 %locopslog }
  if ( %locops != 1 ) { .set %locopslog $readini ircoptools\default-ircoptools.ini logs locopslog  | did -r $dname 9 | did -a $dname 9 %locopslog }
  if ( %services == $null ) { .set %services $readini ircoptools\default-ircoptools.ini logs services  | did -r $dname 12 | did -a $dname 12 %serviceslog }
  if ( %serviceslog == $null ) { .set %serviceslog $readini ircoptools\default-ircoptools.ini logs serviceslog  | did -r $dname 12 | did -a $dname 12 %serviceslog }
  if ( %services != 1 ) { .set %serviceslog $readini ircoptools\default-ircoptools.ini logs serviceslog  | did -r $dname 12 | did -a $dname 12 %serviceslog }
  if ( %routing == $null ) { .set %routing $readini ircoptools\default-ircoptools.ini logs routing  | did -r $dname 15 | did -a $dname 15 %routinglog }
  if ( %routinglog == $null ) { .set %routinglog $readini ircoptools\default-ircoptools.ini logs routinglog  | did -r $dname 15 | did -a $dname 15 %routinglog }
  if ( %routing != 1 ) { .set %routinglog $readini ircoptools\default-ircoptools.ini logs routinglog  | did -r $dname 15 | did -a $dname 15 %routinglog }
  if ( %massclone == $null ) { .set %massclone $readini ircoptools\default-ircoptools.ini logs massclone  | did -r $dname 18 | did -a $dname 18 %massclonelog }
  if ( %massclonelog == $null ) { .set %massclonelog $readini ircoptools\default-ircoptools.ini logs massclonelog  | did -r $dname 18 | did -a $dname 18 %massclonelog }
  if ( %massclone != 1 ) { .set %massclonelog $readini ircoptools\default-ircoptools.ini logs massclonelog  | did -r $dname 18 | did -a $dname 18 %massclonelog }
  if ( %massclonecw == $null ) { .set %massclonecw $readini ircoptools\default-ircoptools.ini logs massclonecw }
}
dialog cfcollisions {
  title Nick Collisions configuration
  icon ircoptools\ircoptools.icl, 9
  size -1 -1 130 34
  option dbu
  text "Time in seconds for collisions detections:", 1, 5 2 105 8, left
  edit "", 2, 105 1 20 10
  check "Enable by default?", 3, 5 12 200 10, flat
  text "Display from collide number:", 4, 5 22 80 8, left
  edit "", 5, 75 22 20 10
}
on *:dialog:cfcollisions:init:0: {
  did -f $dname 1
  if (%collisionstime == $null ) { .set %collisionstime $readini ircoptools\default-ircoptools.ini collisions time }
  if (%collisionsenable == $null ) { .set %collisionsenable $readini ircoptools\default-ircoptools.ini collisions enable }
  if (%collisionsdisplayfrom == $null ) { .set %collisionsdisplayfrom $readini ircoptools\default-ircoptools.ini collisions startdisplayfrom }
  did -r $dname 2
  did -a $dname 2 %collisionstime
  if (%collisionenable == 1) { did -c $dname 3 }
  did -r $dname 5
  did -a $dname 5 %collisionsdisplayfrom
}
on *:dialog:cfcollisions:*:*: {
  if ($did == 2) && ($devent == edit) { .set %collisionstime $did(2).text }
  if ($did == 3) && ($devent == sclick) { .set %collisionenable $did(3).state }
  if ($did == 5) && ($devent == edit) { .set %collisionsdisplayfrom $did(5).text }
  if ( %collisionstime == $null ) { .set %collisionstime $readini ircoptools\default-ircoptools.ini collisions time | did -r $dname 2 |  did -a $dname 2 %collisionstime }
  if ( %collisionsdisplayfrom == $null ) { .set %collisionsdisplayfrom $readini ircoptools\default-ircoptools.ini collisions startdisplayfrom | did -r $dname 5 |  did -a $dname 5 %collisionsdisplayfrom }
}
dialog cfforbnicks {
  title Forbidden Nicks configuration
  icon ircoptools\ircoptools.icl, 9
  size -1 -1 145 34
  option dbu
  text "Time in seconds for forbidden nicks detections:", 1, 5 2 115 8, left
  edit "", 2, 120 1 20 10
  check "Enable by default?", 3, 5 12 200 10, flat
  text "Display from try number:", 4, 5 22 80 8, left
  edit "", 5, 70 22 20 10
}
on *:dialog:cfforbnicks:init:0: {
  did -f $dname 1
  if (%forbnickstime == $null ) { .set %forbnickstime $readini ircoptools\default-ircoptools.ini forbnicks time }
  if (%forbnicksenable == $null ) { .set %forbnicksenable $readini ircoptools\default-ircoptools.ini forbnicks enable }
  if (%forbnicksdisplayfrom == $null ) { .set %forbnicksdisplayfrom $readini ircoptools\default-ircoptools.ini forbnicks startdisplayfrom }
  did -r $dname 2
  did -a $dname 2 %forbnickstime
  if (%collisionenable == 1) { did -c $dname 3 }
  did -r $dname 5
  did -a $dname 5 %forbnicksdisplayfrom
}
on *:dialog:cfforbnicks:*:*: {
  if ($did == 2) && ($devent == edit) { .set %forbnickstime $did(2).text }
  if ($did == 3) && ($devent == sclick) { .set %collisionenable $did(3).state }
  if ($did == 5) && ($devent == edit) { .set %forbnicksdisplayfrom $did(5).text }
  if ( %forbnickstime == $null ) { .set %forbnickstime $readini ircoptools\default-ircoptools.ini forbnicks time | did -r $dname 2 |  did -a $dname 2 %forbnickstime }
  if ( %forbnicksdisplayfrom == $null ) { .set %forbnicksdisplayfrom $readini ircoptools\default-ircoptools.ini forbnicks startdisplayfrom | did -r $dname 5 |  did -a $dname 5 %forbnicksdisplayfrom }
}
;
; #### AntiClone module based on a code by Brandon ####
;
alias f8 { set %clone.add %clone.buscar | set %whoreply 1 | .enable #whoreply | dialog -m clonelist clonelist }
alias f9 { set %clone.add %clone.buscar2 | set %whoreply 1 | .enable #whoreply2 | dialog -m clonelist2 clonelist2 }
dialog clonelist {
  title "Clones"
  size -1 -1 500 230
  text "Clone List For:", 1, 10 30 100 23, left
  edit "", 2, 110 28 370 23, read autovs
  list 3, 110 60 370 150,extsel hsbar vsbar tab
  button "Refresh List", 10, 17 60 75 25, default
  button "Mass Kill", 11, 17 90 75 25, default
  button "Temp K:Line", 12, 17 120 75 25, default
  button "AKill", 13, 17 150 75 25, default
  button "Close", 14, 17 180 75 25, ok
}
dialog clonelist2 {
  title "Clones ident@host"
  size -1 -1 500 230
  text "Clone List For:", 1, 10 30 100 23, left
  edit "", 2, 110 28 370 23, read autovs
  list 3, 110 60 370 150,extsel hsbar vsbar tab
  button "Refresh List", 10, 17 60 75 25, default
  button "Mass Kill", 11, 17 90 75 25, default
  button "Temp K:Line", 12, 17 120 75 25, default
  button "AKill", 13, 17 150 75 25, default
  button "Close", 14, 17 180 75 25, ok
}
dialog clonelist3 {
  title "Drones in #Channel"
  size -1 -1 500 270
  text "Drone List for:", 1, 10 30 80 23, left
  edit "", 2, 90 28 390 23, read autovs
  list 3, 110 60 370 150,extsel hsbar vsbar tab
  button "Refresh List", 10, 17 60 75 25, default
  button "Mass Kill", 11, 17 90 75 25, default
  button "Temp K:Line", 12, 17 120 75 25, default
  button "AKill", 13, 17 150 75 25, default
  button "Close", 14, 17 180 75 25, ok
  text "Reason:", 15, 10 210 70 23, right
  edit "", 16, 80 210 400 23, rich autovs
  text "Time(minutes):", 17, 10 240 70 23, right
  edit "", 18, 80 240 100 23, rich autovs
}
dialog clonelist4 {
  title "Mass Action WHO"
  size -1 -1 500 270
  text "Who List For:", 1, 10 30 70 23, left
  edit "", 2, 80 28 400 23, read autovs
  list 3, 110 60 370 150,extsel hsbar vsbar tab
  button "Refresh List", 10, 17 60 75 25, default
  button "Mass Kill", 11, 17 90 75 25, default
  button "Temp K:Line", 12, 17 120 75 25, default
  button "AKill", 13, 17 150 75 25, default
  button "Close", 14, 17 180 75 25, ok
  text "Reason:", 15, 10 210 70 23, right
  edit "", 16, 80 210 400 23, rich autovs
  text "Time(minutes):", 17, 10 240 70 23, right
  edit "", 18, 80 240 100 23, rich autovs
}
dialog clonelist5 {
  title "Mass Action RWHO"
  size -1 -1 500 270
  text "RWho List For:", 1, 10 30 80 23, left
  edit "", 2, 90 28 390 23, read autovs
  list 3, 110 60 370 150,extsel hsbar vsbar tab
  button "Refresh List", 10, 17 60 75 25, default
  button "Mass Kill", 11, 17 90 75 25, default
  button "Temp K:Line", 12, 17 120 75 25, default
  button "AKill", 13, 17 150 75 25, default
  button "Close", 14, 17 180 75 25, ok
  text "Reason:", 15, 10 210 70 23, right
  edit "", 16, 80 210 400 23, rich autovs
  text "Time(minutes):", 17, 10 240 70 23, right
  edit "", 18, 80 240 100 23, rich autovs
}
;on *:dialog:clonelist:*:*:{
;
;if (@ isin %clone.add ) {
;set %posicion.arroba $pos( %clone.add,@,1)
;set %posicion.rescate $calc($len( %clone.add ) - %posicion.arroba ) 
;set %clone.add $right( %clone.add , %posicion.rescate )
;}
;;
;  if ($devent == init) {
;    if (%clone.add) { raw -q who +C %clone.add | did -a clonelist 2 %clone.add }
;    else { did -a clonelist 2 Error:  No Hostname }
;  }
;  if ( ($did == 10) && ($devent == sclick ) ) { set %whoreply 1 | .enable #whoreply | did -r clonelist 2 | did -a clonelist 2 %clone.add | did -r clonelist 3 | raw -q who +C %clone.add }
;  if ( ($did == 11) && ($devent == sclick ) ) { set %whoreply 2 | .enable #whoreply | raw -q who +C %clone.add | did -ra clonelist 2 $did(2).text $chr(91) $+ MassKilled $+ $chr(93) | did -r clonelist 3 }
;  if ( ($did == 12) && ($devent == sclick ) ) { .raw kline %kline.time *@ $+ %clone.add : $+ %kline.reason | did -ra clonelist 2 $did(2).text $chr(91) $+ k:lined $+ $chr(93) }
;  if ( ($did == 13) && ($devent == sclick ) ) { .raw privmsg %akill.service : $+ %akill.cmd time %akill.time *!*@ $+ %clone.add %akill.reason | did -ra clonelist 2 $did(2).text $chr(91) $+ AKilled $+ $chr(93) }
;  if ( ($did == 14) && ($devent == sclick ) ) { unset %clone.add | unset %posicion.arroba | unset %posicion.rescate }
;}
;
on *:dialog:clonelist:*:*:{
  if (@ isin %clone.add ) {
    set %posicion.arroba $pos( %clone.add,@,1)
    set %posicion.rescate $calc($len( %clone.add ) - %posicion.arroba ) 
    set %clone.ident $left( %clone.add , $calc( %posicion.arroba -1 ) )
    set %clone.add $right( %clone.add , %posicion.rescate )
  }

  if ( %clone.ident == $null ) { set %clone.ident * }
  ;
  if ($devent == init) {
    if (%clone.add) { raw -q who +Cuh %clone.ident %clone.add | did -a clonelist 2 %clone.ident $+ @ $+ %clone.add | .logmassclone CL Scanning /who +Cuh %clone.ident %clone.add }
    else { did -a clonelist 2 Error: No Hostname | .logmassclone CL Error: No Hostname | .disable #whoreply }
  }
  if ( ($did == 10) && ($devent == sclick ) ) { set %whoreply 1 | .enable #whoreply | did -r clonelist 2 | did -a clonelist 2 %clone.ident $+ @ $+ %clone.add | did -r clonelist 3 | raw -q who +Cuh %clone.ident %clone.add | | .logmassclone CL Scanning /who +Cuh %clone.ident %clone.add }
  if ( ($did == 11) && ($devent == sclick ) ) { set %whoreply 2 | .enable #whoreply | raw -q who +Cuh %clone.ident %clone.add | did -ra clonelist 2 $did(2).text $chr(91) $+ MassKilled $+ $chr(93) | did -r clonelist 3 | .logmassclone CL Mass Killed }
  if ( ($did == 12) && ($devent == sclick ) ) { .raw kline %kline.time %clone.ident $+ @ $+ %clone.add : $+ %kline.reason | did -ra clonelist 2 $did(2).text $chr(91) $+ K-Lined $+ $chr(93) | .logmassclone CL Mass K-Lined | .logmassclone CL .raw kline %kline.time %clone.ident $+ @ $+ %clone.add : $+ %kline.reason }
  if ( ($did == 13) && ($devent == sclick ) ) { .raw privmsg %akill.service : $+ %akill.cmd time %akill.time *! $+ %clone.ident $+ @ $+ %clone.add %akill.reason | did -ra clonelist 2 $did(2).text $chr(91) $+ AKilled $+ $chr(93) | .logmassclone CL Mass Akilled | .logmassclone CL .raw privmsg %akill.service : $+ %akill.cmd time %akill.time *! $+ %clone.ident $+ @ $+ %clone.add %akill.reason }
  if ( ($did == 14) && ($devent == sclick ) ) { unset %clone.ident | unset %clone.add | unset %posicion.arroba | unset %posicion.rescate | .disable #whoreply }
}
on *:dialog:clonelist2:*:*:{

  if (@ isin %clone.add ) {
    set %posicion.arroba $pos( %clone.add,@,1)
    set %posicion.rescate $calc($len( %clone.add ) - %posicion.arroba ) 
    set %clone.ident $left( %clone.add , $calc( %posicion.arroba -1 ) )
    set %clone.add $right( %clone.add , %posicion.rescate )
  }

  if ( %clone.ident == $null ) { set %clone.ident * }
  ;
  if ($devent == init) {
    if (%clone.add) { raw -q who +Cui %clone.ident %clone.add | did -a clonelist2 2 %clone.ident $+ @ $+ %clone.add  | .logmassclone CL2 Scanning /who +Cui %clone.ident %clone.add }
    else { did -a clonelist2 2 Error: No Hostname | .logmassclone CL2 Error: No Hostname | .disable #whoreply2 }
  }
  if ( ($did == 10) && ($devent == sclick ) ) { set %whoreply 1 | .enable #whoreply2 | did -r clonelist2 2 | did -a clonelist2 2 %clone.ident $+ @ $+ %clone.add | did -r clonelist2 3 | raw -q who +Cui %clone.ident %clone.add | .logmassclone CL2 Scanning /who +Cui %clone.ident %clone.add }
  if ( ($did == 11) && ($devent == sclick ) ) { set %whoreply 2 | .enable #whoreply2 | raw -q who +Cui %clone.ident %clone.add | did -ra clonelist2 2 $did(2).text $chr(91) $+ MassKilled $+ $chr(93) | did -r clonelist2 3 | .logmassclone CL2 Mass Killed }
  if ( ($did == 12) && ($devent == sclick ) ) { .raw kline %kline.time %clone.ident $+ @ $+ %clone.add : $+ %kline.reason | did -ra clonelist2 2 $did(2).text $chr(91) $+ K-Lined $+ $chr(93) | .logmassclone CL2 Mass K-Lined | .logmassclone CL2 .raw kline %kline.time %clone.ident $+ @ $+ %clone.add : $+ %kline.reason }
  if ( ($did == 13) && ($devent == sclick ) ) { .raw privmsg %akill.service : $+ %akill.cmd time %akill.time *! $+ %clone.ident $+ @ $+ %clone.add %akill.reason | did -ra clonelist2 2 $did(2).text $chr(91) $+ AKilled $+ $chr(93) | .logmassclone CL2 Mass Akilled | .logmassclone CL2 .raw privmsg %akill.service : $+ %akill.cmd time %akill.time *! $+ %clone.ident $+ @ $+ %clone.add %akill.reason }
  if ( ($did == 14) && ($devent == sclick ) ) { unset %clone.ident | unset %clone.add | unset %posicion.arroba | unset %posicion.rescate | .disable #whoreply2 }
}
on *:dialog:clonelist3:*:*:{
  if ( %clone.ident == $null ) { set %clone.ident * }
  if ($devent == init) {
    if (%clone.add) { 
      raw -q who +c %clone.add 
      did -a clonelist3 2 %clone.add 
      did -a clonelist3 2 %clone.add
      did -a clonelist3 16 %reason.clonelist3
      did -a clonelist3 18 %time.clonelist3
      .logmassclone CD Scanning /who +c %clone.add
    }
    else { did -a clonelist3 2 Error: No channel | .logmassclone CD Error: No channel | .disable #whoreply3 }
  }
  if ( ($did == 10) && ($devent == sclick ) ) { set %whoreply 1 | .enable #whoreply3 | did -r clonelist3 2 | did -a clonelist3 2 %clone.add | did -r clonelist3 3 | raw -q who +c %clone.add | .logmassclone CD Scanning /who +c %clone.add }
  if ( ($did == 11) && ($devent == sclick ) ) { set %whoreply 2 | .enable #whoreply3 | raw -q who +c %clone.add | did -ra clonelist3 2 $did(2).text $chr(91) $+ MassKilled $+ $chr(93) | did -r clonelist3 3 | .logmassclone CD Mass Killed }
  if ( ($did == 12) && ($devent == sclick ) ) { set %whoreply 3 | .enable #whoreply3 | raw -q who +c %clone.add | did -ra clonelist3 2 $did(2).text $chr(91) $+ K-Lined $+ $chr(93) | did -r clonelist3 3 | .logmassclone CD Mass K-Lined }
  if ( ($did == 13) && ($devent == sclick ) ) { set %whoreply 4 | .enable #whoreply3 | raw -q who +c %clone.add | did -ra clonelist3 2 $did(2).text $chr(91) $+ AKilled $+ $chr(93) | did -r clonelist3 3 | .logmassclone CD Mass Akilled }
  if ( ($did == 14) && ($devent == sclick ) ) { unset %clone.ident | unset %clone.add | unset %posicion.arroba | unset %posicion.rescate | .disable #whoreply3 }
  if ($did == 16) && ($devent == edit) { .set %reason.clonelist3 $did(16).text }
  if ($did == 18) && ($devent == edit) { .set %time.clonelist3 $did(18).text }
}
on *:dialog:clonelist4:*:*:{
  if ( %clone.ident == $null ) { set %clone.ident * }
  if ($devent == init) {
    if (%clone.add) { 
      raw -q who %clone.add
      did -a clonelist4 2 %clone.add
      did -a clonelist4 16 %reason.clonelist4
      did -a clonelist4 18 %time.clonelist4
      .logmassclone CW Scanning /who %clone.add
    }
    else { did -a clonelist4 2 Error: No pattern | .logmassclone CW Error: No pattern | .disable #whoreply4 }
  }
  if ( ($did == 10) && ($devent == sclick ) ) { set %whoreply 1 | .enable #whoreply4 | did -r clonelist4 2 | did -a clonelist4 2 %clone.add | did -r clonelist4 3 | raw -q who %clone.add | .logmassclone CW Scanning /who %clone.add }
  if ( ($did == 11) && ($devent == sclick ) ) { set %whoreply 2 | .enable #whoreply4 | raw -q who %clone.add | did -ra clonelist4 2 $did(2).text $chr(91) $+ MassKilled $+ $chr(93) | did -r clonelist4 3 | .logmassclone CW Mass Killed }
  if ( ($did == 12) && ($devent == sclick ) ) { set %whoreply 3 | .enable #whoreply4 | raw -q who %clone.add | did -ra clonelist4 2 $did(2).text $chr(91) $+ K-Lined $+ $chr(93) | did -r clonelist4 3 | .logmassclone CW Mass K-Lined }
  if ( ($did == 13) && ($devent == sclick ) ) { set %whoreply 4 | set %makillstart 1 | .enable #whoreply4 | raw -q who %clone.add | did -ra clonelist4 2 $did(2).text $chr(91) $+ Akilled $+ $chr(93) | did -r clonelist4 3 | .logmassclone CW Mass Akilled }
  if ( ($did == 14) && ($devent == sclick ) ) { unset %clone.ident | unset %clone.add | unset %posicion.arroba | unset %posicion.rescate | .disable #whoreply4 }
  if ($did == 16) && ($devent == edit) { .set %reason.clonelist4 $did(16).text }
  if ($did == 18) && ($devent == edit) { .set %time.clonelist4 $did(18).text }
}
on *:dialog:clonelist5:*:*:{
  if ( %clone.ident == $null ) { set %clone.ident * }
  if ($devent == init) {
    if (%clone.add) { 
      raw -q rwho %clone.add
      did -a clonelist5 2 %clone.add
      did -a clonelist5 16 %reason.clonelist5
      did -a clonelist5 18 %time.clonelist5
      .logmassclone CR Scanning /rwho %clone.add
    }
    else { did -a clonelist5 2 Error: No pattern | .logmassclone CR Error: No pattern | .disable #whoreply5 }
  }
  if ( ($did == 10) && ($devent == sclick ) ) { set %whoreply 1 | .enable #whoreply5 | did -r clonelist5 2 | did -a clonelist5 2 %clone.add | did -r clonelist5 3 | raw -q rwho %clone.add | .logmassclone CR Scanning /rwho %clone.add }
  if ( ($did == 11) && ($devent == sclick ) ) { set %whoreply 2 | .enable #whoreply5 | raw -q rwho %clone.add | did -ra clonelist5 2 $did(2).text $chr(91) $+ MassKilled $+ $chr(93) | did -r clonelist5 3 | .logmassclone CR Mass Killed }
  if ( ($did == 12) && ($devent == sclick ) ) { set %whoreply 3 | .enable #whoreply5 | raw -q rwho %clone.add | did -ra clonelist5 2 $did(2).text $chr(91) $+ K-Lined $+ $chr(93) | did -r clonelist5 3 | .logmassclone CR Mass K-Lined }
  if ( ($did == 13) && ($devent == sclick ) ) { set %whoreply 4 | set %makillstart 1 | .enable #whoreply5 | raw -q rwho %clone.add | did -ra clonelist5 2 $did(2).text $chr(91) $+ Akilled $+ $chr(93) | did -r clonelist5 3 | .logmassclone CR Mass Akilled }
  if ( ($did == 14) && ($devent == sclick ) ) { unset %clone.ident | unset %clone.add | unset %posicion.arroba | unset %posicion.rescate | .disable #whoreply5 }
  if ($did == 16) && ($devent == edit) { .set %reason.clonelist5 $did(16).text }
  if ($did == 18) && ($devent == edit) { .set %time.clonelist5 $did(18).text }
}
;
#whoreply off
raw 352:*:{
  if (%whoreply == 1) { 
    did -a clonelist 3 $chr(91) $+ $2 $+ $chr(93) $6 $chr(91) $+ $3 $+ @ $+ $4 $+ $chr(93)
    .logmassclone CL $chr(91) $+ $2 $+ $chr(93) $6 $chr(91) $+ $3 $+ @ $+ $4 $+ $chr(93)
  halt }
  elseif (%whoreply == 2) { if (%clone.num) { goto next } | else { set %clone.num 0 } | :next | inc %clone.num | did -a clonelist 3 Killing $6 | kill $6 %kill.reason $chr(91) $+ %clone.num $+ $chr(93) | .logmassclone CL /kill $6 %kill.reason $chr(91) $+ %clone.num $+ $chr(93) | halt }
}
raw 315:*:{ did -a clonelist 3 $2- | unset %clone.num | unset %whoreply | .disable #whoreply | .logmassclone CL $2- | halt }
raw 522:*:{ did -a clonelist 3 $2- | unset %clone.num | unset %whoreply | .disable #whoreply | .logmassclone CL $2- | halt }
raw 403:*:{ did -a clonelist 3 $2- | unset %clone.num | unset %whoreply | .disable #whoreply | .logmassclone CL $2- | halt }
#whoreply end
;
#whoreply2 off
raw 352:*:{
  if (%whoreply == 1) {
    did -a clonelist2 3 $chr(91) $+ $2 $+ $chr(93) $6 $chr(91) $+ $3 $+ @ $+ $4 $+ $chr(93)
    .logmassclone CL2 $chr(91) $+ $2 $+ $chr(93) $6 $chr(91) $+ $3 $+ @ $+ $4 $+ $chr(93)
  halt }
  elseif (%whoreply == 2) { if (%clone.num) { goto next } | else { set %clone.num 0 } | :next | inc %clone.num | did -a clonelist2 3 Killing $6 $chr(91) $+ $3 $+ @ $+ $4 $+ $chr(93) | kill $6 %kill.reason $chr(91) $+ %clone.num $+ $chr(93) | .logmassclone CL /kill $6 %kill.reason $chr(91) $+ %clone.num $+ $chr(93) | halt }
}
raw 315:*:{ did -a clonelist2 3 $2- | unset %clone.num | unset %whoreply | .disable #whoreply2 | .logmassclone CL2 $2- | halt }
raw 522:*:{ did -a clonelist2 3 $2- | unset %clone.num | unset %whoreply | .disable #whoreply2 | .logmassclone CL2 $2- | halt }
raw 403:*:{ did -a clonelist2 3 $2- | unset %clone.num | unset %whoreply | .disable #whoreply2 | .logmassclone CL2 $2- | halt }
#whoreply2 end
;
#whoreply3 off
raw 352:*:{
  if (%whoreply == 1) { 
    did -a clonelist3 3 $chr(91) $+ $2 $+ $chr(93) $6 $chr(91) $+ $3 $+ @ $+ $4 $+ $chr(93)
    .logmassclone CD $chr(91) $+ $2 $+ $chr(93) $6 $chr(91) $+ $3 $+ @ $+ $4 $+ $chr(93)
  halt }
  elseif (%whoreply == 2) {
    if (%clone.num) { goto next } | else { set %clone.num 0 }
    :next
    inc %clone.num
    if ( ($6 != $me) && ($4 != dalnet) && ($4 != staff.dalnet) && ($4 != staff.dal.net) && ($4 != dal.net) ) {
      did -a clonelist3 3 Killing $6 $chr(91) $+ $3 $+ @ $+ $4 $+ $chr(93)
      kill $6 %reason.clonelist3 $chr(91) $+ %clone.num $+ $chr(93)
    .logmassclone CD /kill $6 %reason.clonelist3 $chr(91) $+ %clone.num $+ $chr(93) }
    else {
      did -a clonelist3 3 Not Killing $6 $chr(91) $+ $3 $+ @ $+ $4 $+ $chr(93) [Protected]
      .logmassclone CD Not Killing $6 $chr(91) $+ $3 $+ @ $+ $4 $+ $chr(93) [Protected]
    }
  halt }
  elseif (%whoreply == 3) { 
    if (%clone.num) { goto next } | else { set %clone.num 0 }
    :next
    inc %clone.num
    if ( ($6 != $me) && ($4 != dalnet) && ($4 != staff.dalnet) && ($4 != staff.dal.net) && ($4 != dal.net) ) {
      did -a clonelist3 3 K-lining $6 $chr(91) $+ $3 $+ @ $+ $4 $+ $chr(93)
      .raw kline %time.clonelist3 * $+ @ $+ $4 : $+ %reason.clonelist3 $chr(91) $+ %clone.num $+ $chr(93) 
    .logmassclone CD .raw kline %time.clonelist3 * $+ @ $+ $4 : $+ %reason.clonelist3 $chr(91) $+ %clone.num $+ $chr(93) }
    else {
      did -a clonelist3 3 Not K-lining $6 $chr(91) $+ $3 $+ @ $+ $4 $+ $chr(93) [Protected]
      .logmassclone CD Not K-lining $6 $chr(91) $+ $3 $+ @ $+ $4 $+ $chr(93) [Protected]
    }
  halt }
  elseif (%whoreply == 4) { 
    if (%makillstart == 1) {
      .raw privmsg %akill.service : $+ MAKILL RESET
      .logmassclone CD .raw privmsg %akill.service : $+ MAKILL RESET
      set %makillstart 2
    } 
    if (%clone.num) { goto next } else { set %clone.num 0 }
    :next
    inc %clone.num                                                       
    if ( ($6 != $me) && ($4 != dalnet) && ($4 != staff.dalnet) && ($4 != staff.dal.net) && ($4 != dal.net) ) {
      did -a clonelist3 3 Akilling $6 $chr(91) $+ $3 $+ @ $+ $4 $+ $chr(93)
      .raw privmsg %akill.service : $+ MAKILL ADD * $+ @ $+ $4 
    .logmassclone CD .raw privmsg %akill.service : $+ MAKILL ADD * $+ @ $+ $4 }
    else {
      did -a clonelist3 3 Not Akilling $6 $chr(91) $+ $3 $+ @ $+ $4 $+ $chr(93) [Protected]
      .logmassclone CD Not Akilling $6 $chr(91) $+ $3 $+ @ $+ $4 $+ $chr(93) [Protected]
    }
    halt
  }
}
raw 315:*:{ did -a clonelist3 3 $2- | if (%whoreply == 4) { .raw privmsg %akill.service : $+ MAKILL COMMIT %time.clonelist3 %reason.clonelist3 $chr(91) $+ %clone.num $+ $chr(93) } | .logmassclone CD $2- | if (%whoreply == 4) { .logmassclone CD .raw privmsg %akill.service : $+ MAKILL COMMIT %time.clonelist3 %reason.clonelist3 $chr(91) $+ %clone.num $+ $chr(93) } | unset %makillstart | unset %clone.num | unset %whoreply | .disable #whoreply3 | halt }
raw 522:*:{ did -a clonelist3 3 $2- | if (%whoreply == 4) { .raw privmsg %akill.service : $+ MAKILL COMMIT %time.clonelist3 %reason.clonelist3 $chr(91) $+ %clone.num $+ $chr(93) } | .logmassclone CD $2- | if (%whoreply == 4) { .logmassclone CD .raw privmsg %akill.service : $+ MAKILL COMMIT %time.clonelist3 %reason.clonelist3 $chr(91) $+ %clone.num $+ $chr(93) } | unset %makillstart | unset %clone.num | unset %whoreply | .disable #whoreply3 | halt }
raw 403:*:{ did -a clonelist3 3 $2- | if (%whoreply == 4) { .raw privmsg %akill.service : $+ MAKILL COMMIT %time.clonelist3 %reason.clonelist3 $chr(91) $+ %clone.num $+ $chr(93) } | .logmassclone CD $2- | if (%whoreply == 4) { .logmassclone CD .raw privmsg %akill.service : $+ MAKILL COMMIT %time.clonelist3 %reason.clonelist3 $chr(91) $+ %clone.num $+ $chr(93) } | unset %makillstart | unset %clone.num | unset %whoreply | .disable #whoreply3 | halt }
#whoreply3 end
;
#whoreply4 off
raw 352:*:{
  if (%whoreply == 1) { 
    did -a clonelist4 3 $chr(91) $+ $2 $+ $chr(93) $6 $chr(91) $+ $3 $+ @ $+ $4 $+ $chr(93)
    .logmassclone CW $chr(91) $+ $2 $+ $chr(93) $6 $chr(91) $+ $3 $+ @ $+ $4 $+ $chr(93)
  halt }
  elseif (%whoreply == 2) {
    if (%clone.num) { goto next } | else { set %clone.num 0 }
    :next
    inc %clone.num
    if ( ($6 != $me) && ($4 != dalnet) && ($4 != staff.dalnet) && ($4 != staff.dal.net) && ($4 != dal.net) ) {
      did -a clonelist4 3 Killing $6 $chr(91) $+ $3 $+ @ $+ $4 $+ $chr(93)
      kill $6 %reason.clonelist4 $chr(91) $+ %clone.num $+ $chr(93)
    .logmassclone CW /kill $6 %reason.clonelist4 $chr(91) $+ %clone.num $+ $chr(93) }
    else {
      did -a clonelist4 3 Not Killing $6 $chr(91) $+ $3 $+ @ $+ $4 $+ $chr(93) [Protected]
      .logmassclone CW Not Killing $6 $chr(91) $+ $3 $+ @ $+ $4 $+ $chr(93) [Protected]
    }
  halt }
  elseif (%whoreply == 3) { 
    if (%clone.num) { goto next } | else { set %clone.num 0 }
    :next
    inc %clone.num
    if ( ($6 != $me) && ($4 != dalnet) && ($4 != staff.dalnet) && ($4 != staff.dal.net) && ($4 != dal.net) ) {
      did -a clonelist4 3 K-lining $6 $chr(91) $+ $3 $+ @ $+ $4 $+ $chr(93)
      .raw kline %time.clonelist4 * $+ @ $+ $4 : $+ %reason.clonelist4 $chr(91) $+ %clone.num $+ $chr(93) 
    .logmassclone CW .raw kline %time.clonelist4 * $+ @ $+ $4 : $+ %reason.clonelist4 $chr(91) $+ %clone.num $+ $chr(93) }
    else {
      did -a clonelist4 3 Not K-lining $6 $chr(91) $+ $3 $+ @ $+ $4 $+ $chr(93) [Protected]
      .logmassclone CW Not K-lining $6 $chr(91) $+ $3 $+ @ $+ $4 $+ $chr(93) [Protected]
    }
  halt }
  elseif (%whoreply == 4) { 
    if (%makillstart == 1) {
      .raw privmsg %akill.service : $+ MAKILL RESET
      .logmassclone CW .raw privmsg %akill.service : $+ MAKILL RESET
      set %makillstart 2
    } 
    if (%clone.num) { goto next } else { set %clone.num 0 }
    :next
    inc %clone.num                                                       
    if ( ($6 != $me) && ($4 != dalnet) && ($4 != staff.dalnet) && ($4 != staff.dal.net) && ($4 != dal.net) ) {
      did -a clonelist4 3 Akilling $6 $chr(91) $+ $3 $+ @ $+ $4 $+ $chr(93)
      .raw privmsg %akill.service : $+ MAKILL ADD * $+ @ $+ $4 
    .logmassclone CW .raw privmsg %akill.service : $+ MAKILL ADD * $+ @ $+ $4 }
    else {
      did -a clonelist4 3 Not Akilling $6 $chr(91) $+ $3 $+ @ $+ $4 $+ $chr(93) [Protected]
      .logmassclone CW Not Akilling $6 $chr(91) $+ $3 $+ @ $+ $4 $+ $chr(93) [Protected]
    }
    halt
  }
}
raw 315:*:{ did -a clonelist4 3 $2- | if (%whoreply == 4) { .raw privmsg %akill.service : $+ MAKILL COMMIT %time.clonelist4 %reason.clonelist4 $chr(91) $+ %clone.num $+ $chr(93) } | .logmassclone CW $2- | if (%whoreply == 4) { .logmassclone CW .raw privmsg %akill.service : $+ MAKILL COMMIT %time.clonelist4 %reason.clonelist4 $chr(91) $+ %clone.num $+ $chr(93) } | unset %makillstart | unset %clone.num | unset %whoreply | .disable #whoreply4 | halt }
raw 522:*:{ did -a clonelist4 3 $2- | if (%whoreply == 4) { .raw privmsg %akill.service : $+ MAKILL COMMIT %time.clonelist4 %reason.clonelist4 $chr(91) $+ %clone.num $+ $chr(93) } | .logmassclone CW $2- | if (%whoreply == 4) { .logmassclone CW .raw privmsg %akill.service : $+ MAKILL COMMIT %time.clonelist4 %reason.clonelist4 $chr(91) $+ %clone.num $+ $chr(93) } | unset %makillstart | unset %clone.num | unset %whoreply | .disable #whoreply4 | halt }
raw 403:*:{ did -a clonelist4 3 $2- | if (%whoreply == 4) { .raw privmsg %akill.service : $+ MAKILL COMMIT %time.clonelist4 %reason.clonelist4 $chr(91) $+ %clone.num $+ $chr(93) } | .logmassclone CW $2- | if (%whoreply == 4) { .logmassclone CW .raw privmsg %akill.service : $+ MAKILL COMMIT %time.clonelist4 %reason.clonelist4 $chr(91) $+ %clone.num $+ $chr(93) } | unset %makillstart | unset %clone.num | unset %whoreply | .disable #whoreply4 | halt }
#whoreply4 end
;
#whoreply5 off
raw 352:*:{
  if (%whoreply == 1) { 
    did -a clonelist5 3 $chr(91) $+ $2 $+ $chr(93) $6 $chr(91) $+ $3 $+ @ $+ $4 $+ $chr(93)
    .logmassclone CR $chr(91) $+ $2 $+ $chr(93) $6 $chr(91) $+ $3 $+ @ $+ $4 $+ $chr(93)
  halt }
  elseif (%whoreply == 2) { 
    if (%clone.num) { goto next } | else { set %clone.num 0 } | 
    :next
    inc %clone.num
    if ( ($6 != $me) && ($4 != dalnet) && ($4 != staff.dalnet) && ($4 != staff.dal.net) && ($4 != dal.net) ) {
      did -a clonelist5 3 Killing $6 $chr(91) $+ $3 $+ @ $+ $4 $+ $chr(93)
      kill $6 %reason.clonelist4 $chr(91) $+ %clone.num $+ $chr(93) 
    .logmassclone CR /kill $6 %reason.clonelist4 $chr(91) $+ %clone.num $+ $chr(93) }
    else {
      did -a clonelist5 3 Not Killing $6 $chr(91) $+ $3 $+ @ $+ $4 $+ $chr(93) [Protected]
      .logmassclone CR Not Killing $6 $chr(91) $+ $3 $+ @ $+ $4 $+ $chr(93) [Protected]
    }
  halt }
  elseif (%whoreply == 3) { 
    if (%clone.num) { goto next } | else { set %clone.num 0 }
    :next
    inc %clone.num
    if ( ($6 != $me) && ($4 != dalnet) && ($4 != staff.dalnet) && ($4 != staff.dal.net) && ($4 != dal.net) ) {
      did -a clonelist5 3 K-lining $6 $chr(91) $+ $3 $+ @ $+ $4 $+ $chr(93)
      .raw kline %time.clonelist4 * $+ @ $+ $4 : $+ %reason.clonelist4 $chr(91) $+ %clone.num $+ $chr(93) 
    .logmassclone CR .raw kline %time.clonelist4 * $+ @ $+ $4 : $+ %reason.clonelist4 $chr(91) $+ %clone.num $+ $chr(93) }
    else {
      did -a clonelist5 3 Not K-lining $6 $chr(91) $+ $3 $+ @ $+ $4 $+ $chr(93) [Protected]
      .logmassclone CR Not K-lining $6 $chr(91) $+ $3 $+ @ $+ $4 $+ $chr(93) [Protected]
    }
  halt }
  elseif (%whoreply == 4) { 
    if (%makillstart == 1) {
      .raw privmsg %akill.service : $+ MAKILL RESET
      .logmassclone CR .raw privmsg %akill.service : $+ MAKILL RESET
      set %makillstart 2
    } 
    if (%clone.num) { goto next } | else { set %clone.num 0 }
    :next
    inc %clone.num
    if ( ($6 != $me) && ($4 != dalnet) && ($4 != staff.dalnet) && ($4 != staff.dal.net) && ($4 != dal.net) ) {
      did -a clonelist5 3 Akilling $6 $chr(91) $+ $3 $+ @ $+ $4 $+ $chr(93)
      .raw privmsg %akill.service : $+ MAKILL ADD * $+ @ $+ $4 
    .logmassclone CR .raw privmsg %akill.service : $+ MAKILL ADD * $+ @ $+ $4 }
    else {
      did -a clonelist5 3 Not Akilling $6 $chr(91) $+ $3 $+ @ $+ $4 $+ $chr(93) [Protected]
      .logmassclone CR Not Akilling $6 $chr(91) $+ $3 $+ @ $+ $4 $+ $chr(93) [Protected]
    }
    halt
  }
}
raw 315:*:{ did -a clonelist5 3 $2- | if (%whoreply == 4) { .raw privmsg %akill.service : $+ MAKILL COMMIT %time.clonelist5 %reason.clonelist5 $chr(91) $+ %clone.num $+ $chr(93) } | .logmassclone CR $2- | if (%whoreply == 4) { .logmassclone CR .raw privmsg %akill.service : $+ MAKILL COMMIT %time.clonelist5 %reason.clonelist5 $chr(91) $+ %clone.num $+ $chr(93) } | unset %makillstart | unset %clone.num | unset %whoreply | .disable #whoreply5 | halt }
raw 522:*:{ did -a clonelist5 3 $2- | if (%whoreply == 4) { .raw privmsg %akill.service : $+ MAKILL COMMIT %time.clonelist5 %reason.clonelist5 $chr(91) $+ %clone.num $+ $chr(93) } | .logmassclone CR $2- | if (%whoreply == 4) { .logmassclone CR .raw privmsg %akill.service : $+ MAKILL COMMIT %time.clonelist5 %reason.clonelist5 $chr(91) $+ %clone.num $+ $chr(93) } | unset %makillstart | unset %clone.num | unset %whoreply | .disable #whoreply5 | halt }
raw 403:*:{ did -a clonelist5 3 $2- | if (%whoreply == 4) { .raw privmsg %akill.service : $+ MAKILL COMMIT %time.clonelist5 %reason.clonelist5 $chr(91) $+ %clone.num $+ $chr(93) } | .logmassclone CR $2- | if (%whoreply == 4) { .logmassclone CR .raw privmsg %akill.service : $+ MAKILL COMMIT %time.clonelist5 %reason.clonelist5 $chr(91) $+ %clone.num $+ $chr(93) } | unset %makillstart | unset %clone.num | unset %whoreply | .disable #whoreply5 | halt }
#whoreply5 end
; ####
; #### Notice to window
; ####
#caescriptfunctions off
on ^*:NOTICE:*:?:{
  if $query($nick) { 
    echo $colour(notice) $nick - $+ $nick $+ - $1-
    haltdef
  }
  else { 
    echo $colour(notice) -a - $+ $nick $+ - $1- 
    haltdef
  }
} 
on *:INPUT:NickServ:if ($left($1-,1) != /) { .nickserv $1- | halt }
on *:INPUT:ChanServ:if ($left($1-,1) != /) { .chanserv $1- | halt }
on *:INPUT:MemoServ:if ($left($1-,1) != /) { .memoserv $1- | halt }
on *:INPUT:HelpServ:if ($left($1-,1) != /) { .raw privmsg helpserv : $+ $1- | halt }
on *:INPUT:StatServ:if ($left($1-,1) != /) { .raw privmsg statserv : $+ $1- | halt }
on *:INPUT:OperServ:if (!$regex($1-,^/)) { .operserv $1- | halt }
on *:INPUT:RootServ:if (!$regex($1-,^/)) { .rootserv $1- | halt }
on *:INPUT:OperServ2:if (!$regex($1-,^/) ) { .raw privmsg operserv2 : $+ $1- | halt }
#caescriptfunctions end
;
; #### Answer to CLSCAN ####
;
#clscan off
raw 302:*:{
  if (@ isin $2 ) {
    set %posicion.arroba $pos( $2 ,@,1)
    set %posicion.rescate $calc($len( $2 ) - %posicion.arroba ) 
    set %clone.add $right( $2 , %posicion.rescate )
    set %whoreply 1
    .enable #whoreply
    dialog -m clonelist clonelist 
  }
  else {
    echo -a Could not scan Clones. User not present.
  }
  .disable #clscan
  haltdef
}
#clscan end
;
; #### STATSL ####
;
dialog statsl {
  title "Stats L"
  size -1 -1 500 190
  text "Stats L Report for:", 1, 10 10 100 23, left
  text "", 2, 110 10 200 23
  list 3, 110 35 380 150,hsbar vsbar
  button "Refresh", 10, 17 30 75 25, default
  button "Close", 14, 17 60 75 25, ok
}
on *:dialog:statsl:*:*:{
  did -a statsl 2 %servidor.stats.l
  if ( ($did == 10) && ($devent == sclick ) ) { .enable #statsl2 | did -r statsl 2 | did -a statsl 2 %servidor.stats.l | did -r statsl 3 | .stats l %servidor.stats.l }
  if ( ($did == 14) && ($devent == sclick ) ) { unset %servidor.stats.l }
}
;
#statsl off
raw 211:*:{ 
  if ( $3 == SendQ ) {
    if ( $active != @StatsL ) {
      window -kem @StatsL
      titlebar @StatsL on $network
    }
    echo -ti2 @StatsL 2[SL] SendQ and OpenSince Report on2 %servidor.stats.l 
  }
  else {
    set %posicion.punto $pos( $2, . ,1)
    set %slserver $left( $2 , %posicion.punto )
    if ( $active != @StatsL ) {
      window -kem @StatsL
      titlebar @StatsL on $network
    }
    echo -ti2 @StatsL %slserver $+ * SendQ:2 $3 ( $+ $duration( $8 ) $+ )
  }
  haltdef
}
raw 219:*:{
  if ( $active != @StatsL ) {
    window -kem @StatsL
    titlebar @StatsL on $network
  }
  echo -ti2 @StatsL 2[SL] $3-
  unset %servidor.stats.l
  unset %posicion.punto
  unset %slserver
  .disable #statsl
  haltdef
}
raw 402:*:{
  if ( $active != @StatsL ) {
    window -kem @StatsL
    titlebar @StatsL on $network
  }
  echo -ti2 @StatsL 2[SL] $3-
  unset %servidor.stats.l
  unset %posicion.punto
  unset %slserver
  .disable #statsl
  haltdef
}
#statsl end
;
#statsl2 off
raw 211:*:{ 
  if ( $3 == SendQ ) {
    did -a statsl 3 [SL] SendQ and OpenSince Report on %servidor.stats.l
  }
  else {
    set %posicion.punto $pos( $2, . ,1)
    set %slserver $left( $2 , %posicion.punto )
    did -a statsl 3 %slserver $+ * SendQ: $3 ( $+ $duration( $8 ) $+ )
  }
  haltdef
}
raw 219:*:{ did -a statsl 3 [SL] $3-
  unset %posicion.punto
  unset %slserver
  .disable #statsl2
  haltdef
}
raw 402:*:{ did -a statsl 3 [SL] $3-
  unset %posicion.punto
  unset %slserver
  .disable #statsl2
  haltdef
}
#statsl2 end
;
; #### Popups ####
;
menu status {
  IRCop
  .Oper:.oper $input(Oper Nick,1,Oper) $input(Oper Password,2,Oper)
  .Notices
  ..ChatOps:.raw chatops : $+ $input(Your message,1)
  ..LocOps:.raw locops : $+ $input(Your message,1)
  ..GlobOps:.raw globops : $input(Your message,1)
  ..WallOps:.raw wallops : $input(Your message,1)
  ..Server Notice:.notice $ $+ $input(Server Name,1,Sever Notice) [Server Wide Notice] $input(Message,1,Server Notice) [Please do NOT respond]
  ..Host Notice:.notice $chr(35) $+ $input(Host,1,Host Notice) [Host Notice] $input(Message,1,Host Notice) [Please do NOT respond]
  .Connects
  ..Connect:.connect $input(Server [<Port> [Source Server]],1,Sever Connect)
  ..Squit:.quote squit $input(Server name,1,Squit Server) : $+ $input(Message or reason,1,Squit Server)
  .Oper
  ..Rehash
  ...Rehash:rehash
  ...Rehash DNS:rehash DNS
  ...Rehash IP:rehash IP
  ...Rehash tklines:rehash tklines
  ...Rehash gc:rehash gc
  ...Rehash motd:rehash motd
  ..Restart:restart $input(Password for operation,1,Sever Operation)
  ..Die:die $input(Password for operation,1,Sever Operation)
  ..Close:quote close
  .Kill, K-Line
  ..Kill:kill $input(Enter Nick,1) $input(Enter reason,1)
  ..Check Nick:check nick $input(Enter Nick,1)
  ..K-Line
  ...Add:.raw kline $input(Nick or ident@host,1,K-Line) : $+ $input(Reason,1,K-Line)
  ...Add Timed:.raw kline $input(Time,1,K-Line) $input(Nick or ident@host,1,K-Line) : $+ $input(Reason,1,K-Line)
  ...Del:unkline $input(ident@server,1,K-Line)
  ...List:stats k
  .Set
  ..MAX:.quote set max $input(Please enter value or press ENTER for current,1)
  ..FLUDNUM:.quote set fludnum $input(Please enter value or press ENTER for current,1)
  ..FLUDTIME:.quote set fludtime $input(Please enter value or press ENTER for current,1)
  ..FLUDBLOCK:.quote set fludblock $input(Please enter value or press ENTER for current,1)
  ..SPAMNUM:.quote set spamnum $input(Please enter value or press ENTER for current,1)
  ..SPAMTIME:.quote set spamtime $input(Please enter value or press ENTER for current,1)
  ..SPLITDELAY:.quote set splitdelay $input(Please enter value or press ENTER for current,1)
  .Lines
  ..b/B lines:stats b $input(Server name [Enter for current],1)
  ..C/N lines:stats c $input(Server name [Enter for current],1)
  ..d/D lines:stats d $input(Server name [Enter for current],1)
  ..e/E lines:stats e $input(Server name [Enter for current],1)
  ..f/F lines:stats f $input(Server name [Enter for current],1)
  ..g/G lines:stats g $input(Server name [Enter for current],1)
  ..h/L lines:stats h $input(Server name [Enter for current],1)
  ..i lines:stats i $input(Server name [Enter for current],1)
  ..K lines:stats K $input(Server name [Enter for current],1)
  ..k lines:stats k $input(Server name [Enter for current],1)
  ..l lines:stats l $input(Server name [Enter for current] or nick,1)
  ..L lines:stats L $input(Server name [Enter for current] or nick,1)
  ..m lines:stats m $input(Server name [Enter for current],1)
  ..o/O lines:stats o $input(Server name [Enter for current],1)
  ..p lines:stats p $input(Server name [Enter for current],1)
  ..q lines:stats q $input(Server name [Enter for current],1)
  ..Q lines:stats Q $input(Server name [Enter for current],1)
  ..r lines:stats r $input(Server name [Enter for current],1)
  ..t lines:stats t $input(Server name [Enter for current],1)
  ..u lines:stats u $input(Server name [Enter for current],1)
  ..U lines:stats U $input(Server name [Enter for current],1)
  ..v lines:stats v $input(Server name [Enter for current],1)
  ..w lines:stats w $input(Server name [Enter for current],1)
  ..x lines:stats x $input(Server name [Enter for current],1)
  ..y lines:stats y $input(Server name [Enter for current],1)
  ..z lines:stats z $input(Server name [Enter for current],1)
  ..? lines:stats ? $input(Server name [Enter for current],1)
  .RWho Checks
  ..Drone Patterns
  ...SemiColon Gecos:.rwho +gm-m \:\w+\s\w+.* iR ro
  ...Guest drones:.rwho +n-m Guest\d{3,4} ro
  ...Two-word gecos drones:.rwho +ng-jm [a-z]{1,32}|Guest.* [a-z]{4,10}\s{1}[a-z]{4,10} 0 ro
  ...3cap6num nick:.rwho +n-m [A-Z]{3}\d{6} ro
  ...1lower[4num] nick:.rwho +n-m \D{1}\[\d{4}\] ro
  ..Nick / UserID / Gecos
  ...Show all
  ....UserId and Gecos same as Nick, 0chans:.rwho +nug-jm (\w{1,32}) ~?\1 \1 0 ro 
  ....UserId and Gecos same as Nick, >= 1chans:.rwho +nugj-m (\w{1,32}) ~?\1 \1 1 ro
  ...Specify character counts
  ....UserId and Gecos same as Nick, 0chans:.set %rw.nick.chars $+($chr(40), \w, $chr(123), $$input(Number of chars in Nick:, eq, Character count of nickname), $chr(125), $chr(41)) |.rwho +nug-jm %rw.nick.chars ~?\1 \1 0 ro | unset %rw.nick.chars
  ....UserId and Gecos same as Nick, >= 1chans:.set %rw.nick.chars $+($chr(40), \w, $chr(123), $$input(Number of chars in Nick:, eq, Character count of nickname), $chr(125), $chr(41)) |.rwho +nugj-m %rw.nick.chars ~?\1 \1 1 ro | unset %rw.nick.chars
  ..Nick / Gecos
  ...Show all
  ....Gecos same as Nick, 0chans:.rwho +ng-jm (\w{1,32}) \1 0 ro
  ....Gecos same as Nick, >= 1chans:.rwho +ngj-m (\w{1,32}) \1 1 ro
  ...Specify character counts
  ....Gecos same as Nick, 0chans:.set %rw.nick.chars $+($chr(40), \w, $chr(123), $$input(Number of chars in Nick:, eq, Character count of nickname), $chr(125), $chr(41)) |.rwho +ng-jm %rw.nick.chars \1 0 ro | unset %rw.nick.chars
  ....Gecos same as Nick, >= 1chans:.set %rw.nick.chars $+($chr(40), \w, $chr(123), $$input(Number of chars in Nick:, eq, Character count of nickname), $chr(125), $chr(41)) |.rwho +ngj-m %rw.nick.chars \1 1 ro | unset %rw.nick.chars
  ..Nick / UserID
  ...Show all
  ....UserID same as Nick, 0chans:.rwho +nu-jm (\w{1,32}) ~?\1 0 ro
  ....UserID same as Nick, >= 1chans:.rwho +nuj-m (\w{1,32}) ~?\1 1 ro
  ...Specify character counts
  ....UserID same as Nick, 0chans:.set %rw.nick.chars $+($chr(40), \w, $chr(123), $$input(Number of chars in Nick:, eq, Character count of nickname), $chr(125), $chr(41)) |.rwho +nu-jm %rw.nick.chars ~?\1 0 ro | unset %rw.nick.chars
  ....UserID same as Nick, >= 1chans:.set %rw.nick.chars $+($chr(40), \w, $chr(123), $$input(Number of chars in Nick:, eq, Character count of nickname), $chr(125), $chr(41)) |.rwho +nuj-m %rw.nick.chars ~?\1 1 ro | unset %rw.nick.chars
  ..Nick
  ...Show all - specify string
  ....0chans:.set %rw.nick.string $$input(String for Nick:, eq, Nick String, $+($cb(1))) |.rwho +n-jm $+($chr(40), %rw.nick.string, $chr(41)) 0 ro | .unset %rw.nick.string
  ....>= 1chans:.set %rw.nick.string $$input(String for Nick:, eq, Nick String, $+($cb(1))) |.rwho +nj-m $+($chr(40), %rw.nick.string, $chr(41)) 1 ro | .unset %rw.nick.string
  ...Show all - specify regex
  ....0chans:.set %rw.nick.regex $$input(Regex string for Nick:, eq, Nickname Regex) |.rwho +n-jm %rw.nick.regex 0 ro | .unset %rw.nick.regex
  ....>= 1chans:.set %rw.nick.regex $$input(Regex string for Nick:, eq, Nickname Regex) |.rwho +nj-m %rw.nick.regex 1 ro | .unset %rw.nick.regex
  ...UserID same as Nick
  ....Specify regex, 0chans:.set %rw.nick.regex $$input(Regex string for Nick:, eq, Nickname Regex) |.rwho +nu-jm $+($chr(40), %rw.nick.regex, $chr(41)) \1 0 ro | .unset %rw.nick.regex
  ....Specify regex, >= 1chans:.set %rw.nick.regex $$input(Regex string for Nick:, eq, Nickname Regex) |.rwho +nuj-m $+($chr(40), %rw.nick.regex, $chr(41)) \1 1 ro | .unset %rw.nick.regex
  ...Gecos same as Nick
  ....Specify regex, 0chans:.set %rw.nick.regex $$input(Regex string for Nick:, eq, Nickname Regex) |.rwho +ng-jm $+($chr(40), %rw.nick.regex, $chr(41)) \1 0 ro | .unset %rw.nick.regex
  ....Specify regex, >= 1chans:.set %rw.nick.regex $$input(Regex string for Nick:, eq, Nickname Regex) |.rwho +ngj-m $+($chr(40), %rw.nick.regex, $chr(41)) \1 1 ro | .unset %rw.nick.regex
  ..UserID
  ...Show all - specify string
  ....0chans:.set %rw.uid.string $$input(String for UserID:, eq, UserID String, $+($cb(1))) |.rwho +u-jm $+($chr(40), %rw.uid.string, $chr(41)) 0 ro | .unset %rw.uid.string
  ....>= 1chans:.set %rw.uid.string $$input(String for UserID:, eq, UserID String, $+($cb(1))) |.rwho +uj-m $+($chr(40), %rw.uid.string, $chr(41)) 1 ro | .unset %rw.uid.string
  ...Show all - specify regex
  ....0chans:.set %rw.uid.regex $$input(Regex string for UserID:, eq, UserID Regex) |.rwho +u-jm %rw.uid.regex 0 ro | .unset %rw.uid.regex
  ....>= 1chans:.set %rw.uid.regex $$input(Regex string for UserID:, eq, UserID Regex) |.rwho +uj-m %rw.uid.regex 1 ro | .unset %rw.uid.regex
  ...Nick same as UserID
  ....Specify regex, 0chans:.set %rw.uid.regex $$input(Regex string for UserID:, eq, UserID Regex) |.rwho +un-jm $+($chr(40), %rw.uid.regex, $chr(41)) \1 0 ro | .unset %rw.uid.regex
  ....Specify regex, >= 1chans:.set %rw.uid.regex $$input(Regex string for UserID:, eq, UserID Regex) |.rwho +unj-m $+($chr(40), %rw.uid.regex, $chr(41)) \1 1 ro | .unset %rw.uid.regex
  ...Gecos same as UserID
  ....Specify regex, 0chans:.set %rw.uid.regex $$input(Regex string for UserID:, eq, UserID Regex) |.rwho +ug-jm $+($chr(40), %rw.uid.regex, $chr(41)) \1 0 ro | .unset %rw.uid.regex
  ....Specify regex, >= 1chans:.set %rw.uid.regex $$input(Regex string for UserID:, eq, UserID Regex) |.rwho +ugj-m $+($chr(40), %rw.uid.regex, $chr(41)) \1 1 ro | .unset %rw.uid.regex
  ..Gecos
  ...Show all - specify string
  ....0chans:.set %rw.gecos.string $$input(String for Gecos:, eq, Gecos String, $addregast) |.rwho +g-jm $+($chr(40), %rw.gecos.string, $chr(41)) 0 ro | .unset %rw.gecos.string
  ....>= 1chans:.set %rw.gecos.string $$input(String for Gecos:, eq, Gecos String, $addregast) |.rwho +gj-m $+($chr(40), %rw.gecos.string, $chr(41)) 1 ro | .unset %rw.gecos.string
  ...Show all - specify regex
  ....0chans:.set %rw.gecos.regex $$input(Regex string for Gecos:, eq, Gecos Regex) |.rwho +g-jm %rw.gecos.regex 0 ro | .unset %rw.gecos.regex
  ....>= 1chans:.set %rw.gecos.regex $$input(Regex string for Gecos:, eq, Gecos Regex) |.rwho +gj-m %rw.gecos.regex 1 ro | .unset %rw.gecos.regex
  ...Nick same as Gecos
  ....Specify regex, 0chans:.set %rw.gecos.regex $$input(Regex string for Gecos:, eq, Gecos Regex) |.rwho +gn-jm $+($chr(40), %rw.gecos.regex, $chr(41)) \1 0 ro | .unset %rw.gecos.regex
  ....Specify regex, >= 1chans:.set %rw.gecos.regex $$input(Regex string for Gecos:, eq, Gecos Regex) |.rwho +gnj-m $+($chr(40), %rw.gecos.regex, $chr(41)) \1 1 ro | .unset %rw.gecos.regex
  ...UserID same as Gecos
  ....Specify regex, 0chans:.set %rw.gecos.regex $$input(Regex string for Gecos:, eq, Gecos Regex) |.rwho +gu-jm $+($chr(40), %rw.gecos.regex, $chr(41)) \1 0 ro | .unset %rw.gecos.regex
  ....Specify regex, >= 1chans:.set %rw.gecos.regex $$input(Regex string for Gecos:, eq, Gecos Regex) |.rwho +guj-m $+($chr(40), %rw.gecos.regex, $chr(41)) \1 1 ro | .unset %rw.gecos.regex
  ..Away
  ...Show all - specify string
  ....0chans:.set %rw.away.regex $$input(String in Away:, eq, Away String, $addregast) |.rwho +A-jm $+($chr(46),$chr(42),%rw.away.regex,$chr(46),$chr(42)) 0 ro | .unset %rw.away.regex
  ....>= 1chans:.set %rw.away.regex $$input(String for Away:, eq, Away String, $addregast) |.rwho +Aj-m $+($chr(46),$chr(42),%rw.away.regex,$chr(46),$chr(42)) 1 ro | .unset %rw.away.regex
  ...Show all - specify regex
  ....0chans:.set %rw.away.regex $$input(Regex string for Away:, eq, Away Regex) |.rwho +g-jm %rw.away.regex 0 ro | .unset %rw.away.regex
  ....>= 1chans:.set %rw.away.regex $$input(Regex string for Away:, eq, Away Regex) |.rwho +gj-m %rw.away.regex 1 ro | .unset %rw.away.regex
}

menu menubar {
  %version.ircoptools
  .Configure:/configure
  .IRCopTools Help:/run $mircdir $+ ircoptools\ircoptools.chm
  .IRCopTools Page:/run http://www.caespock.org/ircsoftware
}
