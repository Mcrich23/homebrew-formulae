class ContainerCompose < Formula
  desc "Manage Apple Container with Docker Compose files"
  homepage "https://github.com/mcrich23/container-compose"

  # Use the universal (multi-arch) binary
  url "https://github.com/Mcrich23/container-compose/releases/download/0.5.0/container-compose"
  sha256 "498b6295a7a5d0baeca83bfbea66cd573739c33d126090ba35c28e12c24207a1"

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
    bin.install "container-compose" => "container-compose"
  end

  test do
    # Test something minimal; using --help is common
    assert_match "container-compose", shell_output("#{bin}/container-compose --help")
  end
end
