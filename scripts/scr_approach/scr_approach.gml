/// approach(val1, val2, amount)
/// @ description approach(val1, val2, amount)
/// @param val1
/// @param val2
/// @param amount
function scr_approach(val1, val2, amount){
	if(val1 < val2){
		val1 += amount;
		if(val1 > val2){
			return val2;
		}
	}
	else{
		val1 -= amount;
		if(val1 < val2){
			return val2;
		}
	}
	return val1;
}