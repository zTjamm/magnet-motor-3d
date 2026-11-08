# Ручной деплой, если GitHub Actions недоступен.
# Использует локальный root-ключ (тот же, что для ssh root@89.125.54.41).
$ErrorActionPreference = "Stop"

$server = "89.125.54.41"
$target = "/var/www/magnet/"

scp "$PSScriptRoot\..\index.html" "root@${server}:${target}"
ssh "root@${server}" "chown deploy:deploy /var/www/magnet/index.html && chmod 644 /var/www/magnet/index.html"

Write-Host "Готово: https://mypoddomenjm.mooo.com/magnet/"
