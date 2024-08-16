// swift-tools-version:5.6

import PackageDescription

let package = Package(
    name: "RadarSDK",
    platforms: [
        .iOS(.v10)
    ],
    products: [
          .library(name: "RadarSDK", targets: ["RadarSDK", "_RadarStub"]),
          .library(name: "RadarSDKMotion", targets: ["RadarSDKMotion", "_RadarStub"])
      ],
      targets: [
        .target(name: "_RadarStub"),
        .binaryTarget(
            name: "RadarSDK",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.17.0/RadarSDK.xcframework.zip",
            checksum: "c889595958bb02cbe38e83c49af8dd1a848f6ed86291aea0e61f25d8c0ea5b2b" // RadarSDK checksum
        ),
        .binaryTarget(
            name: "RadarSDKMotion",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.17.0/RadarSDKMotion.xcframework.zip",
            checksum: "b9fbd29b649221c19cd23916c352ff180e06b5f41a458dde42574070c395d9cc" // RadarSDKMotion checksum
        )
    ]
)
