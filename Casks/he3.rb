cask "he3" do
  arch arm: "arm64", intel: "x64"
  version "1.2.1"
  sha256 arm:   "0c3b80097bd9bc113ac67c9aaaea10089e0a07f5e5c429fd0b7184f8bf1f47fe",
         intel: "cce0657e75e1fff22bfb3543bd0f5570779a300960c3cea47977a8447fdee9b8"
          
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
