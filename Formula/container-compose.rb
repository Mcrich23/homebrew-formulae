class ContainerCompose < Formula
  desc "Manage Apple Container with Docker Compose files."
  homepage "https://github.com/Mcrich23/container-compose"
  url "https://github.com/Mcrich23/container-compose/releases/download/0.1.1/container-compose-macos-arm64"
  sha256 "49314f79767afad4f835b516aa3774e2e18c66db1d062113c4708736c61f5eac"
  version "0.1.1"

  def install
    bin.install "container-compose-macos-arm64" => "container-compose"
  end

  test do
    system "#{bin}/container-compose", "--help"
  end
end