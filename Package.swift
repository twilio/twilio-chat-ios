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
            url: "https://media.twiliocdn.com/sdk/ios/chat/releases/5.0.0/twilio-chat-ios-5.0.0.zip",
            checksum: "638a8136b2eb226e43342b30e70bc80c8e5b6f917bc9c86a45c942dbd5d8686b"
        )
    ]
)
