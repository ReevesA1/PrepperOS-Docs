# List of Winget applications to install
$apps = @(
		"Microsoft.PowerShell ",
	  "AppWork.JDownloader",
    "Mozilla.Firefox",
    "Python.Python.3.11",
    "marktext",
    "Microsoft.VisualStudioCode",
    "Microsoft.PowerToys",
    "Nvidia.GeForceExperience",
    "DevToys-app.DevToys",
    "VideoLAN.VLC",
    "Notion.Notion",
    "LocalSend.LocalSend",
    "charmbracelet.gum",
    "Git.Git",
    "GitHub.cli",
    "Docker.DockerDesktop"
)

# Loop through each app and install it
foreach ($app in $apps) {
    if ($app -eq "marktext" -or $app -eq "charmbracelet.gum" -or $app -eq "DevToys-app.DevToys") {
        winget install $app --accept-package-agreements --accept-source-agreements
    } else {
        winget install -e --id $app --accept-package-agreements --accept-source-agreements
    }
}