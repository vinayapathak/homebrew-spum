cask "spum-app" do
  version "0.2.1"
  sha256 "a22324151c0dffa511744e06f1e803afa46774dced9afc9e7f869be81db4d6b7"
  url "https://nsimaging.ai/spum/releases/Spum-#{version}-macOS-arm64.dmg"
  name "Spum"
  desc "Standalone local inference app for biomedical instruments"
  homepage "https://nsimaging.ai/spum/"

  depends_on arch: :arm64
  depends_on macos: ">= :sonoma"

  app "Spum.app"
end
