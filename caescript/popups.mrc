;
; #### Popups ####
;
menu menubar {
-
%version.caescript
.Configurar:/configurar
.Página CaeScript:/run http://www.caespock.org/ircsoftware/
.Ayuda CaeScript:/run " $+ $mircdir $+ caescript\caescript.chm $+ "
.Editar comandos ejecutables al inicio:/autoexec
.Editar archivo de carga/descarga de AddOns:/addons
.Editar Piropos:/run notepad.exe caescript\piropos.txt
.Editar mensajes de Salida y Frases:/run notepad.exe caescript\frases.txt
.Editar chistes:/run notepad.exe caescript\chistes.txt
-
Modos del Usuario
.--> Afuera (AWAY) <--:/afuera
.Cambiar de Nick:/nick $input(Que Nick deseas usar?,eq,CaeScript)
.Modos:/mode $me $input(Que modos deseas activar?,eq,CaeScript)
Formato de Texto
.Sin Formato:/texton
.Formato 1:/texto1
.Formato 2:/texto2
.Formato 3:/texto3
.Formato 4:/texto4
.Formato 5:/texto5
.Formato 6:/texto6
.Formato 7:/texto7
.Formato 8:/texto8
.Formato 9:/texto9
.Formato 10:/texto10
.Formato 11:/texto11
.Formato 12:/texto12
.Formato 13:/texto13
.Formato 14:/texto14
.Formato 15:/texto15
.Formato 16:/texto16
.Formato 17:/texto17
.Formato 18:/texto18
Libro de Direcciones:/abook
-
Descargar CaeScript:/descargar
Desconectarse:/cerrar
-
Módulos
$iif(%addondalnet == 1,$style(2)) Cargar Add-On DALnet:.load -rs caescript\addons\dalnet.mrc
$iif(%addoneggdrop == 1,$style(2)) Cargar Add-On EggDrop:.load -rs caescript\addons\eggdrop.mrc
-
}

