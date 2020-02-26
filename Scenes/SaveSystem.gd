extends Node2D

var DisplayValue = 0
var save_pathway = "res://save-file.cfg"
var config = ConfigFile.new()
var load_response = config.load(save_pathway)

func _ready():
	pass

func saveValue(section, key):
	config.set_value(section, key, DisplayValue)
	config.save(save_pathway)
func loadValue(section, key):
	DisplayValue = config.get_value(section, key, DisplayValue)
