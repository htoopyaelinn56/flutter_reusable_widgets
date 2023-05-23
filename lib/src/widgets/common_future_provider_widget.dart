import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CommonFutureProvider<T> extends ConsumerWidget {
  const CommonFutureProvider({
    super.key,
    required this.futureProvider,
    required this.data,
    this.error,
    this.loading,
  });
  final FutureProvider<T> futureProvider;
  final Widget Function(T) data;
  final Widget Function(Object, StackTrace)? error;
  final Widget Function()? loading;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // ignore: no_leading_underscores_for_local_identifiers
    final _data = ref.watch(futureProvider);
    return _data.when(
      data: data,
      error: error ??
          (e, st) => Center(
                child: Text(
                  '$e',
                ),
              ),
      loading: loading ??
          () => const Center(
                child: CircularProgressIndicator(),
              ),
    );
  }
}
