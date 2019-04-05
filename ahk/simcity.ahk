;увеличить допустимое количество нажатий в заданный интервал,
;предотвращая тем самым появление диалогового окна с предупреждением
#MaxHotKeysPerInterval 200

#ifWinActive ahk_exe DOSBox.exe

  ;переназначить клавиши перемещения
  w::Up
  a::Left
  s::Down
  d::Right

  ;повернуть карту по-, против часовой стрелки
  q::Delete
  e::PgDn

  ;изменить скорость игры: медленная, нормальная, быстрая
  z:: Send !{1}
  x:: Send !{2}
  c:: Send !{3}

  ;увеличить/уменьшить масштаб
  WheelUp:: Send {Home}
  WheelDown:: Send {End}

  ;начать игру
  r::Enter

  ;поставить игру на паузу
  f:: Send !{p}

  ;временно отключить сценарий AHK
  CapsLock:: Suspend Toggle

#IfWinActive
