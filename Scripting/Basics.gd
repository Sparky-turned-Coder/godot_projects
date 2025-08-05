@tool
extends EditorScript

var hero := "Frodo" # this is shorthand for >  var hero: string = "frodo"
var age = 24  # this is shorthand for > var age: int = 24

# var hero: string = "Frodo"    >>> this is 
# var age: int = 24

func _run() -> void:  # A colon after the cuntion indicates a 'code block' will follow
	#print("Hello, World.")
	print("\n...............")  # New line. we know this from python
	print(age)
	print()
	age = "richard"
	print(age)
	print(type_string(typeof(age)))
	
