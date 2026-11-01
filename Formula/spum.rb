class Spum < Formula
  desc "Local inference for language, images and biomedical instruments"
  homepage "https://spum.si/"
  url "https://nsimaging.ai/spum/releases/spum-0.2.2-macos-arm64.tar.gz"
  version "0.2.2"
  sha256 "65d841e6b13cee638108616a452be4eb47f0df5ef72a419dfc1652cc6240c2d4"
  license "MIT"

  depends_on :macos
  depends_on arch: :arm64
  on_macos do
    depends_on macos: :sonoma
  end

  def install
    bin.install "spum"
    prefix.install "LICENSE"
  end

  test do
    assert_match "spum #{version}", shell_output("#{bin}/spum --version")
  end
end
