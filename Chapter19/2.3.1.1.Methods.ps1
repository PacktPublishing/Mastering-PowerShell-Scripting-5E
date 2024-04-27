class MyClass {
    [string]$Value = 'Hello world'
}

# Expects output:
# 
# [MyClass]::new().ToString()
