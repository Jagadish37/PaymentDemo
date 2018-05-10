param([string] $nexusrepo = "C:\Temp", 
      [string] $localpath = "local")

$client = New-Object System.Net.WebClient 

#$client.DownloadFile(“http://localhost:8081/repository/PaymentDemo/PaymentDemo/PaymentDemo/0.1/PaymentDemo-0.1.war”,“D:\Projects\Budapest\PaymentDemo-0.1.war”)

$client.DownloadFile($nexusrepo,$localpath)
