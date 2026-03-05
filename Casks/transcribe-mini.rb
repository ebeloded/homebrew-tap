cask "transcribe-mini" do
  version "0.1.0"
  sha256 "4df2df3430412564755d7036f20cea9495357578ccbda0cc8cd7f93906d28f61"

  url "https://github.com/ebeloded/transcribe/releases/download/v#{version}/TranscribeMini.zip"
  name "TranscribeMini"
  desc "Hold-to-talk menubar transcription app for macOS"
  homepage "https://github.com/ebeloded/transcribe"

  depends_on macos: ">= :ventura"

  app "TranscribeMini.app"

  zap trash: [
    "~/Library/Application Support/TranscribeMini",
    "~/.config/transcribe-mini",
    "~/.transcribe-mini",
    "~/Library/Preferences/com.transcribemini.app.plist",
  ]
end
