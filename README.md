# Twilio Programmable Chat for iOS

This repository contains releases for the Twilio Programmable Chat for iOS SDK.  These releases can be used on their own or the following line in your Cartfile:

    github "twilio/twilio-chat-ios"

Please note that additional steps are required for successful integration of this SDK into your project.  Minimally, you must execute a script file during your build process to thin the SDK to only the architecture types you are building.  This is necessary before submission to the AppStore.  This script is located in the delivered .framework file, named `remove_archs`.

Please see the [documentation](https://www.twilio.com/docs/conversations/sdk-download-install#carthage "Twilio Programmable Chat for iOS") located on Twilio's website for more information.
