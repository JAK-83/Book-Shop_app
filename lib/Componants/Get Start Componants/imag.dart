import 'package:flutter/cupertino.dart';
import 'package:project_01/Utills/imagess.dart';
class img extends StatelessWidget {
  const img({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: const EdgeInsets.only( left: 60, right: 30),
            child:  Container(
              height: MediaQuery.of(context).size.height*.33,
              width: MediaQuery.of(context).size.width*.8,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                 image: DecorationImage(
                  image: AssetImage(Pics_collection.appIconpic),
           
                 fit: BoxFit.fill)
              ),
            ),
            
            //Image.network("https://www.designmantic.com/blog/wp-content/uploads/2020/01/Seafood-Restaurant-Logos-718x300.jpg",)  
            
          );
  }
}