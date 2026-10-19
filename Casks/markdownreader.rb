cask "markdownreader" do
  version "2.4.11"
  sha256 "3f49b2e53ea0f29a7512af4156c0787597f076f44bf4d5c6f4f973ad1986fd81"

  url "https://github.com/davidhoo/MarkdownReader/releases/download/v#{version}/MarkdownReader.dmg",
      verified: "github.com/davidhoo/MarkdownReader/"
  name "Markdown Reader"
  desc "Quiet Markdown reader"
  homepage "https://davidhoo.github.io/MarkdownReader/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "MarkdownReader.app"

  caveats <<~EOS
    MarkdownReader is development-signed but not notarized.

    If macOS blocks its first launch, find MarkdownReader in Applications,
    Control-click it, choose Open, and confirm. You may alternatively use
    System Settings > Privacy & Security > Open Anyway when available.
  EOS
end