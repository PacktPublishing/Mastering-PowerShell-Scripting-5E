& {
  $ErrorActionPreference = 'Continue'
  try {
      Invoke-Something
      'After Invoke-Something'
  } catch {
      throw
  }
}

# Expects output:
# 
# Exception:
# Line |
#    4 |          Invoke-Something
#      |          ~~~~~~~~~~~~~~~~
#      | Error
