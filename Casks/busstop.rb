# The Bus Stop cask, served from the static74/homebrew-busstop tap:
#   brew install --cask static74/busstop/busstop
#
# The copy in Bus Stop's source repository (packaging/homebrew/Casks/busstop.rb)
# is the source. Each release, release.yml stamps the new version and the
# disk image's SHA-256 into it with scripts/update-cask.sh and pushes it to
# the tap, so the version and sha256 lines here can lag behind the tap's.
# Edit the source, not the tap's copy.
cask "busstop" do
  version "1.5.1"
  sha256 "df813c4317dfbc6f8257809e8b9b5ed54dbc423e3bb07ca925ba929b4c27407e"

  url "https://github.com/static74/BusStop/releases/download/v#{version}/BusStop.dmg"
  name "Bus Stop"
  desc "Live map of USB-C and Thunderbolt ports, devices and power"
  homepage "https://github.com/static74/BusStop"

  livecheck do
    url :url
    strategy :github_latest
  end

  # Bus Stop can install its own updates (Settings > General). brew upgrade
  # then leaves it alone unless given --greedy.
  auto_updates true
  depends_on macos: :tahoe

  app "Bus Stop.app"
  binary "#{appdir}/Bus Stop.app/Contents/Helpers/busstop"

  uninstall quit: "io.github.static74.busstop"

  zap trash: [
    "~/Library/Application Support/io.github.static74.busstop",
    "~/Library/Group Containers/*.io.github.static74.busstop",
    "~/Library/Preferences/io.github.static74.busstop.plist",
  ]
end
