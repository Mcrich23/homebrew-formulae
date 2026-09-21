class ContainerCompose < Formula
  desc "Manage Apple Container with Docker Compose files"
  homepage "https://github.com/mcrich23/container-compose"

  url "https://github.com/Mcrich23/container-compose/releases/download/1.2.0/container-compose"
  sha256 "021a680b4f7c7c30455af268c5d413786ac490bb1f7ce6626d05c06d7bd9f031"

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
