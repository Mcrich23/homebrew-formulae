class ContainerCompose < Formula
  desc "Manage Apple Container with Docker Compose files"
  homepage "https://github.com/mcrich23/container-compose"

  # Use the universal (multi-arch) binary
  url "https://github.com/Mcrich23/container-compose/releases/download/0.4.1/container-compose-macos-arm64"
  sha256 "4f5bcd3332c256a1c2a4c60e5f3c2fe6fb7cdbc48927eef6e21e0bffd37ba3dd"

  # License is MIT
  license "MIT"

  # If you want a head option:
  head "https://github.com/mcrich23/container-compose.git", branch: "main"

  livecheck do
    url :stable
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  # This is macOS-only
  depends_on :macos

  def install
    # The binary is universal, so same binary works for both architectures
    bin.install "container-compose-macos-arm64" => "container-compose"
  end

  test do
    # Test something minimal; using --help is common
    assert_match "container-compose", shell_output("#{bin}/container-compose --help")
  end
end