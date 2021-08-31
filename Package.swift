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
            url: "https://media.twiliocdn.com/sdk/ios/chat/releases/5.0.1/twilio-chat-ios-5.0.1.zip",
            checksum: "cab46d255fbac00a837da3dd81cd5342b29f0e606fba161142307d7cd79496fa"
        )
    ]
)
