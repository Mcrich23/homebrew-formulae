// container-compose.rb
class Container-Compose < Formula
  desc "Manage Apple Container with Docker Compose files."
  homepage "https://github.com/Mcrich23/container-compose"
  url "https://github.com/Mcrich23/container-compose.git", tag: "0.1.0"
  version "0.1.0"

  depends_on "xcode": [:build]

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "#{bin}container-compose", "list"
  end
end


