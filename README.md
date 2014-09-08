whatsapp-phonegap-plugin
========================
    This plugin opens a chat session with the given phonenumber in Whatsapp on Android.

    The behavior is similar to the generic tel:, smsto:, or mailto: URL schemes on iOS and Android.
    iOS supports a generic URL scheme for whatsapp ("whatsapp://send?abid=").
    However on Android the URL scheme is currently not supported.
    This plugin implements the send-via-whatsapp functionality on Android.


Methods
-------

    - cordova.plugins.Whatsapp.send

Example
-------
    Say you want to open a chat session with phone number: 111-222-3333

    cordova.plugins.Whatsapp.send("1112223333");

    This will open a chat session in Whatsapp for the target contact.

Installation
------------

    For cordova or ionic

        cordova plugin add https://github.com/ranjitpandit/whatsapp-phonegap-plugin.git
        ionic   plugin add https://github.com/ranjitpandit/whatsapp-phonegap-plugin.git

    Add the following xml to all the app config.xml file:

        <!-- for Android -->
        <feature name="Whatsapp">
            <param name="android-package" value="mobi.moica.whatsapp.Whatsapp" />
        </feature>
