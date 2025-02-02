param (
    [string]$url
)

$req = [System.Net.WebRequest]::Create($url)
$resp = $req.GetResponse()
$reqstream = $resp.GetResponseStream()
$stream = new-object System.IO.StreamReader $reqstream
$result = $stream.ReadToEnd()
