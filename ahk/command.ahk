﻿;увеличить допустимое количество нажатий в заданный интервал,
;предотвращая тем самым появление диалогового окна с предупреждением
#MaxHotKeysPerInterval 200

#ifWinActive ahk_exe Command.exe
  ;убрать заговолок окна, увеличив тем самым полезную площадь окна
  ;WinSet Style, -0xC00000, A

  ;убрать декорации окна
  ;WinSet Style, -0xC40000, A

  ;развернуть окно на весь экран
  ;WinMaximize A

  ;убрать заговолок окна, увеличив тем самым полезную площадь окна
  F11::
    WinGet Style, style, A

    if (style & 0xC00000) {
      WinSet Style, -0xC00000, A
    }
    else {
      WinSet Style, +0xC00000, A
    }
  return

  ;развернуть окно на весь экран/восстановить окно
  F12::
    WinGet Style, style, A

    if (style & 0xC40000) {
      WinSet Style, -0xC40000, A
      WinMaximize A
    }
    else {
      WinSet Style, +0xC40000, A
      WinRestore A
    }
  return

  ;восстановить заголовок окна
  ;WinSet Style, +0xC00000, A

  ;переместить окно
  ;WinMove A, , 0, 0, 1584, 838

  ;поменять MButton на Control
  MButton::Control

  ;переназначить клавиши перемещения
  w::Up
  a::Left
  s::Down
  d::Right

  ;добавить маркер/удалить выбранные маркеры/отключить всё маркеры
  !e:: Send ^{Insert}
  +!e:: Send ^{Delete}
  ^e:: Send ^{End}

  ;включить инструмент измерения
  e::^d

  ;проложить курс/снять метку назначения
  !w::F3
  +!w::Delete

  ;открыть редактор миссий/атаковать/атаковать вручную
  f::F11
  +f::F1
  !f:: Send +{F1}

  ;открыть окно изменения высоты/скорости хода
  !q::F2

  ;возвратиться на базу
  r::b

  ;показать окно аэродрома
  c::F6

  ;показать окно вооружения
  !c::F8

  ;показать окно навигационного оборудования
  +c::F9

  ;показать окно доктрины
  ^c:: Send ^{F9}

  ;увеличить/уменьшить компрессию времени
  z::NumpadAdd
  x::NumpadSub

  ;временно отключить сценарий AHK
  CapsLock:: Suspend, Toggle
#IfWinActive
