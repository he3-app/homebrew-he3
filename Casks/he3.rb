cask "he3" do
  arch arm: "arm64", intel: "x64"
  version "1.3.1"
  sha256 arm:   "218e5181ca735e8841c5b462924f5bee5b500dc156fa6f455fbffe1486cf287a",
         intel: "55d064b80ba3712daa5040f54cdbe387a5105b74eb1a921ccab3a5cc6155915f"
          
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
