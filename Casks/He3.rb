cask "he3" do
  arch arm: "arm64", intel: "amd64"
  version "0.0.33"
  sha256 arm:   "e67534629048ac4ee90577501f23da4c7621b5c01caadbf45c0f71d9bb09b88a",
         intel: "1100b7a6b689c1b643fe29d427e93957f3f50e575a6445296e773c6f09bf4cd2"
          
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
