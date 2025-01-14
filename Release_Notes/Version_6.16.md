<!---

To maintain this document use the following markdown:

# First level heading
## Second level heading
### Third level heading

- First level bullet point
  - Second level bullet point
    - Third level bullet point

`inline code`

``` pre-formatted text etc.  ```

[hyperlink](url for the hyperlink)

Any valid HTML can also be used.

 --->

# CSOUND VERSION 6.16 RELEASE NOTES - DRAFT - DRAFT - DRAFT - DRAFT 

This is mainly a bug fixing release but there are new opcodes, including
support for simpler use of MIDI controls and a new opcode to connect
to an Arduino.  Also there is an optional limiter in the sound output chain.

-- The Developers

## USER-LEVEL CHANGES

### New opcodes

- cntDelete deletes a counter object

- lfsr, a linear feedback shift register opcode for psuedo random
  number generation.

- ctrlsave stores the currrent values of MIDI controllers in an array.

- turnoff3 extends tuning off to remove instrument instances that are
  queued via scheduling but not yet active.

- ctrlprint prints the result of a ctrlsave call in a form that can be
  used in an orchestra.

- ctrlprintpresets prints the MIDI controller preset.

- ctrlselect selects a preset for MIDI controller values.

- ctrlpreset defines a preset for MIDI controllers.

- outall writes a signal to all output channels.

- scale2 is similar to scale but has different argument order and has
  an optional port filter.

- aduinoReadF extends the arduino family to transfer floating point
  values.

- triglinseg and trigexpseg are triggered versions of linseg and
  expseg

- vclpf is a 4-pole resonant lowpass linear filter based on a typical
analogue filter configuration.

- spf is a second-order multimode filter based on the Steiner-Parker
configuration with separate lowpass, highpass, and bandpass inputs
and a single output.

- skf is a second-order lowpass or highpass filter based on a
linear model of the Sallen-Key analogue filter.

- svn is a non-linear state variable filter with overdrive control
and optional user-defined non-linear map.

- autocorr computes the autocorrelation of a sequence stored in an array.

- turnoff2_i is init-time version of turnoff2.

- scanu2 is a revision of scanu to make it closer to the original
  concept.  Damping now a positive value and plucking initialisation
  totally rewritten, plus various code improvements.

- st2ms and ms2st are stereo to MS and vice-versa conversion opcodes
with stereo width control.

### Orchestra

- The operations += and -= now work for i and k arrays. 

-  k-rate array operators are now only processed at k-rate.
    
### Score

- An instance of a named instrument can have a decimal fraction added
  to the name to allow for tied notes and other facilities that were
  only avaiable for numbered instruments.

### Options

- New options --limiter and --limiter=num (where num is in range (0,1]
inserts a tanh limiter (see clip version2) at the end of each k-cycle.
This can be used when exerimenting or trying some alien inputs to save
your ears or speakers.  The default value in the first form is 0.5

- A typing error meant that the tag <CsShortLicense> was not recognised,
although the English spelling (CsSortLicence) was.  Corrected.

- New option --default-ksmps=num changes the fafault valuefron the
internal fixed number.

- New environment variable `CS_USER_PLUGINDIR` has been added to
indicate a user plugin dir path (in addition to the system plugin
directory). This added search path defaults to standard locations
on different platforms (documented in the manual).


### Modified Opcodes and Gens

- slicearray_i now works for string arrays.

- OSCsend aways runs on the first call regardless of the value of kwhen.

- pvadd can access the internal ftable -1.

- pan2 efficiency improved in many cases.

- add version of pow for the case kout[] = kx ^ ivalues[]

- expcurve and logcurve now incorporate range checks and corrects end
  values.
  
- streaming lpc opcodes have had a major improvement in performance
  (>10x speedup for some cases), due to a new autocorrelation routine.

- restriction on size of directory name size in ftsamplebank removed.

- if a non string is passed to sprintf t be formatted as a %s an error
  is signalled.

- readk family of opcodes now support comments in the input whix is inored.

- Added iflag parameter to sflooper.

### Utilities


### Frontends


### General Usage

- Csound no longer supports Python2 opcodes following end of life.

## Bugs Fixed

- the wterrain2 opcode was not correctly compiled on some platforms.

- fprintks opcode crashed when format contains one %s.

- bug in rtjack when number of outputs differed from the number in
  inputs.

- FLsetVal now works properly with "inverted range" FLsliders.

- conditional expressiond with a-rate output now work corrctly.

- bug in --opcode-dir option fixed.

- sfpassign failed to remember the number of presets causng
  confusion.  This also affects sfplay ad sfinstrplay.

- midiarp opcode fixed (issue 1365)

- a bug in moogladder where the value of 0dbfs affected the outout is
  now fixed.
 
- bugs in several filters where istor was defaulting to 1 instead of 0
  as described in the manual have been fixed.

- bug in assigning numbers to named instruments fixed.  This
  articularly affected dynamic definitions of instruments.

- use of %s format in sprintf crashed if the corresponding item was not a
  string.  Thus now gives an error.

- fix bug in ftprint where trigger was not working as advertised.

- aynchronous use of diskin2 fixed.

- pvs2tab does not crash in the sliding case but gives a error.

- in some circumstances turnoff2 could cause the silencing of another
  instrument for one k-cycle. This is now fixed.

- timeinstk behaved diferently in a UDO to normal use.  This has been
  corrected.

- Fixed midiarp init method as it was causing an issue with one of the arp modes.

- Fixed scaling of attack stage of xadsr.

- Fix printarray behaviour for string arrays (default is to print at
  every cycle); added a variant without trigger.

- Bug with named instrument merging in new compilations fixed.


# SYSTEM LEVEL CHANGES


### System Changes

 - new autocorrelation routine can compute in the frequency or
in the time domain. Thanks to Patrick Ropohl for the improvement
suggestion.

- Minimum cmake version bumped to 3.5.

-  Image opcodes removed, now in plugin repo

- faust opcodes removed, now in plugin repo

- Python opcodes are now in plugin repo

- Ableton Link opcodes moved to plugins repo


### Translations

### API


### Platform Specific

- WebAudio: 
 
- iOS

- Android

- Windows

- MacOS

- GNU/Linux

- Haiku port

- Bela

==END==
    



