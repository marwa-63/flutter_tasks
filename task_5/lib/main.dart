import 'package:flutter/material.dart';
import 'search_screen.dart';
 
 
void main() {
  runApp( MyApp());
}

 class MyApp extends StatelessWidget
 {
  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      home: Home()
      );
  }
   
 }

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
 List products=[
    {"photo":"images/asus.jpg","name":"Asus laptop","category":"laptops","price":1000,"rating":5,"description":"Business Laptop, Intel Core i7-8665u 3.2GHz, 16GB RAM, 256GB SSD, 14 FHD (1920x1080), Backlit Keyboard, Windows 10 Pro"},
    {"photo":"images/asus1.jpg","name":"Asus laptop","category":"laptops","price":900,"rating":4.5,"description":"Business Laptop, Intel Core i7-8665u 3.2GHz, 16GB RAM, 256GB SSD, 14 FHD (1920x1080), Backlit Keyboard, Windows 10 Pro"},
    {"photo":"images/dell.jpg","name":"Dell laptop","category":"laptops","price":1000,"rating":4,"description":"Business Laptop, Intel Core i7-8665u 3.2GHz, 16GB RAM, 256GB SSD, 14 FHD (1920x1080), Backlit Keyboard, Windows 10 Pro"},
    {"photo":"images/dell1.jpg","name":"Dell laptop","category":"laptops","price":1000,"rating":4.5,"description":"Business Laptop, Intel Core i7-8665u 3.2GHz, 16GB RAM, 256GB SSD, 14 FHD (1920x1080), Backlit Keyboard, Windows 10 Pro"},
    {"photo":"images/hp.jpg","name":"Hp laptop","category":"laptops","price":1000,"rating":3,"description":"Business Laptop, Intel Core i7-8665u 3.2GHz, 16GB RAM, 256GB SSD, 14 FHD (1920x1080), Backlit Keyboard, Windows 10 Pro"},
    {"photo":"images/msi.jpg","name":"MSI laptop","category":"laptops","price":1000,"rating":3.5,"description":"Business Laptop, Intel Core i7-8665u 3.2GHz, 16GB RAM, 256GB SSD, 14 FHD (1920x1080), Backlit Keyboard, Windows 10 Pro"},
    {"photo":"images/samsung.jpg","name":"Samsung mobile","category":"mobiles","price":300,"rating":3.5,"description":" Android Smartphone, 128GB Storage, 8GB RAM, Awesome Graphite, 6x OS Upgrades, Large Display, Long Battery Life 1 Year Warranty/Local Version"},
    {"photo":"images/samsung1.jpg","name":"Samsung mobile","category":"mobiles","price":300,"rating":3.5,"description":" Android Smartphone, 128GB Storage, 8GB RAM, Awesome Graphite, 6x OS Upgrades, Large Display, Long Battery Life 1 Year Warranty/Local Version"},
    {"photo":"images/samsung2.jpg","name":"Samsung mobile","category":"mobiles","price":300,"rating":3.5,"description":" Android Smartphone, 128GB Storage, 8GB RAM, Awesome Graphite, 6x OS Upgrades, Large Display, Long Battery Life 1 Year Warranty/Local Version"},
    {"photo":"images/iphone.jpg","name":"Apple iphone","category":"mobiles","price":900,"rating":3.5,"description":" Apple iPhone 16 Pro (128 GB) - Natural Titanium with Face ID | Tax Paid | 2 Years Official Warranty"},
    {"photo":"images/iphone1.jpg","name":"Apple iphone","category":"mobiles","price":900,"rating":3.5,"description":" Apple iPhone 16 Pro (128 GB) - Natural Titanium with Face ID | Tax Paid | 2 Years Official Warranty"},
    {"photo":"images/iphone3.jpg","name":"Apple iphone","category":"mobiles","price":900,"rating":3.5,"description":" Apple iPhone 16 Pro (128 GB) - Natural Titanium with Face ID | Tax Paid | 2 Years Official Warranty"},
    {"photo":"images/iphone2.jpg","name":"Apple iphone","category":"mobiles","price":900,"rating":3.5,"description":" Apple iPhone 16 Pro (128 GB) - Natural Titanium with Face ID | Tax Paid | 2 Years Official Warranty"},



  ];
  
  @override
  Widget build(BuildContext context) {
    return  Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("Home"),
        ),
       
           
        
          body:
          SizedBox(
            width: double.infinity,
            height: double.infinity,

            child: GridView.builder(
              itemCount: products.length,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: () {
                    showModalBottomSheet(context: context, 
                    builder: (context){
                      return Padding(
                        padding: const EdgeInsets.all(8),
                        child: Center(child: Text("${products[index]["description"]}",style: TextStyle(),)),
                      );
                    },
                    constraints: BoxConstraints.expand(width: 300,height: 170),
                    
                    );
                  },

                  child: Container(

                    margin: EdgeInsets.all(10),
                    
                    color:Colors.grey[100],
                    child: Column(
                      
                      children: [
                    
                        Container(
                          width: 100,
                          height: 100,
                          child:Image.asset(products[index]["photo"] , fit:BoxFit.contain)
                        ),
                    
                        Text("${products[index]["name"] }",
                        style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                  
                        Text("${products[index]["price"]}\$"),
                  
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(products[index]["rating"] >=1 ? Icons.star :Icons.star_half,color:Colors.amber),
                  
                            // second star cases //
                            if(products[index]["rating"] ==1)
                            Icon(Icons.star_border_outlined,color:Colors.amber)
                            else if(products[index]["rating"] ==1.5)
                            Icon(Icons.star_half,color:Colors.amber)
                            else
                            Icon(Icons.star,color:Colors.amber)
                             ,
                  
                              // third star cases //
                            if(products[index]["rating"] <=2)
                            Icon(Icons.star_border_outlined,color:Colors.amber)
                            else if(products[index]["rating"] ==2.5)
                            Icon(Icons.star_half,color:Colors.amber)
                            else
                            Icon(Icons.star,color:Colors.amber),
                  
                            // fourth star cases //
                            if(products[index]["rating"] <=3)
                            Icon(Icons.star_border_outlined,color:Colors.amber)
                            else if(products[index]["rating"] ==3.5)
                            Icon(Icons.star_half,color:Colors.amber)
                            else
                            Icon(Icons.star,color:Colors.amber),
                  
                            // fifth star cases //
                            if(products[index]["rating"] <=4)
                            Icon(Icons.star_border_outlined,color:Colors.amber)
                            else if(products[index]["rating"] ==4.5)
                            Icon(Icons.star_half,color:Colors.amber)
                            else
                            Icon(Icons.star,color:Colors.amber),
                  
                          ],
                        ),
                        FilledButton
                        (
                          onPressed: ( ){
                           showDialog(context: context, 
                           builder: (context){

                            return AlertDialog(
                              title: Text("Confirm Adding"),
                              content: Text("Are you sure you want to add this product to cart?"),

                              actions: [

                              TextButton(
                              onPressed: () => Navigator.pop(context),
                             child: Text("Cancel",style: TextStyle(color: Colors.blue),),
                             
                              ),

                            FilledButton(
                              onPressed: () {
                              Navigator.pop(context); // Close dialog
                            ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text("Product added!")),
                            );
                            },
                            style: FilledButton.styleFrom(backgroundColor: Colors.blue),
                         child: Text("Add"),
                           ),

                           ],

                            );
                           }
                           );
                        },
                        style: FilledButton.styleFrom(
                          backgroundColor: Colors.blue
                        ), 
                        child: Text("Add To Cart"),
                        )
                       
                    
                      ],
                    ),
                  ),
                );
                },
               gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 0.8 ),
              
              ),
          ),

          floatingActionButton:FloatingActionButton(
            onPressed: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SearchScreen())),
            backgroundColor: Colors.blue,
            child: Icon(Icons.search,color: Colors.white,),
         
          
          ) ,
        ),
    );
    
  }
}
