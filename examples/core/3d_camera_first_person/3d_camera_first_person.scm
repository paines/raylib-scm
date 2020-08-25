(import raylib-scm defstruct srfi-1 srfi-18)

(define max-columns 20)
(define screen-width 800)
(define screen-height 450)

(defstruct state
  camera)

(define cur-camera
  (make-camera (make-vector-3 4.0 2.0 4.0)
	       (make-vector-3 0.0 1.8 0.0)
	       (make-vector-3 0.0 1.0 0.0)
	       60.0
	       camera-type/perspective))

(defstruct column
  height
  position
  color)

(define columns
  (map
   (lambda (i)
     (let ((height (get-random-value 1 12)))
       (make-column
	#:height
	height
	#:position
	(make-vector-3 (get-random-value -15 15)
		       (/ height 2.0)
		       (get-random-value -15 15))
	#:color
	(make-color (get-random-value 20 255) (get-random-value 20 255) 30 255))))
   (iota max-columns)))
(define cube-position (make-vector-3 0.0 0.0 0.0))
(define (main-loop current-state)
  (if (not (window-should-close?))
      (let ((cur-camera (state-camera current-state)))
	(update-camera cur-camera)
	(begin-drawing)
	(clear-background RAYWHITE)
	(begin-mode-3d cur-camera)
	(draw-plane (make-vector-3 0.0 0.0 0.0) (make-vector-2 32.0 32.0) LIGHTGRAY)
	(draw-cube (make-vector-3 -16.0 2.5 0.0) 1.0 5.0 32.0 BLUE)
	(draw-cube (make-vector-3 16.0 2.5 0.0) 1.0 5.0 32.0 LIME)
	(draw-cube (make-vector-3 0.0 2.5 16.0) 32.0 5.0 1.0 GOLD)
	(for-each
	 (lambda (c)
	   (draw-cube (column-position c) 2.0 (column-height c) 2.0 (column-color c))
	   (draw-cube-wires (column-position c) 2.0 (column-height c) 2.0 MAROON))
	 columns)
	(end-mode-3d)
	(draw-rectangle 10 10 220 70 (fade SKYBLUE 0.5))
	(draw-rectangle-lines 10 10 220 70 BLUE)
	(draw-text "First person camera default controls:" 20 20 10 BLACK)
	(draw-text "- Move with keys: W, A, S, D" 40 40 10 DARKGRAY)
	(draw-text "- Mouse move to look around" 40 60 10 DARKGRAY)
	(end-drawing)
	(main-loop (if (is-key-down? (char->integer #\Z))
		       (update-state current-state
				     #:camera
				     (make-camera (make-vector-3 10.0 10.0 10.0)
						  (make-vector-3 0.0 0.0 0.0)
						  (make-vector-3 0.0 1.0 0.0)
						  45.0
						  camera-type/perspective))
		       current-state)))
      (close-window)))

(init-window screen-width
             screen-height
             "raylib [core] example - 3d camera first person")
(set-camera-mode cur-camera camera-mode/camera-first-person)
(set-target-fps 60)
					;(main-loop)
(cond-expand (compiling (main-loop (make-state #:camera cur-camera)))
             (else (begin
		     (define (main)
		       (main-loop (make-state #:camera cur-camera)))

		     (define game-thread (thread-start! main)))))
