# Generated from packaging/homebrew/kabane.rb.tmpl in https://github.com/davidpp/kabane for exactly
# one release; that repository's release workflow commits it here. Edit the template there.
class Kabane < Formula
  desc "Local-first issue tracker and kanban for humans and AI agent runtimes"
  homepage "https://github.com/davidpp/kabane"
  version "1.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/davidpp/kabane/releases/download/v1.0.1/kabane-darwin-arm64.tar.gz"
      sha256 "07e2c7cd91e54474488c565b1d927e9f07f01e3545670507d9532c77519a9b2e"
    end
    on_intel do
      url "https://github.com/davidpp/kabane/releases/download/v1.0.1/kabane-darwin-x64.tar.gz"
      sha256 "10e261d3614bc939c9e0f2035354e42fedc2894342878af0a2f03a6d6d69d8d8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/davidpp/kabane/releases/download/v1.0.1/kabane-linux-arm64.tar.gz"
      sha256 "b846b9827ba17dceb22b3cec034de7cad26e38ceb8c4c0263e7dc78ad15e1468"
    end
    on_intel do
      url "https://github.com/davidpp/kabane/releases/download/v1.0.1/kabane-linux-x64.tar.gz"
      sha256 "27633e87b64715958231cee0fdecc4d617d5052911c0f1ec74dc744dcd4ac4b6"
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
