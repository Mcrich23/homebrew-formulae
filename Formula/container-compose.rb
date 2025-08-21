class ContainerCompose < Formula
  desc "Manage Apple Container with Docker Compose files."
  homepage "https://github.com/Mcrich23/container-compose"
  url "https://github.com/Mcrich23/container-compose/releases/download/0.2.1/container-compose-macos-arm64"
  sha256 "914b71775921947b4fd82cb864bf6051bd7d7cb2be4ce2d3ef89fd4dc39a0357"
  version "0.2.1"

  def install
    bin.install "container-compose-macos-arm64" => "container-compose"
  end

  test do
    system "#{bin}/container-compose", "--help"
  end
end
