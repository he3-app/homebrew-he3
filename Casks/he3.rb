cask "he3" do
  arch arm: "arm64", intel: "amd64"
  version "1.0.1"
  sha256 arm:   "0fada7df7961ece301346617929fa579c262c24ac3712d3363d887322c7d7d2f",
         intel: "f1a25ab9da269c141a39808d0691b6a5aded3228f8c1f6412873b615c8ece101"
          
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
