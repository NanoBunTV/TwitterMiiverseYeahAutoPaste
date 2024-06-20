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

$YeahToUse = 'yeah3.png'

$OriginalClipboardContent = Get-Clipboard
Set-Location ..\
$DirPath = Get-Location
Set-Location assets
cmd /c ('nircmd.exe clipboard copyimage "' + $DirPath + '\' + $YeahToUse + '"')
Start-Sleep -Milliseconds 50
cmd /c ctrlv.exe
Start-Sleep -Milliseconds 50
Set-Clipboard -Value $OriginalClipboardContent
exit