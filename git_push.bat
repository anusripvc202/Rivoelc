@echo off
echo ===================================================
echo RIVOELC - Git Commit and Push Helper
echo ===================================================
echo.
echo [1/4] Checking git status...
git status
echo.
echo [2/4] Staging all files...
git add -A
echo.
echo [3/4] Committing changes...
git commit -m "Fix curriculum list spacing, typos, and scroll-to-top layout alignment"
echo.
echo [4/4] Pushing to remote repository...
git push
echo.
echo ===================================================
echo Git execution finished! Please check above output.
echo ===================================================
pause
