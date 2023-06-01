cask "he3" do
  arch arm: "arm64", intel: "x64"
  version "1.3.14"
  sha256 arm:   "fcc87e994f0c4ba4f7687865ad73d63d084b26d3f8ff3eaf2ff6503ac1979952",
         intel: "646b536e4b17eec45adf479b19e53448e946faee003ed8bac1dc28e93ca4f05d"
          
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
