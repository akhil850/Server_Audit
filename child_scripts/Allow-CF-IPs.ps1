New-NetFirewallRule -DisplayName 'cloudflare-Ipv4' -Profile @('Domain', 'Private','Public') -Direction Inbound -Action Allow
$name1 = Get-NetFirewallrule -DisplayName "cloudflare-Ipv4"
$ips1 = @("173.245.48.0/20",
"103.21.244.0/22",
"103.22.200.0/22",
"103.31.4.0/22",
"141.101.64.0/18",
"108.162.192.0/18",
"190.93.240.0/20",
"188.114.96.0/20",
"197.234.240.0/22",
"198.41.128.0/17",
"162.158.0.0/15",
"104.16.0.0/12",
"172.64.0.0/13",
"131.0.72.0/22")

foreach($r1 in $name1)
{
    Set-NetFirewallRule -DisplayName $r1.DisplayName -RemoteAddress $ips1
}
#Set_2
New-NetFirewallRule -DisplayName 'cloudflare-Ipv6' -Profile @('Domain', 'Private','Public') -Direction Inbound -Action Allow
$name2 = Get-NetFirewallrule -DisplayName "cloudflare-Ipv6"
$ips2 = @("2400:cb00::/32",
"2606:4700::/32",
"2803:f800::/32",
"2405:b500::/32",
"2405:8100::/32",
"2a06:98c0::/29",
"2c0f:f248::/32")

foreach($r2 in $name2)
{
    Set-NetFirewallRule -DisplayName $r2.DisplayName -RemoteAddress $ips2
}
