extends Resource
class_name DatatableHelper

## 是否采用异步加载
@export var is_async := true

## 加载数据表
func load_datatable(_table_path: StringName) -> Dictionary:
	return {}

## 数据格式化
func _parse_value(value: String, _type: String) -> Variant:
	return value
