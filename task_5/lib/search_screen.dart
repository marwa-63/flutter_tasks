import 'package:flutter/material.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'display_category.dart';
 


class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  var sliderValue =2000.0;
  String? _selectedItem="laptops";
  final dropDownKey = GlobalKey<DropdownSearchState>();
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Search"),
        backgroundColor: Colors.blue,
      ),

      body:Container(

        

        child: Column(

          children: [

            Container(
              
              width: double.infinity,
              height: 50,
              margin: EdgeInsets.all(5),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(flex:4, 
                  child:DropdownSearch <String>(
              
                    key:dropDownKey,
                    selectedItem: _selectedItem,
                    items: (filter, loadProps) => ["laptops","mobiles","computers","Tv"],
              
                    decoratorProps: DropDownDecoratorProps(
                      decoration: InputDecoration(
                        label:Text("choose category"),
                        focusColor: Colors.blue,
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 2,color: Colors.blue)
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 2,color: Colors.grey)
                        )
                      )
              
                    ),
                    popupProps: PopupProps.menu(
                      constraints: BoxConstraints(maxHeight: 200)
                    ),
              
                    onChanged: (value) => _selectedItem=value,
              
                  )
                  ),
              
                  //** filter button **/
                  Expanded(
                    flex:1,
                    child: InkWell(
              
                      onTap: () {
                        
                        showModalBottomSheet(
                          context: context, builder: (context){
                            return StatefulBuilder(
                              builder: (context,setState){
                                return Column(
                              spacing: 1,
                              children: [
                                Container(
                                  margin:EdgeInsets.only(top:20),
                                  child: Text("Price Range (\$)", style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),)
                                  ),
                                ListTile(
                                  leading: Text("10\$"),
                                  trailing: Text("${sliderValue.toInt()}\$"),
                                ),
              
                                
                                Slider(
                                  min:10.0,
                                  max:2000.0,
                                  value: sliderValue, 
                                  onChanged:(val){
                                    setState(() =>  sliderValue=val);
                                  },
                                  activeColor: Colors.blue,
                                  ),
              
                                  ListTile(
                                    trailing: ElevatedButton(onPressed: (){Navigator.pop(context);}, child: Text("ok",style: TextStyle(color: Colors.blue),)),
                                  )
                              ],
                            );
              
                              }
                              );
                          },//builder
                          constraints: BoxConstraints.tight(Size(500, 250)),
                          
                          ); //show modal sheet
                          
                      } /* ontap*/,
              
                      child:Container(
                        margin: EdgeInsets.only(left:7),
                        decoration: BoxDecoration(
                          border: Border.all(width: 1,color:Colors.grey),
                          borderRadius: BorderRadius.circular(15)
                        ),
                        child:Column(
                          children: [
                            Icon(Icons.filter_list),
                            Text("Filter"),
                          ],
                        )
              
                      )
                    )
                    )
              
                ],
              ),
            ), 
            Center(
              child:FilledButton(
                onPressed: (){
                 Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DisplayCategory(category:_selectedItem, price:sliderValue) ) );
                }, 
                style: FilledButton.styleFrom(
                  backgroundColor: Colors.blue
                ),
                child:Text("Ok"))
            )
          ],
        ),
      ),


    );
  }
}