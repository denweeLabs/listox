import 'package:dartz/dartz.dart';

extension EitherX<L, R> on Either<L, R> {
  (L?, R?) getEntries() {
    final left = fold((l) => l, (_) => null);
    final right = fold((_) => null, (r) => r);
    return (left, right);
  }
}

extension EitherY<L, R> on Either<L, Option<R>> {
  R? foldNullable({void Function(L)? whenFailure}) {
    return fold(
      (failure) {
        whenFailure?.call(failure);
        return null;
      },
      (opt) {
        return opt.toNullable();
      },
    );
  }

  R foldNullableElse({
    void Function(L)? whenFailure,
    required R Function() onElse,
  }) {
    return fold(
      (failure) {
        whenFailure?.call(failure);
        return onElse();
      },
      (opt) {
        return opt.fold(onElse, (success) => success);
      },
    );
  }
}

extension Unique<E, Id> on List<E> {
  List<E> unique([Id Function(E element)? id, bool inplace = true]) {
    final ids = Set();
    final list = inplace ? this : List<E>.from(this);
    list.retainWhere((x) => ids.add(id != null ? id(x) : x as Id));
    return list;
  }
}