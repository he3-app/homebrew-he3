cask "he3" do
  arch arm: "arm64", intel: "amd64"
  version "0.0.23"
  sha256 arm:   "6a0479bbe7e757b8f559959ad40eaef4519f2feb1c7aa5787a8aedf186c5a220",
         intel: "1792e8089101ff1277e606df164eacec1f35425056180a3fe0705b41b2569297"
          
  url "https://he3-1309519128.cos.accelerate.myqcloud.com/#{version}/He3_mac_#{arch}_#{version}.dmg"
  
  livecheck do
    url :url
  end

  auto_updates true

  name "He3"
  desc "A Free, Modern Toolbox Built for Developers."
  homepage "https://he3.app"

  depends_on macos: ">= :catalina"

  app "He3.app"

  zap trash: [
    "~/Library/Application Support/he3"
  ]
end
