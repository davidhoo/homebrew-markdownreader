cask "markdownreader" do
  version "2.4.10"
  sha256 "992f1d8b30983835a7b92b46fa12706b1c2031209fb2c935cda9adee9de7a004"

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