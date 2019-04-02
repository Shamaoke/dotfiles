// show 24 tiles at the home page instead of the default 4
// user_pref('browser.newtabpage.activity-stream.topSitesCount', 24);

// do not close the browser window when closing the last tab
user_pref('browser.tabs.closeWindowWithLastTab', false);

// do not show the search field in the preferences tab
// user_pref('browser.preferences.search', false);

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
// user_pref('privacy.resistFingerprinting.block_mozAddonManager', true);

// set the addres bar drop-down list length
// user_pref('browser.urlbar.maxRichResults', 20);

// disable video autoplay
// user_pref('media.autoplay.enabled', false);

// use a configuration file for proxy settings
user_pref('network.proxy.type', 2);

// set a configuration file for proxy server settings
user_pref('network.proxy.autoconfig_url', 'file:///home/user/.mozilla/firefox/mr70dnal.default/proxy.pac');

// show URL scheme in address bar
// user_pref('browser.urlbar.trimURLs', false);

// suppress web notifications requests for all sites
user_pref('dom.webnotifications.enabled', false);

// restore previous session when starting the browser
user_pref('browser.startup.page', 3);

// set the homepage
user_pref('browser.startup.homepage', 'about:blank');

// set the new tab page as a blank page
user_pref('browser.newtabpage.enabled', false);

// remove one click search engines from url bar drop-down list
user_pref('browser.urlbar.oneOffSearches', false);

// don't install "studies" see: https://support.mozilla.org/en-US/kb/shield
user_pref('app.shield.optoutstudies.enabled', false);

// don't show buttons of the following search providers in the url bar drop-down list
user_pref('browser.search.hiddenOneOffs', 'Yandex,Google,Bing,Amazon.com,DuckDuckGo,Twitter,Wikipedia (en)');

// don't show search suggestions when typing in the address bar
user_pref('browser.search.suggest.enabled', false);

// don't update search engines
user_pref('browser.search.update', false);

// set the minimum width for tabs
user_pref('browser.tabs.tabMinWidth', 100);

// set the number of entries in the url bar drop-down list
user_pref('browser.urlbar.maxRichResults', 15);

// always open new tab after the current one
user_pref('browser.tabs.insertAfterCurrent', true);

// disable personalized extension recommendations
// user_pref('browser.newtabpage.activity-stream.asrouter.userprefs.cfr', false);

/* :::Fonts::: */

// set a type for the Latin proportional fonts
user_pref('font.default.x-western', 'sans-serif');

// set a type for the Cyrillic proportional fonts
user_pref('font.default.x-cyrillic', 'sans-serif');

// set a font family for the Latin serif type
// user_pref('font.name.serif.x-western', 'PT Serif');

// set a font family for the Cyrillic serif type
// user_pref('font.name.serif.x-cyrillic', 'PT Serif');

// set a font family for the Japanese serif type
// user_pref('font.name.serif.ja', 'Kozuka Mincho Pro');

// set a font family for the Latin sans-serif type
// user_pref('font.name.sans-serif.x-western', 'PT Sans');

// set a font family for the Cyrillic sans-serif type
// user_pref('font.name.sans-serif.x-cyrillic', 'PT Sans');

// set a font family for the Japanese sans-serif type
// user_pref('font.name.sans-serif.ja', 'Kozuka Gothic Pro');

// set a font family for the Latin monospace type
// user_pref('font.name.monospace.x-western', 'Input Mono Narrow');

// set a font family for the Cyrillic monospace type
// user_pref('font.name.monospace.x-cyrillic', 'Input Mono Narrow');

// set a font family for the Japanese monospace type
// user_pref('font.name.monospace.ja', 'Input Mono Narrow');

// set a size for the Latin proportional fonts
// user_pref('font.size.variable.x-western', 16);

// set a size for the Cyrillic proportional fonts
// user_pref('font.size.variable.x-cyrillic', 16);

// set a size for the Japanese proportional fonts
// user_pref('font.size.variable.ja', 16);

// set a size for the Latin monospace fonts
// user_pref('font.size.fixed.x-western', 14);

// set a size for the Cyrillic monospace fonts
// user_pref('font.size.fixed.x-cyrillic', 14);

// set a size for the Japanese monospace fonts
// user_pref('font.size.fixed.ja', 14);
