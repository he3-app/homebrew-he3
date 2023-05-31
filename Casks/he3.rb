cask "he3" do
  arch arm: "arm64", intel: "x64"
  version "1.3.13"
  sha256 arm:   "cfc69943a52c52fe8a027ae4cc620f0f220ce1ffc48ee4dd1ad88d5b09f0264e",
         intel: "619f4d8fc12f4bb9eefb8ecbfec010441586be6e1874a75110678d45f6fdf152"
          
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
