import 'package:chats_app/pymentService.dart';
import 'package:chats_app/theme/utils.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  final VoidCallback theming;

  HomeScreen({super.key, required this.theming});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PaymentService paymentService = PaymentService();

  @override
  void initState() {
    super.initState();
    paymentService.init();
  }

  @override
  void dispose() {
    paymentService.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    
 bool isDark = Theme.of(context).brightness == Brightness.dark;
 bool iswait=false;
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: widget.theming, icon:Icon(isDark ? Icons.dark_mode : Icons.light_mode)),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
          
              // Text('We are working with the system which is working with us',style:Theme.of(context).textTheme.displayLarge),
              Center(
                child: ElevatedButton(onPressed:() {
                paymentService.openCheckout();
                }, child: Text('pay 500')),
              )
              
            ],
          ),
        ),
      ),
    );
  }

}










