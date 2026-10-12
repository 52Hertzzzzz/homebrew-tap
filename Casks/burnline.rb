cask "burnline" do
  version "1.1.4"
  sha256 "0d1daff4cd2940fbfd21856fa19ce07ab2b801968e0d118c4d3eede762d92e1a"

  url "https://github.com/52Hertzzzzz/homebrew-tap/releases/download/v#{version}/Burnline-#{version}-arm64.dmg"
  name "Burnline"
  desc "AI quota and runway monitor for the menu bar"
  homepage "https://github.com/52Hertzzzzz/homebrew-tap"

  depends_on arch: :arm64
  depends_on macos: :monterey

  app "Burnline.app"

  caveats <<~EOS
    This is a team preview without Apple Developer ID signing or notarization.
    Homebrew installation does not bypass macOS Gatekeeper checks.
    Review the README for first-launch requirements and account setup.
  EOS
end
