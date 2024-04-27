class MyClass {
    [string] $Value = 'Hello world'

    [string] ToString() { 
        return '{0} on {1}' -f @(
            $this.Value
            (Get-Date).ToShortDateString()
        )
    }

    [string] ToString(
        [string] $dateFormat
    ) {
        return '{0} on {1}' -f @(
            $this.Value
            Get-Date -Format $dateformat
        )
    }
}
