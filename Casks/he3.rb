cask "he3" do
  arch arm: "arm64", intel: "amd64"
  version "0.0.24"
  sha256 arm:   "d432e8321758eca4c39af7545e8920655c9756c3c496e7049df58c3280ac4479",
         intel: "89947294cab2c9fe359f3f7fd7036df2cd5fca0eaff4ce17597602321434bf1a"
          
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
