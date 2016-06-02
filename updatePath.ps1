### Modify system environment variable ###
[Environment]::SetEnvironmentVariable
     ( "Path", $env:Path, [System.EnvironmentVariableTarget]::Machine )

### Modify user environment variable ###
[Environment]::SetEnvironmentVariable
     ( "INCLUDE", $env:INCLUDE, [System.EnvironmentVariableTarget]::User )

### from comments ###
### Usage from comments - Add to the system environment variable ###
[Environment]::SetEnvironmentVariable("Path", $env:Path + ";L:\home\tools\phantomjs-2.1.1-windows\bin", [EnvironmentVariableTarget]::Machine)