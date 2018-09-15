/* :::General::: */

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
// see: https://support.mozilla.org/en-US/kb/push-notifications-firefox
user_pref('dom.push.enabled', false);
user_pref('dom.webnotifications.enabled', false);

// use a configuration file for proxy settings
user_pref('network.proxy.type', 2);

// set a configuration file for proxy server settings
user_pref('network.proxy.autoconfig_url', 'file:///home/user/.waterfox/7qbwcag5.default/proxy.pac');

// specify a number of entries in the address bar drop-down list
user_pref('browser.urlbar.maxRichResults', 20);

// disable the save passwords feature
user_pref('signon.rememberSignons', false);

// disable middle-click load clipboard URL behavior
user_pref('middlemouse.contentLoadURL', false);

// disable video autoplay
user_pref('media.autoplay.enabled', false);

// suppress web notifications requests for all sites
user_pref('dom.webnotifications.enabled', false);

/* :::Fonts::: */

// set a type for the Latin proportional fonts
user_pref('font.default.x-western', 'sans-serif');

// set a type for the Cyrillic proportional fonts
user_pref('font.default.x-cyrillic', 'sans-serif');

// set a font family for the Latin serif type
user_pref('font.name.serif.x-western', 'PT Serif');

// set a font family for the Cyrillic serif type
user_pref('font.name.serif.x-cyrillic', 'PT Serif');

// set a font family for the Japanese serif type
user_pref('font.name.serif.ja', 'Kozuka Mincho Pro');

// set a font family for the Latin sans-serif type
user_pref('font.name.sans-serif.x-western', 'PT Sans');

// set a font family for the Cyrillic sans-serif type
user_pref('font.name.sans-serif.x-cyrillic', 'PT Sans');

// set a font family for the Japanese sans-serif type
user_pref('font.name.sans-serif.ja', 'Kozuka Gothic Pro');

// set a font family for the Latin monospace type
user_pref('font.name.monospace.x-western', 'Input Mono Narrow');

// set a font family for the Cyrillic monospace type
user_pref('font.name.monospace.x-cyrillic', 'Input Mono Narrow');

// set a font family for the Japanese monospace type
user_pref('font.name.monospace.ja', 'Input Mono Narrow');

// set a size for the Latin proportional fonts
user_pref('font.size.variable.x-western', 16);

// set a size for the Cyrillic proportional fonts
user_pref('font.size.variable.x-cyrillic', 16);

// set a size for the Japanese proportional fonts
user_pref('font.size.variable.ja', 16);

// set a size for the Latin monospace fonts
user_pref('font.size.fixed.x-western', 14);

// set a size for the Cyrillic monospace fonts
user_pref('font.size.fixed.x-cyrillic', 14);

// set a size for the Japanese monospace fonts
user_pref('font.size.fixed.ja', 14);

/* :::VimFx::: */

/* ::VimFx | General:: */

// pretend that en-us layout is always used
user_pref('extensions.VimFx.ignore_keyboard_layout', true);

/* ::VimFx | Scrolling:: */

// tune the VimFx smooth scrolling
// see: https://github.com/akhodakivskiy/VimFx/blob/master/documentation/options.md#scrolling-options
user_pref('extensions.VimFx.smoothScroll.lines.spring-constant', '500');

user_pref('extensions.VimFx.scroll.repeat_timeout', 10);

user_pref('extensions.VimFx.scroll.vertical_boost', 2);

/* ::VimFx | Keybindings:: */

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
