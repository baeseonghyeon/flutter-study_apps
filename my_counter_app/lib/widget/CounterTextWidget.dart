import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:my_counter_app/model/counter.dart';

final provider = StateNotifierProvider((ref) => CounterNotifier());

class CounterTextWidget extends HookWidget {
  const CounterTextWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    print('building CounterTextWidget');
    final counterModel = useProvider(provider.state);
    return Text(
      '${counterModel.count}',
      style: Theme.of(context).textTheme.headline4,
    );
  }
}
