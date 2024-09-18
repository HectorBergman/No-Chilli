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

function loadAllData(){
	if (file_exists("save.txt")){
		var _file = file_text_open_read("save.txt");
		file_text_close (_file);
	}
}