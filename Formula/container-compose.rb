class ContainerCompose < Formula
  desc "Manage Apple Container with Docker Compose files"
  homepage "https://github.com/mcrich23/container-compose"

  # Use the universal (multi-arch) binary
  url "https://github.com/Mcrich23/container-compose/releases/download/1.0.0/container-compose"
  sha256 "40ccef90e3fe69d71fbac7fc50afa912b87f4d734971f767e207fb9b6776c469"

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
