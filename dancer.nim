type 
  Dns = object
    name: string
    dns: string

type 
  DnsList = seq[Dns]

# var sampledns  = Dns(name:"dnsname",dns:"")
let default: Dns = Dns(name:"default",dns:"nameserver 10.104.88.8\nnameserver 10.104.88.9")
let shecan: Dns  = Dns(name:"shecan",dns:"nameserver 178.22.122.100\nnameserver 185.51.200.2")
let online403: Dns  = Dns(name:"403",dns:"nameserve 10.202.10.202\nnameserver 10.202.10.102")

var dns_list: DnsList
dns_list = @[default,shecan , online403]

proc dns_changer(dns: Dns) =
  writeFile("/etc/resolv.conf", dns.dns)

# It only works for the first time and shows the updated resolv.conf info after
let entireFile = readFile("resolv.conf")
echo entireFile  # prints the entire file

echo "Choose A Dns"
for i,value in dns_list:
  echo " [",$i,"]",$value.name

var chosen_dns = readLine(stdin)
case chosen_dns
of "0":
  dns_changer(dns_list[0])
of "1":
  dns_changer(dns_list[1])
of "2":
  dns_changer(dns_list[2])
  echo "Dns Not Found"
of "3":
  # dns_changer(dns_list[3])
  echo "Dns Not Found"
of "4":
  # dns_changer(dns_list[4])
  echo "Dns Not Found"
of "5":
  # dns_changer(dns_list[5])
  echo "Dns Not Found"
of "6":
  # dns_changer(dns_list[6])
  echo "Dns Not Found"
else:
  echo "Dns Not Found"