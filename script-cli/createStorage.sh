export STORAGENAME=medicalrecords$RANDOM

az storage account create \
    --name $STORAGENAME \
    --access-tier hot \
    --kind StorageV2 \
    --resource-group LAB-STO

az storage container create \
    --name patient-images \
    --account-name $STORAGENAME \
    --public-access off