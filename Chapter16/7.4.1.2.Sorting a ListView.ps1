function Import-Xaml {
    [CmdletBinding()]
    param (
        [Xml]$Xaml,

        [Hashtable]$State = @{}
    )
    
    Add-Type -AssemblyName PresentationFramework
    $window = [System.Windows.Markup.XamlReader]::Load(
        [System.Xml.XmlNodeReader]$Xaml
    )
    $controls = @{}
    foreach ($control in $Xaml.SelectNodes('//*[@Name]')) {
        $controls[$control.Name] = $window.FindName($control.Name)
    }
    [PSCustomObject]@{
        MainWindow = $Window
        Controls   = $controls
        State      = $State
    }
}
