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

The TopModule.v file has been added to the project (it was not normally in the lab). In addition, the die_area parameter had to be significantly increased, and its value is now ‘0 0 3500 3500’. 

Since creating a design in OpenLane took a lot of time, I reduced the number of registers from 32 to 4. All other design logic remains the same.

! Important Note

I started to use Git LFS since files are started to become very large. So if you want to see codes, results, or any other large file. , you should press the view raw button and download file itself.

KLayout Screenshot:
![Project4 ss](https://github.com/user-attachments/assets/e80b24b1-d46d-4595-be7b-1821c99ce037)
