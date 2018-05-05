// show 24 tiles at the home page instead of the default 4
user_pref('browser.newtabpage.activity-stream.topSitesCount', 24);

// do not close the browser window when closing the last tab
user_pref('browser.tabs.closeWindowWithLastTab', false);

// do not show the search field in the preferences tab
user_pref('browser.preferences.search', false);

// disable the pocket extension
user_pref('extensions.pocket.enabled', false);

// eliminate tearing when scrolling a page
user_pref('layers.acceleration.force-enabled', true);

// disable the reader mode
user_pref('reader.parse-on-load.enabled', false);

// disable showing the menu by pressing Alt
// user_pref('ui.key.menuAccessKey', 0);

// set the Alt key to show menu
user_pref('ui.key.menuAccessKey', 18);

// do not show menu by pressing the Alt key alone
// use the key accelerators along with the Alt key instead
user_pref('ui.key.menuAccessKeyFocuses', false);

// enable extensions on addons.mozilla.org
user_pref('privacy.resistFingerprinting.block_mozAddonManager', true);

// set the addres bar drop-down list length
user_pref('browser.urlbar.maxRichResults', 20);

// disable video autoplay
user_pref('media.autoplay.enabled', false);

// set a configuration file for proxy server settings
user_pref('network.proxy.autoconfig_url', 'file:///home/user/.mozilla/firefox/304it05e.default/proxy.pac');

// show URL scheme in address bar
user_pref('browser.urlbar.trimURLs', false);
