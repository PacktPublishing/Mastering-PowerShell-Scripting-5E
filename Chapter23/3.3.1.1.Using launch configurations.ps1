{
    "version": "0.2.0",
    "configurations": [
        {
            "name": "PowerShell: Launch Current File",
            "type": "PowerShell",
            "request": "launch",
            "script": "${file}",
            "cwd": "${file}"
        },
        {
            "name": "PowerShell: Launch with arguments",
            "type": "PowerShell",
            "request": "launch",
            "script": "${file}",
            "cwd": "${file}",
            "args": [
                "-Name pwsh"
            ]
        }
    ]
}
