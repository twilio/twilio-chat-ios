# Twilio Programmable Chat for iOS is not supported. Please switch to Twilio Conversations - a compatible successor of Chat.

This repository contains releases for the Twilio Programmable Chat for iOS SDK. These releases can be consumed using Swift Package Manager, CocoaPods or manual integration into your project.

### Swift Package Manager

You can add Programmable Chat Client for iOS by adding the `https://github.com/twilio/twilio-chat-ios` repository as a Swift Package.

In your Build Settings, you will also need to modify `Other Linker Flags` to include `-ObjC.`

As of the latest release of Xcode (currently 12.3), there is a [known issue](https://bugs.swift.org/browse/SR-13343) with consuming binary frameworks distributed via Swift Package Manager. The current workaround to this issue is to add a `Run Script Phase` to the `Build Phases` of your Xcode project. This `Run Script Phase` should come **after** the `Embed Frameworks` build phase. This new `Run Script Phase` should contain the following code:

```sh
find "${CODESIGNING_FOLDER_PATH}" -name '*.framework' -print0 | while read -d $'\0' framework
do
    codesign --force --deep --sign "${EXPANDED_CODE_SIGN_IDENTITY}" --preserve-metadata=identifier,entitlements --timestamp=none "${framework}"
done

```


### CocoaPods Integration

We support integration using CocoaPods as well. You can add Twilio Programmable Chat Client to your project using the following example Podfile:

```ruby
source 'https://github.com/CocoaPods/Specs'

platform :ios, '11.0'

target 'TARGET_NAME' do
    pod 'TwilioChatClient', '~> 4.2'
end
```

Then run `pod install` to install the dependencies for your project.


### Manual Integration

`TwilioChatClient.xcframework` is distributed as a dynamic iOS framework that you can drag and drop into your existing projects.

Once you've downloaded and unpacked the XCFramework, navigate to your Xcode project's _General_ settings page. Drag and drop `TwilioChatClient.xcframework` onto the _Frameworks_, _Libraries_, and _Embedded Content_ section. Ensure that "_Copy items if needed_" is checked and press Finish. Ensure that "_Embed & Sign_" is selected.

In your Build Settings, you will also need to modify Other Linker Flags to include `-ObjC`.


### Carthage Integration

Carthage is not currently a supported distribution mechanism for Twilio Chat Client. Carthage does not currently work with `.xcframeworks` as documented [here](https://github.com/Carthage/Carthage/issues/2890). Once Carthage supports binary `.xcframeworks`, Carthage distribution will be re-added.


## Issues and Support

Please file any issues you find here on Github.

Please ensure that you are not sharing any [Personally Identifiable Information(PII)](https://www.twilio.com/docs/glossary/what-is-personally-identifiable-information-pii) or sensitive account information (API keys, credentials, etc.) when reporting an issue.

For general inquiries related to the Chat SDK you can file a [support ticket](https://support.twilio.com/hc/en-us/requests/new).

## License

Twilio Programmable Chat for iOS is distributed under [TWILIO-TOS](https://www.twilio.com/legal/tos).
