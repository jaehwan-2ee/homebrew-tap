cask "pitex" do
  version "1.0.5"
  sha256 "ab5008bc9335a8637e0da35c18aa14cc5282235728d5c74af2b8f9ab88be9273"

  url "https://github.com/jaehwan-2ee/pitex/releases/download/v#{version}/Pitex-v#{version}-macos-arm64.dmg"
  name "Pitex"
  desc "Native LaTeX environment with a Pi-based AI assistant"
  homepage "https://github.com/jaehwan-2ee/pitex"

  depends_on arch: :arm64
  depends_on macos: ">= :sequoia"

  app "Pitex.app"

  zap trash: [
    "~/Library/Application Support/app.pitex.desktop",
    "~/Library/Caches/app.pitex.desktop",
    "~/Library/Preferences/app.pitex.desktop.plist",
  ]
end
