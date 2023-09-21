import 'package:flutter/material.dart';
import '../../data/home_scr_data/data_base.dart';

class search_barr_scr extends StatefulWidget {
  final VoidCallback ooontap;

  const search_barr_scr({
    Key? key,
    required this.ooontap,
  }) : super(key: key);

  @override
  State<search_barr_scr> createState() => _search_barr_scrState();
}

class _search_barr_scrState extends State<search_barr_scr> {
  TextEditingController searchController = TextEditingController();
  List<Map<String, dynamic>> filteredData = [];

  @override
  void initState() {
    filteredData = Dataa.Shop_data; // Initialize with all data.
    super.initState();
  }
void filterData(String query) {
  setState(() {
    if (query.isEmpty) {
      filteredData = Dataa.Shop_data; // Show all data when query is empty.
    } else {
      // Filter shops based on shopName or books based on BookName.
      filteredData = Dataa.Shop_data
          .where((shopData) {
            final shop = shopData.values.first;
            final shopName = shop['shopName']?.toString().toLowerCase() ?? '';
            final List<dynamic>? books = shop['Books'];
            if (shopName.contains(query.toLowerCase())) {
              return true; // Match shop name.
            } else if (books != null) {
              return books.any((book) =>
                  (book?['BookName']?.toString()?.toLowerCase() ?? '')
                      .contains(query.toLowerCase())); // Match book name.
            }
            return false;
          })
          .toList();

      // Print the filtered data for debugging.
      // print('Query: $query');
      // print('Filtered Data: $filteredData');
      print('Filtered Data Length: ${filteredData.length}');
    }
  });
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 50,
          ),
          Container(
            margin: EdgeInsets.only(left: 10),
            padding: EdgeInsets.only(left: 28),
            height: MediaQuery.of(context).size.height * 0.070,
            width: MediaQuery.of(context).size.width * 0.94,
            decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(28)),
            child: Row(
              children: [
                Icon(
                  Icons.search,
                  size: 20,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  height: 30,
                  width: 250,
                  child: TextField(
                    controller: searchController,
                    onChanged: filterData,
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      hintText: 'Search',
                      suffixIcon: InkWell(
                        onTap: () {
                          searchController.clear();
                          filterData('');
                        },
                        child: Icon(Icons.cancel),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
  child: Builder(
    builder: (BuildContext context) {
    return filteredData.isNotEmpty
      ?  ListView.separated(
            itemCount: filteredData.length,
            separatorBuilder: (context, shopIndex) => Divider(),
            itemBuilder: (context, shopIndex) {
              final shop = filteredData[shopIndex];
               final shopName = shop['shopName'];
              final List<dynamic>? books = shop['Books'];
               print('Building ListView for shop: ${filteredData[shopIndex]["shopName"]}');
             // print('Building ListView for shop: ${filteredData[shopIndex]["shopName"]}'); 
             // print('Shop data: $shop'); // Add this line for debugging
             print('Shop Name: $shopName'); // Add this line for debugging
              if (books != null && books.isNotEmpty) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                          filteredData[shopIndex]['shopName'] ,// shop['shopName'],
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: ClampingScrollPhysics(),
                      itemCount: books.length,
                      itemBuilder: (context, bookIndex) {
                        
                        final book = books[bookIndex];
                        
                        return ListTile(
                          leading: Image.network(
                            book['Book_Cover_url'],
                            width: 50,
                            height: 80,
                            fit: BoxFit.cover,
                          ),
                          title: Text(book['BookName']),
                          subtitle: Text(book['Author']),
                        );
                      },
                    ),
                  ],
                );
              }
              return SizedBox(); // Return an empty container if no books found.
            },
          )
        : Center(
            child: searchController.text.isEmpty
                ? Icon(
                    Icons.search,
                    size: 100.0,
                    color: Colors.grey,
                  )
                : Text(
                    '🤔\nData not Found',
                    style: TextStyle(fontSize: 25),
                  ),
    );
  }),
),
        ],
      ),
    );
  }
}