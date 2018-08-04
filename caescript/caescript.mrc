;
; CaeScript 7.0b2
; por CaeSpock
;
; Para cargarlo teclea:
;  /load -rs caescript.mrc
;
; Para más información ve a:
;   http://www.caespock.org/ircsoftware/
;
on *:DISCONNECT:{
 if (%descargar == 1) {
  .descargar | halt
 }
 else {
  .echo -s  $+ %color.titulo2 $+ [N]  $+ %color.titulo1 $+ -----------------------------------------
  .echo -s  $+ %color.titulo2 $+ [N] %version.caescript desconectando ....
  .echo -s  $+ %color.titulo2 $+ [N]  $+ %color.titulo1 $+ -----------------------------------------
 }
}
on *:LOAD:{
 ;
 ; #### Asignación de Variables a partir de lo configurado
 ; #### en CaeScript\variables.ini
 ;
 .set %version.caescript CaeScript 7.0b2
 if $version >= 7.52 {
  .set %caescript.activo 1
  if !$isfile( $mircdir $+ caescript\variables.ini ) {
    .echo -s 2[N] Archivo de configuración no encontrado . . . 
    .echo -s 2[N] Generando configuración a partir del archivo de valores por defecto . . .
    .copy -o " $+ $mircdir $+ caescript\default.ini" " $+ $mircdir $+ caescript\variables.ini"
  }
  .set %tema $readini caescript\variables.ini tema nombre
  if $isdir(caescript\temas\ $+ %tema) == $false {
   .echo -s 2[N] NO existe el tema ' $+ %tema $+ ' - Asignando tema base.
   .set %tema base
  }
  .set %color.titulo1 $readini caescript\temas\ $+ %tema $+ \tema.ini colores titulo1
  .set %color.titulo2 $readini caescript\temas\ $+ %tema $+ \tema.ini colores titulo2
  .echo -s  $+ %color.titulo2 $+ [N]  $+ %color.titulo1 $+ -----------------------------------------
  .echo -s  $+ %color.titulo2 $+ [N] Cargando %version.caescript ....
  .echo -s  $+ %color.titulo2 $+ [N]  $+ %color.titulo1 $+ -----------------------------------------
  .set %verdatos $readini caescript\variables.ini pantallas verdatos
  .set %lagmeter $readini caescript\variables.ini pantallas lagmeter
  .set %mp3player $readini caescript\variables.ini pantallas mp3player
  .set %usarsonido $readini caescript\variables.ini general sonido
  if (%usarsonido != 1) {
    .echo -s 2[N] La opcion de usar sonido fue anulada ... Cancelando sonido de todo el sistema ...
    .echo -s 2[N] Para reactivarlo actualiza el valor de esta opción, o bien usa: /mute off
    .vol -vu1
  }
  .set %descargar $readini caescript\variables.ini general descargar
  .set %temaversion $readini caescript\temas\ $+ %tema $+ \tema.ini tema version
  if %usarsonido == 1 {
    .splay $mircdir $+ caescript\temas\ $+ %tema $+ \ $+ $readini caescript\temas\ $+ %tema $+ \tema.ini sonidos intro
  }
  if ($window(-1).w >= 1024) {
    .set %fondo $readini caescript\temas\ $+ %tema $+ \tema.ini graficos fondo1024
  }
  if ($window(-1).w == 800) {
    .set %fondo $readini caescript\temas\ $+ %tema $+ \tema.ini graficos fondo800
  }
  if ($window(-1).w <= 640) {
    .set %fondo $readini caescript\temas\ $+ %tema $+ \tema.ini graficos fondo640
  }
  if ($temaversion < 6.14) {
    .set %fondo $readini caescript\temas\ $+ %tema $+ \tema.ini graficos fondo
  }
  .set %fondostatus $readini caescript\temas\ $+ %tema $+ \tema.ini graficos fondostatus
  .set %iconos $readini caescript\temas\ $+ %tema $+ \tema.ini graficos iconos
  .set %botones $readini caescript\temas\ $+ %tema $+ \tema.ini graficos botones
  .set %regla $readini caescript\temas\ $+ %tema $+ \tema.ini graficos regla
  .set %lagbartexto $readini caescript\temas\ $+ %tema $+ \tema.ini lagbar texto
  .set %lagbarfondo $readini caescript\temas\ $+ %tema $+ \tema.ini lagbar fondo
  .set %lagbarfrente $readini caescript\temas\ $+ %tema $+ \tema.ini lagbar frente
  if %lagbartexto == $null { .set %lagbarfondo $rgb(255,255,255) }
  if %lagbarfondo == $null { .set %lagbarfondo $rgb(0,0,0) }
  if %lagbarfrente == $null { .set %lagbarfondo $rgb(215,215,215) }
  .set %agentecargar $readini caescript\variables.ini Agente Agente
  .set %ver.ms.agente $readini caescript\variables.ini Agente mostrarlo
  .set %ver.siempre.ms.agente $readini caescript\variables.ini Agente versiempre
  if (%ver.ms.agente == 0) {
   .set %ver.siempre.ms.agente 0
   .set %agentecargar default
  }
  .set %agentecargado 0
  .set %minsbanproteccion $readini caescript\variables.ini banproteccion minutosbanautomatico
  .set %banproteccion $calc(%minsbanproteccion * 60)
  .set %minstiempobantemporal $readini caescript\variables.ini bantemporal minutosbantemporal
  .set %tiempobantemporal $calc(%minstiempobantemporal * 60)
  .set %tipoban $readini caescript\variables.ini bans tipo
  .set %autoaway $readini caescript\variables.ini autoaway usar
  .set %minsautoaway $readini caescript\variables.ini autoaway minutos
  if ($autoaway == 1) && (%minsautoaway == 0) { .set %minsautoaway $readini caescript\default.ini autoaway minutos }
  .set %segsautoaway $calc(%minsautoaway * 60)
  .set %mostraraway $readini caescript\variables.ini away mostraraway
  .set %mp3sonido $readini caescript\variables.ini mp3 sonido
  .set %mp3mostrar $readini caescript\variables.ini mp3 mostrar
  .set %mp3texto $readini caescript\variables.ini mp3 texto
  .set %pathmp3 $readini caescript\variables.ini mp3 path
  .set %videomostrar $readini caescript\variables.ini video mostrar
  .set %videotexto $readini caescript\variables.ini video texto
  .set %pathvideo $readini caescript\variables.ini video path
  .set %formatotexto $readini caescript\variables.ini texto formato
  .set %opscolor $readini caescript\variables.ini texto ops
  .set %formatoops.color  $+ %color.titulo1 $+ [ $+ %color.titulo2 $+ Ops: $+ %color.titulo1 $+ ]
  ; .set %formatoops.color [Ops:]
  .set %formatoops.bnegro [Ops:]
  .set %formatoopsv.color  $+ %color.titulo1 $+ [ $+ %color.titulo2 $+ Ops+v: $+ %color.titulo1 $+ ]
  ; .set %formatoopsv.color [Ops+v:]
  .set %formatoopsv.bnegro [Ops+v:]
  if %opscolor == 1 { .set %formatoops %formatoops.color }
  else { .set %formatoops %formatoops.bnegro }
  .set %opsvcolor $readini caescript\variables.ini texto opsv
  if %opsvcolor == 1 { .set %formatoopsv %formatoopsv.color }
  else { .set %formatoopsv %formatoopsv.bnegro }
  .set %doblenotify $readini caescript\variables.ini texto notify
  .set %addondalnet $readini caescript\variables.ini addons dalnet
  .set %addoneggdrop $readini caescript\variables.ini addons eggdrop
  .set %addonbouncer $readini caescript\variables.ini addons eggdrop
  .set %formato15color1 10,15
  .set %formato15color2 3,15
  .set %filtroascii $mircdir $+ caescript\ascii\*.txt
  .set %filtropoemas $mircdir $+ caescript\poemas\*.poe
  .set %filtrofrases $mircdir $+ caescript\frases.txt
  .set %filtropiropos $mircdir $+ caescript\piropos.txt
  .set %filtrochistes $mircdir $+ caescript\chistes.txt
  ;
  ; ### Asignacion a variables de los colores anteriores al tema
  ;
  .set %color.background $color(Background)
  .set %color.action $color(Action text)
  .set %color.ctcp $color(CTCP text)
  .set %color.highlight $color(Highlight text)
  .set %color.info $color(Info text)
  .set %color.info2 $color(Info2 text)
  .set %color.invite $color(Invite text)
  .set %color.join $color(Join text)
  .set %color.kick $color(Kick text)
  .set %color.mode $color(Mode text)
  .set %color.nick $color(Nick text)
  .set %color.normal $color(Normal text)
  .set %color.notice $color(Notice text)
  .set %color.notify $color(Notify text)
  .set %color.other $color(Other text)
  .set %color.own $color(Own text)
  .set %color.part $color(Part text)
  .set %color.quit $color(Quit text)
  .set %color.topic $color(Topic text)
  .set %color.wallops $color(Wallops text)
  .set %color.whois $color(Whois text)
  .set %color.listboxtext $color(listbox text)
  .set %color.listbox $color(listbox)
  .set %color.gray $color(gray text)
  .set %color.title $color(title text)
  .set %color.editboxtext $color(editbox text)
  .set %color.inactive $color(Inactive)
  .set %color.editbox $color(editbox)
  ;
  ; ### Asignacion de colores del tema
  ;
  if $readini caescript\temas\ $+ %tema $+ \tema.ini colores background {
   .color Background $readini caescript\temas\ $+ %tema $+ \tema.ini colores background
  }
  if $readini caescript\temas\ $+ %tema $+ \tema.ini colores action {
   .color Action text $readini caescript\temas\ $+ %tema $+ \tema.ini colores action
  }
  if $readini caescript\temas\ $+ %tema $+ \tema.ini colores ctcp {
   .color CTCP text $readini caescript\temas\ $+ %tema $+ \tema.ini colores ctcp
  }
  if $readini caescript\temas\ $+ %tema $+ \tema.ini colores highlight {
   .color Highlight text $readini caescript\temas\ $+ %tema $+ \tema.ini colores highlight
  }
  if $readini caescript\temas\ $+ %tema $+ \tema.ini colores info {
   .color Info text $readini caescript\temas\ $+ %tema $+ \tema.ini colores info
  }
  if $readini caescript\temas\ $+ %tema $+ \tema.ini colores info2 {
   .color Info2 text $readini caescript\temas\ $+ %tema $+ \tema.ini colores info2
  }
  if $readini caescript\temas\ $+ %tema $+ \tema.ini colores invite {
   .color Invite text $readini caescript\temas\ $+ %tema $+ \tema.ini colores invite
  }
  if $readini caescript\temas\ $+ %tema $+ \tema.ini colores join {
   .color Join text $readini caescript\temas\ $+ %tema $+ \tema.ini colores join
  }
  if $readini caescript\temas\ $+ %tema $+ \tema.ini colores kick {
   .color Kick text $readini caescript\temas\ $+ %tema $+ \tema.ini colores kick
  }
  if $readini caescript\temas\ $+ %tema $+ \tema.ini colores mode {
   .color Mode text $readini caescript\temas\ $+ %tema $+ \tema.ini colores mode
  }
  if $readini caescript\temas\ $+ %tema $+ \tema.ini colores nick {
   .color Nick text $readini caescript\temas\ $+ %tema $+ \tema.ini colores nick
  }
  if $readini caescript\temas\ $+ %tema $+ \tema.ini colores normal {
   .color Normal text $readini caescript\temas\ $+ %tema $+ \tema.ini colores normal
  }
  if $readini caescript\temas\ $+ %tema $+ \tema.ini colores notice {
   .color Notice text $readini caescript\temas\ $+ %tema $+ \tema.ini colores notice
  }
  if $readini caescript\temas\ $+ %tema $+ \tema.ini colores notify {
   .color Notify text $readini caescript\temas\ $+ %tema $+ \tema.ini colores notify
  }
  if $readini caescript\temas\ $+ %tema $+ \tema.ini colores other {
   .color Other text $readini caescript\temas\ $+ %tema $+ \tema.ini colores other
  }
  if $readini caescript\temas\ $+ %tema $+ \tema.ini colores own {
   .color Own text $readini caescript\temas\ $+ %tema $+ \tema.ini colores own
  }
  if $readini caescript\temas\ $+ %tema $+ \tema.ini colores part {
   .color Part text $readini caescript\temas\ $+ %tema $+ \tema.ini colores part
  }
  if $readini caescript\temas\ $+ %tema $+ \tema.ini colores quit {
   .color Quit text $readini caescript\temas\ $+ %tema $+ \tema.ini colores quit
  }
  if $readini caescript\temas\ $+ %tema $+ \tema.ini colores topic {
   .color Topic text $readini caescript\temas\ $+ %tema $+ \tema.ini colores topic
  }
  if $readini caescript\temas\ $+ %tema $+ \tema.ini colores wallops {
   .color Wallops text $readini caescript\temas\ $+ %tema $+ \tema.ini colores wallops
  }
  if $readini caescript\temas\ $+ %tema $+ \tema.ini colores whois {
   .color Whois text $readini caescript\temas\ $+ %tema $+ \tema.ini colores whois
  }
  if $readini caescript\temas\ $+ %tema $+ \tema.ini colores listboxtext {
   .color Listbox text $readini caescript\temas\ $+ %tema $+ \tema.ini colores listboxtext
  }
  if $readini caescript\temas\ $+ %tema $+ \tema.ini colores listbox {
   .color Listbox $readini caescript\temas\ $+ %tema $+ \tema.ini colores listbox
  }
  if $readini caescript\temas\ $+ %tema $+ \tema.ini colores gray {
  .color Gray text $readini caescript\temas\ $+ %tema $+ \tema.ini colores gray
  }
  if $readini caescript\temas\ $+ %tema $+ \tema.ini colores editboxtext {
   .color Editbox text $readini caescript\temas\ $+ %tema $+ \tema.ini colores editboxtext
  }
  if $readini caescript\temas\ $+ %tema $+ \tema.ini colores editbox {
   .color Editbox $readini caescript\temas\ $+ %tema $+ \tema.ini colores editbox
  }
  if $readini caescript\temas\ $+ %tema $+ \tema.ini colores title {
   .color Title text $readini caescript\temas\ $+ %tema $+ \tema.ini colores title
  }
  if $readini caescript\temas\ $+ %tema $+ \tema.ini colores inactive {
   .color Inactive $readini caescript\temas\ $+ %tema $+ \tema.ini colores inactive
  }
  ;
  ; #### Una vez cargadas las variables, continuar con el Script
  ;
  .inicio
 }
 else {
  .echo -s 2[N] %version.caescript no puede correr en mIRC $version
  .echo -s 2[N] Por favor actualiza a la última version.
  .echo -s 2[N] La puedes bajar de http://www.mirc.co.uk/
  .descargar
 }
}
on *:UNLOAD:{
 .descargar 
 if $script(ircoptools.mrc) {
  .unload.ircoptools
  .halt
 }
 .halt
}
ctcp *:version:*:.ctcpreply $nick VERSION %version.caescript http://www.caespock.org/ircsoftware/ | halt
ctcp *:clientinfo:*:.ctcpreply $nick CLIENTINFO %version.caescript http://www.caespock.org/ircsoftware/ | halt
;
alias inicio {
 if %fondo != ninguno {
  background -mt caescript\temas\ $+ %tema $+ \ $+ %fondo
  if $version >= 6.2 {
    background -bt caescript\temas\ $+ %tema $+ \ $+ %fondo
  }
 }
 if %iconos != ninguno {
  background -l caescript\temas\ $+ %tema $+ \ $+ %iconos
 }
 if %botones != ninguno {
  if  %temaversion >= 6.1 {
    background -u caescript\temas\ $+ %tema $+ \ $+ %botones
  }
  else {
    if $version <= 6.03 {
      background -u caescript\temas\ $+ %tema $+ \ $+ %botones
    }
  }
 }
 if %regla != ninguno {
  background -h caescript\temas\ $+ %tema $+ \ $+ %regla
 }
 if %fondostatus != ninguno {
  background -sc caescript\temas\ $+ %tema $+ \ $+ %fondostatus
 }
 ; Asignado botones *CAE*
 ;
 if $version >= 6.2 {
    if $toolbar(mp3) == $null {
      .toolbar -i0n13z1 mp3 "Reproducir MP3" caescript\caescript.icl /mp3
    }
    if $toolbar(caescript) == $null {
      .toolbar -i0n14z1 caescript "Configurar CaeScript" caescript\caescript.icl /configurar
    }
    if $toolbar(ayuda) == $null {
      .toolbar -i0n12z1 ayuda "Ayuda del CaeScript" caescript\caescript.icl /ayuda
    }

 }
 ;
 if %verdatos == 1 {
  .ventanadatos
 }
 ;
 .notify on
 .notify CaeSpock Creador del CaeScript
 .notify NickServ Servicio de Nicks
 .notify ChanServ Servicio de Canales
 .notify MemoServ Servicio de Mensajes
 .load -rs caescript/popups.mrc
 .load -rs caescript/aliases.mrc
 .load -rs caescript/addons/addons.mrc
 .load -rs caescript/addons/calc.mrc
 .load -rs caescript/addons/clonescan.mrc
 .titlebar %version.caescript Configurado para $me
 ;
 ; ### Si no tiene agente cargado, por mas de que la opcion
 ; ### de verlo este activa, desactivar.
 ;
 if $agentver <= 0 { 
  .set %ver.ms.agente 0
 }
 ;
 ; ### Si mirc es inferior a 5.7 no puede mostrar
 ; ### El agente de MS
 ;
 if $version < 5.7 {
  .set %ver.ms.agente 0
 }
 ;
 ; ### Si no hay un agente por defecto, significa 
 ; ### que no esta instalado
 ;
 if $agent(0).char == 0 {
  .set %ver.ms.agente 0
 }
 ;
 ; ### Ahora veamos si reporta un Agente, pero NO tiene 
 ; ### Uno por defecto, buscarlo
 ; ### No queda otra! (Solo si la opcion de ver agente esta activa)
 ;
 if %ver.ms.agente > 0 {
  if ( $agent(0).char == 0 ) && ( $agentver > 0 ) {
   .echo -s  $+ %color.titulo2 $+ [N] Tienes el Ms Agent cargado, pero no un caracter por defecto.
   .echo -s  $+ %color.titulo2 $+ [N] Ando buscando un agente en los drives C:\, D:\, E:\ y F:\
   if $disk(C) {
    if $findfile(c:\,*.acs,0) > 0 {
     .set %agentecargar $findfile(c:\,*.acs,1)
     .set %ver.ms.agente 1
     goto salir
    }
   }
   if $disk(D) {
    if $findfile(d:\,*.acs,0) > 0 {
     .set %agentecargar $findfile(d:\,*.acs,1)
     .set %ver.ms.agente 1
     goto salir
    }
   }
   if $disk(E) {
    if $findfile(e:\,*.acs,0) > 0 {
     .set %agentecargar $findfile(e:\,*.acs,1)
     .set %ver.ms.agente 1
     goto salir
    }
   }
   if $disk(F) {
    if $findfile(f:\,*.acs,0) > 0 {
     .set %agentecargar $findfile(f:\,*.acs,1)
     .set %ver.ms.agente 1
     goto salir
    }
   }
   if $disk(G) {
    if $findfile(g:\,*.acs,0) > 0 {
     .set %agentecargar $findfile(g:\,*.acs,1)
     .set %ver.ms.agente 1
     goto salir
    }
   }
   if $disk(H) {
    if $findfile(h:\,*.acs,0) > 0 {
     .set %agentecargar $findfile(h:\,*.acs,1)
     .set %ver.ms.agente 1
     goto salir
    }
   }
   .echo -s  $+ %color.titulo2 $+ [N] Hmm Los archivos básicos de los Agentes de MS
   .echo -s  $+ %color.titulo2 $+ [N] están instalados, pero no encuentro agentes,
   .echo -s  $+ %color.titulo2 $+ [N] algo esta mal instalado, ni modo.
   .echo -s  $+ %color.titulo2 $+ [N] Si no deseas que el script intente cargar un agente, desabilita
   .echo -s  $+ %color.titulo2 $+ [N] la opción 'Mostrarlo' en /configurar
   :salir
  }
  ;
  .echo -s  $+ %color.titulo2 $+ [N] %version.caescript Cargado
  ;
 }
 ;
 if %ver.ms.agente == 1 {
  .echo -s  $+ %color.titulo2 $+ [N] Ms Agent Presente! 
  .gunload caeagente
  .set %agentecargado 0
  if $version == 5.7 {
   .gload caeagente " $+ %agentecargar $+ "
   .set %agentecargado 1
  }
  else {
   .gload -h caeagente " $+ %agentecargar $+ "
   .set %agentecargado 1
  }
  .gshow caeagente 10 2
  .set %visible.agente 1
  .set %posagentex $calc($window(-1).w - $agent(caeagente).w)
  .gmove caeagente %posagentex 2 10
  .unset %posagentex
  .gtalk caeagente Hola! Bienvenidos a %version.caescript por CaeSpock!
  if %ver.siempre.ms.agente != 1 {
   if $agentstat == 1 {
    .ghide caeagente
    .set %visible.agente 0
   }
  }
 }
 ;
 if %autoaway == 1 {
  .timerveraway 0 60 revisaridle
 }
 ;
 ; ### Ahora veamos que formato de texto se desea
 ; 
 if %formatotexto == 0 { .texton }
 if %formatotexto == 1 { .texto1 }
 if %formatotexto == 2 { .texto2 }
 if %formatotexto == 3 { .texto3 }
 if %formatotexto == 4 { .texto4 }
 if %formatotexto == 5 { .texto5 }
 if %formatotexto == 6 { .texto6 }
 if %formatotexto == 7 { .texto7 }
 if %formatotexto == 8 { .texto8 }
 if %formatotexto == 9 { .texto9 }
 if %formatotexto == 10 { .texto10 }
 if %formatotexto == 11 { .texto11 }
 if %formatotexto == 12 { .texto12 }
 if %formatotexto == 13 { .texto13 }
 if %formatotexto == 14 { .texto14 }
 if %formatotexto == 15 { .texto15 }
 if %formatotexto == 16 { .texto16 }
 if %formatotexto == 17 { .texto17 }
 if %formatotexto == 18 { .texto18 }
 ;
 ; ### Ahora ejecutamos el archivo caescript/autoexec.txt
 ;
 .play -sctcomandos caescript\autoexec.txt
 ;
 ; ### Iniciando LagMeter
 if %lagmeter == 1 {
   .set %zlag.style graph
   .set %zlag.peak 1
   .set %zlag.colour1 %lagbarfrente
   .set %zlag.colour2 %lagbarfondo
   .set %zlag.colour3 %lagbartexto
   .load -rs caescript\addons\zlagbar.mrc
 }
 .echo -s 2[N] %version.caescript cargado exitosamente :)
}

