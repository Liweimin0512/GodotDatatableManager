extends Node2D

#const AXE = preload("res://example/item_model/axe.tres")
const ITEM_TABLE_TYPE = preload("res://example/table_types/item_table_type.tres")
const EQUIP_TABLE_TYPE = preload("res://example/table_types/equip_table_type.tres")
const ITEM_MODEL_TYPE = preload("res://example/model_types/item_model_type.tres")

func _ready() -> void:
	#print(AXE.item_name, ":", AXE.item_description)
	var wood: ItemModel = ItemModel.new("wood", "木头", "我恨你是块木头！", 20)
	wood.amount = 12
	print(wood.item_name, ":", wood.item_description)
	print(wood.item_name, ":", wood.amount)
	ResourceSaver.save(wood, "res://example/item_model/wood.tres")
	wood = load("res://wood.tres")
	print(wood.item_name, ":", wood.amount)

	DatatableManager.load_datatable(ITEM_TABLE_TYPE)
	DatatableManager.load_datatable(EQUIP_TABLE_TYPE)
	
	DatatableManager.load_data_model(ITEM_MODEL_TYPE)
	print(DatatableManager.get_datatable_row("item", "test"))
	print(DatatableManager.get_datatable_row("equip", "sword"))
	var sword : ItemModel = DatatableManager.get_data_model("item", "sword")
	print(sword.item_name, ":", sword.item_description)
