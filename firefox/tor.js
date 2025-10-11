
///
/// ::: Firefox configuration for the TOR profile :::
///

/// Do not close the browser window when closing the last tab
user_pref('browser.tabs.closeWindowWithLastTab', false);

/// When restoring a session, disable opening the browser on the virtual desktop
/// where it was closed last time
user_pref('widget.disable-workspace-management', true);

/// Use a configuration file for proxy settings
user_pref('network.proxy.type', 0);

/// Set the configuration file for proxy server settings
user_pref('network.proxy.autoconfig_url', 'file:///home/user/.mozilla/firefox/8z23nxxa.tor/proxy.pac');

