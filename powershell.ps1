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

$HOMEDRIVE = "C:\"
$HOMEPATH = "Users\" + $env:username
$env:HOME = "$HOMEDRIVE$HOMEPATH"

Set-Variable HOME "$HOMEDRIVE$HOMEPATH" -Force
(get-psprovider 'FileSystem').Home = $HOMEDRIVE + $HOMEPATH

# iex ($(lua ~\scoop\apps\z.lua\current\z.lua --init powershell) -join "`n") 
# $Env:http_proxy="http://127.0.0.1:7890";$Env:https_proxy="http://127.0.0.1:7890"
