
 var orderDisplay = function(data){
    console.log(data);

   // Data is visible here: http://localhost:3000/orders.json
   // An array of objects

   for (var i = 0; i < data.length; i++) {
     var name = data[i].name;
     var address1 = data[i].address1;
     var status = data[i].status;
     var $li = $("<li>").text("Name: " + name);
     var $li2 = $("<li>").text("Address: " + address1);
     var $li3 = $("<li>").text("Status: " + status);
     $(".clear").append( $li ).append($li2).append($li3);
     for (var j = 0; j <data[i].items.length; j++){
     console.log( data[i] );
    //  var name = data[i].name;
    //  var address1 = data[i].address1;
    //  var status = data[i].status;
     var productName = data[i].items[j].product.product_name;
     var price = data[i].items[j].product.price;
     var quantity = data[i].items[j].quantity;
     var total = quantity * price;  //hack for display -  may select multiple items - to be revisited
    //  var $li = $("<li>").text("Name: " + name);
    //  var $li2 = $("<li>").text("Address: " + address1);
    //  var $li3 = $("<li>").text("Status: " + status);
     var $li4 = $("<li>").text("Product Name: "+ productName);
     var $li5 = $("<li>").text("Price:  " + price);
     var $li6 = $("<li>").text("Quantity: "+ quantity);
     var $li7 = $("<li>").text("Total $" + total);
     var $li8 = $("<br>").text("");
      // document.body.innerText = "";
      $(".clear").append($li4).append($li5).append($li6).append($li7).append($li8);
      // $(".clear").append( $li ).append($li2).append($li3).append($li4).append($li5).append($li6).append($li7).append($li8);
    //  $("body").append( $li2 );

    // $(".clear").innerHTML = "";
     console.log( name );
     console.log(address1);
     console.log(status);
  }
}
 };


 var baseURL = "/orders";
 var getOrderDisplay = function(){

   $.ajax({
     url: baseURL,
     type: "GET",
     dataType: "JSON"
   }).done(orderDisplay);


 };



 $(document).on("turbolinks:load", function(){
   $("#order_display").on("click", getOrderDisplay);
 });
