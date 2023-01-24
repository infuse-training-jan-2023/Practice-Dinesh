print ("hello world")
import sys,os
import numpy as np
  

print(os.getenv('name'))
arg = sys.argv[1]
numpyArr = np.array(arg)
  
print("arguments were =", arg, "and type of arguments were =", type(arg))
print("numpyArr =", numpyArr, "and type(numpyArr) =", type(numpyArr))






