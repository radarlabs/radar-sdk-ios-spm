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
      ],
      targets: [
        .target(name: "_RadarStub"),
        .binaryTarget(
            name: "RadarSDK",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.18.5/RadarSDK.xcframework.zip",
            checksum: "59c97fa519752bb7535b2efe90ee1ae6941a5b680484f4c50d014225e6867dbf" // RadarSDK checksum
        ),
        .binaryTarget(
            name: "RadarSDKMotion",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.18.5/RadarSDKMotion.xcframework.zip",
            checksum: "f41ebe9b055ca45347fedc2f2b04fb3ecd646704821f5f4fcf695e6762e2a386" // RadarSDKMotion checksum
        ),
    ]
)
