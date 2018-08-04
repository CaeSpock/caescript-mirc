;
; #### AddOn para EggDrop ####
; #### Versión 1.1 por CaeSpock
; #### Distribuido con CaeScript
;
on *:LOAD:{
 ; .echo -s 2[N] Modulo de control de EggDrops cargado exitosamente.
 .set %addoneggdrop 1
}
on *:UNLOAD:{
 ; .echo -s 2[N] Modulo de control de EggDrops descargado exitosamente.
 .unset %addoneggdrop
}
menu nicklist {
-
EggDrop
.DCC:.dcc chat $snick(#,1)
.Pedir Chat:.ctcp $snick(#,1) chat
.Ayuda:.msg $snick(#,1) help
.Identificar:.msg $snick(#,1) ident $input(Clave de acceso al Bot,pi,EggDrop) $input(Tu nick o handle,ei,EggDrop, $left($me,9))
.Cambiar Clave:.msg $snick(#,1) pass $input(Antigua Clave,pi,EggDrop) $input(Nueva Clave,pi,EggDrop)
.Cambiar Info:.msg $snick(#,1) INFO $input(Clave de Acceso,pi,EggDrop) $input(Tu nueva linea de info - NONE para ninguna,ei,EggDrop)
.Who:.msg $snick(#,1) who $input(Nombre del Canal,ei,EggDrop)
.Whois:.msg $snick(#,1) who $input(Nick o Handle,ei,EggDrop)
.Pedir @:.msg $snick(#,1) op $input(Clave de Acceso Al Bot,pi,EggDrop) # 
.Pedir +:.msg $snick(#,1) voice $input(Clave de Acceso Al Bot,pi,EggDrop) #
.Pedir key:.msg $snick(#,1) key $input(Clave de Acceso Al Bot,pi,EggDrop) #
}

menu query {
-
EggDrop DCC
.Ayuda:.say .help
.Ver Bots:.say .bots
.Ver Arbol de Bots:.say .bottree
.Ver Arbol de Bots(Completo):.say .vbottree
.Ver Información de Bots:.say .botinfo
.Adicionar al Log:.say .addlog $input(Entre el comentario,ei,EggDrop)
.echo:.say .echo $input(Entre el valor para el echo ON-OFF,ei,EggDrop,ON)
.Cambio de Nick:.say .handle $input(Entre su nuevo nick o handle,ei,EggDrop)
.Cambio de Clave:.say .newpass $input(Entre tu nueva clave,pi,EggDrop)
.Hacer que el bot Hable:.say .say $input(Ingrese el texto,ei,EggDrop)
.Hacer que el bot haga una accion:.say .act $input(Ingrese el texto,ei,EggDrop)
.Mensaje a un usuario:.say .msg $input(Ingrese el Nick,ei,EggDrop) $input(Ingrese el texto,ei,EggDrop)
.Leer notas:.say .notes read $input(ALL o número de nota,ei,EggDrop)
.Borrar notas:.say .notes erase $input(ALL o número de nota,ei,EggDrop)
.Cambiar Topic:.say .topic $input(Topic del Canal,ei,EggDrop)
.Dar Op:.say .op $input(Nick,ei,EggDrop)
.Quitar Op:.say .deop $input(Nick,ei,EggDrop)
.Dar Voz:.say .voice $input(Nick,ei,EggDrop)
.Quitar Voz:.say .devoice $input(Nick,ei,EggDrop)
.Invitar:.say .invite $input(Nick,ei,EggDrop)
.Patear:.say .kick $input(Nick,ei,EggDrop) $input(Motivo,ei,EggDrop)
.PatearBanear:.say .kickban $input(Nick,ei,EggDrop) $input(Motivo,ei,EggDrop)
.Listar Bans:.say .bans all
.Adicionar Ban:.say .+ban $input(Mascara,ei,EggDrop) $input(Comentario,ei,EggDrop)
.Borrar Ban:.say .-ban $input(Mascara,ei,EggDrop)
.Borrar Bans:.say .resetbans
.Who:.say .who $input(Bot - Enter para bot actual,ei,EggDrop)
.Whois:.say .whois $input(nick o handle,ei,EggDrop)
.Whom:.say .whom $input(#Canal - Enter para bot actual,ei,EggDrop)
.Salir del Bot:.say .quit $input(Entre el comentario,ei,EggDrop)
.Masters
..Grabar datos:.say .save
..Hacer Respaldo:.say .backup
..Ver Estado:.say .status
..Ver Estado Total:.say .status all
..Ver Trafico:.say .traffic
..Estado del DCC:.say .dccstat
..Recargar Usuarios:.say .reload
..Recargar Bot:.say .rehash
..ReIniciar Bot:.say .restart
..Tiempo Corriendo:.say .uptime
..Listar Usuarios:.say .tcl userlist
..Listar Servers:.say .servers
..Cambiar Atributos:.say .chattr $input(Nick o Handle,ei,EggDrop) $input(Nuevos atributos,ei,EggDrop)
..Adicionar Usuario:.say .+user $input(Nick o Handle,ei,EggDrop) $input(Mascara,ei,EggDrop)
..Remover Usuario:.say .-user $input(Nick o Handle,ei,EggDrop)
..Listar Ignores:.say .ignores
..Adicionar Ignore:.say .+ignore $input(Mascara,ei,EggDrop) $input(Comentario,ei,EggDrop)
..Remover Ignore:.say .-ignore $input(Mascara,ei,EggDrop)
..Cambiar Comentario:.say .comment $input(Nick o Handle,ei,EggDrop) $input(Comentario,ei,EggDrop)
..Limpiar Cola:.say .clearqueue $input(mode - server - help - all,ei,EggDrop)
..Notica a todos:.say .banner $input(Mensaje a enviar,ei,EggDrop)
..Cambiar Clave Usuario:.say .chpass $input(Nick o Handle,ei,EggDrop) $input(Nueva Clave,pi,EggDrop)
..Cambiar Handle Usuario:.say .chhandle $input(Nick o Handle Antiguo,ei,EggDrop) $input(Nick o Handle Nuevo,ei,EggDrop)
..Adicionar Host:.say .+host $input(Nick o Handle,ei,EggDrop) $input(Host,ei,EggDrop)
..Remover Host:.say .-host $input(Nick o Handle,ei,EggDrop) $input(Host,ei,EggDrop)
..Adicionar Bot:.say .+bot $input(Nick o Handle,ei,EggDrop) $input(address:botport#[/userport#],ei,EggDrop) $input(Mascara,ei,EggDrop)
..Remover Bot:.say .-bot $input(Nick o Handle,ei,EggDrop)
..Cambiar Atributos de Bot:.say .botattr $input(Nick o Handle,ei,EggDrop) $input(Nuevos atributos,ei,EggDrop)
..Cambiar Direccion del Bot:.say .chaddr $input(Nick o Handle,ei,EggDrop) $input(address:botport#[/userport#],ei,EggDrop)
..Saltar Servidor:.say .jump $input(Servidor:puerto:clave o Enter,ei,EggDrop)
..Apagar Bot:.say .die $input(Mensaje a enviar,ei,EggDrop)
}

menu menubar,status {
-
Descargar Add-On EggDrop:.unload -rs caescript\addons\eggdrop.mrc
Paginas Eggdrop
.Página EggDrop:/run http://www.eggheads.org/
.FTP EggDrops:/run ftp://ftp.eggheads.org/pub
.Scripts EggDrop:/run http://www.egghelp.org/
.Bots en DALnet:/run http://www.dalnetayuda.org/bots/
}

