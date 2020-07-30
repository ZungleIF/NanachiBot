# NanachiBot
 A personal Discord Bot for me, using Sleepy-Discord C++ Library
 The only functions currently are just uploading some Made in Abyss pictures.
 
## How to build (On Unix)
```
git clone https://github.com/ZungleIF/NanachiBot.git
```

Install CMake
```
cd /opt
wget "https://github.com/Kitware/CMake/releases/download/v3.18.0/cmake-3.18.0.tar.gz"
sudo tar -xvzf cmake-3.18.0.tar.gz && rm cmake-3.18.0.tar.gz
cd cmake-3.18.0
./bootstrap && make && sudo make install
```
Clone sleepy-discord in NanachiBot's dir
```
cd ~/NanachiBot
git clone https://github.com/yourWaifu/sleepy-discord.git
```
Build using CMake
```
mkdir build && cd build
sudo cmake .. -G "Unix Makefiles"
sudo make
```
Now you can execute NanachiBot by `./NanachiBot`

## Current available commands
### Spawn random picture
`nanachi` `나나치` `mia` `메인어`

## **TODO:**
- Create nanachi maker
  - Something like Tamagotchi, must use database?
- Add config file
- Add voice chat function