cask "pitex" do
  version "1.3.0"
  sha256 "0a3f7d049ea3ed32c160a8d4ca10e9139274a2436602cba83a4105c235c8431b"

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
