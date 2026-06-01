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
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.34.1/RadarSDK.xcframework.zip",
            checksum: "ba8f7b7833aed63ef0d9c5914ed74b7f571be6bc1daa434b455ce5115b69913a" // RadarSDK checksum
        ),
        .binaryTarget(
            name: "RadarSDKMotion",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.34.1/RadarSDKMotion.xcframework.zip",
            checksum: "2e906795ee9ddb000c3eae7ce70cc72dc9957d1317b3fd67a17f9a08cb978e30" // RadarSDKMotion checksum
        ),
        .binaryTarget(
            name: "RadarSDKIndoors",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.34.1/RadarSDKIndoors.xcframework.zip",
            checksum: "71ed8845aaf677ccb786d314f3546296fabd3ce23f1fbe13b886f341c153e6c7" // RadarSDKIndoors checksum
        )
    ]
)
