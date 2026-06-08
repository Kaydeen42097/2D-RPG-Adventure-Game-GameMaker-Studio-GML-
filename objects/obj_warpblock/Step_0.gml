if place_meeting(x,y,collider) && !instance_exists(obj_warp) //! means not
	{
	var _inst = instance_create_depth(0,0,-9999,obj_warp);
	_inst.targetx = targetx;
	_inst.targety = targety;
	_inst.targetrm = targetrm;
	_inst.targetface = targetface;
	}
