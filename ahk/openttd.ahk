;увеличить допустимое количество нажатий в заданный интервал,
;предотвращая тем самым появление диалогового окна с предупреждением
#MaxHotKeysPerInterval 200

#ifWinActive ahk_class OTTD
  w::Up
  s::Down
  a::Left
  d::Right
  Space::F1

  ;поменять RButton на Shift
  *RButton::    Send {Shift Down}
  *RButton Up:: Send {Shift Up}

  ;поменять MButton на Control
  *MButton::    Send {Control Down}
  *MButton Up:: Send {Control Up}

  CapsLock::Suspend, Toggle ;временно отключить сценарий
#IfWinActive
