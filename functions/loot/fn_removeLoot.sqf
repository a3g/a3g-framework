_unit = _this select 0;

// Mode: 1 = remove weapons only, 2 = remove everything
_mode = "A3G_Template_RemoveLoot" call bis_fnc_getParamValue;

switch (_mode) do {
    case 1: {
    	removeAllWeapons _unit;
    };
    case 2: {
    	removeAllWeapons _unit;
    	removeAllItems _unit;
    	_unit unlinkItem "ItemGPS";
        _unit unlinkItem "ItemMap";
        _unit unlinkItem "ItemRadio";
        _unit unlinkItem "ItemWatch";
        _unit unlinkItem "ItemCompass";
        _unit unlinkItem ( hmd _unit );
	};
};