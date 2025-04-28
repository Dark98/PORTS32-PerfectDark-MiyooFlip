#!/bin/bash
export HOME="$(cd "$(dirname "$0")" && pwd)/Perfect-Dark"
GAMEDIR="$(cd "$(dirname "$0")" && pwd)/Perfect-Dark"

#Uncomment to make buttons match the Flips(A = A For Example)
#export SDL_GAMECONTROLLERCONFIG="030000005e0400008e02000014010000,X360 Controller,a:b1,b:b0,back:b6,dpdown:h0.4,dpleft:h0.8,dpright:h0.2,dpup:h0.1,guide:b8,leftshoulder:b4,leftstick:b9,lefttrigger:a2,leftx:a0,lefty:a1,rightshoulder:b5,rightstick:b10,righttrigger:a5,rightx:a3,righty:a4,start:b7,x:b3,y:b2,platform:Linux,"

cd "$GAMEDIR"

./gptokeyb -k "pd.elf" -c "$GAMEDIR/pd.gptk" &
./pd.elf --rom-file $GAMEDIR/rom/pd.ntsc-final.z64 --basedir $GAMEDIR --savedir $GAMEDIR 2>&1 | tee $GAMEDIR/log.txt
