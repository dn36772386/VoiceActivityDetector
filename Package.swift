// swift-tools-version: 5.7
import PackageDescription

let package = Package(
    name: "VoiceActivityDetector",
    platforms: [.iOS(.v14)],
    products: [
        .library(name: "VoiceActivityDetector", targets: ["VoiceActivityDetector"]),
        .library(name: "libfvad", targets: ["libfvad"])
    ],
    targets: [
        .target(
            name: "libfvad",
            path: "Sources/libfvad",
            publicHeadersPath: "include",
            cSettings: [
                .headerSearchPath("include")
            ]
        ),
        .target(
            name: "VoiceActivityDetector",
            dependencies: ["libfvad"],
            path: "Sources/VoiceActivityDetector"
        )
    ]
)
