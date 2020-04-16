-- hotkey mash

cmd          = { 'cmd' }
ctrl         = { 'ctrl' }
alt          = { 'alt' }
shift        = { 'shift' }
cmdCtrl      = { 'cmd', 'ctrl' }
cmdShift     = { 'cmd', 'shift' }
cmdAlt       = { 'cmd', 'alt' }
cmdCtrlShift = { 'cmd', 'ctrl', 'shift' }
cmdCtrlAlt   = { 'cmd', 'ctrl', 'alt' }
ctrlShift    = { 'ctrl', 'shift' }
ctrlAlt      = { 'ctrl', 'alt' }
cmdAltShift  = { 'cmd', 'alt', 'shift' }
altShift     = { 'alt', 'shift' }

-- key map -- cmd + hjkl to arrow keys

local function keyCode(key, modifiers)
  modifiers = modifiers or {}

  return function()
      hs.eventtap.event.newKeyEvent(modifiers, string.lower(key), true):post()
      hs.timer.usleep(1000)
      hs.eventtap.event.newKeyEvent(modifiers, string.lower(key), false):post()
  end
end

hs.hotkey.bind(cmd , 'h' , keyCode('left')  , nil , keyCode('left'))
hs.hotkey.bind(cmd , 'j' , keyCode('down')  , nil , keyCode('down'))
hs.hotkey.bind(cmd , 'k' , keyCode('up')    , nil , keyCode('up'))
hs.hotkey.bind(cmd , 'l' , keyCode('right') , nil , keyCode('right'))

hs.hotkey.bind(cmdShift , 'h' , keyCode('left'  , shift) , nil , keyCode('left'  , shift))
hs.hotkey.bind(cmdShift , 'j' , keyCode('down'  , shift) , nil , keyCode('down'  , shift))
hs.hotkey.bind(cmdShift , 'k' , keyCode('up'    , shift) , nil , keyCode('up'    , shift))
hs.hotkey.bind(cmdShift , 'l' , keyCode('right' , shift) , nil , keyCode('right' , shift))

hs.hotkey.bind(cmdCtrl , 'h' , keyCode('left'  , ctrl) , nil , keyCode('left'  , ctrl))
hs.hotkey.bind(cmdCtrl , 'j' , keyCode('down'  , ctrl) , nil , keyCode('down'  , ctrl))
hs.hotkey.bind(cmdCtrl , 'k' , keyCode('up'    , ctrl) , nil , keyCode('up'    , ctrl))
hs.hotkey.bind(cmdCtrl , 'l' , keyCode('right' , ctrl) , nil , keyCode('right' , ctrl))

hs.hotkey.bind(cmdAlt , 'h' , keyCode('left'  , alt) , nil , keyCode('left'  , alt))
hs.hotkey.bind(cmdAlt , 'j' , keyCode('down'  , alt) , nil , keyCode('down'  , alt))
hs.hotkey.bind(cmdAlt , 'k' , keyCode('up'    , alt) , nil , keyCode('up'    , alt))
hs.hotkey.bind(cmdAlt , 'l' , keyCode('right' , alt) , nil , keyCode('right' , alt))

hs.hotkey.bind(cmdCtrlShift , 'h' , keyCode('left'  , ctrlShift) , nil , keyCode('left'  , ctrlShift))
hs.hotkey.bind(cmdCtrlShift , 'j' , keyCode('down'  , ctrlShift) , nil , keyCode('down'  , ctrlShift))
hs.hotkey.bind(cmdCtrlShift , 'k' , keyCode('up'    , ctrlShift) , nil , keyCode('up'    , ctrlShift))
hs.hotkey.bind(cmdCtrlShift , 'l' , keyCode('right' , ctrlShift) , nil , keyCode('right' , ctrlShift))

hs.hotkey.bind(cmdAltShift , 'h' , keyCode('left'  , altShift) , nil , keyCode('left'  , altShift))
hs.hotkey.bind(cmdAltShift , 'j' , keyCode('down'  , altShift) , nil , keyCode('down'  , altShift))
hs.hotkey.bind(cmdAltShift , 'k' , keyCode('up'    , altShift) , nil , keyCode('up'    , altShift))
hs.hotkey.bind(cmdAltShift , 'l' , keyCode('right' , altShift) , nil , keyCode('right' , altShift))

hs.hotkey.bind(cmdCtrlAlt , 'h' , keyCode('left'  , ctrlAlt) , nil , keyCode('left'  , ctrlAlt))
hs.hotkey.bind(cmdCtrlAlt , 'j' , keyCode('down'  , ctrlAlt) , nil , keyCode('down'  , ctrlAlt))
hs.hotkey.bind(cmdCtrlAlt , 'k' , keyCode('up'    , ctrlAlt) , nil , keyCode('up'    , ctrlAlt))
hs.hotkey.bind(cmdCtrlAlt , 'l' , keyCode('right' , ctrlAlt) , nil , keyCode('right' , ctrlAlt))

hs.hotkey.bind(cmd, 'escape', keyCode('`', cmd), nil, keyCode('`', cmd))

-- grid

hs.grid.MARGINX    = 0
hs.grid.MARGINY    = 0
hs.grid.GRIDWIDTH  = 8
hs.grid.GRIDHEIGHT = 4

hs.hotkey.bind(alt, "g", function() hs.grid.show() end)
