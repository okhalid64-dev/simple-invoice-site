$urls = @(
  'https://okhalid64-dev.github.io/simple-invoice-site/',
  'https://okhalid64-dev.github.io/simple-invoice-site/privacy.html'
)
foreach ($u in $urls) {
  try {
    $r = Invoke-WebRequest -Uri $u -UseBasicParsing -TimeoutSec 20
    Write-Output ("{0} => {1} ({2} bytes)" -f $u, $r.StatusCode, $r.Content.Length)
  } catch {
    Write-Output ("{0} => ERROR {1}" -f $u, $_.Exception.Message)
  }
}
