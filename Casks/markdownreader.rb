cask "markdownreader" do
  version "2.4.2"
  sha256 "6eba461b3f9a725db29a754048b85dc385209f4f674773143a7beefce5f6d978"

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
