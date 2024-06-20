#Requires -Version 7.4

# ----------------------------------------------------------------------------
# -------------------- Twitter Miiverse Yeah! Auto Paste ---------------------
# ----------------------- Copyright (C) 2024 NanoBunTV -----------------------
# ----------------------------------------------------------------------------
# - This program is free software: you can redistribute it and/or modify it --
# - under the terms of the GNU Affero General Public License as published by -
# ------ the Free Software Foundation, either version 3 of the License, ------
# ------------------ or (at your option) any later version. ------------------
# ----------------------------------------------------------------------------
# ----- This program is distributed in the hope that it will be useful, ------
# ------ but WITHOUT ANY WARRANTY; without even the implied warranty of ------
# ----------- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. -----------
# ------- See the GNU Affero General Public License for more details. --------
# ----------------------------------------------------------------------------
# - You should have received a copy of the GNU Affero General Public License -
# -- along with this program. If not, see <https://www.gnu.org/licenses/>. ---
# ----------------------------------------------------------------------------

# Add 1 math
$ScriptCounter = get-content 'ScriptCounter.txt' -Encoding utf8 -raw
$ScriptCounter = [Int]$ScriptCounter + 1
Set-Content -Path .\ScriptCounter.txt -Encoding utf8 -NoNewline -Value $ScriptCounter

$NewYeahName = ('yeah' + $ScriptCounter + '')

# Create new powershell 7 script
$FileContent = get-content 'yeah_TEMPLATE.ps1' -Encoding utf8 -raw
$FileContent = $FileContent -replace 'yeah0', $NewYeahName
Set-Content -Path ('.\yeah' + $ScriptCounter + '.ps1') -Encoding utf8 -NoNewline -Value $FileContent

# Create new initializing batch file
$FileContent = get-content 'yeah_TEMPLATE.bat' -Encoding utf8 -raw
$FileContent = $FileContent -replace 'yeah0', $NewYeahName
Set-Location ..\
Set-Content -Path ('.\Twitter Miiverse Yeah! ' + $ScriptCounter + '.bat') -Encoding utf8 -NoNewline -Value $FileContent

Set-Location assets
Set-Content -Path .\msgbox.vbs -Encoding utf8 -NoNewline -Value ('x=msgbox("Twitter Miiverse Yeah! ' + $ScriptCounter + '.bat has been created. Place a PNG image file named ' + $NewYeahName + '.png in the main folder.", 0+64, "Notice")')
Start-Process -FilePath .\msgbox.vbs
exit