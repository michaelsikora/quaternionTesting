# Quaternion Testing
# Michael Sikora
# 2018.1.14

for quick visualization run driver.m and change the ax (axis of rotation) and angle given in quatTest call.

quatRotateDup.m is a function that rotates a vector given a quaternion representing a 3D rotation.
    It was intended as a duplicate of the quatrotate function available in the Aerospace Toolbox.

quatMult.m is the quaternion multiply operation.

quatTest.m was originally not a function, just a test script for rotating a vector in 3D using the
    quaternion calculation. The function was added to quickly see the effect of various angles and axiis.

THEORY

A rotation in three dimensional space can be mathematically represented using quaternion algebra. Quaternion
algebra is often preferred for heavy calculations, because only 4 rational numbers are needed. A quaternion 
represents a change in coordinate reference frame.
