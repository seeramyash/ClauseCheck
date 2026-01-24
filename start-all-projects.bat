@echo off
REM Start all three legal tech projects (backends + frontends)
REM Law Simulation (law de) + Case File Library (dummy) + AI Contract Analysis System

echo Starting all projects in separate PowerShell windows...

REM === Landing Page (Home) ===
start "Landing Page" powershell -NoExit -Command "cd 'c:\Desktop\vit-ap\landing'; python -m http.server 8080"

REM === Law Simulation (Courtroom) ===
start "LawDe Backend" powershell -NoExit -Command "cd 'c:\Desktop\vit-ap\law de\backend'; .\venv\Scripts\Activate.ps1; python -m app.main"
start "LawDe Frontend" powershell -NoExit -Command "cd 'c:\Desktop\vit-ap\law de\frontend'; npm run dev"

REM === Case File Library (dummy) ===
start "Dummy Backend" powershell -NoExit -Command "cd 'c:\Desktop\vit-ap\dummy\server'; npm start"
start "Dummy Frontend" powershell -NoExit -Command "cd 'c:\Desktop\vit-ap\dummy\client'; npm run dev -- --port 3000"

REM === AI Contract Analysis System ===
start "Contract Backend" powershell -NoExit -Command "cd 'c:\Desktop\vit-ap\ai-contract-analysis-system'; python -m uvicorn backend_main:app --reload --host 127.0.0.1 --port 8100"
start "Contract Frontend" powershell -NoExit -Command "cd 'c:\Desktop\vit-ap\ai-contract-analysis-system\frontend'; npm run dev -- --port 5175"

echo.
echo All start commands issued.
echo.
echo URLs:
echo   Home (Landing): http://localhost:8080
echo   Courtroom Simulation: http://localhost:5173
echo   Case File Library: http://localhost:3000
echo   AI Contract Analysis: http://localhost:5175
echo.
echo Use Ctrl+C in each window to stop individual servers.

