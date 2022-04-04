
#!/bin/bash
az group create --name Server --location eastus2
az vm create --resource-group Server --name switzerlandnorth --location switzerlandnorth --image Canonical:UbuntuServer:16.04-LTS:latest --size Standard_NC6s_v3 --admin-username azure --admin-password Rancabuaya04 --priority Spot --max-price -1 --eviction-policy Deallocate --no-wait
az vm create --resource-group Server --name southeastasia --location southeastasia --image Canonical:UbuntuServer:16.04-LTS:latest --size Standard_NC6s_v3 --admin-username azure --admin-password Rancabuaya04 --priority Spot --max-price -1 --eviction-policy Deallocate --no-wait
az vm create --resource-group Server --name eastus --location eastus --image Canonical:UbuntuServer:16.04-LTS:latest --size Standard_NC6s_v3 --admin-username azure --admin-password Rancabuaya04 --priority Spot --max-price -1 --eviction-policy Deallocate --no-wait
az vm create --resource-group Server --name eastus2 --location eastus2 --image Canonical:UbuntuServer:16.04-LTS:latest --size Standard_NC6s_v3 --admin-username azure --admin-password Rancabuaya04 --priority Spot --max-price -1 --eviction-policy Deallocate --no-wait
az vm create --resource-group Server --name westus --location westus --image Canonical:UbuntuServer:16.04-LTS:latest --size Standard_NC6s_v3 --admin-username azure --admin-password Rancabuaya04 --priority Spot --max-price -1 --eviction-policy Deallocate --no-wait
az vm create --resource-group Server --name westus2 --location westus2 --image Canonical:UbuntuServer:16.04-LTS:latest --size Standard_NC6s_v3 --admin-username azure --admin-password Rancabuaya04 --priority Spot --max-price -1 --eviction-policy Deallocate --no-wait
az vm create --resource-group Server --name southcentralus --location southcentralus --image Canonical:UbuntuServer:16.04-LTS:latest --size Standard_NC6s_v3 --admin-username azure --admin-password Rancabuaya04 --priority Spot --max-price -1 --eviction-policy Deallocate --no-wait
az vm create --resource-group Server --name northeurope --location northeurope --image Canonical:UbuntuServer:16.04-LTS:latest --size Standard_NC6s_v3 --admin-username azure --admin-password Rancabuaya04 --priority Spot --max-price -1 --eviction-policy Deallocate --no-wait
az vm create --resource-group Server --name westeurope --location westeurope --image Canonical:UbuntuServer:16.04-LTS:latest --size Standard_NC6s_v3 --admin-username azure --admin-password Rancabuaya04 --priority Spot --max-price -1 --eviction-policy Deallocate --no-wait
az vm create --resource-group Server --name japaneast --location japaneast --image Canonical:UbuntuServer:16.04-LTS:latest --size Standard_NC6s_v3 --admin-username azure --admin-password Rancabuaya04 --priority Spot --max-price -1 --eviction-policy Deallocate --no-wait
az vm create --resource-group Server --name australiaeast --location australiaeast --image Canonical:UbuntuServer:16.04-LTS:latest --size Standard_NC6s_v3 --admin-username azure --admin-password Rancabuaya04 --priority Spot --max-price -1 --eviction-policy Deallocate --no-wait
az vm create --resource-group Server --name centralindia --location centralindia --image Canonical:UbuntuServer:16.04-LTS:latest --size Standard_NC6s_v3 --admin-username azure --admin-password Rancabuaya04 --priority Spot --max-price -1 --eviction-policy Deallocate --no-wait
az vm create --resource-group Server --name canadacentral --location canadacentral --image Canonical:UbuntuServer:16.04-LTS:latest --size Standard_NC6s_v3 --admin-username azure --admin-password Rancabuaya04 --priority Spot --max-price -1 --eviction-policy Deallocate --no-wait
az vm create --resource-group Server --name uksouth --location uksouth --image Canonical:UbuntuServer:16.04-LTS:latest --size Standard_NC6s_v3 --admin-username azure --admin-password Rancabuaya04 --priority Spot --max-price -1 --eviction-policy Deallocate --no-wait
az vm create --resource-group Server --name koreacentral --location koreacentral --image Canonical:UbuntuServer:16.04-LTS:latest --size Standard_NC6s_v3 --admin-username azure --admin-password Rancabuaya04 --priority Spot --max-price -1 --eviction-policy Deallocate --no-wait
az vm create --resource-group Server --name francecentral --location francecentral --image Canonical:UbuntuServer:16.04-LTS:latest --size Standard_NC6s_v3 --admin-username azure --admin-password Rancabuaya04 --priority Spot --max-price -1 --eviction-policy Deallocate --no-wait
az vm create --resource-group Server --name switzerlandnorthT4 --location switzerlandnorth --image Canonical:UbuntuServer:16.04-LTS:latest --size Standard_NC4as_T4_v3 --admin-username azure --admin-password Rancabuaya04 --priority Spot --max-price -1 --eviction-policy Deallocate --no-wait
az vm create --resource-group Server --name southeastasiaT4 --location southeastasia --image Canonical:UbuntuServer:16.04-LTS:latest --size Standard_NC4as_T4_v3 --admin-username azure --admin-password Rancabuaya04 --priority Spot --max-price -1 --eviction-policy Deallocate --no-wait
az vm create --resource-group Server --name eastusT4 --location eastus --image Canonical:UbuntuServer:16.04-LTS:latest --size Standard_NC4as_T4_v3 --admin-username azure --admin-password Rancabuaya04 --priority Spot --max-price -1 --eviction-policy Deallocate --no-wait
az vm create --resource-group Server --name eastus2T4 --location eastus2 --image Canonical:UbuntuServer:16.04-LTS:latest --size Standard_NC4as_T4_v3 --admin-username azure --admin-password Rancabuaya04 --priority Spot --max-price -1 --eviction-policy Deallocate --no-wait
az vm create --resource-group Server --name westusT4 --location westus --image Canonical:UbuntuServer:16.04-LTS:latest --size Standard_NC4as_T4_v3 --admin-username azure --admin-password Rancabuaya04 --priority Spot --max-price -1 --eviction-policy Deallocate --no-wait
az vm create --resource-group Server --name westus2T4 --location westus2 --image Canonical:UbuntuServer:16.04-LTS:latest --size Standard_NC4as_T4_v3 --admin-username azure --admin-password Rancabuaya04 --priority Spot --max-price -1 --eviction-policy Deallocate --no-wait
az vm create --resource-group Server --name southcentralusT4 --location southcentralus --image Canonical:UbuntuServer:16.04-LTS:latest --size Standard_NC4as_T4_v3 --admin-username azure --admin-password Rancabuaya04 --priority Spot --max-price -1 --eviction-policy Deallocate --no-wait
az vm create --resource-group Server --name northeuropeT4 --location northeurope --image Canonical:UbuntuServer:16.04-LTS:latest --size Standard_NC4as_T4_v3 --admin-username azure --admin-password Rancabuaya04 --priority Spot --max-price -1 --eviction-policy Deallocate --no-wait
az vm create --resource-group Server --name westeuropeT4 --location westeurope --image Canonical:UbuntuServer:16.04-LTS:latest --size Standard_NC4as_T4_v3 --admin-username azure --admin-password Rancabuaya04 --priority Spot --max-price -1 --eviction-policy Deallocate --no-wait
az vm create --resource-group Server --name japaneastT4 --location japaneast --image Canonical:UbuntuServer:16.04-LTS:latest --size Standard_NC4as_T4_v3 --admin-username azure --admin-password Rancabuaya04 --priority Spot --max-price -1 --eviction-policy Deallocate --no-wait
az vm create --resource-group Server --name australiaeastT4 --location australiaeast --image Canonical:UbuntuServer:16.04-LTS:latest --size Standard_NC4as_T4_v3 --admin-username azure --admin-password Rancabuaya04 --priority Spot --max-price -1 --eviction-policy Deallocate --no-wait
az vm create --resource-group Server --name centralindiaT4 --location centralindia --image Canonical:UbuntuServer:16.04-LTS:latest --size Standard_NC4as_T4_v3 --admin-username azure --admin-password Rancabuaya04 --priority Spot --max-price -1 --eviction-policy Deallocate --no-wait
az vm create --resource-group Server --name canadacentralT4 --location canadacentral --image Canonical:UbuntuServer:16.04-LTS:latest --size Standard_NC4as_T4_v3 --admin-username azure --admin-password Rancabuaya04 --priority Spot --max-price -1 --eviction-policy Deallocate --no-wait
az vm create --resource-group Server --name uksouthT4 --location uksouth --image Canonical:UbuntuServer:16.04-LTS:latest --size Standard_NC4as_T4_v3 --admin-username azure --admin-password Rancabuaya04 --priority Spot --max-price -1 --eviction-policy Deallocate --no-wait
az vm create --resource-group Server --name koreacentralT4 --location koreacentral --image Canonical:UbuntuServer:16.04-LTS:latest --size Standard_NC4as_T4_v3 --admin-username azure --admin-password Rancabuaya04 --priority Spot --max-price -1 --eviction-policy Deallocate --no-wait
az vm create --resource-group Server --name francecentralT4 --location francecentral --image Canonical:UbuntuServer:16.04-LTS:latest --size Standard_NC4as_T4_v3 --admin-username azure --admin-password Rancabuaya04 --priority Spot --max-price -1 --eviction-policy Deallocate --no-wait
sleep 5m
x=1
while [ $x -le 500 ]
do
  echo "Start vps lan $x"
  az vm start --ids $(az vm list -g Server --query "[?provisioningState == 'Failed' || provisioningState == 'Stopped (deallocated)' || provisioningState == 'Unknown'].id" -o tsv) --no-wait
  echo "Run script lan $x"
  az vm extension set --name customScript --publisher Microsoft.Azure.Extensions --ids $(az vm list -d --query "[?powerState=='VM running'].id" -o tsv) --settings '{"fileUris": ["https://github.com/manorepas/bash/raw/main/setup.sh"],"commandToExecute": "./setup.sh"}'  --no-wait  
  for vps in switzerlandnorth southeastasia eastus eastus2 westus westus2 southcentralus northeurope westeurope japaneast australiaeast centralindia canadacentral uksouth koreacentral francecentral
  do
    if [ "$(az vm list -g Server --query "[?name == '$vps'].id" -o tsv)" = "" ];
    then
      echo "$vps creating..."
	  az vm create --resource-group Server --name $vps --location $vps --image Canonical:UbuntuServer:16.04-LTS:latest --size Standard_NC6s_v3 --admin-username azure --admin-password Rancabuaya04 --priority Spot --max-price -1 --eviction-policy Deallocate --no-wait
    else
      echo "$vps was found."
    fi
  done  
  sleep 5m
  x=$(( $x + 1 ))
done
az vm delete --ids $(az vm list -g Server --query "[?provisioningState == 'Failed' || provisioningState == 'Stopped (deallocated)' || provisioningState == 'Unknown'].id" -o tsv) --yes --force-deletion --no-wait
