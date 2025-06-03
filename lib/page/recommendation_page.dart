import 'package:flutter/material.dart';

class RecommendationPage extends StatelessWidget {
  const RecommendationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(title: const Text('Recomendaciones de MonitorHealth')),
      
      body: Center(
        
        child: Card(
          elevation: 8,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10,30,10,30),
            child: SizedBox(
              width: 300,
              height: 400,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                  
                    padding: EdgeInsets.all(20.0),
                    child: Center(
                      
                      child:Text('Consejos!',
                      style: TextStyle(fontSize:30),
                    ),)
                    )
                  ,
                  const Divider(),
                  Expanded(
                    child: ListView(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      children: const [
                        ListTile(title: Text('- Toma 8 vasos de agua Diarios (2Lt Aprox),'),),
                        ListTile(title: Text('- Dormir 8 horas Aprox.')),
                        ListTile(title: Text('- NO consumir comida CHATARRA')),
                        ListTile(title: Text('- Toma un tiempo de meditacion diaria.')),
                        ListTile(title: Text('- Haz deporte almenos 3 veces a la semana')),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
