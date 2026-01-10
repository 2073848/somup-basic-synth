# SOMUP Basic Synth

## Description
This project is a simple sine wave synthesiser created in SuperCollider
for the Sound and Music Programming module. The aim was to demonstrate
basic sound synthesis concepts using a minimal and clear design.

## How to Run
1. Open SuperCollider
2. Boot the audio server using `s.boot`
3. Evaluate the SynthDef code in `basicSynth.scd`
4. Run the example `Synth` commands at the bottom of the file

## Features
- Sine wave oscillator using `SinOsc`
- Controllable frequency parameter
- Percussive amplitude envelope using `EnvGen`
- Automatic synth cleanup using `doneAction: 2`
- Stereo output

## AI Usage
AI tools (ChatGPT) were used to assist with understanding SuperCollider
syntax, SynthDef structure, and envelope usage. All code was tested,
modified, and annotated by the author.
