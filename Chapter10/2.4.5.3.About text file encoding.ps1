Set-Content file.txt ('Hello World {0}' -f
    [System.Text.Encoding]::UTF8.GetString((0xe2, 0x98, 0xba))
)
