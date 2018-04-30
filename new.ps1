  

echo "You are in the power shell script now..."

$SourceFilePath =$env:WORKSPACE
$FilenamePostfix = "*.postman_collection.json"
$EnvironmentFile ="done_env.json"

$JsonFiles =Get-ChildItem -Path $SourcefilePath -name -Filter $FilenamePostfix | Sort-Object -Property CreationTime -Descending



cd C:\npm\node_modules\newman\bin


foreach($File in $JsonFiles)
{
$Collectionfilepath = "$SourceFilePath\$File"
$Environmentfilepath = "$SourceFilePath\$EnvironmentFile"
cd newman run --disable -unicode $Collectionfilepath  -e $Environmentfilepath

}

exit $LASTEXITCODE
