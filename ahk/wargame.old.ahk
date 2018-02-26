#ifWinActive ahk_class EugGameWindow
  ;увеличить допустимое количество нажатий в заданный интервал,
  ;предотвращая тем самым появление диалогового окна с предупрежеднием
  #MaxHotKeysPerInterval 200

  ;поменять MButton на LControl
  ;*MButton::    Send {LControl down}
  ;*MButton Up:: Send {LControl up}

  *MButton::
    Send {LControl down}
    KeyWait MButton
    Send {LControl up}
  return

  ;поменять LAlt на LControl
  ;*LAlt::    Send {LControl down}
  ;*LAlt Up:: Send {LControl up}

  *LAlt::
    Send {LControl down}
    KeyWait LAlt
    Send {LControl up}
  return

  ;поменять LControl на MButton
  ;*LControl::    Send {MButton down}
  ;*LControl Up:: Send {MButton up}

  *LControl::
    Send {MButton down}
    KeyWait LControl
    Send {MButton up}
  return

  ;^f::g ;смена высоты
  ;^w::j ;атака
  ;^a::k ;включить/отключить оружие
  ;^s::l ;дымовой сигнал
  ;^d::b ;огонь по позиции
  ;^q::m ;вернуться на базу
  ;^e::h ;задний ход

  ^f::
    Send {g down}
    ;при отпускании модификатора ожидать отпускания клавиши
    KeyWait f
    Send {g up}
  return

  ^w::
    Send {j down}
    ;при отпускании модификатора ожидать отпускания клавиши
    KeyWait w
    Send {j up}
  return

  ^a::
    Send {k down}
    ;при отпускании модификатора ожидать отпускания клавиши
    KeyWait a
    Send {k up}
  return

  ^s::
    Send {l down}
    ;при отпускании модификатора ожидать отпускания клавиши
    KeyWait s
    Send {l up}
  return

  ^d::
    Send {b down}
    ;при отпускании модификатора ожидать отпускания клавиши
    KeyWait d
    Send {b up}
  return

  ^q::
    Send {m down}
    ;при отпускании модификатора ожидать отпускания клавиши
    KeyWait q
    Send {m up}
  return

  ^e::
    Send {h down}
    ;при отпускании модификатора ожидать отпускания клавиши
    KeyWait e
    Send {h up}
  return

  ;Space & a:: Send 5 ;выбрать группу 5
  ;Space & s:: Send 6 ;выбрать группу 6
  ;Space & d:: Send 7 ;выбрать группу 7
  ;Space & q:: Send 8 ;выбрать группу 8
  ;Space & w:: Send 9 ;выбрать группу 9
  ;Space & e:: Send 0 ;выбрать группу 0

  *+a::
    Send {5 down}
    KeyWait a
    Send {5 up}
  return

  *+s::
    Send {6 down}
    KeyWait s
    Send {6 up}
  return

  *+d::
    Send {7 down}
    KeyWait d
    Send {7 up}
  return

  *+q::
    Send {8 down}
    KeyWait q
    Send {8 up}
  return

  *+w::
    Send {9 down}
    KeyWait w
    Send {9 up}
  return

  *+e::
    Send {0 down}
    KeyWait e
    Send {0 up}
  return

  CapsLock::Suspend, Toggle ;временно отключить сценарий
#IfWinActive
