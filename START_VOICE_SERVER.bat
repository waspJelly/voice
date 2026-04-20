@echo off
echo ========================================================
echo   Voice Input Server v2.0 for Claude Desktop
echo   faster-whisper + noise filtering + emotion detection
echo ========================================================
echo Starting server on http://localhost:5123
echo Leave this window open while using voice mode.
echo Press Ctrl+C to stop.
echo.
py -3 "%~dp0voice_server.py"
pause
