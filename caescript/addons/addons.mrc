;
; #### AddOns de CaeScript ####
; ####
; #### Sirvase listar los módulos o AddOns a cargar tanto en la sección
; #### ON LOAD como en ON UNLOAD.
;
on *:LOAD:{
  ;
  ; #### Aca poner la lista de addons a cargar ####
  ;
  if %addondalnet == 1 {  .load -rs caescript\addons\dalnet.mrc }
  if %addoneggdrop == 1 { .load -rs caescript\addons\eggdrop.mrc }
  ; ### Ahora procesamos la lista de modulos a cargar . . . 
  ; ### del archivo addons.txt
   var %ct = 1
   while (%ct <= $lines( caescript\addons\addons.txt ) ) {
    .load -rs caescript\addons\ $+ $read(caescript\addons\addons.txt, %ct) 
    inc %ct
   }
  ; ###
}
on *:UNLOAD:{
  ;
  ; #### Aca repetir la lista de addons a descargar ###
  ;
  if %addoneggdrop == 1 { .unload -rs caescript\addons\eggdrop.mrc }
  if %addondalnet == 1 { .unload -rs caescript\addons\dalnet.mrc }
  ; ### Aca inserta los modulos adicionales a descargar
  ; ### Ej: .load -rs caescript\addons\nuevo.mrc
  ; ### Ahora procesamos la lista de modulos a cargar . . . 
  ; ### del archivo addons.txt
  var %ct = 1
  while (%ct <= $lines( caescript\addons\addons.txt ) ) {
    .unload -rs caescript\addons\ $+ $read(caescript\addons\addons.txt, %ct) 
    inc %ct
  }
  ; ###
}

