New-NetFirewallRule -DisplayName 'MCB-Office-IP' -Profile @('Domain', 'Private','Public') -Direction Inbound -Action Allow

$name3 = Get-NetFirewallrule -DisplayName "MCB-Office-IP"
$ips3 = @("202.65.129.235")

foreach($r3 in $name3)
{
    Set-NetFirewallRule -DisplayName $r3.DisplayName -RemoteAddress $ips3
}
