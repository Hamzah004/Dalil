import 'package:dalil_project/features/study_resource/presentation/bloc/study_resource_bloc.dart';
import 'package:flutter/material.dart';
import 'injection_container.dart' as di;
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:
          (context) =>
              di.sl<StudyResourceBloc>()
                ..add(GetStudyRecoursesByCourseIdEvent(courseId: '1')),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: MyApp2(),
      ),
    );
  }
}

class MyApp2 extends StatelessWidget {
  const MyApp2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flutter Demo')),
      body: Center(
        child: BlocBuilder<StudyResourceBloc, StudyResourceState>(
          builder: (context, state) {
            if (state is LoadedStudyResourceState) {
              return Text(state.studyResources[0].descreption);
            }
            if (state is EmptyStudyResourceState) {
              return Text('empty');
            }
            return CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
