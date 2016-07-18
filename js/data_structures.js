var colors = ["blue", "green", "purple", "pink"]
var names = ["Ed", "Susy", "Connor", "Frank"]
colors.push("brown")
names.push("Gretchen")
console.log(colors)
console.log(names)
var horses = {} 
if (colors.length == names.length) 
{
	for (var i = 0; i < colors.length; i++) 
	{
		horses[names[i]] = colors[i]
	}
} 
else 
{
	console.log("arrays must be the same length")
}
console.log(horses)

function Car(model, speed)
{
	console.log("New Car:", this)
	this.model = model
	this.speed = speed

	this.accelerate = function()
	{
		console.log("Car speeds up");
	};
}
var anotherCar = new Car("Ford", 28);
console.log(anotherCar)