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
cd ..
cd assets
start "" "ms-windows-store://pdp?productid=9nblggh4nns1"
start "" "WingetPauseWarning.vbs"
color e
cls
echo -------------------------------------------------------------------------------------
echo    DO NOT PRESS ENTER until you have installed the package that has just appeared!
echo                    (if it was already installed, just press enter)                   
echo -------------------------------------------------------------------------------------
pause
elevate winget install --id Microsoft.Powershell --source winget --accept-package-agreements --accept-source-agreements --wait
exit