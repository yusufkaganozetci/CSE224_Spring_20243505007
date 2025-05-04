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
![Project2_ss](https://github.com/user-attachments/assets/771eb366-d2ec-460c-9284-cf7bb95f65b2)


