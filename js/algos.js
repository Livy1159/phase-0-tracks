var strings = ["long phrase", "longest phrase", "longer phrase"];

function longest_string(array){
	var length = 0;
	var longest;

	for(var i=0; i < array.length; i++){
    	if(array[i].length > length){
        	var length = array[i].length;
        	longest = array[i];
        	return longest;
    	}      
	} 


}



console.log(longest_string(strings));