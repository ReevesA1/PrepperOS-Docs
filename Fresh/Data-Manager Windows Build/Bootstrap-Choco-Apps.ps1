#! Choco Apps (Must run as Admin)

function AdminCheck {
  if ($IsWindows) {
    if (-NOT ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) {
      Write-Host -ForegroundColor Cyan "This function requires administrator privileges."
    }
  }
  elseif ($IsMacOS) {
    if ([System.Environment]::UserName -ne "root") {
      Write-Host -ForegroundColor Cyan "This function requires root privileges."
    }
  }
  elseif ($IsLinux) {
    if ([System.Environment]::UserName -ne "root") {
      Write-Host -ForegroundColor Cyan "This function requires root privileges."
    }
  }
}
AdminCheck


# Privacy
choco install protonvpn
choco install simplex
choco install 7zip