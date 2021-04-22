// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "TwilioChatClient",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(
            name: "TwilioChatClient",
            targets: ["TwilioChatClient"]),
    ],
    targets: [
        .binaryTarget(
            name: "TwilioChatClient",
            url: "https://media.twiliocdn.com/sdk/ios/chat/releases/4.2.1/twilio-chat-ios-4.2.1.zip",
            checksum: "9477f31c65dfb90550cbc0f5fb9f5bcadf975a1debfb734d370a6cecb66f641b"
        )
    ]
)
