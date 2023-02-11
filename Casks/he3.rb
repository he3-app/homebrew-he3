cask "he3" do
  arch arm: "arm64", intel: "x64"
  version "1.2.8"
  sha256 arm:   "3ba6fe41ca82d9dff3a78a577bb6d12d8b459fd7d9bd71140a85d11c4b2dad86",
         intel: "916df933e76ff064a0bc20a51c8788f50bd3ebbf1662c5c54a4ac0af7fa2fff3"
          
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
