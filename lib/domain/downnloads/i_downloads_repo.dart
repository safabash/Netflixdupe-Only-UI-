import 'package:dartz/dartz.dart';
import 'package:netflixdupe/domain/core/failures/main_failure.dart';
import 'package:netflixdupe/domain/downnloads/models/downloads.dart';

abstract class IDownloadsRepo {
  Future<Either<MainFailure, List<Downloads>>> getDownloadsImages();
}
