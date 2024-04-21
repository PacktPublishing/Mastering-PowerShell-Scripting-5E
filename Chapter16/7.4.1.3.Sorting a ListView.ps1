$xaml = '<?xml version="1.0" encoding="utf-8"?>
<Window
 xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
 xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
 Width="350" Height="350">
    <DockPanel>
        <Button Name="Button" Content="Get-Process"
         DockPanel.Dock="Top" />
        <ListView Name="ListView">
            <ListView.View>
                <GridView />
            </ListView.View>
        </ListView>
    </DockPanel>
</Window>'
$ui = Import-Xaml $xaml -State @{
    LastSortDirection = $null
    LastSortedHeader  = $null
    Arrow             = @{
        Ascending  = [char]0x25b2
        Descending = [char]0x25bc
    }
}
