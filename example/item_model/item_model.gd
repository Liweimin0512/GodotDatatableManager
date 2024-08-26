extends Resource
class_name ItemModel

## 道具ID
@export var ID : StringName
## 道具名称
@export var item_name: StringName
## 道具描述
@export var item_description: String
## 最大堆叠个数
@export var max_stack: int = 1
## 当前数量
@export_storage var amount : int = 1

func _init(ID : StringName = "", item_name: StringName = "", \
		item_description: String = "", max_stack: int = 1) -> void:
	self.ID = ID
	self.item_name = item_name
	self.item_description = item_description
	self.max_stack = max_stack
