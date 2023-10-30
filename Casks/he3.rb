cask "he3" do
  arch arm: "arm64", intel: "x64"
  version "2.0.0"
  sha256 arm:   "ab0949344b6e9606e00499d86b15622059bcbdb5d27ca1f13fe93d7069fbc860",
         intel: "771d3aaa415ff3290db3e46964f24cf54aa2b97564ab1a0af12f6bf0d367c5e5"
          
  url "https://he3-1309519128.cos.accelerate.myqcloud.com/#{version}/He3_mac_#{arch}_#{version}.dmg"
  
  livecheck do
    url :url
  end

  auto_updates true

  name "He3"
  desc "A Free, Modern Toolbox Built for Developers."
  homepage "https://he3app.com"

  depends_on macos: ">= :catalina"

  app "He3.app"

  zap trash: [
    "~/Library/Application Support/he3"
  ]
end