menu channel {
%version.caescript:/ver
-
Modos del Usuario
.--> Afuera (AWAY) <--:/afuera
.Cambiar de Nick:/nick $input(Que Nick deseas usar?,eq,CaeScript)
.Modos:/mode $me $input(Que modos deseas activar?,eq,CaeScript)
Páginas
.DALnet:say La página oficial de DALnet es:2 http://www.dal.net/ .
.CaeScript:say La página oficial del CaeScript es:2 http://www.caespock.org/ircsoftware/ .
Agente Microsoft
.Cargar:/acargar
.Descargar:/adescargar
.Mostrar:/amostrar
.Ocultar:/aocultar
.Hablar:/ahablar
.Pensar:/apensar
.Mover:/amover
.Apuntar:/aapuntar
.Acción:/aaccion
-
Canal
.Info Canal:/channel #
.Baneados en #:/mode # +b
.Topic en #:/topic #
.Cambiar el Topic en #
..Topic sin dibujos:/topic # $input(Entre el mensaje del topic,eq,CaeScript)
..Topic Alas:.topic # ¯`°²º¤æ=¬«.,¸_ $input(Entre el mensaje del topic,eq,CaeScript) _¸,.»¬=æ¤º²°`¯
..Topic Angeles:.topic # ¯°º¤^Å^2¤º°¯°º¤^Å^2¤º°¯°º¤^Å^2¤º° $input(Entre el mensaje del topic,eq,CaeScript) °º¤^Å^¤º°¯°º¤^Å^¤º°¯°º¤^Å^¤º°¯
..Topic Estrellas:.topic # * ~.*.~.*.~.*.~.*.~.* $input(Entre el mensaje del topic,eq,CaeScript) *.~.*.~.*.~.*.~.*.~ *
..Topic Idas Venidas:.topic # ¸,ø¤°`°¤ø,¸¸,ø¤°`°¤ø,¸¸» {{{{{{ $input(Entre el mensaje del topic,eq,CaeScript) }}}}}} «¸,ø¤°`°¤ø,¸¸,ø¤°`°¤ø,
..Topic Montañas:.topic # ¸.·´¯`·.¸¸.·´¯`·.¸.·´¯`·.¸ $input(Entre el mensaje del topic,eq,CaeScript) ¸.·´¯`·.¸.·´¯`·.¸¸.·´¯`·.¸
..Topic Montañas 2:.topic # (¯`·.,¸¸.·´¯`·.¸¸.-> $input(Entre el mensaje del topic,eq,CaeScript) <-.¸¸.·´¯`·.¸¸.·´¯)
..Topic Nubes:.topic # ¸,ø¤º°'°º¤ø,¸¸,ø¤º°'°º¤ø,¸ $input(Entre el mensaje del topic,eq,CaeScript) ¸,ø¤º°'°º¤ø,¸¸,ø¤º°'°º¤ø,¸
..Topic Resaltado:.topic # (¯`·.¸¸.·´¯©º°¨¨°º© $input(Entre el mensaje del topic,eq,CaeScript) ©º°¨¨°º©¯`·.¸¸.·´¯)
..Topic Resaltado 2:.topic # (¯`·._)º(¯`·._)º(¯`·._ $input(Entre el mensaje del topic,eq,CaeScript) _.·´¯)º(¯`·._)º(_.·´¯)
..Topic Personas:.topic # ºÖº.¸¸.ºÔºÔº.¸¸.ºÖº.¸¸.» $input(Entre el mensaje del topic,eq,CaeScript) «.¸¸.ºÖº.¸¸.ºÔºÖº.¸¸.ºÖº
.Ver usuarios+Máscara en #:/who #
.Testear Canal
..Ping a #:/ctcp # ping
..Version a #:/ctcp # version
..Tiempo a #:/ctcp # time
.Clones en el Canal:.clonescan
Operador
.Proteccion AntiFlood
..Activar:/proteccion
..Desactivar:/proteccion2
.KickBan a Insultos
..Activar:/kbinsultos
..Desactivar:/kbinsultos2
.KickBan a Repetidores
..Activar:/kbrepetidores
..Desactivar:/kbrepetidores2
Mensajes
.Hola a #:/holas
.SuperHola a #:/superhola #
.SuperHola2 a #:/superhola2 #
.Ya llegue a #:/llegue
.Adios a #:/adios
.Msg a Ops en #:onotice $input(Entre el texto a enviar a los ops,eq,CaeScript)
.Msg a Ops+V en #:opsv $input(Entre el texto a enviar a los ops,eq,CaeScript)
.!ping automático
..Activar:/pingautomatico
..Desactivar:/pingautomatico2
.!chiste automatico
..Activar:/chisteautomatico
..Desactivar:/chisteautomatico2
.!frase automática
..Activar:/fraseautomatica
..Desactivar:/fraseautomatica2
Formato de Texto
.Sin Formato:/texton
.Formato 1:/texto1
.Formato 2:/texto2
.Formato 3:/texto3
.Formato 4:/texto4
.Formato 5:/texto5
.Formato 6:/texto6
.Formato 7:/texto7
.Formato 8:/texto8
.Formato 9:/texto9
.Formato 10:/texto10
.Formato 11:/texto11
.Formato 12:/texto12
.Formato 13:/texto13
.Formato 14:/texto14
.Formato 15:/texto15
.Formato 16:/texto16
.Formato 17:/texto17
.Formato 18:/texto18
Personales
.ASCII a #:/play # " $+ $sfile(%filtroascii,Escoge un ASCII,Mostrar) $+ " | .agentepensar Un poco de arte ASCII
.Sonido a #:/sound # " $+ $sfile($sound(wav),Escoge un Sonido,Tocar) $+ " $input(Mensaje para el sonido,eq,CaeScript)
.Chiste a #:/say  $+ %color.titulo1 $+ [ $+ %color.titulo2 $+ Chiste: $+ %color.titulo1 $+ ] $read( %filtrochistes ) | .agentepensar Hahaha buen chiste!
.Frase Célebre a #:/say  $+ %color.titulo1 $+ [ $+ %color.titulo2 $+ Frase Célebre: $+ %color.titulo1 $+ ] $read( %filtrofrases ) | .agentepensar Excelente frase!
.Abrazos a #
..Abrazar:say 12{{{{{{{5 # 12}}}}}}}
..Abrazar 2:/me 6®º°¨¨°º®4ABRAZO6®º°¨¨°º® 13 # 6®º°¨¨°º®4ABRAZO6®º°¨¨°º®
..Abrazo a todos:/me abraza a todos en 4{{{3 # 4}}}
..English
...Hugs for all:/me hugs everybody at 4{{{3 # 4}}}
...HugsHearts:say 4©6H4©6U4©6G4©6S4©10 # 4©6H4©6U4©6G4©6S4©
.Saludos a #
..Holas:/holas
..SuperHola a #:/superhola #
..SuperHola2 a #:/superhola2 #
..Chau:/adios
..Cinta:say 1,1 1,2 1,3 1,4 1,5 1,6 1,7 1,8 1,9 1,10 1,11 1,12 1,13 1,14 1,15 1,17 1,18 8,1  Hola amigos de # 1,1 1,2 1,3 1,4 1,5 1,6 1,7 1,8 1,9 1,10 1,11 1,12 1,13 1,14 1,15 1,17 1,18 1,19
..Colores:say Hola 12(4(12( 7§8§7§ 2¤4¤12¤13 # 12¤4¤2¤ 7§8§7§ 12)4)12)
.Mensajes con Colores a #
..Alas:say ¯`°²º¤æ=¬«.,¸_  # _¸,.»¬=æ¤º²°`¯
..Angeles:say 12¯°º¤4^Å^12¤º°¯°º¤4^Å^12¤º°¯°º¤4^Å^12¤º°¯6 # 12¯°º¤4^Å^12¤º°¯°º¤4^Å^12¤º°¯°º¤4^Å^12¤º°¯
..Angeles a cuidar:/me envia1 angeles guardiates para cuidar a todos los amigos de3 # ^Å^ ^Å^7 # 10 ~Å~ ~Å~6 # ^Å^ ^Å^5 # 10 ~Å~ ~Å~13 # 10 ^Å^ ^Å^12 # ~Å~ ~Å~9 # 10^Å^ ^Å^6 # 10~Å~ ~Å~2 # ^Å^ ^Å^14 # ~Å~ ~Å~
..Confetti:/me salta y lanza confetti al aire para todos los amigos de `~_-`.`~.-~-~;~`~ 4 ;`~`*~`;.~`;.*`;.`~;`~`*~`;.~`; 6 .*`;.`~;``*~.``;.9~``~`*~`;.~` 8 ;.*`; .`~`;`*~`;.~2 # ;.*`;.`~;`~ ;',`  `*~`;.~`;.*3`;;.~``~`*~`;.~`;.*`; .`~`; 9 `*~`;.~`;.*`;.`~;.*`;.`~;`~ ;',` `*~`;.~`;.*`;``~`*~`;.~`;.*`; . `~;~;`~`*~`;.~`;.*`;.`~;`~11 # `*~`;.~`.*`;.`~;`~`*`~-`.`~.-~ 13 -~;~`;.~`;.*`;.`~;`~`*~  `;.~`;.*`;.`~;`~`*~`;.~`;.*`;.
..Confetti y globos:/me lanza confetti y globos al aire para todos los amigos de # `;~'O~~~*`;.'O~~~~*`; # .'`~;`~`O~~~~*`;.'O~~~~*`;.'`~;`~`O~~~*`; #  .'O~~~~*`;.'`~;`~`O~~~~*`;.'O~~~~*` #  ;.'`~;`~`O~~~*`;.'O~~~~*`; # .'`~;`~`O~~~~*`;.'O~~~*`; # .'`~;`~`O~~~~*`;.'O~~~~*`; #  .'`~;`~`O~~~~*`;.'O~~~~*`; #  .'`~;`~`O~~~~ 
..Estrellas:say * ~.*.~.*.~.*.~.*.~.*  #  *.~.*.~.*.~.*.~.*.~ *
..Exclamacion:say 1,19!12¡6!4¡3!8¡11!13¡9!12¡6!4¡3!8¡4 * # * 1,18!3¡4!6¡12!9¡13!11¡8!3¡4!6¡12!9¡
..Flechas:/me 2 (¯`'·.¸(¯`'·.¸ _______________ ¸.·'´¯)¸.·'´¯) | /me 13 (¯`'·.¸(¯`'·.¸ ŸŸŸŸŸŸŸŸŸŸŸŸŸŸŸ ¸.·'´¯)¸.·'´¯) | /me 12 ----==>>>>-------> # ----==>>>>------> | /me 4 (_¸.·'´(_¸.·'´ ŸŸŸŸŸŸŸŸŸŸŸŸŸŸŸ `'·.¸_)`'·.¸_) | /me 8 (_¸.·'´(_¸.·'´ ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯`'·.¸_)`'·.¸_)
..Loco:say ¸,ø¤°`°¤ø,¸¸,ø¤°`°¤ø,¸¸» {{{{{{ #  }}}}}}«¸,ø¤°`°¤ø,¸¸,ø¤°`°¤ø,
..Mayor-Menor:say 0,1 <2>3<4>5<6>7<8>9<10>11<12>130-8 # 0- 12<11>10<9>8<7>6<5>4<3>2<0>0,1 
..Montañas:say ¸.·´¯`·.¸¸.·´¯`·.¸.·´¯`·.¸ # ¸.·´¯`·.¸.·´¯`·.¸¸.·´¯`·.¸
..Montones:say 13(¯`·.,¸¸.·´¯`·.¸¸.->13,11 #  13<-.¸¸.·´¯`·.¸¸.·´¯) (¯`'·.¸(¯`'·.¸ 13,11 #  13¸.·'´¯)¸.·'´¯)  (¯`'·.¸(¯`'·.¸13,11 #  13 ¸.·'´¯)¸.·'´¯) (_¸.·'´(_¸.·'´13,11 #  13 `'·.¸_)`'·.¸_)(_¸.·'´(_¸.·'´ 13,11 #   13`'·.¸_)`'·.¸_) (¯`·.,¸¸.·´¯`·.¸¸.->13,11 #  13 <-.¸¸.·´¯`·.¸¸.·´¯) (¯`'·.¸(¯`'·.¸ 13,11 #  13 ¸.·'´¯)¸
..Onda:say 4¸,ø¤º°'°º¤ø,¸¸,ø¤º°'°º¤ø,¸2 # 4¸,ø¤º°'°º¤ø,¸¸,ø¤º°'°º¤ø,¸
..Onda 2:say 2(¯`·.¸¸.·´¯©º°¨¨°º©4  #  2©º°¨¨°º©¯`·.¸¸.·´¯)
..Gente:say 5ºÖº.¸¸.ºÔºÔº.¸¸.ºÖº.¸¸.» # 5«.¸¸.ºÖº.¸¸.ºÔºÖº.¸¸.ºÖº
..Rueda:say 7(¯`·._)4º10(¯`·._)4º13(¯`·._2 # 13_.·´¯)4º10(¯`·._)4º7(_.·´¯)
..haha:say 0,2Ha!1,1x3,1Ha!1,1x4,1Ha!1,1x0,5Ha!1,1x0,6Ha!1,1x7,1Ha!1,1x8,1Ha!1,1x9,1Ha!1,1x10,1Ha!1,1x11,1Ha!1,1x12,1Ha!0,0x | say 0,2Ha!0,0x3,1Ha!0,0x4,1Ha!0,0x0,5Ha!0,0x0,6Ha!0,0x7,1Ha!0,0x8,1Ha!0,0x9,1Ha!0,0x10,1Ha!0,0x11,1Ha!0,0x12,1Ha!0,0x | say 0,2Ha!1,1x3,1Ha!1,1x4,1Ha!1,1x0,5Ha!1,1x0,6Ha!1,1x7,1Ha!1,1x8,1Ha!1,1x9,1Ha!1,1x10,1Ha!1,1x11,1Ha!1,1x12,1Ha!0,0x
..lol:say 4,1 LOL (ô¿ô) 8,1LOL (ô¿~) 9,1LOL (~¿~) 13,1LOL (~¿ô) 4,1LOL (ô¿ô) 
.Bebidas,Cigarros y Chocolates a #
..7UP:/me ofrece a los amigos de2 # un vaso de 15,15!1,140,3 74,3°0,3UP 15,15!
..Coca-Cola:/me ofrece a los amigos de2 # un vaso de 15,15!1,140,4 Coca-Cola 15,15!
..Salvietti:/me invita a los amigos de # una fria 8,3 Salvietti 
..Sodas:/me pregunta ... alguien quiere una soda?6??? 15,15!1,148,3 Salvietti 15,15!.... 15,15!1,140,3Sprite15,15!...... 15,15!0,4 Coke 1,15 .....15,15!1,140,3 74,3°0,3UP 15,15! .. 4 ....14,14!4,15 P12,15e1,15p4,15s12,15i 14,14! . ....1,15 0,4 Diet 1,15  ...15,15!8,5Fanta15,15!.... 15,15!0,6CokaQuina15,15!... 4  .. 15,15!4,12PepCola15,15!... 15,15!15,5Cascada15,15! 4
..Cerveza boliviana:/me invita una fina cerveza Boliviana a todos los amigos de # | /sound # beer.wav Una cerveza para todos!
..Cerveza fría:/me se levanta y pasa una cerveza bien fría a los amigos de # .. ¡Salud! | /sound # beer.wav Una cerveza para todos!
..Ron:/me ofrece un vaso de Ron c[_] para los amigos de #
..Café para el frio:/me invita un café caliente a los amigos de # 10,5(_)10Þ para que se calienten en este frío día.
..Café para no dormir:/me invita un café caliente a los amigos de # 10,5(_)10Þ para que no se duerman.
..Cigarro:/me invita un cigarro a los amigos de # 5()¯¯¯¯¯)¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯)4)~
..Snikers:/me invita a los amigos de # un 1,1 0,5 Snikers 1,1 ! Yummy!
..Mily Way:/me invita a los amigos de # un 15,15 9,1 Milky Way 15,15 ! Yummy!
..Kit Kat:/me invita a los amigos de # un 15,15 0,4 Kit Kat 15,15 ! Yummy!
.Cintas a #
..Negra:say 1,1 1,2 1,3 1,4 1,5 1,6 1,7 1,8 1,9 1,10 1,11 1,12 1,13 1,14 1,15 1,17 1,18 8,1 $input(Ingresa el texto,eq,CaeScript) 1,1 1,2 1,3 1,4 1,5 1,6 1,7 1,8 1,9 1,10 1,11 1,12 1,13 1,14 1,15 1,17 1,18 1,19
..Azul Oscuro:say  0,15 0,14 0,13 0,12 0,11 0,10 0,9 0,8 0,7 0,6 0,5 0,4 0,3 0,2 0,2 $input(Ingresa el texto,eq,CaeScript) 0,1 0,2 0,3 0,4 0,5 0,6 0,7 0,8 0,9 0,10 0,11 0,12 0,13 0,14 0,15 
..Verde Oscuro:say  0,15 0,14 0,13 0,12 0,11 0,10 0,9 0,8 0,7 0,6 0,5 0,4 0,3 0,2 0,3 $input(Ingresa el texto,eq,CaeScript) 0,1 0,2 0,3 0,4 0,5 0,6 0,7 0,8 0,9 0,10 0,11 0,12 0,13 0,14 0,15 
..Rojo:say  0,15 0,14 0,13 0,12 0,11 0,10 0,9 0,8 0,7 0,6 0,5 0,4 0,3 0,2 0,4 $input(Ingresa el texto,eq,CaeScript) 0,1 0,2 0,3 0,4 0,5 0,6 0,7 0,8 0,9 0,10 0,11 0,12 0,13 0,14 0,15 
..Cafe:say  0,15 0,14 0,13 0,12 0,11 0,10 0,9 0,8 0,7 0,6 0,5 0,4 0,3 0,2 0,5 $input(Ingresa el texto,eq,CaeScript) 0,1 0,2 0,3 0,4 0,5 0,6 0,7 0,8 0,9 0,10 0,11 0,12 0,13 0,14 0,15 
..Purpura:say  0,15 0,14 0,13 0,12 0,11 0,10 0,9 0,8 0,7 0,6 0,5 0,4 0,3 0,2 0,6 $input(Ingresa el texto,eq,CaeScript) 0,1 0,2 0,3 0,4 0,5 0,6 0,7 0,8 0,9 0,10 0,11 0,12 0,13 0,14 0,15 
..Amarillo Oscuro:say  0,15 0,14 0,13 0,12 0,11 0,10 0,9 0,8 0,7 0,6 0,5 0,4 0,3 0,2 0,7 $input(Ingresa el texto,eq,CaeScript) 0,1 0,2 0,3 0,4 0,5 0,6 0,7 0,8 0,9 0,10 0,11 0,12 0,13 0,14 0,15 
..Amarillo:say  0,15 0,14 0,13 0,12 0,11 0,10 0,9 0,8 0,7 0,6 0,5 0,4 0,3 0,2 1,8 $input(Ingresa el texto,eq,CaeScript) 0,1 0,2 0,3 0,4 0,5 0,6 0,7 0,8 0,9 0,10 0,11 0,12 0,13 0,14 0,15 
..Verde:say  0,15 0,14 0,13 0,12 0,11 0,10 0,9 0,8 0,7 0,6 0,5 0,4 0,3 0,2 1,9 $input(Ingresa el texto,eq,CaeScript) 0,1 0,2 0,3 0,4 0,5 0,6 0,7 0,8 0,9 0,10 0,11 0,12 0,13 0,14 0,15 
..Agua:say  0,15 0,14 0,13 0,12 0,11 0,10 0,9 0,8 0,7 0,6 0,5 0,4 0,3 0,2 0,10 $input(Ingresa el texto,eq,CaeScript) 0,1 0,2 0,3 0,4 0,5 0,6 0,7 0,8 0,9 0,10 0,11 0,12 0,13 0,14 0,15 
..Oceano:say  0,15 0,14 0,13 0,12 0,11 0,10 0,9 0,8 0,7 0,6 0,5 0,4 0,3 0,2 1,11 $input(Ingresa el texto,eq,CaeScript) 0,1 0,2 0,3 0,4 0,5 0,6 0,7 0,8 0,9 0,10 0,11 0,12 0,13 0,14 0,15 
..Azul:say  0,15 0,14 0,13 0,12 0,11 0,10 0,9 0,8 0,7 0,6 0,5 0,4 0,3 0,2 0,12 $input(Ingresa el texto,eq,CaeScript) 0,1 0,2 0,3 0,4 0,5 0,6 0,7 0,8 0,9 0,10 0,11 0,12 0,13 0,14 0,15 
..Rosado:say  0,15 0,14 0,13 0,12 0,11 0,10 0,9 0,8 0,7 0,6 0,5 0,4 0,3 0,2 0,13 $input(Ingresa el texto,eq,CaeScript) 0,1 0,2 0,3 0,4 0,5 0,6 0,7 0,8 0,9 0,10 0,11 0,12 0,13 0,14 0,15 
..Rojo Amarillo:.say 16,8%,4,8`%8,4%,5,4`%4,5%,17,5`%5,17%,8,17 $input(Ingresa el texto,eq,CaeScript) 5,17`%17,5%,4,5`%5,4%,8,4`%4,8%,1
..Estrellado:.say 12*®*´¯`*.¸¸.*´¯`*(4 $input(Ingresa el texto,eq,CaeScript) 12)*´¯`*.¸¸.*´¯`*©*
..Rombos:.say 7,1>4>5> 15,14<1>15,14<1>15,14<1>4,1[9 $input(Ingresa el texto,eq,CaeScript) 4]15,14<1>15,14<1>15,14<1>7,1 <4<5< 
..Flechado:.say 4=====12>>>>1 $input(Ingresa el texto,eq,CaeScript) 12<<<<4======
..Cuadrados:.say 2,16·*“2,15“2,14“2,1“5,14,1“7“8“9“11“12“2“14 011 $input(Ingresa el texto,eq,CaeScript) 2“12“11“9“8“7“4“5“2“2,14“2,15“2,16“*·12 
..Armonia:.say 4ø6¤°`°¤4ø1 $input(Ingresa el texto,eq,CaeScript) 4ø9¤°`°¤4ø
..Dorado:.say 8,1®8,14®8,15®8,0®8,15®8,14®8,1® 0 $input(Ingresa el texto,eq,CaeScript) 8,1®8,14®8,15®8,0®8,15®8,14®8,1®
..Olas Marinas:.say 8¸.·`¯`7·.¸¸.·4`¯`·6 $input(Ingresa el texto,eq,CaeScript) 4·`¯`7·.¸¸.·8`¯`·.¸
..Multicolor:.say 6,12|12,6|13,6|6,13|4,13|13,4|7,4|4,7|8,7|7,8|9,8|8,9|10,9|9,10|12,10|10,12|4,1  $input(Ingresa el texto,eq,CaeScript) 10,12|12,10|9,10|10,9|8,9|9,8|7,8|8,7|4,7|7,4|13,4|4,13|6,13|13,6|12,6|6,12|0,0
..Aleman:.say 4,1\1,4\7,4\4,7\8,7\7,8\0,8\8,0\0,0-15,0\0,15\14,15\15,14\1,14\14,1\1,1-0,1 $input(Ingresa el texto,eq,CaeScript) 1,1-14,1/1,14/15,14/14,15/0,15/15,0/0,0-8,0/0,8/7,8/8,7/4,7/7,4/1,4/4,1/ 11,1
..Amarillo Negro:.say 8,1€1,8€8,1€1,8€8,1€1,8€8,1€1,8€8,1€1,8€8,1€1,8€ $input(Ingresa el texto,eq,CaeScript) 1,8€8,1€1,8€8,1€1,8€8,1€1,8€8,1€1,8€8,1€1,8€8,1€
..Plomiso:.say 0,15(14,15)15,14(1,14)0,115,1_¿¿_¦®4,10,1 8 $input(Ingresa el texto,eq,CaeScript) 4,115,1®¦_¿¿_0,15(14,15)15,14(1,14)
..Verde:.say 9,0/0,9\3,9/9,3\1,3/3,1\9,1 0 $input(Ingresa el texto,eq,CaeScript) 3,1/1,3\9,3/3,9\0,9/9,0\
..Caballos de Mar:.say 15,2{15,2§15,3{15,3§15,4{15,4§15,5{15,5§15,6{15,6§15,7{15,7§15,8{15,8§1,8 $input(Ingresa el texto,eq,CaeScript) 15,8§15,8}15,7§15,7}15,6§15,6}15,5§15,5}15,4§15,4}15,3§15,3}15,2§15,2}
..Rosas:.say 15,15!14,14!3,1 '9-<<--7<4@ 8 $input(Ingresa el texto,eq,CaeScript) 1,1 4@7>9-->>-3,1' 14,14!15,15i
..Sonrisas:.say 1,8:)1,12:)1,4:)1,13:)1,11:)1,9:)1 $input(Ingresa el texto,eq,CaeScript) 1,9(:1,11(:1,13(:1,4(:1,12(:1,8(:
.English
..Hi to #
...WaveAll:say 1,1'13,13.1,1'8,8.1,1'9,9.13,1 $me 9~~Waves~~ 8Hello9 to13,1 Everyone 9,9.1,1'8,8.1,1'13,13.1,1'
...Waves:/me waves 4,2 - 0,4 Hello everybody 4,2 -  at #
...Symbols:say 7,1  ·4º8´4º7·8,1 $me says Hi to everyone! 7,1·4º8´4º7·0,1 
..Bye to #
...ByeAll:say 13,13 0,1*12,12 15,1 ~0,1 GoodBye 15,1~ 13,13 0,1*12,12 15,1 ~0,1 Everyone! 15,1~13,13 0,1*12,12.
...<*>Bye:say 1,1x11,1<8*11>1,1x11,1<8*11>0,1 GoodBye  EvErYoNe!!1x11,1<8*11>1,1x11,1<8*11> 
...RWBye:say 12,12.0,0.4,4.0,1 * 4,4.0,0.12,12.0,1  GooÐßyë ËvëRyoÑë  12,12.0,0.4,4.0,1 * 4,4.0,0.12,12.
...4Bye:say 1,1'6,6'1,13 Bye 6,6'1,1'0,0'1,1'10,10'1,11 Bye 10,10'1,1'0,0'1,1'15,15'1,14 Everyone! 15,15'1,1'0,0'1,1'10,10'1,11 Bye 10,10'1,1'0,0'1,1'6,6'1,13 Bye 6,6'1,1'
...HopBye:say 1,1'3,3'9,9'3,3'9,1 «^0°°9^» 3,3'9,9'3,3'0,1 Time For Me to 9Hop0 On Outta Here!1,1'3,3'9,9'3,3'9,1 «^0°°9^» 3,3'9,9'3,3'01,1'
...TealBye:say 1,1'10,10.1,1'10,11-1,1'10,10.1,1'0,0'1,1'10,10.1,1'1,11 Bye Everyone 1,1'10,10.1,1'0,0'1,1'10,10.1,1'10,11-1,1'10,10.1,1'
...StripeBye:say 1,1'7,7'8,8'7,7'5,5'4,4'5,5'0,2 Time to go! See ya Later! 5,5'4,4'5,5'7,7'8,8'7,7'1,1'
...BuzzOff:say 1,1'8,8'1,1'8,8'1,1. 15,1-·´¯`·.¸¸.· 0,1Time for me to Buzz Off! See Ya! 1,1'8,8'1,1'8,8'1,1'
...ZzZz:say 1,1'12,12.1,1'12,0 1,1'12,12'1,1'0,0'0,2 *ZzZ* It's getting to be SLeePy TiMe, Nite Nite 0,0 1,1'12,12.1,1'12,0 1,1'12,12'1,1'0,0'
...Bedtime:say 2,2.7,7.2,2'8,2~*~2,2'7,7.2,2.8,2 *pout* It's past my bedtime, 'Nite Everyone 2,2.7,7.2,2'8,2~*~2,2'7,7.2,2.
..Doh!(self-slams) to #
...done2desrv:say 13,13.1,1.6,6.1,1.10,10.1,1.14,14.0,1  WHaT HaVe 11I0 DoNe To DeSeRVe 11THIS0 ??? 14,14.1,1.10,10.1,1.6,6.1,1.13,13.
...embarrassing:say 4,4.1,1..4,4.4,0 õ¿õ 4,4.1,1..4,4.4,1 *Blush*0 That's embarrassing! 4,1 *Blush* 4,4.1,1..4,4.4,0 õ¿õ 4,4.1,1..4,4.
...getfixed:say 1,1.7,7.1,1.0,0.1,1.8,7 *oops* 1,1.0,0.1,1.7,7.1,1.8,1 Someday I've got to get that fixed... 1,1.7,7.1,1.0,0.1,1.8,7 *oops* 1,1.0,0.1,1.7,7.1,1.
...myfault:say 12,12.1,8 :oÞ 12,12.112,9 ...Of course4 $1 $+ !!  12It's 4ALWAYS 12my fault!!! 12,12.1,8 :oÞ 12,12.
...shuts up:say 1,1.8,8.11,11.1,1.0,1 $me shuts up right about 8,1N 11,1o9,1 W 8!! 1,1.11,11.8,8.1,1.
...tech-diff:say 1,1B1,81,8@1,4#1,12$1,8%1,4$1,9@1,1B0,1 Ut-Oh Teknikal Diffikulties!! 1,1B1,81,8@1,4#1,12$1,8%1,4$1,9@1,1B
...whatdone:say 1,1.1,9?1,1.1,11¿1,1.1,8?1,1.0,1  Oh Dear GåWÐ What have I ÐöÑé ?¿? 1,1.1,9?1,1.1,11¿1,1.1,8?1,1.0
...whyme:say 1,1.1,10¿1,1.0,6?1,1.1,14¿0,1  Why me? Why ALWAYS me? 1,14¿1,1.0,6?1,1.1,10¿1,1.
...WowHurt:say 1,1.1,8 @#$*%& 1,1.1,0 WOW that HuRt !! 1,1.1,8 @#$*%& 1,1.1
.Exclamacion:say $input(Ingresa el texto,eq,CaeScript) $+ !¡!¡!¡!¡!¡!¡!¡!¡!¡!¡!¡ 
.Tinta:say Oo14ooh 15n14o creo qu15e mi 14te15cl14ad15o se es14t15a quedando si14n 15tinta!!!
.Pregunta:say $input(Ingresa la pregunta,eq,CaeScript) $+ ?¿?¿?¿?¿?¿?¿?¿
-
Salir del Canal:/part 
Limpiar:/clear
}

menu nicklist {
%version.caescript:/ver
-
Quien es $snick(#,1)?:/whois $$1
Quien es $snick(#,1) $snick(#,1)?:/whois $$1 $$1
Canales Comunes:/canalescomunes $$1
Privado con $snick(#,1):/query $$1
UWho $snick(#,1):/uwho $$1
Ping $snick(#,1):/ping $$1
Operador
.Ops a $snick(#,1)
..Dar @:/mode # +o $$1
..Quitar @:/mode # -o $$1
.Voz a $snick(#,1)
..Dar +:/mode # +v $$1
..Quitar +:/mode # -v $$1
.Patear/kick a $snick(#,1)
..Vuelve despues:/kick # $$1 Vuelve después de un rato, ya?
..Flood:/kick # $$1 La pantalla es gratis, no te la compraste! Es de todos! Para el Flood!
..Clones:/kick # $$1 Sabias que aca no se permiten clones, o tu mismo eres un clone?
..Palabrotas:/kick # $$1 Que linda bocota habías tenido, ahora moderate!
..Mayusculas:/kick # $$1 El uso de mayusculas no esta permitido en este canal!
..Mensajes Automaticos:/kick # $$1 Tu script esta enviando mensajes automáticos! Afuera!
..No a gusto:/kick # $$1 Ya que no estas a gusto aca, entonces mejor retirate!
..Fregar:/kick # $$1 Anda a fregar a otro lado, ya? 
..Con Motivo:/kick # $$1 $input(Motivo del kick,eq,CaeScript)
..Kick/Ban:/ban # $$1 %tipoban | /kick # $$1 Afueraaaaaa!
..Kick/Ban Con Motivo:/ban # $$1 %tipoban | /kick # $$1 $input(Motivo del KickBan,eq,CaeScript)
.Baneos a $snick(#,1)
..Flood:/ban # $$1 %tipoban | /kick # $$1 Deja de floodear! Afuera!
..dmsetup.exe:/ban # $$1 %tipoban | /kick # $$1 DMSetup.exe lee el privado que te envie | .raw notice $$1 :Para más información ve a  http://www.nohack.net/ y ve como borrar ese virus. Más información en http://www.nohack.net/ .
..Invitaciones:/ban # $$1 %tipoban | /kick # $$1 Aca no se permiten las invitaciones! Afuera!
..Malcriado:/ban # $$1 %tipoban | /kick # $$1 Baneado por Malcriado - Fuera de acá!
..Virus:/ban # $$1 %tipoban | /kick # $$1 Tienes el virus $input(Nombre del virus,eq,CaeScript) lee el privado que te envie | .raw notice $$1 :Para más información ve a http://www.nohack.net/ y encuentra como borrar este virus.
..Script.ini:/ban # $$1 %tipoban | /kick # $$1 Script.ini lee el privado que te envie | .raw notice $$1 :Por favor teclea los siguientes comandos AHORA 4/unload -rs script.ini luego 4/remove script.ini y luego ALT-F4 para borrar tu virus. Más información en http://www.nohack.net/ .
..Waso:/ban # $$1 %tipoban | /kick # $$1 Baneado por waso - Sal de mi vista!
..AntiClones(PortServer):/ban # $$1 2
..AntiNick(Nick):/ban # $$1 9
..AntiServer(Server):/ban # $$1 4
..Kick/Ban:/ban # $$1 %tipoban | /kick # $$1 Afueraaaaaa!
..Kick/Ban Con Tiempo:/ban -u $+ %tiempobantemporal # $1- %tipoban | /kick # $1- Ban Temporal de $calc( %tiempobantemporal /60) Minutos - $input(Mensaje a enviar,eq,CaeScript)
..Kick/Ban Con Motivo:/ban # $$1 %tipoban | /kick # $$1 $input(Motivo del KickBan,eq,CaeScript)
-
Usuario
.Silencio
..Listar:/silence
..Adicionar a $snick(#,1):/silence + $+ $$1
..Borrar a $snick(#,1):/silence - $+ $$1
.Notify
..Listar:/notify -l
..Adicionar a $snick(#,1):/notify $$1 $input(Nota adicional para el notify,eq,CaeScript)
..Borrar a $snick(#,1):/notify -r $$1
.-
.Resolver IP de $snick(#,1):/dns $$1
.Trace a $snick(#,1):/trace $$1
.Stats L a $snick(#,1):/stats L $$1
.Comunicación
..Mensaje a $snick(#,1):/msg $$1 $input(Mensaje a enviar,eq,CaeScript)
..Noticia a $snick(#,1):/notice $$1 $input(Mensaje a enviar,eq,CaeScript)
CTCP - Testear usuario
.Ping a $snick(#,1):/ctcp $$1 ping
.Info Usuario a $snick(#,1):/ctcp $$1 userinfo
.Info Cliente a $snick(#,1):/ctcp $$1 clientinfo
.Versión Cliente a $snick(#,1):/ctcp $$1 version
.Finger a $snick(#,1):/ctcp $$1 finger
.Hora a $snick(#,1):/ctcp $$1 time
DCC 
.Chat a $snick(#,1):/dcc chat $$1
.Enviar a $snick(#,1):/dcc send $$1
.DccAllow
..Abilitar a $snick(#,1):/dccallow + $+ $$1
..Desabilitar a $snick(#,1):/dccallow - $+ $$1
..Lista:/dccallow list
..Ayuda:/dccallow help
Personales
.ASCII a $snick(#,1):play $$1 " $+ $sfile(%filtroascii,Escoge un ASCII,Mostrar) $+ " | .agentepensar Un poco de arte ASCII
.Sonido a $nick(#,1):/sound $$1 " $+ $sfile($sound(wav),Escoge un Sonido,Tocar) $+ " $input(Mensaje para el sonido,eq,CaeScript)
.Chiste a $snick(#,1):/msg $$1  $+ %color.titulo1 $+ [ $+ %color.titulo2 $+ Chiste: $+ %color.titulo1 $+ ] $read( %filtrochistes ) | .agentepensar Hahaha buen chiste!
.Frase Célebre a $snick(#,1):/msg $$1  $+ %color.titulo1 $+ [ $+ %color.titulo2 $+ Frase Célebre: $+ %color.titulo1 $+ ] $read( %filtrofrases ) | .agentepensar Excelente frase!
.Piropo a $snick(#,1):/msg $$1 $read( %filtropiropos ) | .agentepensar Que lindo ... :)
.Poema a $snick(#,1):play $$1 " $+ $sfile(%filtropoemas, Escoge un Poema, Mostrar) $+ " | .agentepensar Estos poemas nos inspiran la vida!
.Bienvenido a $snick(#,1)
..Caja:say 4,4 $$1  | say 8,4 $$1 1,1!1,0 Bienvenido(a) | say 4,4 $$1 1,1!1,0 a | say  1,1 $$1 1,0 #
..Vengas:say (¯`·.¸¸.-> Hola $$1 Feliz de que vengas por # ! <-.¸¸.·´¯)
..Feliz:say 8(1,8:)8)8(1,8:)8)8(1,8:)8)8(1,8:) Feliz de verte $$1 8(1,8:)8)8(1,8:)8)8(1,8:)8)8(1,8:)8)
..Presentate:say Hola $$1 bienvenido(a) al canal # Por favor presentate, queremos conocerte.
..Abrazo de bienvenida:/me te da un abrazo de bienvenida 12{{{5 $$1 12}}} Que la pases bien en # .
.Hola a $snick(#,1)
..Cinta:say 1,1 1,2 1,3 1,4 1,5 1,6 1,7 1,8 1,9 1,10 1,11 1,12 1,13 1,14 1,15 1,17 1,18 8,1 Hola $$1 1,1 1,2 1,3 1,4 1,5 1,6 1,7 1,8 1,9 1,10 1,11 1,12 1,13 1,14 1,15 1,17 1,18 1,19
..Colores:say Hola 12(4(12( 7§8§7§ 2¤4¤12¤13 $$1 12¤4¤2¤ 7§8§7§ 12)4)12)
..Arrobas:say 1,1xx8,1·12,1º9,1<4,1©9,1>12,1º8,1·15,1=8,1·12,1º9,1<4,1©9,1>12,1º8,1·1,1x0,1 Hola $$1 1,1x8,1·12,1º9,1<4,1©9,1>12,1º8,1·15,1=8,1·12,1º9,1<4,1©9,1>12,1º8,1·1,1xx
..Sonrisa:say 1,1.1,8 :o) 11,1.1,4 HoLa 1,1.0,12 $$1 1,1.1,8 :o) 1,1.0,12 $$1 1,1.1,4 HoLa 1,1.1,8 :o) 1,1.
..Blur:say 4,4'5,5'8,8'7,7'2,2'0,2*2,2'7,7'8,8'5,5'4,4'0,0'4,4'5,5'8,8'7,7'2,2'0,2 Hola $$1 Que bueno verte! 2,2'7,7'8,8'5,5'4,4'0,0'4,4'5,5'8,8'7,7'2,2'0,2*2,2'7,7'8,8'5,5'4,4'
..SuperHola:/superhola $$1
..SuperHola2:/superhola2 $$1
..English
...HiSmile:say 1,1.1,8 :o) 11,1.1,4 HëLLø 1,1.0,12 $$1 1,1.1,8 :o) 1,1.0,12 $$1 1,1.1,4 HëLLø 1,1.1,8 :o) 1,1.
...Howru:say 01,01.01,04 HeLLo 01,01.01,12 $$1 01,01.01,08 HoW 01,01.01,09 ArE 01,01.01,13 YoU 01,01.01,11 ToDaY? 01,01.01,12
...Wherebeen:say 12,0 $$1 !! 13,00WHERE12,00 have 13,00YoU12,00 been?!?! (I missed you!)
.-=Bienvenido(a) de nuevo $snick(#,1)=- 
..Cinta:say 1,1.11,11.1,1..11¤¤0¥11¤¤0¥11¤¤0¥11¤¤0¥11¤¤1,1.11,11.1,1.0,1 Bienvenido(a) de nuevo $$1 1,1.11,11.1,1..11¤¤0¥11¤¤0¥11¤¤0¥11¤¤0¥11¤¤1,1.11,11.1,1.
..Puntos:say 12,01 ·09,01°04,01·08,01°12,01·09,01°04,01·08,01°12,01·8,1 Bienvenido(a) de nuevo $$1 12,1·08,01°04,01·09,01°12,01·08,01°04,01·09,01°12,01· 
..Miren quien:say 4 Hey!!! 12Miren quien ha vuelto!!04,0 :Þ12 $$1 4<--
..Rarito:say 10,01 »08,01·10,01»08,01·10,01»08,01·10,01»8,1 Bienvenido(a) de nuevo $$1 10,1»08,01·10,01»08,01·10,01»08,01·10,01» 
..English
...YAY:say 1,1'13,13'1,1'6,6'0,6*YaY* 1,1'13,13'1,1'6,6'0,6 Wëlçõmë ßåçk $$1 1,1'13,13'1,1'6,6'0,6*YaY* 1,1'13,13'1,1'
...Teals:say 10,1 ·:11]0:11[10:·15 Welcome Back10,1 ·:11]0:11[10:·0 $$1 10,1·:11]0:11[10:· 15Welcome Back 10,1·:11]0:11[10:· 
...FadeX:say 1,1'13,6WB1,1'11,10WB1,1'15,14WB1,1'1,0 Wëlçõmë ßåçk $$1 1,1'15,14WB1,1'11,10WB1,1'13,6WB1,1'
...Checkin:say 1,1.4,5 Ö 1,1.8,7 Ö 1,1.11,2 Ö 1,1.0,1 Checkin' out your rear, errr return $$1 WB! 1,1.11,2 Ö 1,1.8,7 Ö 1,1.4,5 Ö 1,1.
...MadeIt:say 1,1.13,6·¥·1,1'9,3·¥·1,1'8,7·¥·1,1'1,15 GlåÐ ¥å MåÐë ¡t ßåçk $$1 $+ !! 1,1'8,7·¥·1,1'9,3·¥·1,1'13,6·¥·1,1.1,0 
.Chau $snick(#,1)
..Estrella:say 1,1.12,12x1,1 1,0 Adios 9,1 12,12x1,1¡4,1 *0*4* 0,12 $$1 4,1 *0,1*4,1* 12,12x1,1 1,0 Chau 1,1 12,12x1,1 0
..Estrella2:say 1,1  12,1*0,1·4,1*0,1·12,12 0,1 Chau 12,12 0,1==4,1*0,1==12,12 0,1 $$1 12,12 0,1·4,1*0,1·12,1*1,1  0
..Chausito:say 1,1'13,13.1,1'6,6.1,1'11,11.1,1'10,10.1,1'1,15·¨·1,1'10,10.1,1'11,11.1,1'6,6.1,1'13,13.1,1'1,15 Chausito $$1 1,1'13,13.1,1'6,6.1,1'11,11.1,1'10,10.1,1'1,15·¨·1,1'10,10.1,1'11,11.1,1'6,6.1,1'13,13.1,1'
..Te veo luego:say 1,1.3,3'12,12'7,1 ·:8,1:8,1*8,1:7:·12,12'3,3'1,1.8,1 Te veo luego  $$1 1,1.3,3'12,12'7,1 ·:8,1:8,1*8,1:7:·12,12'3,3'1,1.
..Beso Adios:/me le sopla a $$1 un beso de buenas noches  ¸,ø¤°`°¤ø,¸¸,ø¤°`°¤ø,¸¸»  4,0©
..Abrazo Adios:/me abraza fuertemente a $$1 y le pide que vuelva pronto !
..English
...Stars:say 1,1 12,12x1,1 1,0 GooD 9,1 12,12x1,1¡4,1*0*4* 0,12 $$1 4,1 *0,1*4,1* 12,12x1,1 1,0 ByE 1,1 12,12x1,1 0
...Starbye:say 1,1  12,1*0,1·4,1*0,1·12,12 0,1 GooÐß¥ë 12,12 0,1==4,1*0,1==12,12 0,1 $$1 12,12 0,1·4,1*0,1·12,1*1,1  0
...NinjaBye:say 1,1`0,13 0,2G0,2ø0,6ø0,12Ð0,2ß0,13¥0,12ë0,21,1.0,1 See Ya later $$1 1,1.0,13 0,2G0,2ø0,6ø0,12Ð0,2ß0,13¥0,12ë0,21,1`
...LilBye:say 1,1.3,3'12,12'7,1 ·:8,1:8,1*8,1:7:·12,12'3,3'1,1.8,1 See Ya Later $$1 1,1.3,3'12,12'7,1 ·:8,1:8,1*8,1:7:·12,12'3,3'1,1.
.Abrazos a $snick(#,1)
..Abrazar:say 12{{{{{{{5 $$1 12}}}}}}}
..Abrazar 2:say ..·´¯`·.¸.·´¯`·.¸¸.·´¯`·. ><((((º> $+ $$1 $+ <º))))>< ·´¯`·.¸¸.·´¯`·.¸.·´¯`·. 
..Abrazar 3:/me 6®º°¨¨°º®4ABRAZO6®º°¨¨°º®13 $$1 6®º°¨¨°º®4ABRAZO6®º°¨¨°º®
..Abrazo de cumple:/me abraza a 12{{5 $$1 12}}, 2Feliz Cumpleaños!!!
..Abrazo de oso:/me 5{~12.5_12.5~} 0,0**2 $$1 0,0**5{~12.5_12.5~} 2 Abrazo | /me 0,0-5( Y ) 0,0¤¤ 3 $$1 0,0¤¤5 ( Y )0,0- 3 de Oso | /me 5()13~*~5() 0,0* 4 $$1 0,0*5 ()13~*~5() 4 de | /me 5(_)-(_) 0,0¤ 6 $$1 0,0¤5 (_)-(_) 6 $me
..Abrazote:say 8,1 ·4,1·8:9{3{9{0 Un abrazote para ti $$1 9}3}9}8:4·8· 
..Abrazango:say 1,1'4,4'8,8'4,18:0{4 © 0}8:8 Un abrazango para ti $$1 $+ ! 8:0{4 © 0}8:48,8'4,4'1,1'
..English
...HappyHug:say 6,6.9,9.6,6.9,1 (6(9(0 $$1 9)6)9) 6,6.9,9.6,6.0,1 $me gives $$1 a 9happy13 to9 see13 ya0 hug! 6,6.9,9.6,6.9,1 (6(9(0 $$1 9)6)9) 6,6.9,9.6,6.0
...HugHrt:say 4©6H4©6U4©6G4©6S4©10 $$1 4©6H4©6U4©6G4©6S4©
...SuperHug:say 6 $me gives12 $$1 **3SuPeR5DupEr2GreAt6BiG3Ole7BeAr5HuGGieS12**
...Hog:say 1,1.15,15.1,1.13,0 <(12°13w12°13)> 1,1.15,15.1,1.0,0.0,1 $me Gives $$1 13HOGS0,1 (errr, or is that 0,1hugs?) 0,0.1,1.15,15.1,1.13,0 <(12°13w12°13)> 1,1.15,15.1,1.
...Tackle:say 1,1'0,6P1,1'0,2Ô1,1'0,3ü1,1'0,5Ñ1,1'0,10Ç1,1'0,14ë1,1'0,1 $me Tackles $$1 in a great BIG hug!! 1,1'0,14P1,1'0,10Ô1,1'0,5ü1,1'0,3Ñ1,1'0,2Ç1,1'0,6ë1,1'
...Huggable:say 1,1'7,7'8,8.7,7'7,1 *8,1o7,1* 7,7'8,8.7,7'1,1'8,1 You were8 VõTëÐ 8most8 HüGGåßlë8 $$1 1,1'7,7'8,8.7,7'7,1 *8,1o7,1* 7,7'8,8.7,7'1,1'
.Mensajes con Colores a $snick(#,1)
..Alas:say ¯`°²º¤æ=¬«.,¸_  $$1 _¸,.»¬=æ¤º²°`¯
..Angeles:say 12¯°º¤4^Å^12¤º°¯°º¤4^Å^12¤º°¯°º¤4^Å^12¤º°¯6 $$1 12¯°º¤4^Å^12¤º°¯°º¤4^Å^12¤º°¯°º¤4^Å^12¤º°¯
..Angeles a cuidar:/me envia1 angeles guardiates para cuidar a 3 $$1 ^Å^ ^Å^7 $$1 10 ~Å~ ~Å~6 $$1 ^Å^ ^Å^5 $$1 10 ~Å~ ~Å~13 $$1 10 ^Å^ ^Å^12 $$1 ~Å~ ~Å~9 $$1 10^Å^ ^Å^6 $$1 10~Å~ ~Å~2 $$1 ^Å^ ^Å^14 $$1 ~Å~ ~Å~
..Confetti:/me salta y lanza confetti al aire para  `~_-`.`~.-~-~;~`~ 4 ;`~`*~`;.~`;.*`;.`~;`~`*~`;.~`; 6 .*`;.`~;``*~.``;.9~``~`*~`;.~` 8 ;.*`; .`~`;`*~`;.~2 $$1 ;.*`;.`~;`~ ;',`  `*~`;.~`;.*3`;;.~``~`*~`;.~`;.*`; .`~`; 9 `*~`;.~`;.*`;.`~;.*`;.`~;`~ ;',` `*~`;.~`;.*`;``~`*~`;.~`;.*`; . `~;~;`~`*~`;.~`;.*`;.`~;`~11 $$1 `*~`;.~`.*`;.`~;`~`*`~-`.`~.-~ 13 -~;~`;.~`;.*`;.`~;`~`*~  `;.~`;.*`;.`~;`~`*~`;.~`;.*`;.
..Confetti y globos:/me lanza confetti y globos al aire para $$1 `;~'O~~~*`;.'O~~~~*`; $$1 .'`~;`~`O~~~~*`;.'O~~~~*`;.'`~;`~`O~~~*`; $$1  .'O~~~~*`;.'`~;`~`O~~~~*`;.'O~~~~*` $$1  ;.'`~;`~`O~~~*`;.'O~~~~*`; $$1 .'`~;`~`O~~~~*`;.'O~~~*`; $$1 .'`~;`~`O~~~~*`;.'O~~~~*`; $$1  .'`~;`~`O~~~~*`;.'O~~~~*`; $$1  .'`~;`~`O~~~~ 
..Estrellas:say * ~.*.~.*.~.*.~.*.~.*; $$1 ;*.~.*.~.*.~.*.~.*.~ *
..Exclamacion:say 1,19!12¡6!4¡3!8¡11!13¡9!12¡6!4¡3!8¡4 * $$1 * 1,18!3¡4!6¡12!9¡13!11¡8!3¡4!6¡12!9¡
..Flechas:/me 2 (¯`'·.¸(¯`'·.¸ _______________ ¸.·'´¯)¸.·'´¯) | /me 13 (¯`'·.¸(¯`'·.¸ ŸŸŸŸŸŸŸŸŸŸŸŸŸŸŸ ¸.·'´¯)¸.·'´¯) | /me 12 ----==>>>>-------> $$1 ----==>>>>------> | /me 4 (_¸.·'´(_¸.·'´ ŸŸŸŸŸŸŸŸŸŸŸŸŸŸŸ `'·.¸_)`'·.¸_) | /me 8 (_¸.·'´(_¸.·'´ ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯`'·.¸_)`'·.¸_)
..Loco:say ¸,ø¤°`°¤ø,¸¸,ø¤°`°¤ø,¸¸» {{{{{{ $$1  }}}}}}«¸,ø¤°`°¤ø,¸¸,ø¤°`°¤ø,
..Mayor-Menor:say 0,1 <2>3<4>5<6>7<8>9<10>11<12>130-8 $$1 0- 12<11>10<9>8<7>6<5>4<3>2<0>0,1 
..Montañas:say ¸.·´¯`·.¸¸.·´¯`·.¸.·´¯`·.¸ $$1 ¸.·´¯`·.¸.·´¯`·.¸¸.·´¯`·.¸
..Montones:say 13(¯`·.,¸¸.·´¯`·.¸¸.->13,11 $$1  13<-.¸¸.·´¯`·.¸¸.·´¯) (¯`'·.¸(¯`'·.¸ 13,11 $$1  13¸.·'´¯)¸.·'´¯)  (¯`'·.¸(¯`'·.¸13,11 $$1  13 ¸.·'´¯)¸.·'´¯) (_¸.·'´(_¸.·'´13,11 $$1  13 `'·.¸_)`'·.¸_)(_¸.·'´(_¸.·'´ 13,11 $$1   13`'·.¸_)`'·.¸_) (¯`·.,¸¸.·´¯`·.¸¸.->13,11 $$1  13 <-.¸¸.·´¯`·.¸¸.·´¯) (¯`'·.¸(¯`'·.¸ 13,11 $$1  13 ¸.·'´¯)¸
..Onda:say 4¸,ø¤º°'°º¤ø,¸¸,ø¤º°'°º¤ø,¸2 $$1 4¸,ø¤º°'°º¤ø,¸¸,ø¤º°'°º¤ø,¸
..Onda 2:say 2(¯`·.¸¸.·´¯©º°¨¨°º©4  $$1  2©º°¨¨°º©¯`·.¸¸.·´¯)
..Gente:say 5ºÖº.¸¸.ºÔºÔº.¸¸.ºÖº.¸¸.» $$1 5«.¸¸.ºÖº.¸¸.ºÔºÖº.¸¸.ºÖº
..Rueda:say 7(¯`·._)4º10(¯`·._)4º13(¯`·._2 $$1 13_.·´¯)4º10(¯`·._)4º7(_.·´¯)
..Feliz Cumpleaños:/me 0___-8 66666 | /me 0___-1__|||||__0_______4F e l i z | /me 0___1{._._._._.}0__4C u m p l e a ñ o s | /me 0_1__{._._._._.}__0______6 $$1 !!!! | /me 1`~~~~~~~~~~~~~`
..No Corras:/say 0~~~;:'.,';.,';".10=,1____\13Ø1_\\_____0____12 $2 | /say 0-~~~.;:',;.':,';(0,4o-10---8 Ferrari 10---0,4-o)0_____3no vayas | /say ~~~~;',';:',;',;':',(1,15@)======(1,15@)0______3tan rápido...
..Pon Musica:/say 0.4__0......4_ | /say 4/0...4`···´0...4)0||||||||||[1,,, 3 $$1 | /say 4| |0....4()0...1||||||||||[:::< 2 pon música | /say 4\__.···._)0||||||||||[1''' 2  en7 #
.Bebidas, Cigarros y Chocolates a $snick(#,1)
..7UP:/me ofrece a $$1 un vaso de 15,15!1,140,3 74,3°0,3UP 15,15!
..Coca-Cola:/me ofrece a $$1 un vaso de 15,15!1,140,4 Coca-Cola 15,15!
..Salvietti:/me invita a $$1 un vaso de una fria 8,3 Salvietti 
..Sodas:/me pregunta ... quieres una soda $$1 $+ ?6??? 15,15!1,148,3 Salvietti 15,15!.... 15,15!1,140,3Sprite15,15!...... 15,15!0,4 Coke 1,15 .....15,15!1,140,3 74,3°0,3UP 15,15! .. 4 ....14,14!4,15 P12,15e1,15p4,15s12,15i 14,14! . ....1,15 0,4 Diet 1,15  ...15,15!8,5Fanta15,15!.... 15,15!0,6CokaQuina15,15!... 4  .. 15,15!4,12PepCola15,15!... 15,15!15,5Cascada15,15! 4
..Cerveza boliviana:/me invita una fina cerveza Boliviana a $$1 | /sound $$1 beer.wav Una cerveza para ti!
..Cerveza fría:/me se levanta y pasa una cerveza bien fría a $$1 .. ¡Salud! | /sound $$1 beer.wav Una cerveza para ti!
..Ron:/me ofrece un vaso de Ron c[_] a $$1
..Café para el frio:/me invita un café caliente a $$1 10,5(_)10Þ para que se caliente en este frío día.
..Café para no dormir:/me invita un café caliente a $$1 10,5(_)10Þ para que no se duerma.
..Cigarro:/me invita un cigarro a $$1 5()¯¯¯¯¯)¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯)4)~
..Snikers:/me invita a $$1 un 1,1 0,5 Snikers 1,1 ! Yummy!
..Mily Way:/me invita a $$1 un 15,15 9,1 Milky Way 15,15 ! Yummy!
..Kit Kat:/me invita a $$1 un 15,15 0,4 Kit Kat 15,15 ! Yummy!
.Lapos y Golpes a $snick(#,1)
..Atrevido:/me aplica un lapo en la papada a $$1 , para que se le quite lo atrevido!!! | /sound $$1 golpe.wav Golpe!
..Conteste:/me aplica un lapo en la papada a $$1 , a ver si así me contestas!!! | /sound $$1 golpesito.wav Golpe!
..Golpear:/me golpea con una piedra la cabeza de $$1 . Eso seguramente te calmará un poco! | /sound $$1 haha.wav golpe!
..Golpear con objeto:/me golpea con $input(Entra el objeto - una pelota - un plato,eq,CaeScript) a $$1 . Espero esto te calme!!! | /sound $$1 golpes.wav golpe!
..Karatazo:/me aplica un karatazo a $$1 , ahora todo bien? | /sound $$1 karatazo.wav karatazo!
..Vulgar:/me aplica un lapo a $$1 , a ver si asi se te quita lo vulgar!!! | /sound $$1 golpe.wav golpe!
..Cabezazo:/me se pone un casco y ademas de tener cabeza dura toma impulso y aplica un cabezazo a $$1 | /sound $$1 boing2.wav cabezazo!
..Chancletazo:/me le saca la chancleta a la empleada de la casa, fuchiiii!!!! y aplica un chancletazo a $$1 | /sound $$1 boing.wav chancletazo!
..Batan:/me agarra el batan con el que la empleada muele la llajua y se lo lanza a $$1 listo? ya? te dolio? ya aprendiste? ahora deja de fregar! | /sound $$1 hmmph.wav batan!
..Piquete:/me unta sus dedos con llajua, ketchup y mayonesa y luego agarra la nariz de $$1 para luego aplicarle un piquete a los ojos! | /sound $$1 ouch.wav piquete!
..Sopapo:/me aplica un sopapo a $$1 por ser un sacasonapas! | /sound $$1 sopapo.wav sopapo!
..Warakazo:/me aplica un warakazo a $$1 , a ver si esto te calma un poco! | /sound $$1 vidrios2.wav warakazo!
..Barro:/me levanta del piso un poco de barro, lo amasa y se lo lanza a $$1 hehehehe :P quedaste mejor!!!! | /sound $$1 yuck.wav Barro!
..Botellazo:/me levanta la botella de refresco de la cocina y se la rompe en la cabeza a $$1 | /sound $$1 vidrio.wav Botellazo!
..Bazooka:/me agarra el bazooka y apunta al estómago de $$1 y zaz , ups! estas bien? | /sound $$1 bazuka.wav Bazukazo!
..Aerosol:/me agarra aerosol y comienza a pintar la cabeza de $$1 Hmm el nuevo look te queda mejor! | /sound $$1 aerosol.wav Aerosol!
..Bolsazo:/me agarra la bolsa de papas que recién compró del mercado y la lanza a la cabeza de $$1 . Estas bien? Ahora deja de molestar!!! | /sound $$1 ack.wav Bolsa de Papas!
..Martillazo:/me aplica un martillazo en la cabeza de $$1 ! Sigues con vida ? Estas ahí? Ahora contestame pues! | /sound $$1 boing2.wav martillazo!
..Grito:/me ya no aguanta más y grita fuerte al oido de $$1 | /sound $$1 gritito.wav chillido!
..Jalon de Orejas:/me agarra la orejita izquierda de $$1 y la jala tanto tanto tanto que $$1 queda con una orejita de dumbo! | /sound $$1 toing.wav Jalon_De_Orejitas!
..Monitor:/me agarra el monitor de su computadora y se lo lanza a $$1 Oye :( Se rompio mi pantalla!!! Vas a ver!!!!! | /sound $$1 toing.wav Monitor!
..Cohetillos:/me pone un paquete entero de cohetillos en el pantalón de $$1 Upsi, jajajaja estas sonando Plop plop!!! | /sound $$1 cohetillos.wav Cohetillos!!
..Rana:/me agarra una rana del charco y se la pone en el patalón a $$1 Jajajaja no saltes tanto!! | /sound $$1 toing.wav Rana!
..Tortazo:/me saca una torta grande con mucha crema y se la lanza a $$1 Ups, te ves bien asi de blanco! jajajaja | /sound $$1 nana.wav Tortazo!
..Araña:/me se acerca lentamente a4 $$1 y deja caer una araña en su polera 1«^»
..TNT:say 1,4 D I N A M I T A 5,0]5-------4.`,'.12 Toma 4 $$1 12 !!! 12, Agarra esto !!!
..English
...Arrows:/me takes careful aim...... and fires 4-»12»»»4»---->>12 ........ oohhh darn missed!! | /me sites his target again...... 4-»12»»»4»---->>12 ........ oohhh darn missed again!! | /me so does the 3rd!! 4-»12»»»4»---->>12 I must be shooting with my eyes closed!! | /me the fourth one hits it mark!! 4-»12»»»4»---->>12 $$1 's 4(_I_) 3,1R12,1I7,1g9,1h8,1T 4on target!!
...Frypan:say 3BOPS9 $$1 6over the head, with a 10cast iron frying pan 13(Kaboink!!)6...and tells9 $$1 6...3"You better behave yourself!!"
...Snowball:say 12throws a few snowballs at 4 $$1  | say 14-------~o15. . . . . . 12[ $$1 ]4(shoot,missed) | say 14---------------~o15. . . . . .12[ $$1 ]4(missed again) | say 14-----------------------10{!!SpLaT!! 6YES !!! <hehe>
...Spider:/me sneaks up behind4 $$1 12and slips a spider down his shirt 1«^» 
...Crab:/me sneaks up behind4 $$1 12and slips a crab down his pants 4,1«0°°4»8
...TNT:say 1,4 D Y N A M I T E 5,0]5-------4.`,'.12 Here 4 $$1 12 !!! 12, CATCH !!!
.Detalles de Amor a $snick(#,1)
..Hola:/me se apresura y dice 2Hola $$1 4@3)-{-{-- | /sound $$1 kiss.wav Smuak! | .agentepensar Hmm siento el amor en el aire!
..Me gustas mucho:/me te pregunta $$1 ... "Alguna vez te dije que me gustas mucho?" | .agentepensar Hmm siento el amor en el aire!
..Mi corazón al verte:/me te pregunta $$1 .. "Sabes que cada vez que te veo mi corazon late mas rápido pero al ritmo del amor?" | .agentepensar Hmm siento el amor en el aire!
..Caiste del cielo:/me te pregunta si te dolio? $$1 te dolio cuando caiste de las estrellas? | .agentepensar Hmm siento el amor en el aire!
..Bombón al sol:/me te pide $$1 que cuando haga sol camines por la sombra... los bombones como tú se derriten al sol :) | .agentepensar Hmm siento el amor en el aire!
..Belleza Pecado:/me dice $$1 si la belleza fuera pecado, tu tendrías el infierno asegurado :) | .agentepensar Hmm siento el amor en el aire!
..Espejo:/me dice $$1 si agarraras 11 rosas en frente a un espejo, verías las 12 cosas más bellas del mundo! :) | .agentepensar Hmm siento el amor en el aire!
..Flores:say 4@5>3-->-`->--,--- $$1 4@5>3-->-`->--,--- $$1 4@5>3-->-`->--,--- | .agentepensar Hmm siento el amor en el aire!
..Amor:/me 4©5A4©5M4©5O4©5R4©2 $$1 44©5L4©5O4©5V4©5E4© | .agentepensar Hmm siento el amor en el aire!
..Corre:/me corre rápidamente hacia $$1 para decirle delante de todo # ... Te amo y siempre estarás en mi corazon! :* | .agentepensar Hmm siento el amor en el aire!
..Musica:/musica $$1
..Corazones
...Corazones grandes:say 4(¯`·. (¯`·.   $$1 (¯`·. (¯`·. | say 4(_.·´ (_.·´   $$1 (_.·´ (_.·´
...Corazón 1:/me 4(¯`·.3(¯`·.6(¯`·.4( 1 $1 4)11.·´¯)12.·´¯)9.·´¯) | /me 4(_.·´3(_.·´6(_.·´4( 1 $1 4)11`·._)12`·._)9`·._)
...Corazón 2:say 13(¯`'·.¸(¯`'·.¸12 $$1 13 ¸.·'´¯)¸.·'´¯)13 (¯`'·.¸(¯`'·.¸ 12 $$1 13 ¸.·'´¯)¸.·'´¯)  (_¸.·'´(_¸.·'´12 $$1 13 `'·.¸_)`'·.¸_)13 (_¸.·'´(_¸.·'´ 12 $$1 13 `'·.¸_)`'·.¸_)
...Corazón 3:/me 4,1 4(¯`·._(¯`·._(¯`·._(8 $$1 4)_.·´¯)_.·´¯)_.·´¯) |  /me 4,1 4(_.·´¯(_.·´¯(_.·´¯(8 $$1 4)¯`·._)¯`·._)¯`·._)
...Corazón 4:/me 4(¯`·._7(¯`·._10(¯`·._(12 $$1 10)_.·´¯)7_.·´¯)4_.·´¯) |  /me 4(_.·´¯7(_.·´¯10(_.·´¯(12 $$1 10)¯`·._)7¯`·._)4¯`·._)
..Besos
...Besho Nariz:say 2,2.8,8'2,2.2,8 *BESHO* 2,2.8,8'2,2.8,2 Un beshote en tu nariz $$1 2,2.8,8'2,2.2,8 *BESHO* 2,2.8,8'2,2.8
...Beso Pequeño:say 13,13.8,8.9,9.0,18 $me 0sopla0 un pequeño y dulce beso a0,1 (¯`·.¸¸.->4©8 $$1 4© 9,9.8,8.13,13.
..English
...Kisses
....Kisses4:say 1,1'4,4'0,0'4,4'1,11,1'4,0 KiSSeS 1,1'4,4'0,0'4,4'1,1'0,4 Kisses for you $$1  1,1'4,4'0,0'4,4'1,11,1'4,0 KiSSeS 1,1'4,4'0,0'4,4'1,1' | .agentepensar I feel love in here!
....KOTC:say 2,2.8,8'2,2.2,8 *KOTC* 2,2.8,8'2,2.8,2 Kiss on the cheek for you $$1 2,2.8,8'2,2.2,8 *KOTC* 2,2.8,8'2,2.8 | .agentepensar I feel love in here!
....BlowKisses:/me 12blows some 4kisses your way 12»»--4(¯`°´¯)12=4(¯`°´¯)12---»»4 4 $$1  | .agentepensar I feel love in here!
....kissnhug...:/me can't resist 4©1kissin'4©1 and 12{{1huggin'12}} 12{{4©4©1 $$1 4©4©12}} | .agentepensar I feel love in here!
....kiss....:/me 2R3u4N13s6s12s13 14O2v3e4R5 6a12N13D14 2G3i4V5e6S  12{{4©4©1 $$1 4©4©12}} 1a 0,14*0B8*0I9*0G11*0 13*0K4*0I8*0S9*0S11*013*0 | .agentepensar I feel love in here!
....kisskiss:say 4,1©8K4©8I4©8S4©8S4©9 $$1 4©8K4©8I4©8S4©8S4© | .agentepensar I feel love in here!
...NiceWords
....Heaven:/me checks2 $$1 $+ 's 4shirt tag1.. 2Hmm1.. 4Just as I thought1.. 4,2 ©0,2 Made in Heaven 4©1. | .agentepensar I feel love in here!
....Mirror:/me says... $$1 if you held 11 roses in front of a mirror, you'd see the 12 most beautiful things in the world! :) | .agentepensar I feel love in here!
....Hrtcrzy:say 13,1 $$1 you make my heart go ...... crazy !| 9,1/\________/\____/\___/\__/\_/\_/\_/\_/\...4©  | .agentepensar I feel love in here!
....Hrtsing:say 4,1 W 811I 68 £ 9D  13,1 T 8H 14Ä 11N 0G  8,1 {{4 $$1 8}}  0,1 ¥9o8ü  3,1 M0Ä8k13E  10,1 M11¥  11,1 H39E4Ä7R8T  9,1 S8ì13N14G9,1! | .agentepensar I feel love in here!
....Middlename:say 4,1 æè8,1øö0,1 ÐåÑgëR 4,1æè8,1øö15,1 is my middle name 0,1 $$1 $+ !!  4,1æè8,1øö  | .agentepensar I feel love in here!
....Milk:say 2,2.0,0.2,2.0,0.2,2...0 $$1 2,2..8 My 4 NaMe 8 Is 0 MILK  8 I CaN Do YoUr 4BoDy 8GooD2,2...0,0.2,2.0,0.2,2. | .agentepensar I feel love in here!
....Sweetest:say 0,1 >0--<8,1 $$1  9 you 11 are 13 just 9 the 8S9w13ë11ë8T9ë13§11T 9 thang 8!! 0,1 >0--<13  | .agentepensar I feel love in here!
....Cute:/me says 2(¯`·.,¸¸,7{14=12^4;12^14=7} 3{{5 $$1 3}} 7{14=12^4;12^14=7}2,¸¸,.·´¯) 10 You're So CUTE!!! | .agentepensar I feel love in here!
....PhoneNum:say 3,3'8,8'3,3'9,1 *WiNk* 3,3'8,8'3,3'0,1  I seem to have lost my phone number $$1 $+ , can I borrow yours?  3,3'8,8'3,3'9,1 *WiNk* 3,3'8,8'3,3' | .agentepensar I feel love in here!
....Thief:say 4,4.0,0'4,0©© 4,4.0,1 I'm a thief, and I'm here to steal your heart $$1 $+ ! 4,4.0,0'4,0©©0,0'4,4. | .agentepensar I feel love in here!
....Alien:say 3,1 x9,1(9-9×9-)3,1x 9Was you father an alien $$1 $+ ? 'Cuz there's nothing else like you on earth!3,1 x9,1(9-9×9-)3,1x  | .agentepensar I feel love in here!
....FinePrint:say 2,2'12,12'11,1º12,12'2,2'0,1 $+ $$1 $+ , if you were words on a page, you'd be what they call FINE PRINT! 2,2'12,12'11,1º12,12'2,2'0 | .agentepensar I feel love in here!
....Beautiful Water:/me looks to $$1 and says ... if water would be beautiful, you would be the ocean | .agentepensar I feel love in here!
..Detalles para chicas
...Telefono:/me pide el teléfono de tu casa $$1 , tengo que llamar a tu casa y agradecerle a tu mamá por haberte hecho tan dulce, bella y tierna! | .agentepensar Hmm siento el amor en el aire!
...Agua Hermosa:/me mira a $$1 y le dice : Si el agua fuera hermosa, tu serias un oceano. | .agentepensar Me late que alguien está enamorado! | .agentepensar Hmm siento el amor en el aire!
...Regalitos
....Rosa:/me regala una rosa 4@3}>-3'--,-- a $$1 | /sound $$1 kiss.wav Smuak!
....Rosa para tí:say 1Solo para tí 3,8 $$1 3,0 --}-}-(4@ | /sound $$1 kiss.wav Smuak!
....Tierna:/me le da un besito en la mejilla a $$1 . Eres muy tierna preciosa!
....Opaca:/me se apresura y dice ... te regalo esta Rosa 2 $$1 4@3)-{-{-- .......aunque tu belleza 1,0..... la opaca!!!! | /sound $$1 kiss.wav Smuak!
....Linda:/me ofrece una 4@3)-{-{-- a la chica mas linda del canal:4 $$1 | /sound $$1 kiss.wav Smuak!
....Osos-rosas:/me 0,1------12,1*0,1----------------12,1* | /me 0,1-----12,1/_\0,1--------------12,1/_\ | /me 0,1---12,1(~2,1.12,1_2,1.12,1~)0,1----------12,1(~2,1.12,1_2,1.12,1~) | /me 0,1----12,1(_9,1Y12,1_)0,1------------12,1(_9,1Y12,1_) | /me 0,1-13,1--12,1()13,1-,-12,1()13,1-<--4,1@0,1---13,1--12,1()13,1-,-12,1()13,1-<--4,1@ | /me 0,1---12,1(_)-(_)0,1----------12,1(_)-(_) | /me 0,1-Con mucho cariño para ti $$1 $+ !!! 
....Corazones-Flores:/me 9,1(¯`·.4,1@}_9,1(¯`·.4,1@}_9,1(¯`·._( $$1 )_.·´¯)_4,1{@9,1.·´¯)_4,1{@9,1.·´¯) |  /me 9,1(_.· 4,1@}9,1¯(_.·´4@}9,1¯(_.·´¯9,1( $$1 )9,1¯`·._)¯4,1{@9,1`·._)¯4,1{@9,1`·._)
...Besos
....Labios:say 0 ---4   .. .. | say 0 -4 .' 0 4` 0 4`. | say 4 .'_.-...-._`. | say 0  4`. 0 ----- 4 .' | say 0 --4 `-...-' 
....Labios Negros:say 1,1 ---4   .. .. 1 ---4 Ahhh | say 1,1 -4 .' 1 4` 1 4`. 1 -4 Este beso | 4,1 .'_.-...-._`.  4 es | say 1,1 4`. 1 ----- 4 .'1 4 para ti!!!! | say 1,1 --4 `-...-' 1 --4 $$1 $+ !
....Beso suave:/me apaga las luces del canal, toma a2 $$1 ,por la cintura......... y a la luz de una vela.... la besa suavemente!!
....Beso apasionado:/me apaga las luces del canal, pasa sus brazos por el cuello de2 $$1 , y a la luz de una vela...... la besa apasionadamente
..Detalles para chicos
...Trasero:/me queda completamente loca luego de ver el trasero de $$1 . Estas re bueno! | .agentepensar Hmm siento el amor en el aire!
...Tierno:/me le da un besito en la mejilla a $$1 . Eres muy tierno corazón! | .agentepensar Hmm siento el amor en el aire!
...Mirarme:/me le pide a $$1 que no deje de mirarla... " me encanta tu forma de mirar " | .agentepensar Hmm siento el amor en el aire!
...Músculos:/me pasa sus manitos por los músculos de $$1 . Papito todo esto será mio? | .agentepensar Hmm siento el amor en el aire!
...Telefono:/me pide el teléfono de tu casa $$1 , tengo que llamar a tu casa y agradecerle a tu mamá por haberte hecho tan dulce, bello y tierno! | .agentepensar Hmm siento el amor en el aire!
...Regalitos
....Rosa al tierno:/me regala una rosa 4@3}>-3'--,-- al tierno $$1 | /sound $$1 kiss.wav Smuak!
....Rosa para tí:say 1Solo para tí 3,8 $$1 3,0 --}-}-(4@ | /sound $$1 kiss.wav Smuak!
....Linda:/me ofrece una 4@3)-{-{-- al muchacho mas apuesto del canal:4 $$1 | /sound $$1 kiss.wav Smuak!
....Corazones-Flores:/me 9,1(¯`·.4,1@}_9,1(¯`·.4,1@}_9,1(¯`·._( $$1 )_.·´¯)_4,1{@9,1.·´¯)_4,1{@9,1.·´¯) |  /me 9,1(_.· 4,1@}9,1¯(_.·´4@}9,1¯(_.·´¯9,1( $$1 )9,1¯`·._)¯4,1{@9,1`·._)¯4,1{@9,1`·._)
...Besos
....Labios:say 0 ---4   .. .. | say 0 -4 .' 0 4` 0 4`. | say 4 .'_.-...-._`. | say 0  4`. 0 ----- 4 .' | say 0 --4 `-...-' 
....Labios Negros:say 1,1 ---4   .. .. 1 ---4 Ahhh | say 1,1 -4 .' 1 4` 1 4`. 1 -4 Este beso | say 4,1 .'_.-...-._`.  4 es | say 1,1 4`. 1 ----- 4 .'1 4 para ti!!!! | say  1,1 --4 `-...-' 1 --4 $$1 $+ !
....Beso suave:/me apaga las luces del canal, toma a2 $$1 ,por la cintura......... y a la luz de una vela.... lo besa suavemente!!
....Beso apasionado:/me apaga las luces del canal, pasa sus brazos por el cuello de2 $$1 , y a la luz de una vela...... lo besa apasionadamente
....Beso Loco:/me se acerca a $$1 y mientras admira su musculatura se muere por un beso loco .... me das un beso loco?
.Medidor a $snick(#,1)
..Nivel 1:say 14,14 0,15 0,14 7,1  8,1717,17234567890  0,14 0,15 0,14  $$1 esta en el nivel 1 del Medidor de $input(Ingrese el tipo de medidor. Ej: Belleza,eq,CaeScript) | .agentepensar Hora de sacar mi cinta para medir.
..Nivel 2:say 14,14 0,15 0,14 7,1  18,1727,1734567890  0,14 0,15 0,14  $$1 esta en el nivel 2 del Medidor de $input(Ingrese el tipo de medidor. Ej: Belleza,eq,CaeScript) | .agentepensar Hora de sacar mi cinta para medir.
..Nivel 3:say 14,14 0,15 0,14 7,1  128,1737,174567890  0,14 0,15 0,14  $$1 esta en el nivel 3 del Medidor de $input(Ingrese el tipo de medidor. Ej: Belleza,eq,CaeScript) | .agentepensar Hora de sacar mi cinta para medir.
..Nivel 4:say 14,14 0,15 0,14 7,1  1238,1747,17567890  0,14 0,15 0,14  $$1 esta en el nivel 4 del Medidor de $input(Ingrese el tipo de medidor. Ej: Belleza,eq,CaeScript) | .agentepensar Hora de sacar mi cinta para medir.
..Nivel 5:say 14,14 0,15 0,14 7,1  12348,1757,1767890  0,14 0,15 0,14  $$1 esta en el nivel 5 del Medidor de $input(Ingrese el tipo de medidor. Ej: Belleza,eq,CaeScript) | .agentepensar Hora de sacar mi cinta para medir.
..Nivel 6:say 14,14 0,15 0,14 7,1  123458,1767,177890  0,14 0,15 0,14  $$1 esta en el nivel 6 del Medidor de $input(Ingrese el tipo de medidor. Ej: Belleza,eq,CaeScript) | .agentepensar Hora de sacar mi cinta para medir.
..Nivel 7:say 14,14 0,15 0,14 7,1  1234568,1777,17890  0,14 0,15 0,14  $$1 esta en el nivel 7 del Medidor de $input(Ingrese el tipo de medidor. Ej: Belleza,eq,CaeScript) | .agentepensar Hora de sacar mi cinta para medir.
..Nivel 8:say 14,14 0,15 0,14 7,1  12345678,1787,1790  0,14 0,15 0,14  $$1 esta en el nivel 8 del Medidor de $input(Ingrese el tipo de medidor. Ej: Belleza,eq,CaeScript) | .agentepensar Hora de sacar mi cinta para medir.
..Nivel 9:say 14,14 0,15 0,14 7,1  123456788,1797,170  0,14 0,15 0,14  $$1 esta en el nivel 9 del Medidor de $input(Ingrese el tipo de medidor. Ej: Belleza,eq,CaeScript) | .agentepensar Hora de sacar mi cinta para medir.
..Nivel 10:say 14,14 0,15 0,14 7,1  1234567898,17107,17  0,14 0,15 0,14  $$1 esta en el nivel 10 del Medidor de $input(Ingrese el tipo de medidor. Ej: Belleza,eq,CaeScript) | .agentepensar Hora de sacar mi cinta para medir.
.Colchoneta:.say $$1 aca te presto una colchoneta para que te recuperes de la caida! :)
.Exclamacion:say $$1 $+ , $input(Ingresa el texto,1) !¡!¡!¡!¡!¡!¡!¡!¡!¡!¡!¡ 
.Tinta:say Oo14ooh 15n14o creo qu15e mi 14te15cl14ad15o se es14t15a quedando si14n 15tinta!!!
.Pregunta:say $$1 $+ , $input(Ingresa la pregunta,eq,CaeScript) ?¿?¿?¿?¿?¿?¿?¿
}

menu query {
%version.caescript:/ver
-
Quien es?:/whois $$1
Quien es 2?:/whois $$1 $$1
Canales Comunes:/canalescomunes $$1
UWho:/uwho $$1
Ping:/ping $$1
Páginas
.DALnet:say La página oficial de DALnet es:2 http://www.dal.net/ .
.CaeScript:say La página oficial del CaeScript es:2 http://www.caespock.org/ircsoftware/ .
Agente Microsoft
.Cargar:/acargar
.Descargar:/adescargar
.Mostrar:/amostrar
.Ocultar:/aocultar
.Hablar:/ahablar
.Pensar:/apensar
.Mover:/amover
.Apuntar:/aapuntar
.Acción:/aaccion
-
Usuario
.Silencio
..Listar:/silence
..Adicionar:/silence + $+ $$1
..Borrar:/silence - $+ $$1
.Notify
..Listar:/notify -l
..Adicionar:/notify $$1 $input(Nota adicional para el notify,eq,CaeScript)
..Borrar:/notify -r $$1
.-
.Resolver su IP:/dns $$1
.Trace:/trace $$1
.Stats L:/stats L $$1
.Comunicación
..Mensaje:/msg $$1 $input(Mensaje a enviar,eq,CaeScript)
..Noticia:/notice $$1 $input(Mensaje a enviar,eq,CaeScript)
CTCP - Testear usuario
.Ping:/ctcp $$1 ping
.Info Usuario:/ctcp $$1 userinfo
.Info Cliente:/ctcp $$1 clientinfo
.Versión Cliente:/ctcp $$1 version
.Finger:/ctcp $$1 finger
.Hora:/ctcp $$1 time
DCC
.Chat:/dcc chat $$1
.Enviar:/dcc send $$1
.DccAllow
..Abilitar:/dccallow + $+ $$1
..Desabilitar:/dccallow - $+ $$1
..Lista:/dccallow list
..Ayuda:/dccallow help
Formato de Texto
.Sin Formato:/texton
.Formato 1:/texto1
.Formato 2:/texto2
.Formato 3:/texto3
.Formato 4:/texto4
.Formato 5:/texto5
.Formato 6:/texto6
.Formato 7:/texto7
.Formato 8:/texto8
.Formato 9:/texto9
.Formato 10:/texto10
.Formato 11:/texto11
.Formato 12:/texto12
.Formato 13:/texto13
.Formato 14:/texto14
.Formato 15:/texto15
.Formato 16:/texto16
.Formato 17:/texto17
.Formato 18:/texto18
Personales
.ASCII:play $$1 " $+ $sfile(%filtroascii,Escoge un ASCII,Mostrar) $+ " | .agentepensar Un poco de arte ASCII
.Sonido:/sound $$1 " $+ $sfile($sound(wav),Escoge un Sonido,Tocar) $+ " $input(Mensaje para el sonido,eq,CaeScript)
.Chiste:/msg $$1  $+ %color.titulo1 $+ [ $+ %color.titulo2 $+ Chiste: $+ %color.titulo1 $+ ] $read( %filtrochistes ) | .agentepensar Hahaha buen chiste!
.Frase Célebre:/msg $$1  $+ %color.titulo1 $+ [ $+ %color.titulo2 $+ Frase Célebre: $+ %color.titulo1 $+ ] $read( %filtrofrases ) | .agentepensar Excelente frase!
.Piropo:/msg $$1 $read( %filtropiropos ) | .agentepensar Que lindo ... 
.Poema:play $$1 " $+ $sfile(%filtropoemas,Escoge un Poema,Mostrar) $+ " | .agentepensar Estos poemas nos inspiran la vida!
.Holas
..Cinta:say 1,1 1,2 1,3 1,4 1,5 1,6 1,7 1,8 1,9 1,10 1,11 1,12 1,13 1,14 1,15 1,17 1,18 8,1 Hola $$1 1,1 1,2 1,3 1,4 1,5 1,6 1,7 1,8 1,9 1,10 1,11 1,12 1,13 1,14 1,15 1,17 1,18 1,19
..Colores:say Hola 12(4(12( 7§8§7§ 2¤4¤12¤13 $$1 12¤4¤2¤ 7§8§7§ 12)4)12)
..Arrobas:say 1,1xx8,1·12,1º9,1<4,1©9,1>12,1º8,1·15,1=8,1·12,1º9,1<4,1©9,1>12,1º8,1·1,1x0,1 Hola $$1 1,1x8,1·12,1º9,1<4,1©9,1>12,1º8,1·15,1=8,1·12,1º9,1<4,1©9,1>12,1º8,1·1,1xx
..Sonrisa:say 1,1.1,8 :o) 11,1.1,4 HoLa 1,1.0,12 $$1 1,1.1,8 :o) 1,1.0,12 $$1 1,1.1,4 HoLa 1,1.1,8 :o) 1,1.
..Blur:say 4,4'5,5'8,8'7,7'2,2'0,2*2,2'7,7'8,8'5,5'4,4'0,0'4,4'5,5'8,8'7,7'2,2'0,2 Hola $$1 Que bueno verte! 2,2'7,7'8,8'5,5'4,4'0,0'4,4'5,5'8,8'7,7'2,2'0,2*2,2'7,7'8,8'5,5'4,4'
..SuperHola:/superhola $$1
..SuperHola2:/superhola2 $$1
..English
...HiSmile:say 1,1.1,8 :o) 11,1.1,4 HëLLø 1,1.0,12 $$1 1,1.1,8 :o) 1,1.0,12 $$1 1,1.1,4 HëLLø 1,1.1,8 :o) 1,1.
...Howru:say 01,01.01,04 HeLLo 01,01.01,12 $$1 01,01.01,08 HoW 01,01.01,09 ArE 01,01.01,13 YoU 01,01.01,11 ToDaY? 01,01.01,12
...Wherebeen:say 12,0 $$1 !! 13,00WHERE12,00 have 13,00YoU12,00 been?!?! (I missed you!)
.-=Bienvenido(a) de nuevo =-
..Cinta:say 1,1.11,11.1,1..11¤¤0¥11¤¤0¥11¤¤0¥11¤¤0¥11¤¤1,1.11,11.1,1.0,1 Bienvenido(a) de nuevo $$1 1,1.11,11.1,1..11¤¤0¥11¤¤0¥11¤¤0¥11¤¤0¥11¤¤1,1.11,11.1,1.
..Puntos:say 12,01 ·09,01°04,01·08,01°12,01·09,01°04,01·08,01°12,01·8,1 Bienvenido(a) de nuevo $$1 12,1·08,01°04,01·09,01°12,01·08,01°04,01·09,01°12,01· 
..Miren quien:say 4 Hey!!! 12Miren quien ha vuelto!!04,0 :Þ12 $$1 4<--
..Rarito:say 10,01 »08,01·10,01»08,01·10,01»08,01·10,01»8,1 Bienvenido(a) de nuevo $$1 10,1»08,01·10,01»08,01·10,01»08,01·10,01» 
..English
...YAY:say 1,1'13,13'1,1'6,6'0,6*YaY* 1,1'13,13'1,1'6,6'0,6 Wëlçõmë ßåçk $$1 1,1'13,13'1,1'6,6'0,6*YaY* 1,1'13,13'1,1'
...Teals:say 10,1 ·:11]0:11[10:·15 Welcome Back10,1 ·:11]0:11[10:·0 $$1 10,1·:11]0:11[10:· 15Welcome Back 10,1·:11]0:11[10:· 
...FadeX:say 1,1'13,6WB1,1'11,10WB1,1'15,14WB1,1'1,0 Wëlçõmë ßåçk $$1 1,1'15,14WB1,1'11,10WB1,1'13,6WB1,1'
...Checkin:say 1,1.4,5 Ö 1,1.8,7 Ö 1,1.11,2 Ö 1,1.0,1 Checkin' out your rear, errr return $$1 WB! 1,1.11,2 Ö 1,1.8,7 Ö 1,1.4,5 Ö 1,1.
...MadeIt:say 1,1.13,6·¥·1,1'9,3·¥·1,1'8,7·¥·1,1'1,15 GlåÐ ¥å MåÐë ¡t ßåçk $$1 $+ !! 1,1'8,7·¥·1,1'9,3·¥·1,1'13,6·¥·1,1.1,0 
.Chau
..Estrella:say 1,1.12,12x1,1 1,0 Adios 9,1 12,12x1,1¡4,1 *0*4* 0,12 $$1 4,1 *0,1*4,1* 12,12x1,1 1,0 Chau 1,1 12,12x1,1 0
..Estrella2:say 1,1  12,1*0,1·4,1*0,1·12,12 0,1 Chau 12,12 0,1==4,1*0,1==12,12 0,1 $$1 12,12 0,1·4,1*0,1·12,1*1,1  0
..Chausito:say 1,1'13,13.1,1'6,6.1,1'11,11.1,1'10,10.1,1'1,15·¨·1,1'10,10.1,1'11,11.1,1'6,6.1,1'13,13.1,1'1,15 Chausito $$1 1,1'13,13.1,1'6,6.1,1'11,11.1,1'10,10.1,1'1,15·¨·1,1'10,10.1,1'11,11.1,1'6,6.1,1'13,13.1,1'
..Te veo luego:say 1,1.3,3'12,12'7,1 ·:8,1:8,1*8,1:7:·12,12'3,3'1,1.8,1 Te veo luego  $$1 1,1.3,3'12,12'7,1 ·:8,1:8,1*8,1:7:·12,12'3,3'1,1.
..Beso Adios:/me le sopla a $$1 un beso de buenas noches  ¸,ø¤°`°¤ø,¸¸,ø¤°`°¤ø,¸¸»  4,0©
..Abrazo Adios:/me abraza fuertemente a $$1 y le pide que vuelva pronto !
..English
...Stars:say 1,1 12,12x1,1 1,0 GooD 9,1 12,12x1,1¡4,1*0*4* 0,12 $$1 4,1 *0,1*4,1* 12,12x1,1 1,0 ByE 1,1 12,12x1,1 0
...Starbye:say 1,1  12,1*0,1·4,1*0,1·12,12 0,1 GooÐß¥ë 12,12 0,1==4,1*0,1==12,12 0,1 $$1 12,12 0,1·4,1*0,1·12,1*1,1  0
...NinjaBye:say 1,1`0,13 0,2G0,2ø0,6ø0,12Ð0,2ß0,13¥0,12ë0,21,1.0,1 See Ya later $$1 1,1.0,13 0,2G0,2ø0,6ø0,12Ð0,2ß0,13¥0,12ë0,21,1`
...LilBye:say 1,1.3,3'12,12'7,1 ·:8,1:8,1*8,1:7:·12,12'3,3'1,1.8,1 See Ya Later $$1 1,1.3,3'12,12'7,1 ·:8,1:8,1*8,1:7:·12,12'3,3'1,1.
.Abrazos
..Abrazar:say 12{{{{{{{5 $$1 12}}}}}}}
..Abrazar 2:say ..·´¯`·.¸.·´¯`·.¸¸.·´¯`·. ><((((º> $+ $$1 $+ <º))))>< ·´¯`·.¸¸.·´¯`·.¸.·´¯`·. 
..Abrazar 3:/me 6®º°¨¨°º®4ABRAZO6®º°¨¨°º®13 $$1 6®º°¨¨°º®4ABRAZO6®º°¨¨°º®
..Abrazo de cumple:/me abraza a 12{{5 $$1 12}}, 2Feliz Cumpleaños!!!
..Abrazo de oso:/me 5{~12.5_12.5~} 0,0**2 $$1 0,0**5{~12.5_12.5~} 2 Abrazo | /me 0,0-5( Y ) 0,0¤¤ 3 $$1 0,0¤¤5 ( Y )0,0- 3 de Oso | /me 5()13~*~5() 0,0* 4 $$1 0,0*5 ()13~*~5() 4 de | /me 5(_)-(_) 0,0¤ 6 $$1 0,0¤5 (_)-(_) 6 $me
..Abrazote:say 8,1 ·4,1·8:9{3{9{0 Un abrazote para ti $$1 9}3}9}8:4·8· 
..Abrazango:say 1,1'4,4'8,8'4,18:0{4 © 0}8:8 Un abrazango para ti $$1 $+ ! 8:0{4 © 0}8:48,8'4,4'1,1'
..English
...HappyHug:say 6,6.9,9.6,6.9,1 (6(9(0 $$1 9)6)9) 6,6.9,9.6,6.0,1 $me gives $$1 a 9happy13 to9 see13 ya0 hug! 6,6.9,9.6,6.9,1 (6(9(0 $$1 9)6)9) 6,6.9,9.6,6.0
...HugHrt:say 4©6H4©6U4©6G4©6S4©10 $$1 4©6H4©6U4©6G4©6S4©
...SuperHug:say 6 $me gives12 $$1 **3SuPeR5DupEr2GreAt6BiG3Ole7BeAr5HuGGieS12**
...Hog:say 1,1.15,15.1,1.13,0 <(12°13w12°13)> 1,1.15,15.1,1.0,0.0,1 $me Gives $$1 13HOGS0,1 (errr, or is that 0,1hugs?) 0,0.1,1.15,15.1,1.13,0 <(12°13w12°13)> 1,1.15,15.1,1.
...Tackle:say 1,1'0,6P1,1'0,2Ô1,1'0,3ü1,1'0,5Ñ1,1'0,10Ç1,1'0,14ë1,1'0,1 $me Tackles $$1 in a great BIG hug!! 1,1'0,14P1,1'0,10Ô1,1'0,5ü1,1'0,3Ñ1,1'0,2Ç1,1'0,6ë1,1'
...Huggable:say 1,1'7,7'8,8.7,7'7,1 *8,1o7,1* 7,7'8,8.7,7'1,1'8,1 You were8 VõTëÐ 8most8 HüGGåßlë8 $$1 1,1'7,7'8,8.7,7'7,1 *8,1o7,1* 7,7'8,8.7,7'1,1'
.Mensajes con Colores
..Alas:say ¯`°²º¤æ=¬«.,¸_  $$1 _¸,.»¬=æ¤º²°`¯
..Angeles:say 12¯°º¤4^Å^12¤º°¯°º¤4^Å^12¤º°¯°º¤4^Å^12¤º°¯6 $$1 12¯°º¤4^Å^12¤º°¯°º¤4^Å^12¤º°¯°º¤4^Å^12¤º°¯
..Angeles a cuidar:/me envia1 angeles guardiates para cuidar a 3 $$1 ^Å^ ^Å^7 $$1 10 ~Å~ ~Å~6 $$1 ^Å^ ^Å^5 $$1 10 ~Å~ ~Å~13 $$1 10 ^Å^ ^Å^12 $$1 ~Å~ ~Å~9 $$1 10^Å^ ^Å^6 $$1 10~Å~ ~Å~2 $$1 ^Å^ ^Å^14 $$1 ~Å~ ~Å~
..Confetti:/me salta y lanza confetti al aire para  `~_-`.`~.-~-~;~`~ 4 ;`~`*~`;.~`;.*`;.`~;`~`*~`;.~`; 6 .*`;.`~;``*~.``;.9~``~`*~`;.~` 8 ;.*`; .`~`;`*~`;.~2 $$1 ;.*`;.`~;`~ ;',`  `*~`;.~`;.*3`;;.~``~`*~`;.~`;.*`; .`~`; 9 `*~`;.~`;.*`;.`~;.*`;.`~;`~ ;',` `*~`;.~`;.*`;``~`*~`;.~`;.*`; . `~;~;`~`*~`;.~`;.*`;.`~;`~11 $$1 `*~`;.~`.*`;.`~;`~`*`~-`.`~.-~ 13 -~;~`;.~`;.*`;.`~;`~`*~  `;.~`;.*`;.`~;`~`*~`;.~`;.*`;.
..Confetti y globos:/me lanza confetti y globos al aire para $$1 `;~'O~~~*`;.'O~~~~*`; $$1 .'`~;`~`O~~~~*`;.'O~~~~*`;.'`~;`~`O~~~*`; $$1  .'O~~~~*`;.'`~;`~`O~~~~*`;.'O~~~~*` $$1  ;.'`~;`~`O~~~*`;.'O~~~~*`; $$1 .'`~;`~`O~~~~*`;.'O~~~*`; $$1 .'`~;`~`O~~~~*`;.'O~~~~*`; $$1  .'`~;`~`O~~~~*`;.'O~~~~*`; $$1  .'`~;`~`O~~~~ 
..Estrellas:say * ~.*.~.*.~.*.~.*.~.*; $$1 ;*.~.*.~.*.~.*.~.*.~ *
..Exclamacion:say 1,19!12¡6!4¡3!8¡11!13¡9!12¡6!4¡3!8¡4 * $$1 * 1,18!3¡4!6¡12!9¡13!11¡8!3¡4!6¡12!9¡
..Flechas:/me 2 (¯`'·.¸(¯`'·.¸ _______________ ¸.·'´¯)¸.·'´¯) | /me 13 (¯`'·.¸(¯`'·.¸ ŸŸŸŸŸŸŸŸŸŸŸŸŸŸŸ ¸.·'´¯)¸.·'´¯) | /me 12 ----==>>>>-------> $$1 ----==>>>>------> | /me 4 (_¸.·'´(_¸.·'´ ŸŸŸŸŸŸŸŸŸŸŸŸŸŸŸ `'·.¸_)`'·.¸_) | /me 8 (_¸.·'´(_¸.·'´ ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯`'·.¸_)`'·.¸_)
..Loco:say ¸,ø¤°`°¤ø,¸¸,ø¤°`°¤ø,¸¸» {{{{{{ $$1  }}}}}}«¸,ø¤°`°¤ø,¸¸,ø¤°`°¤ø,
..Mayor-Menor:say 0,1 <2>3<4>5<6>7<8>9<10>11<12>130-8 $$1 0- 12<11>10<9>8<7>6<5>4<3>2<0>0,1 
..Montañas:say ¸.·´¯`·.¸¸.·´¯`·.¸.·´¯`·.¸ $$1 ¸.·´¯`·.¸.·´¯`·.¸¸.·´¯`·.¸
..Montones:say 13(¯`·.,¸¸.·´¯`·.¸¸.->13,11 $$1  13<-.¸¸.·´¯`·.¸¸.·´¯) (¯`'·.¸(¯`'·.¸ 13,11 $$1  13¸.·'´¯)¸.·'´¯)  (¯`'·.¸(¯`'·.¸13,11 $$1  13 ¸.·'´¯)¸.·'´¯) (_¸.·'´(_¸.·'´13,11 $$1  13 `'·.¸_)`'·.¸_)(_¸.·'´(_¸.·'´ 13,11 $$1   13`'·.¸_)`'·.¸_) (¯`·.,¸¸.·´¯`·.¸¸.->13,11 $$1  13 <-.¸¸.·´¯`·.¸¸.·´¯) (¯`'·.¸(¯`'·.¸ 13,11 $$1  13 ¸.·'´¯)¸
..Onda:say 4¸,ø¤º°'°º¤ø,¸¸,ø¤º°'°º¤ø,¸2 $$1 4¸,ø¤º°'°º¤ø,¸¸,ø¤º°'°º¤ø,¸
..Onda 2:say 2(¯`·.¸¸.·´¯©º°¨¨°º©4  $$1  2©º°¨¨°º©¯`·.¸¸.·´¯)
..Gente:say 5ºÖº.¸¸.ºÔºÔº.¸¸.ºÖº.¸¸.» $$1 5«.¸¸.ºÖº.¸¸.ºÔºÖº.¸¸.ºÖº
..Rueda:say 7(¯`·._)4º10(¯`·._)4º13(¯`·._2 $$1 13_.·´¯)4º10(¯`·._)4º7(_.·´¯)
..Feliz Cumpleaños:/me 0___-8 66666 | /me 0___-1__|||||__0_______4F e l i z | /me 0___1{._._._._.}0__4C u m p l e a ñ o s | /me 0_1__{._._._._.}__0______6 $$1 !!!! | /me 1`~~~~~~~~~~~~~`
..No Corras:/say 0~~~;:'.,';.,';".10=,1____\13Ø1_\\_____0____12 $2 | /say 0-~~~.;:',;.':,';(0,4o-10---8 Ferrari 10---0,4-o)0_____3no vayas | /say ~~~~;',';:',;',;':',(1,15@)======(1,15@)0______3tan rápido...
..Pon Musica:/say 0.4__0......4_ | /say 4/0...4`···´0...4)0||||||||||[1,,, 3 $$1 | /say 4| |0....4()0...1||||||||||[:::< 2 pon música | /say 4\__.···._)0||||||||||[1''' 2  en7 #
.Bebidas, Cigarros y Chocolates
..7UP:/me ofrece a $$1 un vaso de 15,15!1,140,3 74,3°0,3UP 15,15!
..Coca-Cola:/me ofrece a $$1 un vaso de 15,15!1,140,4 Coca-Cola 15,15!
..Sodas:/me pregunta ... quieres una soda?6??? 15,15!1,148,3 Salvietti 15,15!.... 15,15!1,140,3Sprite15,15!...... 15,15!0,4 Coke 1,15 .....15,15!1,140,3 74,3°0,3UP 15,15! .. 4 ....14,14!4,15 P12,15e1,15p4,15s12,15i 14,14! . ....1,15 0,4 Diet 1,15  ...15,15!8,5Fanta15,15!.... 15,15!0,6CokaQuina15,15!... 4  .. 15,15!4,12PepCola15,15!... 15,15!15,5Cascada15,15! 4
..Cerveza boliviana:/me invita una fina cerveza Boliviana a $$1 | /sound $$1 beer.wav Una cerveza para ti!
..Cerveza fría:/me se levanta y pasa una cerveza bien fría a $$1 .. ¡Salud! | /sound $$1 beer.wav Una cerveza para ti!
..Ron:/me ofrece un vaso de Ron c[_] a $$1
..Café para el frio:/me invita un café caliente a $$1 10,5(_)10Þ para que se caliente en este frío día.
..Café para no dormir:/me invita un café caliente a $$1 10,5(_)10Þ para que no se duerma.
..Cigarro:/me invita un cigarro a $$1 5()¯¯¯¯¯)¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯)4)~
..Snikers:/me invita a $$1 un 1,1 0,5 Snikers 1,1 ! Yummy!
..Mily Way:/me invita a $$1 un 15,15 9,1 Milky Way 15,15 ! Yummy!
..Kit Kat:/me invita a $$1 un 15,15 0,4 Kit Kat 15,15 ! Yummy!
.Lapos y Golpes
..Atrevido:/me aplica un lapo en la papada a $$1 , para que se le quite lo atrevido!!! | /sound $$1 golpe.wav Golpe!
..Conteste:/me aplica un lapo en la papada a $$1 , a ver si así me contestas!!! | /sound $$1 golpesito.wav Golpe!
..Golpear:/me golpea con una piedra la cabeza de $$1 . Eso seguramente te calmará un poco! | /sound $$1 haha.wav golpe!
..Golpear con objeto:/me golpea con $input(Entra el objeto - una pelota - un plato,eq,CaeScript) a $$1 . Espero esto te calme!!! | /sound $$1 golpes.wav golpe!
..Karatazo:/me aplica un karatazo a $$1 , ahora todo bien? | /sound $$1 karatazo.wav karatazo!
..Vulgar:/me aplica un lapo a $$1 , a ver si asi se te quita lo vulgar!!! | /sound $$1 golpe.wav golpe!
..Cabezazo:/me se pone un casco y ademas de tener cabeza dura toma impulso y aplica un cabezazo a $$1 | /sound $$1 boing2.wav cabezazo!
..Chancletazo:/me le saca la chancleta a la empleada de la casa, fuchiiii!!!! y aplica un chancletazo a $$1 | /sound $$1 boing.wav chancletazo!
..Batan:/me agarra el batan con el que la empleada muele la llajua y se lo lanza a $$1 listo? ya? te dolio? ya aprendiste? ahora deja de fregar! | /sound $$1 hmmph.wav batan!
..Piquete:/me unta sus dedos con llajua, ketchup y mayonesa y luego agarra la nariz de $$1 para luego aplicarle un piquete a los ojos! | /sound $$1 ouch.wav piquete!
..Sopapo:/me aplica un sopapo a $$1 por ser un sacasonapas! | /sound $$1 sopapo.wav sopapo!
..Warakazo:/me aplica un warakazo a $$1 , a ver si esto te calma un poco! | /sound $$1 vidrios2.wav warakazo!
..Barro:/me levanta del piso un poco de barro, lo amasa y se lo lanza a $$1 hehehehe :P quedaste mejor!!!! | /sound $$1 yuck.wav Barro!
..Botellazo:/me levanta la botella de refresco de la cocina y se la rompe en la cabeza a $$1 | /sound $$1 vidrio.wav Botellazo!
..Bazooka:/me agarra el bazooka y apunta al estómago de $$1 y zaz , ups! estas bien? | /sound $$1 bazuka.wav Bazukazo!
..Aerosol:/me agarra aerosol y comienza a pintar la cabeza de $$1 Hmm el nuevo look te queda mejor! | /sound $$1 aerosol.wav Aerosol!
..Bolsazo:/me agarra la bolsa de papas que recién compró del mercado y la lanza a la cabeza de $$1 . Estas bien? Ahora deja de molestar!!! | /sound $$1 ack.wav Bolsa de Papas!
..Martillazo:/me aplica un martillazo en la cabeza de $$1 ! Sigues con vida ? Estas ahí? Ahora contestame pues! | /sound $$1 boing2.wav martillazo!
..Grito:/me ya no aguanta más y grita fuerte al oido de $$1 | /sound $$1 gritito.wav chillido!
..Jalon de Orejas:/me agarra la orejita izquierda de $$1 y la jala tanto tanto tanto que $$1 queda con una orejita de dumbo! | /sound $$1 toing.wav Jalon_De_Orejitas!
..Monitor:/me agarra el monitor de su computadora y se lo lanza a $$1 Oye :( Se rompio mi pantalla!!! Vas a ver!!!!! | /sound $$1 toing.wav Monitor!
..Cohetillos:/me pone un paquete entero de cohetillos en el pantalón de $$1 Upsi, jajajaja estas sonando Plop plop!!! | /sound $$1 cohetillos.wav Cohetillos!!
..Rana:/me agarra una rana del charco y se la pone en el patalón a $$1 Jajajaja no saltes tanto!! | /sound $$1 toing.wav Rana!
..Tortazo:/me saca una torta grande con mucha crema y se la lanza a $$1 Ups, te ves bien asi de blanco! jajajaja | /sound $$1 nana.wav Tortazo!
..Araña:/me se acerca lentamente a4 $$1 y deja caer una araña en su polera 1«^»
..TNT:say 1,4 D I N A M I T A 5,0]5-------4.`,'.12 Toma 4 $$1 12 !!! 12, Agarra esto !!!
..English
...Arrows:/me takes careful aim...... and fires 4-»12»»»4»---->>12 ........ oohhh darn missed!! | /me sites his target again...... 4-»12»»»4»---->>12 ........ oohhh darn missed again!! | /me so does the 3rd!! 4-»12»»»4»---->>12 I must be shooting with my eyes closed!! | /me the fourth one hits it mark!! 4-»12»»»4»---->>12 $$1 's 4(_I_) 3,1R12,1I7,1g9,1h8,1T 4on target!!
...Frypan:say 3BOPS9 $$1 6over the head, with a 10cast iron frying pan 13(Kaboink!!)6...and tells9 $$1 6...3"You better behave yourself!!"
...Snowball:say 12throws a few snowballs at 4 $$1  | say 14-------~o15. . . . . . 12[ $$1 ]4(shoot,missed) | say 14---------------~o15. . . . . .12[ $$1 ]4(missed again) | say 14-----------------------10{!!SpLaT!! 6YES !!! <hehe>
...Spider:/me sneaks up behind4 $$1 12and slips a spider down his shirt 1«^» 
...Crab:/me sneaks up behind4 $$1 12and slips a crab down his pants 4,1«0°°4»8
...TNT:say 1,4 D Y N A M I T E 5,0]5-------4.`,'.12 Here 4 $$1 12 !!! 12, CATCH !!!
.Detalles - Amor
..Hola:/me se apresura y dice 2Hola $$1 4@3)-{-{-- | /sound $$1 kiss.wav Smuak! | .agentepensar Hmm siento el amor en el aire!
..Me gustas mucho:/me te pregunta $$1 ... "Alguna vez te dije que me gustas mucho?" | .agentepensar Hmm siento el amor en el aire!
..Mi corazón al verte:/me te pregunta $$1 .. "Sabes que cada vez que te veo mi corazon late mas rápido pero al ritmo del amor?" | .agentepensar Hmm siento el amor en el aire!
..Caiste del cielo:/me te pregunta si te dolio? $$1 te dolio cuando caiste de las estrellas? | .agentepensar Hmm siento el amor en el aire!
..Bombón al sol:/me te pide $$1 que cuando haga sol camines por la sombra... los bombones como tú se derriten al sol :) | .agentepensar Hmm siento el amor en el aire!
..Belleza Pecado:/me dice $$1 si la belleza fuera pecado, tu tendrías el infierno asegurado :) | .agentepensar Hmm siento el amor en el aire!
..Espejo:/me dice $$1 si agarraras 11 rosas en frente a un espejo, verías las 12 cosas más bellas del mundo! :) | .agentepensar Hmm siento el amor en el aire!
..Flores:say 4@5>3-->-`->--,--- $$1 4@5>3-->-`->--,--- $$1 4@5>3-->-`->--,--- | .agentepensar Hmm siento el amor en el aire!
..Amor:/me 4©5A4©5M4©5O4©5R4©2 $$1 44©5L4©5O4©5V4©5E4© | .agentepensar Hmm siento el amor en el aire!
..Corre:/me corre rápidamente hacia $$1 para decirle delante de todo el mundo ... Te amo y siempre estarás en mi corazon! :* | .agentepensar Hmm siento el amor en el aire!
..Musica:/musica $$1
..Corazones
...Corazones grandes:say 4(¯`·. (¯`·.   $$1 (¯`·. (¯`·. | say 4(_.·´ (_.·´   $$1 (_.·´ (_.·´
...Corazón 1:/me 4(¯`·.3(¯`·.6(¯`·.4( 1 $1 4)11.·´¯)12.·´¯)9.·´¯) | /me 4(_.·´3(_.·´6(_.·´4( 1 $1 4)11`·._)12`·._)9`·._)
...Corazón 2:say 13(¯`'·.¸(¯`'·.¸12 $$1 13 ¸.·'´¯)¸.·'´¯)13 (¯`'·.¸(¯`'·.¸ 12 $$1 13 ¸.·'´¯)¸.·'´¯)  (_¸.·'´(_¸.·'´12 $$1 13 `'·.¸_)`'·.¸_)13 (_¸.·'´(_¸.·'´ 12 $$1 13 `'·.¸_)`'·.¸_)
...Corazón 3:/me 4,1 4(¯`·._(¯`·._(¯`·._(8 $$1 4)_.·´¯)_.·´¯)_.·´¯) |  /me 4,1 4(_.·´¯(_.·´¯(_.·´¯(8 $$1 4)¯`·._)¯`·._)¯`·._)
...Corazón 4:/me 4(¯`·._7(¯`·._10(¯`·._(12 $$1 10)_.·´¯)7_.·´¯)4_.·´¯) |  /me 4(_.·´¯7(_.·´¯10(_.·´¯(12 $$1 10)¯`·._)7¯`·._)4¯`·._)
..Besos
...Besho Nariz:say 2,2.8,8'2,2.2,8 *BESHO* 2,2.8,8'2,2.8,2 Un beshote en tu nariz $$1 2,2.8,8'2,2.2,8 *BESHO* 2,2.8,8'2,2.8
...Beso Pequeño:say 13,13.8,8.9,9.0,18 $me 0sopla0 un pequeño y dulce beso a0,1 (¯`·.¸¸.->4©8 $$1 4© 9,9.8,8.13,13.
..English
...Kisses
....Kisses4:say 1,1'4,4'0,0'4,4'1,11,1'4,0 KiSSeS 1,1'4,4'0,0'4,4'1,1'0,4 Kisses for you $$1  1,1'4,4'0,0'4,4'1,11,1'4,0 KiSSeS 1,1'4,4'0,0'4,4'1,1' | .agentepensar I feel love in here!
....KOTC:say 2,2.8,8'2,2.2,8 *KOTC* 2,2.8,8'2,2.8,2 Kiss on the cheek for you $$1 2,2.8,8'2,2.2,8 *KOTC* 2,2.8,8'2,2.8 | .agentepensar I feel love in here!
....BlowKisses:/me 12blows some 4kisses your way 12»»--4(¯`°´¯)12=4(¯`°´¯)12---»»4 4 $$1  | .agentepensar I feel love in here!
....kissnhug...:/me can't resist 4©1kissin'4©1 and 12{{1huggin'12}} 12{{4©4©1 $$1 4©4©12}} | .agentepensar I feel love in here!
....kiss....:/me 2R3u4N13s6s12s13 14O2v3e4R5 6a12N13D14 2G3i4V5e6S  12{{4©4©1 $$1 4©4©12}} 1a 0,14*0B8*0I9*0G11*0 13*0K4*0I8*0S9*0S11*013*0 | .agentepensar I feel love in here!
....kisskiss:say 4,1©8K4©8I4©8S4©8S4©9 $$1 4©8K4©8I4©8S4©8S4© | .agentepensar I feel love in here!
...NiceWords
....Heaven:/me checks2 $$1 $+ 's 4shirt tag1.. 2Hmm1.. 4Just as I thought1.. 4,2 ©0,2 Made in Heaven 4©1. | .agentepensar I feel love in here!
....Mirror:/me says... $$1 if you held 11 roses in front of a mirror, you'd see the 12 most beautiful things in the world! :) | .agentepensar I feel love in here!
....Hrtcrzy:say 13,1 $$1 you make my heart go ...... crazy !| 9,1/\________/\____/\___/\__/\_/\_/\_/\_/\...4©  | .agentepensar I feel love in here!
....Hrtsing:say 4,1 W 811I 68 £ 9D  13,1 T 8H 14Ä 11N 0G  8,1 {{4 $$1 8}}  0,1 ¥9o8ü  3,1 M0Ä8k13E  10,1 M11¥  11,1 H39E4Ä7R8T  9,1 S8ì13N14G9,1! | .agentepensar I feel love in here!
....Middlename:say 4,1 æè8,1øö0,1 ÐåÑgëR 4,1æè8,1øö15,1 is my middle name 0,1 $$1 $+ !!  4,1æè8,1øö  | .agentepensar I feel love in here!
....Milk:say 2,2.0,0.2,2.0,0.2,2...0 $$1 2,2..8 My 4 NaMe 8 Is 0 MILK  8 I CaN Do YoUr 4BoDy 8GooD2,2...0,0.2,2.0,0.2,2. | .agentepensar I feel love in here!
....Sweetest:say 0,1 >0--<8,1 $$1  9 you 11 are 13 just 9 the 8S9w13ë11ë8T9ë13§11T 9 thang 8!! 0,1 >0--<13  | .agentepensar I feel love in here!
....Cute:/me says 2(¯`·.,¸¸,7{14=12^4;12^14=7} 3{{5 $$1 3}} 7{14=12^4;12^14=7}2,¸¸,.·´¯) 10 You're So CUTE!!! | .agentepensar I feel love in here!
....PhoneNum:say 3,3'8,8'3,3'9,1 *WiNk* 3,3'8,8'3,3'0,1  I seem to have lost my phone number $$1 $+ , can I borrow yours?  3,3'8,8'3,3'9,1 *WiNk* 3,3'8,8'3,3' | .agentepensar I feel love in here!
....Thief:say 4,4.0,0'4,0©© 4,4.0,1 I'm a thief, and I'm here to steal your heart $$1 $+ ! 4,4.0,0'4,0©©0,0'4,4. | .agentepensar I feel love in here!
....Alien:say 3,1 x9,1(9-9×9-)3,1x 9Was you father an alien $$1 $+ ? 'Cuz there's nothing else like you on earth!3,1 x9,1(9-9×9-)3,1x  | .agentepensar I feel love in here!
....FinePrint:say 2,2'12,12'11,1º12,12'2,2'0,1 $+ $$1 $+ , if you were words on a page, you'd be what they call FINE PRINT! 2,2'12,12'11,1º12,12'2,2'0 | .agentepensar I feel love in here!
....Beautiful Water:/me looks to $$1 and says ... if water would be beautiful, you would be the ocean | .agentepensar I feel love in here!
..Detalles para chicas
...Telefono:/me pide el teléfono de tu casa $$1 , tengo que llamar a tu casa y agradecerle a tu mamá por haberte hecho tan dulce, bella y tierna! | .agentepensar Hmm siento el amor en el aire!
...Agua Hermosa:/me mira a $$1 y le dice : Si el agua fuera hermosa, tu serias un oceano. | .agentepensar Hmm siento el amor en el aire!
...Regalitos
....Rosa:/me regala una rosa 4@3}>-3'--,-- a $$1 | /sound $$1 kiss.wav Smuak!
....Rosa para tí:say 1Solo para tí 3,8 $$1 3,0 --}-}-(4@ | /sound $$1 kiss.wav Smuak!
....Tierna:/me le da un besito en la mejilla a $$1 . Eres muy tierna preciosa!
....Opaca:/me se apresura y dice ... te regalo esta Rosa 2 $$1 4@3)-{-{-- .......aunque tu belleza 1,0..... la opaca!!!! | /sound $$1 kiss.wav Smuak!
....Linda:/me ofrece una 4@3)-{-{-- a la chica mas linda del canal:4 $$1 | /sound $$1 kiss.wav Smuak!
....Osos-rosas:/me 0,1------12,1*0,1----------------12,1* | /me 0,1-----12,1/_\0,1--------------12,1/_\ | /me 0,1---12,1(~2,1.12,1_2,1.12,1~)0,1----------12,1(~2,1.12,1_2,1.12,1~) | /me 0,1----12,1(_9,1Y12,1_)0,1------------12,1(_9,1Y12,1_) | /me 0,1-13,1--12,1()13,1-,-12,1()13,1-<--4,1@0,1---13,1--12,1()13,1-,-12,1()13,1-<--4,1@ | /me 0,1---12,1(_)-(_)0,1----------12,1(_)-(_) | /me 0,1-Con mucho cariño para ti $$1 $+ !!! 
....Corazones-Flores:/me 9,1(¯`·.4,1@}_9,1(¯`·.4,1@}_9,1(¯`·._( $$1 )_.·´¯)_4,1{@9,1.·´¯)_4,1{@9,1.·´¯) |  /me 9,1(_.· 4,1@}9,1¯(_.·´4@}9,1¯(_.·´¯9,1( $$1 )9,1¯`·._)¯4,1{@9,1`·._)¯4,1{@9,1`·._)
...Besos
....Labios:say 0 ---4   .. .. | say 0 -4 .' 0 4` 0 4`. | say 4 .'_.-...-._`. | say 0  4`. 0 ----- 4 .' | say 0 --4 `-...-' 
....Labios Negros:say 1,1 ---4   .. .. 1 ---4 Ahhh | say 1,1 -4 .' 1 4` 1 4`. 1 -4 Este beso | 4,1 .'_.-...-._`.  4 es | say 1,1 4`. 1 ----- 4 .'1 4 para ti!!!! | say 1,1 --4 `-...-' 1 --4 $$1 $+ !
....Beso suave:/me apaga las luces del canal, toma a2 $$1 ,por la cintura......... y a la luz de una vela.... la besa suavemente!!
....Beso apasionado:/me apaga las luces del canal, pasa sus brazos por el cuello de2 $$1 , y a la luz de una vela...... la besa apasionadamente
..Detalles para chicos
...Trasero:/me queda completamente loca luego de ver el trasero de $$1 . Estas re bueno! | .agentepensar Hmm siento el amor en el aire!
...Tierno:/me le da un besito en la mejilla a $$1 . Eres muy tierno corazón! | .agentepensar Hmm siento el amor en el aire!
...Mirarme:/me le pide a $$1 que no deje de mirarla... " me encanta tu forma de mirar " | .agentepensar Hmm siento el amor en el aire!
...Músculos:/me pasa sus manitos por los músculos de $$1 . Papito todo esto será mio? | .agentepensar Hmm siento el amor en el aire!
...Telefono:/me pide el teléfono de tu casa $$1 , tengo que llamar a tu casa y agradecerle a tu mamá por haberte hecho tan dulce, bello y tierno! | .agentepensar Hmm siento el amor en el aire!
...Regalitos
....Rosa al tierno:/me regala una rosa 4@3}>-3'--,-- al tierno $$1 | /sound $$1 kiss.wav Smuak!
....Rosa para tí:say 1Solo para tí 3,8 $$1 3,0 --}-}-(4@ | /sound $$1 kiss.wav Smuak!
....Linda:/me ofrece una 4@3)-{-{-- al muchacho mas apuesto del canal:4 $$1 | /sound $$1 kiss.wav Smuak!
....Corazones-Flores:/me 9,1(¯`·.4,1@}_9,1(¯`·.4,1@}_9,1(¯`·._( $$1 )_.·´¯)_4,1{@9,1.·´¯)_4,1{@9,1.·´¯) |  /me 9,1(_.· 4,1@}9,1¯(_.·´4@}9,1¯(_.·´¯9,1( $$1 )9,1¯`·._)¯4,1{@9,1`·._)¯4,1{@9,1`·._)
...Besos
....Labios:say 0 ---4   .. .. | say 0 -4 .' 0 4` 0 4`. | say 4 .'_.-...-._`. | say 0  4`. 0 ----- 4 .' | say 0 --4 `-...-' 
....Labios Negros:say 1,1 ---4   .. .. 1 ---4 Ahhh | say 1,1 -4 .' 1 4` 1 4`. 1 -4 Este beso | say 4,1 .'_.-...-._`.  4 es | say 1,1 4`. 1 ----- 4 .'1 4 para ti!!!! | say  1,1 --4 `-...-' 1 --4 $$1 $+ !
....Beso suave:/me apaga las luces del canal, toma a2 $$1 ,por la cintura......... y a la luz de una vela.... lo besa suavemente!!
....Beso apasionado:/me apaga las luces del canal, pasa sus brazos por el cuello de2 $$1 , y a la luz de una vela...... lo besa apasionadamente
....Beso Loco:/me se acerca a $$1 y mientras admira su musculatura se muere por un beso loco .... me das un beso loco?
.Medidor
..Nivel 1:say 14,14 0,15 0,14 7,1  8,1717,17234567890  0,14 0,15 0,14  $$1 esta en el nivel 1 del Medidor de $input(Ingrese el tipo de medidor. Ej: Belleza,eq,CaeScript) | .agentepensar Hora de sacar mi cinta para medir.
..Nivel 2:say 14,14 0,15 0,14 7,1  18,1727,1734567890  0,14 0,15 0,14  $$1 esta en el nivel 2 del Medidor de $input(Ingrese el tipo de medidor. Ej: Belleza,eq,CaeScript) | .agentepensar Hora de sacar mi cinta para medir.
..Nivel 3:say 14,14 0,15 0,14 7,1  128,1737,174567890  0,14 0,15 0,14  $$1 esta en el nivel 3 del Medidor de $input(Ingrese el tipo de medidor. Ej: Belleza,eq,CaeScript) | .agentepensar Hora de sacar mi cinta para medir.
..Nivel 4:say 14,14 0,15 0,14 7,1  1238,1747,17567890  0,14 0,15 0,14  $$1 esta en el nivel 4 del Medidor de $input(Ingrese el tipo de medidor. Ej: Belleza,eq,CaeScript) | .agentepensar Hora de sacar mi cinta para medir.
..Nivel 5:say 14,14 0,15 0,14 7,1  12348,1757,1767890  0,14 0,15 0,14  $$1 esta en el nivel 5 del Medidor de $input(Ingrese el tipo de medidor. Ej: Belleza,eq,CaeScript) | .agentepensar Hora de sacar mi cinta para medir.
..Nivel 6:say 14,14 0,15 0,14 7,1  123458,1767,177890  0,14 0,15 0,14  $$1 esta en el nivel 6 del Medidor de $input(Ingrese el tipo de medidor. Ej: Belleza,eq,CaeScript) | .agentepensar Hora de sacar mi cinta para medir.
..Nivel 7:say 14,14 0,15 0,14 7,1  1234568,1777,17890  0,14 0,15 0,14  $$1 esta en el nivel 7 del Medidor de $input(Ingrese el tipo de medidor. Ej: Belleza,eq,CaeScript) | .agentepensar Hora de sacar mi cinta para medir.
..Nivel 8:say 14,14 0,15 0,14 7,1  12345678,1787,1790  0,14 0,15 0,14  $$1 esta en el nivel 8 del Medidor de $input(Ingrese el tipo de medidor. Ej: Belleza,eq,CaeScript) | .agentepensar Hora de sacar mi cinta para medir.
..Nivel 9:say 14,14 0,15 0,14 7,1  123456788,1797,170  0,14 0,15 0,14  $$1 esta en el nivel 9 del Medidor de $input(Ingrese el tipo de medidor. Ej: Belleza,eq,CaeScript) | .agentepensar Hora de sacar mi cinta para medir.
..Nivel 10:say 14,14 0,15 0,14 7,1  1234567898,17107,17  0,14 0,15 0,14  $$1 esta en el nivel 10 del Medidor de $input(Ingrese el tipo de medidor. Ej: Belleza,eq,CaeScript) | .agentepensar Hora de sacar mi cinta para medir.
.Colchoneta:.colchoneta $$1
.Exclamacion:say $$1 $+ , $input(Ingresa el texto,eq,CaeScript) !¡!¡!¡!¡!¡!¡!¡!¡!¡!¡!¡ 
.Tinta:say Oo14ooh 15n14o creo qu15e mi 14te15cl14ad15o se es14t15a quedando si14n 15tinta!!!
.Pregunta:say $$1 $+ , $input(Ingresa la pregunta,eq,CaeScript) ?¿?¿?¿?¿?¿?¿?¿
-
Limpiar:/clear
Cerrar:/close -mc $$1
}

menu status {
-
CaeScript %version.caescript:if %usarsonido == 1 { .splay $mircdir $+ caescript\temas\ $+ %tema $+ \ $+ $readini caescript\temas\ $+ %tema $+ \tema.ini sonidos version }
-
Activar Pantalla de datos:/ventanadatos
Sonidos
.$iif(%usarsonido == 1,$style(2)) Activar:/enablesound
.$iif(%usarsonido == 0,$style(2)) Desactivar:/disablesound
Colores en Mensajes de Ops
.$iif(%opscolor == 1,$style(2)) Activar:/enableopscolours
.$iif(%opscolor == 0,$style(2)) Desactivar:/disableopscolours
Colores en Mensajes de VoicedOps
.$iif(%opsvcolor == 1,$style(2)) Activar:/enablevopscolours
.$iif(%opsvcolor == 0,$style(2)) Desactivar:/disablevopscolours
-
Modulos
.$iif(%addondalnet == 1,$style(2)) Cargar Add-On DALnet:.load -rs caescript\addons\dalnet.mrc
.$iif(%addoneggdrop == 1,$style(2)) Cargar Add-On EggDrop:.load -rs caescript\addons\eggdrop.mrc
-
Modos del Usuario
.--> Afuera (AWAY) <--:/afuera
.Cambiar de Nick:/nick $input(Que Nick deseas usar?,eq,CaeScript)
.Modos:/mode $me $input(Que modos deseas activar?,eq,CaeScript)
Libro de Direcciones:/abook
Formato de Texto
.Sin Formato:/texton
.Formato 1:/texto1
.Formato 2:/texto2
.Formato 3:/texto3
.Formato 4:/texto4
.Formato 5:/texto5
.Formato 6:/texto6
.Formato 7:/texto7
.Formato 8:/texto8
.Formato 9:/texto9
.Formato 10:/texto10
.Formato 11:/texto11
.Formato 12:/texto12
.Formato 13:/texto13
.Formato 14:/texto14
.Formato 15:/texto15
.Formato 16:/texto16
.Formato 17:/texto17
.Formato 18:/texto18
-
Servidor(es)
.Número de Usuarios:/lusers
.Información del Servidor:/info $input(Nombre del servidor [en blanco para este servidor],eq,CaeScript)
.Admin del Servidor:/admin $input(Nombre del servidor [en blanco para este servidor],eq,CaeScript)
.Enlaces del Servidor:/links
.Version ircd:/version $input(Nombre del servidor [en blanco para este servidor],eq,CaeScript)
.Mensaje del día:/motd $input(Nombre del servidor [en blanco para este servidor],eq,CaeScript)
.Trace al Servidor:/trace $input(Nombre del servidor [en blanco para este servidor],eq,CaeScript)
.Cambiar de Servidor:/server $input(Servidor Puerto Clave [Separados por un espacio],eq,CaeScript)
Canales
.Lista de Canales:/list
.Salir de todos los canales:/partall $input(Mensaje de Salida de los Canales,eq,CaeScript)
.Entrar a un canal
..Canal Específico:/join $input(Entra el canal - No olvides el #,eq,CaeScript)
..#Bolivia:/join #Bolivia
..#Cochabamba:/join #Cochabamba
..#DALnetAyuda (Canal de Ayuda de DALnet en Español):/join #DALnetAyuda
..#IRCAyuda (Canal de Ayuda de sobre scripts en Español):/join #IRCAyuda
..#OperHelp (Canal de Ayuda de DALnet de IRCops):/join #OperHelp
..#DragonRealm (Canal de Ayuda de DALnet de IRCops):/join #DragonRealm
.Hablar al canal
..Msg al Canal:/msg $input(Mensaje a enviar,eq,CaeScript)
..Notice al Canal:/notice $input(Mensaje a enviar,eq,CaeScript)
.Ver Canal
..Lista de Ban:/mode $input(Entra el canal - No olvides el #,eq,CaeScript) +b
..Ver Modo:/mode $input(Entra el canal - No olvides el #,eq,CaeScript)
..Lista de usuarios:/names $input(Entra el canal - No olvides el #,eq,CaeScript)
..Lista de usuarios+mascara:/who $input(Entra el canal - No olvides el #,eq,CaeScript)
Who(Quien)
.Whois:/whois $input(Ingresa el nick,eq,CaeScript)
.WhoWas:/whowas $input(Ingresa el nick,eq,CaeScript)
.Who:/who $input(Ingresa parámetros y el patrón de búsqueda,eq,CaeScript)
.Lista IRCops:/who 0 o
.IRCops en un sever:/who +ms o $input(Nombre del servidor,eq,CaeScript)
Mensajes
.Desplegar Colores
..Activar colores:/strip -c
..Desactivar colores:/strip +c
.Desplegar Negrillas
..Activar negrillas:/strip -b
..Desactivar negrillas:/strip +b
.Desplegar SubRayado
..Activar SubRayado:/strip -u
..Desactivar SubRayado:/strip +u
.Desplegar Reverso
..Activar Reverso:/strip -r
..Desactivar Reverso:/strip +r
-
Limpiar:/clear
Limpiar Todas las ventanas:/clearall -snqmtg
Desconectarse:/cerrar
}
