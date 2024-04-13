using namespace System.Net

[ServicePointManager]::SecurityProtocol = [ServicePointManager]::SecurityProtocol -bor 'Tls12' -bor 'Tls13'
