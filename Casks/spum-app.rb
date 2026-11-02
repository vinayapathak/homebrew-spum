cask "spum-app" do
  version "0.2.4"
  sha256 "a2746f75c4f5ef033e1f789e205f51fcd173d46d8255a308fdf3932b240d2125"
  url "https://nsimaging.ai/spum/releases/Spum-#{version}-macOS-arm64.dmg"
  name "Spum"
  desc "Standalone local inference app for biomedical instruments"
  homepage "https://nsimaging.ai/spum/"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Spum.app"
end
