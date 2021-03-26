$InstallDirName = "PoshDirTitle"
cd $PSScriptRoot/..
# ni -Path $PSHome -ItemType "Directory" -Value $InstallDirName
cpi -Recurse -Path . -Destination $PSHome/$InstallDirName
write "Done."
