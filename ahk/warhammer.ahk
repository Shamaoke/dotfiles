;увеличить допустимое количество нажатий в заданный интервал,
;предотвращая тем самым появление диалогового окна с предупреждением
#MaxHotKeysPerInterval 200

#ifWinActive ahk_exe WHSHR.EXE

  ;повторно нажимать ПКМ при зажатии данной клавиши вместе с клавишей Shift
  +LButton::
    Loop {
      GetKeyState shift_state, Shift, P
      GetKeyState lbutton_state, LButton, P
      Send {LButton}
      Sleep 100
      ;IfEqual state, U, break
      if (shift_state = "U" or lbutton_state = "U") {
        break
      }
    }
  return

  ;временно отключить сценарий AHK
  CapsLock:: Suspend Toggle

#IfWinActive
