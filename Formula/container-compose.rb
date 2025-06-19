class ContainerCompose < Formula
  desc "Manage Apple Container with Docker Compose files."
  homepage "https://github.com/Mcrich23/container-compose"
  url "https://github.com/Mcrich23/container-compose/releases/download/v0.1.0/container-compose-macos-arm64"
  sha256 "c18ea5ce474d4d124ab428a23b58796e4b51bff56c16b18e270f597711e40588"
  version "0.1.0"

  def install
    bin.install "container-compose-macos-arm64" => "container-compose"
  end

  test do
    system "#{bin}/container-compose", "--help"
  end
end