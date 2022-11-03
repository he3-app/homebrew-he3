cask "he3" do
  arch arm: "arm64", intel: "amd64"
  version "0.0.31"
  sha256 arm:   "679408cd195531124d29fe1e68341d52b7549b41e2ecb84dc4abfce09ffe37ce",
         intel: "0d99587f0f350b855d75455c655a030579071dcda083f98cd474057381d6e448"
          
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
