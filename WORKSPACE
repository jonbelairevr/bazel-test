# Load Bazel's HTTP utility to manage dependencies as external repositories
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

# Go rules setup for Bazel build system.
# This imports the necessary rules for Go language support in Bazel.
http_archive(
    name = "io_bazel_rules_go",  # The name of the Go rules repository
    integrity = "sha256-M6zErg9wUC20uJPJ/B3Xqb+ZjCPn/yxFF3QdQEmpdvg=",  # Integrity hash to verify the downloaded archive
    urls = [
        # The URLs to fetch the Go rules package from
        "https://mirror.bazel.build/github.com/bazelbuild/rules_go/releases/download/v0.48.0/rules_go-v0.48.0.zip", 
        "https://github.com/bazelbuild/rules_go/releases/download/v0.48.0/rules_go-v0.48.0.zip",
    ],
)

# Gazelle setup for Go code generation in Bazel.
# Gazelle is used to auto-generate Bazel BUILD files for Go projects.
http_archive(
    name = "bazel_gazelle",  # Name of the Gazelle repository
    integrity = "sha256-12v3pg/YsFBEQJDfooN6Tq+YKeEWVhjuNdzspcvfWNU=",  # Integrity hash for verification
    urls = [
        # URLs to download the Gazelle package
        "https://mirror.bazel.build/github.com/bazelbuild/bazel-gazelle/releases/download/v0.37.0/bazel-gazelle-v0.37.0.tar.gz",
        "https://github.com/bazelbuild/bazel-gazelle/releases/download/v0.37.0/bazel-gazelle-v0.37.0.tar.gz",
    ],
)

# C++ rules setup for Bazel.
# This imports the rules required for C++ projects within Bazel.
http_archive(
    name = "io_bazel_rules_cc",  # Name of the C++ rules repository
    integrity = "sha256-d22c95ff4d9c79c9f58de5daacb25d3ff5f2b8da3bc2e66087116e27ab98f7c7",  # Integrity hash to verify the archive
    urls = [
        # URL to fetch the C++ rules package from
        "https://github.com/bazelbuild/rules_cc/releases/download/v0.0.1/rules_cc-v0.0.1.tar.gz",
    ],
)

# Rust rules setup for Bazel.
# This provides the necessary rules to build Rust projects in Bazel.
http_archive(
    name = "rules_rust",  # Name of the Rust rules repository
    integrity = "sha256-r09Wyq5QqZpov845sUG1Cd1oVIyCBLmKt6HK/JTVuwI=",  # Integrity hash for the Rust rules package
    urls = [
        # URL to fetch the Rust rules package from
        "https://github.com/bazelbuild/rules_rust/releases/download/0.54.1/rules_rust-v0.54.1.tar.gz",
    ],
)

# Load and setup dependencies for Go build system.
# These dependencies provide support for Go tools and repositories management.
load("@io_bazel_rules_go//go:deps.bzl", "go_register_toolchains", "go_rules_dependencies")
load("@bazel_gazelle//:deps.bzl", "gazelle_dependencies", "go_repository")

# Initialize the Go-specific dependencies. This pulls in all required Go-related libraries.
go_rules_dependencies()

# Register Go toolchains with a specific Go version (1.20.5).
# This ensures Bazel knows how to build Go code with the specified version.
go_register_toolchains(version = "1.20.5")

# Initialize dependencies for Gazelle, which will help in generating Bazel BUILD files for Go projects.
gazelle_dependencies()
