cask "he3" do
  arch arm: "arm64", intel: "x64"
  version "1.1.1"
  sha256 arm:   "c6d934e88933480fbff3b0188f56ec667b838abb474122c7f484668fba18d021",
         intel: "d2582d239b255907420a01db13c2d934457a9f7c5260a057ba4a3467607e2631"
          
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
