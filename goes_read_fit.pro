data = mrdfits('go1520120704.fits', 2, head, status=stad)



;help, /str, data
  ;print, data.edges
  ;help, /str, data  
;help, data


 TIME = data.TIME
 FLUX = data.FLUX

 
 ;print, head

 ;print, time(10)-time(9)      ;zaman cozunurlugu icin
 ;print, time(1:*)-time(0:42123) ;hepsi



;;;;;;;;;;;;;;


FLUX_1=FLUX(0,*)
FLUX_2=FLUX(1,*)

 loadct,4
SET_PLOT, 'PS'
device, file="all_flares_1.eps", /encapsulated, /color , xsize=24, ysize=16  
   plot,TIME, FLUX_1 ,psym=10,/xstyle
   oplot, TIME, FLUX_2,color=200,psym=10
   time=data.time
   
DEVICE,/close
SET_PLOT, 'X'



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

   
   ;time=(TIME_TAG-TIME_TAG_orbit(0))/1000. ; convert ms to s since UT0
                                ;TIME = TIME/(60.*60.)
   TIME = TIME/(60.60)                           ; convert second to haur
   ;aflux = a_flux/0.85
   ;bflux = b_flux/0.7

   a_FLUX_1=FLUX_1/0.85
   b_FLUX_2=FLUX_2/0.7
   
                               


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
   
loadct,4
SET_PLOT, 'PS'
device, file="all_flares_2.eps", /encapsulated, /color , xsize=24, ysize=16  
;plot,TIME, a_FLUX_1 ,psym=10,/xstyle,xra=[1, 6]
   plot,TIME, a_FLUX_1 ,psym=10,/xstyle
   oplot, TIME,b_FLUX_2,color=200,psym=10
   
DEVICE,/close
SET_PLOT, 'X'
   


;;;;;;;;;;;;;;;;;;;;;;    PARLAMA 1    ;;;;;;;;;;;;;;;;;;;;;


 ;;;;;;;;;;;;;;;;;;;;; flare 1 Daniela'nin Gbm kodundaki
 ;;;;;;;;;;;;;;;;;;;;; kullandigi flare karsiligi 

loadct,4
SET_PLOT, 'PS'
device, file="flare_1.eps", /encapsulated, /color , xsize=24, ysize=16
   
   

   plot,TIME, a_FLUX_1 ,psym=10,/xstyle, xra=[260.,280.]
   oplot, TIME,b_FLUX_2,color=200,psym=10

   
  DEVICE,/close
  SET_PLOT, 'X'



;;;;;;;;;;;;;;;;;;;;;;    PARLAMA 2    ;;;;;;;;;;;;;;;;;;;;;






loadct,4
SET_PLOT, 'PS'
device, file="flare_2.eps", /encapsulated, /color , xsize=24, ysize=16


   plot,TIME, a_FLUX_1 ,psym=10,/xstyle, xra=[580.,600.]
   oplot, TIME,b_FLUX_2,color=200,psym=10
 

  DEVICE,/close
  SET_PLOT, 'X'




;;;;;;;;;;;;;;;;;;;;;;    PARLAMA 3    ;;;;;;;;;;;;;;;;;;;;;






loadct,4
SET_PLOT, 'PS'
device, file="flare_3.eps", /encapsulated, /color , xsize=24, ysize=16
  

   plot,TIME, a_FLUX_1 ,psym=10,/xstyle, xra=[1270.,1280.]
   oplot, TIME,b_FLUX_2,color=200,psym=10
   
  DEVICE,/close
  SET_PLOT, 'X'


;;;;;;;;;;;;;;;;;;;;;;    PARLAMA 4    ;;;;;;;;;;;;;;;;;;;;;






loadct,4
SET_PLOT, 'PS'
device, file="flare_4.eps", /encapsulated, /color , xsize=24, ysize=16


   plot,TIME, a_FLUX_1 ,psym=10,/xstyle, xra=[710.,765.]
   oplot, TIME,b_FLUX_2,color=200,psym=10

   
  DEVICE,/close
  SET_PLOT, 'X'



   
end

   
