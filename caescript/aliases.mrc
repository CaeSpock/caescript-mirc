;
; #### ALIAS ####
;
; #### No modificar a partir de aca ####
;
alias ? /help $1- 
alias achan {
  if ($1) { /amsg $1- }
  else { echo -a  $+ %color.titulo1 $+ [ $+ %color.titulo2 $+ Uso: $+ %color.titulo1 $+ ] /ACHAN <mensaje> }
}
alias ascii {
  /play $sfile( %filtroascii , Escoge un ASCII, Despliegalo)
}
alias afectadosban {
  var %afectadoban = 1
  :L1
  if $ialchan($1,$2,%afectadoban).nick == $null { return %afectadoporban }
  var %afectadoporban = %afectadoporban $ialchan($1,$2,%afectadoban).nick ,
  inc %afectadoban 1 | goto L1
}
alias afuera { 
  if ($1) { away $1- }
  else { away $input(Mensaje de Away,ei,CaeScript) }
}
alias afuera2 {
  .enable #paginador
  .echo -s  $+ %color.titulo2 $+ [N] Paginador Activado - /ctcp $me page <mensaje>
  .timerveraway off
  if (%mostraraway == 1) { 
    if ($active != Status Window) && ($chan(0) != 0) {
      /amsg Estoy Away - Paginador Encendido, para Paginarme:12 /ctcp $me Page <mensaje> 
    }
  }
  .echo -s  $+ %color.titulo2 $+ [N] Has sido marcado como ausente (away).
  ; if %lagmeter == 1 {
  ;   .unload -rs caescript/addons/lag.mrc
  ; }
  .haltdef
}
alias adecir ahablar $1-
alias amostrar aver $1- 
alias autoexec { echo -a  $+ %color.titulo2 $+ [N] Editando archivo de comandos autoejecutables | .run notepad.exe caescript\autoexec.txt }
alias addons { echo -a  $+ %color.titulo2 $+ [N] Editando archivo de carga/descarga de addons | .run notepad.exe caescript\addons\addons.txt }
alias awayp afuera $1-
alias vuelta {
  .echo -s  $+ %color.titulo2 $+ [N] Paginador Desactivado
  .disable #paginador
  if (%autoaway == 1) {
    .timerveraway 0 60 revisaridle
  }
  if (%mostraraway == 1) {
    if ($active != Status Window) && ($chan(0) != 0) {
      /amsg Estoy de vuelta! 
    }
  }
  .echo -s  $+ %color.titulo2 $+ [N] Ya no estás marcado como ausente (away).
  ; ### Iniciando LagMeter
  ; if %lagmeter == 1 {
  ;  .set %lag 1
  ;  .set %lag.style 0
  ;  .set %lag.colors 1
  ;  .set %lag.color1 16711680
  ;  .set %lag.color2 255
  ;  .set %lag.t 5
  ;  .set %lag.bright 10
  ;  .set %lag.type 1
  ;  .load -rs caescript\addons\lag.mrc
  ;}
  .haltdef
}
alias adios { 
  /say 1,1x11,1<8*11>1,1x11,1<8*11>0,1 Chau a todos!!1x11,1<8*11>1,1x11,1<8*11> 
}
alias apreton {
  if ($1) { /me le da un apretón a {{{{{{ $1- }}}}}} por ser tan especial! }
  else { /me le da un apretón a {{{{{{ $input(Ingresa el nick o el #canal,ei,CaeScript) }}}}}} por ser tan especial! }
}
alias ayuda {
  /run $mircdir $+ caescript\caescript.chm
}
alias b /ban # $1- %tipoban
alias ba /ban -u $+ %tiempobantemporal # $1- %tipoban | /kick # $1- Mensajes de Away no permitidos en el canal | .raw notice $1- :Has sido baneado(a) de # por enviar mensajes de away de manera automática. Has sido baneado del canal para evitar que sigas enviando esos mensajes.
alias bant /ban -u $+ $calc($1 *60) # $2 %tipoban
alias beer {
  if ($1) { /me invites a fine cold Bolivian beer to $1- }
  else { /me invites a fine cold Bolivian beer to $input(Ingresa el nick o el #canal,ei,CaeScript) }
}
alias beso {
  if ($1) { /me le da a $1- un rico, delicioso, explosivo, caliente, humedo, acaramelado, rompe corazones, fantastico e inolvidable...beso en la boca :) }
  else { /me le da a $input(Ingresa el nick o el #canal,ei,CaeScript) un rico, delicioso, explosivo, caliente, humedo, acaramelado, rompe corazones, fantastico e inolvidable...beso en la boca :) }
}
alias bf /ban # $1- %tipoban | .kick # $1- Flood no permitido en el canal | .raw notice $1- :Has sido baneado(a) de # por hacer flood
alias bft /ban -u $+ %tiempobantemporal # $1- %tipoban | .kick # $1- Ban Temporal de $calc( %tiempobantemporal /60) Minutos - Flood no permitido en el canal | .raw notice $1- :Has sido baneado(a) de # por hacer flood
alias bg /ban # $1- %tipoban | .kick # $1- La proxima vez teclea algo con sentido en el canal # | .raw notice $1- :Has sido baneado(a) de # por teclear cosas sin sentido. Esto lo consideramos flood.
alias bgt /ban -u $+ %tiempobantemporal # $1- %tipoban | .kick # $1- Ban Temporal de $calc( %tiempobantemporal /60) Minutos - La proxima vez teclea algo con sentido en el canal # | .raw notice $1- :Has sido baneado(a) de # por teclear cosas sin sentido. Esto lo consideramos flood.
alias bgay /ban # $1- %tipoban | .kick # $1- Los gays, lesbianas y bisexuales son los primeros en pedir que se los respete, pero a la vez los primeros en no respetarnos al romper la regla de 'No SEXO en este canal'. Por favor Respetennos!!! Aca: NO SEXO!!! | .raw notice $1- :Has sido baneado del canal # por no respetar nuestra regla de 'Aca NO SEXO'. Este es un canal de charla, no una casa de citas y menos un lugar para que busques parejas sexuales. Por favor si van a pedir respeto, tambien ustedes respetennos!
alias bgayt /ban -u $+ %tiempobantemporal # $1- %tipoban | .kick # $1- Ban Temporal de $calc( %tiempobantemporal /60) Minutos - Los gays, lesbianas y bisexuales son los primeros en pedir que se los respete, pero a la vez los primeros en no respetarnos al romper la regla de 'No SEXO en este canal'. Por favor Respetennos!!! Aca: NO SEXO!!! | .raw notice $1- :Has sido baneado del canal # por no respetar nuestra regla de 'Aca NO SEXO'. Este es un canal de charla, no una casa de citas y menos un lugar para que busques parejas sexuales. Por favor si van a pedir respeto, tambien ustedes respetennos!
alias bguest /mode # +b guest*!*@* | .kick # $1- Ponte un nick, teclea: /nick TUNICK | .raw notice $1- :Hola, has sido baneado(a) de # por usar un nick GUEST* Por favor piensa en un nick original, y teclea: /nick TUNICK para cambiar de nick. Una vez que ya no estas con el nick GUEST podrás entrar
alias bi /ban # $1- %tipoban | .kick # $1- Invitaciones NO permitidas en este canal | .raw notice $1- :Has sido baneado(a) de # por hacer invitaciones, mismas que no son permitidas en este canal
alias bk .ban # $1 %tipoban | .kick # $1 $2-
alias bl /ban # $1- %tipoban | .kick # $1- En este canal solo se permite hablar en español | .raw notice $1- :# es un canal de solo español Gracias. # is a spanish only channel Thanks.
alias blt /ban -u $+ %tiempobantemporal # $1- %tipoban | .kick # $1- Ban Temporal de $calc( %tiempobantemporal /60) Minutos - # is a spanish only channel Thanks. | .raw notice $1- :# es un canal de solo español Gracias. # is a spanish only channel Thanks.
alias bm /ban # $1- %tipoban | .kick # $1- Mayusculas NO permitidas en este canal | .raw notice $1- :Has sido baneado(a) de # por el uso excesivo de mayusculas. Las mayúsculas significan gritar. En este canal NO se se permite gente gritando
alias bmt /ban -u $+ %tiempobantemporal # $1- %tipoban | .kick # $1- Ban Temporal de $calc( %tiempobantemporal /60) Minutos - Mayusculas NO permitidas en el canal | .raw notice $1- :Has sido baneado(a) de # por el uso excesivo de mayusculas. Las mayúsculas significan gritar. En este canal NO se se permite gente gritando
alias bn /ban # $1- %tipoban | .kick # $1- Nick Ofensivo NO permitido en este canal | .raw notice $1- :Has sido baneado(a) de # por usar un nick ofensivo. Cambia de nick y podrás ingresar al canal
alias bnt /ban -u $+ %tiempobantemporal # $1- %tipoban | .kick # $1- Ban Temporal de $calc( %tiempobantemporal /60) Minutos - Nick Ofensivo NO permitido en este canal | .raw notice $1- :Has sido baneado(a) de # por usar un nick ofensivo. Cambia de nick y podrás ingresar al canal
alias bol { say Bienvenidos al canal 12,1 #4,1BO8,1LI9,1VIA . Estan en su casa. }
alias bolivia { say 4,4 $1-   | say 1,8 $1-15,15  | say 3,3 $1-  15,15  | say 0,0 15,15 $1-  15,15 }
alias bp /ban # $1- %tipoban | /kick # $1- Publicidad de páginas no permitida en el canal | .raw notice $1- :Has sido baneado(a) de # por enviar publicidad de páginas web automáticamente. Si usas mIRC teclea /remote off o si usas pIRCh teclea /set events off para desactivar esto
alias bpt /ban -u $+ %tiempobantemporal # $1- %tipoban | /kick # $1- Ban Temporal de $calc( %tiempobantemporal /60) Minutos - Publicidad de páginas no permitida en el canal | .raw notice $1- :Has sido baneado(a) de # por enviar publicidad de páginas web automáticamente. Si usas mIRC teclea /remote off o si usas pIRCh teclea /set events off para desactivar esto
alias br /ban # $1- %tipoban | /kick # $1- No repitas, todos leemos a la primera. | .raw notice $1- :Has sido baneado(a) de # debido a que repetiste. Recuerda que todos leen a la primera. No repitas.
alias brt /ban -u $+ %tiempobantemporal # $1- %tipoban | /kick # $1- Ban Temporal de $calc( %tiempobantemporal /60) Minutos - No repitas, todos leemos a la primera. | .raw notice $1- :Has sido baneado(a) de # debido a que repetiste. Recuerda que todos leen a la primera. No repitas.
alias bs /ban # $1- %tipoban | /kick # $1- Mensajes automáticos de scripts no permitidos en este canal | .raw notice $1- :Has sido baneado(a) de # debido a que tu script envía mensajes NO solicitados de manera automática. Si usas mIRC teclea /remote off o si usas pIRCh teclea /set events off para desactivar esto
alias bst /ban -u $+ %tiempobantemporal # $1- %tipoban | /kick # $1- Ban Temporal de $calc( %tiempobantemporal /60) Minutos - Mensajes automáticos de scripts no permitidos en este canal | .raw notice $1- :Has sido baneado(a) de # debido a que tu script envía mensajes NO solicitados de manera automática. Si usas mIRC teclea /remote off o si usas pIRCh teclea /set events off para desactivar esto
alias bt /ban # $1- %tipoban | .kick # $1- Usuario infectado con virus o programa trojano | .raw notice $1- :Has sido baneado(a) de # . Estas infectado(a) con algun tipo de virus de irc o programa trojano y lo estas enviando a todos. Borra tu mIRC y baja una copia nueva.
alias btt /ban -u $+ %tiempobantemporal # $1- %tipoban | .kick # $1- Ban Temporal de $calc( %tiempobantemporal /60) Minutos - Usuario infectado con virus o programa trojano | .raw notice $1- :Has sido baneado(a) de # . Estas infectado(a) con algun tipo de virus de irc o programa trojano y lo estas enviando a todos. Borra tu mIRC y baja una copia nueva.
alias btmp /ban -u $+ $calc($1 *60) # $2 %tipoban | /kick # $2 $3-
alias buscaclones clonescan
alias bx /ban # $1- %tipoban | .kick # $1- Nick o charla con contenido sexual. Esto no es permitido en este canal. | .raw notice $1- :Has sido baneado(a) de # por usar un nick o iniciar una charla con contenido sexual.
alias bxt /ban -u $+ %tiempobantemporal # $1- %tipoban | .kick # $1- Ban Temporal de $calc( %tiempobantemporal /60) Minutos - Nick o charla con contenido sexual. Esto no es permitido en este canal. | .raw notice $1- :Has sido baneado(a) de # por usar un nick o iniciar una charla con contenido sexual.
alias bx2 /ban # $1- %tipoban | .kick # $1- Disculpa a nosotros no nos interesa tu preferencia sexual, nos interesa que respetes las reglas de este canal. Aca NO SEXO. | .raw notice $1- :Has sido baneado(a) de # por hacer comentarios de tipo sexual. En este canal las charlas de sexo de cualquier tipo no son permitidas.
alias bx2t /ban -u $+ %tiempobantemporal # $1- %tipoban | .kick # $1- Ban Temporal de $calc( %tiempobantemporal /60) Minutos - Disculpa a nosotros no nos interesa tu preferencia sexual, nos interesa que respetes las reglas de este canal. Aca NO SEXO. | .raw notice $1- :Has sido baneado(a) de # por hacer comentarios de tipo sexual. En este canal las charlas de sexo de cualquier tipo no son permitidas.

alias c {
  if (%usarsonido == 1) {
    .splay $mircdir $+ caescript\temas\ $+ %tema $+ \ $+ $readini caescript\temas\ $+ %tema $+ \tema.ini sonidos beeper | /say 12Estadísticas de # $+ : 5Ops: 14 $+ $opnick($chan,0) 5Voices: 14 $+ $vnick($chan,0) 5Non-Op/Voice: 14 $+ $calc($nick($chan,0) - ($opnick($chan,0) + $vnick($chan,0))) 5Total: 14 $+ $nick($chan,0) 
  }
}
alias colchoneta { 
  if ($1) { /me ofrece una colchoneta a $1- para su caida. }
  else { /me ofrece una colchoneta a $input(Nick,eq,CaeScript) para su caida. }
}
alias count {
  if (%usarsonido == 1) {
    .splay $mircdir $+ caescript\temas\ $+ %tema $+ \ $+ $readini caescript\temas\ $+ %tema $+ \tema.ini sonidos beeper | /echo -a 12Estadísticas de # $+ : | /echo -a 5Ops: 14 $+ $opnick($chan,0) 5Voices: 14 $+ $vnick($chan,0) 5Non-Op/Voice: 14 $+ $calc($nick($chan,0) - ($opnick($chan,0) + $vnick($chan,0))) 5Total: 14 $+ $nick($chan,0) 
  }
}
alias contar /count
alias caja {
  /say 4,4 $1- 
  /say 8,4 $1- 14,14!
  /say 4,4 $1- 14,14!
  /say  14,14 $1- 
}
alias canalescomunes {
  if ($2) { .set %destinocomun $2 }
  else { .set %destinocomun -a }
  if ($comchan($1,0) == 0) { .echo $colour(notice) %destinocomun *** No se tienen canales comunes con $1 }
  else {
    .set %contador 1
    .set %canalescomunes ""
    :sgtecomun
    if (%contador <= $comchan($1,0) )  {
      .set %canalescomunes %canalescomunes $comchan($1,%contador)
      .inc %contador
      .goto sgtecomun
    }
    .echo $colour(notice) %destinocomun *** Canales Comunes con $1: ( $+ $comchan($1,0) $+ ) %canalescomunes
    .unset %contador
    .unset %canalescomunes
    .unset %destinocomun
  }
}
alias cerveza {
  if ($1) { /me invita una fina cerveza Boliviana a $1- }
  else { /me invita una fina cerveza Boliviana a $input(Por favor entra el nick o canal,ei,CaeScript) }
}
alias cinta say 1,1 1,2 1,3 1,4 1,5 1,6 1,7 1,8 1,9 1,10 1,11 1,12 1,13 1,14 1,15 1,17 1,18 8,1 $1- 1,1 1,2 1,3 1,4 1,5 1,6 1,7 1,8 1,9 1,10 1,11 1,12 1,13 1,14 1,15 1,17 1,18 1,19
alias /csopme chanserv op # $me
alias cf2 /run $mircdir $+ caescript\caescript.chm
alias dccsend /dcc send $1-
alias direcciones abook
alias dms .ban # $1- %tipoban | .kick # $1- Tienes el dmsetup.exe o un programa similar cargado en tu sistema, lee el privado que te envie | .raw PRIVMSG $1- :Hay un nuevo virus que esta siendo pasado via DCC; su nombre es dmsetup.exe (o similar). NO LO ACEPTES. NO LO EJECUTES. Para más información ve a http://www.nohack.net/ y ve como debes hacer para deshacerte de este dmsetup.exe. dmsetup.exe afecta solo a maquinas Windows.si lo ejecutas, sobre escribira tu autoexec.bat, config.sys, win.ini y todos tus archivos de IRC.
alias ejecutar {
  .run $sfile($mircdir,Escoge el archivo a ejecutar, Ejecutar)
}

alias hola say Hola 12(4(12( 7§8§7§ 2¤4¤12¤13 $1- 12¤4¤2¤ 7§8§7§ 12)4)12)
alias holas {
  /say 8,1<4,1-8,1>13,1 Hola a todos! 8,1<4,1-8,1>
}
alias holas2 {
  /say  1#2#3#4#5#6#7#8#9#10#11#12#13#14#15#16#5 Hola $snicks !!!! 16#15#14#13#12#11#10#9#8#7#6#5#4#3#2#1#
}
alias hora {
  if (%usarsonido == 1) {
    .splay $mircdir $+ caescript\temas\ $+ %tema $+ \ $+ $readini caescript\temas\ $+ %tema $+ \tema.ini sonidos reloj | say Fecha: $+ %color.titulo2 $date Hora: $+ %color.titulo2 $time 
  }
}
alias id NickServ IDENTIFY $input(Entra tu clave,pi,Identificación con el NickServ)
alias id2 ChanServ IDENTIFY $input(Entra el nombre del canal incluyendo el $chr(35),ei,Identificación con el ChanServ) $input(Entre la clave,pe,Identificación con el ChanServ)
alias informacion {
  .echo -a  $+ %color.titulo1 $+ [ $+ %color.titulo2 $+ CaeScript: $+ %color.titulo1 $+ ] Generando información . . .
  .echo -a  $+ %color.titulo1 $+ [ $+ %color.titulo2 $+ Nota $+ %color.titulo1 $+ ] Este módulo puede causar algun conflicto con su antivirus/firewall o antihack por revisar el registry de windows.
  var %t $_sysinfo(cpu)
  .echo -a  $+ %color.titulo1 $+ [ $+ %color.titulo2 $+ CPU: $+ %color.titulo1 $+ ] $gettok(%t,1,124) $+ $chr(44) $gettok(%t,2,124) - $gettok(%t,3,124) - Cargado: $eval(%,0) $+ $gettok(%t,5,124) - $gettok(%t,4,124) Mhz 
  .echo -a  $+ %color.titulo1 $+ [ $+ %color.titulo2 $+ Tiempo Encendido: $+ %color.titulo1 $+ ] $uptime(system,1)
  var %s $_sysinfo(sound)
  .echo -a  $+ %color.titulo1 $+ [ $+ %color.titulo2 $+ Tarjeta de Sonido: $+ %color.titulo1 $+ ] $gettok(%s,1,124) $+ $chr(44) $gettok(%s,3,124)
  var %v $_sysinfo(videocard)
  .echo -a  $+ %color.titulo1 $+ [ $+ %color.titulo2 $+ Tarjeta de Video: $+ %color.titulo1 $+ ] $gettok(%v,1,124) $+ , $gettok(%v,2,124)
  var %d $_sysinfo(display)
  var %l $_sysinfo(videocard)
  .echo -a  $+ %color.titulo1 $+ [ $+ %color.titulo2 $+ Monitor: $+ %color.titulo1 $+ ] $gettok(%l,1,124) $+ , $gettok(%l,2,124) $+ , $res $gettok(%d,1,124) $+ bit $gettok(%d,2,124) $+ Hz
  var %b $_sysinfo(bios)
  .echo -a  $+ %color.titulo1 $+ [ $+ %color.titulo2 $+ BIOS: $+ %color.titulo1 $+ ] $gettok(%b,1,124) $+ , $gettok(%b,3,124) $+ , $gettok(%b,2,124)
  var %k $_sysinfo(keyboard)
  .echo -a  $+ %color.titulo1 $+ [ $+ %color.titulo2 $+ Teclado: $+ %color.titulo1 $+ ] $gettok(%k,1,124) $+ , $gettok(%k,2,124)
  var %r $totalmem
  var %f $freemem
  .echo -a  $+ %color.titulo1 $+ [ $+ %color.titulo2 $+ Memoria: $+ %color.titulo1 $+ ] Usada: $bytes($calc(%r - %f)).suf Libre: $bytes(%f).suf Total: $bytes(%r).suf % de Uso: $int($calc((%r - %f) / %r * 100)) $+ % 
  .echo -a  $+ %color.titulo1 $+ [ $+ %color.titulo2 $+ Versión: $+ %color.titulo1 $+ ] %version.caescript
}
alias invite {
  if ($2) { .invite $1 $2 }
  else { .invite $1 $chan }
}
alias ircoper {
  if (!$script(ircoptools.mrc)) {
    .load -rs ircoptools/ircoptools.mrc
  }
}
alias k .kick # : $+ $1-
alias kb .ban # $1 %tipoban | .kick # $1 $2-
alias kf .kick # $1 Para el flood!
alias kg .kick # $1 Problemas con el teclado? Teclea algo con sentido por favor. Afuera!
alias kh .kick # $! Sorprendido molestando y acosando? Mal mal! Afuera!
alias ki .kick # $1 Aca no se permiten las invitaciones! Afuera!
alias kl .kick # $1 # is a spanish only channel - # es un canal de solo español!
alias km .kick # $1 Las mayusculas implican gritar. Aca no se permite el uso de mayusculas continuas! Afuera!
alias kp .kick # $1 Aca no se permite la publicidad! Afuera!
alias kr .kick # $1 No repitas, todos leemos a la primera! Gracias!
alias ks .kick # $1 Tu script esta mandando mensajes automáticos! Esto no es permitido en este canal. Afuera!
alias kt .kick # $1 Estas infectado con un virus o un programa Trojano. Borra y reinstala tu mirc! Te sacamos para que no se infecten otros!
alias kx .kick # $1 Nick o charla con contenido sexual. Esto no es permitido en este canal.
alias kx2 .kick # $1 Disculpa a nosotros no nos interesa tu preferencia sexual, nos interesa que respetes las reglas de este canal. Aca NO SEXO. Por favor no vuelvas hasta que comprendas esto.
alias kgay .kick # $1 Los gays, lesbianas y bisexuales son los primeros en pedir que se los respete, pero a la vez los primeros en no respetarnos al romper la regla de 'No SEXO en este canal'. Por favor Respetennos!!! Aca: NO SEXO!!!
alias llegue {
  say 0,0~~~~oOOo/7\\|//
  say 0,0~~~~oOOo/13(12o o13)0000000000003 gente de # ... como estan?
  say 13,0~~~~oOOo~ (_) ~oOOo~~~~3 Ya llegue!
}
alias m {
  if ($1) { /msg $1- }
  else { echo -a  $+ %color.titulo1 $+ [ $+ %color.titulo2 $+ Uso: $+ %color.titulo1 $+ ] /M <mensaje> }
}
alias math {
  if (%usarsonido == 1) {
    .splay $mircdir $+ caescript\temas\ $+ %tema $+ \ $+ $readini caescript\temas\ $+ %tema $+ \tema.ini sonidos beeper | /echo -a 2Cálculo: $1- = $calc( $1- )
  }
}
alias mf { 
  if ($1) { notice $1- por favor no floodees en # :) Gracias. }
  else { notice $input(Nick,eq,CaeScript) por favor no floodees en # :) Gracias. }
}
alias mg { 
  if ($1) { notice $1- por favor escribe algo con sentido en # :) Gracias. }
  else { notice $input(Nick,eq,CaeScript) por favor escribe algo con sentido en # :) Gracias. }
}
alias ml { 
  if ($1) { notice $1- # es un canal de solo español Gracias. # is a spanish only channel Thanks. }
  else { notice $input(Nick,eq,CaeScript) # es un canal de solo español Gracias. # is a spanish only channel Thanks. }
}
alias mm { 
  if ($1) { notice $1- por favor no uses mayúsculas. Las mayúsculas implican gritar, aca no se puede gritar :) Gracias. }
  else { notice $input(Nick,eq,CaeScript) por favor no uses mayúsculas. Las mayúsculas implican gritar, aca no se puede gritar :) Gracias. }
}
alias mr { 
  if ($1) { notice $1- por favor no repitas, todos leemos a la primera :) Gracias. }
  else { notice $input(Nick,eq,CaeScript) por favor no repitas, todos leemos a la primera :) Gracias. }
}

alias mp3 {
  if ($1) {
    .set %mp3 $1-
  }
  else {
    if (%pathmp3) { %cantidad = $msfile(%pathmp3, Escoge un MP3!, Reproducir) }
    else { %cantidad = $msfile($sound(mp3), Escoge un MP3!, Reproducir) }
  }
  %contadormp3 = 1
  while (%contadormp3 <= %cantidad) {
    %mp3 = $msfile(%contadormp3)
    if ( %mp3 ) {
      if (%mp3sonido == 1) { .ctcp $active SOUND %mp3 }
      .set %mp3.cuangrande $calc( $file( %mp3 ).size /1024 / 1024 )
      .set %mp3.posicion.punto $pos( %mp3.cuangrande, . ,1)

      if ( $sound(%mp3).title && $sound(%mp3).artist) {
        .set %mp3.mostrar %mp3texto $+  $+ %color.titulo2 $sound(%mp3).title  $+ %color.titulo1 $+ [ $+ %color.titulo2 $sound(%mp3).artist  $+ %color.titulo1 $+ ]  $+ %color.titulo1 $+ ( $+ %color.titulo2 $left( %mp3.cuangrande , $calc( %mp3.posicion.punto +2)) $+ MB $+ / $+ $sound(%mp3).bitrate $+ kbps $sound(%mp3).mode $+ / $+ $calc($sound(%mp3).sample / 1000) $+ khz  $+ %color.titulo1 $+ )
      }
      else {
        .set %mp3.mostrar %mp3texto $+  $+ %color.titulo2 $nopath( %mp3 )  $+  $+ %color.titulo1 $+ [ $+ %color.titulo2 $left( %mp3.cuangrande , $calc( %mp3.posicion.punto +2)) $+ MB $+ / $+ $sound(%mp3).bitrate $+ kbps $sound(%mp3).mode $+ / $+ $calc($sound(%mp3).sample / 1000) $+ khz  $+ %color.titulo1 $+ ]
      }
      if ( %mp3mostrar == 1 && %cantidad <= 1 ) { 
        if ($active != Status Window) {
          /ame %mp3.mostrar
        }
        ; .echo $color(Action text) -a * $me %mp3.mostrar
      }
      .run %mp3
      /*
      if (%reproductormp3 == 1) { .run %mp3 }
      else {
        if (%cantidad <= 1) {
          .splay %mp3
        }
        else {
          .splay -q %mp3
        }
      }
      */
    }
    .unset %mp3
    .unset %mp3.cuangrande
    .unset %mp3.posicion.punto
    .unset %mp3.mostrar
    .inc %contadormp3
  }
  .unset %contadormp3
  .unset %cantidad
}
alias caemp3 {
  if ($1) {
    .set %mp3 $1-
  }
  else {
    if (%pathmp3) { %mp3 = $sfile(%pathmp3, Escoge un MP3!, Reproducir) }
    else { %mp3 = $sfile($sound(mp3), Escoge un MP3!, Reproducir) }
  }
  if ( %mp3 ) {
    if (%mp3sonido == 1) { .ctcp $active SOUND %mp3 }
    .set %mp3.cuangrande $calc( $file( %mp3 ).size /1024 / 1024 )
    .set %mp3.posicion.punto $pos( %mp3.cuangrande, . ,1)

    if ( $sound(%mp3).title && $sound(%mp3).artist) {
      .set %mp3.mostrar %mp3texto $+  $+ %color.titulo2 $sound(%mp3).title  $+ %color.titulo1 $+ [ $+ %color.titulo2 $sound(%mp3).artist  $+ %color.titulo1 $+ ]  $+ %color.titulo1 $+ ( $+ %color.titulo2 $left( %mp3.cuangrande , $calc( %mp3.posicion.punto +2)) $+ MB $+ / $+ $sound(%mp3).bitrate $+ kbps $sound(%mp3).mode $+ / $+ $calc($sound(%mp3).sample / 1000) $+ khz  $+ %color.titulo1 $+ )
    }
    else {
      .set %mp3.mostrar %mp3texto $+  $+ %color.titulo2 $nopath( %mp3 )  $+  $+ %color.titulo1 $+ [ $+ %color.titulo2 $left( %mp3.cuangrande , $calc( %mp3.posicion.punto +2)) $+ MB $+ / $+ $sound(%mp3).bitrate $+ kbps $sound(%mp3).mode $+ / $+ $calc($sound(%mp3).sample / 1000) $+ khz  $+ %color.titulo1 $+ ]
    }
    if (%mp3mostrar == 1) { 
      if ($active != Status Window) {
        .me %mp3.mostrar
      }
      .echo $color(Action text) -a * $me %mp3.mostrar
    }
    if (%reproductormp3 == 1) { .run %mp3 }
    else { .splay %mp3 }
  }
  .unset %mp3
  .unset %mp3.cuangrande
  .unset %mp3.posicion.punto
  .unset %mp3.mostrar
}

alias msgmp3 {
  if ($1 == off ) { 
    .echo -s  $+ %color.titulo2 $+ [N] Desactivando despliegue de mensajes de mp3
    .set %mp3mostrar 0
  }
  if ($1 == on ) { 
    .echo -s  $+ %color.titulo2 $+ [N] Activando despliegue de mensajes de mp3
    .set %mp3mostrar 1
  }
}
alias msgvideo {
  if ($1 == off ) { 
    .echo -s  $+ %color.titulo2 $+ [N] Desactivando despliegue de mensajes de video
    .set %videomostrar 0
  }
  if ($1 == on ) { 
    .echo -s  $+ %color.titulo2 $+ [N] Activando despliegue de mensajes de video
    .set %videomostrar 1
  }
}
alias mute {
  if ($1 == off ) {
    .echo -s  $+ %color.titulo2 $+ [N] Desactivando sonido del sistema
    .vol -vu2
  }
  if ($1 == on ) { 
    .echo -s  $+ %color.titulo2 $+ [N] (Re) Activando sonido del sistema
    .vol -vu1
  }
}
alias musica {
  if ($1) {
    say 0..(_|3__0,0(_(_.__=)z3 La musica es bonita.....12Como $$1
    say 0..(_3|=0_(_(_.4__0=)z3 Soñada por todo el mundo.....12Como $$1
    say 0..(3_|0__(=(_4|=0__)z3 Cantada por todo el mundo...12Como $$1 
    say 0..3(_)0=_|_(4_|0__)=z3 Ilusionada por todo el mundo...12Como $$1 .....
    say 0..(_)__|=4(_)0__=|z3 esteee.. ejemm..... estoy enamorado
  }
  else { echo -a  $+ %color.titulo1 $+ [ $+ %color.titulo2 $+ Uso: $+ %color.titulo1 $+ ] /musica <nick> }
}
alias nickname .nick $input(Que Nick deseas usar?,eq,CaeScript)
alias nicksborr { .hdel nicksch $1 } 
alias nicksgrab { .hadd nicksch $2 $1 } 
alias nicksbusc { return $iif($hget(nicksch,$1),$ifmatch) } 
alias nosonido .splay stop
alias o {
  /mode # +ooooooo $1-
}
alias onotice { /ops $1-  }
alias ops {
  .raw notice @ $+ # : $+ %formatoops. $1-  | /echo -t # -> Ops # $+ : %formatoops $1-
}
alias ops2 { .raw notice @ $+ # : $+ %formatoops.bnegro $1-  | /echo -t # -> Ops # $+ : %formatoops.bnegro $1- }
alias opsv { 
  .raw notice @+ $+ # : $+ %formatoopsv $1-  | /echo -t # -> Opsv # $+ : %formatoopsv $1-
}
alias opsv2 { .raw notice @+ $+ # : $+ %formatoopsv.bnegro $1-  | /echo # -> Opsv # $+ : %formatoopsv.bnegro $1- }
alias part { 
  if ($active != Status Window ) {
    if ($2) { .quote part # : $+ $2- }
    else { .quote part # : $+ $read( %filtrofrases ) - $+ %version.caescript $+ - }
  }
}
alias p { 
  if ($active != Status Window ) {
    if ($2) { .quote part # : $+ $2- }
    else { .quote part # : $+ $read( %filtrofrases ) - $+ %version.caescript $+ - }
  }
}
alias piropo { 
  if ($1) { /say  $+ %color.titulo1 $+ [ $+ %color.titulo2 $+ $1- $+ : $+ %color.titulo1 $+ ] $read( %filtropiropos ) }
  else { /say  $+ %color.titulo1 $+ [ $+ %color.titulo2 $+ $input(Nick o #Canal,eq,CaeScript) $+ : $+ %color.titulo1 $+ ] $read( %filtropiropos }
}
alias player {
  if ($1) { /run " $+ $1- $+ " }
  else { 
    if (%pathmp3) { /run " $+ $sfile(%pathmp3, Escoge un archivo a reproducir, Reproducir) $+ " }
    else { /run " $+ $sfile($sound(mp3), Escoge un archivo a reproducir, Reproducir) $+ " }
  }
}
alias q /query $1-
alias query /query $1-
alias reglas { say 2Amigos: En el canal # no se permite el flood, el uso de mayúsculas, el repetir, los insultos, las invitaciones o la publicidad de cualquier tipo, hablar en otro idioma, las charlas o nicks con contenido sexual y las peleas o discusiones sobre temas controversariales. Estas reglas son para mantener el buen orden y la armonía en el canal. Recuerda, el canal # es un canal de charla! :) }
alias revisaridle {
  if ($idle >= %segsautoaway) {
    .echo -a  $+ %color.titulo2 $+ [N] Auto Away después de %minsautoaway mins idle
    afuera Auto Away %minsautoaway mins idle  
  }
}
alias rn { say 4[2 $+ $snicks $+ 4]: $1- } 
alias rn2 { say 3[4 $+ $snicks $+ 3]: $1- }
alias rn3 { say 10[5 $+ $snicks $+ 10]: $1-  }
alias rn4 { say 6[2 $+ $snicks $+ 6]: $1- }
alias rosa { 
  if ($1) { /me regala una rosa 4@3}>-3'--,-- a $1- }
  else { /me regala una rosa 4@3}>-3'--,-- a $input(Nick o #Canal,eq,CaeScript) }
}
alias rose { 
  if ($1) { /me gives a rose 4@3}>-3'--,-- to $1- }
  else { /me gives a rose 4@3}>-3'--,-- to $input(Nick or #Channel,eq,CaeScript) }
} 
alias s { /ban # $1 %tipoban | /kick # $1 Script.INI Lee el privado que te enviee para borrar este virus | .raw PRIVMSG $1 :Tienes el virus script.ini cargado en tu sistema. Estas ENVIANDO TODO LO QUE DICES Y TODOS TUS MENSAJES a un canal. Tambien estas enviando el archivo a todos sin darte cuenta. Por favor teclea los siguientes comandos AHORA 4//unload -rs script.ini luego 4//remove script.ini y luego ALT-F4 | .raw PRIVMSG $1 :Para mayor información ve a http://www.nohack.net/ http://www.dalnetayuda.org/ }
alias saltar { 
  if (%usarsonido == 1) {
    .splay $mircdir $+ caescript\temas\ $+ %tema $+ \ $+ $readini caescript\temas\ $+ %tema $+ \tema.ini sonidos salto
  }
  .hop # Vuelvo en Seguida
}
alias saludar { say 4 ææææ 13 Hola $1- Bienvenido(a) al canal 4 ææææ }
alias segundos /echo -a El equivalente a $1 segundos es $duration( $1 )
alias superhola {
  if ($1-) { set %mostrar $1- }
  else { set %mostrar $active }
  say 0_6,6m13,13m0,0m6,6m13,13m0,0m2,2m12,12m2,2m2,2m12,12m0,0m5,5m4,4m0,0m0,0m0,0m3,3m9,9m0,3_3,3m9,9m0,0ice9 %mostrar
  say 0_6,6m13,13m6,6m6,6m13,13m0,0m2,2m12,12m0,0m2,2m12,12m0,0m5,5m4,4m0,0m0,0m0,0m3,3m9,9m0,3¯3,3m9,9m0,0ice7 %mostrar
  say 0_6,6m13,13m0,0m6,6m13,13m0,0m2,2m12,12m2,2m2,2m12,12m0,0m5,5m4,4m5,5m5,5m0,0m3,3m9,9m0,0_3,3m9,9m0,0ice12 %mostrar
  unset %mostrar
}
alias superhola2 {
  if ($1-) { set %mostrar $1- }
  else { set %mostrar $active }
  say 1,1w5,5m4,4m1,1m2,2m12,12m1,1m7,7m8,8m1,1  hola %mostrar  7,7m8,8m1,1m2,2m12,12m1,1m5,5m4,4m1,1w
  say 0,0w5,5m4,4m0,0m2,2m12,12m0,0m7,7m8,8m4,0  hola %mostrar  7,7m8,8m0,0m2,2m12,12m0,0m5,5m4,4m0,0w
  say 1,1w5,5m4,4m1,1m2,2m12,12m1,1m7,7m8,8m1,1  hola %mostrar  7,7m8,8m1,1m2,2m12,12m1,1m5,5m4,4m1,1w
  unset %mostrar
} 
alias sf2 {
  /run $mircdir $+ caescript\caescript.chm
}
alias snd /sound # $1-
alias so { 
  /mode # -ooooooo $1-
}
alias sonido /sound $sfile($sound(wav), Escoge un sonido!, Tocar)
alias sv {
  /mode # -vvvvvvv $1-
}
alias tb /ban -u $+ $calc($1 *60) # $2 %tipoban | /kick # $2 $3-
alias tban /ban -u $+ $calc($1 *60) # $2 %tipoban
alias telnet {
  if  ($2) {
    .run telnet:// $+ $1 $+ : $+ $2
  }
  else {
    .run telnet:// $+ $1
  }
}
alias traceroute /run tracert $1-
alias tracert /run tracert $1-
alias texton {
  .disable #texto18
  .disable #texto17
  .disable #texto16
  .disable #texto15
  .disable #texto14
  .disable #texto13
  .disable #texto12
  .disable #texto11
  .disable #texto10
  .disable #texto9
  .disable #texto8
  .disable #texto7
  .disable #texto6
  .disable #texto5
  .disable #texto4
  .disable #texto3
  .disable #texto2
  .disable #texto1
}
alias texto1 {
  .disable #texto18
  .disable #texto17
  .disable #texto16
  .disable #texto15
  .disable #texto14
  .disable #texto13
  .disable #texto12
  .disable #texto11
  .disable #texto10
  .disable #texto9
  .disable #texto8
  .disable #texto7
  .disable #texto6
  .disable #texto5
  .disable #texto4
  .disable #texto3
  .disable #texto2
  .enable #texto1
}
alias texto2 {
  .disable #texto18
  .disable #texto17
  .disable #texto16
  .disable #texto15
  .disable #texto14
  .disable #texto13
  .disable #texto12
  .disable #texto11
  .disable #texto10
  .disable #texto9
  .disable #texto8
  .disable #texto7
  .disable #texto6
  .disable #texto5
  .disable #texto4
  .disable #texto3
  .disable #texto1
  .enable #texto2
}
alias texto3 {
  .disable #texto18
  .disable #texto17
  .disable #texto16
  .disable #texto15
  .disable #texto14
  .disable #texto13
  .disable #texto12
  .disable #texto11
  .disable #texto10
  .disable #texto9
  .disable #texto8
  .disable #texto7
  .disable #texto6
  .disable #texto5
  .disable #texto4
  .disable #texto2
  .disable #texto1
  .enable #texto3
}
alias texto4 {
  .disable #texto18
  .disable #texto17
  .disable #texto16
  .disable #texto15
  .disable #texto14
  .disable #texto13
  .disable #texto12
  .disable #texto11
  .disable #texto10
  .disable #texto9
  .disable #texto8
  .disable #texto7
  .disable #texto6
  .disable #texto5
  .disable #texto3
  .disable #texto2
  .disable #texto1
  .enable #texto4
}
alias texto5 {
  .disable #texto18
  .disable #texto17
  .disable #texto16
  .disable #texto15
  .disable #texto14
  .disable #texto13
  .disable #texto12
  .disable #texto11
  .disable #texto10
  .disable #texto9
  .disable #texto8
  .disable #texto7
  .disable #texto6
  .disable #texto4
  .disable #texto3
  .disable #texto2
  .disable #texto1
  .enable #texto5
}
alias texto6 {
  .disable #texto18
  .disable #texto17
  .disable #texto16
  .disable #texto15
  .disable #texto14
  .disable #texto13
  .disable #texto12
  .disable #texto11
  .disable #texto10
  .disable #texto9
  .disable #texto8
  .disable #texto7
  .disable #texto5
  .disable #texto4
  .disable #texto3
  .disable #texto2
  .disable #texto1
  .enable #texto6
}
alias texto7 {
  .disable #texto18
  .disable #texto17
  .disable #texto16
  .disable #texto15
  .disable #texto14
  .disable #texto13
  .disable #texto12
  .disable #texto11
  .disable #texto10
  .disable #texto9
  .disable #texto8
  .disable #texto6
  .disable #texto5
  .disable #texto4
  .disable #texto3
  .disable #texto2
  .disable #texto1
  .enable #texto7
}
alias texto8 {
  .disable #texto18
  .disable #texto17
  .disable #texto16
  .disable #texto15
  .disable #texto14
  .disable #texto13
  .disable #texto12
  .disable #texto11
  .disable #texto10
  .disable #texto9
  .disable #texto7
  .disable #texto6
  .disable #texto5
  .disable #texto4
  .disable #texto3
  .disable #texto2
  .disable #texto1
  .enable #texto8
}
alias texto9 {
  .disable #texto18
  .disable #texto17
  .disable #texto16
  .disable #texto15
  .disable #texto14
  .disable #texto13
  .disable #texto12
  .disable #texto11
  .disable #texto10
  .disable #texto8
  .disable #texto7
  .disable #texto6
  .disable #texto5
  .disable #texto4
  .disable #texto3
  .disable #texto2
  .disable #texto1
  .enable #texto9
}
alias texto10 {
  .disable #texto18
  .disable #texto17
  .disable #texto16
  .disable #texto15
  .disable #texto14
  .disable #texto13
  .disable #texto12
  .disable #texto11
  .disable #texto9
  .disable #texto8
  .disable #texto7
  .disable #texto6
  .disable #texto5
  .disable #texto4
  .disable #texto3
  .disable #texto2
  .disable #texto1
  .enable #texto10
}
alias texto11 {
  .disable #texto18
  .disable #texto17
  .disable #texto16
  .disable #texto15
  .disable #texto14
  .disable #texto13
  .disable #texto12
  .disable #texto10
  .disable #texto9
  .disable #texto8
  .disable #texto7
  .disable #texto6
  .disable #texto5
  .disable #texto4
  .disable #texto3
  .disable #texto2
  .disable #texto1
  .enable #texto11
}
alias texto12 {
  .disable #texto18
  .disable #texto17
  .disable #texto16
  .disable #texto15
  .disable #texto14
  .disable #texto13
  .disable #texto11
  .disable #texto10
  .disable #texto9
  .disable #texto8
  .disable #texto7
  .disable #texto6
  .disable #texto5
  .disable #texto4
  .disable #texto3
  .disable #texto2
  .disable #texto1
  .enable #texto12
}
alias texto13 {
  .disable #texto18
  .disable #texto17
  .disable #texto16
  .disable #texto15
  .disable #texto14
  .disable #texto12
  .disable #texto11
  .disable #texto10
  .disable #texto9
  .disable #texto8
  .disable #texto7
  .disable #texto6
  .disable #texto5
  .disable #texto4
  .disable #texto3
  .disable #texto2
  .disable #texto1
  .enable #texto13
}
alias texto14 {
  .disable #texto18
  .disable #texto17
  .disable #texto16
  .disable #texto15
  .disable #texto13
  .disable #texto12
  .disable #texto11
  .disable #texto10
  .disable #texto9
  .disable #texto8
  .disable #texto7
  .disable #texto6
  .disable #texto5
  .disable #texto4
  .disable #texto3
  .disable #texto2
  .disable #texto1
  .enable #texto14
}
alias texto15 {
  .disable #texto18
  .disable #texto17
  .disable #texto16
  .disable #texto14
  .disable #texto13
  .disable #texto12
  .disable #texto11
  .disable #texto10
  .disable #texto9
  .disable #texto8
  .disable #texto7
  .disable #texto6
  .disable #texto5
  .disable #texto4
  .disable #texto3
  .disable #texto2
  .disable #texto1
  .echo -q $input(Se configuraran los dos colores para el formato de texto 15,oi,CaeScript /texto15)
  .set %formato15color1 $input(Introduzca el primer color color $+ $chr(44) $+ fondo,ei,CaeScript /texto15,2 $+ $chr(44) $+ 15)
  .set %formato15color2 $input(Introduzca el segundo color color $+ $chr(44) $+ fondo,ei,CaeScript /texto15,12 $+ $chr(44) $+ 15)
  .enable #texto15
}
alias texto16 {
  .disable #texto18
  .disable #texto17
  .disable #texto15
  .disable #texto14
  .disable #texto12
  .disable #texto11
  .disable #texto10
  .disable #texto9
  .disable #texto8
  .disable #texto7
  .disable #texto6
  .disable #texto5
  .disable #texto4
  .disable #texto3
  .disable #texto2
  .disable #texto1
  .enable #texto16
}
alias texto17 {
  .disable #texto18
  .disable #texto16
  .disable #texto15
  .disable #texto14
  .disable #texto12
  .disable #texto11
  .disable #texto10
  .disable #texto9
  .disable #texto8
  .disable #texto7
  .disable #texto6
  .disable #texto5
  .disable #texto4
  .disable #texto3
  .disable #texto2
  .disable #texto1
  .enable #texto17
}
alias texto18 {
  .disable #texto17
  .disable #texto16
  .disable #texto15
  .disable #texto14
  .disable #texto12
  .disable #texto11
  .disable #texto10
  .disable #texto9
  .disable #texto8
  .disable #texto7
  .disable #texto6
  .disable #texto5
  .disable #texto4
  .disable #texto3
  .disable #texto2
  .disable #texto1
  .enable #texto18
}
alias unirse .join $input(A qué canal deseas entrar?,eq,CaeScript)
alias uptime .say  $+ %color.titulo1 $+ [ $+ %color.titulo2 $+ Uptime: $+ %color.titulo1 $+ ]10 Sistema $+  $+ : $uptime(system,1) 2-10 mIRC $version $+  $+ : $uptime(mirc,1) 
alias dalusers /run http://users.dal.net/
alias v {
  /mode # +vvvvvvv $1-
}
alias ver {
  if (%usarsonido == 1) {
    .splay $mircdir $+ caescript\temas\ $+ %tema $+ \ $+ $readini caescript\temas\ $+ %tema $+ \tema.ini sonidos version
  }
  if ($active != Status Window ) {
    .say Estoy usando  $+ %color.titulo2 $+ mIRC $version $+  mejorado con  $+ %color.titulo2 $+ * $+ %color.titulo1 $+ * $+ %color.titulo2 %version.caescript  $+ %color.titulo1 $+ * $+ %color.titulo2 $+ *. Lo puedes obtener acá:  $+ %color.titulo2 $+ http://www.caespock.org/ircsoftware/ .
  }
}
alias video {
  if (%pathvideo) { %video = $sfile(%pathvideo, Escoge un video!, Reproducir) }
  else { %video = $sfile($sound(mp3), Escoge un video!, Reproducir) }
  if ( %video ) {
    .set %video.cuangrande $calc( $file( %video ).size /1024 / 1024 )
    .set %video.posicion.punto $pos( %video.cuangrande, . ,1)
    if (%videomostrar == 1) { 
      if ($active != Status Window) {
        .me %videotexto $+ 2 $nopath( %video ) 10(2 $left( %video.cuangrande , $calc( %video.posicion.punto +2)) $+ MB 10)
      }
      .echo $color(Action text) -a * $me %videotexto $+ 2 $nopath( %video ) 10(2 $left( %video.cuangrande , $calc( %video.posicion.punto +2)) $+ MB 10)
    }
    .run %video
  }
  .unset %video
  .unset %video.cuangrande
  .unset %video.posicion.punto
}
alias volsistema { .echo -a  $+ %color.titulo2 $+ [N] Volumen actual del sistema: $+ %color.titulo2 $vol(master) $+ /65535 $+ %color.titulo1 $+  $chr(91) $+ $calc( ($vol(master) /65535) *100) $+ % $+ $chr(93)  }
; #alias volumen {
; # if ($1) { /vol -v $1 | /volsistema }
; # else {  /vol -v $input(Entre el volumen entre 0 y 65535,eq,CaeScript) | /volsistema }
; #}
alias volumen { /dialog -m vol vol }
alias virus .ban # $1- %tipoban | .kick # $1- Tienes el virus $input(Nombre del virus,eq,CaeScript) cargado en tu sistema, lee el privado que te envie | .raw PRIVMSG $1- :Hay un nuevo virus que esta siendo pasado via DCC; NO ACEPTES PROGRAMAS DE OTROS. NO LOS EJECUTES. Para más información ve a  http://www.nohack.net/ y ve como debes hacer para deshacerte de este virus.
alias w { .echo -a  $+ %color.titulo2 $+ [N]      Procesando Whois a $1 | .enable #whois.aca | raw -q whois $1- }
alias whois { .echo -a  $+ %color.titulo2 $+ [N]      Procesando Whois a $1 | .enable #whois.aca | raw -q whois $1- }
alias wi { .echo -a  $+ %color.titulo2 $+ [N]      Procesando Whois a $1 | .enable #whois.aca | raw -q whois $1- }
alias whowas { .echo -a  $+ %color.titulo2 $+ [N]      Procesando WhoWas a $1 | .enable #whois.aca | raw -q whowas $1- }
alias wall { /onotice $1- }
;
; #### Eventos ####
;
; #### Whois Ventana Actual ####
;
alias whois2 { .echo -a  $+ %color.titulo2 $+ [N]      Procesando Whois a $1 | .enable #whois.aca | raw -q whois $1- }
#whois.aca off
raw 301:*:{  .echo -a 2 $+ $2 esta away: $3- | halt }
raw 307:*:{ .echo -a 2 $+ $2  $+ $3- | halt }
raw 309:*:{ .echo -a 2 $+ $2  $+ $3- | halt }
raw 310:*:{ .echo -a 2 $+ $2  $+ $3- | halt }
raw 311:*:{ .echo -a 2 $+ $2 es $3 $+ @ $+ $4- | halt }
raw 312:*:{ .echo -a 2 $+ $2 usando $3- | halt }
raw 313:*:{ .echo -a 2 $+ $2  $+ $3- | halt }
raw 314:*:{ .echo -a 2 $+ $2 era $3 $+ @ $+ $4- | halt }
raw 317:*:{ .echo -a 2 $+ $2 está Idle: $duration( $3 ) $+ , Login: $asctime( $4 ) | halt }
raw 318:*:{ .echo -a  $+ %color.titulo2 $+ [N]      Fin del Whois a $2 | .disable #whois.aca | halt }
raw 319:*:{ .echo -a 2 $+ $2 en $3- | halt }
raw 338:*:{ .echo -a 2 $+ $2 es realmente $5- | halt }
raw 369:*:{ .echo -a  $+ %color.titulo2 $+ [N]      Fin del WhoWas a $2 | .disable #whois.aca | halt }
raw 401:*:{ .echo -a 2 $+ $2  $+ $3- | halt }
raw 406:*:{ .echo -a 2 $+ $2  $+ $3- | halt }
raw 275:*:{ .echo -a 2 $+ $2  $+ $3- | halt }
#whois.aca end
;
; #### Ping Automatico ####
;
alias pingautomatico { echo -a  $+ %color.titulo2 $+ [N] Ping Automático Activado | .enable #ping.automatico }
alias pingautomatico2 { echo -a  $+ %color.titulo2 $+ [N] Ping Automático Desactivado | .disable #ping.automatico }
#ping.automatico off
on *:TEXT:!ping*:*:.ping $nick
#ping.automatico end
;
; #### Chiste Automatico ####
;
alias chisteautomatico { echo -a  $+ %color.titulo2 $+ [N] Chiste Automático Activado | .enable #chiste.automatico }
alias chisteautomatico2 { echo -a  $+ %color.titulo2 $+ [N] Chiste Automático Desactivado | .disable #chiste.automatico }
#chiste.automatico off
on *:TEXT:!chiste*:*:.raw notice $nick : $+ %color.titulo1 $+ [ $+ %color.titulo2 $+ Chiste: $+ %color.titulo1 $+ ] $read( %filtrochistes )
#chiste.automatico end
;
; #### Frase Célebre Automática ####
;
alias f2 .configurar
alias fraseautomatica { echo -a  $+ %color.titulo2 $+ [N] Frase Automática Activada | .enable #frase.automática }
alias fraseautomatica2 { echo -a  $+ %color.titulo2 $+ [N] Frase Automática Desactivada | .disable #frase.automática }
#frase.automática off
on *:TEXT:!frase*:*:.raw notice $nick : $+ %color.titulo1 $+ [ $+ %color.titulo2 $+ Frase Célebre: $+ %color.titulo1 $+ ] $read( %filtrofrases )
#frase.automática end
;
; #### KickBan a Insultos ####
;
alias kbinsultos { echo -a  $+ %color.titulo2 $+ [N] KickBan a Insultos Activado | .enable #kb.insultos }
alias kbinsultos2 { echo -a  $+ %color.titulo2 $+ [N] KickBan a Insultos Desactivado | .disable #kb.insultos }
#kb.insultos off
ON *:TEXT:*fuck*:#:ban -u $+ %tiempobantemporal $chan $nick %tipoban | kick $chan $nick Just wait till i tell your mother!
ON *:TEXT:*Shit *:#:ban -u $+ %tiempobantemporal $chan $nick %tipoban | kick $chan $nick So that's what that smell was.. You...
ON *:TEXT:*bitch*:#:ban -u $+ %tiempobantemporal $chan $nick %tipoban | kick $chan $nick Wow I didn't know your dog could type.. Maybe you should consider taking lesson from her
ON *:TEXT:*cunt*:#:ban -u $+ %tiempobantemporal $chan $nick %tipoban | kick $chan $nick Nice vocabulary can you say anything besides a 4 letter word?
ON *:TEXT:*nigger*:#:ban -u $+ %tiempobantemporal $chan $nick %tipoban | kick $chan $nick GET OUT AND STAY OUT
ON *:TEXT:*pussy*:#:ban -u $+ %tiempobantemporal $chan $nick %tipoban | kick $chan $nick The pet store is that way - >
ON *:TEXT:* ass*:#:ban -u $+ %tiempobantemporal $chan $nick %tipoban | kick $chan $nick The pet store is that way - >
ON *:TEXT:*mierda*:#:ban -u $+ %tiempobantemporal $chan $nick %tipoban | kick $chan $nick A eso olia? A ti ...
ON *:TEXT:* puta *:#:ban -u $+ %tiempobantemporal $chan $nick %tipoban | kick $chan $nick No sabia que tu perra sabia escribir. Deberias tomar lecciones de ella.
ON *:TEXT:*cojud*:#:ban -u $+ %tiempobantemporal $chan $nick %tipoban | kick $chan $nick Hablando de ti mismo(a)? Cuida ese lenguaje!
ON *:TEXT:* jode*:#:ban -u $+ %tiempobantemporal $chan $nick %tipoban | kick $chan $nick Afueraaaa!
ON *:TEXT:* joda *:#:ban -u $+ %tiempobantemporal $chan $nick %tipoban | kick $chan $nick Afueraaaa!
ON *:TEXT:*huevon*:#:ban -u $+ %tiempobantemporal $chan $nick %tipoban | kick $chan $nick Eso eres tu!!!!
ON *:TEXT:*huevada*:#:ban -u $+ %tiempobantemporal $chan $nick %tipoban | kick $chan $nick Eso eres tu!!!!
ON *:TEXT:*maricon*:#:ban -u $+ %tiempobantemporal $chan $nick %tipoban | kick $chan $nick Miren quien habla !!!!
ON *:TEXT:*marica*:#:ban -u $+ %tiempobantemporal $chan $nick %tipoban | kick $chan $nick Miren quien habla !!!!
ON *:TEXT:*cabron*:#:ban -u $+ %tiempobantemporal $chan $nick %tipoban | kick $chan $nick Miren quien habla !!!!
ON *:TEXT:* caga*:#:ban -u $+ %tiempobantemporal $chan $nick %tipoban | kick $chan $nick Afuera! cuida ese lenguaje!
ON *:TEXT:* cago*:#:ban -u $+ %tiempobantemporal $chan $nick %tipoban | kick $chan $nick Afuera! cuida ese lenguaje!
ON *:TEXT:*carajo*:#:ban -u $+ %tiempobantemporal $chan $nick %tipoban | kick $chan $nick Afuera!!! controla ese tu lenguaje!!!
ON *:TEXT:* culo*:#:ban -u $+ %tiempobantemporal $chan $nick %tipoban | kick $chan $nick Querias que te de una patada ahi? pues ahi tienes!!!
ON *:TEXT:*pelotud*:#:ban -u $+ %tiempobantemporal $chan $nick %tipoban | kick $chan $nick Querias que te de una patada ahi? pues ahi tienes!!!
ON *:ACTION:*fuck*:#:ban -u $+ %tiempobantemporal $chan $nick %tipoban | kick $chan $nick Just wait till i tell your mother!
ON *:ACTION:*Shit*:#:ban -u $+ %tiempobantemporal $chan $nick %tipoban | kick $chan $nick So that's what that smell was.. You...
ON *:ACTION:*bitch*:#:ban -u $+ %tiempobantemporal $chan $nick %tipoban | kick $chan $nick Wow I didn't know your dog could type.. Maybe you should consider taking lesson from her
ON *:ACTION:*cunt*:#:ban -u $+ %tiempobantemporal $chan $nick %tipoban | kick $chan $nick Nice vocabulary can you say anything besides a 4 letter word?
ON *:ACTION:*nigger*:#:ban -u $+ %tiempobantemporal $chan $nick %tipoban | kick $chan $nick GET OUT AND STAY OUT
ON *:ACTION:*pussy*:#:ban -u $+ %tiempobantemporal $chan $nick %tipoban | kick $chan $nick The pet store is that way - >
ON *:ACTION:* ass*:#:ban -u $+ %tiempobantemporal $chan $nick %tipoban | kick $chan $nick The pet store is that way - >
;ON *:ACTION:*ass *:#:ban -u $+ %tiempobantemporal $chan $nick %tipoban | kick $chan $nick The pet store is that way - >
ON *:ACTION:*mierda*:#:ban -u $+ %tiempobantemporal $chan $nick %tipoban | kick $chan $nick A eso olia? A ti ...
ON *:ACTION:* puta *:#:ban -u $+ %tiempobantemporal $chan $nick %tipoban | kick $chan $nick No sabia que tu perra sabia escribir. Deberias tomar lecciones de ella.
ON *:ACTION:*cojud*:#:ban -u $+ %tiempobantemporal $chan $nick %tipoban | kick $chan $nick Hablando de ti mismo(a)? Cuida ese lenguaje!
ON *:ACTION:* jode*:#:ban -u $+ %tiempobantemporal $chan $nick %tipoban | kick $chan $nick Afueraaaa!
ON *:ACTION:* joda *:#:ban -u $+ %tiempobantemporal $chan $nick %tipoban | kick $chan $nick Afueraaaa!
ON *:ACTION:*huevon*:#:ban -u $+ %tiempobantemporal $chan $nick %tipoban | kick $chan $nick Eso eres tu!!!!
ON *:ACTION:*huevada*:#:ban -u $+ %tiempobantemporal $chan $nick %tipoban | kick $chan $nick Eso eres tu!!!!
ON *:ACTION:*maricon*:#:ban -u $+ %tiempobantemporal $chan $nick %tipoban | kick $chan $nick Miren quien habla !!!!
ON *:ACTION:*marica*:#:ban -u $+ %tiempobantemporal $chan $nick %tipoban | kick $chan $nick Miren quien habla !!!!
ON *:ACTION:*cabron*:#:ban -u $+ %tiempobantemporal $chan $nick %tipoban | kick $chan $nick Miren quien habla !!!!
ON *:ACTION:* caga*:#:ban -u $+ %tiempobantemporal $chan $nick %tipoban | kick $chan $nick Afuera! cuida ese lenguaje!
ON *:ACTION:* cago*:#:ban -u $+ %tiempobantemporal $chan $nick %tipoban | kick $chan $nick Afuera! cuida ese lenguaje!
ON *:ACTION:*carajo*:#:ban -u $+ %tiempobantemporal $chan $nick %tipoban | kick $chan $nick Afuera!!! controla ese tu lenguaje!!!
ON *:ACTION:* culo*:#:ban -u $+ %tiempobantemporal $chan $nick %tipoban | kick $chan $nick Querias que te de una patada ahi? pues ahi tienes!!!
ON *:ACTION:*pelotud*:#:ban -u $+ %tiempobantemporal $chan $nick %tipoban | kick $chan $nick Querias que te de una patada ahi? pues ahi tienes!!!
#kb.insultos end
alias kbrepetidores { echo -a  $+ %color.titulo2 $+ [N] KickBan a Repetidores Activado | .enable #kb.repetidores }
alias kbrepetidores2 { echo -a  $+ %color.titulo2 $+ [N] KickBan a Repetidores Desactivado | .disable #kb.repetidores }
#kb.repetidores off
on @*:TEXT:*:#: {
  ; Si el usuario esta repitiendo, incrementar el contador
  if ( $hget($+(repeattext,$cid,$chan),$nick) == $1- ) {
    inc -u300 $+(%,repeatcount,$cid,$chan,$nick)

    ; Si el usuario esta repitiendo mas de 4 veces, banearlo y patearo
    if ( $eval($+(%,repeatcount,$cid,$chan,$nick),2) > 4 ) {
      mode $chan +b $mask($fulladdress,3)
      kick $chan $nick Patada automatica por repetir! - Todos leemos a la primera
    }
  }
  else {
    ; Si el usuario no esta repetiendo, resetear las variables
    ; El tiempo limite es de 100 segundos
    hadd -mu100 $+(repeattext,$cid,$chan) $nick $1-

    ; /set y tambien /inc necesita el switch -u solo para borrar variables no necesarias
    set -u100 $+(%,repeatcount,$cid,$chan,$nick) 1
  }
}
#kb.repetidores end
;
; #### Paginador ####
;
#paginador off
ctcp *:page:*:{
  window -kg1 @Paginador
  titlebar @Paginador en $network
  if (%usarsonido == 1) {
    .splay $mircdir $+ caescript\temas\ $+ %tema $+ \ $+ $readini caescript\temas\ $+ %tema $+ \tema.ini sonidos pager
  }
  echo -ti2 @Paginador $chr(91) $+ $time(hh:nn:sstt) $+ $chr(93) < $+ $nick $+ > $2-
  .raw notice $nick :Tu pagina ha sido grabada $chr(91) $+ $time(hh:nn:sstt) $+ $chr(93)
}
raw 305:*:{ vuelta }
#paginador end
;
; #### Flood AntiCanales ####
;
alias proteccion { echo -a  $+ %color.titulo2 $+ [N] Protección de Canales Activada | .enable #proteccion }
alias proteccion2 { echo -a  $+ %color.titulo2 $+ [N] Protección de Canales Desactivada | .disable #proteccion }
#proteccion off
on *:text:*:#:{
  if (($nick !isop $chan) && ($me isop $chan)) {
    if (%fl. [ $+ [ $nick ] ] !isnum) { set -u5 %fl. $+ $nick 1 | goto end }
    else {
      inc %fl. $+ $nick
      if (%fl. [ $+ [ $nick ] ] >= 5) { ban -u $+ %banproteccion $chan $nick %tipoban | kick $chan $nick [fLoOd]ban de %banproteccion seg.] | unset %fl. $+ $nick | halt }
      else { goto end }
    }
    :end
  }
}
on *:action:*:#:{
  if (($nick !isop $chan) && ($me isop $chan)) {
    if (%fl. [ $+ [ $nick ] ] !isnum) { set -u5 %fl. $+ $nick 1 | goto end }
    else {
      inc %fl. $+ $nick
      if (%fl. [ $+ [ $nick ] ] >= 5) { ban -u $+ %banproteccion $chan $nick %tipoban | kick $chan $nick [fLoOd]ban de %banproteccion seg.] | unset %fl. $+ $nick | halt }
      else { goto end }
    }
    :end
  }
}
#proteccion end
;
; #### REMOTES ####
;
raw 301:*: {
  if ( $2 != $me ) {
    echo -s $2 esta ausente: $3-
  }
  .haltdef
}
raw 306:*: { afuera2 }
raw 381:*: {
  .echo -s $2-
  ;  if (!$script(ircoptools.mrc)) { 
  ;    .timer 1 0 .load -rs ircoptools/ircoptools.mrc 
  ;    halt 
  ;  }
  .load -rs ircoptools/ircoptools.mrc 
  halt
}
on ^*:SNOTICE:*** Notice -- * is now operator *:{
  echo -s 2[N] $4-
  haltdef
}
raw 005:*:{
  .echo -s 2[N] $2 $3-
  .haltdef
}
raw 401:*:{
  .echo -s $2 $3-
  if $query($2) { 
    echo $colour(own text) $2 $3-
  }
  .haltdef
}
on ^*:SNOTICE:*** Notice -- Server flood protection activated for *:{
  echo -s 2[N] $4-
  haltdef
}
raw 408:*:{
  .echo $2  $+ %color.titulo2 $+ [N] No puedes enviar colores a $2 $+ . No se envió: $13-
  .haltdef
}

on *:OPEN:?:{
  .echo $color(notice) $nick *** Privado recibido de: $nick ( $+ $address $+ )
  .canalescomunes $nick $nick
}
on *:CTCPREPLY:ping*:{
  .raw notice $nick :Tu respuesta ping es de $duration($calc($ctime - $2)) | echo -a  $+ %color.titulo1 $+ [ $+ %color.titulo2 $+ $nick PING Reply $+ %color.titulo1 $+ ] $duration($calc($ctime - $2))
}
on *:TOPIC:*:{
  .set %canaltopic $right($chan,-1)
  .unset %canaltopic
}
on ^*:INVITE:#:{
  .echo $color(Invite text) -a *** $nick ( $+ $address $+ ) te ha invitado a $chan
  if (%usarsonido == 1) {
    .splay $mircdir $+ caescript\temas\ $+ %tema $+ \ $+ $readini caescript\temas\ $+ %tema $+ \tema.ini sonidos invite
  }
  .set %canalinvitacion $right($chan,-1)
  .unset %canalinvitacion
  .haltdef
}
on *:DNS:{
  var %n = $dns(0)
  if (%n == 0) {
    .echo -a 12[N] La dirección $address no pudo resolverse.
  }
  else {
    while (%n > 0) {
      echo -a 12[N] DNS: Addr: $dns(%n).addr IP: $dns(%n).ip
      dec %n
    }
  }
}
on ^*:NOTIFY:{
  if (%doblenotify == 1) {
    if (($active != Status Window) && ($active != @Lag) && ($active != @mp3-player) ) {
      .echo $colour(notify) -a *** $nick ( $+ $address $+ ) ha entrado al IRC
    }
  }
  .echo $colour(notify) -s *** $nick ( $+ $address $+ ) ha entrado al IRC
  .haltdef
}
on ^*:UNOTIFY:{
  if (%doblenotify == 1) {
    if ($active != Status Window) {
      .echo $colour(notify) -a *** $nick ( $+ $address $+ ) ha salido del IRC
    }
  }
  .echo $colour(notify) -s *** $nick ( $+ $address $+ ) ha salido del IRC
  .haltdef
}
on *:FILERCVD:*.jpg,*.gif,*.bmp,*.mid,*.wav,*.txt:{
  .echo 2 -a *** Se recibió $filename de $nick | .notice $nick Gracias por enviar $nopath($filename) | /run $filename
}
ON *:JOIN:#:{
  if ( $nick == $me ) {
    if (%usarsonido == 1) {
      .splay $mircdir $+ caescript\temas\ $+ %tema $+ \ $+ $readini caescript\temas\ $+ %tema $+ \tema.ini sonidos join
    }
    ; background -c # caescript\temas\ $+ %tema $+ \ $+ %fondostatus
  }
  if ( $nick != $me) { 
    var %c = $nicksbusc($site) 
    if ( %c != $null ) { 
      nicksborr $site
      if (%c == $nick) { var %c } 
      else {
        echo $color(Join text) -t $chan * $nick entró antes como %c
      }
    } 
    set %clones.nicks ""
    var %n = $ial(*@ $+ $gettok($ial($nick,1),2,64),0)
    if (%n > 1) {
      var %i = 0
      while (%i < %n) {
        inc %i
        var %c = $ial(*@ $+ $gettok($ial($nick,1),2,64),%i)
        if (%i == 1) { set %clones.nicks $gettok(%c,1,33) } 
        else { set %clones.nicks %clones.nicks $+ , $gettok(%c,1,33) }
      }
    }
    var %end = *!*@ $+ $gettok($ial($nick,1),2,64)
    if (%clones.nicks) { 
      echo $color(Join text) -t $chan * Clones detectados: %clones.nicks ( $+ %end $+ ) 
    }
  }
}
ON *:KICK:#:{
  if ( $knick == $me ) {
    if (%usarsonido == 1) {
      .splay $mircdir $+ caescript\temas\ $+ %tema $+ \ $+ $readini caescript\temas\ $+ %tema $+ \tema.ini sonidos kicked
    }
  }
  if ( $comchan($knick,0) < 2 ) { 
    if ( $ial($knick).host != $null ) { nicksgrab $knick $ifmatch } 
  } 
}
;
; #### Algo para que se vea como el CaeScript de pIRCh ####
;
; #### Esto hace que cualquier notice que te llegue, en caso de 
; #### que no tengas un query con esa persona, sea desplegado en tu 
; #### ventana actual. en caso de que si tengas un query con esa 
; #### persona, muestra el notice en esa ventana.
;
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
; ### Textos desplegables
; ###
; ### Texto 1
#texto1 off
on *:INPUT:*:{
  if ($left($1-,1) != /) {
    if ( $active != Status Window ) {
      say 2* $1- 2*
      haltdef
    }
  }
}
#texto1 end
; ###
; ### Texto 2
#texto2 off
on *:INPUT:*:{
  if ($left($1-,1) != /) {
    if ( $active != Status Window ) {
      say 2,2 4,15 $1- 2,2 
      haltdef
    }
  }
}
#texto2 end
; ###
; ### Texto 3
#texto3 off
on *:INPUT:*:{
  if ($left($1-,1) != /) {
    if ( $active != Status Window ) {
      say 12,12 12,15 $1- 12,12 
      haltdef
    }
  }
}
#texto3 end
; ###
; ### Texto 4
#texto4 off
on *:INPUT:*:{
  if ($left($1-,1) != /) {
    if ( $active != Status Window ) {
      say ¸,ø¤°`°¤ø,¸¸,ø¤°`°¤ø,¸¸»  $1- «¸,ø¤°`°¤ø,¸¸,ø¤°`°¤ø,
      haltdef
    }
  }
}
#texto4 end
; ###
; ### Texto 5
#texto5 off
on *:INPUT:*:{
  if ($left($1-,1) != /) {
    if ( $active != Status Window ) {
      say 1,1 1,15 $1- 1,1 
      haltdef
    }
  }
}
#texto5 end
; ###
; ### Texto 6
#texto6 off
on *:INPUT:*:{
  if ($left($1-,1) != /) {
    if ( $active != Status Window ) {
      say 9,1:3,1:10,1:15 $1- 10,1:3,1:9,1:
      haltdef
    }
  }
}
#texto6 end
; ###
; ### Texto 7
#texto7 off
on *:INPUT:*:{
  if ($left($1-,1) != /) {
    if ( $active != Status Window ) {
      say 11,1 >12,1>2,1>15,1 $1- 2,1<12,1<11,1< 
      haltdef
    }
  }
}
#texto7 end
; ###
; ### Texto 8
#texto8 off
on *:INPUT:*:{
  if ($left($1-,1) != /) {
    if ( $active != Status Window ) {
      say 1,1.8,8.11,11.1,1.0,1 $1- 1,1.11,11.8,8.1,1.
      haltdef
    }
  }
}
#texto8 end
; ###
; ### Texto 9
#texto9 off
on *:INPUT:*:{
  if ($left($1-,1) != /) {
    if ( $active != Status Window ) {
      say 1,1.7,7.1,1.0,0.1,1.8,7 *oops* 1,1.0,0.1,1.7,7.1,1.9,1 $1- 1,1.7,7.1,1.0,0.1,1.8,7 *oops* 1,1.0,0.1,1.7,7.1,1.
      haltdef
    }
  }
}
#texto9 end
; ###
; ### Texto 10
#texto10 off
on *:INPUT:*:{
  if ($left($1-,1) != /) {
    if ( $active != Status Window ) {
      say 4,4.5,5.8,8.0,1 $1- 8,8.5,5.4,4.
      haltdef
    }
  }
}
#texto10 end
; ###
; ### Texto 11
#texto11 off
on *:INPUT:*:{
  if ($left($1-,1) != /) {
    if ( $active != Status Window ) {
      set %contador 1
      set %colormostrar 1
      while (%contador <= $len( $1- )) {
        if (%colormostrar == 0 || %colormostrar > 14) {
          set %colormostrar 1
        }
        set %caracter $mid($1-,%contador,1)
        set %texto11 %texto11 $+  $+ %colormostrar $+ %caracter $+ 
        inc %contador
        inc %colormostrar
      }
    }
    say 2,2 15,15 2,2  %texto11 2,2 15,15 2,2 
    unset %caracter
    unset %colormostrar
    unset %texto11
    unset %contador
    haltdef
  }
}
#texto11 end
; ###
; ### Texto 12
#texto12 off
on *:INPUT:*:{
  if ($left($1-,1) != /) {
    if ( $active != Status Window ) {
      set %contador 1
      set %colormostrar 1
      while (%contador <= $len( $1- )) {
        if (%colormostrar == 1) {
          set %colordesplegar 2
        }
        if (%colormostrar == 2) {
          set %colordesplegar 10
          set %colormostrar 0
        }
        set %caracter $mid($1-,%contador,1)
        set %texto12 %texto12 $+  $+ %colordesplegar $+ %caracter $+ 
        inc %contador
        inc %colormostrar
      }
    }
    say 2,2 15,15 2,2  %texto12 2,2 15,15 2,2 
    unset %caracter
    unset %colordesplegar
    unset %colormostrar
    unset %texto12
    unset %contador
    haltdef
  }
}
#texto12 end
; ###
; ### Texto 13
#texto13 off
on *:INPUT:*:{
  if ($left($1-,1) != /) {
    if ( $active != Status Window ) {
      set %contador 1
      set %colormostrar 1
      while (%contador <= $len( $1- )) {
        if (%colormostrar == 1) {
          set %colordesplegar 11,1
        }
        if (%colormostrar == 2) {
          set %colordesplegar 13,1
          set %colormostrar 0
        }
        set %caracter $mid($1-,%contador,1)
        set %texto13 %texto13 $+  $+ %colordesplegar $+ %caracter $+ 
        inc %contador
        inc %colormostrar
      }
    }
    say 7,7 1,1 7,7  %texto13 7,7 1,1 7,7 
    unset %caracter
    unset %colordesplegar
    unset %colormostrar
    unset %texto13
    unset %contador
    haltdef
  }
}
#texto13 end
; ###
; ### Texto 14
#texto14 off
on *:INPUT:*:{
  if ($left($1-,1) != /) {
    if ( $active != Status Window ) {
      set %contador 1
      set %colormostrar 1
      while (%contador <= $len( $1- )) {
        if (%colormostrar == 1) {
          set %colordesplegar 2,15
        }
        if (%colormostrar == 2) {
          set %colordesplegar 2,15
          set %colormostrar 0
        }
        set %caracter $mid($1-,%contador,1)
        set %texto14 %texto14 $+  $+ %colordesplegar $+ %caracter $+ 
        inc %contador
        inc %colormostrar
      }
    }
    say 2,2 15,15 2,2  %texto14 2,2 15,15 2,2 
    unset %caracter
    unset %colordesplegar
    unset %colormostrar
    unset %texto14
    unset %contador
    haltdef
  }
}
#texto14 end
; ###
; ### Texto 15
#texto15 off
on *:INPUT:*:{
  if ($left($1-,1) != /) {
    if ( $active != Status Window ) {
      set %contador 1
      set %colormostrar 1
      while (%contador <= $len( $1- )) {
        if (%colormostrar == 1) {
          set %colordesplegar %formato15color1
        }
        if (%colormostrar == 2) {
          set %colordesplegar %formato15color2
          set %colormostrar 0
        }
        set %caracter $mid($1-,%contador,1)
        set %texto15 %texto15 $+  $+ %colordesplegar $+ %caracter $+ 
        inc %contador
        inc %colormostrar
      }
    }
    say %texto15
    unset %caracter
    unset %colordesplegar
    unset %colormostrar
    unset %texto15
    unset %contador
    haltdef
  }
}
#texto15 end
; ###
; ### Texto 16
#texto16 off
on *:INPUT:*:{
  if ($left($1-,1) != /) {
    if ( $active != Status Window ) {
      say 4,4|8,8|3,3|15,1 $1- 4,4|8,8|3,3|
      haltdef
    }
  }
}
#texto16 end
; ###
; ### Texto 17
#texto17 off
on *:INPUT:*:{
  if ($left($1-,1) != /) {
    if ( $active != Status Window ) {
      say 4,8 $1- 
      haltdef
    }
  }
}
#texto17 end
; ###
; ### Texto 18
#texto18 off
on *:INPUT:*:{
  if ($left($1-,1) != /) {
    if ( $active != Status Window ) {
      say 7,1 $1- 
      haltdef
    }
  }
}
#texto18 end
; ####
; ## Volume Panel                      Copyright © 2004        NoSupra
dialog vol {
  size -1 -1 234 260
  title "Panel de Volumen"
  text "100",1,56 168 19 17
  text "100",2,103 167 19 17
  text "100",3,151 167 19 17
  text "100",4,201 166 19 17
  text "0",5,56 19 11 17
  text "0",6,107 17 11 17
  text "0",7,154 16 11 17
  text "0",8,201 16 11 17
  text "Master",9,20 185 39 17
  text "Wave",10,73 185 48 17
  text "Midi",11,120 185 38 17
  text "Mp3",12,168 184 50 17
  text "Panel de Volumen por NoSupra",13,46 219 151 17
  scroll "",14,23 11 30 175,range 100
  scroll "",15,74 11 30 175,range 100
  scroll "",16,120 11 30 175,range 100
  scroll "",17,169 10 30 175,range 100
}

on *:dialog:vol:init:*:{
  did -c $dname 14 $int($calc(($vol(master) / 65000) * 100))
  did -c $dname 15 $int($calc(($vol(wave) / 65000) * 100))
  did -c $dname 16 $int($calc(($vol(midi) / 65000) * 100))
  did -c $dname 17 $int($calc(($vol(mp3) / 65000) * 100))
}

on *:dialog:vol:scroll:*: {
  if ($did == 14) { 
    vol -v $int($calc(655.35 * $did($dname,14).sel))
  }
  if ($did == 15) {
    vol -w $int($calc(655.35 * $did($dname,15).sel)) 
  }
  if ($did == 16) {
    vol -m $int($calc(655.35 * $did($dname,16).sel))
  }
  if ($did == 17) {
    vol -p $int($calc(655.35 * $did($dname,17).sel))
  }
}
on *:BAN:#: var %afectadosporban = $afectadosban($banmask,#) | if %afectadosporban != $null { echo $color(Mode text) $chan * Baneados:03 $+ $ñ(v) %afectadosporban }
on *:UNBAN:#: var %afectadosporban = $afectadosban($banmask,#) | if %afectadosporban != $null { echo $color(Mode text) $chan * Desbaneados:03 $+ $ñ(v) %afectadosporban }
on *:start: { 
  if ($hget(nicksch) == $null) {
    .hmake nicksch 100
  }
} 
on *:part:#: { 
  if ( $comchan($nick,0) < 2 ) { nicksgrab $nick $site }
  if ( $nick != $me) { 
    var %c = $nicksbusc($site) 
    if ( %c != $null ) { 
      nicksborr $site
      if (%c == $nick) { var %c }
      else {
        echo $color(Part text) -t $chan * $nick salió antes como %c
      }
    } 
  }
} 
on *:quit: { 
  nicksgrab $nick $site
  set %q $comchan($nick,0)
  set %c 0
  while (%c != $comchan($nick,0)) {
    inc %c
  }
} 
; ############
; sysinfo por nixor - www.xoniq.org
alias res return $+($window(-1).w,×,$window(-1).h) 
alias _sysinfo {
  if ($1 = os) return $sysinfo(win32_operatingsystem,1).name,version,numberofprocesses,csdversion
  elseif ($1 = cpu) {
    var %l $sysinfo(win32_processor,1).deviceid,processortype,loadpercentage
    var %k $+(HKLM\hardware\description\system\CentralProcessor\,$remove($gettok(%l,1,124),CPU),\)
    return $regread(%k $+ \ProcessorNameString) $+ , $regread(%k $+ \Identifier) $+ $chr(124) $+ $regread(%K $+ \VendorIdentifier) $+ $chr(124) $+ $processortype($gettok(%l,2,124)) $+ $chr(124) $+ $regread(%k $+ \~mhz) $+ $chr(124) $+ $gettok(%l,3,124)
  }
  elseif ($1 = sound) return $sysinfo(Win32_sounddevice).name,description,manufacturer
  elseif ($1 = videocard) return $regread(HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Class\{4D36E968-E325-11CE-BFC1-08002BE10318}\0000\DriverDesc) $+ $chr(124) $+ $regread(HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Class\{4D36E96E-E325-11CE-BFC1-08002BE10318}\0000\DriverDesc)
  elseif ($1 = display) return $sysinfo(win32_videocontroller,1).currentbitsperpixel,CurrentRefreshRate
  elseif ($1 = bios) return $sysinfo(win32_bios,1).name,version,manufacturer
  elseif ($1 = freemem) return $calc($sysinfo(win32_operatingsystem,1).freephysicalmemory * 1024)
  elseif ($1 = totalmem) return $totalmem
  elseif ($1 = keyboard) return $sysinfo(Win32_keyboard,1).name,description
}
alias regread {
  var %a regread
  .comopen %a WScript.Shell
  if !$comerr {
    var %b = $com(%a,RegRead,3,bstr,$1-)
    var %c = $com(%a).result
    .comclose %a
    if (%c) return %c
  }
}
alias sysinfo {
  if ($isid) && ($prop) {
    if ($com(Locator)) .comclose Locator
    if ($com(Services)) .comclose Services
    if ($com(Instances)) .comclose Instances
    .comopen Locator WbemScripting.SWbemLocator
    if ($comerr) { .comclose Locator | return }
    var %com = $com(Locator,ConnectServer,3,dispatch* Services)
    .comclose Locator
    if $com(Services) {
      var %com = $com(Services, InstancesOf,3,string,$$1,dispatch* Instances)
      .comclose Services
    }
    if $com(Instances) {
      var %com = $com(Instances,Count,3)
      var %x 1
      while ($gettok($prop,%x,44)) {
        var %r = $iif(%r,%r $+ $chr(124)) $+ $comval(Instances,$iif($2,$2,1),$gettok($prop,%x,44))
        inc %x
      }
      .comclose Instances
    }
    return %r
  }
}
alias processortype {
  goto $1
  :1 | return Other 
  :2 | return Unknown 
  :3 | return Central Processor 
  :4 | return Math Processor 
  :5 | return DSP Processor 
  :6 | return Video Processor 
}
alias memorytype {
  goto $1
  :0 | return Unknown 
  :1 | return Other 
  :2 | return DRAM 
  :3 | return Synchronous DRAM 
  :4 | return Cache DRAM 
  :5 | return EDO 
  :6 | return EDRAM 
  :7 | return VRAM 
  :8 | return SRAM 
  :9 | return RAM 
  :10 | return ROM 
  :11 | return Flash 
  :12 | return EEPROM 
  :13 | return FEPROM 
  :14 | return EPROM 
  :15 | return CDRAM 
  :16 | return 3DRAM 
  :17 | return SDRAM 
  :18 | return SGRAM 
  :19 | return RDRAM 
  :20 | return DDR 
}
alias videotype {
  goto $1
  :1 | return Other 
  :2 | return Unknown 
  :3 | return VRAM 
  :4 | return DRAM 
  :5 | return SRAM 
  :6 | return WRAM 
  :7 | return EDO RAM 
  :8 | return Burst Synchronous DRAM 
  :9 | return Pipelined Burst SRAM 
  :10 | return CDRAM 
  :11 | return 3DRAM 
  :12 | return SDRAM 
  :13 | return SGRAM 
}
alias totalmem {
  if ($isid) {
    if ($com(Locator)) .comclose Locator
    if ($com(Services)) .comclose Services
    if ($com(Instances)) .comclose Instances
    .comopen Locator WbemScripting.SWbemLocator
    if ($comerr) { .comclose Locator | return }
    var %com = $com(Locator,ConnectServer,3,dispatch* Services)
    .comclose Locator
    if $com(Services) {
      var %com = $com(Services, InstancesOf,3,string,Win32_PhysicalMemory,dispatch* Instances)
      .comclose Services
    }
    if $com(Instances) {
      var %com = $com(Instances,Count,3)
      var %x 1,%t 0
      while ($comval(Instances,%x,Capacity)) {
        inc %t $ifmatch
        inc %x
      }
      .comclose Instances
    }
    return %t
  }
}
alias freemem return $_sysinfo(freemem)
alias usedmem return $bytes($calc($totalmem - $freemem)).suf
