cask "he3" do
  arch arm: "arm64", intel: "amd64"
  version "0.0.17"
  sha256 arm:   "d39cd1e943f5d7c9db9ce9531ed7c347739b135fb791f91c7ad1e24d4c20c1bd",
         intel: "d22895a814629fd94d330f99ce85a6eaa2fce5144ce3453ba1368a91e9cc5fde"
          
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
