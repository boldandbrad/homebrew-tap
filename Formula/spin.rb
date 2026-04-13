class Spin < Formula
  desc "A command line last.fm scrobbler for techies"
  homepage "https://github.com/boldandbrad/spin"
  version "0.1.1"

  on_macos do
    on_arm do
      url "https://github.com/boldandbrad/spin/releases/download/v0.1.1/spin-darwin-arm64.tar.gz"
      sha256 "05f0887412cb315e7758fa314a01146ea5604d6d8ce6c44d88ce26bc5a61b4a7"
    end
    on_intel do
      url "https://github.com/boldandbrad/spin/releases/download/v0.1.1/spin-darwin-amd64.tar.gz"
      sha256 "0270f545db926ded81031eec615f82f1c95a34f9b91e60d2ff4e0e9befb5ef3a"
    end
  end

  on_linux do
    url "https://github.com/boldandbrad/spin/releases/download/v0.1.1/spin-linux-amd64.tar.gz"
    sha256 "ba4e5f7da999f9f5efcd21b8c7438a43bbf8aa701a4efe3ec885cafb5c2adee1"
  end

  def install
    bin.install "spin"
  end

  test do
    system "#{bin}/spin", "--version"
  end
end
