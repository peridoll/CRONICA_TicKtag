@echo on
git add -A
git diff --cached --binary > patch.diff
pause