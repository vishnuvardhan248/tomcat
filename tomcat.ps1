 #Tomcat commands
Set-Variable -Name tomcat_path -Value "C:\path\to\apache-tomcat\bin\" -Scope global -Force

function start-tomcat {
    $return_to = Get-Location
    set-location -Path $tomcat_path
    start-process .\startup.bat
    Set-Location $return_to
}

function stop-tomcat {
    $return_to = Get-Location
    set-location -Path $tomcat_path
    start-process .\shutdown.bat
    Set-Location $return_to
}
