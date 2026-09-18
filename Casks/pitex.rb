cask "pitex" do
  version "1.0.4"
  sha256 "ff85e7e0b1650bdc6d586373119612707311d8263fa728388d286307c6ec1f04"

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
