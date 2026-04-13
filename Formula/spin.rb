class Spin < Formula
  desc "A command line last.fm scrobbler for techies"
  homepage "https://github.com/boldandbrad/spin"
  version "0.1.0"
  on_macos do
    on_arm do
      url "https://github.com/boldandbrad/spin/releases/download/v0.1.0/spin-darwin-arm64.tar.gz"
      sha256 "db3ad15ece84aa62b8f782fcd9560668a10c4ccee56ff64b4a2fb2b3b173dcee"
    end
    on_intel do
      url "https://github.com/boldandbrad/spin/releases/download/v0.1.0/spin-darwin-amd64.tar.gz"
      sha256 "b24b605c851f15fb9909cbe17dbc2cb96c4d810951a359de39faf891e83a3c19"
    end
  end
  on_linux do
    url "https://github.com/boldandbrad/spin/releases/download/v0.1.0/spin-linux-amd64.tar.gz"
    sha256 "8c54f2d5cc332f6a79e30b2d5c0239836bcc0ea975bd3717f50f25e7f37462e4"
  end
  def install
    bin.install "spin"
  end
  test do
    system "#{bin}/spin", "--version"
  end
end
