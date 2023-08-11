// ignore_for_file: unused_local_variable, prefer_typing_uninitialized_variables, avoid_function_literals_in_foreach_calls

import 'dart:io';

void main() {
  Map<String, dynamic> myAccount = {
    'Post1': {
      'title': 'Flutter',
      'content':
          'Flutter is a framework by Google for building multi-platform applications from a single codebase.',
      'date': '2/6/2023',
      'likes': {
        'Ahmed': {
          'since': 27,
          'info': {
            'name': 'Ahmed',
            'age': 22,
            'address': 'cairo',
            'email': 'ahmed22@gmail.com',
            'friends': ['Khalid', 'ashraf', 'youssef'],
          },
        },
        'Ali': {
          'since': 8,
          'info': {
            'name': 'Ali',
            'age': 31,
            'address': 'Alex',
            'email': 'ali31@gmail.com',
            'friends': ['Osama', 'Mohamed', 'Yasser'],
          },
        },
        'Mohamed': {
          'since': 35,
          'info': {
            'name': 'Mohamed',
            'age': 28,
            'address': 'October',
            'email': 'mohamed28@gmail.com',
            'friends': ['Ahmed', 'islam', 'ashraf'],
          },
        },
      },
      'share': {
        'Osama': {
          'name': 'Osama',
          'email': 'osama19@gmail.com',
        },
        'Ahmed': {
          'name': 'Ahmed',
          'email': 'ahmed25@gmail.com',
        },
        'Mohamed': {
          'name': 'Mohamed',
          'email': 'mohamed28@gmail.com',
        },
      },
    },
    'Post2': {
      'title': 'AI',
      'content':
          'AI is a wide-ranging branch of computer science concerned with building smart machines capable of performing tasks that typically require human intelligence',
      'date': '1/4/2023',
      'likes': {
        'Khalid': {
          'since': 24,
          'info': {
            'name': 'Khalid',
            'age': 20,
            'address': 'Giza',
            'email': 'khalid20@gmail.com',
            'friends': ['Mohamed', 'ashraf', 'youssef'],
          },
        },
        'Ahmed': {
          'since': 45,
          'info': {
            'name': 'Ahmed',
            'age': 41,
            'address': 'Alex',
            'email': 'ahmed41@gmail.com',
            'friends': ['Hassan', 'ashraf', 'Yasser'],
          },
        },
        'Mohamed': {
          'since': 35,
          'info': {
            'name': 'Mohamed',
            'age': 28,
            'address': 'October',
            'email': 'mohamed28@gmail.com',
            'friends': ['Ahmed', 'islam', 'ashraf'],
          },
        },
      },
      'share': {
        'Hassan': {
          'name': 'Hassan',
          'email': 'hassan19@gmail.com',
        },
        'Yasser': {
          'name': 'Yasser',
          'email': 'yasser33@gmail.com',
        },
        'Mohamed': {
          'name': 'Mohamed',
          'email': 'mohamed28@gmail.com',
        },
      },
    }
  };
  //task1
  int min = 999999999999999999;
  Map<String, dynamic>? temp;
  Map<String, dynamic> post1Likes = myAccount['Post1']['likes'];
  post1Likes.forEach((key, value) {
    // print(post1LikesList[key]['since']);
    if (post1Likes[key]['since'] < min) {
      min = post1Likes[key]['since'];
      temp = post1Likes[key];
    }
  });
  // print('Min is : $min');
  print('\n----------');
  print('| TASK 1 |');
  print('----------\n');
  print('----------------------------------------');
  stdout.write(
      'First person likes Post 1 is : ${temp?['info']['name']} , \nand his info is ==> \n');
  print('----------------------------------------');
  temp?['info'].forEach((key, value) {
    print('$key : $value');
  });

  print('----------------------------------------');
  // print(temp!['info']);
//-----------------------------------------------------------------------------------
//task2

  Map<String, dynamic> post1Share = myAccount['Post1']['share'];
  List namesLike = [];
  List likeAndSharePost1 = [];
  // List namesShare = [];
  post1Likes.forEach((key, value) {
    namesLike.add(key);
  });
  // namesLike.forEach((element) {
  //   print(element);
  // });
  post1Share.forEach((key, value) {
    namesLike.forEach((element) {
      if (element == key) {
        likeAndSharePost1.add(element);
      }
    });
  });

  // print('Likes and share post 1 $likeAndShare');
  print('\n----------');
  print('| TASK 2 |');
  print('----------\n');
  likeAndSharePost1.forEach((element) {
    print(
        '-------------------------------------------------------------------------------');
    print(
        "Email for people who Likes and share Post 1: $element : ${post1Share[element]['email']}");
  });
  print(
      '-------------------------------------------------------------------------------');
//task 3

  print('\n----------');
  print('| TASK 3 |');
  print('----------\n');

  Map<String, dynamic> tempForTask3 = {};
  post1Likes.forEach((key, value) {
    // print(post1Likes[key]['info']['friends']);
    if (post1Likes[key]['info']['friends'].contains('ashraf')) {
      tempForTask3
          .addEntries([MapEntry(key, post1Likes[key]['info']['friends'])]);
    }
  });
  tempForTask3.forEach((key, value) {
    print(
        '------------------------------------------------------------------------------------------');
    print(
        ' peopole who likes post 1 and have friend called ashraf : $key : $value');
  });
  print(
      '------------------------------------------------------------------------------------------');

//task4
  print('\n----------');
  print('| TASK 4 |');
  print('----------\n');
  // post1Share;
  // post1Likes;
  // likeAndSharePost1;
  List likeAndSharePost2 = [];
  List names2Like = [];
  List res = [];

  Map<String, dynamic> post2Share = myAccount['Post2']['share'];
  Map<String, dynamic> post2Likes = myAccount['Post2']['likes'];

  post2Likes.forEach((key, value) {
    names2Like.add(key);
  });
  post2Share.forEach((key, value) {
    names2Like.forEach((element) {
      if (element == key) {
        likeAndSharePost2.add(element);
      }
    });
  });
  likeAndSharePost1.forEach((element1) {
    likeAndSharePost2.forEach((element2) {
      if (element1 == element2) {
        res.add(element1);
      }
    });
  });

  res.forEach((element) {
    print('People who likes & share post 1 and 2 ---> $element');
  });
  print('--------------------------------------------------------------');

//task5
  print('\n----------');
  print('| TASK 5 |');
  print('----------\n');
  Map<String, dynamic> oldUser1 = {};
  Map<String, dynamic> oldUser2 = {};
  String? old1key;
  String? old2key;
  int maxAge = -99999999999999999;
  post1Likes.forEach((key, value) {
    // print(post1Likes[key]['info']['age']);
    if (post1Likes[key]['info']['age'] > maxAge) {
      maxAge = post1Likes[key]['info']['age'];
      oldUser1 = {};
      oldUser1.addEntries([MapEntry(key, post1Likes[key]['info']['age'])]);
      old1key = key;
    }
  });
  // print(maxAge);

  post2Likes.forEach((key, value) {
    // print(post2Likes[key]['info']['age']);
    if (post2Likes[key]['info']['age'] > maxAge) {
      maxAge = post2Likes[key]['info']['age'];
      oldUser2 = {};
      oldUser2.addEntries([MapEntry(key, post2Likes[key]['info']['age'])]);
      old2key = key;
    }
  });

  // print(oldUser1[old1key]);
  print('----------------------------------------------------------');
  if (oldUser1[old1key] > oldUser2[old2key]) {
    print('Post 1 has the oldest one ');
    print('----------------------------------------------------------');
    print(' Title: ${myAccount['Post1']['title']}');
    print('----------------------------------------------------------');
    print('Content : ${myAccount['Post1']['content']}');
    print('----------------------------------------------------------');
    print('Date : ${myAccount['Post1']['date']}');
  } else {
    print('Post 2 has the oldest one ');
    print('----------------------------------------------------------');
    print(' Title: ${myAccount['Post2']['title']}');
    print('----------------------------------------------------------');
    print('Content : ${myAccount['Post2']['content']}');
    print('----------------------------------------------------------');
    print('Date : ${myAccount['Post2']['date']}');
    print('----------------------------------------------------------');
  }
  // print(maxAge);
}


/*
(1)
نحدد مين اول شخص عمل like  على post 1   ونطبع ال info  الخاصه بيه  // DONE

(2)
نحدد مين الشخص اللي عمل like  و share   معا في post 1   و نطبع اسمه و ال email  الخاص بيه  // Done 

(3)
نحدد مين الاشخاص اللي عملوا like على post 1  و عندهم اصدقاء ب اسم ashraf  و    نطبع اسمهم و اصدقائهم//Done

(4)
نحدد مين الشخص اللي عمل like  و share   على post 1  post 2  معا ونطبع اسمه //Done 

(5) 
نحدد post  الي فيه اكبر شخص عمل like  ونطبع title  و content  و date  الخاص بال post //done 
-----------------------------------
لاحظ ان كل شخص ليه unique email  يعمي email  مش بيتكرر عن اي شخص اخر  اما الاسم ممكن يتكر
7abiby ya ashraf.. 
 */