// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Inventory() constructor{
	_inventory_items = [];
	
	///@param name
	///@param quantity
	///@param sprite
	///@param desc
	///@param effect
	item_set = function(_name, _quantity, _sprite, _desc, _effect) {
		array_push(_inventory_items, {
			name: _name,
			quantity: _quantity,
			sprite: _sprite,
			desc: _desc,
			effect: _effect
		});
	}
	
	item_find = function(_name) {
		for (var i = 0; i < array_length(_inventory_items); i++) {
			if(_name == _inventory_items[i].name) {return i;}
		}
		
		return -1;
	}
	
	item_add = function(_name, _quantity ,_sprite, _desc, _effect){
		var index = item_find(_name);
		
		if(index >= 0) {
			_inventory_items[index].quantity += _quantity;
		} else {
			item_set(_name, _quantity, _sprite, _desc, _effect);
		}
		
	}
	
	item_has = function(_name, _quantity){
		var index = item_find(_name);
		
		if(index >= 0) {
			return _inventory_items[index].quantity >= _quantity;
		}
		
		return false;
	}
	
	item_amount = function(_name){
		var index = item_find(_name);
		
		if(index >= 0){
			return _inventory_items[index].quantity
			}
		
		return 0
	
	}
	
	
	item_subtract = function(_name, _quantity){
		var index = item_find(_name);
		
		if(index >= 0) {
			if (item_has(_name, _quantity)) {
				_inventory_items[index].quantity -= _quantity;
				
				if (_inventory_items[index].quantity <= 0) {
					item_remove(index);
					
				}
			
			}
			
		}
		
	}
	
	item_remove = function(_index){	
		array_delete(_inventory_items, _index, 1);
	}	
	
	item_get = function() {
		return (_inventory_items)
		
	}
	
	to_string = function() {
		return json_stringify(_inventory_items);
	}
	
}





