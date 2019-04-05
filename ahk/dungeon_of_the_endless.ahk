;увеличить допустимое количество нажатий в заданный интервал,
;предотвращая тем самым появление диалогового окна с предупреждением
#MaxHotKeysPerInterval 200

#ifWinActive ahk_class UnityWndClass
  ;заменить MMB на Shift
  MButton::    Send {Shift Down}
  MButton Up:: Send {Shift Up}

  !w::1 ;выбрать персонажа 1
  !s::2 ;выбрать персонажа 2
  !a::3 ;выбрать персонажа 3
  !d::4 ;выбрать персонажа 4

  CapsLock::Suspend, Toggle ;временно отключить сценарий
#IfWinActive
