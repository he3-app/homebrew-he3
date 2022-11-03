cask "he3" do
  arch arm: "arm64", intel: "amd64"
  version "0.0.35"
  sha256 arm:   "b02bfaed730dd5d21f82c1cf218fabe919302248212daddcc232ac21e7250a88",
         intel: "89b4d0f060728fc484991e44f67a53cb5d684d6a04c437cf59df5dec0342f7fa"
          
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
