depth = -1000;
image_alpha = 1;

// 0 = Idle, 1 = Fading to Black, -1 = Fading to Clear
fade_state = 0; 
fade_speed = 0.02; // This controls the smoothness. Lower = slower fade.

// These functions just flip the switch
fadeout = function() {
    fade_state = 1;
}

fadein = function() {
    fade_state = -1;
}