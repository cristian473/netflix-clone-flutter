import 'package:flutter/material.dart';
import 'package:netflix_clone/components/nav/nav_bar.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        navAndHeadImage(),
        infoSerie(),
        buttons()
      ],
    );
  }

  Widget navAndHeadImage() {
    return Stack(
      children: [
        Image.network(
          'https://p4.wallpaperbetter.com/wallpaper/300/754/486/captain-america-captain-america-civil-war-iron-man-hd-wallpaper-preview.jpg',
          height: 350,
          fit: BoxFit.cover
        ),
        Container(
          width: double.infinity,
          height: 350,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.center,
              end: Alignment.bottomCenter,
              colors: [
                Colors.black38,
                Colors.black
              ]
            )
          ),
        ),
        SafeArea(child: NavBar())          
      ],
    );
  }

  Widget infoSerie(){
    Widget tagItem(tagText) {
        return Row(
          children:[
            const Icon(Icons.fiber_manual_record, color: Colors.red, size: 5),
            Text(
              tagText, 
              style: const TextStyle(color: Colors.white,fontSize: 10)
            ),
            const SizedBox(width: 6),
          ]
        );
      }
    
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        tagItem('Acción'),
        tagItem('Suspenso insostenible'),
        tagItem('De suspenso'),
        tagItem('Adoles')
      ],
    );
  }

  Widget buttons(){
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: const [
              Icon(
                Icons.check,
                color: Colors.white,  
              ),
              Text(
                'Mi lista',
                style: TextStyle(color: Colors.white, fontSize: 10)
              ),
            ],
          ),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
            ),
            onPressed: () => {}, 
            child: Row(            
              children: const [
                Icon(
                  Icons.play_arrow,
                  color: Colors.black
                ),
                SizedBox(width: 6),
                Text(
                  'Reproducir',
                  style: TextStyle(color: Colors.black)
                )
              ],
            )
          ),
          Column(
            children: const [
              Icon(
                Icons.info_outline,
                color: Colors.white,  
              ),
              Text(
                'Más info',
                style: TextStyle(color: Colors.white, fontSize: 10)
              ),
            ],
          ),
        ],
      )
    );    
  } 
}