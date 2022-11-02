cask "he3" do
  arch arm: "arm64", intel: "amd64"
  version "0.0.24"
  sha256 arm:   "1c93b93a636925eb42e5335077cfd8b14c7ec0d2ce168867d6a8faa129c6a7cb",
         intel: "5509d5fac4d0b3ee77fc72331d5631d2d99f053ffd1282ca6aca13c67a56b93b"
          
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
