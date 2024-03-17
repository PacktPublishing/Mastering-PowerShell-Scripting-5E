Get-Process |
    Select-Object Name, ID, WorkingSet -First 2 |
    Format-Table |
    ConvertTo-Csv

# Expects output:
# 
# “ClassId2e4f51ef21dd47e99d3c952918aff9cd”,”pageHeaderEntry”,”pageFooterEntry”,”autosizeInfo”,”shapeInfo”,”groupingEntry”
# “033ecb2bc07a4d43b5ef94ed5a35d280”,,,,”Microsoft.PowerShell.Commands.Internal.Format.TableHeaderInfo”,
# “9e210fe47d09416682b841769c78b8a3”,,,,,
# “27c87ef9bbda4f709f6b4002fa4af63c”,,,,,
# “27c87ef9bbda4f709f6b4002fa4af63c”,,,,,
# “4ec4f0187cb04f4cb6973460dfe252df”,,,,,
# “cf522b78d86c486691226b40aa69e95c”,,,,,
