// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function createNotification(target, scalex, scaley, distance_x = 99999, distance_y = 99999){
	var outsideCoords = getNotificationCoords(target)
	isDrawn = (isNotInViewExtended(target) 
	&& point_distance(target.x, 0, outsideCoords.x, 0) < distance_x) 
	&& point_distance(0, target.y, 0, outsideCoords.y)
	if (isDrawn){
		draw_sprite_ext(spr_notification, 0, outsideCoords.x, outsideCoords.y, scalex, scaley, getNotificationAngle(target), c_white, 1)
	}
	return {x: outsideCoords.x, y: outsideCoords.y, angle: getNotificationAngle(target), wasDrawn: isDrawn}
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

function getNotificationAngle(target) {
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


function summonNotification(){
	notifStruct = {
		parent: id,
	}
	notif = instance_create_depth(0, 0, -99, obj_notification, notifStruct)
}

function getNotificationCoords(target){
	var padding = 50;
	var camX = camera_get_view_x(view_camera[0]);
	var camY = camera_get_view_y(view_camera[0]);

	var abs_x = abs(target.x) - abs(camX);
	var abs_y = abs(target.y) - abs(camY);
	
	var clamped_x = clamp(target.x, camX, camX + camera_get_view_width(camera_get_active()))
	var clamped_y = clamp(target.y, camY, camY + camera_get_view_height(camera_get_active()))
	
	if (target.x < camX + padding) {
		clamped_x = camX + padding;
	} else if (target.x > camX + camera_get_view_width(view_camera[0]) - padding) {
		clamped_x = camX + camera_get_view_width(view_camera[0]) - padding;
	}

	if (target.y < camY + padding) {
		clamped_y = camY + padding;
	} else if (target.y > camY + camera_get_view_height(view_camera[0]) - padding) {
		clamped_y = camY + camera_get_view_height(view_camera[0]) - padding;
	}

	
	return { x: clamped_x, y: clamped_y };
}


