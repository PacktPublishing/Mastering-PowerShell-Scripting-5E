﻿& {
    $ErrorActionPreference = 'Continue'
    Invoke-Something
    'After Invoke-Something'
}

# Expects output:
#
# Exception:
# Line |
# 3 |      Invoke-Something
#   |      ~~~~~~~~~~~~~~~~
#   | Error
# After Invoke-Something
