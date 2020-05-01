import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown
    ]);
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  Widget ChoicePopular(String title,Color foreground){
    return Padding(
      padding: EdgeInsets.only(left: 15),
      child: GestureDetector(
        onTap: (){

        },
        child: Text(title,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: foreground),),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height*0.375,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage("https://i.pinimg.com/originals/b9/59/3c/b9593c55557b39f7eeb8938dbb2349bb.png"),
                  fit: BoxFit.cover
                )
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height*0.375,
              color: Colors.grey[800].withOpacity(0.35),
            ),
            Padding(
              padding: EdgeInsets.only(left:20.0,top: MediaQuery.of(context).size.height*0.115),
              child: Text("Dolomites",style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.bold),),
            ),
            AppBar(
              leading: IconButton(icon: Icon(Icons.arrow_back_ios),onPressed: (){

              },),
              backgroundColor: Colors.transparent,
              actions: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right:10.0),
                  child: IconButton(icon: Icon(Icons.search),onPressed: (){
                    
                  },),
                )
              ],
              elevation: 0.0,
            ),
            Padding(
              padding: EdgeInsets.only(top:MediaQuery.of(context).size.height*0.375),
              child: Container(
                margin: EdgeInsets.only(left:0,right: 10,top: 15),
                width: MediaQuery.of(context).size.width,
                height: 50,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    ChoicePopular("Recommended",Colors.black),
                    ChoicePopular("Popular",Colors.grey),
                    ChoicePopular("Largest",Colors.grey),
                    ChoicePopular("Big",Colors.grey),
                    ChoicePopular("Small",Colors.grey),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
