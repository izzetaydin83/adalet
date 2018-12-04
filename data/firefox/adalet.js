// This is the Debian specific preferences file for Firefox ESR
// You can make any change in here, it is the purpose of this file.
// You can, with this file and all files present in the
// /etc/firefox-esr directory, override any preference you can see in
// about:config.
//
// Note that lockPref is allowed in these preferences files if you
// don't want users to be able to override some preferences.

pref("extensions.update.enabled", true);

// Use LANG environment variable to choose locale
lockPref("browser.startup.homepage", "http://portal.uyap.gov.tr");
lockPref("browser.search.order.1", "Google");
lockPref("browser.search.defaultenginename", "Google");
pref("intl.locale.matchOS", true);

// Disable default browser checking.
sticky_pref("browser.shell.checkDefaultBrowser", false);
sticky_pref("security.mixed_content.block_active_content", false);

// Disable openh264.
pref("media.gmp-gmpopenh264.enabled", false);
pref("security.insecure_field_warning.contextual.enabled", false);

// Default to classic view for about:newtab
sticky_pref("browser.newtabpage.enhanced", false);

// Disable health report upload
pref("datareporting.healthreport.uploadEnabled", false);
pref("browser.startup.page", 1);
pref("browser.startup.homepage","portal.uyap.gov.tr");
pref("browser.search.defaultenginename","Google");
pref("browser.search.order.1", "Google");
pref("browser.search.order.2", "Yandex");
pref("network.proxy.type", 1);
pref("network.proxy.http", "10.201.61.160");
pref("network.proxy.http_port", 80);
pref("network.proxy.backup.ftp", "");
pref("network.proxy.backup.ftp_port", 0);
pref("network.proxy.backup.socks", "");
pref("network.proxy.backup.socks_port", 0);
pref("network.proxy.backup.ssl", "");
pref("network.proxy.backup.ssl_port", 0);
pref("network.proxy.ftp", "10.201.61.160");
pref("network.proxy.ftp_port", 80);
pref("network.proxy.share_proxy_settings", true);
pref("network.proxy.socks", "10.201.61.160");
pref("network.proxy.socks_port", 80);
pref("network.proxy.ssl", "10.201.61.160");
pref("network.proxy.ssl_port", 80);

pref("network.proxy.no_proxies_on", "localhost,127.0.0.1,10.*,*.adalet.gov.tr,*.anayasa.gov.tr,*.yargitay.gov.tr,*.atk.gov.tr,*.uyap.gov.tr,depo.kamusm.gov.tr,ocsp3.kamusm.gov.tr,ocsp2.kamusm.gov.tr,websrv1.kamusm.gov.tr,www.kamusm.gov.tr,*.hsyk.gov.tr,*.uyap.intra,*.uyusmazlik.gov.tr,*.yargitaycb.gov.tr,*.ysk.local,*.app.ysk.gov.tr,*.hukukiyardim.gov.tr,*.danistay.intranet,10.201.58.10,10.201.58.12,fileserver,ocsp4.kamusm.gov.tr,ocsp5.kamusm.gov.tr,dosyasunucusu,*.yardimedd.org.tr,vatandas.danistay.gov.tr,*.comodoca.com,*.usertrust.com,*.hsk.gov.tr,*.cjp.gov.tr,*.justice.gov.tr,*.e-justice.gov.tr,10.201.123.10");

