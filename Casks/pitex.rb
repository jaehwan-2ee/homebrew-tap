cask "pitex" do
  version "2.0.1"
  sha256 "754b55e857c6634d1bb4ef780333ff6f86352581d75aa57fb4d11bece19ff2df"

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
