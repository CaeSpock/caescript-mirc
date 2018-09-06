;
; #### AddOn para DALnet ####
; #### Versión 1.3 por CaeSpock
; #### Distribuido con CaeScript
;
on *:LOAD:{
 ; .echo -s 2[N] Modulo de DALnet cargado exitosamente.
 .set %addondalnet 1
}
on *:UNLOAD:{
 ; .echo -s 2[N] Modulo de DALnet descargado exitosamente.
 .unset %addondalnet
}
alias DALnet { 
 if (dal.net isin $server) {
  echo 2[N] Si estás en DALnet ( $+ $server $+ ). 
  .agentehablar DALnet la red de I R C
 }
 else {
  echo 2[N] No estás en DALnet ( $+ $server $+ ).
 }
}
; ### Ahora unos comandos para que lo que tecleemos en el privado del 
; ### NickServ aparezca ahi, inclusive en dalnet :)
on *:INPUT:NickServ:if ($left($1-,1) != /) { .nickserv $1- | halt }
on *:INPUT:ChanServ:if ($left($1-,1) != /) { .chanserv $1- | halt }
on *:INPUT:MemoServ:if ($left($1-,1) != /) { .memoserv $1- | halt }
on *:INPUT:HelpServ:if ($left($1-,1) != /) { .raw privmsg helpserv : $+ $1- | halt }
on *:INPUT:StatServ:if ($left($1-,1) != /) { .raw privmsg statserv : $+ $1- | halt }
;
; ### PopUps
;
menu menubar,status {
-
Descargar Add-On DALnet:.unload -rs caescript\addons\dalnet.mrc
DALnet
.Paginas
..DALnet:/run http://www.dal.net/
..Users:/run http://users.dal.net/
..Kline:/run http://kline.dal.net/
..Help:/run http://help.dal.net/
..DALnetAyuda:/run http://www.dalnetayuda.org/
.ChanServ
..Ayuda:/chanserv help
..Registrar Canal:/chanserv REGISTER $input(Entra el nombre del canal - No olvides el #,ei,Operacion con el ChanServ) $input(Ingresa la clave,pi,Operacion con el ChanServ) $input(Descripción del Canal?,ei,Operacion con el ChanServ)
..Identificar Canal:/chanserv identify $input(Entra el nombre del canal - No olvides el #,ei,Operacion con el ChanServ) $input(Ingresa la clave,pi,Operacion con el ChanServ)
..Dropear Canal:/chanserv drop $input(Entra el nombre del canal - No olvides el #,ei,Operacion con el ChanServ)
..Desbanear
...A mi:/chanserv UNBAN $input(Entra el nombre del canal - No olvides el #,ei,Operacion con el ChanServ)
...A Todos:/chanserv UNBAN $input(Entra el nombre del canal - No olvides el #,ei,Operacion con el ChanServ) *
...A un nick:/chanserv UNBAN $input(Entra el nombre del canal - No olvides el #,ei,Operacion con el ChanServ) $input(Ingresa el Nick del Usuario,1)
...A una máscara:/chanserv UNBAN $input(Entra el nombre del canal - No olvides el #,ei,Operacion con el ChanServ)  $input(Entra la máscara completa nick!ident@host,1)
..Información:/chanserv info $input(Entra el nombre del canal - No olvides el #,ei,Operacion con el ChanServ)
..Invitar:/chanserv INVITE $input(Entra el nombre del canal - No olvides el #,ei,Operacion con el ChanServ)
..Accesso:/chanserv ACC $input(Entra el nombre del canal - No olvides el #,ei,Operacion con el ChanServ) $input(Ingresa el Nick del Usuario,1)
..Contar:/chanserv COUNT $input(Entra el nombre del canal - No olvides el #,ei,Operacion con el ChanServ)
..Solicitar Clave:/chanserv SENDPASS $input(Ingresa el Canal - No olvides el #,ei,Operacion con el ChanServ) $input(Ingresa el E-Mail del Founder,1)
..Comandos SET
...Nueva Clave:/chanserv SET $input(Entra el nombre del canal - No olvides el #,ei,Operacion con el ChanServ) PASSWD $input(Entra la clave actual,pi,Operacion con el ChanServ) $input(Entra la nueva clave,pi,Operacion con el ChanServ)
...Nueva Descripción:/chanserv SET $input(Entra el nombre del canal - No olvides el #,ei,Operacion con el ChanServ) DESC $input(Descripción del Canal?,ei,Operacion con el ChanServ)
...Página Web:/chanserv SET $input(Entra el nombre del canal - No olvides el #,ei,Operacion con el ChanServ) URL $input(Entra el E-Mail o el URL,1)
...Modo Protegido:/chanserv SET $input(Entra el nombre del canal - No olvides el #,ei,Operacion con el ChanServ) MLOCK $input(Ingresa los modos del canal a asignar,1)
...Protección de Ops:/chanserv SET $input(Entra el nombre del canal - No olvides el #,ei,Operacion con el ChanServ) OPGUARD $input(Entra el Valor ON(Activado) OFF(Desactivado),1,Entra el valor,ON)
...Permanencia del Topic:/chanserv SET $input(Entra el nombre del canal - No olvides el #,ei,Operacion con el ChanServ) KEEPTOPIC $input(Entra el Valor ON(Activado) OFF(Desactivado),1,Entra el valor,ON)
...Dejar Ops:/chanserv SET $input(Entra el nombre del canal - No olvides el #,ei,Operacion con el ChanServ) LEAVEOPS $input(Entra el Valor ON(Activado) OFF(Desactivado),1,Entra el valor,ON)
...Privado:/chanserv SET $input(Entra el nombre del canal - No olvides el #,ei,Operacion con el ChanServ) PRIVATE $input(Entra el Valor ON(Activado) OFF(Desactivado),1,Entra el valor,ON)
...Protección de Topic:/chanserv SET $input(Entra el nombre del canal - No olvides el #,ei,Operacion con el ChanServ) TOPICLOCK $input(Founder - SOP - OFF,1,Entra el valor,OFF)
...No Seguro:/chanserv SET $input(Entra el nombre del canal - No olvides el #,ei,Operacion con el ChanServ) UNSECURE $input(Entra el Valor ON(Activado) OFF(Desactivado),1,Entra el valor,ON)
...Fundador:/chanserv set $input(Entra el nombre del canal - No olvides el #,ei,Operacion con el ChanServ) founder
...Sucesor:/chanserv set $input(Entra el nombre del canal - No olvides el #,ei,Operacion con el ChanServ) successor $input(Entra el nick,1)
...Clave de Página Web:/chanserv set $input(Entra el nombre del canal - No olvides el #,ei,Operacion con el ChanServ) webpasswd $input(Entra la clave,pi,Operacion con el ChanServ)
...Bloqueo de E-Mail:/chanserv set $input(Entra el nombre del canal - No olvides el #,ei,Operacion con el ChanServ) mailblock $input(Entra el Valor ON(Activado) OFF(Desactivado),1,Entra el valor,ON)
..SuperOp
...Listar:/chanserv SOP $input(Entra el nombre del canal - No olvides el #,ei,Operacion con el ChanServ) LIST
...Adicionar:/chanserv SOP $input(Entra el nombre del canal - No olvides el #,ei,Operacion con el ChanServ) ADD $input(Entra el nick o la máscara completa nick!ident@host,1)
...Borrar:/chanserv SOP $input(Entra el nombre del canal - No olvides el #,ei,Operacion con el ChanServ) DEL $input(Nick - Número de la lista o máscara?,1)
...Borrar Todos:/chanserv SOP $input(Entra el nombre del canal - No olvides el #,ei,Operacion con el ChanServ) wipe
..AutoOp
...Listar:/chanserv AOP $input(Entra el nombre del canal - No olvides el #,ei,Operacion con el ChanServ) List
...Adicionar:/chanserv AOP $input(Entra el nombre del canal - No olvides el #,ei,Operacion con el ChanServ) ADD $input(Entra el nick o la máscara completa nick!ident@host,1)
...Borrar:/chanserv AOP $input(Entra el nombre del canal - No olvides el #,ei,Operacion con el ChanServ) DEL $input(Nick - Número de la lista o máscara?,1)
...Borrar Todos:/chanserv AOP $input(Entra el nombre del canal - No olvides el #,ei,Operacion con el ChanServ) wipe
..AKICK
...Listar:/chanserv AKICK $input(Entra el nombre del canal - No olvides el #,ei,Operacion con el ChanServ) List
...Adicionar:/chanserv AKICK $input(Entra el nombre del canal - No olvides el #,ei,Operacion con el ChanServ) ADD $input(Entra el nick o la máscara completa nick!ident@host,1)
...Borrar:/chanserv AKICK $input(Entra el nombre del canal - No olvides el #,ei,Operacion con el ChanServ) DEL $input(Nick - Número de la lista o máscara?,1)
...Borrar Todos:/chanserv AKICK $input(Entra el nombre del canal - No olvides el #,ei,Operacion con el ChanServ) wipe
..OP
...OP:/chanserv OP $input(Entra el nombre del canal - No olvides el #,ei,Operacion con el ChanServ) $input(Ingresa el nick,1)
...DeOP:/chanserv DEOP $input(Entra el nombre del canal - No olvides el #,ei,Operacion con el ChanServ) $input(Ingresa el nick,1)
.NickServ
..Ayuda:/nickserv help
..Registrar:/nickserv REGISTER $input(Ingresa la clave,pi,Operacion con el NickServ) $input(Ingresa tu dirección E-Mail,ei,Operacion con el NickServ)
..Identificar:/nickserv identify $input(Ingresa la clave,pi,Operacion con el NickServ)
..Información:/nickserv INFO $input(Ingresa el nick,ei,Operacion con el NickServ)
..Dropear:/nickserv DROP $input(Ingresa el nick,ei,Operacion con el NickServ) $input(Ingresa el código si ya lo recibiste,ei,Operacion con el NickServ)
..Soltar(Release):/nickserv RELEASE $input(Ingresa el nick,ei,Operacion con el NickServ)
..Recobrar:/nickserv RECOVER $input(Ingresa el nick,ei,Operacion con el NickServ) $input(Ingresa la clave,pi,Operacion con el NickServ)
..Fantasma:/nickserv GHOST $input(Ingresa el nick,ei,Operacion con el NickServ) $input(Ingresa la clave,pi,Operacion con el NickServ)
..Solicitar Clave:/nickserv SENDPASS $input(Ingresa el nick,ei,Operacion con el NickServ) $input(Ingresa el E-Mail,ei,Operacion con el NickServ)
..Comandos SET
...Clave:/nickserv SET PASSWD $input(Entra la clave actual,pi,Operacion con el NickServ) $input(Entra la nueva clave,pi,Operacion con el NickServ)
...Enforce:/nickserv SET ENFORCE $input(Entra el Valor ON(Activado) OFF(Desactivado),ei,Entra el valor,ON)
...Página Web:/nickserv SET URL $input(Ingresa tu URL,ei,Operacion con el NickServ,http://)
...Email:/nickserv SET email $input(Entra la clave actual,pi,Operacion con el NickServ) $input(Ingresa tu dirección E-Mail,ei,Operacion con el NickServ)
...Mostrar Email:/nickserv SET showemail $input(Entra el Valor ON(Activado) OFF(Desactivado),ei,Entra el valor,ON)
...Bloqueo de E-Mail:/nickserv MAILBLOCK email $input(Entra el Valor ON(Activado) OFF(Desactivado),ei,Entra el valor,ON)
..Lista de Acceso
...Listar:/nickserv ACCESS LIST
...Adicionar:/nickserv ACCESS ADD $input(Ingresa la máscara user@host,ei,Operacion con el NickServ)
...Borrar:/nickserv ACCESS DEL $input(Ingresa la máscara user@host,ei,Operacion con el NickServ)
...Borrar Todos:/nickserv ACCESS wipe
..Mostrar Acceso:/nickserv ACC $input(Ingresa el nick,ei,Operacion con el NickServ)
..Listar:/nickserv LIST $input(Ingresa el Patrón de búsqueda,ei,Operacion con el NickServ)
.MemoServ
..Ayuda:/memoserv help
..Enviar:/memoserv SEND $input(Nick o canal destino,ei,Operacion con el MemoServ) $input(Ingresa el mensaje,ei,Operacion con el MemoServ)
..Listar:/memoserv list
..Leer:/memoserv READ $input(Número del memo,ei,Operacion con el MemoServ)
..Borrar:/memoserv del $input(Número del memo,ei,Operacion con el MemoServ)
..Des-Borrar:/memoserv undel $input(Número del memo,ei,Operacion con el MemoServ)
..Purgar:/memoserv purge
..Redireccionar:/memoserv FORWARD $input(Nick al cual redireccionar,ei,Operacion con el MemoServ) $input(Ingresa la clave,pi,Operacion con el MemoServ)
..Borrar Todos:/memoserv del all
..Noticias:/memoserv news
.StatServ
..Ayuda:/msg statserv help
..Mapa de Servidores:/msg StatServ map
..Lista de Servidores:/msg StatServ servers
..Info de Servidor:/msg StatServ server $input(Nombre del Servidor,ei,Operacion con el StatServ)
..Info de Dominio:/msg StatServ domain $input(Nombre del Servidor,ei,Operacion con el StatServ)
..Info de Host:/msg StatServ host $input(Servidor o Host,ei,Operacion con el StatServ)
..Estadísticas:/msg StatServ stats $input(Nombre del Servidor - Host - Dominio,ei,Operacion con el StatServ)
..Login:/msg StatServ login $input(Tu Login,ei,Operacion con el StatServ) $input(Tu Clave,pi,Operacion con el StatServ)
..Estadísticas de la Red:/msg StatServ netstats
.HelpServ
..Ayuda:/msg HelpServ HELP $input(Comandos a requerir,ei,Operacion con el HelpServ)
..Comando Directo:/msg HelpServ $input(Comando a enviar,ei,Operacion con el HelpServ)
-
}
menu channel {
DALnet
.Info de #:chanserv info #
.Por que $snick(#,1) es op en #:chanserv why # $snick(#,1)
.ACC de $snick(#,1) a #:chanserv ACC # $snick(#,1)
.Count a #:chanserv COUNT #
.Memo a #:memoserv send # $input(Mensaje a enviar,ei,DALnet MemoServ)
}
menu nicklist {
-
DALnet
.Info de $snick(#,1):nickserv info $snick(#,1)
.ACC de $snick(#,1):nickserv ACC $snick(#,1)
.ACC de $snick(#,1) a #:/chanserv ACC # $snick(#,1)
.Memo a $snick(#,1):/memoserv send $snick(#,1) $input(Mensaje a enviar,ei,DALnet MemoServ)
-
}
menu query {
-
DALnet
.Info del nick:nickserv info $$1
.ACC del nick:nickserv ACC $$1
.Memo al nick:/memoserv send $$1 $input(Mensaje a enviar,ei,DALnet MemoServ)
}