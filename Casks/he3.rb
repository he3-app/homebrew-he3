cask "he3" do
  arch arm: "arm64", intel: "x64"
  version "1.0.4"
  sha256 arm:   "6373367f9f07d5aba2d252eddf704a4a8e77381bbd969c0da3c0bb118bd60984",
         intel: "23582d31499d94240c90173e772a35d8623f2071b9ae2450e3d71c1f8c6566b7"
          
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
