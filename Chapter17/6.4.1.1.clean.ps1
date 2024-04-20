using namespace System.IO

function Invoke-Something {
    begin {
         $fileStream = [File]::OpenWrite((
            Join-Path -Path $pwd -ChildPath NewFile.txt
        ))
        $count = 0
    }
    process {
        if ((++$count) -eq 3) {
            throw 'Unexpected error'
        }
    }
    end {
        $fileStream.Close()
    }
}

1..5 | Invoke-Something
Remove-Item NewFile.txt
