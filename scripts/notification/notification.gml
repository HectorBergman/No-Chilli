// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function createNotification(target, scalex, scaley, distance_x = 99999, distance_y = 99999){
	var outsideCoords = getNotificationCoords(target)
	isDrawn = (isNotInViewExtended(target) 
	&& point_distance(target.x, 0, outsideCoords.x, 0) < distance_x) 
	&& point_distance(0, target.y, 0, outsideCoords.y)
	if (isDrawn){
		draw_sprite_ext(spr_notification, 0, outsideCoords.x, outsideCoords.y, scalex, scaley, getNotificationAngle(target, outsideCoords.x, outsideCoords.y), c_white, 1)
	}
	return {x: outsideCoords.x, y: outsideCoords.y, angle: getNotificationAngle(target, outsideCoords.x, outsideCoords.y), wasDrawn: isDrawn}
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



function isNotInViewExtended(target) {
    // Get view boundaries
    var view_x = camera_get_view_x(view_camera[0]);
    var view_y = camera_get_view_y(view_camera[0]);
    var view_width = camera_get_view_width(view_camera[0]);
    var view_height = camera_get_view_height(view_camera[0]);

    // Apply optional far distances if provided
 

    // Check if the instance is within the extended view
    if (target.x + target.sprite_width > view_x && target.x < view_x + view_width && 
        target.y + target.sprite_height > view_y && target.y < view_y + view_height) 
	{
        return false; // Instance is within the extended view
    } else {
        return true; // Instance is outside the view
    }
}



/// @function getNotificationAngle()
/// @return 0 if furthest below the screen, 90 if furthest to the left, 180 if furthest above, 270 if furthest to the right. Returns -1 if inside the screen.

function getNotificationAngle(target, x, y) {
    // Get view boundaries
    var view_x = camera_get_view_x(view_camera[0]);
    var view_y = camera_get_view_y(view_camera[0]);
    var view_width = camera_get_view_width(view_camera[0]);
    var view_height = camera_get_view_height(view_camera[0]);

    // Determine the distances outside the screen boundaries
    var dist_below = target.y - (view_y + view_height); // Positive if below
    var dist_left = view_x - target.x;                 // Positive if left
    var dist_above = view_y - target.y;                // Positive if above
    var dist_right = target.x - (view_x + view_width); // Positive if right

    // If the instance is inside the screen, return -1
    if (dist_below <= 0 && dist_left <= 0 && dist_above <= 0 && dist_right <= 0) {
        return -1;
    }
	var corner = isNotificationInCorner(target, x, y);
	if corner == -1{
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
	}else{
		return corner
	}
}


function summonNotification(){
	notifStruct = {
		parent: id,
	}
	notif = instance_create_depth(0, 0, -99, obj_notification, notifStruct)
}

function getNotificationCoords(target){
	var camX = camera_get_view_x(view_camera[0]);
	var camY = camera_get_view_y(view_camera[0]);

	var abs_x = abs(target.x) - abs(camX);
	var abs_y = abs(target.y) - abs(camY);
	
	var clamped_x = clamp(target.x, camX, camX + camera_get_view_width(camera_get_active()))
	var clamped_y = clamp(target.y, camY, camY + camera_get_view_height(camera_get_active()))
	
	return { x: clamped_x, y: clamped_y };
}

/// @function isNotificationInCorner(target, padding)
/// @desc Checks if a notification is within a corner region of the view, with padding, and sets the image_angle for the target based on the corner.
/// @param target The object to check.
/// @param padding The padding to apply near the corners.
/// @return A string indicating the corner ("top-left", "top-right", "bottom-left", "bottom-right") or "none" if not in a corner.

function isNotificationInCorner(target, xCoord, yCoord, padding = 64) {
	// Get view boundaries
	show_debug_message(x);
	show_debug_message(y);
	var notifCoords = getNotificationCoords(target);
	var notifX = xCoord
	var notifY = yCoord
	
	var view_width = camera_get_view_width(view_camera[0]);
	var view_height = camera_get_view_height(view_camera[0]);

	// Corner coordinates
	var top_left_x = 0;
	var top_left_y = 0;

	var top_right_x = view_width;
	var top_right_y = 0;

	var bottom_left_x = 0;
	var bottom_left_y = view_height;

	var bottom_right_x = view_width;
	var bottom_right_y = view_height;

	// Get distances to each corner
	var dist_top_left = point_distance(notifX, notifY, 0, 0);
	var dist_top_right = point_distance(notifX, notifY, view_width, 0);
	var dist_bottom_left = point_distance(notifX, notifY, 0, view_height);
	var dist_bottom_right = point_distance(notifX, notifY, view_width, view_height);

	
	var min_dist = min(dist_top_left, dist_top_right, dist_bottom_left, dist_bottom_right);

	if (min_dist == dist_top_left) {
		show_debug_message("top left 1/3");
		if (notifX <= padding) {
			show_debug_message("top left 2/3");
			if (notifY <= padding) {
				return 45;
				show_debug_message("top left 3/3");
			}
		}
	} else if (min_dist == dist_top_right) {
		show_debug_message("top right 1/3");
		if (notifX >= view_width - padding) {
			show_debug_message("top right 2/3");
			if (notifY <= padding) {
				return 315;
				show_debug_message("top right 3/3");
			}
		}
	} else if (min_dist == dist_bottom_left) {
		show_debug_message("bottom left 1/3");
		if (notifX <= padding) {
			show_debug_message("bottom left 2/3");
			if (notifY >= view_height - padding) {
				return 135;
				show_debug_message("bottom left 3/3");
			}
		}
	} else if (min_dist == dist_bottom_right) {
		show_debug_message("bottom right 1/3");
		if (notifX >= view_width - padding) {
			show_debug_message("bottom right 2/3");
			if (notifY >= view_height - padding) {
				return 225;
				show_debug_message("bottom right 3/3");
			}
		}
	}
	return -1;
}
