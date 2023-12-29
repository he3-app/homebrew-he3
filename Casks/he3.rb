cask "he3" do
  arch arm: "arm64", intel: "x64"
  version "2.0.17"
  sha256 arm:   "bee058414e53a0a8472ac1d33349bf2e3d001f377d5de8a27073fafcfd01eaa7",
         intel: "0018ce16c67a61b8ac316f893bf5b3ecfb13a4eb5e06aa17ccaf630aa8912f74"
          
  url "https://he3-1309519128.cos.accelerate.myqcloud.com/#{version}/He3_mac_#{arch}_#{version}.dmg"
  
  livecheck do
    url :url
  end

  auto_updates true

  name "He3"
  desc "A Free, Modern Toolbox Built for Developers."
  homepage "https://he3app.com"

  depends_on macos: ">= :catalina"

  app "He3.app"

  zap trash: [
    "~/Library/Application Support/he3"
  ]
end
