import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_light_and_dark_app/theme/custom_theme_mode.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    ValueNotifier<int> currentIndex = ValueNotifier(0);
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: ValueListenableBuilder<int>(
          valueListenable: currentIndex,
          builder: (BuildContext context, int index, Widget? child) {
            return Scaffold(
              appBar: _appbar(),
              bottomNavigationBar: BottomNavigationBar(
                items: const [
                  BottomNavigationBarItem(
                    label: "Home",
                    icon: Icon(Icons.home_outlined),
                    activeIcon: Icon(Icons.home_rounded),
                  ),
                  BottomNavigationBarItem(
                    label: "Favorite",
                    icon: Icon(Icons.favorite_outline),
                    activeIcon: Icon(Icons.favorite),
                  ),
                ],
                currentIndex: index,
                onTap: (i) {
                  HapticFeedback.mediumImpact();
                  currentIndex.value = i;
                },
              ),
              body: [
                SizedBox(
                    child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(),
                    ),
                  ],
                )),
                const SizedBox(
                  child: Center(child: CircularProgressIndicator()),
                ),
              ][index],
            );
          }),
    );
  }

  AppBar _appbar() {
    return AppBar(
      title: const Text("Light & Dark Mode"),
      actions: [
        ValueListenableBuilder<bool>(
            valueListenable: CustomThemeMode.current,
            builder: (BuildContext context, bool value, Widget? child) {
              return IconButton(
                onPressed: () {
                  HapticFeedback.mediumImpact();
                  CustomThemeMode.change();
                },
                icon: Icon(
                  value ? Icons.light_mode : Icons.dark_mode,
                ),
              );
            }),
      ],
    );
  }
}
