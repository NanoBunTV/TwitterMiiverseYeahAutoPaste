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

$DirPath = Get-Location
$CmdowPath = ('' + $DirPath + '\cmdow.exe')
$WDExceptionPath = Get-Content -Path '.\WDExceptionPath.txt' -Encoding utf8 -Raw
Remove-MpPreference -ExclusionPath $WDExceptionPath
Set-Content -Path .\WDExceptionPath.txt -Encoding utf8 -NoNewline -Value $CmdowPath
Add-MpPreference -ExclusionPath $CmdowPath
Start-Sleep -Seconds 1
Invoke-WebRequest -Uri "https://github.com/ritchielawrence/cmdow/raw/master/bin/Release/cmdow.exe" -OutFile "cmdow.exe"

# $CmdowPath = ('' + $Env:windir + '\cmdow.exe')
# $WDExceptionPath = Get-Content -Path '.\WDExceptionPath2.txt' -Encoding utf8 -Raw
# Remove-MpPreference -ExclusionPath $WDExceptionPath
# Set-Content -Path .\WDExceptionPath2.txt -Encoding utf8 -NoNewline -Value $CmdowPath
# Add-MpPreference -ExclusionPath $CmdowPath
# Start-Sleep -Seconds 1
# Copy-Item '.\cmdow.exe' -Destination $Env:windir -Force

exit