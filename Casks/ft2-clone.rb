cask "ft2-clone" do
  version "1.86"
  sha256 "90a72fb79fc631353dced4c8f82a0261bfb23e90f23bb4245a25ed1a23cacf4a"

  url "https://16-bits.org/ft2-clone-v#{version}-macos.zip"
  name "Fasttracker II clone"
  desc "Clone of Fasttracker II software for modern OSes"
  homepage "https://16-bits.org/"

  livecheck do
    url "https://16-bits.org/ft2.php"
    regex(%r{href=.*?/ft2[._-]clone[._-]v?(\d+(?:\.\d+)+)[._-]macos\.zip}i)
  end

  app "ft2-clone-macos/ft2-clone-macos.app"
end