alias advconfig {
  .echo -s  $+ %color.titulo2 $+ [N] Configurando ... %version.caescript
  .echo -s  $+ %color.titulo2 $+ [N] No olvides /reiniciar al terminar de configurar el script.
  .run notepad.exe caescript\variables.ini

}

alias configurar { dialog -m pcontrol pcontrol }
alias conf_pantalla { dialog -m cpantalla cpantalla }
alias conf_general { dialog -m cgeneral cgeneral }
alias conf_agentems { dialog -m cagentems cagentems }
alias conf_bans { dialog -m cbans cbans }
alias conf_away { dialog -m caway caway }
alias conf_mp3 { dialog -m confmp3 confmp3 }
alias conf_videos { dialog -m confvideos confvideos }
alias conf_texto { dialog -m conftextos conftextos }
alias conf_addons { dialog -m caddons caddons }
alias conf_grabar {
  .echo -s 2[N] Grabando nueva configuración . . .
  .write -c " $+ %mircdir $+ caescript\variables.ini $+ " ;
  .write " $+ %mircdir $+ caescript\variables.ini $+ " ; #### Archivo de Configuración de Variables
  .write " $+ %mircdir $+ caescript\variables.ini $+ " ; #### del %version.caescript
  .write " $+ %mircdir $+ caescript\variables.ini $+ " ; #### Generado el: $date $time
  .write " $+ %mircdir $+ caescript\variables.ini $+ " ; #### Por: $address($me,5)
  .write " $+ %mircdir $+ caescript\variables.ini $+ " ;
  .write " $+ %mircdir $+ caescript\variables.ini $+ " [Tema]
  .write " $+ %mircdir $+ caescript\variables.ini $+ " ; Que tema se ve a usar para el CaeScript ?
  .write " $+ %mircdir $+ caescript\variables.ini $+ " nombre= $+ %tema
  .write " $+ %mircdir $+ caescript\variables.ini $+ " ;
  .write " $+ %mircdir $+ caescript\variables.ini $+ " [Pantallas]
  .write " $+ %mircdir $+ caescript\variables.ini $+ " ; [0/1] Desea ver la pantalla de datos del CaeScript
  .write " $+ %mircdir $+ caescript\variables.ini $+ " verdatos= $+ %verdatos
  .write " $+ %mircdir $+ caescript\variables.ini $+ " ; [0/1] Activar LagMeter
  .write " $+ %mircdir $+ caescript\variables.ini $+ " lagmeter= $+ %lagmeter
  .write " $+ %mircdir $+ caescript\variables.ini $+ " ; [0/1] Activar MP3 Player
  .write " $+ %mircdir $+ caescript\variables.ini $+ " mp3player= $+ %mp3player
  .write " $+ %mircdir $+ caescript\variables.ini $+ " ;
  .write " $+ %mircdir $+ caescript\variables.ini $+ " [General]
  .write " $+ %mircdir $+ caescript\variables.ini $+ " ; [0/1] Usar sonido?
  .write " $+ %mircdir $+ caescript\variables.ini $+ " sonido= $+ %usarsonido
  .write " $+ %mircdir $+ caescript\variables.ini $+ " ; Descargar CaeScript al salir? Solo es util si tiene el CaeScript
  .write " $+ %mircdir $+ caescript\variables.ini $+ " ; habilitado para cargarse cada vez desde el perform
  .write " $+ %mircdir $+ caescript\variables.ini $+ " descargar= $+ %descargar
  .write " $+ %mircdir $+ caescript\variables.ini $+ " ;
  .write " $+ %mircdir $+ caescript\variables.ini $+ " [Agente]
  .write " $+ %mircdir $+ caescript\variables.ini $+ " ; [0/1] Aca uno define si quiere ver al agente de MS (si es 
  .write " $+ %mircdir $+ caescript\variables.ini $+ " ; posible desplegarlo en tu sistema operativo).
  .write " $+ %mircdir $+ caescript\variables.ini $+ " Mostrarlo= $+ %ver.ms.agente
  .write " $+ %mircdir $+ caescript\variables.ini $+ " ; [0/1] Aca uno define si quiere ver al agente de MS siempre o
  .write " $+ %mircdir $+ caescript\variables.ini $+ " ; solo en algunas ocaciones
  .write " $+ %mircdir $+ caescript\variables.ini $+ " VerSiempre= $+ %ver.siempre.ms.agente
  .write " $+ %mircdir $+ caescript\variables.ini $+ " ; [default/nombre] Aca uno define que agente de ms quiere ver
  .write " $+ %mircdir $+ caescript\variables.ini $+ " ; en caso de que tenga mas de uno.
  .write " $+ %mircdir $+ caescript\variables.ini $+ " ; ej: merlin.acs ej: default
  .write " $+ %mircdir $+ caescript\variables.ini $+ " Agente= $+ %agentecargar
  .write " $+ %mircdir $+ caescript\variables.ini $+ " ;
  .write " $+ %mircdir $+ caescript\variables.ini $+ " [BanProteccion]
  .write " $+ %mircdir $+ caescript\variables.ini $+ " ; Cantidad en minutos del ban automatico
  .write " $+ %mircdir $+ caescript\variables.ini $+ " MinutosBanAutomatico= $+ %minsbanproteccion
  .write " $+ %mircdir $+ caescript\variables.ini $+ " ;
  .write " $+ %mircdir $+ caescript\variables.ini $+ " [BanTemporal]
  .write " $+ %mircdir $+ caescript\variables.ini $+ " ; Cantidad en minutos del ban temporal
  .write " $+ %mircdir $+ caescript\variables.ini $+ " MinutosBantemporal= $+ %minstiempobantemporal
  .write " $+ %mircdir $+ caescript\variables.ini $+ " ;
  .write " $+ %mircdir $+ caescript\variables.ini $+ " [Bans]
  .write " $+ %mircdir $+ caescript\variables.ini $+ " ; Tipo de Bans por defecto a usar por el CaeScript
  .write " $+ %mircdir $+ caescript\variables.ini $+ " ; 0: *!user@host
  .write " $+ %mircdir $+ caescript\variables.ini $+ " ; 1: *!*user@host
  .write " $+ %mircdir $+ caescript\variables.ini $+ " ; 2: *!*@host
  .write " $+ %mircdir $+ caescript\variables.ini $+ " ; 3: *!*user@*.host
  .write " $+ %mircdir $+ caescript\variables.ini $+ " ; 4: *!*@*.host
  .write " $+ %mircdir $+ caescript\variables.ini $+ " ; 5: nick!user@host
  .write " $+ %mircdir $+ caescript\variables.ini $+ " ; 6: nick!*user@host
  .write " $+ %mircdir $+ caescript\variables.ini $+ " ; 7: nick!*@host
  .write " $+ %mircdir $+ caescript\variables.ini $+ " ; 8: nick!*user@*.host
  .write " $+ %mircdir $+ caescript\variables.ini $+ " ; 9: nick!*@*.host
  .write " $+ %mircdir $+ caescript\variables.ini $+ " tipo= $+ %tipoban
  .write " $+ %mircdir $+ caescript\variables.ini $+ " ;
  .write " $+ %mircdir $+ caescript\variables.ini $+ " [Away]
  .write " $+ %mircdir $+ caescript\variables.ini $+ " ; [0/1] Mostrar con un mensaje a los canales que uno esta away?
  .write " $+ %mircdir $+ caescript\variables.ini $+ " MostrarAway= $+ %mostraraway
  .write " $+ %mircdir $+ caescript\variables.ini $+ " ;
  .write " $+ %mircdir $+ caescript\variables.ini $+ " [AutoAway]
  .write " $+ %mircdir $+ caescript\variables.ini $+ " ; [0/1] Usar auto away?
  .write " $+ %mircdir $+ caescript\variables.ini $+ " Usar= $+ %autoaway 
  .write " $+ %mircdir $+ caescript\variables.ini $+ " ; Minutos de idle antes de activar el autoaway
  .write " $+ %mircdir $+ caescript\variables.ini $+ " Minutos= $+ %minsautoaway
  .write " $+ %mircdir $+ caescript\variables.ini $+ " ;
  .write " $+ %mircdir $+ caescript\variables.ini $+ " [MP3]
  .write " $+ %mircdir $+ caescript\variables.ini $+ " ; [0/1] Mandar como sonido a los canales el mp3 cuando se lo escuche?
  .write " $+ %mircdir $+ caescript\variables.ini $+ " Sonido= $+ %mp3sonido
  .write " $+ %mircdir $+ caescript\variables.ini $+ " ; [0/1] Cuando se escuche un MP3, mostrar esto a todos los canales con un mensaje?
  .write " $+ %mircdir $+ caescript\variables.ini $+ " Mostrar= $+ %mp3mostrar
  .write " $+ %mircdir $+ caescript\variables.ini $+ " ; [Texto] Texto para mostrar cuando se escucha el sonido:
  .write " $+ %mircdir $+ caescript\variables.ini $+ " Texto= $+ %mp3texto
  .write " $+ %mircdir $+ caescript\variables.ini $+ " ; [PATH] Ruta donde buscar los archivos MP3, si esta vacio buscar en el 
  .write " $+ %mircdir $+ caescript\variables.ini $+ " ; path de sonidos. Ejemplo: f:\mp3\
  .write " $+ %mircdir $+ caescript\variables.ini $+ " Path= $+ %pathmp3
  .write " $+ %mircdir $+ caescript\variables.ini $+ " ;
  .write " $+ %mircdir $+ caescript\variables.ini $+ " [Video]
  .write " $+ %mircdir $+ caescript\variables.ini $+ " ; [0/1] Cuando se este viendo un video, mostrar esto a todos los canales con un mensaje?
  .write " $+ %mircdir $+ caescript\variables.ini $+ " Mostrar= $+ %videomostrar
  .write " $+ %mircdir $+ caescript\variables.ini $+ " ; [Texto] Texto para mostrar cuando se este observando el video:
  .write " $+ %mircdir $+ caescript\variables.ini $+ " Texto= $+ %videotexto 
  .write " $+ %mircdir $+ caescript\variables.ini $+ " ; [PATH] Ruta donde buscar los archivos de Video, si esta vacio buscar en el
  .write " $+ %mircdir $+ caescript\variables.ini $+ " ; path de sonidos. Ejemplo: g:\videos\
  .write " $+ %mircdir $+ caescript\variables.ini $+ " Path= $+ %pathvideo
  .write " $+ %mircdir $+ caescript\variables.ini $+ " ;
  .write " $+ %mircdir $+ caescript\variables.ini $+ " [Texto]
  .write " $+ %mircdir $+ caescript\variables.ini $+ " ; [0,1..18] Tipos de formato de texto. 0=normal
  .write " $+ %mircdir $+ caescript\variables.ini $+ " Formato= $+ %formatotexto
  .write " $+ %mircdir $+ caescript\variables.ini $+ " ;
  .write " $+ %mircdir $+ caescript\variables.ini $+ " ; [0/1] Usar colores en el onotice?
  .write " $+ %mircdir $+ caescript\variables.ini $+ " Ops= $+ %opscolor
  .write " $+ %mircdir $+ caescript\variables.ini $+ " ; [0/1] Usar colores en el notice a ops y voiced?
  .write " $+ %mircdir $+ caescript\variables.ini $+ " opsv= $+ %opsvcolor
  .write " $+ %mircdir $+ caescript\variables.ini $+ " ; [0/1] Ver notify tambien en la ventana actual?
  .write " $+ %mircdir $+ caescript\variables.ini $+ " notify= $+ %doblenotify
  .write " $+ %mircdir $+ caescript\variables.ini $+ " ;
  .write " $+ %mircdir $+ caescript\variables.ini $+ " [AddOns]
  .write " $+ %mircdir $+ caescript\variables.ini $+ " ; [0/1] Cargar AddOn de DALnet
  .write " $+ %mircdir $+ caescript\variables.ini $+ " dalnet= $+ %addondalnet
  .write " $+ %mircdir $+ caescript\variables.ini $+ " ; [0/1] Cargar AddOn de EggDrop/Bouncer
  .write " $+ %mircdir $+ caescript\variables.ini $+ " eggdrop= $+ %addoneggdrop
  .write " $+ %mircdir $+ caescript\variables.ini $+ " ;
  .write " $+ %mircdir $+ caescript\variables.ini $+ " ; #### Luego de modificar este archivo, lo debes grabar y luego reiniciar el CaeScript.
  .write " $+ %mircdir $+ caescript\variables.ini $+ " ; #### En mIRC, solo teclea:
  .write " $+ %mircdir $+ caescript\variables.ini $+ " ; #### /load -rs caescript.mrc
  .write " $+ %mircdir $+ caescript\variables.ini $+ " ; #### para recargar CaeScript con las nuevas opciones
  if $input(Algunos datos de la nueva configuración tomaran efecto solo al reiniciar el Script. $+ $crlf $+ Deseas reiniciar %version.caescript $+ ?,yi,Configuración del CaeScript) {
   .dialog -x pcontrol
   .reiniciar
  }
}
dialog pcontrol {
 title "Panel de Control CaeScript"
 icon caescript\caescript.icl, 12
 size -1 -1 165 80
 option dbu
 icon 4, 11 2 16 16, caescript\caescript.icl, 1
 text "Pantalla", 5, 3 20 33 8, center
 icon 6, 44 2 16 16, caescript\caescript.icl, 2
 text "General", 7, 40 20 24 8, center
 icon 8, 75 2 16 16, caescript\caescript.icl, 3
 text "Agente MS", 9, 67 20 33 8, center
 icon 10, 108 2 16 16, caescript\caescript.icl, 4
 text "Bans", 11, 104 20 24 8, center
 icon 12, 140 2 16 16, caescript\caescript.icl, 5
 text "Away", 13, 135 20 24 8, center

 icon 20, 10 33 16 16, caescript\caescript.icl, 6
 text "MP3", 21, 6 54 23 8, center
 icon 22, 42 33 16 16, caescript\caescript.icl, 7
 text "Videos", 23, 37 54 29 9, center
 icon 26, 75 33 16 16, caescript\caescript.icl, 8
 text "Texto", 27, 72 54 21 8, center
 icon 28, 107 33 16 16, caescript\caescript.icl, 9
 text "Add-Ons", 29, 99 54 32 8, center
 icon 30, 140 33 16 16, caescript\caescript.icl, 10
 text "Grabar", 31, 135 54 24 8, center

 edit "", 1, 1 70 165 10, read
 button "Button", 3, 57 85 37 12, hide ok
}
on *:dialog:pcontrol:init:0: {
 did -ra $dname 1 Pasa el mouse sobre cada ícono para ver su descripción
 did -f $dname 30
}
on *:dialog:pcontrol:*:*: {
 if ($devent == mouse) { if ($did == 4) { did -ra $dname 1 Configurción de Pantalla y Tema } }
 if ($devent == mouse) { if ($did == 6) { did -ra $dname 1 Configuraciones Generales } }
 if ($devent == mouse) { if ($did == 8) { did -ra $dname 1 Configuración del Agente de Microsoft } }
 if ($devent == mouse) { if ($did == 10) { did -ra $dname 1 Configuración de Bans } }
 if ($devent == mouse) { if ($did == 12) { did -ra $dname 1 Configuración del Sistema de Away } }
 if ($devent == mouse) { if ($did == 20) { did -ra $dname 1 Configuración de MP3 } }
 if ($devent == mouse) { if ($did == 22) { did -ra $dname 1 Configuración de Video } }
 if ($devent == mouse) { if ($did == 26) { did -ra $dname 1 Configuración de texto } }
 if ($devent == mouse) { if ($did == 28) { did -ra $dname 1 Configuración de Add-Ons } }
 if ($devent == mouse) { if ($did == 30) { did -ra $dname 1 Grabar la configuración a disco } }

 if ($did == 4) && ($devent == sclick) { conf_pantalla }
 if ($did == 6) && ($devent == sclick) { conf_general }
 if ($did == 8) && ($devent == sclick) { conf_agentems }
 if ($did == 10) && ($devent == sclick) { conf_bans }
 if ($did == 12) && ($devent == sclick) { conf_away }
 if ($did == 20) && ($devent == sclick) { conf_mp3 }
 if ($did == 22) && ($devent == sclick) { conf_videos }
 if ($did == 26) && ($devent == sclick) { conf_texto }
 if ($did == 28) && ($devent == sclick) { conf_addons }
 if ($did == 30) && ($devent == sclick) { conf_grabar }
}
dialog cpantalla {
 title Configuración de pantalla
 icon caescript\caescript.icl, 12
 size -1 -1 130 75
 option dbu
 icon 4, 50 2 16 16, caescript\caescript.icl, 11
 text "Tema a usar", 5, 40 20 33 8, center
 check "Ver pantalla de datos del CaeScript", 6, 10 33 102 10, flat
 check "Activar Lagmeter", 7, 10 45 102 10, flat
 check "Activar MP3 Player", 8, 10 57 102 10, flat
}
on *:dialog:cpantalla:init:0: {
 did -f $dname 5
 if %verdatos == $null { .set %verdatos $readini caescript\default.ini pantallas verdatos }
 if %lagmeter == $null { .set %lagmeter $readini caescript\default.ini pantallas lagmeter }
 if %mp3player == $null { .set %mp3player $readini caescript\default.ini pantallas mp3player }
 if (%verdatos == 1) { did -c $dname 6 }
 if (%lagmeter == 1) { did -c $dname 7 }
 if (%mp3player == 1) { did -c $dname 8 }
}
on *:dialog:cpantalla:*:*: {
 if ($did == 4) && ($devent == sclick) { conf_tema }
 if ($did == 6) && ($devent == sclick) { .set %verdatos $did(6).state }
 if ($did == 7) && ($devent == sclick) { .set %lagmeter $did(7).state }
 if ($did == 8) && ($devent == sclick) { .set %mp3player $did(8).state }
}
dialog cgeneral {
 title Configuraciones generales
 icon caescript\caescript.icl, 12
 size -1 -1 130 50
 option dbu
 check "Usar Sonido en el sistema?", 1, 10 10 102 10, flat checked
 check "Descargar CaeScript al salir?", 2, 10 25 102 10, flat
}
on *:dialog:cgeneral:init:0: {
 did -f $dname 1
 if %usarsonido == $null { .set %usarsonido $readini caescript\default.ini general sonido }
 if %descargar == $null { .set %descargar $readini caescript\default.ini general redes }
 if (%usarsonido == 1) { did -c $dname 1 }
 if (%descargar == 1) { did -c $dname 2 }
}
on *:dialog:cgeneral:*:*: {
 if ($did == 1) && ($devent == sclick) { .set %usarsonido $did(1).state }
 if ($did == 2) && ($devent == sclick) { .set %descargar $did(2).state }
}
dialog cagentems {
 title Configuración del Agente Microsoft
 icon caescript\caescript.icl, 12
 size -1 -1 130 60
 option dbu
 check "Mostrar siempre el Agente de Microsoft", 1, 10 2 102 10, flat
 check "Ver siempre al Agente", 2, 10 15 102 10, flat
 icon 3, 50 30 16 16, caescript\caescript.icl, 3
 text "Nombre del Agente a usar", 4, 40 46 40 16, center
}
on *:dialog:cagentems:init:0: {
 did -f $dname 3
 if %ver.ms.agente == $null { .set %ver.ms.agente $readini caescript\default.ini Agente mostrarlo }
 if %ver.siempre.ms.agente == $null { .set %ver.siempre.ms.agente $readini caescript\default.ini Agente versiempre }
 if (%ver.ms.agente == 1) { 
  did -c $dname 1
 }
 else {
  did -b $dname 2
  did -b $dname 3
  did -b $dname 4
 }
 if (%ver.siempre.ms.agente == 1) { did -c $dname 2 }
}
on *:dialog:cagentems:*:*: {
 if ($did == 1) && ($devent == sclick) { 
  .set %ver.ms.agente $did(1).state
  if ($did(1).state == 1) {
   did -e cagentems 2
   did -e cagentems 3
   did -e cagentems 4
  }
  else {
   .set %ver.siempre.ms.agente 0
   .set %agentecargar default
   did -u cagentems 2
   did -b cagentems 2
   did -b cagentems 3
   did -b cagentems 4
  }
 }
 if ($did == 2) && ($devent == sclick) { .set %ver.siempre.ms.agente $did(2).state }
 if ($did == 3) && ($devent == sclick) { conf_agenteusar }
}
dialog cbans {
 title Configuración de Bans
 icon caescript\caescript.icl, 12
 size -1 -1 110 60
 option dbu
 
 text "Duración del Ban automático(mins):", 1, 5 10 85 8, right
 edit "", 2, 90 9 10 10
 
 text "Duración del Ban temporal(mins):", 3, 5 20 85 8, right
 edit "", 4, 90 19 10 10
 
 text "Tipo de Ban a usar por defecto:", 5, 5 30 85 8, right
 list 6, 15 40 70 20, vsbar
}
on *:dialog:cbans:init:0: {
 did -f $dname 3
 if %minsbanproteccion == $null { .set %minsbanproteccion $readini caescript\default.ini banproteccion minutosbanautomatico }
 if %minstiempobantemporal == $null { .set %minstiempobantemporal $readini caescript\default.ini bantemporal minutosbantemporal }
 if %tipoban == $null { .set %tipoban $readini caescript\default.ini bans tipo }
 did -r $dname 2
 did -a $dname 2 %minsbanproteccion
 did -r $dname 4
 did -a $dname 4 %minstiempobantemporal
 did -a $dname 6 0: *!user@host
 did -a $dname 6 1: *!*user@host
 did -a $dname 6 2: *!*@host
 did -a $dname 6 3: *!*user@*.host
 did -a $dname 6 4: *!*@*.host
 did -a $dname 6 5: nick!user@host
 did -a $dname 6 6: nick!*user@host
 did -a $dname 6 7: nick!*@host
 did -a $dname 6 8: nick!*user@*.host
 did -a $dname 6 9: nick!*@*.host
 if (%tipoban == 0) { did -c $dname 6 1 }
 if (%tipoban == 1) { did -c $dname 6 2 }
 if (%tipoban == 2) { did -c $dname 6 3 }
 if (%tipoban == 3) { did -c $dname 6 4 }
 if (%tipoban == 4) { did -c $dname 6 5 }
 if (%tipoban == 5) { did -c $dname 6 6 }
 if (%tipoban == 6) { did -c $dname 6 7 }
 if (%tipoban == 7) { did -c $dname 6 8 }
 if (%tipoban == 8) { did -c $dname 6 9 }
 if (%tipoban == 9) { did -c $dname 6 10 }
}
on *:dialog:cbans:*:*: {
 if ($did == 2) && ($devent == edit) { .set %minsbanproteccion $did(2).text }
 if ($did == 4) && ($devent == edit) { .set %minstiempobantemporal $did(4).text }
 if ($did == 6) && ($devent == sclick) { 
  if ($did(6).sel == 1) { .set %tipoban 0 }
  if ($did(6).sel == 2) { .set %tipoban 1 }
  if ($did(6).sel == 3) { .set %tipoban 2 }
  if ($did(6).sel == 4) { .set %tipoban 3 }
  if ($did(6).sel == 5) { .set %tipoban 4 }
  if ($did(6).sel == 6) { .set %tipoban 5 }
  if ($did(6).sel == 7) { .set %tipoban 6 }
  if ($did(6).sel == 8) { .set %tipoban 7 }
  if ($did(6).sel == 9) { .set %tipoban 8 }
  if ($did(6).sel == 10) { .set %tipoban 9 }
 }
 if %minsbanproteccion == $null { 
  .set %minsbanproteccion $readini caescript\default.ini banproteccion minutosbanautomatico
  did -r $dname 2
  did -a $dname 2 %minsbanproteccion
 }
 if %minstiempobantemporal == $null { 
  .set %minstiempobantemporal $readini caescript\default.ini bantemporal minutosbantemporal
  did -r $dname 4
  did -a $dname 4 %minstiempobantemporal
 }
 .set %banproteccion $calc(%minsbanproteccion * 60)
 .set %tiempobantemporal $calc(%minstiempobantemporal * 60)
}
dialog caway {
 title Configuración del sistema de Away
 icon caescript\caescript.icl, 12
 size -1 -1 170 40
 option dbu
 
 check "Mostrar con un mensaje a los canales que uno esta away?", 1, 10 2 150 10, flat
 check "Usar auto away?", 2, 10 12 102 10, flat
 text "Minutos de idle antes de activar auto away:", 3, 9 22 114 8, right
 edit "", 4, 125 20 10 11
}
on *:dialog:caway:init:0: {
 did -f $dname 1
 if %mostraraway == $null { .set %mostraraway $readini caescript\default.ini away mostraraway }
 if (%mostraraway == 1) {
  did -c $dname 1
 }
 if %autoaway == $null { .set %minsautoaway $readini caescript\default.ini autoaway minutos }
 if %autoaway == 0 {
  .set %minsautoaway $readini caescript\default.ini autoaway minutos
 }
 else {
  if %minsautoaway == $null { .set %minsautoaway $readini caescript\default.ini autoaway minutos }
 }
 if (%autoaway == 1) {
  did -c $dname 2
 }
 else {
  .set %minsautoaway $readini caescript\default.ini autoaway minutos
  did -b $dname 3 
  did -b $dname 4
 }
 did -r $dname 4
 did -a $dname 4 %minsautoaway
}
on *:dialog:caway:*:*: {
 if ($did == 1) && ($devent == sclick) { .set %mostraraway $did(1).state }
 if ($did == 2) && ($devent == sclick) {
  .set %autoaway $did(2).state
  if ($did(2).state == 1) {
   did -e caway 3
   did -e caway 4
  }
  else {
   .set %minsautoaway $readini caescript\default.ini autoaway minutos
   did -b caway 3
   did -b caway 4
   did -r caway 4
   did -a caway 4 %minsautoaway
  }
 }
 if ($did == 4) && ($devent == edit) { 
  .set %minsautoaway $did(4).text
  if %minsautoaway == 0 {
   .set %minsautoaway $readini caescript\default.ini autoaway minutos
   did -r caway 4
   did -a caway 4 %minsautoaway
  }
 }
 if %autoaway == 1 {
  .timerveraway 0 60 revisaridle
 }
}
dialog confmp3 {
 title Configuración de MP3
 icon caescript\caescript.icl, 12
 size -1 -1 210 65
 option dbu
 check "Mandar como sonido a los canales el mp3 cuando se lo escuche?", 1, 5 2 170 10, flat
 check "Cuando se escuche un MP3 mostrar esto a todos los canales con un mensaje?", 2, 5 12 200 10, flat
 text "Texto para mostrar cuando se escucha el sonido:", 3, 5 22 190 8, left
 edit "", 4, 5 30 190 10
 link "Presione acá para configurar el Path de MP3", 5, 5 42 170 68
}
on *:dialog:confmp3:init:0: {
 did -f $dname 1
 if %mp3sonido == $null { .set %mp3sonido $readini caescript\default.ini mp3 sonido }
 if %mp3mostrar == $null { .set %mp3mostrar $readini caescript\default.ini mp3 mostrar }
 if %mp3texto == $null { .set %mp3texto $readini caescript\default.ini mp3 texto }
 if %mp3mostrar == 0 { .set %mp3texto $readini caescript\default.ini mp3 texto }
 if %pathmp3 == $null { .set %pathmp3 $readini caescript\default.ini mp3 path }
 
 if (%mp3sonido == 1) { 
  did -c $dname 1
 }

 if (%mp3mostrar == 1) { 
  did -c $dname 2
 }
 else {
  did -b $dname 3
  did -b $dname 4
 }
 did -r confmp3 4
 did -a confmp3 4 %mp3texto
}
on *:dialog:confmp3:*:*: {
 if %mp3texto == $null { .set %mp3texto $readini caescript\default.ini mp3 texto }
 if ($did == 1) && ($devent == sclick) { .set %mp3sonido $did(1).state }
 if ($did == 2) && ($devent == sclick) { 
  .set %mp3mostrar $did(2).state
  if ($did(2).state == 1) {
   did -e confmp3 3
   did -e confmp3 4
  }
  else {
   .set %mp3texto $readini caescript\default.ini mp3 texto
   did -b confmp3 3
   did -b confmp3 4
   did -r confmp3 4
   did -a confmp3 4 %mp3texto
  }
 }
 if ($did == 4) && ($devent == edit) { .set %mp3texto $did(4).text }
 if ($did == 5) && ($devent == sclick) { .conf_pathmp3 }
 if %mp3texto == $null { .set %mp3texto $readini caescript\default.ini mp3 texto | did -r confmp3 4 | did -a confmp3 4 %mp3texto }
}
dialog confvideos {
 title Configuración de Videos
 icon caescript\caescript.icl, 12
 size -1 -1 220 45
 option dbu
 check "Cuando se este viendo un video, mostrar esto a todos los canales con un mensaje?", 1, 5 2 210 10, flat
 text "Texto para mostrar cuando se este observando el video:", 2, 5 12 190 8, left
 edit "", 3, 5 22 190 10
 link "Presione acá para configurar el Path de video", 4, 5 32 170 68
}
on *:dialog:confvideos:init:0: {
 did -f $dname 1
 if %videomostrar == $null { .set %videomostrar $readini caescript\default.ini video mostrar }
 if %videotexto == $null { .set %videotexto $readini caescript\default.ini video texto }
 if %pathvideo == $null { .set %pathvideo $readini caescript\default.ini video path }
 if (%videomostrar == 1) { 
  did -c $dname 1
 }
 else {
  did -b $dname 2
  did -b $dname 3
 }
 did -r confvideos 3
 did -a confvideos 3 %videotexto
}
on *:dialog:confvideos:*:*: {
 if %videotexto == $null { .set %videotexto $readini caescript\default.ini video texto }
 if ($did == 1) && ($devent == sclick) { 
  .set %videomostrar $did(1).state
  if ($did(1).state == 1) {
   did -e confvideos 2
   did -e confvideos 3
  }
  else {
   .set %videotexto $readini caescript\default.ini video texto
   did -b confvideos 2
   did -b confvideos 3
   did -r confvideos 3
   did -a confvideos 3 %videotexto
  }
 }
 if ($did == 3) && ($devent == edit) { .set %videotexto $did(3).text }
 if ($did == 4) && ($devent == sclick) { .conf_pathvideo }
 if %videotexto == $null { .set %videotexto $readini caescript\default.ini video texto | did -r confvideos 3 | did -a confvideos 3 %videotexto }
}
dialog conftextos {
 title Configuración de textos
 icon caescript\caescript.icl, 12
 size -1 -1 120 65
 option dbu
 text "Tipos de formato de texto:", 1, 5 2 190 8, left
 list 2, 5 12 60 20, vsbar
 check "Usar colores en el onotice?", 3, 5 32 210 10, flat
 check "Usar colores en el notice a ops y voiced?", 4, 5 42 210 10, flat
 check "Ver notify tambien en la ventana actual?", 5, 5 52 210 10, flat
}
on *:dialog:conftextos:init:0: {
 if %formatotexto == $null { .set %formatotexto $readini caescript\default.ini texto formato }
 if %opscolor == $null { .set %opscolor $readini caescript\default.ini texto ops }
 if %opsvcolor == $null { .set %opsvcolor $readini caescript\default.ini texto opsv }
 if %doblenotify == $null { .set %doblenotify $readini caescript\default.ini texto notify }
 did -f $dname 1
 did -a $dname 2 Normal
 did -a $dname 2 Formato 1
 did -a $dname 2 Formato 2
 did -a $dname 2 Formato 3
 did -a $dname 2 Formato 4
 did -a $dname 2 Formato 5
 did -a $dname 2 Formato 6
 did -a $dname 2 Formato 7
 did -a $dname 2 Formato 8
 did -a $dname 2 Formato 9
 did -a $dname 2 Formato 10
 did -a $dname 2 Formato 11
 did -a $dname 2 Formato 12
 did -a $dname 2 Formato 13
 did -a $dname 2 Formato 14
 did -a $dname 2 Formato 15
 did -a $dname 2 Formato 16
 did -a $dname 2 Formato 17
 did -a $dname 2 Formato 18
 if (%formatotexto == 0) { did -c $dname 2 1 }
 if (%formatotexto == 1) { did -c $dname 2 2 }
 if (%formatotexto == 2) { did -c $dname 2 3 }
 if (%formatotexto == 3) { did -c $dname 2 4 }
 if (%formatotexto == 4) { did -c $dname 2 5 }
 if (%formatotexto == 5) { did -c $dname 2 6 }
 if (%formatotexto == 6) { did -c $dname 2 7 }
 if (%formatotexto == 7) { did -c $dname 2 8 }
 if (%formatotexto == 8) { did -c $dname 2 9 }
 if (%formatotexto == 9) { did -c $dname 2 10 }
 if (%formatotexto == 10) { did -c $dname 2 11 }
 if (%formatotexto == 11) { did -c $dname 2 12 }
 if (%formatotexto == 12) { did -c $dname 2 13 }
 if (%formatotexto == 13) { did -c $dname 2 14 }
 if (%formatotexto == 14) { did -c $dname 2 15 }
 if (%formatotexto == 15) { did -c $dname 2 16 }
 if (%formatotexto == 16) { did -c $dname 2 17 }
 if (%formatotexto == 17) { did -c $dname 2 18 }
 if (%formatotexto == 18) { did -c $dname 2 19 }
 if (%opscolor == 1) { did -c $dname 3 }
 if (%opsvcolor == 1) { did -c $dname 4 }
 if (%doblenotify == 1) { did -c $dname 5 }
}
on *:dialog:conftextos:*:*: {
 if ($did == 2) && ($devent == sclick) { 
  if ($did(2).sel == 1) { .set %formatotexto 0 }
  if ($did(2).sel == 2) { .set %formatotexto 1 }
  if ($did(2).sel == 3) { .set %formatotexto 2 }
  if ($did(2).sel == 4) { .set %formatotexto 3 }
  if ($did(2).sel == 5) { .set %formatotexto 4 }
  if ($did(2).sel == 6) { .set %formatotexto 5 }
  if ($did(2).sel == 7) { .set %formatotexto 6 }
  if ($did(2).sel == 8) { .set %formatotexto 7 }
  if ($did(2).sel == 9) { .set %formatotexto 8 }
  if ($did(2).sel == 10) { .set %formatotexto 9 }
  if ($did(2).sel == 11) { .set %formatotexto 10 }
  if ($did(2).sel == 12) { .set %formatotexto 11 }
  if ($did(2).sel == 13) { .set %formatotexto 12 }
  if ($did(2).sel == 14) { .set %formatotexto 13 }
  if ($did(2).sel == 15) { .set %formatotexto 14 }
  if ($did(2).sel == 16) { .set %formatotexto 15 }
  if ($did(2).sel == 17) { .set %formatotexto 16 }
  if ($did(2).sel == 18) { .set %formatotexto 17 }
  if ($did(2).sel == 19) { .set %formatotexto 18 }
 }
 if %formatotexto == 0 { .texton }
 if %formatotexto == 1 { .texto1 }
 if %formatotexto == 2 { .texto2 }
 if %formatotexto == 3 { .texto3 }
 if %formatotexto == 4 { .texto4 }
 if %formatotexto == 5 { .texto5 }
 if %formatotexto == 6 { .texto6 }
 if %formatotexto == 7 { .texto7 }
 if %formatotexto == 8 { .texto8 }
 if %formatotexto == 9 { .texto9 }
 if %formatotexto == 10 { .texto10 }
 if %formatotexto == 11 { .texto11 }
 if %formatotexto == 12 { .texto12 }
 if %formatotexto == 13 { .texto13 }
 if %formatotexto == 14 { .texto14 }
 if %formatotexto == 15 { .texto15 }
 if ($did == 3) && ($devent == sclick) { .set %opscolor $did(3).state }
 if ($did == 4) && ($devent == sclick) { .set %opsvcolor $did(4).state }
 if ($did == 5) && ($devent == sclick) { .set %doblenotify $did(5).state }
 if %opscolor == 1 {
  .set %formatoops %formatoops.color
 }
 else {
  .set %formatoops %formatoops.bnegro
 }
 if %opsvcolor == 1 {
  .set %formatoopsv %formatoopsv.color
 }
 else {
  .set %formatoopsv %formatoopsv.bnegro
 }
}
dialog caddons {
 title Configuración de AddOns
 icon caescript\caescript.icl, 12
 size -1 -1 130 50
 option dbu
 check "Cargar Add-On de DALnet?", 1, 10 10 102 10, flat
 check "Cargar Add-On de EggDrop/Bouncer?", 2, 10 25 102 10, flat
}
on *:dialog:caddons:init:0: {
 did -f $dname 1
 if %addondalnet == $null { .set %addondalnet $readini caescript\default.ini addons dalnet }
 if %addoneggdrop == $null { .set %addoneggdrop $readini caescript\default.ini addons eggdrop }
 if %addonbouncer == $null { .set %addonezbounbce $readini caescript\default.ini addons eggdrop }
 if (%addondalnet == 1) { did -c $dname 1 }
 if (%addoneggdrop == 1) { did -c $dname 2 }
}
on *:dialog:caddons:*:*: {
 if ($did == 1) && ($devent == sclick) { .set %addondalnet $did(1).state }
 if ($did == 2) && ($devent == sclick) { .set %addoneggdrop $did(2).state }
}
 
