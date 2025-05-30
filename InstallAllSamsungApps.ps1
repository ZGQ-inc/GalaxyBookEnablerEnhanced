# https://t.me/ZGQinc

function InstallPackage($packageName, $packageId) {
    try {
        Write-Output "Installing $packageName..."
        winget install --accept-source-agreements --accept-package-agreements --id $packageId
        Write-Output "Installation of $packageName completed successfully."
    } catch {
        Write-Output "Error installing $packageName $_"
    }
}

InstallPackage "Samsung Account" "9P98T77876KZ"
InstallPackage "Samsung Notes" "9NBLGGH43VHV"
InstallPackage "Quick Search" "9N092440192Z"
InstallPackage "Live Wallpaper" "9N1G7F25FXCB"
InstallPackage "Samsung Gallery" "9NBLGGH4N9R9"
InstallPackage "Samsung Studio" "9P312B4TZFFH"
InstallPackage "Samsung Studio for Gallery" "9NND8BT5WFC5"
InstallPackage "SmartThings" "9N3ZBH5V7HX6"
InstallPackage "Samsung Screen Recorder" "9P5025MM7WDT"
InstallPackage "Multi Control" "9N3L4FZ03Q99"
InstallPackage "Samsung Continuity Service" "9NGW9K44GQ5F"
InstallPackage "Second Screen" "9PLTXW5DX5KB"
InstallPackage "Quick Share" "9PCTGDFXVZLJ"
InstallPackage "Samsung Phone" "9MWJXXLCHBGK"
InstallPackage "Galaxy Book Smart Switch" "9PJ0J9KQWCLB"
InstallPackage "Samsung Settings" "9P2TBWSHK6HJ"
InstallPackage "Bixby" "9PHBJM786KWX"
InstallPackage "Samsung Flow" "9NBLGGH5GB0M"
InstallPackage "Samsung Device Care" "9NBLGGH4XDV0"
InstallPackage "Samsung Pass" "9MVWDZ5KX9LH"
InstallPackage "Galaxy Buds" "9NHTLWTKFZNB"
InstallPackage "Samsung Find" "9MWD59CZJ1RN"
InstallPackage "Galaxy Book Experience" "9P7QF37HPMGX"
InstallPackage "Camera Share" "9NPCS7FN6VB9"
InstallPackage "PENUP" "9MVFWM67008Z"
InstallPackage "Link Sharing" "9NBLGGH6H9KR"
InstallPackage "Private Share" "9N4JRRSV8N95"
InstallPackage "Samsung Bluetooth Sync" "9NJNNJTTFL45"
InstallPackage "Samsung Cloud" "9NFWHCHM52HQ"
InstallPackage "Samsung File Tracker" "9NM3BLWDMDGX"
InstallPackage "Samsung Recovery" "9NBFVH4X67LF"
InstallPackage "Samsung Studio Plus Legacy" "9PLPF77D2R18"
InstallPackage "Samsung Update" "9NQ3HDB99VBF"
InstallPackage "Storage Share" "9MVNW0XH7HS5"
InstallPackage "Nearby devices" "9PHL04NJNT67"
InstallPackage "Samsung Settings Runtime" "9NL68DVFP841"
InstallPackage "Air Command" "9NCH233ZNXDW"
InstallPackage "Live Message" "9N1LLZZ0X72B"
