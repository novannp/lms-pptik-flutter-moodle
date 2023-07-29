import 'package:dartz/dartz.dart';
import 'package:lms_pptik/src/data/models/submission_status_model.dart';
import 'package:lms_pptik/src/utils/failures.dart';

import '../../data/models/assignment/assignment.dart';
import '../../data/models/resource_model/resource.dart';

abstract class ModAssignRepository {
  Future<Either<Failure, List<AssignmentModel>>> getModAssignment(int courseId);

  Future<Either<Failure, SubmissionStatusModel>> getSubmissionStatus(
      int assignId);
}

abstract class ModResourceRepository {
  Future<Either<Failure, List<ResourceModel>>> getResourceByCourse(
      int courseId);
  Future<Either<Failure, bool>> viewResource(int resourceId);
}