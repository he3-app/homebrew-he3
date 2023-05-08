cask "he3" do
  arch arm: "arm64", intel: "x64"
  version "1.3.7"
  sha256 arm:   "8bca4d3e8ae369c4451b9463e854251d88f28f1301077be7f7ac522aa4ba2ab2",
         intel: "1d06a421a88f3f37f8b8a9d577d453b904c1f0fc53711a89393bf4d7b49d054d"
          
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
