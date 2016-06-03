function updatePath {
param (
	[string] $pathToAdd
)
	### Modify system environment variable ###
	[Environment]::SetEnvironmentVariable
	     ( "Path", $env:Path, [System.EnvironmentVariableTarget]::Machine )
	
	### Modify user environment variable ###
	[Environment]::SetEnvironmentVariable
	     ( "INCLUDE", $env:INCLUDE, [System.EnvironmentVariableTarget]::User )
	
	### Usage from comments - Add to the system environment variable ###
	[Environment]::SetEnvironmentVariable("Path", $env:Path + ";" + $pathToAdd, [EnvironmentVariableTarget]::Machine)
}

updatePath $input