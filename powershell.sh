# create an env variable via Set-Content
Set-Content -Path env:FOO -Value "Hello World"

# read env variable
echo $env:FOO

# create an env variable via SetEnvironmentVariable (scope User)
[System.Environment]::SetEnvironmentVariable("FOO", "Hello World", [System.EnvironmentVariableTarget]::User)

# read env variable
[Environment]::GetEnvironmentVariable('FOO', 'User')

# delete variable
[System.Environment]::SetEnvironmentVariable("FOO",$null, [System.EnvironmentVariableTarget]::User)

