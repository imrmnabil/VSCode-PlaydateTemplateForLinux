<img src="https://media.giphy.com/media/QhNgpDotBASjWj7asJ/giphy.gif" width="800" height="480" />

# Installation:

0. **Make Executable** 
   
   `Build and Run (Simulator).sh`  by opening this folder in terminal then type
   
   ```bash
   chmod -x "Build and Run (Simulator).sh"
   ```

1. **Add Environment Variable** 
   
   First backup .bash_profile by executing in terminal:
   
   ```bash
   cp ~/.bash_profile ~/.bash_profile.bak
   ```
   
   Open `~/.bash_profile` in a text editor and add these lines with proper `SDK path` the end (if not previously added)
   
   ```bash
   export PLAYDATE_SDK_PATH="<path to PlaydateSDK>"
   #for example export PLAYDATE_SDK_PATH="/home/robin/.PlaydateSDK/PlaydateSDK-1.12.3"
   
   export PATH="$PATH:<path to bin folder in PlaydateSDK>"
   #for example export PLAYDATE_SDK_PATH="/home/robin/.PlaydateSDK/PlaydateSDK-1.12.3/bin"
   ```
   
   

2. Open template folder with VSCode, **install recomended extensions** (popup will show in the lower right corner): `Lua`, `Lua Plus`. Then restart VSCode.  

3. If you want to change "build and run" key (default is Ctrl+Shift+B):  
   
   * **Ctrl + K, Ctrl + S**  
   * Change keybind for `Tasks: Run Build Task` (I've changed to **F5**)  

4. Your can find your `main.lua` file inside `source` folder. Press your "Run Build Task" button, you should see "Template" text in playdate simulator.  

5. Feel free to delete `dvd.lua` and all dvd-related lines from `main.lua` (marked `-- DEMOO`)
