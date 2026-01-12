@echo off
echo === Fixing Vite project structure ===

if exist index (
  ren index index.html
  echo index -> index.html OK
)

if exist package (
  ren package package.json
  echo package -> package.json OK
)

if exist vercel (
  ren vercel vercel.json
  echo vercel -> vercel.json OK
)

echo.
echo === DONE ===
dir
pause
