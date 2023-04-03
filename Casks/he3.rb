cask "he3" do
  arch arm: "arm64", intel: "x64"
  version "1.3.2"
  sha256 arm:   "3e46bec994849c1c6aa534070ec3a4ed897c0283016e0c202c10a528fcb2009b",
         intel: "bcc90691110ed3fd0bd8a618724140fe6d4b126981122832837ba93340e1fc0e"
          
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
