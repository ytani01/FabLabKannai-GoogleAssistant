# FabLab-GoogleAssistant
Google Assistant demo program 

## Description
Google Assistant SDKのデモの改良版

## Apply patches

```bash
$ patch -b fablab-google-assistant.py < fablab-google-assistant-1.patch
$ patch -b fablab-google-assistant.py < fablab-google-assistant-2.patch
$ patch -b fablab-google-assistant.py < fablab-google-assistant-3.patch
```

## Usage

### 1. Prepare
#### 1.1 Download

```bash
$ cd
$ git clone https://github.com/ytani01/FabLab-GoogleAssistant.git
$ cd FabLab-GoogleAssistant
$ cp *.patch ~/env/bin
$ cp -r sound ~
```

#### 1.2 Execute original demo program

```bash
$ cd ~/env/lib/python3.5/site-packages/google/assistant
$ cp __main__.py ~/env/bin/fablab-google-assistant.py
$ . ~/env/bin/activate
$ fablab-google-assistant.py
```
Say "Hey, Google. How are you?"

```bash
$ deactivate
```

### 2. Lesson
#### 2.1 Play ack sounds

```bash
$ cd ~/env/bin
$ cp fablab-google-assistant.py fablab-google-assistant-0.py
$ patch -b fablab-google-assistant.py < fablab-google-assistant-1.patch
$ source ~/env/bin/activate
$ fablab-google-assistant.py
```
Say "Hey, Google. How are you?"

#### 2.2 Turn on/off LED

```bash
$ cd ~/env/bin
$ cp fablab-google-assistant.py fablab-google-assistant-1.py
$ patch -b fablab-google-assistant.py < fablab-google-assistant-2.patch

$ fablab-google-assistant.py
```
Say "Hey, Google. Turn on light."  
Say "Hey, Google. Turn off light."

#### 2.3 Push button

```bash
$ cd ~/env/bin
$ cp fablab-google-assistant.py fablab-google-assistant-2.py
$ patch -b fablab-google-assistant.py < fablab-google-assistant-3.patch

$ fablab-google-assistant.py
```
Push Button  
Say "Turn on light."

Push Button  
Say "Turn off light."

