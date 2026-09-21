cask "pitex" do
  version "1.2.7"
  sha256 "4ee56fc4f49eb55144ad466fa9b872e48e5c22f27e24494c8fedf2aad472e9d9"

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
