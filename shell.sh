#!/bin/bash
echo "Add meg a neved:"
read login
echo "Add meg a jelszavad:"
read password
if[[ ($login == "Gazda" && $password == "1234")]];
then
echo "Üdvözöllek Gazdám!"
else
echo "Nem megfelelő login/jelszó!"
fi
echo "A mai dátum:"
date
echo "Ők vannak fent a hálózaton:"
w
echo "Nyitom a kedvenc weboldalad!"
clear
firefox https://www.uni-eszterhazy.hu
echo "Küldök egy email-t Ferencnek, mert még mindig nem hozta vissza a kedvenc lemezem!"

Recipient=”feri@gmail.com”
Subject=”Lemez is back”
Message=”Kedves Feri!Még mindig nem hoztad vissza a lemezem!Mellékelek egy képet is, hogy észrevedd magad!”
mail -a /temp/hozdvissza.jpg -s $Subject $Recipient <<< $Message

