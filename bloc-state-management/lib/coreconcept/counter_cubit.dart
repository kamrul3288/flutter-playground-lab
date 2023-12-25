
import 'package:bloc/bloc.dart';
import 'package:bloc_state_management/counter/counter_cubit.dart';



void main()async{
  final cubit = CounterCubit();

  print(cubit.state);
  cubit.increment();
  print(cubit.state);


  final subscription = cubit.stream.listen(print);
  cubit.increment();
  cubit.increment();
  await Future.delayed(Duration(milliseconds: 800));
  cubit.decrement();
  await Future.delayed(Duration(milliseconds: 100));
  subscription.cancel();
  cubit.close();


  final bloc = CounterBloc();
  final blocSubs = bloc.stream.listen(print);
  bloc.add(Increment());
  await Future.delayed(Duration(milliseconds: 2000));
  bloc.add(Increment());
  await Future.delayed(Duration(milliseconds: 2000));
  bloc.add(Increment());
  await Future.delayed(Duration(milliseconds: 2000));
  bloc.add(Decrement());
  bloc.add(Decrement());
  bloc.add(Decrement());
  blocSubs.cancel();


}

sealed class CounterEvent{}

final class Increment extends CounterEvent{}
final class Decrement extends CounterEvent{}

class CounterBloc extends Bloc<CounterEvent,int>{
  CounterBloc():super(0){
   on<Increment>((event, emit) => emit(state+1));
   on<Decrement>((event, emit) => emit(state-1));
  }
}