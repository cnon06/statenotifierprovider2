import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpodexample2/statenotifier.dart';


final myStateNotifierProvider = StateNotifierProvider((ref) => MyStateNotifier(0));

class Home extends StatelessWidget {
  const Home({super.key});


 
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      body: Consumer(
        builder: (BuildContext context, WidgetRef ref, Widget? child) { 

            return Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
               ref.watch(myStateNotifierProvider).toString(),
              style: const TextStyle(fontSize: 40),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  
                  ref.read(myStateNotifierProvider.notifier).increment();
                },
                child: const Text('Increment')),
            
             ElevatedButton(
                onPressed: () {
                  
                  ref.read(myStateNotifierProvider.notifier).decrement();
                },
                child: const Text('Decrement')),
          ],
        ));

         },
       
      ),
    );
  }
}
