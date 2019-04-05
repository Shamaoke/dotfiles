#ifWinActive ahk_class EugGameWindow
  ;увеличить допустимое количество нажатий в заданный интервал,
  ;предотвращая тем самым появление диалогового окна с предупреждением
  #MaxHotKeysPerInterval 200

  ;поменять MButton на LControl
  ;*MButton::
  ;  Send {LControl down}
  ;  KeyWait MButton
  ;  Send {LControl up}
  ;return

  ;поменять LAlt на LControl
  *LAlt::
    Send {LControl down}
    KeyWait LAlt
    Send {LControl up}
  return

  ;поменять LControl на MButton
  *LControl::
    Send {MButton down}
    KeyWait LControl
    Send {MButton up}
  return

  ;смена высоты
  *^f::
    Send {g down}
    ;при отпускании модификатора ожидать отпускания клавиши
    KeyWait f
    Send {g up}
  return

  ;атака
  *^w::
    Send {j down}
    ;при отпускании модификатора ожидать отпускания клавиши
    KeyWait w
    Send {j up}
  return

  ;включить/отключить оружие
  *^a::
    Send {k down}
    ;при отпускании модификатора ожидать отпускания клавиши
    KeyWait a
    Send {k up}
  return

  ;дымовой сигнал
  *^s::
    Send {l down}
    ;при отпускании модификатора ожидать отпускания клавиши
    KeyWait s
    Send {l up}
  return

  ;огонь по позиции
  *^d::
    Send {b down}
    ;при отпускании модификатора ожидать отпускания клавиши
    KeyWait d
    Send {b up}
  return

  ;вернуться на базу
  *^q::
    Send {m down}
    ;при отпускании модификатора ожидать отпускания клавиши
    KeyWait q
    Send {m up}
  return

  ;задний ход
  *^e::
    Send {h down}
    ;при отпускании модификатора ожидать отпускания клавиши
    KeyWait e
    Send {h up}
  return

  ;выбрать группу 5
  MButton & a:: Send {5}

  ;выбрать группу 6
  MButton & s:: Send {6}

  ;выбрать группу 7
  MButton & d:: Send {7}

  ;выбрать группу 8
  MButton & q:: Send {8}

  ;выбрать группу 9
  MButton & w:: Send {9}

  ;выбрать группу 0
  MButton & e:: Send {0}

  CapsLock::Suspend, Toggle ;временно отключить сценарий
#IfWinActive
