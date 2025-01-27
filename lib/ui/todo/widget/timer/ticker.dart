class Ticker {
  const Ticker();

  // `ticks`: 목표 시간. null이면 무한 타이머로 동작.
  Stream<int> tick({int? ticks}) {
    if (ticks != null) {
      // 목표 시간이 있는 타이머
      return Stream.periodic(const Duration(seconds: 1), (x) => x + 1).take(ticks);
    } else {
      // 무한 타이머
      return Stream.periodic(const Duration(seconds: 1), (x) => x + 1);
    }
  }
}