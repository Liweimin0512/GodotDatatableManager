extends Resource
class_name TableType

## 数据表类型

## 表名称
@export var table_name : StringName
## 表路径（一个表可对应多个路径）
@export_file var table_paths: Array[String]

func _init(name: StringName = "", paths : Array[String] = []) -> void:
	self.table_name = name
	self.table_paths = paths
