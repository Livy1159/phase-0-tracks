function reverse(str) {
	var new_str = ''; //create empty string for new reversed string
	for (var i = str.length - 1; i>= 0; i--) //moves each letter back on position (decrement)
		new_str += str[i]; 
	return new_str;
}

if (1 == 1) {
console.log(reverse("olivia")); }


