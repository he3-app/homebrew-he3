cask "he3" do
  arch arm: "arm64", intel: "x64"
  version "1.2.4"
  sha256 arm:   "02e8f3160cb72b454266245de7df471b87e4c9ff98916509b0146eacf29fab1b",
         intel: "a2a1506015db034fd0f14168ecf62e7591fbedc95f782105541f1ffc07848bf2"
          
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
