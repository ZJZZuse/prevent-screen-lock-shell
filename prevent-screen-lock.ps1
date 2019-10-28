Add-Accelerator SendKeys           System.Windows.Forms.SendKeys       -EA SilentlyContinue

# 你可以根据你的实际情况修改间隔时间
New-Variable -name INTERVAL -Value (60*3) -Option Constant -Description 'for 5mins lock default'

get-date
Write-Information `start`

while ($true) {
    $key = '{BREAK}'
    get-date
    Write-Information "press key $key`n"
    [SendKeys]::SendWait($key)
    sleep -s $INTERVAL
}