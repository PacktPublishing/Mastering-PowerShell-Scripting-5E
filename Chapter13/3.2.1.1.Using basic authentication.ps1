$credential = [PSCredential]::new(
    'your-github-username',
    (ConvertTo-SecureString 'xxxx' -AsPlainText -Force)
)
