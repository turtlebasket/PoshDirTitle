function Set-DirTitle {
	$host.ui.RawUI.WindowTitle = $env:USERNAME + ": " + (Get-Item .).Name
}

function Set-DirTitleFullPath {
	$host.ui.RawUI.WindowTitle = $env:USERNAME + ": " + (Get-Item .).FullName
}

function Set-DirTitleFullUserFullPath {
	$host.ui.RawUI.WindowTitle = $env:USERNAME + "@" + $env:COMPUTERNAME + ": " + (Get-Item .).FullName
}

$ExecutionContext.SessionState.InvokeCommand.LocationChangedAction = {
	Set-DirTitle
}

Set-DirTitle
