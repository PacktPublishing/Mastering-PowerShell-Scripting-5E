using namespace System.Management.Automation.Runspaces

function Import-Xaml {
    param (
        [Xml]$Xaml,

        [Hashtable]$State
    )
    Add-Type -AssemblyName PresentationFramework
    $window = [System.Windows.Markup.XamlReader]::Load(
        [System.Xml.XmlNodeReader]$Xaml
    )
    $controls = [Hashtable]::Synchronized(@{
        Dispatcher = $window.Dispatcher
    })
    foreach ($control in $Xaml.SelectNodes('//*[@Name]')) {
        $controls[$control.Name] = $window.FindName($control.Name)
    }
    $initialSessionState = [InitialSessionState]::CreateDefault2()
    $initialSessionState.Variables.Add(
        [SessionStateVariableEntry]::new(
            'ui',
            [PSCustomObject]@{ Controls = $controls },
            'UI controls'
        )
    )
    [PSCustomObject]@{
        MainWindow = $Window
        Controls   = $controls
        State      = @{}
        PSHost     = [PowerShell]::Create($initialSessionState)
    }
}
