data = mrdfits('go1520120704.fits', 2, head, status=stad)



 TIME = data.TIME
 FLUX = data.FLUX




FLUX_1=FLUX(0,*)
FLUX_2=FLUX(1,*)

 loadct,4
SET_PLOT, 'PS'
device, file="fits_1_120704.eps", /encapsulated, /color , xsize=24, ysize=16  
   plot,TIME, FLUX_1 ,psym=10,/xstyle
   oplot, TIME, FLUX_2,color=200,psym=10
   time=data.time
   
DEVICE,/close
SET_PLOT, 'X'



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

   
   ;time=(TIME_TAG-TIME_TAG_orbit(0))/1000. ; convert ms to s since UT0
                                ;TIME = TIME/(60.*60.)
   TIME = TIME/(60.60)          ; convert second to haur


   a_FLUX_1=FLUX_1/0.85
   b_FLUX_2=FLUX_2/0.7
   
                               


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
   
loadct,4
SET_PLOT, 'PS'
device, file="fits_2_120704.eps", /encapsulated, /color , xsize=24, ysize=16  

   plot,TIME, a_FLUX_1 ,psym=10,/xstyle
   oplot, TIME,b_FLUX_2,color=200,psym=10
   
DEVICE,/close
SET_PLOT, 'X'
   
;;;;;;;;;;;;;;;;;;;;;;;;;;;;




   
   time2 = [TIME[1:*], max(TIME,ind)+2.048]
   aflux2 = [a_FLUX_1[1:*], a_FLUX_1(ind)]
   bflux2 = [b_FLUX_2[1:*], b_FLUX_2(ind)]
   expo = time2-time
   daflux= deriv(TIME, a_FLUX_1)   ;;daflux=abs(aflux2-aflux)/expo
   dbflux= deriv(TIME, b_FLUX_2)   ;;dbflux= abs(bflux2-bflux)/expo

   
;;;;;;;;;;;;;;;;;;;;;;;;;;;;

   
loadct,4
SET_PLOT, 'PS'
device, file="flares_120704.eps", /encapsulated, /color , xsize=24, ysize=16
   


   plot, time, dbflux, psym=10, /xstyle
   oplot, time, daflux, psym=10, color=200

DEVICE,/close
SET_PLOT, 'X'


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


 ;  stop
;select the range which includes flares



db=dbflux/max(dbflux)
da=daflux/max(daflux)




;;;;;;;;;;;;;;;;;    120704 Flares   ;;;;;;;;;;








;;;;;;;;;;;;;;;;;;;;;;   FLARE_1    ;;;;;;;;;;;;;;;;;;;;;






loadct,4
SET_PLOT, 'PS'
device, file="flare_1_Goes_120704.eps", /encapsulated, /color , xsize=24, ysize=16
  
   plot, time, db, /xstyle, xra=[260.,280.] 
   
   oplot, time, da, color=200

  DEVICE,/close
  SET_PLOT, 'X'



loadct,4
SET_PLOT, 'PS'
device, file="flare_1_Goes_1_120704.eps", /encapsulated, /color , xsize=24, ysize=16
   
   plot, time, db, /xstyle, xra=[260.,280.] 
   

  DEVICE,/close
  SET_PLOT, 'X'



loadct,4
SET_PLOT, 'PS'
device, file="flare_1_Goes_2_120704.eps", /encapsulated, /color , xsize=24, ysize=16
   
   plot, time, da, color=200, xra=[260.,280.] 

  DEVICE,/close
  SET_PLOT, 'X'




;;;;;;;;;;;;;;;;;;;;;;   FLARE_2    ;;;;;;;;;;;;;;;;;;;;;






loadct,4
SET_PLOT, 'PS'
device, file="flare_2_Goes_120704.eps", /encapsulated, /color , xsize=24, ysize=16
   
   plot, time, db, /xstyle, xra=[580.,600.] 
  
   oplot, time, da, color=200

  DEVICE,/close
  SET_PLOT, 'X'



loadct,4
SET_PLOT, 'PS'
device, file="flare_2_Goes_1_120704.eps", /encapsulated, /color , xsize=24, ysize=16
   
   plot, time, db, /xstyle, xra=[580.,600.] 
   

  DEVICE,/close
  SET_PLOT, 'X'



loadct,4
SET_PLOT, 'PS'
device, file="flare_2_Goes_2_120704.eps", /encapsulated, /color , xsize=24, ysize=16
   
   plot, time, da, color=200, xra=[580.,600.]

  DEVICE,/close
  SET_PLOT, 'X'




;;;;;;;;;;;;;;;;;;;;;;    FLARE_3    ;;;;;;;;;;;;;;;;;;;;;






loadct,4
SET_PLOT, 'PS'
device, file="flare_3_Goes_120704.eps", /encapsulated, /color , xsize=24, ysize=16
  
   plot, time, db, /xstyle, xra=[1270.,1280.] 
   
   oplot, time, da, color=200

  DEVICE,/close
  SET_PLOT, 'X'



loadct,4
SET_PLOT, 'PS'
device, file="flare_3_Goes_1_120704.eps", /encapsulated, /color , xsize=24, ysize=16
   
   plot, time, db, /xstyle, xra=[1270.,1280.] 
   

  DEVICE,/close
  SET_PLOT, 'X'



loadct,4
SET_PLOT, 'PS'
device, file="flare_3_Goes_2_120704.eps", /encapsulated, /color , xsize=24, ysize=16
   
   plot, time, da, color=200, xra=[1270.,1280.]

  DEVICE,/close
  SET_PLOT, 'X'


;;;;;;;;;;;;;;;;;;;;;;   FLARE_4    ;;;;;;;;;;;;;;;;;;;;;






loadct,4
SET_PLOT, 'PS'
device, file="flare_4_Goes.eps", /encapsulated, /color , xsize=24, ysize=16
  
   plot, time, db, /xstyle, xra=[710.,765.] 
   oplot, time, da, color=200

  DEVICE,/close
  SET_PLOT, 'X'



loadct,4
SET_PLOT, 'PS'
device, file="flare_4_Goes_1_120704.eps", /encapsulated, /color , xsize=24, ysize=16
   
   plot, time, db, /xstyle, xra=[710.,765.]
   

  DEVICE,/close
  SET_PLOT, 'X'



loadct,4
SET_PLOT, 'PS'
device, file="flare_4_Goes_2_120704.eps", /encapsulated, /color , xsize=24, ysize=16
   
   plot, time, da, color=200, xra=[710.,765.]

  DEVICE,/close
  SET_PLOT, 'X'



end
  
