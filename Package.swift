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
            
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.25.1/RadarSDK.xcframework.zip",
            checksum: "95a9fba453c1e89269f46d832478432329a95841159192e4f251bbfd3e11e8ad" // RadarSDK checksum
        ),
        .binaryTarget(
            name: "RadarSDKMotion",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.25.1/RadarSDKMotion.xcframework.zip",
            checksum: "77d90159e4390cef7756b020cb1dbecef5042b6b95804c9f47057b285ce49546" // RadarSDKMotion checksum
        ),
        .binaryTarget(
            name: "RadarSDKIndoors",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.25.1/RadarSDKIndoors.xcframework.zip",
            checksum: "03073cdabdee9b8bd4ae5d29f8771e568664eb21b279c654af4e3cb4c163ad31" // RadarSDKIndoors checksum
        )
    ]
)
