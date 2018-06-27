; (car ''a) is translated into (car (quote (quote a))). The first quote makes
; sure that the second quote is interpreted literally.
