class Slinky < Formula
  desc "A simple symlink-based dotfile manager."
  homepage "https://github.com/boldandbrad/slinky"
  url "https://github.com/boldandbrad/slinky/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "87bcdf3d07045dc45d418d392600522ca1900bb82876c0b9d93b8a04c021b8f4"
  version "0.1.0"

  def install
    bin.install "slinky" => "slinky"
  end
end
