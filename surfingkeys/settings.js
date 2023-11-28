// :::settings:::

// set a threshold for choosing tabs with Omnibar (0 for always use it)
// settings.tabsThreshold = 0

// set a sort order for tabs chosen by Omnibar (MRU or natural)
// settings.tabsMRUOrder = false

// align hints on their target elements
// settings.hintAlign = 'left'

// where a new tab should be opened: “first“, “last“, “left“, “right“, “default“
// settings.newTabPosition = 'right'

// :::bindings:::

// open a link in a new tab
// mapkey( 'F', '#1Open a link in a new tab', ( ) => Hints.create('', Hints.dispatchMouseClick, {tabbed: true}) )

// open a link in the current tab
// mapkey( 'f', '#1Open a link in the current tab;<br /> press Shift to flip hints if they are overlapped', ( ) => Hints.create('', Hints.dispatchMouseClick) )

// go back in history
// mapkey( '<', '#Go back in history', ( ) => history.go(-1), {repeatIgnore: true} )

// go forward in history
// mapkey( '>', '#4Go forward in history', ( ) => history.go(1), {repeatIgnore: true} )

// go one tab left
// mapkey( 'h', '#3Go left on {count} tabs', ( ) => RUNTIME('previousTab'), {repeatIgnore: true} )

// go one tab right
// mapkey( 'l', '#3Go right on {count} tabs', ( ) => RUNTIME('nextTab'), {repeatIgnore: true} )

// move the current tab to the left
// mapkey( 'H', '#3Move the current tab to the left', ( ) => RUNTIME('moveTab', {step: -1}) )

// move the current tab to the right
// mapkey( 'L', '#3Move the current tab to the right', ( ) => RUNTIME('moveTab', {step: 1}) )

// toggle fullscreen
// mapkey( 'q', '#3Toggle fullscreen', ( ) => document.fullscreenElement ? document.exitFullscreen() : document.documentElement.requestFullscreen() )
// Issues
// ======
// 1. When in the fullscreen mode, the Esc button brings the browser back into the normal mode
// 2. When in the fullscreen mode, the Alt-Tab button brings the browser back into the normal mode
// 3. When in the fullscreen mode, navigating to another web-page (e. g. by clicking a link) brings the browser back into the normal mode
// 4. If a web-page contains frames, going to fullscreen results in only one frame is displayed in the viewport
// 5. Web-page contents jitter when going to the fullscreen mode

// unmap a key for opening a link in a new tab
// unmap('af')

// unmap a key for opening a new window with the current tab
// unmap('W')

// unmap a key for going one tab left
// unmap('E')

// unmap a key for going one tab right
// unmap('R')

// unmap a key for going back in history
// unmap('S')

// unmap a key for going forward in history
// unmap('D')

// unmap a key for emoji completion
// iunmap(':')

// set style for links hints
// Hints.style(`
//   border-radius:  2px               !important;
//   font-family:    Iosevka           !important;
//   font-size:      9pt               !important;
//   font-weight:    normal            !important;
//   text-transform: lowercase         !important;
// `)

// set style for text hints
// Hints.style(`
//   border-radius:  2px               !important;
//   font-family:    Iosevka           !important;
//   font-size:      9pt               !important;
//   font-weight:    normal            !important;
//   text-transform: lowercase         !important;
// `, 'text')

