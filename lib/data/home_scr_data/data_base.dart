
// ignore: unused_import
import 'package:project_01/Utills/def_colors.dart';

import '../../Utills/imagess.dart';

class Dataa{
// Define a method to add items to addtocart_data
 

static String query='';


  static  List <Map<String, dynamic>> Shop_data=[


{
      "shop01": {
        "shopName": "Royal Book Store",
        "shopCategot": "Coding",
        "shop_pic_img_url": Pics_collection.discount_pic01,
        "adress": {
          'address': 'Tarique Road',
          "city": 'Karachi'
        },
        "Books": [
          {
            'BookName': 'C++',
            'Auther': 'xyz',
            'Eddition': '2023',
            'quantity': 1,
            'price': 780,
            'detail':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'aboutAuthor':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'reviews':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'regularPrice': 1200,
            'percentOff': 35,
            'BookCategory': 'Coding',
            'BookLevel': 'Bigner',
            "Book_Cover_url": Pics_collection.shop01_book01_cplus_cover_url,
            "Book_other_01_img_url": Pics_collection.shop01_book01_cplus_pic02,
            "Book_other_02_img_url": Pics_collection.shop01_book01_cplus_pic03,
          },
          {
            'BookName': 'C',
            'Auther': 'xyz',
            'Eddition': '2023',
            'price': 420,
            'quantity': 1,
            'detail':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'aboutAuthor':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'reviews':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'regularPrice': 700,
            'percentOff': 40,
            'BookCategory': 'Coding',
            'BookLevel': 'Bigner',
            "Book_Cover_url": Pics_collection.shop01_book02_cplus_cover_url,
            "Book_other_01_img_url": Pics_collection.shop01_book02_cplus_pic02,
            "Book_other_02_img_url": Pics_collection.shop01_book02_cplus_pic03,
          },
          {
            'BookName': 'java',
            'Auther': 'xyz',
            'Eddition': '2023',
            'price': 1050,
            'quantity': 1,
            'detail':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'aboutAuthor':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'reviews':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'regularPrice': 1500,
            'percentOff': 30,
            'BookCategory': 'Coding',
            'BookLevel': 'Bigner To Expert',
            "Book_Cover_url": Pics_collection.Book_Cover_url_shop01,
            "Book_other_01_img_url": Pics_collection.discount_pic01,
            "Book_other_02_img_url": Pics_collection.discount_pic01,
          },
          {
            'BookName': 'C#',
            'Auther': 'xyz',
            'Eddition': '2023',
            'price': 720,
            'quantity': 1,
            'detail':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'aboutAuthor':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'reviews':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'regularPrice': 900,
            'percentOff': 20,
            'BookCategory': 'Coding',
            'BookLevel': 'Bigner To Expert',
           "Book_Cover_url": Pics_collection.Book_Cover_url_shop01,
            "Book_other_01_img_url": Pics_collection.discount_pic01,
            "Book_other_02_img_url": Pics_collection.discount_pic01,
          },
          {
            'BookName': 'Flutter',
            'Auther': 'xyz',
            'Eddition': '2023',
            'price': 810,
            'quantity': 1,
            'detail':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'aboutAuthor':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'reviews':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'regularPrice': 900,
            'percentOff': 10,
            'BookCategory': 'Coding',
            'BookLevel': 'Bigner To Expert',
            "Book_Cover_url": Pics_collection.Book_Cover_url_shop01,
            "Book_other_01_img_url": Pics_collection.discount_pic01,
            "Book_other_02_img_url": Pics_collection.discount_pic01,
          },
          /////old books can be use in discount or anywhere
          {
            'BookName': 'C++',
            'Auther': 'xyz',
            'Eddition': '2009',
            'price': 60,
            'quantity': 1,
            'detail':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'aboutAuthor':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'reviews':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'regularPrice': 1200,
            'percentOff': 50,
            'BookCategory': 'Coding',
            'BookLevel': 'Bigner',
            "Book_Cover_url": Pics_collection.Book_Cover_url_shop01,
            "Book_other_01_img_url": Pics_collection.discount_pic01,
            "Book_other_02_img_url": Pics_collection.discount_pic01,
          },
          {
            'BookName': 'C',
            'Auther': 'xyz',
            'Eddition': '2004',
            'price': 280,
            'quantity': 1,
            'detail':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'aboutAuthor':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'reviews':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'regularPrice': 700,
            'percentOff': 60,
            'BookCategory': 'Coding',
            'BookLevel': 'Bigner',
            "Book_Cover_url": Pics_collection.Book_Cover_url_shop01,
            "Book_other_01_img_url": Pics_collection.discount_pic01,
            "Book_other_02_img_url": Pics_collection.discount_pic01,
          },
          {
            'BookName': 'java',
            'Auther': 'xyz',
            'Eddition': '2010',
            'price': 525,
            'quantity': 1,
            'detail':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'aboutAuthor':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'reviews':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'regularPrice': 1500,
            'percentOff': 65,
            'BookCategory': 'Coding',
            'BookLevel': 'Bigner To Expert',
            "Book_Cover_url": Pics_collection.Book_Cover_url_shop01,
            "Book_other_01_img_url": Pics_collection.discount_pic01,
            "Book_other_02_img_url": Pics_collection.discount_pic01,
          },
          {
            'BookName': 'C#',
            'Auther': 'xyz',
            'Eddition': '2015',
            'price': 405,
            'quantity': 1,
            'detail':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'aboutAuthor':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'reviews':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'regularPrice': 900,
            'percentOff': 55,
            'BookCategory': 'Coding',
            'BookLevel': 'Bigner To Expert',
            "Book_Cover_url": Pics_collection.Book_Cover_url_shop01,
            "Book_other_01_img_url": Pics_collection.discount_pic01,
            "Book_other_02_img_url": Pics_collection.discount_pic01,
          },
          {
            'BookName': 'Flutter',
            'Auther': 'xyz',
            'Eddition': '2021',
            'price': 558,
            'quantity': 1,
            'detail':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'aboutAuthor':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'reviews':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'regularPrice': 900,
            'percentOff': 38,
            'BookCategory': 'Coding',
            'BookLevel': 'Bigner To Expert',
            "Book_Cover_url": Pics_collection.Book_Cover_url_shop01,
            "Book_other_01_img_url": Pics_collection.discount_pic01,
            "Book_other_02_img_url": Pics_collection.discount_pic01,
          },
        ],
        
      }
    },
    {
      "shop02": {
        "shopName": "JAK Book Store",
        "shopCategot": "Coding",
        "shop_pic_img_url": Pics_collection.discount_pic01,
        "adress": {'address': 'Tarique Road', "city": 'Karachi'},
        "Books": [
          {
            'BookName': 'C++',
            'Auther': 'xyz',
            'Eddition': '2023',
            'price': 780,
            'quantity': 1,
            'detail':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'aboutAuthor':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'reviews':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'regularPrice': 1200,
            'percentOff': 35,
            'BookCategory': 'Coding',
            'BookLevel': 'Bigner',
            "Book_Cover_url": Pics_collection.Book_Cover_url_shop01,
            "Book_other_01_img_url": Pics_collection.discount_pic01,
            "Book_other_02_img_url": Pics_collection.discount_pic01,
          },
          {
            'BookName': 'C',
            'Auther': 'xyz',
            'Eddition': '2023',
            'price': 420,
            'quantity': 1,
            'detail':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'aboutAuthor':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'reviews':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'regularPrice': 700,
            'percentOff': 40,
            'BookCategory': 'Coding',
            'BookLevel': 'Bigner',
            "Book_Cover_url": Pics_collection.Book_Cover_url_shop01,
            "Book_other_01_img_url": Pics_collection.discount_pic01,
            "Book_other_02_img_url": Pics_collection.discount_pic01,
          },
          {
            'BookName': 'java',
            'Auther': 'xyz',
            'Eddition': '2023',
            'price': 1050,
            'quantity': 1,
            'detail':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'aboutAuthor':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'reviews':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'regularPrice': 1500,
            'percentOff': 30,
            'BookCategory': 'Coding',
            'BookLevel': 'Bigner To Expert',
           "Book_Cover_url": Pics_collection.Book_Cover_url_shop01,
            "Book_other_01_img_url": Pics_collection.discount_pic01,
            "Book_other_02_img_url": Pics_collection.discount_pic01,
          },
          {
            'BookName': 'C#',
            'Auther': 'xyz',
            'Eddition': '2023',
            'price': 720,
            'quantity': 1,
            'detail':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'aboutAuthor':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'reviews':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'regularPrice': 900,
            'percentOff': 20,
            'BookCategory': 'Coding',
            'BookLevel': 'Bigner To Expert',
           "Book_Cover_url": Pics_collection.Book_Cover_url_shop01,
            "Book_other_01_img_url": Pics_collection.Book_Cover_url_shop01,
            "Book_other_02_img_url": Pics_collection.Book_Cover_url_shop01,
          },
          {
            'BookName': 'Flutter',
            'Auther': 'xyz',
            'Eddition': '2023',
            'price': 810,
            'quantity': 1,
            'detail':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'aboutAuthor':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'reviews':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'regularPrice': 900,
            'percentOff': 10,
            'BookCategory': 'Coding',
            'BookLevel': 'Bigner To Expert',
            "Book_Cover_url": Pics_collection.Book_Cover_url_shop01,
            "Book_other_01_img_url": Pics_collection.Book_Cover_url_shop01,
            "Book_other_02_img_url": Pics_collection.Book_Cover_url_shop01,
          },
          /////old books can be use in discount or anywhere
          {
            'BookName': 'C++',
            'Auther': 'xyz',
            'Eddition': '2009',
            'price': 60,
            'quantity': 1,
            'detail':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'aboutAuthor':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'reviews':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'regularPrice': 1200,
            'percentOff': 50,
            'BookCategory': 'Coding',
            'BookLevel': 'Bigner',
            "Book_Cover_url": Pics_collection.Book_Cover_url_shop01,
            "Book_other_01_img_url": Pics_collection.Book_Cover_url_shop01,
            "Book_other_02_img_url": Pics_collection.Book_Cover_url_shop01,
          },
          {
            'BookName': 'C',
            'Auther': 'xyz',
            'Eddition': '2004',
            'price': 280,
            'quantity': 1,
            'detail':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'aboutAuthor':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'reviews':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'regularPrice': 700,
            'percentOff': 60,
            'BookCategory': 'Coding',
            'BookLevel': 'Bigner',
            "Book_Cover_url": Pics_collection.Book_Cover_url_shop01,
            "Book_other_01_img_url": Pics_collection.Book_Cover_url_shop01,
            "Book_other_02_img_url": Pics_collection.Book_Cover_url_shop01,
          },
          {
            'BookName': 'java',
            'Auther': 'xyz',
            'Eddition': '2010',
            'price': 525,
            'quantity': 1,
            'detail':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'aboutAuthor':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'reviews':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'regularPrice': 1500,
            'percentOff': 65,
            'BookCategory': 'Coding',
            'BookLevel': 'Bigner To Expert',
            "Book_Cover_url": Pics_collection.Book_Cover_url_shop01,
            "Book_other_01_img_url": Pics_collection.Book_Cover_url_shop01,
            "Book_other_02_img_url": Pics_collection.Book_Cover_url_shop01,
          },
          {
            'BookName': 'C#',
            'Auther': 'xyz',
            'Eddition': '2015',
            'price': 405,
            'quantity': 1,
            'detail':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'aboutAuthor':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'reviews':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'regularPrice': 900,
            'percentOff': 55,
            'BookCategory': 'Coding',
            'BookLevel': 'Bigner To Expert',
           "Book_Cover_url": Pics_collection.Book_Cover_url_shop01,
            "Book_other_01_img_url": Pics_collection.Book_Cover_url_shop01,
            "Book_other_02_img_url": Pics_collection.Book_Cover_url_shop01,
          },
          {
            'BookName': 'Flutter',
            'Auther': 'xyz',
            'Eddition': '2021',
            'price': 558,
            'quantity': 1,
            'detail':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'aboutAuthor':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'reviews':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'regularPrice': 900,
            'percentOff': 38,
            'BookCategory': 'Coding',
            'BookLevel': 'Bigner To Expert',
            "Book_Cover_url": Pics_collection.Book_Cover_url_shop01,
            "Book_other_01_img_url": Pics_collection.Book_Cover_url_shop01,
            "Book_other_02_img_url": Pics_collection.Book_Cover_url_shop01,
          },
        ],
        
      }
    },
    {
      "shop03": {
        "shopName": "Royal Books",
        "shopCategot": "Coding",
        "shop_pic_img_url": Pics_collection.discount_pic01,
        "adress": {'address': 'Tarique Road', "city": 'Karachi'},
        "Books": [
          {
            'BookName': 'C++',
            'Auther': 'xyz',
            'Eddition': '2023',
            'price': 780,
            'quantity': 1,
            'detail':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'aboutAuthor':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'reviews':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'regularPrice': 1200,
            'percentOff': 35,
            'BookCategory': 'Coding',
            'BookLevel': 'Bigner',
            "Book_Cover_url": Pics_collection.Book_Cover_url_shop01,
            "Book_other_01_img_url": Pics_collection.discount_pic01,
            "Book_other_02_img_url": Pics_collection.discount_pic01,
          },
          {
            'BookName': 'C',
            'Auther': 'xyz',
            'Eddition': '2023',
            'price': 420,
            'quantity': 1,
            'detail':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'aboutAuthor':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'reviews':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'regularPrice': 700,
            'percentOff': 40,
            'BookCategory': 'Coding',
            'BookLevel': 'Bigner',
            "Book_Cover_url": Pics_collection.discount_pic01,
            "Book_other_01_img_url": Pics_collection.discount_pic01,
            "Book_other_02_img_url": Pics_collection.discount_pic01,
          },
          {
            'BookName': 'java',
            'Auther': 'xyz',
            'Eddition': '2023',
            'price': 1050,
            'quantity': 1,
            'detail':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'aboutAuthor':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'reviews':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'regularPrice': 1500,
            'percentOff': 30,
            'BookCategory': 'Coding',
            'BookLevel': 'Bigner To Expert',
            "Book_Cover_url": Pics_collection.discount_pic01,
            "Book_other_01_img_url": Pics_collection.discount_pic01,
            "Book_other_02_img_url": Pics_collection.discount_pic01,
          },
          {
            'BookName': 'C#',
            'Auther': 'xyz',
            'Eddition': '2023',
            'price': 720,
            'quantity': 1,
            'detail':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'aboutAuthor':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'reviews':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'regularPrice': 900,
            'percentOff': 20,
            'BookCategory': 'Coding',
            'BookLevel': 'Bigner To Expert',
            "Book_Cover_url": Pics_collection.discount_pic01,
            "Book_other_01_img_url": Pics_collection.discount_pic01,
            "Book_other_02_img_url": Pics_collection.discount_pic01,
          },
          {
            'BookName': 'Flutter',
            'Auther': 'xyz',
            'Eddition': '2023',
            'price': 810,
            'quantity': 1,
            'detail':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'aboutAuthor':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'reviews':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'regularPrice': 900,
            'percentOff': 10,
            'BookCategory': 'Coding',
            'BookLevel': 'Bigner To Expert',
            "Book_Cover_url": Pics_collection.discount_pic01,
            "Book_other_01_img_url": Pics_collection.discount_pic01,
            "Book_other_02_img_url": Pics_collection.discount_pic01,
          },
          /////old books can be use in discount or anywhere
          {
            'BookName': 'C++',
            'Auther': 'xyz',
            'Eddition': '2009',
            'price': 60,
            'quantity': 1,
            'detail':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'aboutAuthor':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'reviews':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'regularPrice': 1200,
            'percentOff': 50,
            'BookCategory': 'Coding',
            'BookLevel': 'Bigner',
            "Book_Cover_url": Pics_collection.discount_pic01,
            "Book_other_01_img_url": Pics_collection.discount_pic01,
            "Book_other_02_img_url": Pics_collection.discount_pic01,
          },
          {
            'BookName': 'C',
            'Auther': 'xyz',
            'Eddition': '2004',
            'price': 280,
            'quantity': 1,
            'detail':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'aboutAuthor':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'reviews':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'regularPrice': 700,
            'percentOff': 60,
            'BookCategory': 'Coding',
            'BookLevel': 'Bigner',
            "Book_Cover_url": Pics_collection.discount_pic01,
            "Book_other_01_img_url": Pics_collection.discount_pic01,
            "Book_other_02_img_url": Pics_collection.discount_pic01,
          },
          {
            'BookName': 'java',
            'Auther': 'xyz',
            'Eddition': '2010',
            'price': 525,
            'quantity': 1,
            'detail':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'aboutAuthor':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'reviews':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'regularPrice': 1500,
            'percentOff': 65,
            'BookCategory': 'Coding',
            'BookLevel': 'Bigner To Expert',
            "Book_Cover_url": Pics_collection.discount_pic01,
            "Book_other_01_img_url": Pics_collection.discount_pic01,
            "Book_other_02_img_url": Pics_collection.discount_pic01,
          },
          {
            'BookName': 'C#',
            'Auther': 'xyz',
            'Eddition': '2015',
            'price': 405,
            'quantity': 1,
            'detail':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'aboutAuthor':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'reviews':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'regularPrice': 900,
            'percentOff': 55,
            'BookCategory': 'Coding',
            'BookLevel': 'Bigner To Expert',
            "Book_Cover_url": Pics_collection.discount_pic01,
            "Book_other_01_img_url": Pics_collection.discount_pic01,
            "Book_other_02_img_url": Pics_collection.discount_pic01,
          },
          {
            'BookName': 'Flutter',
            'Auther': 'xyz',
            'Eddition': '2021',
            'price': 558,
            'quantity': 1,
            'detail':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'aboutAuthor':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'reviews':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'regularPrice': 900,
            'percentOff': 38,
            'BookCategory': 'Coding',
            'BookLevel': 'Bigner To Expert',
            "Book_Cover_url": Pics_collection.discount_pic01,
            "Book_other_01_img_url": Pics_collection.discount_pic01,
            "Book_other_02_img_url": Pics_collection.discount_pic01,
          },
        ],
        
      }
    },
    {
      "shop04": {
        "shopName": "Royal Books",
        "shopCategot": "Coding",
        "shop_pic_img_url": Pics_collection.discount_pic01,
        "adress": {'address': 'Tarique Road', "city": 'Karachi'},
        "Books": [
          {
            'BookName': 'C++',
            'Auther': 'xyz',
            'Eddition': '2023',
            'price': 780,
            'quantity': 1,
            'detail':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'aboutAuthor':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'reviews':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'regularPrice': 1200,
            'percentOff': 35,
            'BookCategory': 'Coding',
            'BookLevel': 'Bigner',
            "Book_Cover_url": Pics_collection.discount_pic01,
            "Book_other_01_img_url": Pics_collection.discount_pic01,
            "Book_other_02_img_url": Pics_collection.discount_pic01,
          },
          {
            'BookName': 'C',
            'Auther': 'xyz',
            'Eddition': '2023',
            'price': 420,
            'quantity': 1,
            'detail':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'aboutAuthor':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'reviews':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'regularPrice': 700,
            'percentOff': 40,
            'BookCategory': 'Coding',
            'BookLevel': 'Bigner',
            "Book_Cover_url": Pics_collection.discount_pic01,
            "Book_other_01_img_url": Pics_collection.discount_pic01,
            "Book_other_02_img_url": Pics_collection.discount_pic01,
          },
          {
            'BookName': 'java',
            'Auther': 'xyz',
            'Eddition': '2023',
            'price': 1050,
            'quantity': 1,
            'detail':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'aboutAuthor':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'reviews':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'regularPrice': 1500,
            'percentOff': 30,
            'BookCategory': 'Coding',
            'BookLevel': 'Bigner To Expert',
            "Book_Cover_url": Pics_collection.discount_pic01,
            "Book_other_01_img_url": Pics_collection.discount_pic01,
            "Book_other_02_img_url": Pics_collection.discount_pic01,
          },
          {
            'BookName': 'C#',
            'Auther': 'xyz',
            'Eddition': '2023',
            'price': 720,
            'quantity': 1,
            'detail':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'aboutAuthor':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'reviews':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'regularPrice': 900,
            'percentOff': 20,
            'BookCategory': 'Coding',
            'BookLevel': 'Bigner To Expert',
            "Book_Cover_url": Pics_collection.discount_pic01,
            "Book_other_01_img_url": Pics_collection.discount_pic01,
            "Book_other_02_img_url": Pics_collection.discount_pic01,
          },
          {
            'BookName': 'Flutter',
            'Auther': 'xyz',
            'Eddition': '2023',
            'price': 810,
            'quantity': 1,
            'detail':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'aboutAuthor':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'reviews':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'regularPrice': 900,
            'percentOff': 10,
            'BookCategory': 'Coding',
            'BookLevel': 'Bigner To Expert',
            "Book_Cover_url": Pics_collection.discount_pic01,
            "Book_other_01_img_url": Pics_collection.discount_pic01,
            "Book_other_02_img_url": Pics_collection.discount_pic01,
          },
          /////old books can be use in discount or anywhere
          {
            'BookName': 'C++',
            'Auther': 'xyz',
            'Eddition': '2009',
            'price': 60,
            'quantity': 1,
            'detail':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'aboutAuthor':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'reviews':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'regularPrice': 1200,
            'percentOff': 50,
            'BookCategory': 'Coding',
            'BookLevel': 'Bigner',
            "Book_Cover_url": Pics_collection.discount_pic01,
            "Book_other_01_img_url": Pics_collection.discount_pic01,
            "Book_other_02_img_url": Pics_collection.discount_pic01,
          },
          {
            'BookName': 'C',
            'Auther': 'xyz',
            'Eddition': '2004',
            'price': 280,
            'quantity': 1,
            'detail':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'aboutAuthor':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'reviews':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'regularPrice': 700,
            'percentOff': 60,
            'BookCategory': 'Coding',
            'BookLevel': 'Bigner',
            "Book_Cover_url": Pics_collection.discount_pic01,
            "Book_other_01_img_url": Pics_collection.discount_pic01,
            "Book_other_02_img_url": Pics_collection.discount_pic01,
          },
          {
            'BookName': 'java',
            'Auther': 'xyz',
            'Eddition': '2010',
            'price': 525,
            'quantity': 1,
            'detail':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'aboutAuthor':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'reviews':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'regularPrice': 1500,
            'percentOff': 65,
            'BookCategory': 'Coding',
            'BookLevel': 'Bigner To Expert',
            "Book_Cover_url": Pics_collection.discount_pic01,
            "Book_other_01_img_url": Pics_collection.discount_pic01,
            "Book_other_02_img_url": Pics_collection.discount_pic01,
          },
          {
            'BookName': 'C#',
            'Auther': 'xyz',
            'Eddition': '2015',
            'price': 405,
            'quantity': 1,
            'detail':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'aboutAuthor':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'reviews':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'regularPrice': 900,
            'percentOff': 55,
            'BookCategory': 'Coding',
            'BookLevel': 'Bigner To Expert',
            "Book_Cover_url": Pics_collection.discount_pic01,
            "Book_other_01_img_url": Pics_collection.discount_pic01,
            "Book_other_02_img_url": Pics_collection.discount_pic01,
          },
          {
            'BookName': 'Flutter',
            'Auther': 'xyz',
            'Eddition': '2021',
            'price': 558,
            'quantity': 1,
            'detail':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'aboutAuthor':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'reviews':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'regularPrice': 900,
            'percentOff': 38,
            'BookCategory': 'Coding',
            'BookLevel': 'Bigner To Expert',
            "Book_Cover_url": Pics_collection.discount_pic01,
            "Book_other_01_img_url": Pics_collection.discount_pic01,
            "Book_other_02_img_url": Pics_collection.discount_pic01,
          },
        ],
        
      }
    },
    {
      "shop05": {
        "shopName": "Royal Books",
        "shopCategot": "Comics",
        "shop_pic_img_url": Pics_collection.discount_pic01,
        "adress": {'address': 'Tarique Road', "city": 'Karachi'},
        "Books": [
          {
            'BookName': 'C++',
            'Auther': 'xyz',
            'Eddition': '2023',
            'price': 780,
            'quantity': 1,
            'detail':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'aboutAuthor':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'reviews':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'regularPrice': 1200,
            'percentOff': 35,
            'BookCategory': 'Coding',
            'BookLevel': 'Bigner',
            "Book_Cover_url": Pics_collection.discount_pic01,
            "Book_other_01_img_url": Pics_collection.discount_pic01,
            "Book_other_02_img_url": Pics_collection.discount_pic01,
          },
          {
            'BookName': 'C',
            'Auther': 'xyz',
            'Eddition': '2023',
            'price': 420,
            'quantity': 1,
            'detail':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'aboutAuthor':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'reviews':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'regularPrice': 700,
            'percentOff': 40,
            'BookCategory': 'Coding',
            'BookLevel': 'Bigner',
            "Book_Cover_url": Pics_collection.discount_pic01,
            "Book_other_01_img_url": Pics_collection.discount_pic01,
            "Book_other_02_img_url": Pics_collection.discount_pic01,
          },
          {
            'BookName': 'java',
            'Auther': 'xyz',
            'Eddition': '2023',
            'price': 1050,
            'quantity': 1,
            'detail':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'aboutAuthor':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'reviews':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'regularPrice': 1500,
            'percentOff': 30,
            'BookCategory': 'Coding',
            'BookLevel': 'Bigner To Expert',
            "Book_Cover_url": Pics_collection.discount_pic01,
            "Book_other_01_img_url": Pics_collection.discount_pic01,
            "Book_other_02_img_url": Pics_collection.discount_pic01,
          },
          {
            'BookName': 'C#',
            'Auther': 'xyz',
            'Eddition': '2023',
            'price': 720,
            'quantity': 1,
            'detail':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'aboutAuthor':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'reviews':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'regularPrice': 900,
            'percentOff': 20,
            'BookCategory': 'Coding',
            'BookLevel': 'Bigner To Expert',
            "Book_Cover_url": Pics_collection.discount_pic01,
            "Book_other_01_img_url": Pics_collection.discount_pic01,
            "Book_other_02_img_url": Pics_collection.discount_pic01,
          },
          {
            'BookName': 'Flutter',
            'Auther': 'xyz',
            'Eddition': '2023',
            'price': 810,
            'quantity': 1,
            'detail':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'aboutAuthor':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'reviews':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'regularPrice': 900,
            'percentOff': 10,
            'BookCategory': 'Coding',
            'BookLevel': 'Bigner To Expert',
            "Book_Cover_url": Pics_collection.discount_pic01,
            "Book_other_01_img_url": Pics_collection.discount_pic01,
            "Book_other_02_img_url": Pics_collection.discount_pic01,
          },
          /////old books can be use in discount or anywhere
          {
            'BookName': 'C++',
            'Auther': 'xyz',
            'Eddition': '2009',
            'price': 60,
            'quantity': 1,
            'detail':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'aboutAuthor':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'reviews':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'regularPrice': 1200,
            'percentOff': 50,
            'BookCategory': 'Coding',
            'BookLevel': 'Bigner',
            "Book_Cover_url": Pics_collection.discount_pic01,
            "Book_other_01_img_url": Pics_collection.discount_pic01,
            "Book_other_02_img_url": Pics_collection.discount_pic01,
          },
          {
            'BookName': 'C',
            'Auther': 'xyz',
            'Eddition': '2004',
            'price': 280,
            'quantity': 1,
            'detail':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'aboutAuthor':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'reviews':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'regularPrice': 700,
            'percentOff': 60,
            'BookCategory': 'Coding',
            'BookLevel': 'Bigner',
            "Book_Cover_url": Pics_collection.discount_pic01,
            "Book_other_01_img_url": Pics_collection.discount_pic01,
            "Book_other_02_img_url": Pics_collection.discount_pic01,
          },
          {
            'BookName': 'java',
            'Auther': 'xyz',
            'Eddition': '2010',
            'price': 525,
            'quantity': 1,
            'detail':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'aboutAuthor':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'reviews':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'regularPrice': 1500,
            'percentOff': 65,
            'BookCategory': 'Coding',
            'BookLevel': 'Bigner To Expert',
            "Book_Cover_url": Pics_collection.discount_pic01,
            "Book_other_01_img_url": Pics_collection.discount_pic01,
            "Book_other_02_img_url": Pics_collection.discount_pic01,
          },
          {
            'BookName': 'C#',
            'Auther': 'xyz',
            'Eddition': '2015',
            'price': 405,
            'quantity': 1,
            'detail':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'aboutAuthor':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'reviews':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'regularPrice': 900,
            'percentOff': 55,
            'BookCategory': 'Coding',
            'BookLevel': 'Bigner To Expert',
            "Book_Cover_url": Pics_collection.discount_pic01,
            "Book_other_01_img_url": Pics_collection.discount_pic01,
            "Book_other_02_img_url": Pics_collection.discount_pic01,
          },
          {
            'BookName': 'Flutter',
            'Auther': 'xyz',
            'Eddition': '2021',
            'price': 558,
            'quantity': 1,
            'detail':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'aboutAuthor':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'reviews':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'regularPrice': 900,
            'percentOff': 38,
            'BookCategory': 'Coding',
            'BookLevel': 'Bigner To Expert',
            "Book_Cover_url": Pics_collection.discount_pic01,
            "Book_other_01_img_url": Pics_collection.discount_pic01,
            "Book_other_02_img_url": Pics_collection.discount_pic01,
          },
        ],
        
      }
    },
    {
      "shop06": {
        "shopName": "Royal Books",
        "shopCategot": "Science",
        "shop_pic_img_url": Pics_collection.discount_pic01,
        "adress": {'address': 'Tarique Road', "city": 'Karachi'},
        "Books": [
          {
            'BookName': 'C++',
            'Auther': 'xyz',
            'Eddition': '2023',
            'price': 780,
            'quantity': 1,
            'detail':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'aboutAuthor':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'reviews':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'regularPrice': 1200,
            'percentOff': 35,
            'BookCategory': 'Coding',
            'BookLevel': 'Bigner',
            "Book_Cover_url": Pics_collection.discount_pic01,
            "Book_other_01_img_url": Pics_collection.discount_pic01,
            "Book_other_02_img_url": Pics_collection.discount_pic01,
          },
          {
            'BookName': 'C',
            'Auther': 'xyz',
            'Eddition': '2023',
            'price': 420,
            'quantity': 1,
            'detail':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'aboutAuthor':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'reviews':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'regularPrice': 700,
            'percentOff': 40,
            'BookCategory': 'Coding',
            'BookLevel': 'Bigner',
            "Book_Cover_url": Pics_collection.discount_pic01,
            "Book_other_01_img_url": Pics_collection.discount_pic01,
            "Book_other_02_img_url": Pics_collection.discount_pic01,
          },
          {
            'BookName': 'java',
            'Auther': 'xyz',
            'Eddition': '2023',
            'price': 1050,
            'quantity': 1,
            'detail':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'aboutAuthor':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'reviews':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'regularPrice': 1500,
            'percentOff': 30,
            'BookCategory': 'Coding',
            'BookLevel': 'Bigner To Expert',
            "Book_Cover_url": Pics_collection.discount_pic01,
            "Book_other_01_img_url": Pics_collection.discount_pic01,
            "Book_other_02_img_url": Pics_collection.discount_pic01,
          },
          {
            'BookName': 'C#',
            'Auther': 'xyz',
            'Eddition': '2023',
            'price': 720,
            'quantity': 1,
            'detail':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'aboutAuthor':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'reviews':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'regularPrice': 900,
            'percentOff': 20,
            'BookCategory': 'Coding',
            'BookLevel': 'Bigner To Expert',
            "Book_Cover_url": Pics_collection.discount_pic01,
            "Book_other_01_img_url": Pics_collection.discount_pic01,
            "Book_other_02_img_url": Pics_collection.discount_pic01,
          },
          {
            'BookName': 'Flutter',
            'Auther': 'xyz',
            'Eddition': '2023',
            'price': 810,
            'quantity': 1,
            'detail':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'aboutAuthor':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'reviews':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'regularPrice': 900,
            'percentOff': 10,
            'BookCategory': 'Coding',
            'BookLevel': 'Bigner To Expert',
            "Book_Cover_url": Pics_collection.discount_pic01,
            "Book_other_01_img_url": Pics_collection.discount_pic01,
            "Book_other_02_img_url": Pics_collection.discount_pic01,
          },
          /////old books can be use in discount or anywhere
          {
            'BookName': 'C++',
            'Auther': 'xyz',
            'Eddition': '2009',
            'price': 60,
            'quantity': 1,
            'detail':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'aboutAuthor':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'reviews':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'regularPrice': 1200,
            'percentOff': 50,
            'BookCategory': 'Coding',
            'BookLevel': 'Bigner',
            "Book_Cover_url": Pics_collection.discount_pic01,
            "Book_other_01_img_url": Pics_collection.discount_pic01,
            "Book_other_02_img_url": Pics_collection.discount_pic01,
          },
          {
            'BookName': 'C',
            'Auther': 'xyz',
            'Eddition': '2004',
            'price': 280,
            'quantity': 1,
            'detail':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'aboutAuthor':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'reviews':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'regularPrice': 700,
            'percentOff': 60,
            'BookCategory': 'Coding',
            'BookLevel': 'Bigner',
            "Book_Cover_url": Pics_collection.discount_pic01,
            "Book_other_01_img_url": Pics_collection.discount_pic01,
            "Book_other_02_img_url": Pics_collection.discount_pic01,
          },
          {
            'BookName': 'java',
            'Auther': 'xyz',
            'Eddition': '2010',
            'price': 525,
            'quantity': 1,
            'detail':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'aboutAuthor':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'reviews':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'regularPrice': 1500,
            'percentOff': 65,
            'BookCategory': 'Coding',
            'BookLevel': 'Bigner To Expert',
            "Book_Cover_url": Pics_collection.discount_pic01,
            "Book_other_01_img_url": Pics_collection.discount_pic01,
            "Book_other_02_img_url": Pics_collection.discount_pic01,
          },
          {
            'BookName': 'C#',
            'Auther': 'xyz',
            'Eddition': '2015',
            'price': 405,
            'quantity': 1,
            'detail':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'aboutAuthor':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'reviews':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'regularPrice': 900,
            'percentOff': 55,
            'BookCategory': 'Coding',
            'BookLevel': 'Bigner To Expert',
            "Book_Cover_url": Pics_collection.discount_pic01,
            "Book_other_01_img_url": Pics_collection.discount_pic01,
            "Book_other_02_img_url": Pics_collection.discount_pic01,
          },
          {
            'BookName': 'Flutter',
            'Auther': 'xyz',
            'Eddition': '2021',
            'price': 558,
            'quantity': 1,
            'detail':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'aboutAuthor':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'reviews':
                'Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.',
            'regularPrice': 900,
            'percentOff': 38,
            'BookCategory': 'Coding',
            'BookLevel': 'Bigner To Expert',
            "Book_Cover_url": Pics_collection.discount_pic01,
            "Book_other_01_img_url": Pics_collection.discount_pic01,
            "Book_other_02_img_url": Pics_collection.discount_pic01,
          },
        ],
        
      }
    },
  ];


//////////add to cart data
 static List  addtocart_data = [];


//////Favourite data
static List  favourite_data = [];



////order history
static List <Map<String, dynamic>> orderHistory=[];


//////discount container data

