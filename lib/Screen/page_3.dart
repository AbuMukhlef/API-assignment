import 'package:api_assignment/bloc/phto_bloc/Photos_bloc.dart';
import 'package:api_assignment/bloc/post_bloc/post_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PostBloc(),
      child: Builder(builder: (context) {
        final bloc = BlocProvider.of<PostBloc>(context);
        bloc.add(ShowPostsEvent());
        return Scaffold(
          backgroundColor: const Color.fromARGB(255, 160, 138, 71),
          body: BlocBuilder<PostBloc, PostState>(
            builder: (context, state) {
              return bloc.api.allPosts.isEmpty
                  ? const CircularProgressIndicator()
                  : ListView(
                      children: List.generate(
                      bloc.api.allPosts.length,
                      (index) => Card(
                        child: Text(bloc.api.allPosts[index].title),
                      ),
                    ));
            },
          ),
        );
      }),
    );
  }
}
