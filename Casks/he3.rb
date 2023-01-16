cask "he3" do
  arch arm: "arm64", intel: "x64"
  version "1.2.5"
  sha256 arm:   "83a6f5b6a88b72513bdabcf3685924079ddf8c9c9ec2dd05aa269cd3554c3e92",
         intel: "6953008a1f74f00e99ba5ddd8f3943d8405c45150bd90ad7c36ea3f0a4804e56"
          
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
