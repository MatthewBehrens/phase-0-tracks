/*	define new method called reverse
		declare new variable to hold reversed string
		create a loop that goes through the orignal string
			for each letter in the string minus 1 
			take the last letter of the string and add it to the reversed string
		return the reversed string
*/

function reverse(string) {
  var reverse = '';
  for (var index = string.length - 1 ; index >= 0; index--)
    reverse += string[index];
  return reverse;
}

if (1 == 1){
	console.log(reverse("hello"))
}
