import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hydro_habit/providers.dart';
import 'package:hydro_habit/widgets/add_button.dart';
import 'package:hydro_habit/widgets/custom_button.dart';

class MainScreen extends ConsumerStatefulWidget {
  const MainScreen({super.key, required this.goal});

  final String goal;

  @override
  ConsumerState<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends ConsumerState<MainScreen> {
  late double consumationGoal;
  double consumedWater = 0;

  @override
  void initState() {
    super.initState();
    consumationGoal = double.tryParse(widget.goal) ?? 0.0;
  }

  void onWaterAdded(double value) {
    setState(() => consumedWater += value);
  }

  @override
  Widget build(BuildContext context) {
    String name = ref.watch(nameProvider);
    double indicatorValue = consumationGoal > 0
        ? (consumedWater / consumationGoal).clamp(0, 1)
        : 0;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(250, 250, 250, 1),
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              setState(() => consumedWater = 0);
            },
            icon: const Icon(Icons.refresh),
            style: IconButton.styleFrom(foregroundColor: Colors.blue),
          ),
        ],
        title: Row(
          children: [
            Text(
              'AquaPulse',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            Icon(Icons.water_drop_outlined, color: Colors.blueAccent, size: 35),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'Hello, $name!',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                ],
              ),
              Text(
                'Today, ${DateTime.now().day} 0${DateTime.now().month} ${DateTime.now().year}',
                style: TextStyle(
                  fontSize: 16,
                  color: const Color.fromARGB(255, 126, 126, 126),
                ),
              ),
              SizedBox(height: 40),
              Center(
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    SizedBox(
                      width: 250,
                      height: 250,
                      child: CircularProgressIndicator(
                        value: indicatorValue,
                        strokeWidth: 15,
                        color: Colors.blueAccent,
                        backgroundColor: Colors.grey[200],
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          '${(indicatorValue * 100).toInt()}%',
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueAccent,
                          ),
                        ),
                        Text(
                          '${consumedWater.toInt()} / ${consumationGoal.toInt()}ml',
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 250),
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.05),
                      blurRadius: 10,
                      spreadRadius: 5,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    const Text(
                      "Quick Add",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AddButton(
                          amount: 250,
                          icon: Icons.water_drop,
                          onWaterAdded: onWaterAdded,
                        ),
                        AddButton(
                          amount: 500,
                          icon: Icons.water_drop_outlined,
                          onWaterAdded: onWaterAdded,
                        ),
                        CustomButton(onWaterAdd: onWaterAdded),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
