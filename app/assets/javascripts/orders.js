
 var orderDisplay = function(data){
    console.log(data);

   // Data is visible here: http://localhost:3000/orders.json
   // An array of objects
    $(".clear_display").empty();



   for (var i = 0; i < data.length; i++) {
     var name = data[i].name;
     var address1 = data[i].address1;
     var status = data[i].status;
     var $li8 = $("<br>").text("");
     var $li = $("<li>").text("Name: " + name);
     var $li2 = $("<li>").text("Address: " + address1);
     var $li3 = $("<li>").text("Status: " + status);
     $(".clear_display").append($li8).append( $li ).append($li2).append($li3);
     for (var j = 0; j <data[i].items.length; j++){
     console.log( data[i] );

     var productName = data[i].items[j].product.product_name;
     var price = data[i].items[j].product.price;
     var quantity = data[i].items[j].quantity;
     var orderID = data[i].items[j].order_id;
     var total = quantity * price;  //hack for display -  may select multiple items - to be revisited
     var $li4 = $("<li>").text("Purchased " + quantity + " of " + productName + " items @ price of $ " + price + " for $ " + total + " on order_id " + orderID);
     
      $(".clear_display").append($li4);

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
  //  window.setInterval(function(){
  //    getOrderDisplay();
  //  }, 10000);


 };

 $(document).on("turbolinks:load", function(){
   $("#order_display").on("click", getOrderDisplay);
   $("#stop_live_orders").on("click", function(){
 console.log("testing once again");
  window.clearInterval(getOrderDisplay);});

 });
