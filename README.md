 # Azure-Storage-and-Container-Creation

This setup provisions an Azure Resource Group, Storage Account, and Container to enable Velero backups for AKS/RKE clusters.

 The Storage Account - is used to hold the backup data for disaster recovery purposes. Backup data is stored in a Container within the Storage Account. 
 
 The Resource Group - is used to manage the Storage Account and Container, and to enable access control and permissions management. 
 
 Velero - is a tool that can be used to take backups and snapshots of Kubernetes clusters, including persistent volumes. When configured with the Azure Resource Group, Storage Account, and Container, Velero is able to automatically take and store backups and snapshots of AKS/RKE clusters, ensuring that valuable data is preserved and can be restored in the event of a disaster.

Step: 

1. Before creating the Azure resources, you must a assign "sp-azure_storage_and_container" Service Principle to the Subscription that you are planning to use. If you have already completed this step, you can move on to step 2 without any further action. 
2. Access the Azure-Storage-and-Container-Creation repo. 
3. Click on azure.auto.tfvars. 
4. Add the following content to the following 
 
 Subscription ID:
 Resource Group:
 Storage Account:
 Location: (Must be the same as subscription)
 Tier: 

 5. Once completed, push to the repo. 

 


