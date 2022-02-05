vectoradding<-4+5
vectorstring<-"stringtastic"
ls() #return "vectoradding" "vectorstring"
ls("package:graphics")  #package graphics is under Packages tab under System Library header.  Graphics package must be checked in checkbox.
'''
[1] "abline"          "arrows"          "assocplot"       "axis"           
[5] "Axis"            "axis.Date"       "axis.POSIXct"    "axTicks"        
[9] "barplot"         "barplot.default" "box"             "boxplot"   
...
'''
library(colorspace) #activate colorspace without checking checkbox
ls("package:colorspace") #package colorspace is under Packages tab under User Library header.  Colorspace package must be checked in checkbox.
'''
[1] "adjust_transparency"                 "choose_color"                       
[3] "choose_palette"                      "contrast_ratio"                     
[5] "coords"                              "cvd_emulator"                       
[7] "darken"                              "demoplot"                           
[9] "desaturate"                          "deutan"
...
'''
detach("package:colorspace", unload = TRUE) #deactivate colorspace without unchecking checkbox
search() #a list of environments R search when an object is requested
'''
 [1] ".GlobalEnv"        "package:tseries"   "tools:rstudio"     "package:stats"    
 [5] "package:graphics"  "package:grDevices" "package:utils"     "package:datasets" 
 [9] "package:methods"   "Autoloads"         "package:base"  
 '''
ls()
rm(vectoradding) #remove an object
ls() #return "vectorstring"
vectoradding<-4+5
ls() #return "vectoradding" "vectorstring"
matrixgodownthenrightisdefault<-matrix(c("a","b","c","d","e","f"), nrow=2, byrow=F)
matrixgodownthenrightisdefault
'''
     [,1] [,2] [,3]
[1,] "a"  "c"  "e" 
[2,] "b"  "d"  "f" 
'''
args(matrixgodownthenrightisdefault) #print NULL.  args shows function arguments
args(matrix) #args shows function arguments
'''
function (data = NA, nrow = 1, ncol = 1, byrow = FALSE, dimnames = NULL) 
NULL
'''
