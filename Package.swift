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
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.39.1/RadarSDK.xcframework.zip",
            checksum: "dd829e4f52cb9ab9a032a56a1db1c3b46643e0caa0459159d021ab3e068cc56b" // RadarSDK checksum
        ),
        .binaryTarget(
            name: "RadarSDKMotion",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.39.1/RadarSDKMotion.xcframework.zip",
            checksum: "94798f7bd28ced94fe188ffcabf8912e44f2a5aa9382064b044fa1e915f74954" // RadarSDKMotion checksum
        ),
        .binaryTarget(
            name: "RadarSDKIndoors",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.39.1/RadarSDKIndoors.xcframework.zip",
            checksum: "47746c06f3761356fb1345f68effcd112fa2cd6978ca0b27d4b80f95c64606a5" // RadarSDKIndoors checksum
        )
    ]
)
