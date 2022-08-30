import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflixdupe/domain/core/api_end_points.dart';
import 'package:netflixdupe/domain/core/failures/main_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:netflixdupe/domain/downnloads/i_downloads_repo.dart';
import 'package:netflixdupe/domain/downnloads/models/downloads.dart';

@LazySingleton(as: IDownloadsRepo)
class DownloadsRepository implements IDownloadsRepo {
  @override
  Future<Either<MainFailure, List<Downloads>>> getDownloadsImages() async {
    try {
      final Response response =
          await Dio(BaseOptions()).get(ApiEndPonts.downloads);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final downloadsList = (response.data['results'] as List).map((e) {
          return Downloads.fromJson(e);
        }).toList();

        return Right(downloadsList);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (_) {
      return const Left(MainFailure.clientFailure());
    }
  }
}
