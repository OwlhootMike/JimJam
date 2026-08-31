// If told to fade out (to black)
if (fade_state == 1) {
    
    image_alpha += fade_speed;
    
    // Once it reaches full black
    if (image_alpha >= 1) {
        image_alpha = 1; // Clamp it perfectly to 1
        fade_state = 0;  // Turn the switch off
		
		if(room == Room7){
		
			alarm[6] = 30;
		
		}
        
		if(instance_exists(obj_jimothy) && obj_jimothy.isDead == true){
		
			alarm[1] = 30;
		
		}else{alarm[0] = 30;}   // Trigger your alarm delay
		
		
    }
}

// If told to fade in (to clear)
else if (fade_state == -1) {
    
    image_alpha -= fade_speed;
    
    // Once it becomes fully transparent
    if (image_alpha <= 0) {
        image_alpha = 0; // Clamp it perfectly to 0
        fade_state = 0;  // Turn the switch off
    }
}