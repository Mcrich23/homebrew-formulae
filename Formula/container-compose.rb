class ContainerCompose < Formula
  desc "Manage Apple Container with Docker Compose files"
  homepage "https://github.com/mcrich23/container-compose"

  url "https://github.com/Mcrich23/container-compose/releases/download/1.3.0/container-compose"
  sha256 "9c0ad99e713ddb96a41252c0a6bbf2c37aa1ef7ecee30a5d48299fdaa49a37e0"

  # License is MIT
  license "MIT"

  # If you want a head option:
  head "https://github.com/mcrich23/container-compose.git", branch: "main"

  livecheck do
    url :stable
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  # This is macOS-only
  depends_on arch: :arm64
  depends_on macos: :sequoia

  def install

    bin.install "container-compose" => "container-compose"
  end

  test do
    output = shell_output("#{bin}/container-compose down 2>&1", 1)
    assert_match "compose.yml not found at #{testpath}", output
  end
end
