; Author: Honey18 (Dalnet)
; Channels: #Helpdesk @ Dalnet
; Syntax: /clonescan #channel <OR>  In channel window Only -> /clonescan

alias clonescan {
  if ($active !ischan) && (!$1) { echo $color(info) -at *** Usa este comando en la ventana de un canal o envia el nombre de canal como parametro -> /clonescan #channel | return }
  var %chan $iif($1,$1,$active)
  if ($me !ison %chan) { echo $color(info) -at *** No estas es %chan | return }
  if ($chan(%chan).ial == $false) && ($?!"La IAL para %chan no está actualizada $+ $crlf $+ Deseas actualizar la IAL?") {
    .ial on
    .who %chan
    set %clonescan. [ $+ [ %chan ] ] $true
    ; *CaeScript* return
  }
  if ($hget(clonescan)) { hfree clonescan }
  hmake clonescan $nick(%chan,0)
  var %ctick $ticks,%x 0,%t 0
  while (%x < $nick(%chan,0)) {
    inc %x
    hadd clonescan $address($nick(%chan,%x),2) $hget(clonescan,$address($nick(%chan,%x),2)) $+ $nick(%chan,%x) $+ $chr(44)
  }
  if ($window($+(@cs,-,%chan,-,$cid))) { window -c $+(@cs,-,%chan,-,$cid)  }
  window -l $+(@cs,-,%chan,-,$cid)  50 50 700 376 Fixedsys 3
  aline $+(@cs,-,%chan,-,$cid)  Buscando clones en %chan
  aline $+(@cs,-,%chan,-,$cid)  -
  aline $+(@cs,-,%chan,-,$cid)  Clones $+ $str($chr(160),2) $+ Direcciones $+ $str($chr(160),31) $+ Nicks
  while (%t < $hget(clonescan,0).item) {
    inc %t
    var %no.of.c = $numtok($hget(clonescan,$hget(clonescan,%t).item),44),%ad = $hget(clonescan,%t).item
    if (%no.of.c > 1) {
      aline $+(@cs,-,%chan,-,$cid)  $chr(160) $+ %no.of.c $+ $str($chr(160),6) $+ %ad $+ $str($chr(160),$calc(38 - $len(%ad))) $+ $gettok($hget(clonescan,%ad),1- $+ %no.of.c,44)
    }
  }
  hfree clonescan
  aline $+(@cs,-,%chan,-,$cid)  -
  if ($line($+(@cs,-,%chan,-,$cid) ,0,0) > 4) {
    aline $+(@cs,-,%chan,-,$cid)  Busqueda completada ( $+ $calc(($ticks - %ctick) / 1000) $+ s)
  }
  else {
    aline $+(@cs,-,%chan,-,$cid)  No se encontraron clones!
  }
}
alias -l c-menu {
  if (whois isin $3) || (ping isin $3) {
    if ($1 isnum) { if ($gettok($2,$1,44))  return $replace($ifmatch,$chr(125),$chr(93),$chr(123),$chr(91)) : $+ $3 $ifmatch }
  }
  if (notice isin $3) {
    if ($1 isnum) { if ($gettok($2,$1,44))  return $replace($ifmatch,$chr(125),$chr(93),$chr(123),$chr(91)) :notice $ifmatch Remueve tus clones de $gettok($active,2,45) (Total: $+ $gettok($sline($active ,1),1,160) $+ )-(Dirección: $+ $gettok($sline($active ,1),2,160) $+ ) }
  }
  if (ban isin $3) {
    if ($1 isnum) { if ($gettok($2,$1,44))  return $replace($ifmatch,$chr(125),$chr(93),$chr(123),$chr(91)) :mode $gettok($active,2,45) +b $gettok($sline($active ,1),2,160) $+ $crlf $+ kick $gettok($active,2,45) $ifmatch :No metas tus clones aca! (Total: $+ $gettok($sline($active ,1),1,160) $+ )-(Dirección: $+ $gettok($sline($active ,1),2,160) $+ ) }
  }
  if (kick isin $3) {
    if ($1 isnum) { if ($gettok($2,$1,44))  return $replace($ifmatch,$chr(125),$chr(93),$chr(123),$chr(91)) :kick $gettok($active,2,45) $ifmatch No metas tus clones aca! (Total: $+ $gettok($sline($active ,1),1,160) $+ )-(Dirección: $+ $gettok($sline($active ,1),2,160) $+ ) }
  }
}


menu @cs-* {
  dclick:echo -s - $gettok($active,2,45)
  $iif(* isin $sline($active ,1),Ping)
  .$submenu($c-menu($1,$gettok($sline($active ,1),3,160),ping))
  $iif(* isin $sline($active ,1),Whois)
  .$submenu($c-menu($1,$gettok($sline($active ,1),3,160),whois))
  $iif(* isin $sline($active ,1),Advertir)
  .$submenu($c-menu($1,$gettok($sline($active ,1),3,160),notice))
  $iif(* isin $sline($active ,1),Kick)
  .$submenu($c-menu($1,$gettok($sline($active ,1),3,160),kick))
  .-
  .Todos:cs-fk kick $gettok($active,2,45) $gettok($sline($active ,1),2,160)
  $iif(* isin $sline($active ,1),Kick Ban)
  .$submenu($c-menu($1,$gettok($sline($active ,1),3,160),ban))
  .-
  .Todos:cs-fk kb $gettok($active,2,45) $gettok($sline($active ,1),2,160)
}
raw 352:*: {
  If (%clonescan. [ $+ [ $2 ] ]) { halt }
}
raw 315:*:{
  If (%clonescan. [ $+ [ $2 ] ]) { unset %clonescan. [ $+ [ $2 ] ] | halt }
}
alias cs-fk {
  if ($1 == kb) { mode $2 +b $3 }
  var %loop 0 | while (%loop < $ialchan($3,$2,0)) { inc %loop |  kick $2 $ialchan($3,$2,%loop).nick Removing $+(,%loop,) of $+(,$numtok($gettok($sline($active ,1),3,160),44),) clones in $+(,$2,) from $+(,$3,) }
}