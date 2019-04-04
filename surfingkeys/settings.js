// :::settings:::

// align hints on their target elements
settings.hintAlign = 'left'

// :::bindings:::

// open a link in a new tab
mapkey( 'F', '#1Open a link in a new tab', ( ) => Hints.create('', Hints.dispatchMouseClick, {tabbed: true}) )

// open a link in a current tab
mapkey( 'f', '#1Open a link in the current tab;<br /> press Shift to flip hints if the are overlapped', ( ) => Hints.create('', Hints.dispatchMouseClick) )

// unmap a key for opening a new window with the current tab
unmap('W')

// Hints.style(`
//
//   background: unset !important;
//   border:     unset !important;
//   font:       unset !important;
//
//   background-color: #ff6c00           !important;
//   font-family:      Input Mono Narrow !important;
//   font-weight:      normal            !important;
//   border-width:     2px               !important;
//
// `)

// Hints.style(`
//
//   background: unset !important;
//   border:     unset !important;
//   font:       unset !important;
//
//   background-color: #008844           !important;
//   font-family:      Input Mono Narrow !important;
//   font-weight:      normal            !important;
//   border-width:     2px               !important;
//
// `, 'text')
