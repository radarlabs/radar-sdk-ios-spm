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
            
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.33.0/RadarSDK.xcframework.zip",
            checksum: "3d9294fc58f9463b7bcb70a646c401fd6f9171dedf6cd594366c3aff856ad8a9" // RadarSDK checksum
        ),
        .binaryTarget(
            name: "RadarSDKMotion",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.33.0/RadarSDKMotion.xcframework.zip",
            checksum: "d574c3c0df416d5c4336a923bfa89abd8da3e3cc81af167a9b8d98e25e58a92a" // RadarSDKMotion checksum
        ),
        .binaryTarget(
            name: "RadarSDKIndoors",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.33.0/RadarSDKIndoors.xcframework.zip",
            checksum: "6235fe13574d549d18a3e307bb364c5975680a1cc22ef368ab03ad784b76b9e2" // RadarSDKIndoors checksum
        )
    ]
)
