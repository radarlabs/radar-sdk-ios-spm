![Radar](https://raw.githubusercontent.com/radarlabs/radar-sdk-ios-spm/master/logo.png)

[Radar](https://radar.com) is the leading geofencing and location tracking platform.

The Radar SDK abstracts away cross-platform differences between location services, allowing you to add geofencing, location tracking, trip tracking, geocoding, and search to your apps with just a few lines of code.

## Installing Radar

To install Radar using [Swift Package Manager](https://github.com/apple/swift-package-manager) you can follow the [tutorial published by Apple](https://developer.apple.com/documentation/xcode/adding_package_dependencies_to_your_app) using the URL for this repo with the current version:

1. In Xcode, select “File” → “Add Packages...”
2. Enter https://github.com/radarlabs/radar-sdk-ios-spm.git

## Why is there a separate repo for Swift Package Manager support?

The main git repository for [radar-sdk-ios](https://github.com/radarlabs/radar-sdk-ios-ios) is somewhat large, and Swift Package Manager always downloads the full repository with all git history. This [radar-sdk-ios-spm](https://github.com/radarlabs/radar-ios-sdk-spm) repo is much smaller, so can be downloaded much more quickly.

Instead of downloading the full git history of Radar and building it from source, this repo just contains a pointer to the precompiled XCFramework included in the [latest radar-sdk-ios release](https://github.com/radarlabs/radar-sdk-ios/releases/latest). If you prefer to include Radar source directly your project, you can directly depend on the [`radar-sdk-ios` repo](https://github.com/radarlabs/radar-sdk-ios) instead.

## Documentation

See the Radar overview documentation [here](https://radar.com/documentation). See the Radar SDK documentation [here](https://radar.com/documentation/sdk).

You can also see a detailed SDK reference [here](https://radarlabs.github.io/radar-sdk-ios/Classes/Radar.html).

## Support

This is a lightweight SPM mirror for [radar-sdk-ios](https://github.com/radarlabs/radar-sdk-ios-ios). Refer to that repository for migration guides, examples. Please file issues on at [radar-sdk-ios](https://github.com/radarlabs/radar-sdk-ios-ios).

Have questions? We're here to help! Email us at [support@radar.com](mailto:support@radar.com).

## TODO: remove TEST 1
