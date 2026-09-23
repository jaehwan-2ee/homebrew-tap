cask "pitex" do
  version "1.8.3"
  sha256 "716d1a1404784f824ed0ba4b01ae02e2740896ec8a1bad196642450586db724e"

  url "https://github.com/jaehwan-2ee/pitex/releases/download/v#{version}/Pitex-v#{version}-macos-arm64.dmg"
  name "Pitex"
  desc "Native LaTeX environment with a Pi-based AI assistant"
  homepage "https://github.com/jaehwan-2ee/pitex"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Pitex.app"

  zap trash: [
    "~/Library/Application Support/Pitex",
    "~/Library/Caches/app.pitex.desktop",
    "~/Library/Preferences/app.pitex.desktop.plist",
  ]
end
