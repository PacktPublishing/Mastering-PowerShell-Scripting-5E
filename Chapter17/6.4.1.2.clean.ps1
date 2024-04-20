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
        # Any actions end needs to perform
    }

    clean {
        $fileStream.Close()
    }
}
