class ComputerDescription {
    [bool] Test() {
        $key = Get-Item $this.Path
        if ($this.Ensure -eq 'Present') {
            if (
                $key.GetValueNames() -notcontains $this.valueName
            ) {
                return $false
            }
            return $key.GetValue($this.valueName) -eq
                $this.Description
        } else {
            return $key.GetValueNames() -notcontains
                $this.valueName
        }
        return $true
    }
}
