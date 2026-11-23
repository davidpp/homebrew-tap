# Generated from packaging/homebrew/kabane.rb.tmpl in https://github.com/davidpp/kabane for exactly
# one release; that repository's release workflow commits it here. Edit the template there.
class Kabane < Formula
  desc "Local-first issue tracker and kanban for humans and AI agent runtimes"
  homepage "https://github.com/davidpp/kabane"
  version "1.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/davidpp/kabane/releases/download/v1.2.0/kabane-darwin-arm64.tar.gz"
      sha256 "de2f2852dfeb62b0198a3c8203584d207742e141e6b965b84a1951a55eaa1520"
    end
    on_intel do
      url "https://github.com/davidpp/kabane/releases/download/v1.2.0/kabane-darwin-x64.tar.gz"
      sha256 "75f509ef23a54ad7965d11732dc726fdec793d681e1b0f5e39ef906eb652bc52"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/davidpp/kabane/releases/download/v1.2.0/kabane-linux-arm64.tar.gz"
      sha256 "de53cad9a0c47199de3cea2ef484405eaf9fbf0eaea9d9d7b8cb96698a855630"
    end
    on_intel do
      url "https://github.com/davidpp/kabane/releases/download/v1.2.0/kabane-linux-x64.tar.gz"
      sha256 "dc5d66734bc8251af28fd2c68ab3fa4e1d85237f07c4cd92dfe992327251f868"
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
