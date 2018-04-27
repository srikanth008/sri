#gdfghgfh

echo "You are in the power shell script now..."

$SourceFilePath =$env:WORKSPACE
$FilenamePostfix = ""D:\Collections\Colorado_PAYM_Inlife_SIT19.postman_collection.json""
$EnvironmentFile =""D:\Collections\MyEE.postman_environment.json""

cd C:\node_modules\newman\bin

$Collectionfilepath = "$SourceFilePath\$FilenamePostfix"
$Environmentfilepath = "$SourceFilePath\$EnvironmentFile"

node newman run --disable -unicode $Collectionfilepath  -e $EnvironmentFile


exit $LASTEXITCODE