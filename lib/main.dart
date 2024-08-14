import 'package:app_stream_anime/admin/view/Movie/bloc/create_movie/create_movie_bloc.dart';
import 'package:app_stream_anime/admin/view/Movie/bloc/delete_movie/delete_movie_bloc.dart';
import 'package:app_stream_anime/admin/view/Movie/bloc/movie/movie_bloc.dart';
import 'package:app_stream_anime/admin/view/Series/delete_episode/delete_episode_bloc.dart';
import 'package:app_stream_anime/constant/colors.dart';
import 'package:app_stream_anime/data/datasource/auth_remote_datasource.dart';
import 'package:app_stream_anime/data/datasource/episode_remote_datasource.dart';
import 'package:app_stream_anime/data/datasource/movie_remote_datasource.dart';
import 'package:app_stream_anime/data/datasource/series_remote_datasource.dart';
import 'package:app_stream_anime/view/auth/bloc/login/login_bloc.dart';
import 'package:app_stream_anime/view/dashboard_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'admin/view/Genre/bloc/bloc/get_genre_bloc.dart';
import 'admin/view/Movie/bloc/update_movie/update_movie_bloc.dart';
import 'admin/view/Series/episodes_bloc/episodes_bloc.dart';
import 'admin/view/Series/series_bloc/series_bloc.dart';
import 'data/datasource/genre_remote_datasource.dart';
import 'data/model/video_player_bloc/video_player_bloc.dart';
import 'view/auth/bloc/logout/logout_bloc.dart';
import 'view/auth/bloc/register/register_bloc.dart';
import 'view/auth/login_page.dart';
import 'view/splasscreenPage/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => VideoPlayerBloc(),
        ),
        BlocProvider(
          create: (context) => LoginBloc(
            AuthRemoteDatasource(),
          ),
        ),
        BlocProvider(
          create: (context) => LogoutBloc(
            AuthRemoteDatasource(),
          ),
        ),
        BlocProvider(
          create: (context) => RegisterBloc(
            AuthRemoteDatasource(),
          ),
        ),
        BlocProvider(
          create: (context) => MovieBloc(
            MovieRemoteDatasource(),
          ),
        ),
        BlocProvider(
          create: (context) => CreateMovieBloc(
            MovieRemoteDatasource(),
          ),
        ),
        BlocProvider(
          create: (context) => DeleteMovieBloc(
            MovieRemoteDatasource(),
          ),
        ),
        BlocProvider(
          create: (context) => UpdateMovieBloc(
            MovieRemoteDatasource(),
          ),
        ),
        BlocProvider(
          create: (context) => GetGenreBloc(
            GenreRemoteDatasource(),
          ),
        ),
        BlocProvider(
          create: (context) => SeriesBloc(
            SeriesRemoteDatasource(),
          ),
        ),
        BlocProvider(
          create: (context) => EpisodesBloc(
            EpisodeRemoteDatasource(),
          ),
        ),
        BlocProvider(
          create: (context) => DeleteEpisodeBloc(
            EpisodeRemoteDatasource(),
          ),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          appBarTheme: const AppBarTheme(
            backgroundColor: AppColors.blackColors,
            elevation: 0,
          ),
          scaffoldBackgroundColor: AppColors.blackColors,
        ),
        title: 'GodSlayerFlix.',
        routes: {
          '/': (context) => const SplashScreen(),
          '/login': (context) => const LoginPage(),
          '/home': (context) => const DashboardPage(),
        },
      ),
    );
  }
}
