:: ----------------------------------------------------------------------------
:: -------------------- Twitter Miiverse Yeah! Auto Paste ---------------------
:: ----------------------- Copyright (C) 2024 NanoBunTV -----------------------
:: ----------------------------------------------------------------------------
:: - This program is free software: you can redistribute it and/or modify it --
:: - under the terms of the GNU Affero General Public License as published by -
:: ------ the Free Software Foundation, either version 3 of the License, ------
:: ------------------ or (at your option) any later version. ------------------
:: ----------------------------------------------------------------------------
:: ----- This program is distributed in the hope that it will be useful, ------
:: ------ but WITHOUT ANY WARRANTY; without even the implied warranty of ------
:: ----------- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. -----------
:: ------- See the GNU Affero General Public License for more details. --------
:: ----------------------------------------------------------------------------
:: - You should have received a copy of the GNU Affero General Public License -
:: -- along with this program. If not, see <https://www.gnu.org/licenses/>. ---
:: ----------------------------------------------------------------------------

@echo off
cd ..
pwsh -NoProfile -ExecutionPolicy Bypass -Command "Set-Content -Path .\ScriptCounter.txt -Encoding utf8 -NoNewline -Value '3'"
pwsh -NoProfile -ExecutionPolicy Bypass -Command "$msgbox = 'x=msgbox(\"YOURE NOT SUPPOSED TO BE HERE\", 0+64, \":3\")' ; Set-Content -Path .\msgbox.vbs -Encoding utf8 -NoNewline -Value $msgbox"
pwsh -NoProfile -ExecutionPolicy Bypass -Command "Set-Content -Path .\WDExceptionPath.txt -Encoding utf8 -NoNewline -Value ''"
pwsh -NoProfile -ExecutionPolicy Bypass -Command "write-host '' ; write-host '' ; write-host '    ~  Done!  ~    ' -ForegroundColor Green ; write-host ''"
pwsh -NoProfile -ExecutionPolicy Bypass -Command "Start-Sleep -Seconds 2"
exit