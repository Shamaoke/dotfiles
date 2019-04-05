;увеличить допустимое количество нажатий в заданный интервал,
;предотвращая тем самым появление диалогового окна с предупреждением
#MaxHotKeysPerInterval 200

#ifWinActive ahk_exe ATrain9v4g.exe
  e::return ;вверх
  x::return ;вниз
  ;s::return ;влево
  ;d::return ;вправо
  z::return ;влево-вниз
  ;w::return ;влево-вверх
  c::return ;вправо-вниз
  r::return ;вправо-вверх

  w::NumpadUp
  s::NumpadDown
  a::NumpadLeft
  d::NumpadRight

  ;+a::Left
  ;+d::Right

  +a::
    Send {Left down}
    ;при отпускании модификатора ожидать отпускания клавиши
    KeyWait a
    Send {Left up}
  return

  +d::
    Send {Right down}
    ;при отпускании модификатора ожидать отпускания клавиши
    KeyWait d
    Send {Right up}
  return

  ;+w::Home
  ;+s::End

  +w::
    Send {Home down}
    ;при отпускании модификаторо ожидать отпускания клавиши
    KeyWait w
    Send {Home up}
  return

  +s::
    Send {End down}
    ;при отпускании модификаторо ожидать отпускания клавиши
    KeyWait s
    Send {End up}
  return

  Space::NumpadMult ;остановить течение времени
  +Space::Space     ;включить инструмент удаления
  f::NumpadClear    ;выровнить карту относительно Севера
  q::NumpadDel      ;переместиться к текущему выбранному транспортному средству

  CapsLock::Suspend, Toggle ;временно отключить сценарий
#IfWinActive
