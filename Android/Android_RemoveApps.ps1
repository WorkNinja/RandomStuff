$adbDir = "c:\platform-tools\adb.exe"

## Uninstall Apps

$apps = @(
    "com.netflix.mediaclient"                   # Netflix
    "com.racing.hillclimb.car"                  # Hill car race
    "com.casualgame.soliatire"                  # Fish Soliatire
    "com.dreamebooks.reader"                    # Dreame Books
    "com.matchgame.tiletriple"                  # Cat Tile
    "com.block.puzzle.game.hippo.uc"            # Block Puzzle Guardian
    "com.lenovo.heihei.games"                   # Game Planet
    "com.snake.io.slither.worms"                # Snake Lite
    "com.opera.browser"                         # Opera
    "com.gp.swingman"                           # Swing Man
    "com.oupeng.master"                         # Magic Cleaner
    "com.google.android.apps.fitness"           # Google Fit
    "com.google.android.apps.tachyon"           # Google Duo
    "com.google.android.videos"                 # Google TV
    "com.google.android.apps.books"             # Google Play Books
    "com.google.android.apps.subscriptions.red" # Google One
    "com.google.android.apps.chromecast.app"    # Google Home
    "com.google.android.apps.podcasts"          # Google Podcasts
    "com.google.android.apps.magazines"         # Google News
    "com.google.android.apps.doc.editors.sheets"# Google Sheets
    "com.google.android.apps.docs.editors.docs" # Google Docs
    "com.zimi.weather"                          # Daily Weather
    "com.amazon.mp3"                            # Amazon Music
    "com.google.android.apps.youtube.kids"      # Youtube Kids
    "com.lenovo.styluspen"                      # Instant Memo

)

Foreach ($a in $apps){
    $cmd = Write-Output "$adbDir shell pm uninstall -k --user 0 $a"
    Start-Process cmd.exe -ArgumentList "/c $cmd" -Wait
}

### Disable Apps that can't be uninstalled

$Sapps = @(
    "com.google.android.apps.kids.home"          # Kids Space
    "com.google.android.apps.youtube.music"     # YouTube Music
    "com.google.android.youtube"                 # YouTube
)

Foreach ($sa in $Sapps){
    $cmd = Write-Output "$adbDir shell pm disable-user $sa"
    Start-Process cmd.exe -ArgumentList "/c $cmd" -Wait
}
