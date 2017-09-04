// BUSINESS LOGIC

var names = ["Buster", "Princess Fluffyhooves", "Minxy", "Ed"];
var colors = ["pink", "orange", "yellow", "green"];

names.push("Buttercup")
colors.push("blue")

var barn = {};
for (var i = 0; i < colors.length; i++) {
barn[names[i]] = colors[i]; 
}

// DRIVER CODE

console.log(barn)

// BUSINESS LOGIC

function Car(make, model, color) { 
    this.make = make; 
    this.model = model; 
    this.color = color;

this.revs_engine = function() { 
    console.log("Skrrrt!"); };
}

console.log("Initialization complete");

var car = new Car("Tesla", "Model 3", "red"); 
console.log(car);
car.revs_engine();