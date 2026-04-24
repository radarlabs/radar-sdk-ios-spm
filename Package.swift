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
            
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.31.0/RadarSDK.xcframework.zip",
            checksum: "23ab3ac6389317fba660b5a907822e26e6c473e2f3c7939099be601b3cacc7e8" // RadarSDK checksum
        ),
        .binaryTarget(
            name: "RadarSDKMotion",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.31.0/RadarSDKMotion.xcframework.zip",
            checksum: "649f5327c0ee03684cf56cefaf6f1feb2f65338ec978058a7f2d7eb0c7ff1da3" // RadarSDKMotion checksum
        ),
        .binaryTarget(
            name: "RadarSDKIndoors",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.31.0/RadarSDKIndoors.xcframework.zip",
            checksum: "3ae81e268d7518cd75de3f56189f623449eede497eec5ffe16e6d6bf92e1cf89" // RadarSDKIndoors checksum
        )
    ]
)
