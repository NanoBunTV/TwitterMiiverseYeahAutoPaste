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

$yes = @("yes","yup","yeah","y","yea","mhm")
$no = @("no","nah","nope","n","na","nae","hell no","fuck you")

write-host ''

do
{
	write-host '' ; write-host '  Are you sure you would like to uninstall? ' -ForegroundColor Red -NoNewline ; write-host '(yes/no)' -ForegroundColor Yellow -NoNewline ; $answ = read-host " "
}
until($no -contains $answ -or $yes -contains $answ)

if($yes -contains $answ)
{
    Remove-Item '.\cmdow.exe' -Force
	
	$WDExceptionPath = Get-Content -Path '.\WDExceptionPath.txt' -Encoding utf8 -Raw
	Remove-MpPreference -ExclusionPath $WDExceptionPath
	
	Set-Location reset-stuff
	Start-Process -FilePath .\ResetTexts.bat -Wait
	
	write-host ''
	write-host '  Uninstalled. Feel free to delete this entire folder now. See ya later!  ' -ForegroundColor Green
	write-host ''
	pause
	exit
}
elseif($no -contains $answ)
{
    write-host ''
	write-host '  Well, uh, nevermind then... bye bye!  ' -ForegroundColor Cyan
	write-host ''
	Start-Sleep -Seconds 5
	exit
}

exit