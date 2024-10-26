// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "TreeSitterConao3Bash",
    products: [
        .library(name: "TreeSitterConao3Bash", targets: ["TreeSitterConao3Bash"]),
    ],
    dependencies: [
        .package(url: "https://github.com/ChimeHQ/SwiftTreeSitter", from: "0.8.0"),
    ],
    targets: [
        .target(
            name: "TreeSitterConao3Bash",
            dependencies: [],
            path: ".",
            sources: [
                "src/parser.c",
                // NOTE: if your language has an external scanner, add it here.
            ],
            resources: [
                .copy("queries")
            ],
            publicHeadersPath: "bindings/swift",
            cSettings: [.headerSearchPath("src")]
        ),
        .testTarget(
            name: "TreeSitterConao3BashTests",
            dependencies: [
                "SwiftTreeSitter",
                "TreeSitterConao3Bash",
            ],
            path: "bindings/swift/TreeSitterConao3BashTests"
        )
    ],
    cLanguageStandard: .c11
)
