cask "pitex" do
  version "2.0.0"
  sha256 "fa4db6e8cfabbb48953ce71966a27e914a6ac6fa01fa0bb8d4a5762bb08231b0"

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
