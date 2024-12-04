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
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.19.2/RadarSDK.xcframework.zip",
            checksum: "c772d019964dfb3956b1c4a29192eeaf45a47877b9ef3ca03c62cd837b221c30" // RadarSDK checksum
        ),
        .binaryTarget(
            name: "RadarSDKMotion",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.19.2/RadarSDKMotion.xcframework.zip",
            checksum: "90c53bb09f98aec07db39dcf75fd48a1a992c46105dd068fc048e4ab34d7384e" // RadarSDKMotion checksum
        ),
    ]
)
