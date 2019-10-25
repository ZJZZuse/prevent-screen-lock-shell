Import-Module Wasp

# 你可以根据你的实际情况修改间隔时间
New-Variable -name INTERVAL -Value (60*4 + 30) -Option Constant -Description 'for 5mins lock default'

get-date
echo `start`

while ($true) {
    $key = '{BREAK}'
    get-date
    echo "press key $key`n"
    echo
    Send-Input $key
    sleep -s $INTERVAL
}