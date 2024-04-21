$headerClickHandler = {
    param ( $sender, $eventArgs )

    $lastSortedHeader = $ui.State['LastSortedHeader']

    $direction = Get-SortDirection -Header $sender

    # Update the last sorted values.
    $ui.State['LastSortedHeader'] = $sender
    $ui.State['LastSortDirection'] = $direction

    $indicator = $ui.State['Arrow'][$direction.ToString()]

    if ($lastSortedHeader) {
        $lastSortedHeader.Content = $lastSortedHeader.Name
    }
    $sender.Content = '{0} {1}' -f [char]$indicator, $sender.Name

    Set-SortDirection -SortBy $sender.Name -Direction $Direction
}
