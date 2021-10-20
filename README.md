# BGR_sky130
This github repository is for the design of a Band Gap Reference Circuit (BGR) using Google-skywater130 PDK.

## Introduction to BGR
The Bandgap Reference (BGR) is a circuit which provides a stable voltage output which is independent of factors like temperature, supply voltage. 
<p align="center">
  <img width="500" height="300" src="/Images/BGR1.png">
</p>


### Why BGR 
- A battery is unsuitable for use as a reference voltage source.
  - voltage drops over time
- A typical power supply is also not suitable 
  - noisy output and/or residual ripple.
- A voltage reference IC used buried Zener diode, 
  - Discrete design required additional components and high frequency filtering circuits due to higher thermal noise.
  - Low voltage Zener  diode is not available

**Solution**
- A Bangap reference which can be integrated in bulk CMOS, Bi-CMOS or Bipolar technologies without the use of  external components.

### Features of BGR
- Temp. independent voltage reference circuit widely used in Integrated Circuits
- Produces constant voltage regardless of power supply variation, temp. Changes and circuit loading
- Output voltage of 1.2v (close to the band gap energy of silicon at 0 deg kelvin)
- All applications starting from analog, digital, mixed mode, RF and system-on-chip (SoC).

### Applications of BGR
- Low dropout regulators (LDO)
- DC-to-DC buck converters
- Analog-to-Digital Converter (ADC)
- Digital-to-Analog Converter (DAC)



## Contents
- [Tool and PDK Setup](#Tools-and-PDK-setup)





## Tools and PDK setup
