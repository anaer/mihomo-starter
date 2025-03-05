netstat -aon | findstr "9090" > nul
if %errorlevel% equ 0 (
curl "http://127.0.0.1:9090/configs?force=true" ^
  -X "PUT" ^
  -H "Content-Type: application/json" ^
  -H "Authorization: Bearer 666999" ^
  --data-raw ^"^{^\^"path^\^": ^\^"^\^", ^\^"payload^\^": ^\^"^\^"^}^"

  echo "UPDATE CONFIG SUCCESS"
)
