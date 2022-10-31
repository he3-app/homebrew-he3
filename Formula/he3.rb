class he3 < Formula
  version "0.0.15"
  sha256 arm:   "27e37f60e760491655ac067ee0317b60e38fc1e2208baf396e1da7a74f9c0916",
          intel: "703cf23a9574b9f81b7e1cd834f910625da690ec125d50e281204f13fbb35b09"
  

  on_macos do
      on_arm do
          url "https://he3-1309519128.cos.accelerate.myqcloud.com/#{version}/He3_mac_arm64_#{version}.dmg"
      end
  end

  on_macos do
      on_intel do
          url "https://he3-1309519128.cos.accelerate.myqcloud.com/#{version}/He3_mac_amd64_#{version}.dmg"
      end
  end

  # uninstall quit: ""

  name "He3"
  desc "A Free, Modern Toolbox Built for Developers."
  homepage "https://he3.app"

  depends_on macos: ">= :high_sierra"

  app "He3.app"
end