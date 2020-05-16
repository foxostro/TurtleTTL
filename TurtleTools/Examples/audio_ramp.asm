LI A, 0
LI D, 6 # audio device
LI U, 0
LI V, 0

LI U, 0
LI V, 3
LI M, 0

beginning:

# Increment frequency counter in memory.
LI U, 0
LI V, 3
MOV A, M
LI B, 1
ADD _
ADD A
MOV M, A

LI X, 0
LI Y, 0 # Memory-mapped register for frequency
MOV P, A
LI Y, 1 # Memory-mapped register for amplifier gain
LI P, 0x80

LXY delay
JALR
NOP
NOP

LXY beginning
JMP
NOP
NOP



delay256:

LI A, 0
delay256_0:
# Increment A by 1. If the value is not equal to 255 then loop.
LI B, 1
ADD _
ADD A
LI B, 1
CMP
CMP
LXY delay256_0
JNE
NOP
NOP

MOV X, G
MOV Y, H
JMP
NOP
NOP




delay:

# Preserve the value of the link register by
# storing return address at address 0 and 1.
LI U, 0
LI V, 0
MOV M, G
LI V, 1
MOV M, H

LI A, 0
delay_0:

# Call delay256, making sure to preserve "A" in memory at address 2.
LI U, 0
LI V, 2
MOV M, A
LXY delay256
JALR
NOP
NOP
MOV A, M

# Increment A by 1. If the value is not equal to 255 then loop.
LI B, 1
ADD _
ADD A
LI B, 1
CMP
CMP
LXY delay_0
JNE
NOP
NOP

# Retrieve the return address from memory at address 0 and 1,
# and then return from the call.
LI U, 0
LI V, 0
MOV X, M
LI V, 1
MOV Y, M
JMP
NOP
NOP