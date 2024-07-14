(Defun c:Etm()
 (setvar "LISPINIT" 0) 
 (setvar "cmdecho" 0) 

  (setq fname (getfiled " Data file " "d:/" "" 4))
  (setq file (open fname "r"))


; Read data

  (while (setq dong (read-line file))
;	 (setq dong (strcat dong))
	 (princ dong)
  	 (command "fileopen" dong) 
	 (command "_.-etransmit" "" "_ch" "Standard" "_c" (strcat dong ".zip"))	

  )
  (princ)

  (setvar "cmdecho" 0)
  (princ)
)