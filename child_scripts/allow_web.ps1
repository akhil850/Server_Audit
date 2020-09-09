New-NetFirewallRule -DisplayName 'MCB-Web-Servers' -Profile @('Domain', 'Private','Public') -Direction Inbound -Action Allow
New-NetFirewallRule -DisplayName 'MCB-DB-Servers' -Profile @('Domain', 'Private','Public') -Direction Inbound -Action Allow

$name1 = Get-NetFirewallrule -DisplayName "MCB-Web-Servers"
$ips = @("103.24.202.216", "103.24.203.131","103.24.203.137" ,"103.24.200.112","103.24.203.144","103.24.203.15","188.42.96.72","103.24.200.197","103.24.200.164","103.24.200.98")

foreach($r1 in $name1)
{
    Set-NetFirewallRule -DisplayName $r1.DisplayName -RemoteAddress $ips1
}

$name2 = Get-NetFirewallrule -DisplayName "MCB-DB-Servers"
$ips = @("188.42.97.34", "103.24.202.7","188.42.97.76","188.42.97.78","188.42.97.45","103.24.203.130","188.42.96.253","188.42.96.23","103.24.202.8")

foreach($r2 in $name2)
{
    Set-NetFirewallRule -DisplayName $r2.DisplayName -RemoteAddress $ips2
}
