// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Party() constructor{
	_party_members = [];
	
	party_set = function(_name, _sprite, _hp, _hp_max, _sp, _sp_max, _lv) {
		array_push(_party_members, {
			name: _name,
			sprite: _sprite,
			hp: _hp,
			max_hp: _hp_max,
			sp: _sp,
			max_sp: _sp_max,
			lvl: _lv
			
		});
	}
	
	///@param name
	///@param sprite
	///@param hp
	///@param max_hp
	///@param sp
	///@param max_sp
	party_add = function(_name, _sprite, _hp, _hp_max, _sp, _sp_max, _lv){
		party_set(_name, _sprite, _hp, _hp_max, _sp, _sp_max, _lv);
		}
		
	
	party_find = function(_name) {
		for (var i = 0; i < array_length(_party_members); i++) {
			if(_name == _party_members[i].name) {return i;}
		}
		
		return -1;
	}
	
	party_subtract = function(_name){
		var _index = party_find(_name);
		party_remove(_index);
	}			
	
	party_remove = function(_index){	
		array_delete(_party_members, _index, 1);
	}	
	
	party_get = function() {
		return (_party_members)
	
	}
	
	///@param name
	///@param amount
	lvl_increase = function(_name, _amount){ //can add more params for increasing max stuff each lvl up
		var _index = party_find(_name);
		_party_members[_index].lvl += _amount;
	}
	
	///@param name
	///@param amount
	///@param type["+", "-"]
	hp_change = function(_name, _amount, _type){ //add another function which checks if hp is less than max, makes character faint
		var _index = party_find(_name);
		if _type == "+"{
			_party_members[_index].hp += _amount
			if _party_members[_index].hp >= _party_members[_index].max_hp{
				_party_members[_index].hp = _party_members[_index].max_hp
				}
			}
		if _type == "-"{
			_party_members[_index].hp -= _amount
			}	
	}
	
	sp_change = function(_name, _amount, _type){
		var _index = party_find(_name);
		if _type == "+"{
			_party_members[_index].sp += _amount
			if _party_members[_index].sp >= _party_members[_index].max_sp{
				_party_members[_index].sp = _party_members[_index].max_sp
				}
			}
		if _type == "-"{
			_party_members[_index].sp -= _amount;
			}	
	}
		
		
	
}





