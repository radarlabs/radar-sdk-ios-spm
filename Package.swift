// swift-tools-version:5.6

import PackageDescription

let package = Package(
    name: "RadarSDK",
    platforms: [
        .iOS(.v10)
    ],
    products: [
          .library(name: "RadarSDK", targets: ["RadarSDK", "_RadarStub"]),
          .library(name: "RadarSDKMotion", targets: ["RadarSDKMotion", "_RadarStub"]),
          .library(name: "RadarSDKIndoors", targets: ["RadarSDKIndoors", "_RadarStub"]),
      ],
      targets: [
        .target(name: "_RadarStub"),
        .binaryTarget(
            name: "RadarSDK",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.23.2/RadarSDK.xcframework.zip",
            checksum: "3a2a4bd9aedf6f44b688dc8734b156effaa23b3e03871298029a7cb6a335a16c" // RadarSDK checksum
        ),
        .binaryTarget(
            name: "RadarSDKMotion",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.23.2/RadarSDKMotion.xcframework.zip",
            checksum: "af721ff668829a937c83d9efd784213cb06a429b55e7e53c89b302f01021be11" // RadarSDKMotion checksum
        ),
        .binaryTarget(
            name: "RadarSDKIndoors",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.23.2/RadarSDKIndoors.xcframework.zip",
            checksum: "583e1593d190f3d23b5506c132e93e099fe67fa665744670db27492e03110c67" // RadarSDKIndoors checksum
        )
    ]
)
