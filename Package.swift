// swift-tools-version:4.0
import PackageDescription

let package = Package(
    name: "FluentSQLite",
    products: [
        .library(name: "FluentSQLite", targets: ["FluentSQLite"]),
    ],
    dependencies: [
        // ⏱ Promises and reactive-streams in Swift built for high-performance and scalability.
        .package(url: "https://github.com/vapor/async.git", from: "1.0.0-rc"),

        // ✳️ Swift ORM framework (queries, models, and relations) for building NoSQL and SQL database integrations.
        .package(url: "https://github.com/vapor/fluent.git", from: "3.0.0-rc"),

        // 📦 Dependency injection / inversion of control framework.
        .package(url: "https://github.com/vapor/service.git", from: "1.0.0-rc"),

        // 🔵 SQLite 3 wrapper for Swift
        .package(url: "https://github.com/vapor/sqlite.git", from: "3.0.0-rc"),
    ],
    targets: [
        .target(name: "FluentSQLite", dependencies: ["Async", "Fluent", "FluentSQL", "Service", "SQLite"]),
        .testTarget(name: "FluentSQLiteTests", dependencies: ["FluentBenchmark", "FluentSQLite", "SQLite"]),
    ]
)
