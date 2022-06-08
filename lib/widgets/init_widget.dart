part of '../main.dart';

class InitWidget extends StatelessWidget {
  const InitWidget({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(create: (context) => DioSettings()),
        RepositoryProvider(
          create: (context) => CharacterRepo(
            dio: RepositoryProvider.of<DioSettings>(context).dio,
          ),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => CharacterBloc(
              repo: RepositoryProvider.of<CharacterRepo>(context),
            )..add(GetCharacterEvent()),
          ),
        ],
        child: child,
      ),
    );
  }
}
