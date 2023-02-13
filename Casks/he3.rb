cask "he3" do
  arch arm: "arm64", intel: "x64"
  version "1.2.9"
  sha256 arm:   "79cbef5b87c04f00ea738d6abe1622ebd4318387346a87847272d7720fec9298",
         intel: "0dc0684d86c3f05a6e02e8ff087db931dba90cd654b23b83441c7e5667e141f2"
          
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
