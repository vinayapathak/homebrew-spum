cask "spum-app" do
  version "0.2.3"
  sha256 "560650b3567341bb73d11e0d5f3e7a82568890ac6aa17c8866b84ec5dfe77420"
  url "https://nsimaging.ai/spum/releases/Spum-#{version}-macOS-arm64.dmg"
  name "Spum"
  desc "Standalone local inference app for biomedical instruments"
  homepage "https://nsimaging.ai/spum/"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Spum.app"
end
