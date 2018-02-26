;увеличить допустимое количество нажатий в заданный интервал,
;предотвращая тем самым появление диалогового окна с предупрежеднием
#MaxHotKeysPerInterval 200

#ifWinActive ahk_exe DOSBox.exe

  ;переназначить клавиши перемещения
  w::Up
  a::Left
  s::Down
  d::Right

  ;выбрать персонажа
  q::1
  e::2
  z::3
  x::4

  ;начать игру
  r::Enter

  ;поставить игру на паузу
  f::p

  ;увеличить уровни IPA до максимума
  c::
    Send {LButton down} {RButton down}
    Sleep 200
    Send {LButton up} {RButton up}
  return

  ;временно отключить сценарий AHK
  CapsLock:: Suspend Toggle

#IfWinActive
