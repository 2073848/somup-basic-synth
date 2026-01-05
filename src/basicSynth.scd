//s.freeAll;
// Run s.boot before evaluating this file
// --------------------------------------------------
// basicSynth SynthDef
// --------------------------------------------------
// This SynthDef creates a simple sine wave synthesiser
// with a controllable frequency parameter and a short
// percussive amplitude envelope.
//
// AI-assisted: Initial SynthDef structure and envelope
// approach were suggested by ChatGPT.
// Modifications: I added a frequency parameter and
// adjusted the envelope to ensure the synth frees itself.
// --------------------------------------------------

SynthDef(\basicSynth, { |freq = 440|
    var sig, env;

    // EnvGen generates an amplitude envelope over time
    // Env.perc creates a short percussive envelope
    // doneAction: 2 automatically frees the synth when finished
    env = EnvGen.kr(
        Env.perc(0.01, 1),
        doneAction: 2
    );

    // SinOsc generates a sine wave at the given frequency
    // The signal is scaled by the envelope and amplitude
    sig = SinOsc.ar(freq) * env * 0.2;

    // Output the signal to stereo audio output (bus 0)
    Out.ar(0, sig ! 2);
}).add;

// --------------------------------------------------
// Example usage
// --------------------------------------------------

// Play the synth at the default frequency (440 Hz)
Synth(\basicSynth);

// Play the synth at a lower pitch
Synth(\basicSynth, [\freq, 220]);

// Play the synth at a higher pitch
Synth(\basicSynth, [\freq, 880]);
