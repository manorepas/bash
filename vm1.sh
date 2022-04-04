#!/bin/bash
az group create --name Server --location eastus2
az vm create --resource-group Server --name switzerlandnorth --location switzerlandnorth --image Canonical:UbuntuServer:16.04-LTS:latest --size Standard_M416ms_v2 --admin-username azure --admin-password Rancabuaya04 --priority Spot --max-price -1 --eviction-policy Deallocate --no-wait
az vm create --resource-group Server --name southeastasia --location southeastasia --image Canonical:UbuntuServer:16.04-LTS:latest --size Standard_M416ms_v2 --admin-username azure --admin-password Rancabuaya04 --priority Spot --max-price -1 --eviction-policy Deallocate --no-wait
az vm create --resource-group Server --name eastus --location eastus --image Canonical:UbuntuServer:16.04-LTS:latest --size Standard_M416ms_v2 --admin-username azure --admin-password Rancabuaya04 --priority Spot --max-price -1 --eviction-policy Deallocate --no-wait
az vm create --resource-group Server --name eastus2 --location eastus2 --image Canonical:UbuntuServer:16.04-LTS:latest --size Standard_M416ms_v2 --admin-username azure --admin-password Rancabuaya04 --priority Spot --max-price -1 --eviction-policy Deallocate --no-wait
az vm create --resource-group Server --name westus2 --location westus2 --image Canonical:UbuntuServer:16.04-LTS:latest --size Standard_M416ms_v2 --admin-username azure --admin-password Rancabuaya04 --priority Spot --max-price -1 --eviction-policy Deallocate --no-wait
az vm create --resource-group Server --name northeurope --location northeurope --image Canonical:UbuntuServer:16.04-LTS:latest --size Standard_M416ms_v2 --admin-username azure --admin-password Rancabuaya04 --priority Spot --max-price -1 --eviction-policy Deallocate --no-wait
az vm create --resource-group Server --name westeurope --location westeurope --image Canonical:UbuntuServer:16.04-LTS:latest --size Standard_M416ms_v2 --admin-username azure --admin-password Rancabuaya04 --priority Spot --max-price -1 --eviction-policy Deallocate --no-wait
az vm create --resource-group Server --name australiaeast --location australiaeast --image Canonical:UbuntuServer:16.04-LTS:latest --size Standard_M416ms_v2 --admin-username azure --admin-password Rancabuaya04 --priority Spot --max-price -1 --eviction-policy Deallocate --no-wait
az vm create --resource-group Server --name centralindia --location centralindia --image Canonical:UbuntuServer:16.04-LTS:latest --size Standard_M416ms_v2 --admin-username azure --admin-password Rancabuaya04 --priority Spot --max-price -1 --eviction-policy Deallocate --no-wait
az vm create --resource-group Server --name uksouth --location uksouth --image Canonical:UbuntuServer:16.04-LTS:latest --size Standard_M416ms_v2 --admin-username azure --admin-password Rancabuaya04 --priority Spot --max-price -1 --eviction-policy Deallocate --no-wait
az vm create --resource-group Server --name koreacentral --location koreacentral --image Canonical:UbuntuServer:16.04-LTS:latest --size Standard_M416ms_v2 --admin-username azure --admin-password Rancabuaya04 --priority Spot --max-price -1 --eviction-policy Deallocate --no-wait
az vm create --resource-group Server --name francecentral --location francecentral --image Canonical:UbuntuServer:16.04-LTS:latest --size Standard_M416ms_v2 --admin-username azure --admin-password Rancabuaya04 --priority Spot --max-price -1 --eviction-policy Deallocate --no-wait
az vm create --resource-group Server --name southcentralus --location southcentralus --image Canonical:UbuntuServer:16.04-LTS:latest --size Standard_M416ms_v2 --admin-username azure --admin-password Rancabuaya04 --priority Spot --max-price -1 --eviction-policy Deallocate --no-wait
az vm create --resource-group Server --name westus3 --location westus3 --image Canonical:UbuntuServer:16.04-LTS:latest --size Standard_M416ms_v2 --admin-username azure --admin-password Rancabuaya04 --priority Spot --max-price -1 --eviction-policy Deallocate --no-wait
az vm create --resource-group Server --name centralus --location centralus --image Canonical:UbuntuServer:16.04-LTS:latest --size Standard_M416ms_v2 --admin-username azure --admin-password Rancabuaya04 --priority Spot --max-price -1 --eviction-policy Deallocate --no-wait
az vm create --resource-group Server --name westus --location westus --image Canonical:UbuntuServer:16.04-LTS:latest --size Standard_M416ms_v2 --admin-username azure --admin-password Rancabuaya04 --priority Spot --max-price -1 --eviction-policy Deallocate --no-wait
az vm create --resource-group Server --name eastasia --location eastasia --image Canonical:UbuntuServer:16.04-LTS:latest --size Standard_M416ms_v2 --admin-username azure --admin-password Rancabuaya04 --priority Spot --max-price -1 --eviction-policy Deallocate --no-wait
az vm create --resource-group Server --name canadacentral --location canadacentral --image Canonical:UbuntuServer:16.04-LTS:latest --size Standard_M416ms_v2 --admin-username azure --admin-password Rancabuaya04 --priority Spot --max-price -1 --eviction-policy Deallocate --no-wait
sleep 3m
x=1
while [ $x -le 500 ]
do
  echo "Start vps lan $x"
  az vm start --ids $(az vm list -g Server --query "[?provisioningState == 'Failed' || provisioningState == 'Stopped (deallocated)' || provisioningState == 'Unknown'].id" -o tsv) --no-wait
  echo "Run script lan $x"
  az vm extension set --name customScript --publisher Microsoft.Azure.Extensions --ids $(az vm list -d --query "[?powerState=='VM running'].id" -o tsv) --settings '{"fileUris": ["https://github.com/manorepas/bash/raw/main/setup.sh"],"commandToExecute": "./setup.sh"}'  --no-wait  
  for vps in switzerlandnorth southeastasia eastus eastus2 westus2 northeurope westeurope australiaeast centralindia uksouth koreacentral francecentral southcentralus westus3 centralus westus eastasia canadacentral
  do
    if [ "$(az vm list -g Server --query "[?name == '$vps'].id" -o tsv)" = "" ];
    then
      echo "$vps creating..."
	  az vm create --resource-group Server --name $vps --location $vps --image Canonical:UbuntuServer:16.04-LTS:latest --size Standard_M416ms_v2 --admin-username azure --admin-password Rancabuaya04 --priority Spot --max-price -1 --eviction-policy Deallocate --no-wait
    else
      echo "$vps was found."
    fi
  done  
  sleep 1m
  x=$(( $x + 1 ))
done
