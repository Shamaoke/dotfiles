;увеличить допустимое количество нажатий в заданный интервал,
;предотвращая тем самым появление диалогового окна с предупреждением
#MaxHotKeysPerInterval 200

#ifWinActive ahk_class KT_SANGOKUSHI_13_WINDOW_NAME
  q::j ;troop info on/off
  c::k ;force map on/off
  e::l ;mission info on/off
  z::m ;village info on/off
  x::< ;foreign info on/off
#IfWinActive
