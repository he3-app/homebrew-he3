cask "he3" do
  arch arm: "arm64", intel: "x"
  version "1.0.2"
  sha256 arm:   "90fc0b550fcf1b8a109e23acdd5d5e0b974326aa51a381b6998f75e600e96847",
         intel: "cc2987bd390a09836d5152bcb5995b5cc0260974195fc3ac1f234e0d76afa7d2"
          
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
