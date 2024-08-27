extends DatatableHelper
class_name JSONHelper

## 加载JSON文件

## 加载数据表
func load_datatable(table_path: StringName) -> Dictionary:
	var file := FileAccess.open(table_path, FileAccess.READ)
	var ok := FileAccess.get_open_error()
	if ok != OK: push_error("未能正确打开文件！")
	var json_text := file.get_as_text()
	file.close()
	var json := JSON.parse_string(json_text)
	if json.error == OK:
		return json.result
	return {}
