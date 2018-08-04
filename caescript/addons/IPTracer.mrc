# IPTracer
# Por Blow-Man
# Traducido por CaeSpock
on *:LOAD:{
  if (!$exists(" $+ $scriptdirdns.cache.ini $+ " )) { 
    write -c " $+ $scriptdirdns.cache.ini $+ "
  }
}

alias ClassC {
  ;This alias will return Class C of the given ip
  ;Example: $ClassC(127.0.0.9) will return 127.0.0.*
  if ($isid) {
    if ($1) {
      ;checking if ip's structure is valid.
      if (*.*.*.* iswm $1) {
        if ($isip($1)) {
          return $+($GetNum($1,1),.,$GetNum($1,2),.,$GetNum($1,3),.,*)
        }
        else {
          return invalid
          halt
        }
      }
      else {
        return $1
      }
    }
    else {
      echo $color(info) -at * /ClassC: insufficient parameters
      halt
    }
  }
}

alias -l isIP {
  ;Matches 0.0.0.0 through 255.255.255.255
  ;Use this regex to match IP numbers with accurracy, without access to the individual IP numbers.
  var %sub = \b(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\b
  if ($regex($1,%sub)) {
    return $true
  }
  else {
    return $false
  }
}

alias -l GetNum {
  return $gettok($1,$2,46)
}

on *:DNS:{
  if ($raddress) {
    if ($raddress isnum) {
      write " $+ $scriptdirdns.tmp $+ " $raddress
      traceip
    }
    else { 
      var %tot = $dns(0)
      var %i = 1
      if (%tot > 1) {
        while (%i <= %tot) {
          write " $+ $scriptdirdns.tmp $+ " $dns(%i).ip
          inc %i
        }
        traceip
      }
      else {
        write " $+ $scriptdirdns.tmp $+ " $raddress
        traceip
      }
    }
  }
  else {
    if ($dns(0) isnum) {
      write " $+ $scriptdirdns.tmp $+ " $dns(0).ip
      traceip
    }
    else {
      write " $+ $scriptdirdns.tmp $+ " $dns(0).addr
      traceip 
    }
  }
}

alias traceip {
  if ($1) {
    if ($1 == -r && $2) {
      if ($ini(" $+ $scriptdirdns.cache.ini $+ ",$ClassC($2)) != 0) {
        remini -n " $+ $scriptdirdns.cache.ini $+ " $ClassC($2)
        if ($show) {
          echo -at  $+ %color.titulo1 $+ [ $+ %color.titulo2 $+ TraceIP: $+ %color.titulo1 $+ ] Se removió la dirección $ClassC($2) del cache.
        }
      }
      else {
        if ($show) {
          echo -at  $+ %color.titulo1 $+ [ $+ %color.titulo2 $+ TraceIP: $+ %color.titulo1 $+ ] No pude encontrar la dirección $ClassC($2) $+ .
          halt
        }
      }
    }
    elseif ($1 == -u) {
      if (!$sock(update.traceip)) {
        sockopen update.traceip scripts.THM.org.ua 80
        if ($show) {
          echo -at  $+ %color.titulo1 $+ [ $+ %color.titulo2 $+ TraceIP: $+ %color.titulo1 $+ ] Actualización en progreso.
        }
      }
      else { 
        if ($show) {
          echo -at  $+ %color.titulo1 $+ [ $+ %color.titulo2 $+ TraceIP: $+ %color.titulo1 $+ ] La actualización ya esta en progreso.
          halt
        }
      }
    }
    else {
      set %ip $1
      :check1
      if ($exists(" $+ $scriptdirdns.cache.ini $+ ")) {
        if ($isip($1)) {
          if ($ini(" $+ $scriptdirdns.cache.ini $+ ",$ClassC($1),0) != 0) {
            if ($readini(" $+ $scriptdirdns.cache.ini $+ ",$ClassC($1),location) != unresolved) {
              if ($show) {
                echo -at  $+ %color.titulo1 $+ [ $+ %color.titulo2 $+ TraceIP: $+ %color.titulo1 $+ ] $1 está en $readini(" $+ $scriptdirdns.cache.ini $+ ",$ClassC($1),location)
                halt
              }
            }
            else {
              goto w00t
            }
          }
          else {
            writeini -n " $+ $scriptdirdns.cache.ini $+ " $ClassC($1) location unresolved
            :w00t
            if (!$sock(traceip $+ %ip)) { 
              sockopen traceip $+ %ip www.dnsstuff.com 80 
            }
          }
        }
        else {
          if (!$sock(traceip $+ %ip)) { 
            sockopen traceip $+ %ip www.dnsstuff.com 80 
          }
        }
      }
      else {
        write -c " $+ $scriptdirdns.cache.ini $+ "
        goto check1
      }
    }
  }
  else {
    if ($exists(" $+ $scriptdirdns.tmp $+ ")) {
      var %i = 1
      if ($lines(" $+ $scriptdirdns.tmp $+ ") > 0) {
        if ($show) {
          .timerechoips -m 1 1 echo -at  $+ %color.titulo1 $+ [ $+ %color.titulo2 $+ TraceIP: $+ %color.titulo1 $+ ] Resolviendo $lines(" $+ $scriptdirdns.tmp $+ ") $iif($lines(" $+ $scriptdirdns.tmp $+ ") > 1,IP's o Hosts,IP o Host) $+ ...
        }        
        while (%i <= $lines(" $+ $scriptdirdns.tmp $+ ")) {
          .timertraceip $+ $read(" $+ $scriptdirdns.tmp $+ ",%i) 1 %i traceip $read(" $+ $scriptdirdns.tmp $+ ",%i)
          inc %i
        }
      }
      .remove " $+ $scriptdirdns.tmp $+ "
    }
    else {
      echo -at  $+ %color.titulo1 $+ [ $+ %color.titulo2 $+ TraceIP: $+ %color.titulo1 $+ ] Parámetros insuficientes
    }
  }
}

on *:SOCKOPEN:update.traceip:{
  if ($sockerr > 0) {
    sockclose $sockname
    echo -at  $+ %color.titulo1 $+ [ $+ %color.titulo2 $+ TraceIP: $+ %color.titulo1 $+ ] Un error ha ocurrido (Actualización)
    if ($sockerr == 3) {                                                     
      if (!$sock($sockname)) {
        sockopen update.traceip scripts.THM.org.ua 80 
      }
    }
  }
  else {
    sockwrite -n $sockname GET /scripts/IPTracer/dns.cache.ini HTTP/1.0
    sockwrite -n $sockname Host: www.THM.org.ua
    sockwrite -n $sockname ACCEPT: *.*
    sockwrite $sockname $crlf 
    %ip.line = 0
    .remove " $+ $scriptdirtempdns.cache.ini $+ "
  }
}

on *:SOCKREAD:update.traceip:{
  if (%ip.line <= 9) { 
    sockread %update
    tokenize 32 %update
    if ($1 == Content-Length:) {
      if ($calc($2 - $file(" $+ $scriptdirdns.cache.ini $+ ").size) > 0) {
        set %allow.update $true
      }
    }
    inc %ip.line 
  }
  else { 
    if (%allow.update) {
      sockread &update
      bwrite " $+ $scriptdirtempdns.cache.ini $+ " -1 &update
      unset %ip.line 
    }
    else {
      sockclose $sockname
      echo -at  $+ %color.titulo1 $+ [ $+ %color.titulo2 $+ TraceIP: $+ %color.titulo1 $+ ] Actualización: Tu cache es mas grande que el de internet. Existen $ini(" $+ $scriptdirdns.cache.ini $+ ",0) zonas en tu cache. Abortando.
    }
  }
  unset %update 
  bunset &update
}

alias -l ask.for {
  if ($?!="Existen menos o la misma cantidad de IPS en el archivo actualizado. Deseas reemplazar tu cache de todos modos?" == $true) {
    return $true
  }
  else {
    return $false
  }
}

on *:SOCKCLOSE:update.traceip:{
  .timerdo.update -m 1 1 do.update
  unset %allow.update
}

alias -l do.update {
  var %total = $calc($ini($scriptdirtempdns.cache.ini,0) - $ini($scriptdirdns.cache.ini,0))
  .remove " $+ $scriptdirdns.cache.ini $+ "
  .rename " $+ $scriptdirtempdns.cache.ini $+ " " $+ $scriptdirdns.cache.ini $+ "
  echo -at  $+ %color.titulo1 $+ [ $+ %color.titulo2 $+ TraceIP: $+ %color.titulo1 $+ ] Actualización exitosa! Existen  $ini(" $+ $scriptdirdns.cache.ini $+ ",0) zonas en el cache ahora. Se añadieron %total zonas.
}

on *:SOCKOPEN:traceip*:{
  if ($sockerr > 0) {
    sockclose $sockname
    echo -at  $+ %color.titulo1 $+ [ $+ %color.titulo2 $+ TraceIP: $+ %color.titulo1 $+ ] Un error ha ocurrido.
    if ($sockerr == 3) {                                                     
      if (!$sock($sockname)) { sockopen traceip $+ %ip www.dnsstuff.com 80 }
    }
  }
  else {
    sockwrite -n $sockname GET /tools/city.ch?ip= $+ %ip HTTP/1.1
    sockwrite -n $sockname User-Agent: Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 1.1.4322; InfoPath.1)
    sockwrite -n $sockname Host: www.dnsstuff.com
    sockwrite -n $sockname Connection: keep-alive
    sockwrite $sockname $crlf 
  }
}

on *:SOCKCLOSE:traceip*:{
  if (!%ip) { 
  echo -at  $+ %color.titulo1 $+ [ $+ %color.titulo2 $+ TraceIP: $+ %color.titulo1 $+ ] Un error ha ocurrido
  }
  unset %iptracer.c, %iptracer.ip
}

on *:SOCKREAD:traceip*:{
  sockread %trace
  tokenize 32 %trace
  if (IP: isin %trace) {
    set %iptracer.ip $2-
  }
  elseif (Country: isin %trace) {
    set %iptracer.c $remove($2-,[,],(High))
  }
  elseif (City: isin %trace) {
    echo $color(other) -at %iptracer.ip esta en %iptracer.c ( $+ $2- $+ )
    if ($isip(%iptracer.ip)) {
      writeini -n " $+ $scriptdirdns.cache.ini $+ " $ClassC(%iptracer.ip) location %iptracer.c ( $+ $2- $+ )
    }
    sockclose $sockname
  }
  unset %trace
  .timerruns 1 1 unset %ip
}

menu nicklist,query {
  Trace IP:{
    .userhost $$1
    if ($IsIP($remove($address($$1,2),*!*@))) {
      traceip $remove($address($$1,2),*!*@)
    }
    else {
      dns $$1
    }
  }
}

;iN LOVE, BloW-MaN
;2004-2005
