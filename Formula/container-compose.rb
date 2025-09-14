class ContainerCompose < Formula
  desc "Manage Apple Container with Docker Compose files."
  homepage "https://github.com/Mcrich23/container-compose"
  url "https://github.com/Mcrich23/container-compose/releases/download/0.4.1/container-compose-macos-arm64"
  sha256 "4f5bcd3332c256a1c2a4c60e5f3c2fe6fb7cdbc48927eef6e21e0bffd37ba3dd"
  version "0.4.1"

  def install
    bin.install "container-compose-macos-arm64" => "container-compose"
  end

  test do
    system "#{bin}/container-compose", "--help"
  end
end
