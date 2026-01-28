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
            
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.25.2/RadarSDK.xcframework.zip",
            checksum: "44207511153f3d1a4a8e33197cf8f0ce190ec9c8e5d473a00cfa16fb80d6e30b" // RadarSDK checksum
        ),
        .binaryTarget(
            name: "RadarSDKMotion",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.25.2/RadarSDKMotion.xcframework.zip",
            checksum: "a708fda4493ce209a88923aa790ce63d86e80286297a1acbecdf039150e91283" // RadarSDKMotion checksum
        ),
        .binaryTarget(
            name: "RadarSDKIndoors",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.25.2/RadarSDKIndoors.xcframework.zip",
            checksum: "37a629b796d6db0890b186fb904536d0144b2d8b743a55945383caec02761865" // RadarSDKIndoors checksum
        )
    ]
)
