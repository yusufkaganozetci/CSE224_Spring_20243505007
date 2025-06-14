This repository is created for CSE-224 Spring 2025 project. Since OpenLane itself is also a GitHub repository, I created this repository inside my local /OpenLane/designs. 

Folder Structure:

OpenLane

-> designs (This repository is placed inside this folder!)

->-> example_design

->->-> src

->->->-> example_design.v

->->->-> example_design.sdc

->->-> config.json

->->-> pin_order.cfg

----------------------------------------------------------------------------------------------------

First Project (Twos Complement)

KLayout Screenshot:
![Project1_ss](https://github.com/user-attachments/assets/1a08f994-3772-4670-9582-7cb2748ba176)

----------------------------------------------------------------------------------------------------

Second Project (Alu- Arithmetic Logic Unit)

! Important Note

I had to modify the die_area parameter in the config.json file from "0 0 34.5 57.12" to "0 0 100 100".

The original die area was sufficient for the first project (two's complement), but it was too small to accommodate the increased cell count and complexity of the second project (ALU). Increasing the die area resolved the placement failure in OpenLane.

KLayout Screenshot:
![Project2 ss](https://github.com/user-attachments/assets/94011282-22d4-4080-be6d-fecc23f5a95d)

----------------------------------------------------------------------------------------------------

Third Project (Zero to Five Counter)

I had to modify the die_area parameter in the config.json file from "0 0 34.5 57.12" to "0 0 100 100" again like in alu.

Also since we have clock in this design, config.json file is updated accordingly and TopModule.sdc file is added.

KLayout Screenshots:

Depth 2:
![Project3 Depth 2](https://github.com/user-attachments/assets/8a9fc6c3-cc7f-431e-8f43-a77e63fb76b2)

Depth 1:
![Project3 Depth 1](https://github.com/user-attachments/assets/ae71c37c-5be5-499d-a905-6dd786edab5e)

----------------------------------------------------------------------------------------------------

Fourth Project (Alu and Register File)

The TopModule.v file has been added to the project (it was not normally in the lab). In addition, the DIE_AREA, PL_TARGET_DENSITY, FP_CORE_UTIL parameters had to be changed due to placement issues. Moreover, "PL_RANDOM_GLB_PLACEMENT = false" is set in order to achieve reliable placement.

KLayout Screenshots:

Depth 2:
![Project4 Depth2](https://github.com/user-attachments/assets/82a83ed0-eae0-43c8-82f5-dcbeb5c6a9ba)

Depth 1:
![Project4 Depth1](https://github.com/user-attachments/assets/a4dd3de6-20ba-4827-a5d8-5c87f33609de)

----------------------------------------------------------------------------------------------------

Fifth Project (Semi CPU)

Clock period is increased to 15 due to some error messages about timing. It is working as expected now.

KLayout Screenshots:

Depth 2:
![Project5 Depth2 ss](https://github.com/user-attachments/assets/3a30d860-de2e-43f0-99c3-ecf1dce230d4)

Depth 1:
![Project5 Depth1 ss](https://github.com/user-attachments/assets/a323f972-b963-4332-9fea-7a1e5d11f2d5)

----------------------------------------------------------------------------------------------------

Sixth Project (Full CPU)

Same config file in fifth project is applied here as well.

Depth 2:
![Project6 Depth2](https://github.com/user-attachments/assets/846bbde8-c5f5-40d0-abab-bfb0090af566)

Depth 1:
![Project6 Depth1](https://github.com/user-attachments/assets/5be67df5-bcd1-4ffd-8a02-2eb9dff639c0)

----------------------------------------------------------------------------------------------------
