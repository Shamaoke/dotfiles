/// General ///

// do not close the browser window when closing the last tab
user_pref('browser.tabs.closeWindowWithLastTab', false);

// eliminate tearing when scrolling a page
user_pref('layers.acceleration.force-enabled', true);

// set the Alt key to show menu
user_pref('ui.key.menuAccessKey', 18);

// do not show menu by pressing the Alt key alone
// use the key accelerators along with the Alt key instead
user_pref('ui.key.menuAccessKeyFocuses', false);

// disable add-ons compatibility warning at about:addons
user_pref('extensions.checkCompatibility.56.2', true);

// save windows and tabs from the last session
user_pref('browser.startup.page', 3);

// disable the reader mode
user_pref('reader.parse-on-load.enabled', false);

// suppress web notifications requests for all sites
user_pref('dom.webnotifications.enabled', false);

// use a configuration file for proxy settings
user_pref('network.proxy.type', 2);

// set a configuration file for proxy server settings
user_pref('network.proxy.autoconfig_url', 'file:///home/user/.waterfox/7qbwcag5.default/proxy.pac');

// specify a number of entries in the address bar drop-down list
user_pref('browser.urlbar.maxRichResults', 20);

// disable the save passwords feature
user_pref('signon.rememberSignons', false);

/// VimFx ///

/// General

// pretend that en-us layout is always used
user_pref('extensions.VimFx.ignore_keyboard_layout', true);

/// Scrolling

// tune the VimFx smooth scrolling
// see: https://github.com/akhodakivskiy/VimFx/blob/master/documentation/options.md#scrolling-options
user_pref('extensions.VimFx.smoothScroll.lines.spring-constant', '500');

user_pref('extensions.VimFx.scroll.repeat_timeout', 10);

user_pref('extensions.VimFx.scroll.vertical_boost', 2);

/// Keybindings

// follow link, focus text input or click button
user_pref('extensions.VimFx.mode.normal.follow', 'f');

// follow link in a new foreground tab
user_pref('extensions.VimFx.mode.normal.follow_in_focused_tab', 'F');

// follow link in a new background tab
user_pref('extensions.VimFx.mode.normal.follow_in_tab', 'et');

// go back in history
user_pref('extensions.VimFx.mode.normal.history_back', '<');

// go forward in history
user_pref('extensions.VimFx.mode.normal.history_forward', '>');

// previous tab
user_pref('extensions.VimFx.mode.normal.tab_select_previous', 'h');

// next tab
user_pref('extensions.VimFx.mode.normal.tab_select_next', 'l');

// scroll left
user_pref('extensions.VimFx.mode.normal.scroll_left', '');

// scroll right
user_pref('extensions.VimFx.mode.normal.scroll_right', '');
