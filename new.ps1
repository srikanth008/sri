#gdfghgfh

echo "You are in the power shell script now..."

$SourceFilePath =$env:WORKSPACE
$FilenamePostfix = ""D:\Collections\done_normal.postman_collection.json""
$EnvironmentFile =""D:\Collections\done_env.json""

cd C:\node_modules\newman\bin

$Collectionfilepath = "$SourceFilePath\$FilenamePostfix"
$Environmentfilepath = "$SourceFilePath\$EnvironmentFile"

node newman run --disable -unicode $Collectionfilepath  -e $EnvironmentFile


exit $LASTEXITCODE
