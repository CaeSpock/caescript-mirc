; mIRC Calculator by Sigh_
; Start it with /calculator
; Adecuado para CaeScript por CaeSpock

; Initialization alias
alias calculator {
  if ($dialog(calc)) { dialog -x calc }
  if (!$hget(calc)) { hadd -m calc eq 0 }
  dialog -dmr calc calc
  hadd calc mode deg
}

alias calculadora { /calculator }
alias calc { /calculator }

; Dialog elements
dialog calc {
  title "Calculadora de mIRC"
  size -1 -1 255 470
  menu "Opciones",100
  item "",101
  item "Borrar Ecuaciones",102
  edit "",50,10 12 230 20,right autohs
  edit "0",51,10 35 230 20,right read
  button "x!",58,10 65 35 25
  button "C(n,r)",42,50 65 35 25
  button "P(n,r)",43,90 65 35 25
  button "norm",17,130 65 35 25
  button ",",18,170 65 35 25
  button "Off",54,210 65 35 25,ok
  button "log",2,10 100 35 25
  button "ln",3,50 100 35 25
  button "e",19,90 100 35 25
  button "sin",4,130 100 35 25
  button "cos",5,170 100 35 25
  button "tan",6,210 100 35 25
  button "1/x",44,10 135 35 25
  button "^",20,50 135 35 25
  button "root",7,90 135 35 25
  button "asin",8,130 135 35 25
  button "acos",9,170 135 35 25
  button "atan",10,210 135 35 25
  button "(",21,10 170 35 25
  button ")",22,50 170 35 25
  button "M",45,90 170 35 25
  button "M-",46,130 170 35 25
  button "MR",47,170 170 35 25
  button "M+",48,210 170 35 25
  button "sinh",11,10 205 35 25
  button "cosh",12,50 205 35 25
  button "tanh",13,90 205 35 25
  button "asinh",14,130 205 35 25
  button "acosh",15,170 205 35 25
  button "atanh",16,210 205 35 25
  button "7",23,10 285 45 40
  button "8",24,60 285 45 40
  button "9",25,110 285 45 40
  button "4",26,10 330 45 40
  button "5",27,60 330 45 40
  button "6",28,110 330 45 40
  button "1",29,10 375 45 40
  button "2",30,60 375 45 40
  button "3",31,110 375 45 40
  button "AC",1,205 285 40 40
  button "*",32,160 330 40 40
  button "/",33,205 330 40 40
  button "+",34,160 375 40 40
  button "-",35,205 375 40 40
  button "0",36,10 420 45 40
  button ".",37,60 420 45 40
  button "Pi",38,110 420 45 40
  button "=",49,205 420 40 40,default
  button "Phi",39,160 285 40 40
  button "<-",55,32.5 245 60 35
  button "Del",57,97.5 245 60 35
  button "->",56,162.5 245 60 35
  button "Ans",41,160 420 40 40
  button "<",59,215 0 10 12
  button ">",60,230 0 10 12
  text "",61,160 0 50 12 
  text "",52,125 0 10 12
}

; Evaluate an expression
alias parse_exp {
  if ($count($1,$chr(40)) != $count($1,$chr(41))) { 
    .echo -q $input(Parentheses mismatch,diou,Error) 
    return
  }
  var %e = $remove($1,$cr),%s,%r,%re /(?<=\))([^()+\-/^*])/g
  .echo -q $regsub(%e,/(?<=\d)([a-z])/gi,* \1,%e) $regsub(%e,%re,* \1,%e) $regsub(%e,/(Pi|Phi|e)(?=[a-z])/gi,\1 *,%e)
  %e = $replace(%e,log,lg,e,$e,phi,1.6180339887498948482,pi,$pi,ans,$iif($hget(calc,ans),$ifmatch,0))
  while $regex(%e,/(([a-z]+)\(([^()]*?)\))/gi) {
    %r = $regml(1)
    %s = $($+($,$regml(2),$chr(40),$iif($chr(44) isin $regml(3),$regml(3),$calc($regml(3))),$chr(41),$iif($regex($regml(2), $+ $&
      /a?(?:sin|cos|tan)h?/i) && $hget(calc,mode) = deg,.deg)),2)
    if (%s = $null) {
      .echo -q $input(Invalid expression,diou,Error)
      return 
    }    
    %e = $replace(%e,%r,%s)
  }
  return $iif($regex(%e,[*\-/+^]),$calc(%e),%e)
}

; Factorial
alias -l fact {
  var %i = $1,%n = 1
  if ($1 < 0) || ($2 < 0) { return }  
  while (%i && (($2 && %i > $2) || !$2)) {
    %n = $calc(%i *%n)
    dec %i
  }
  return %n
}

; Permutations
alias -l p return $iif($1 <= $2,$fact($1,$calc($1 -$2)))

; Combinations
alias -l c  {
  if ($2 > $1) return
  var %1 = $iif($calc($1 -$2) > $2,1)
  return $calc($fact($1,$iif(%1,$calc($1 -$2),$2))/$fact($iif(%1,$2,$calc($1 -$2))))
}

; Nth root of x
alias -l root return $calc($1 ^(1/$iif($2,$2,2)))

; Log (base 10)
alias -l lg return $calc($log($1)/$log(10))

; Natural Log (base e)
alias -l ln return $log($1)

; Euclid's number
alias -l e return 2.71828182845904523536

