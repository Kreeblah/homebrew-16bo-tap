cask "pt2-clone" do
  version "1.70"
  sha256 "62b6f8bf13bc05d23d2b6f1d1eac577a88ee77e3080782b41be90b860dfe184f"

  url "https://16-bits.org/pt2-clone-v#{version}-macos.zip"
  name "ProTracker 2 clone"
  desc "Clone of ProTracker 2 software for modern OSes"
  homepage "https://16-bits.org/"

  livecheck do
    url "https://16-bits.org/pt2.php"
    regex(%r{href=.*?/pt2[._-]clone[._-]v?(\d+(?:\.\d+)+)[._-]macos\.zip}i)
  end

  app "pt2-clone-macos/pt2-clone-macos.app"

  zap trash: "~/Library/Saved Application State/org.16-bits.pt2-clone-macos.savedState"
end
