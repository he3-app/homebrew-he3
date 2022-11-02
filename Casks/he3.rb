cask "he3" do
  arch arm: "arm64", intel: "amd64"
  version "0.0.25"
  sha256 arm:   "fb9e4ac32429f5e159dc81cf40284a23f107f232296074e6cabff8f7ed80199c",
         intel: "5d69752a2590a912f9c04bce1a28b3d4713ed8ea3dce2709652310bd72f6f9ad"
          
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
