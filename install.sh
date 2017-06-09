#!/usr/bin/env bash
printf "Removing existing configs..."
rm ~/.bashrc
rm -rf ~/.scripts
rm -rf ~/.i3
echo "OK!"

printf "Copying configs..."
cp .bashrc ~/
cp -r .scripts ~/
cp -r .i3 ~/
cp -r .local ~/
echo "OK!"

if [ -e "$HOME/.basic_installed" ]; then
    echo "Skipping basic installation."
else
    printf "Running basic installation..."
    ./basic_install.sh && touch $HOME/.basic_installed
    echo "OK!"
fi

echo ""
echo "Please select your device:"
cd device-specific
select d in *; do test -n "$d" && break; echo ">>> Invalid Selection"; done

echo ""
printf "Copying..."
cp -ra "$(pwd)/$d/." ~/
echo "OK!"

printf "Restarting i3..."
i3-msg restart
echo "OK!"
