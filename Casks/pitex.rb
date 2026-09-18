cask "pitex" do
  version "1.0.3"
  sha256 "dea51d0e723dbc92b5f0e92f5b2c47d58a69185bdbfc269bb604abfccba1523e"

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
