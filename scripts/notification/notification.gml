// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function createNotification(farX = 0, farY = 0){
	
	if (!isInViewExtended(farX, farY)){
		draw_sprite_ext(spr_notification, 0, 90, 90, 1, 1, getNotificationAngle(), c_white, 1)
	}
}

function isInView(){
	// Variables for view boundaries
	// Margin of error (adjust as needed)
	var margin = 16;

	// Variables for view boundaries with margin
	var view_x = camera_get_view_x(view_camera[0]) - margin;
	var view_y = camera_get_view_y(view_camera[0]) - margin;
	var view_width = camera_get_view_width(view_camera[0]) + margin * 2;
	var view_height = camera_get_view_height(view_camera[0]) + margin * 2;

	// Check if the instance is within the extended view
	if (x + sprite_width*image_xscale > view_x && x < view_x + view_width && 
	    y + sprite_height*image_yscale > view_y && y < view_y + view_height) {
	    // Instance is within (or almost within) view
	    return true;
	} else {
	    // Instance is outside the view
	    return false;
	}
}

/// @function isInViewExtended(far_horizontal, far_vertical)
/// @param [far_horizontal] (optional) Extra horizontal distance to include in the check.
/// @param [far_vertical] (optional) Extra vertical distance to include in the check.
/// @return true if the instance is within the view (or extended view if parameters are provided).

function isInViewExtended(far_horizontal = 0, far_vertical = 0) {
    // Get view boundaries
    var view_x = camera_get_view_x(view_camera[0]);
    var view_y = camera_get_view_y(view_camera[0]);
    var view_width = camera_get_view_width(view_camera[0]);
    var view_height = camera_get_view_height(view_camera[0]);

    // Apply optional far distances if provided
    view_x -= far_horizontal;
    view_y -= far_vertical;
    view_width += far_horizontal * 2;
    view_height += far_vertical * 2;

    // Check if the instance is within the extended view
    if (x + sprite_width > view_x && x < view_x + view_width && 
        y + sprite_height > view_y && y < view_y + view_height) {
        return true; // Instance is within the extended view
    } else {
        return false; // Instance is outside the view
    }
}



/// @function getNotificationAngle()
/// @return 0 if furthest below the screen, 90 if furthest to the left, 180 if furthest above, 270 if furthest to the right. Returns -1 if inside the screen.

function getNotificationAngle() {
    // Get view boundaries
    var view_x = camera_get_view_x(view_camera[0]);
    var view_y = camera_get_view_y(view_camera[0]);
    var view_width = camera_get_view_width(view_camera[0]);
    var view_height = camera_get_view_height(view_camera[0]);

    // Determine the distances outside the screen boundaries
    var dist_below = y - (view_y + view_height); // Positive if below
    var dist_left = view_x - x;                 // Positive if left
    var dist_above = view_y - y;                // Positive if above
    var dist_right = x - (view_x + view_width); // Positive if right

    // If the instance is inside the screen, return -1
    if (dist_below <= 0 && dist_left <= 0 && dist_above <= 0 && dist_right <= 0) {
        return -1;
    }

    // Find the direction with the maximum distance
    var max_dist = max(dist_below, dist_left, dist_above, dist_right);

    if (max_dist == dist_below) {
        return 0; // Below the screen
    }
    if (max_dist == dist_left) {
        return 270; // Left of the screen
    }
    if (max_dist == dist_above) {
        return 180; // Above the screen
    }
    if (max_dist == dist_right) {
        return 90; // Right of the screen
    }

    return -1; // Default fallback (unlikely to happen)
}

