// https://github.com/AleDenshi/Dots/blob/master/.config/firefox/user-overrides.js
// Disable ads in the URL bar
user_pref("browser.urlbar.quicksuggest.enabled", false);
user_pref("browser.urlbar.suggest.topsites", false);
user_pref("browser.urlbar.suggest.trending", false);
// Various settings for URL suggestions 
user_pref("browser.urlbar.suggest.weather", false);
user_pref("browser.urlbar.suggest.engines", false);
user_pref("browser.urlbar.suggest.history", false);
user_pref("browser.urlbar.suggest.bookmark", true);
user_pref("browser.urlbar.suggest.bestmatch", false);
user_pref("browser.urlbar.suggest.addons", false);
user_pref("browser.urlbar.suggest.pocket", false);

// Disable "Pocket"
user_pref("extensions.pocket.enabled", false);
user_pref("browser.newtabpage.activity-stream.section.highlights.includePocket", false);

// Disable Firefox Ads
user_pref("identity.fxaccounts.enabled", false);
user_pref("browser.urlbar.groupLabels.enabled", false);

// https://codeberg.org/Liassica/user-overrides
/* Disable credit card and address autofill. */
user_pref("extensions.formautofill.addresses.enabled", false);
user_pref("extensions.formautofill.creditCards.enabled", false);
user_pref("extensions.formautofill.heuristics.enabled", false);
/* Disable Firefox password saving for use with a different password manager */
user_pref("signon.rememberSignons", false);

// https://xnacly.me/posts/2023/disable-firefox-translation
user_pref("browser.translations.automaticallyPopup", false);
user_pref("browser.translations.enable", false);
