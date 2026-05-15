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
            
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.33.1/RadarSDK.xcframework.zip",
            checksum: "d922789f630319d4deb1f261177a0b0f5c36e7feb5689be5461ec614ce208821" // RadarSDK checksum
        ),
        .binaryTarget(
            name: "RadarSDKMotion",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.33.1/RadarSDKMotion.xcframework.zip",
            checksum: "a9c9913509f779bd5f91a8ec336495f1845f95b27314f0830e64c630e7c61460" // RadarSDKMotion checksum
        ),
        .binaryTarget(
            name: "RadarSDKIndoors",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.33.1/RadarSDKIndoors.xcframework.zip",
            checksum: "221c54b30cfdbfa007781a3e2c5edb601e5c4b6fc8eba6fe4e4502b6dfed10a2" // RadarSDKIndoors checksum
        )
    ]
)
