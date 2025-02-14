// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function saveData(variableName, inputData){
	var _file = 0;
	var _json = 0;
	var _data = 0;
	var _string = 0;
	if (file_exists("save.txt")){
		_file = file_text_open_read("save.txt");
		_json = file_text_read_string(_file);
		file_text_close(_file);
		_data = json_parse(_json);
	}else{
		_data = {
		}
	}
	struct_set(_data, variableName, inputData);
	_string = json_stringify(_data);
	_file = file_text_open_write("save.txt");
	file_text_write_string(_file, _string);

	//file_text_write_real(_file, "{\"" + variableName + "\":" + string(data)+ );
	file_text_close(_file);
}

function saveCloneData(variableName, inputData){
	var _file = 0;
	var _json = 0;
	var _data = 0;
	var _string = 0;
	if (file_exists("clones.txt")){
		_file = file_text_open_read("clones.txt");
		_json = file_text_read_string(_file);
		file_text_close(_file);
		_data = json_parse(_json);
	}else{
		_data = {
		}
	}
	struct_set(_data, variableName, inputData);
	_string = json_stringify(_data);
	_file = file_text_open_write("clones.txt");
	file_text_write_string(_file, _string);

	//file_text_write_real(_file, "{\"" + variableName + "\":" + string(data)+ );
	file_text_close(_file);
}

function getAllCloneData(){
	
	
	
}

function loadAllData(){
	if (file_exists("save.txt")){
		var _file = file_text_open_read("save.txt");
		var _json = file_text_read_string(_file);
		global.game_data = json_parse(_json);
		file_text_close(_file);
	}else{
		global.game_data = {}
	}
	if (file_exists("clones.txt")){
		var _file = file_text_open_read("clones.txt");
		var _json = file_text_read_string(_file);
		global.cloneData = json_parse(_json);
		file_text_close(_file);
		show_debug_message(global.cloneData);
	}
}