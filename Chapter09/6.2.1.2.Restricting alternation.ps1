Get-ChildItem -Recurse -File |
    Where-Object Name -match '(pwd|pass(word|wd)?).*\.(txt|doc)$'  
