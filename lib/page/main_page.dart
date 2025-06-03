import 'package:flutter/material.dart';

import '../widget/bluetooth_buttom.dart';
import '../widget/step_count_widget.dart';
import 'recommendation_page.dart';

class MainPage extends StatelessWidget {
  final String username;

  const MainPage({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text(username),
      ),
      body: Column(
        children: [
          const Spacer(), 

          
          const Center(
            child: Card( 
              elevation: 6, 
              child: Padding(
                padding: EdgeInsets.all(30),
                child: StepCountWidget(),
              ),
            )
          ),

          const Spacer(),

          Padding(
              padding: const EdgeInsets.only(bottom: 40.0),
              child: ElevatedButton.icon(
                icon: const Icon(Icons.format_list_numbered_sharp),
                label: const Text('Recomedaciones de Salud'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const RecommendationPage(),
                    ),
                  );
                },
              )),
          Padding(
            padding: const EdgeInsets.only(bottom: 40.0),
            child: BluetoothButton(context: context)
          ),
        ],
      ),
    );
  }
}
