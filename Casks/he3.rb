cask "he3" do
  arch arm: "arm64", intel: "x64"
  version "1.2.11"
  sha256 arm:   "5005082388cfa38f2669fb31a91cbd20977b50d1305bd6b06f951733d2017b8a",
         intel: "09c1d9e0ed3d28fe908413336798fddb4dfc348b0d9e6fa0a9ce432957b678ee"
          
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
