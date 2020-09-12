# Raspberry Pi Camera


---
## Raspberry Pi Camera
* Raspberry Pi Camera Module
* Python and picamera
	- take still pictures
	- record video
	- image effects
	
.footnote[https://projects.raspberrypi.org/en/projects/getting-started-with-picamera]

---
## Camera Hardware
* Connect the Camera Module to the Raspberry Pi  
<img src="images/camera.png">  
<img src="images/camera-connect.png">

---
## Enable Camera
* Enable camera software & Reboot
* $ sudo raspi-config  
<img src="images/camera-enable.png">

---
## Still Picture
* $ cat cam.py
```python
	from picamera import PiCamera
	from time import sleep

	camera = PiCamera()
	# camera.start_preview()
	sleep(1)
	camera.capture('capture.jpg')
	# camera.stop_preview()
```
* $ python3 cam.py
	- capture.jpg
* Preview only works when a monitor is connected to the Pi

---
## Get files
* In Windows, you need pscp.exe (https://www.chiark.greenend.org.uk/~sgtatham/putty/latest.html)
* pscp.exe   pi@192.168.0.53:/home/pi/capture.jpg   .
<img src="images/pscp.png">
* In Linux, use scp command

---
## Rotate Camera
* camera.rotation = 180
	- 0, 90, 180, 270

---
## Recording Video
* $ cat record.py
```python
	from picamera import PiCamera
	from time import sleep

	camera = PiCamera()
	camera.rotation = 180
	#camera.start_preview()
	camera.start_recording('recording.h264')
	sleep(1)
	camera.stop_recording()
	#camera.stop_preview()
```
* $ python3 record.py
	- recording.h264

---
## Effects
```python
camera.resolution = (2592, 1944)
# maximum resolution is 2592 x 1944 for still photos and 1920 x 1080 for video recording
camera.framerate = 15
  
camera.brightness = 70   # 0 ~ 100, The default is 50
camera.contrast = 50    # 0 ~ 100, The default is 50
  
camera.awb_mode = 'sunlight'   # camera.AWB_MODES
# off, auto, sunlight, cloudy, shade, tungsten, fluorescent, incandescent, flash, and horizon
  
camera.exposure_mode = 'beach'  # camera.EXPOSURE_MODES
# off, auto, night, nightpreview, backlight, spotlight, sports, snow, beach, verylong, fixedfps,
# antishake, and fireworks

camera.annotate_text_size = 50 # 6 ~ 160. The default is 32.  
camera.annotate_background = Color('blue')
camera.annotate_foreground = Color('yellow')
camera.annotate_text = " Hello world "
  
camera.image_effect = 'colorswap'  # camera.IMAGE_EFFECTS
# none, negative, solarize, sketch, denoise, emboss, oilpaint, hatch, gpen, pastel, watercolor,
# film, blur, saturation, colorswap, washedout, posterise, colorpoint, colorbalance, cartoon,
# deinterlace1, and deinterlace2
```

---
## Exercise
* Take pictures with every exposure_mode and image_effect
* Hint:
```python
	for effect in camera.IMAGE_EFFECTS:
		camera.image_effect = effect
		camera.annotate_text = "Effect: %s" % effect
		sleep(5)
```
* Make a single titled image with the pictures
* Hint:
``` bash
	$ sudo apt update
	$ sudo apt install imagemagick
	$ montage *.jpg -mode Concatenate -tile 6x5 montage.jpg
```
<img src="images/montage.jpg" style="position:absolute;bottom:50px;right:50px">
