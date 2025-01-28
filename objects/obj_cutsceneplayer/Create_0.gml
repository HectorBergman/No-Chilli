timer = 0
seconds = 60
nextFrameNumber = 1;
nextFrameTime = 9*seconds;
framesSeen = 1;
defaultTime = 5;
previousFrame = 0;
lastFrameSeen = 56;
lol = false
whiteGuyText = scribble_typist();
whiteGuyText.in(0.1, 0);
chiliText = scribble_typist();
chiliText.in(0.5, 0);
chiliTextFast = scribble_typist();
chiliTextFast.in(1, 0);
littlechiliText = scribble_typist();
littlechiliText.in(0.5, 0);
cloudsSummoned = false;

wrapWidth = 1200;




function nextFrameInSeconds(time, nextFrame){
	//in time seconds, go to nextFrame number frame
	nextFrameNumber = nextFrame
	nextFrameTime += time*seconds
}

function checkIfNextFrame(){
	return (timer == nextFrameTime)
}
function goNextFrame(){
	previousFrame = image_index;
	image_index = nextFrameNumber;
	if (framesSeen == lastFrameSeen){
		room_goto(rm_title)
	}
	framesSeen++;
}

function textLogic(){ //yup, this is how we're doing it. We're doing it like undertale because i cant code
	var text = ""
	var line = 0
	
	if (framesSeen == 1) {
	    text = "[scale,4][$ad0000]And then, that one guy you know that won't stop bragging about how well he tolerates spicy food devoured all the chilis in one fell swoop. The end.";
	    line = scribble(text).wrap(wrapWidth).outline($000023).align(fa_center);
	    line.draw(window_get_width() / 2, 750, chiliText);
	} else if (framesSeen == 2) {
	    text = "[scale,4][$eece5d]Did that really happen, uncle Chiliman?";
	    line = scribble(text).outline($000023).wrap(wrapWidth).align(fa_center);
	    line.draw(window_get_width() / 2, 850, chiliText);
	} else if (framesSeen == 3) {
	    text = "[scale,4][$ad0000][shake]HA HA HA![/shake] Of course not, everyone knows that's just a fairy tale!";
	    line = scribble(text).outline($000023).wrap(wrapWidth).align(fa_center);
	    line.draw(window_get_width() / 2, 850, chiliText);
	} else if (framesSeen == 5) {
	    text = "[scale,4][$ad0000]OH SHI-";
	    line = scribble(text).outline($000023).wrap(wrapWidth).align(fa_center);
	    line.draw(window_get_width() / 2, 850, chiliTextFast);
	} else if (framesSeen == 6) {
	    text = "[scale,5][$eec39a][shake]NEED. CHILI.";
	    line = scribble(text).outline($000023).wrap(wrapWidth).align(fa_center);
	    line.draw(window_get_width() / 2, 850, whiteGuyText);
	} else if (framesSeen == 7) {
	    text = "[scale,4][$ad0000][wave]NOOOOOOOOO![/wave] I JUST BOUGHT THOSE!";
	    line = scribble(text).outline($000023).wrap(wrapWidth).align(fa_center);
	    line.draw(window_get_width() / 2, 850, chiliText);
	} else if (framesSeen >= 8 && framesSeen <= 20) {
	    text = "[scale,4][$ad0000][wave]NOOOOOOOOOOOOO![/wave] SHE HADN'T PUT ME IN THE WILL YET!";
	    line = scribble(text).outline($000023).wrap(wrapWidth).align(fa_center);
	    line.draw(window_get_width() / 2, 850, chiliText);
	} else if (framesSeen >= 21 && framesSeen <= 35) {
	    text = "[scale,4][$ad0000][wave]NOOOOOOOOOOOOOOO![/wave] I JUST CUT THEIR HAIR! WHAT A WASTE OF [shake]MONEY[/shake]!";
	    line = scribble(text).outline($000023).wrap(wrapWidth).align(fa_center);
	    line.draw(window_get_width() / 2, 850, chiliText);
	} else if (framesSeen == 36) {
	    text = "[scale,5][$eec39a][shake]NEED. HOTTER. CHILI.";
	    line = scribble(text).outline($000023).wrap(wrapWidth).align(fa_center);
	    line.draw(window_get_width() / 2, 850, whiteGuyText);
	} else if (framesSeen >= 36 && framesSeen <= 54) {
	    text = "[scale,4][$ad0000][shake]AAAAAAAAAAAAAAAAAAAAAAAAAAH[/shake]!!!!!!";
	    line = scribble(text).outline($000023).wrap(wrapWidth).align(fa_center);
	    line.draw(window_get_width() / 2, 850, chiliText);
	} else if (framesSeen == 55) {
	    text = "[scale,4][$ad0000]I'M OUTTA HERE!";
	    line = scribble(text).outline($000023).wrap(wrapWidth).align(fa_center);
	    line.draw(window_get_width() / 2, 850, chiliText);
	}

	
}

function frameLogic(){
	if (checkIfNextFrame()){
		goNextFrame();
		if (framesSeen == 3){
			nextFrameInSeconds(defaultTime, 0)
		}else if (framesSeen == 4){
			nextFrameInSeconds(1, 4)
		}else if ((framesSeen >= 7 && framesSeen <= 20)){
			if (framesSeen == 7 ){
				nextFrameInSeconds(defaultTime, 7)
			}else if (framesSeen == 20 ){
				nextFrameInSeconds(0.5, 9)
			}else if (framesSeen mod 2 == 0){
				nextFrameInSeconds(0.5, 7)
			}else{
				nextFrameInSeconds(0.5, 8)
			}
		}else if ((framesSeen >= 21 && framesSeen <= 35)){
			if (framesSeen == 35 ){
				nextFrameInSeconds(0.5, 5)
			}else if (framesSeen mod 2 == 0){
				nextFrameInSeconds(0.5, 9)
			}else{
				nextFrameInSeconds(0.5, 10)
			}
		}else if ((framesSeen >= 36 && framesSeen <= 54)){
			if framesSeen == 36{
				nextFrameInSeconds(defaultTime, 11)
			}else if framesSeen == 54{
				nextFrameInSeconds(0.3, 13)
			}else if (framesSeen mod 2 == 0){
				nextFrameInSeconds(0.3, 11)
			}else{
				nextFrameInSeconds(0.3, 12)
			}
		}else{
			nextFrameInSeconds(defaultTime, nextFrameNumber+1)
		}
	}
}

