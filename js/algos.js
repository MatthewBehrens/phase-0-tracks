/* 
FIND LONGEST PHRASE
create a loop that goes through the given array
		in the loop find the length of the string given
		if the length of the word given is larger than previous
			store that word in a variable/overwrite the previous variable
		otherwise do nothing
*/

function longestPhrase(array)
{
	var word = '';
	for (i = 0; i < array.length; i++)
	{
		if (array[i].length > word.length)
		{
			word = array[i];
		}
	}
	return word
}

function key_match(obj1, obj2)
{
	var obj1Keys = Object.keys(obj1).sort();
	var obj2Keys = Object.keys(obj2).sort();
	for (l = 0; l < obj1Keys.length; l++ )
	{
		if (obj1Keys[l] == obj2Keys[l])
		{
			var obj1Values = Object.keys(obj1)[obj1Keys[l]]
			var obj2Values = Object.keys(obj2)[obj2Keys[l]]
			if (obj1Values == obj2Values)
			{
				return true;
			}
			else
			{
				return false;
			}
		}
	}
	
}
/*
GENERATE DATA
create an empty array to store words
make a list of all the possible letters to use
create a loop for the amount of words to generate in the array
	in the loop make a holder variable for the word and generate a random number to make the word that length
	create another loop for the length of the word using the random number
		use the list of possible letters and a random number generator to add to the word
	end second loop
	add the word to the array
end first loop
return the array
*/
function generate_data(int)
{
	var word_array = [];
	var possible = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";

	for (i = 0; i < int; i++)
	{
		var word = "";
		random = Math.floor((Math.random() * ((10 - 1) + 1)) + 1);
		for (j = 0; j < random; j++)
		{
			word += possible.charAt(Math.floor(Math.random() * possible.length));
		}
		word_array.push(word);
	}
	return word_array;
}

/* 
FIND KEY VALUE MATCH
*/




//================================================================
// 	 	DRIVER CODE	BELOW
//		Longest Phrase
//================================================================
var phrase = ["long phrase","longest phrase","longer phrase"];
console.log(longestPhrase(phrase));
console.log(longestPhrase(["one", "two", "three", "four"]));

//=================================================================
//			Key-Value Match
//=================================================================
console.log(key_match({name: "Steven", age: 54},{name: "Tamir", age: 54}))
console.log(key_match({name: "Steven", age: 54},{name: "Tamir", age: 50}))


//=================================================================
//			Generate Test Data
//=================================================================
console.log(generate_data(3));
for (k = 0; k < 10; k++)
{
	var gen_array = generate_data(4);
	console.log(gen_array);
	var longest = longestPhrase(gen_array);
	console.log(longest);
}


