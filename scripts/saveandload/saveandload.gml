// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function saveData(variableName, inputData){
	var _file = 0;
	var _json = 0;
	var _data = 0;
	var _string = 0;
	if (file_exists("save.json")){
		_file = file_text_open_read("save.json");
		_json = file_text_read_string(_file);
		file_text_close(_file);
		_data = json_parse(_json);
	}else{
		_data = {
		}
	}
	struct_set(_data, variableName, inputData);
	_string = json_stringify(_data);
	_file = file_text_open_write("save.json");
	file_text_write_string(_file, _string);

	//file_text_write_real(_file, "{\"" + variableName + "\":" + string(data)+ );
	file_text_close(_file);
}

function saveCloneData(variableName, inputData){
	var _file = 0;
	var _json = 0;
	var _data = 0;
	var _string = 0;
	if (file_exists("clones.json")){
		_file = file_text_open_read("clones.json");
		_json = file_text_read_string(_file);
		file_text_close(_file);
		_data = json_parse(_json);
	}else{
		_data = {
		}
	}
	struct_set(_data, variableName, inputData);
	_string = json_stringify(_data);
	_file = file_text_open_write("clones.json");
	file_text_write_string(_file, _string);

	//file_text_write_real(_file, "{\"" + variableName + "\":" + string(data)+ );
	file_text_close(_file);
}

function getAllCloneData(){
	
	
	
}

function loadAllData(){
	if (file_exists("save.json")){
		var _file = file_text_open_read("save.json");
		var _json = file_text_read_string(_file);
		
		try{
		global.game_data = json_parse(_json);
		}catch(e){}
		
		file_text_close(_file);
		
		global.volume = variable_struct_get(global.game_data, "masterVolume")
		global.musicvolume = variable_struct_get(global.game_data, "musicVolume")
		global.soundfx = variable_struct_get(global.game_data, "sfxVolume")
		if (is_undefined(global.volume)){
			global.volume = 1
			global.musicvolume = 1
			global.soundfx = 1
		}
		try{
			global.chillicClones = variable_struct_get(global.game_data, "chillicClones")
		}catch(e){
			global.chillicClones = false;
		}
	}else{
		global.game_data = {}
	}
	if (file_exists("clones.json")){
		var _file = file_text_open_read("clones.json");
		var _json = file_text_read_string(_file);
		global.cloneData = json_parse(_json);
		file_text_close(_file);
		show_debug_message(global.cloneData);
	}
}