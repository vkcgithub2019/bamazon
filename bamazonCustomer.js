var mysql = require("mysql");
var inquirer = require("inquirer");

var connection = mysql.createConnection({
  host     : "localhost",
  port     :3306,
  user     : "root",
  password : "",
  database: "bamazon"
});

connection.connect(function(err) {
  if (err) {
    console.error('error connecting: ' + err.stack);
    return;
  }

  console.log('connected as id ' + connection.threadId);
});

var displayProducts = function(){
    var query = "SELECT * FROM products";
      connection.query(query, function(err,res) {
        if (err) throw err;
        
    
    console.table(res);
    
        purchasePrompt();        
  });
}
displayProducts();



// prompting the user for purchase item and quantity
function purchasePrompt(){
    inquirer.prompt([{
        name: "ID",
        type: "input",
        message: "Please enter the item_id of product to purchase.",
        /* filter:Number, */
        validate: function(value) {
            if ((!isNaN(value)) && (value >=1) && (value<=10)){
              return true;
            }else{
              console.log ('\nPlease enter a valid ID');
              return false;
            }
              
        }
        
    }, {
      name: "Quantity",
      type: "input",
      message:"Please enter the purchase quantity.",
      
      validate: function(value) {
        if (isNaN(value) === false){
          return true;
        }else{
          console.log ('\nPlease enter a valid quantity');
          return false;
        }
                
        }
    }]).then(function(answers){
          var quantityNeeded = answers.Quantity;
          var IDrequested = answers.ID;

          purchaseOrder(IDrequested,quantityNeeded);

    });
};    
   
//processing customer's order and checking if stock is available. 
function purchaseOrder(ID, amtNeeded){
    connection.query("SELECT * FROM products WHERE item_id = " + ID, function(err,res){

      if (err){console.log(err)};
       console.log(amtNeeded);
      if(amtNeeded <= res[0].stock_quantity){

          var totalCost = res[0].price * amtNeeded;
          console.log("This product is in stock");
          
          console.log("Your total for " + amtNeeded + " " + res[0].product_name + " is $" + totalCost + " Thank you!" + '\n');
          var newQuantity = res[0].stock_quantity - amtNeeded;
          connection.query("UPDATE products SET stock_quantity = "+ newQuantity + " WHERE item_id = " + ID);
          

      }
      

      else{
        console.log("We are sorry, we do not have enough quantity of " + res[0].product_name + " to complete your order");
      };
        displayProducts();

      });
      /* console.log("Do you want to make more purchase?") */

      
};


