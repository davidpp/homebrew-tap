# Generated from packaging/homebrew/kabane.rb.tmpl in https://github.com/davidpp/kabane for exactly
# one release; that repository's release workflow commits it here. Edit the template there.
class Kabane < Formula
  desc "Local-first issue tracker and kanban for humans and AI agent runtimes"
  homepage "https://github.com/davidpp/kabane"
  version "1.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/davidpp/kabane/releases/download/v1.1.0/kabane-darwin-arm64.tar.gz"
      sha256 "fa3c9332a1879d118c113fac70a5058d9dffbb65f6b27bc82eb8ae5778c7b39a"
    end
    on_intel do
      url "https://github.com/davidpp/kabane/releases/download/v1.1.0/kabane-darwin-x64.tar.gz"
      sha256 "f0ddaaa567dafb73400019de0adfa0d8390ab44eff7c486cc3b0ede1a17f9cf2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/davidpp/kabane/releases/download/v1.1.0/kabane-linux-arm64.tar.gz"
      sha256 "bb7649fbded696ccee5e77c1244483ece06bf50296fa560e7fc31ea14043b743"
    end
    on_intel do
      url "https://github.com/davidpp/kabane/releases/download/v1.1.0/kabane-linux-x64.tar.gz"
      sha256 "f019dad0856ba8101da687ba7850eb1b0c2262e9730b1b1283fff4c0ac3533eb"
    end
  end

  def install
    # The archive's kabane/ directory stays whole: the executable with templates/ beside it.
    libexec.install Dir["*"]
    bin.install_symlink libexec/"kabane"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/kabane --version").strip
  end
end
