cask "he3" do
  arch arm: "arm64", intel: "amd64"
  version "0.0.18"
  sha256 arm:   "4b520b5cbac3b79824a9a7d5927cc9d2128ef40d8ec5f1f4f09a194bc9f65e11",
         intel: "656c76293bdd3e1d0570e9f0d97b64a715f1a06fcf244d57ab21fb7f5a67445c"
          
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
