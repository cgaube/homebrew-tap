# The release workflow of cgaube/local-env updates the version, the release tag
# in the URL and the checksum: don't change those by hand.
class LocalEnv < Formula
  desc "HTTPS *.dev.test for your containers, plus templates from your git repos"
  homepage "https://github.com/cgaube/local-env"
  url "https://github.com/cgaube/local-env/releases/download/v0.2.0/local-env"
  version "0.2.0"
  sha256 "63feaedbf1f9821a4c6cf9bb08325284edb43af4e34703f80ec97921008bfb9a"
  license "MIT"

  # Apple Silicon Macs only. local-env setup configures dnsmasq (wildcard
  # DNS) and mkcert (local certificates).
  depends_on arch: :arm64
  depends_on "dnsmasq"
  depends_on :macos
  depends_on "mkcert"

  def install
    bin.install "local-env"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/local-env --version")
  end
end
