
function Get-ChocoStatus {
    
    if (Get-Command choco.exe -ErrorAction SilentlyContinue) {
        return $true
    }
    else{return $false}
}

function Install-Choco {
    if ((Get-ChocoStatus) -eq $false)
    {
        iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

    }
    else{
        Write-Output "Choco is installed...Continuing to install listed packages"
    }

}

function Install-ChocoPackages {

    Install-Choco

    $Packages = 'kubernetes-cli','kubernetes-helm', 'vscode', 'terraform', 'azure-cli', 'git', 'tflint', 'ruby'

    ForEach ($PackageName in $Packages)
    {
        choco install $PackageName -y
    }

}

function Upgrade-ChocoPackages {
    
    $Packages = 'kubernetes-cli','kubernetes-helm', 'vscode', 'terraform', 'azure-cli', 'git', 'tflint', 'ruby'

    ForEach ($PackageName in $Packages)
    {
        choco upgrade $PackageName -y
    }

}
