import PackageDescription

let package = Package(
    name: "Vapor",
    dependencies: [
        //Standards package. Contains protocols for cross-project compatability.
        .Package(url: "https://github.com/open-swift/S4.git", majorVersion: 0, minor: 6),

        //Provides critical String functions Foundation is missing on Linux
        .Package(url: "https://github.com/Zewo/String.git", majorVersion: 0, minor: 5),

        //Parses and serializes JSON
        .Package(url: "https://github.com/Zewo/JSON.git", majorVersion: 0, minor: 7),

        //Swift wrapper around Sockets, used for built-in HTTP server
        .Package(url: "https://github.com/ketzusaka/Hummingbird.git", majorVersion: 1, minor: 7),

        //SHA2 + HMAC hashing. Used by the core to create session identifiers.
        .Package(url: "https://github.com/CryptoKitten/HMAC.git", majorVersion: 0, minor: 5),
        .Package(url: "https://github.com/CryptoKitten/SHA2.git", majorVersion: 0, minor: 5)
    ],
    exclude: [
        "XcodeProject"
    ],
    targets: [
        Target(
            name: "Vapor",
            dependencies: [
                .Target(name: "libc")
            ]
        ),
        Target(
            name: "Development",
            dependencies: [
                .Target(name: "Vapor")
            ]
        ),
        Target(
            name: "Performance",
            dependencies: [
                .Target(name: "Vapor")
            ]
        ),
        Target(
            name: "Generator"
        )
    ]
)
