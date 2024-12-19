
///
/// ::: Firefox configuration for the DEV profile :::
///

/// Do not close the browser window when closing the last tab
user_pref('browser.tabs.closeWindowWithLastTab', false);

/// When restoring a session, disable opening the browser on the virtual desktop
/// where it was closed last time
user_pref('widget.disable-workspace-management', true);

/// Set the Alt key to show menu
user_pref('ui.key.menuAccessKey', 18);

/// Do not show menu by pressing the Alt key alone. Use the key accelerators
/// along with the Alt key instead
user_pref('ui.key.menuAccessKeyFocuses', false);

/// Behave in the window mode as in the fullscreen mode
user_pref('full-screen-api.ignore-widgets', true);

/// Disable built-in translator
user_pref('browser.translations.enable', false);

/// Prevent save password popup from appearing when entering passwords in
/// password fields
user_pref('signon.rememberSignons', false);

