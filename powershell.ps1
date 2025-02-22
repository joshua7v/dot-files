Set-PSReadLineOption -EditMode Emacs

Import-Module PSReadLine
Set-PSReadLineOption -PredictionSource History

# Invokes a Cmd.exe shell script and updates the environment.
function Invoke-CmdScript {
  param(
    [String] $scriptName
  )
  $cmdLine = """$scriptName"" $args & set"
  & $Env:SystemRoot\system32\cmd.exe /c $cmdLine |
  select-string '^([^=]*)=(.*)$' | foreach-object {
    $varName = $_.Matches[0].Groups[1].Value
    $varValue = $_.Matches[0].Groups[2].Value
    set-item Env:$varName $varValue
  }
} 

function vcvars {
  param()
  Invoke-CmdScript "C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Auxiliary\Build\vcvars64.bat"
} 

function prompt {
   $p = $executionContext.SessionState.Path.CurrentLocation
   $osc7 = ""
   if ($p.Provider.Name -eq "FileSystem") {
      $ansi_escape = [char]27
      $provider_path = $p.ProviderPath -Replace "\\", "/"
      $osc7 = "$ansi_escape]7;file://${env:COMPUTERNAME}/${provider_path}${ansi_escape}\"
   }
   "${osc7}PS $p$('>' * ($nestedPromptLevel + 1)) ";
}

# it's a default alias for Get-History cmdlet
Remove-Alias history

# Usage: history      - just print the history, same as call Get-History
# Usage: history -c   - really clears the history
function history {
    param (
        # Clears history
        [Parameter()]
        [Alias("c")]
        [Switch]
        $Clear
    )

    if ($Clear){
        Clear-History
        [Microsoft.PowerShell.PSConsoleReadLine]::ClearHistory()
        return
    }

    Get-History
}

$env:TERM='xterm-256color'
$HOMEDRIVE = "C:\"
$HOMEPATH = "Users\" + $env:username
$env:HOME = "$HOMEDRIVE$HOMEPATH"
# $env:EDITOR = "nvim"
# file.exe path for yazi
$env:YAZI_FILE_ONE = $env:HOME + "\scoop\apps\git\current\usr\bin\file.exe"
$env:PATH += ";$HOMEDRIVE$HOMEPATH\scoop\apps\git\current\usr\bin"

function Set-Proxy {
    $env:http_proxy = "http://127.0.0.1:7890"
    $env:https_proxy = "http://127.0.0.1:7890"
}

function Unset-Proxy {
    Remove-Item Env:http_proxy -ErrorAction SilentlyContinue
    Remove-Item Env:https_proxy -ErrorAction SilentlyContinue
}

function Invoke-Eza {
  param (
      [Parameter(ValueFromRemainingArguments = $true)]
      [string[]]$Args
  )
  eza -l @Args
}

Set-Alias f floaterm
Set-Alias px Set-Proxy
Set-Alias pc Unset-Proxy
Set-Alias ls Invoke-Eza

# Set and force overwrite of the $HOME variable
Set-Variable HOME "$HOMEDRIVE$HOMEPATH" -Force

# Set the "~" shortcut value for the FileSystem provider
(get-psprovider 'FileSystem').Home = $HOMEDRIVE + $HOMEPATH

# iex ($(lua ~\scoop\apps\z.lua\current\z.lua --init powershell) -join "`n") 
# $Env:http_proxy="http://127.0.0.1:7890";$Env:https_proxy="http://127.0.0.1:7890"

$PSStyle.FileInfo.Directory = "`e[34;1m"

# zoxide
Invoke-Expression (& { (zoxide init powershell | Out-String) })

# user env
Get-Content "$HOMEDRIVE$HOMEPATH\.env" | foreach {
  $name, $value = $_.split('=')
  if ([string]::IsNullOrWhiteSpace($name) || $name.Contains('#')) {
    continue
  }
  Set-Content env:\$name $value
}
