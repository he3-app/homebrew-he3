cask "he3" do
  arch arm: "arm64", intel: "amd64"
  version "0.0.28"
  sha256 arm:   "0e0528d5c723ee606728fcbadd5a31ef5898730b7354620cef9eb4cb5d3f8241",
         intel: "619b4f557c5aff36b289608c98356d8b159244d3a90ff18e9c0e67b0328ffefe"
          
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
