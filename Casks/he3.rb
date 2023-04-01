cask "he3" do
  arch arm: "arm64", intel: "x64"
  version "1.3.0"
  sha256 arm:   "18b468b8197a19ac0d979af8f38f37949e4459069d8a62da87190aeca2ea1bf7",
         intel: "829118a82e3bb52d223bdbf2997f9972d1c2ef01ef2b9ccf4f95dd942e3cc6df"
          
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
