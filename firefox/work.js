
///
/// ::: Firefox configuration for the WORK profile :::
///

/// Do not close the browser window when closing the last tab
user_pref('browser.tabs.closeWindowWithLastTab', false);

/// Open a new tab after the current one
user_pref('browser.tabs.insertAfterCurrent', true);

/// Change the browser behavior at startup
///
/// 0 — start with blank page
/// 1 — use the home page (define it in 'browser.startup.homepage')
/// 2 — load the last visited page
/// 3 — resume the previous browser session
///
/// Details
/// -------
/// [Browser.startup.page - MozillaZine Knowledge Base](http://kb.mozillazine.org/Browser.startup.page)
///
user_pref('browser.startup.page', 3);

/// Show the URL scheme in the address bar
user_pref('browser.urlbar.trimURLs', false);

/// Configure the hover tab preview
///
/// Details
/// -------
/// [How to disable Hover Tab Previews for good? : r/firefox](https://www.reddit.com/r/firefox/comments/1dv5xqg/how_to_disable_hover_tab_previews_for_good)
///
user_pref('browser.tabs.hoverPreview.enabled', false);
user_pref('browser.tabs.hoverPreview.showThumbnails', false);

/// When restoring a session, disable opening the browser on the virtual desktop
/// where it was closed the last time
user_pref('widget.disable-workspace-management', true);

/// Set the Alt key to show menu
user_pref('ui.key.menuAccessKey', 18);

/// Do not show menu by pressing the Alt key alone. Use the key accelerators
/// along with the Alt key instead
user_pref('ui.key.menuAccessKeyFocuses', false);

/// Behave in the fullscreen mode as in the window mode
user_pref('full-screen-api.ignore-widgets', true);

/// Prevent save password popup from appearing when entering passwords in
/// password fields
user_pref('signon.rememberSignons', false);

/// Enable vertical tabs
user_pref('sidebar.revamp', true);
user_pref('sidebar.verticalTabs', true);

/// Enable loading of the `userChrome.css` and `userContent.css` files
user_pref('toolkit.legacyUserProfileCustomizations.stylesheets', true);

///
/// ::: Browser features :::
///

/// Disable the built-in translator
user_pref('browser.translations.enable', false);

/// Disable Web Speech API
///
/// Details
/// -------
/// [Web Speech API - Web APIs | MDN](https://developer.mozilla.org/en-US/docs/Web/API/Web_Speech_API)
///
user_pref('media.webspeech.recognition.enable', false);
user_pref('media.webspeech.synth.enabled', false);

///
/// ::: Proxy configuration :::
///

/// Use a configuration file for proxy settings
user_pref('network.proxy.type', 2);

/// Set a configuration file for proxy server settings
user_pref('network.proxy.autoconfig_url', 'file:///home/user/.mozilla/firefox/25m59x9w.work/proxy.pac');

///
/// ::: Geo configuration :::
///

/// Keep geo location popup from appearing
user_pref('geo.enabled', false);

