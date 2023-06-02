cask "he3" do
  arch arm: "arm64", intel: "x64"
  version "1.3.15"
  sha256 arm:   "86b88d02008059f2f873895c9aee25ed7705c241ce9619e2e73b8e666e622121",
         intel: "62d7f9a6f11cef96bb3c048db47be05c8e8efe94a44e3286f70482be97aa24cf"
          
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
