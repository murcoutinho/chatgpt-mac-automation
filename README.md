# Introduction
This project contains some python scripts I developed to create my own personal assistant using chatGPT. The python scripts may be used on any operational system. However, the workflows are only useful on macOS.

# Configuration

### Installing dependencies
- First, [install homebrew](https://brew.sh/).
- Install python3, with openai, pyaudio and pynput packages:

```bash
brew install python3
pip3 install openai
pip3 install pyaudio
pip3 install pynput
```

### Create your OpenAI API-KEY
[You can create your api-key here](https://platform.openai.com/account/api-keys), by clicking on "create new secret key".
Note that you need to have [funds](https://platform.openai.com/account/billing/overview) to use the API successfully. 

### Additional configuration
- Clone this repository and access the folder. Then execute the following commands:
- `./rename-in-files.sh your-api-key`: replace `your-api-key` by your openai key created in previous section. This command will add your path to automator workflows and you API key to the python clients. 

# Install automator workflows
For each workflow contained in this project, **double click** on the file and **install** the quick action. The workflows are:
- `audio-to-gpt.workflow`: With this workflow you can record an audio that will be translated to a chatGPT result.
- `audio-to-text.workflow`: With this workflow you can record an audio that will be translated into text.
- `text-to-gpt.workflow`: With this workflow you can query chatGPT with text.

# Create a shortcut
- Open Preferences > Keyboard > Keyboard shortcuts.
- On the left, click on services.
- Somewhere you will find the name of the automator files, generally under Text. If you don't find the files you may need to restart your machine.
- Now click on the right to create the shortcut you want. Be careful not to overwrite existing shortcuts. Some viable shortcuts that you may use are: (cmd+option+G, cmd+shift+G, cmd+option+J, cmd+shift+J).

# Setting permissions
These permissions are only required to audio based workflows. If you only plan to use `text-to-gpt.workflow`, you may skip this section.
- Go to Preferences > Privacy & Security > Accessibility ![image](https://user-images.githubusercontent.com/13295110/225405293-923ab92e-90af-4d94-987a-ed136f31fb55.png)
- On "allow applications bellow to control your computer", turn Automator on,

# How to use it
- `text-to-gpt.workflow`: on any text editor such as ([Sublime](https://www.sublimetext.com/), [VScode](https://code.visualstudio.com/), etc) do the following:
	- Write your question.
	- Select the text of the question.
	- Use the shortcut the you defined for this workflow.
	- Wait for the sound announcing that an answer was received (you may continue to do other stuff while you wait).
	- Use ctrl + V to paste the result anywhere you want.
- `audio-to-text.workflow` or `audio-to-gpt.workflow`: at any time do the following:
	- Use the shortcut you define for any of these workflows.
	- Speak.
	- Press the space key when you finish.
	- Wait for the sound announcing that an answer was received (you may continue to do other stuff while you wait).
	- Use ctrl + V to paste the result anywhere you want.

# Scripts
We have three scripts in this project. If you are using the workflows, the scripts are not necessary. But if you want to use them via command line or other tools, here is some documentation:
- gpt-script.py: receives a string as input and uses the string to query chatGPT. The answer will be printed on the screen. Example:
`python3 gpt-script.py "Give me a random cooking recipe!"`
- gpt-from-audio.py: TODO
- there is also a `play.sh` script that rings a bell when called.

# Caution: a common problem to fix
Depending on the configuration of your machine the python interpreter you are using via shell may be different than the one called by automator. If you have some problems trying to use the tool, you may try the following:
- Open the dependencies.workflow file (you don't need to install, just open).
- Click run. 
<img width="500" alt="image" src="https://user-images.githubusercontent.com/13295110/225403946-6627b2c5-ad7a-4fed-843a-2fa51b47f17e.png">
Try to use the tool again.
