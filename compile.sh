npm install -g mustache > ~/workspace/output/log.txt;
rm ~/workspace/output/log.txt
echo
echo
echo
echo Installed.
echo
echo
echo
if [ -d ~/workspace/output ]; then
    echo . > ~/workspace/output/log2.txt
    rm ~/workspace/output/log2.txt
else
    mkdir ~/workspace/output
fi
if [ -f ~/workspace/npm-debug.log ]; then
    rm ~/workspace/npm-debug.log
    echo Removed log.
    echo
    echo
    echo
fi
mustache ~/workspace/template.json ~/workspace/index.html > ~/workspace/output/index.html
echo Compiled.
echo
echo
echo