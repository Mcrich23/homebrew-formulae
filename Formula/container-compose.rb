class ContainerCompose < Formula
  desc "Manage Apple Container with Docker Compose files."
  homepage "https://github.com/Mcrich23/container-compose"
  url "https://github.com/Mcrich23/container-compose/releases/download/0.2.2/container-compose-macos-arm64"
  sha256 "51c487b0060fda03e579a78132e509410f272abd215c716ff036ac29c6718f19"
  version "0.2.2"

  def install
    bin.install "container-compose-macos-arm64" => "container-compose"
  end

  test do
    system "#{bin}/container-compose", "--help"
  end
end
