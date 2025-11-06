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
            
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.23.5/RadarSDK.xcframework.zip",
            checksum: "b6949d96c0ceeee4005bc764b65d82648567a5037699046074481b6db728fdd4" // RadarSDK checksum
        ),
        .binaryTarget(
            name: "RadarSDKMotion",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.23.5/RadarSDKMotion.xcframework.zip",
            checksum: "1335b978178cfd2aea737bf04349ad43025bd3670f7aa72fe257567d12457ff3" // RadarSDKMotion checksum
        ),
        .binaryTarget(
            name: "RadarSDKIndoors",
            url: "https://github.com/radarlabs/radar-sdk-ios/releases/download/3.23.5/RadarSDKIndoors.xcframework.zip",
            checksum: "bed019ba1534514943e2923e4cc3664aad32e50d70dcc30682c7b6494dc26fab" // RadarSDKIndoors checksum
        )
    ]
)