; Hyperbolic functions
alias -l sinh return $calc(($e ^$1 -$e ^-$1)/2)
alias -l cosh return $calc(($e ^$1 +$e ^-$1)/2)
alias -l tanh return $calc($sinh($1)/$cosh($1))
alias -l asinh return $log($calc($sqrt($calc($1 ^2+1))+$1))
alias -l acosh return $iif($1 >= 1,$log($calc($sqrt($calc($1 ^2-1))+$1)))
alias -l atanh return $iif($abs($1) < 1,$log($sqrt($calc((1+$1)/(1-$1)))))

; Approximate to cummulative normal distribution function
; Absolute value of error is never greater than 0.00025
alias -l norm return $round($calc(1-(1/(1+0.196854*$1 +0.115194*$1 ^2+0.000344*$1 ^3+0.019527*$1 ^4)^4)/2),4)

; Dialog initialize
on *:dialog:calc:init:*:{
  did -o calc 101 Cambiar a $iif($hget(calc,mode) = rad,degrees,radians)
  eq /
}

; Event for buttons
on *:dialog:calc:sclick:*:{
  tokenize 32 $did(50).selstart $did(50).selend
  if ($did = 1) {
    did -r calc 50,51 
    did -a calc 51 0
  }
  elseif ($did isnum 2-41) { add $did($did) $+ $iif($did isnum 2-17,$chr(40)) $1-2 }  
  elseif ($did = 58) { add fact( $1-2 }
  elseif ($did isnum 42-43) { add $left($did($did),1) $+ ( $1-2 }
  elseif ($did = 44) { add ^-1 $1-2 }
  elseif ($did = 45) && ($hget(calc,mem) != $null) { add $ifmatch $1-2 }
  elseif ($did = 46) { 
    hdel calc mem 
    did -r calc 52 
  }
  elseif ($did = 47) { did -ar calc 51 $iif($hget(calc,mem),$ifmatch,0) }
  elseif ($did = 48) { 
    hadd calc mem $iif($did(51),$ifmatch,0) 
    did -ra calc 52 M 
  }
  elseif ($did = 49) {
    var %x = $$parse_exp($did(50)) 
    did -ar calc 51 %x
    hadd calc ans %x
    .echo -q $eq($did(50),%x)
    hadd calc tmp 1
  } 
  did -f calc 50
  if ($did = 55) && ($1) {
    did -c calc 50 $1 $1 
    return
  }
  elseif ($did = 56) {     
    did -c calc 50 $calc(2+$2) $calc(2+$2) 
    return
  }
  elseif ($did = 57) {
    var %d = $did(50),%c = did -c calc 50,%m = did -ar calc 50 
    if (!$1) || (!$2) { 
      %m $mid(%d,$calc(1+$iif(!$2,1)+$2))
      %c 1 1 
    }
    elseif ($1 = $2) && ($1) {
      %m $left(%d,$calc($1 -1)) $+ $mid(%d,$calc(1+$1))
      %c $1 $1
    }
    else { 
      %m $left(%d,$1) $+ $mid(%d,$calc(1+$2))
      %c $calc(1+$1) $calc(1+$1)
    }
  }
  elseif ($did = 59) { eq - }
  elseif ($did = 60) { eq + }
}

; Add text to editbox
alias -l add {
  var %t = $did(calc,50),%d = did -ar calc 50,%c did -c calc 50  
  if ($hget(calc,tmp)) && ($2 = $len(%t)) {
    hdel calc tmp
    if ($regex($1,[*+\-/^])) { %d Ans $+ $1 }
    else { %d $1 }
    halt
  }
  did -f calc 50
  if (!$3) || (!$2) {
    %d $1 $+ $iif(!$3,%t,$mid(%t,$calc(1+$3))) 
    %c $calc(1+$len($1)) $calc(1+$len($1))
  }
  else { 
    %d $+($mid(%t,1,$2),$1,$mid(%t,$calc(1+$3))) 
    %c $calc(1+$len($1)+$2) $calc(1+$len($1)+$2) 
  }
  halt
} 

; Handle previous equations
alias -l eq {
  var %1 = $iif($isid,$3,$1),%q = $hget(calc,eq),%t = $hfind(calc,eq?*,0,w),%b = did -b calc,%e = did -e calc,%r = did -ar calc
  tokenize 32 $remove($did(calc,61),/) $calc(1+%t) $1- hadd calc eq
  if ($isid) {
    $6- $+ $3 $+($4,$cr,$5) 
    $6- $3
    inc %t
    %q = %t
  }
  else { 
    if (%1 isin +-) { h $+ $iif(%1 = +,inc,dec) calc eq }
    %q = $calc(%q %1 1)
    tokenize 13 $hget(calc,eq $+ %q)
    %r 50 $1
    %r 51 $2
  }
  %r 61 %q / %t
  if (%q < 2) { %b 59 }
  elseif (%q = 2) && ((%1 = +) || ($isid)) { %e 59 }
  if (%q = %t) { %b 60 }
  elseif ($calc(1+%q) = %t) && (%1 = -) { %e 60 }
}

; Option menu
on *:dialog:calc:menu:*:{
  if ($did = 101) {
    hadd calc mode $iif($hget(calc,mode) = deg,rad,deg) 
    did -o calc 101 Cambiar a $iif($hget(calc,mode) = rad,degrees,radians)
  }
  else {
    hdel -w calc eq?*
    hadd calc eq 0
    eq / 
  }
}
