class ContainerCompose < Formula
  desc "Manage Apple Container with Docker Compose files."
  homepage "https://github.com/Mcrich23/container-compose"
  url "https://github.com/Mcrich23/container-compose/releases/download/0.2.0/container-compose-macos-arm64"
  sha256 "3a0a52a0cac6729a71ec2d7aaaf376b22a92e4032935f1aa04e5a212b7e2cf83"
  version "0.1.1"

  def install
    bin.install "container-compose-macos-arm64" => "container-compose"
  end

  test do
    system "#{bin}/container-compose", "--help"
  end
end
