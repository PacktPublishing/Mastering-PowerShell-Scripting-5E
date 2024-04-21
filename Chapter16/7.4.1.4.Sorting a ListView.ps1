function Get-SortDirection {
    param (
        [System.Windows.Controls.GridViewColumnHeader]$Header
    )

    $lastSortDirection = $ui.State['LastSortDirection']
    $lastSortedHeader = $ui.State['LastSortedHeader']

    if ($null -eq $lastSortDirection -or -not $lastSortedHeader) {
        $direction = 'Ascending'
    } elseif (
        $lastSortedHeader -and 
        $sender -ne $lastSortedHeader
    ) {
        $direction = 'Ascending'
    } else {
        # Swaps between Ascending and Descending (0 and 1)
        $direction = $lastSortDirection -bxor 1
    }
    [System.ComponentModel.ListSortDirection]$direction
}
