cask "he3" do
  arch arm: "arm64", intel: "x64"
  version "1.2.6"
  sha256 arm:   "c8034ac92393a3bca013b0478dac7694781dcf3a2d71574b6354e71309e6b7de",
         intel: "528397ad850f0442f4998fc78e1424471b018e679a3303cbcd11f6509f25b3c7"
          
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