      static List  Discount_container_data=[
        {
          'img_url':Pics_collection.discount_pic01,
          't1':'Get',
          't2':'50%OFF',
          't3':'On frist order',
          'ContinaerColor':'Rang.discount_container_color',
          'textColor':'Rang.discount_card_text_color',
        },
          {
          'img_url':Pics_collection.discount_pic02,
          't1':'Get',
          't2':'20%OFF',
          't3':'On frist order',
          'ContinaerColor':'Rang.discount_container_color',
          'textColor':'Rang.discount_card_text_color',
        },
          {
          'img_url':Pics_collection.discount_pic03,
          't1':'Get',
          't2':'50%OFF',
          't3':'On frist order',
          'ContinaerColor':'Rang.discount_container_color',
          'textColor':'Rang.discount_card_text_color',
        },
          {
          'img_url':Pics_collection.discount_pic04,
          't1':'Get',
          't2':'50%OFF',
          't3':'On frist order',
          'ContinaerColor':'Rang.discount_container_color',
          'textColor':'Rang.discount_card_text_color',
        },
      ];


////////shope by category data
          static List shopByCategoryData=[
           
     
       { "shop01":{
          "shopName":"RT",
          "adress":"Karachi",
          "category":"Meats",
          "img_url":Pics_collection.discount_pic01,
          "category_subtitle":"Organic",
        }
      },
       { "shop02":{
          "shopName":"RT",
          "adress":"Karachi",
          "category":"Meats",
          "img_url":Pics_collection.discount_pic01,
          "category_subtitle":"Organic",
        }
      },
      { "shop01":{
          "shopName":"RT",
          "adress":"Karachi",
          "category":"Meats",
          "img_url":Pics_collection.discount_pic01,
          "category_subtitle":"Organic",
        }
      },
       { "shop02":{
          "shopName":"RT",
          "adress":"Karachi",
          "category":"Meats",
          "img_url":Pics_collection.discount_pic01,
          "category_subtitle":"Organic",
        }
      },
      { "shop01":{
          "shopName":"RT",
          "adress":"Karachi",
          "category":"Meats",
          "img_url":Pics_collection.discount_pic01,
          "category_subtitle":"Organic",
        }
      },
       { "shop02":{
          "shopName":"RT",
          "adress":"Karachi",
          "category":"Meats",
          "img_url":Pics_collection.discount_pic01,
          "category_subtitle":"Organic",
        },
      },
      { "shop01":{
          "shopName":"RT",
          "adress":"Karachi",
          "category":"Meats",
          "img_url":Pics_collection.discount_pic01,
          "category_subtitle":"Organic",
        }
      },
       { "shop02":{
          "shopName":"RT",
          "adress":"Karachi",
          "category":"Meats",
          "img_url":Pics_collection.discount_pic01,
          "category_subtitle":"Organic",
        }
      },
      { "shop01":{
          "shopName":"RT",
          "adress":"Karachi",
          "category":"Meats",
          "img_url":Pics_collection.discount_pic01,
          "category_subtitle":"Organic",
        }
      },
       { "shop02":{
          "shopName":"RT",
          "adress":"Karachi",
          "category":"Meats",
          "img_url":Pics_collection.discount_pic01,
          "category_subtitle":"Organic",
        }
      },
      { "shop01":{
          "shopName":"RT",
          "adress":"Karachi",
          "category":"Meats",
          "img_url":Pics_collection.discount_pic01,
          "category_subtitle":"Organic",
        }
      },
       { "shop02":{
          "shopName":"RT",
          "adress":"Karachi",
          "category":"Meats",
          "img_url":Pics_collection.discount_pic01,
          "category_subtitle":"Organic",
        }
      },
 ]; 

}