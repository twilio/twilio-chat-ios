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
            url: "https://media.twiliocdn.com/sdk/ios/chat/releases/4.2.0/twilio-chat-ios-4.2.0.zip",
            checksum: "57906c180c5e5bf6fa1fee68ae53fff3971978dccecd66de29ab00b1a3fb4e3e"
        )
    ]
)
