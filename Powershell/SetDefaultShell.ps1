Set-ItemProperty "HKLM:\Software\Microsoft\Powershell\1\ShellIds" -Name ConsolePrompting -Value $true

New-ItemProperty -Path "HKLM:\SOFTWARE\OpenSSH" -Name DefaultShell `
  -Value "C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe" -PropertyType String -Force

  Restart-Service sshd

