;увеличить допустимое количество нажатий в заданный интервал,
;предотвращая тем самым появление диалогового окна с предупрежеднием
#MaxHotKeysPerInterval 200

;установить режим отсчета координат
;CoordMode Mouse, Screen

;заменить Alt+F4 на Ctrl+Alt+c
!F4::return
^!c::Send !{F4}

;переместить активное окно в центр по Win+c
#c::
  WinGetPos, , , width, height, A
  WinMove A, , (A_ScreenWidth / 2) - (width / 2), (A_ScreenHeight / 2) - ((height / 2) + 20)
return

;изменить размеры окна
;1584x838
^!1::
  WinMove A, ,(A_ScreenWidth / 2) - (1584 / 2), (A_ScreenHeight / 2) - ((838 / 2) + 20), 1584, 838
return

;1200x800
^!2::
  WinMove A, ,(A_ScreenWidth / 2) - (1200 / 2), (A_ScreenHeight / 2) - ((800 / 2) + 20), 1200, 800
return

;вызывать меню по Ctrl+LWin
^LWin::AppsKey

;вызывать меню по Ctrl+RWin
;^AppsKey::AppsKey
^RWin::Appskey

;заменить меню на RWin
;AppsKey::RWin

;переместить курсор мыши в край экрана
#q::
  CoordMode Mouse, Screen
  DllCall("SetCursorPos", int, 1600, int, 450)
return

;увеличить/уменьшить громкость
#Up:: Send {Volume_Up}
#Down:: Send {Volume_Down}

;#q::
; CoordMode Mouse, Screen
; MouseMove 1600, 0
;return
