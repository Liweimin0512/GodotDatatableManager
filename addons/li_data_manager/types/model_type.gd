extends Resource
class_name ModelType

## 数据模型类型

## 数据模型名称，ID
@export var model_name: StringName
## 数据模型对应GD脚本
@export var model_script: GDScript
## 数据模型对应数据表（一对多）
@export var tables: Array[TableType] = []

func _init(name: StringName = "", script: GDScript = null, table_types: Array[TableType] = []) -> void:
	model_name = name
	model_script = script
	tables = table_types