alias conf_tema {
  if %tema == $null { .set %tema $readini caescript\default.ini tema nombre }
  .set %tema $input(Introduzca el nombre del tema a ser usado,ei,Configuración CaeScript,%tema)
  if %tema == $null { echo -s El tema no esta seteado, configurando el tema por defecto. | .set %tema $readini caescript\default.ini tema nombre }
  if ($isdir(" $+ $mircdir $+ caescript\temas\ $+ %tema $+ ") == $false) { 
   .set %tema $readini caescript\default.ini tema nombre
   .echo -s 2[N] Se reseteo el tema al valor por defecto, pues el directorio que especifico no existe.
  }
}
alias conf_agenteusar {
  if %agentecargar == $null { .set %agentecargar $readini caescript\default.ini Agente Agente }
  .set %agentecargar $input(Introduzca el nombre del agente de Microsoft a usar,ei,Configuración CaeScript,%agentecargar)
  if %agentecargar == $null { .set %agentecargar $readini caescript\default.ini Agente Agente }
}
alias conf_pathmp3 {
  if %pathmp3 == $null { .set %pathmp3 $readini caescript\default.ini mp3 path }
  .set %pathmp3 $sdir(" $+ %pathmp3 $+ ", Seleccione path de MP3);
  if %pathmp3 == $null { echo -s El path no esta seteado, configurando el path por defecto. | .set %pathmp3 $readini caescript\default.ini mp3 path }
}
alias conf_pathvideo {
  if %pathvideo == $null { .set %pathvideo $readini caescript\default.ini video path }
  .set %pathvideo $sdir(" $+ %pathvideo $+ ", Seleccione path de Videos);
  if %pathvideo == $null { echo -s El path no esta seteado, configurando el path por defecto. | .set %pathvideo $readini caescript\default.ini video path }
}

