$uri = 'https://somewebservice'
do {
    $response = Invoke-WebRequest -Uri $uri
    $response.Value
    $uri = $response.Next
} while ($uri)
