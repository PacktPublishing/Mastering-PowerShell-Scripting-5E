New-Object -TypeName PSObject -Property @{
    Username = 'username'
    Email    = 'name@domain.com'
}

# Expects output:
# 
# Email           Username
# -----           --------
# name@domain.com username
