# motor_shield_w_enc

## Purpose

Some time ago, I bought the STEVAL-EDUKIT01 rotary inverted pendulum kit. This is a really sweet setup for tinkering with nonlinear control, but I haven't seen where the software is provided. The original developers that created the kit were in academia so they have access to Matlab licenses. We hobbyists need to work with R, Python, scilab and octave. 

Fundamental goal is to get the thing to swing up and stabilize.

I made this repo primarily to allow me to get back to a known working state. Usually I copy a folder and add some notes but CubeIDE doesn't seem to like copied folders. 

Another possible benefit is maybe others will fork and fix it.

## Differences from STM Firmware

Original kit used some different pins for the encoder. I think this was mainly for user convenience as there's no way I could find that would allow the hardware encoders to be used without requiring a connection to the bottom of the board. I didn't want to mess with trying to implement the encoder with GPIO bit-banging so I opted to use a pin on the bottom of the Nucleo F401RE board.

## Toolchain Notes

I used STM's CubeIDE on Ubuntu Linux. I'm not great with IDE's and Windows seems to be the defacto environment but it works well enough for me. Some things that don't work are the .ioc file. Another issue is the examples this was based on were targeted for Keil or other toolchains so I had to get creative (or lucky) with the include files to get everything working.

## Approaches Tried

As of initial commit => The controller moves the stepper motor once the pendulum velocity stops. The direction is chosen to increase the energy of the system, though this strategy seems to fail once the pendulum is around 90 degrees. 

