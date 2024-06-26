﻿class ComputerDescription {
    [ComputerDescription] Get() {
        $properties = @{}

        $key = Get-Item $this.Path
        if ($key.GetValueNames() -contains $this.valueName) {
            $properties.Ensure = 'Present'
            $properties.Description = $key.GetValue(
                $this.valueName
            )
        } else {
            $properties.Ensure = 'Absent'
        }
        return $properties
    }
}
