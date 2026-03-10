class ContainerCompose < Formula
  desc "Manage Apple Container with Docker Compose files"
  homepage "https://github.com/mcrich23/container-compose"

  # Use the universal (multi-arch) binary
  url "https://github.com/Mcrich23/container-compose/releases/download/0.10.0/container-compose"
  sha256 "9aa8a735d5eb0fcc510b46894d04f21e12d74944654ad0560826cdc6ba1ef4a5"

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
    output = shell_output("#{bin}/container-compose down 2>&1", 1)
    assert_match "compose.yml not found at #{testpath}", output
  end
end