alias ventanadatos {
  window -knz @CaeScript 10 10 caescript\caescript.ico
  titlebar @CaeScript en $network
  if %fondostatus != ninguno {
   background -t @CaeScript caescript\temas\ $+ %tema $+ \ $+ %fondostatus
  }
  echo @CaeScript .
  echo @CaeScript .  $+ %color.titulo1 $+ ----------------------------------------------
  echo @CaeScript .  $+ %color.titulo2 $+ %version.caescript $+ 
  echo @CaeScript .  $+ %color.titulo1 $+ ----------------------------------------------
  echo @CaeScript . por CaeSpock ( $+ %color.titulo2 $+ http://www.caespock.org/ircsoftware/)
  echo @CaeScript .  $+ %color.titulo1 $+ ----------------------------------------------
  echo @CaeScript . Usando el tema %tema $+ .
  echo @CaeScript . Corriendo bajo: $+ %color.titulo2 $+ mIRC $version ( $+ $bits bits)
  echo @CaeScript . Se ha conectado a  $+ %color.titulo2 $+ $server ( $+ $serverip $+ ) - $port de la red  $+ %color.titulo2 $+ $network $+ .
  echo @CaeScript . Tu dirección IP es  $+ %color.titulo2 $+ ' $+ $ip $+ '.
  echo @CaeScript . Ruta desde donde se ejecuta: ' $+ %color.titulo2 $+ $mircdir $+ '.
  echo @CaeScript . Ruta de DCC:' $+ %color.titulo2 $+ $getdir $+ ' Logs:' $+ %color.titulo2 $+ $logdir $+ '.
  echo @CaeScript . Ruta de Sonidos:  $+ %color.titulo2 $+ Wave: ' $+ $sound(wav) $+ ' - Midi: ' $+ $sound(mid) $+ '
  echo @CaeScript .                   $+ %color.titulo2 $+ MP3: ' $+ $sound(mp3) - %pathmp3 $+ '.
  echo @CaeScript . Ruta de Videos:' $+ %color.titulo2 $+ %pathvideo $+ '.
  echo @CaeScript . Tiempo de Bans:  $+ %color.titulo2 $+ Temporal: %minstiempobantemporal $+ m - Automatico: %minsbanproteccion $+ m
  echo @CaeScript . Modulos:  $+ %color.titulo2 $+ LagMeter: %lagmeter - MP3 Player: %mp3player - AgenteMS: %ver.ms.agente $+ / $+ %agentecargar $+ / $+ %ver.siempre.ms.agente - Formato Texto: %formatotexto $+ 
  echo @CaeScript .           $+ %color.titulo2 $+ Sonido: %usarsonido - AutoAway: %autoaway $+ / $+ %minsautoaway $+ m/ $+ %mostraraway - Color Ops/Voice: %opscolor $+ / $+ %opsvcolor $+ 
  echo @CaeScript .  $+ %color.titulo1 $+ ----------------------------------------------
  echo @CaeScript . Para cerrar este programa, teclee: ' $+ %color.titulo2 $+ /cerrar $+ ' en la ventana de comandos.
  echo @CaeScript . Para configurar este programa, teclee: ' $+ %color.titulo2 $+ /configurar $+ ' en la ventana de comandos.
  echo @CaeScript . Bienvenido(a) y disfruta del programa.
  echo @CaeScript .  $+ %color.titulo1 $+ ----------------------------------------------
  echo @CaeScript .
  echo @CaeScript .
}
 
alias cerrar {
 if %ver.ms.agente == 1 {
  .set %agentecargado 0
  .gunload caeagente
 }
 if %verdatos == 1 {
  .echo @CaeScript . Cerrando 2mIRC y 1,1-6,4-8,8-9,9-0,1 %version.caescript 6,4-8,8-9,9-1,1-
 }
 .raw quit : $+ $read( $mircdir $+ caescript\frases.txt ) - $+ %version.caescript $+ -
 .exit
}
 
alias reiniciar {
 .echo -s  $+ %color.titulo2 $+ [N] Al terminar de descargar %version.caescript, ejecute la linea
 .echo -s  $+ %color.titulo2 $+ [N] /load -rs caescript.mrc
 .echo -s  $+ %color.titulo2 $+ [N] en su ventana de texto, para reiniciar el Script.
 .editbox -a /load -rs caescript.mrc
 .descargar
}

alias quit { 
 if $1- { 
  if %ver.ms.agente == 1 {
   if $agentver > 0 { 
    if %visible.agente == 1 {
     .ghide caeagente
    }
   }
  }
  .raw quit : $+ $1- 2*6*2 %version.caescript 6*2*
 }
 else {
  .raw quit : $+ $read( $mircdir $+ caescript\frases.txt ) 2*6*2 %version.caescript 6*2*
  if %ver.ms.agente == 1 {
   .set %agentecargado 0
   .gunload caeagente
  }
 }
 haltdef
}
 
alias descargar {
 if %caescript.activo == 1 {
  .echo -s  $+ %color.titulo2 $+ [N]  $+ %color.titulo1 $+ -----------------------------------------
  .echo -s  $+ %color.titulo2 $+ [N] Descargando %version.caescript ....
  .echo -s  $+ %color.titulo2 $+ [N]  $+ %color.titulo1 $+ -----------------------------------------
  if %ver.ms.agente == 1 {
   .set %agentecargado 0
   .gunload caeagente
  }
  .texton
  .color Background %color.background
  .color Action text %color.action
  .color CTCP text %color.ctcp
  .color Highlight text %color.highlight
  .color Info Text %color.info
  .color Info2 Text %color.info2
  .color Invite Text %color.invite
  .color Join text %color.join
  .color Kick text %color.kick
  .color Mode text %color.mode
  .color Nick text %color.nick
  .color Normal text %color.normal
  .color Notice text %color.notice
  .color Notify text %color.notify
  .color Other text %color.other
  .color Own text %color.own
  .color Part text %color.part
  .color Quit text %color.quit
  .color Topic text %color.topic
  .color Wallops text %color.wallops
  .color Whois text %color.whois
  .color listbox text %color.listboxtext
  .color listbox %color.listbox
  .color gray text %color.gray
  .color title text %color.title
  .color editbox text %color.editboxtext
  .color inactive %color.inactive
  .color editbox %color.editbox
  .titlebar
  if $version >= 6.2 {
    if $toolbar(ayuda) != $null {
      .toolbar -d ayuda
    }
    if $toolbar(mp3) != $null {
      .toolbar -d mp3
    }
    if $toolbar(caescript) != $null {
      .toolbar -d caescript
    }
  }
  .background -srx
  .background -hx
  .background -lx
  if $version >= 6.2 {
    .background -bx
  }
  .background -mx
  .background -ux
  .timerveraway off
  if %verdatos == 1 {
   .background -x @CaeScript
   .close -@ @CaeScript
  }
  if %lagmeter == 1 {
   .unset %zlag.style
   .unset %zlag.peak
   .unset %zlag.colour1
   .unset %zlag.colour2
   .unset %zlag.colour3
   .unset %zlag.font
   .unset %zlag.font.size
   .unset %zlag.delay
   .unset %zlag.method
   .unset %zlag.pos
   .unset %zlag.temp.crc
   .unset %zlag.old
   .unset %zlag.current
   .unset %zlag.highest
   .unset %zlag.lowest
   .unload -rs caescript\addons\zlagbar.mrc
  }
  .notify -r CaeSpock
  .notify -r NickServ
  .notify -r ChanServ
  .notify -r MemoServ
  .unload -rs caescript/addons/clonescan.mrc
  .unload -rs caescript/addons/calc.mrc
  .unload -rs caescript/addons/addons.mrc
  .unset %q
  .unset %c
  .unset %clones.nicks
  .unset %destinocomun
  .unset %color.background
  .unset %color.action
  .unset %color.ctcp
  .unset %color.highlight
  .unset %color.info
  .unset %color.info2
  .unset %color.invite
  .unset %color.join
  .unset %color.kick
  .unset %color.mode
  .unset %color.nick
  .unset %color.normal
  .unset %color.notice
  .unset %color.notify
  .unset %color.other
  .unset %color.own
  .unset %color.part
  .unset %color.quit
  .unset %color.topic
  .unset %color.wallops
  .unset %color.whois
  .unset %color.listbox
  .unset %color.listboxtext
  .unset %color.gray
  .unset %color.title
  .unset %color.editbox
  .unset %color.editboxtext
  .unset %color.inactive
  .unset %color.titulo1
  .unset %color.titulo2
  .unset %filtroascii
  .unset %filtropoemas
  .unset %filtrofrases
  .unset %filtropiropos
  .unset %filtrochistes
  .unset %formato15color2
  .unset %formato15color1
  .unset %formatoops.color
  .unset %formatoops.bnegro
  .unset %formatoops
  .unset %formatoopsv.color
  .unset %formatoopsv.bnegro
  .unset %formatoopsv
  .unset %opscolor
  .unset %opsvcolor
  .unset %formatotexto
  .unset %doblenotify
  .unset %addondalnet
  .unset %addoneggdrop
  .unset %addonbouncer
  .unset %videomostrar
  .unset %pathvideo
  .unset %videotexto
  .unset %pathmp3
  .unset %mp3mostrar
  .unset %mp3texto
  .unset %mp3sonido
  .unset %mostraraway
  .unset %agentecargar
  .unset %ver.siempre.ms.agente
  .unset %agentecargado
  .unset %autoaway
  .unset %minsautoaway
  .unset %segsautoaway
  .unset %temaversion
  .unset %lagbarfrente
  .unset %lagbarfondo
  .unset %lagbartexto
  .unset %regla
  .unset %iconos
  .unset %botones
  .unset %fondostatus
  .unset %fondo
  .unset %mp3player
  .unset %lagmeter
  .unset %verdatos
  .unset %descargar
  .unset %usarsonido
  if (%usarsonido != 1) {
    .vol -vu2
  }
  .unset %tema
  .unset %visible.agente
  .unset %ver.ms.agente
  .unset %minsbanproteccion
  .unset %banproteccion
  .unset %tipoban
  .unset %tiempobantemporal
  .unset %minstiempobantemporal
  .unset %canalinvitacion
  .unset %valorpregunta
  .unset %canaltopic
  .unset %caescript.activo
  .echo -s 2[N] %version.caescript descargado exitosamente .. Adios 
  .unset %version.caescript
  .unload -rs caescript/popups.mrc
  .unload -rs caescript/aliases.mrc
  .unload -rs caescript.mrc
 }
 else {
  .unset %version.caescript
  .unload -rs caescript.mrc
 }
}
