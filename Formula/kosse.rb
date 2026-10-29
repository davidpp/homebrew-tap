# Generated from packaging/homebrew/kosse.rb.tmpl in https://github.com/davidpp/kosse for exactly
# one release archive; that repository's release workflow commits it here. Edit the template there.
class Kosse < Formula
  desc "Menu-bar app and local dashboard for the development services you already run"
  homepage "https://github.com/davidpp/kosse"
  url "https://github.com/davidpp/kosse/releases/download/v0.2.0/kosse-0.2.0-aarch64-apple-darwin.tar.gz"
  sha256 "defcc6e1baa1846cc63e08ec87c74c7b3bc6b5d0d4310ec703ddb6b99d876b29"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "kosse"
    doc.install "INSTALL.md", "MANIFEST.json", "SKILL.md", "THIRD_PARTY_NOTICES.md"
  end

  def caveats
    <<~EOS
      To start the menu-bar app at each login (optional), enable it from the linked path, not
      the versioned Cellar path, so upgrades keep working:
        #{HOMEBREW_PREFIX}/bin/kosse startup enable
      Before `brew uninstall kosse`, run `kosse startup disable` if you enabled it.
    EOS
  end

  test do
    assert_equal "kosse #{version}", shell_output("#{bin}/kosse --version").strip
    system bin/"kosse", "config", "schema"
  end
end
