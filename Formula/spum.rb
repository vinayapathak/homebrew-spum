class Spum < Formula
  desc "Local inference for language, images and biomedical instruments"
  homepage "https://nsimaging.ai/spum/"
  url "https://nsimaging.ai/spum/releases/spum-0.2.1-macos-arm64.tar.gz"
  version "0.2.1"
  sha256 "ac684d647823449b49d82b07e113f191000158d166b2c1e59e1bef8d07fba36d"
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
