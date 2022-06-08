import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/screens/home_screen/widgets/character_grid_item.dart';
import '../../bloc/character_bloc.dart';
import 'widgets/character_list_item.dart';

part 'widgets/my_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  final view = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const _AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          child: BlocBuilder<CharacterBloc, CharacterState>(
            builder: (context, state) {
              if (state is CharacterLoadingState) {
                return const Center(
                    child: CircularProgressIndicator.adaptive());
              }
              if (state is CharacterSuccsesState) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ListView.separated(
                      shrinkWrap: true,
                      itemCount: state.model.results!.length,
                      itemBuilder: (context, index) => CharacterListItem(
                        model: state.model,
                        id: index,
                      ),
                      separatorBuilder: (context, _) =>
                          const SizedBox(height: 12),
                    ),
                    // GridView.builder(
                    //   gridDelegate:
                    //       const SliverGridDelegateWithFixedCrossAxisCount(
                    //           crossAxisCount: 2),
                    //   itemCount: state.model.results!.length,
                    //   shrinkWrap: true,
                    //   itemBuilder: (context, index) => Container(
                    //     margin: const EdgeInsets.all(16),
                    //     child: CharacterGridItem(model: state.model, id: index),
                    //   ),
                    // ),
                  ],
                );
              }
              return const SizedBox.shrink();
            },
          ),
        ),
      ),
    );
  }
}