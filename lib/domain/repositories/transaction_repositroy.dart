import 'package:appetizer/data/constants/constants.dart';
import 'package:appetizer/data/services/remote/api_service.dart';
import 'package:appetizer/domain/models/failure_model.dart';
import 'package:appetizer/domain/models/transaction/faq.dart';
import 'package:appetizer/domain/models/transaction/paginated_yearly_rebate.dart';

class TransactionRepository {
  ApiService _apiService;

  TransactionRepository(this._apiService);

  // TODO: check correct input params for all functions

  Future<int> getMonthlyRebates() async {
    try {
      return await _apiService.getMonthlyRebate();
    } catch (e) {
      print(e);
      throw Failure(AppConstants.GENERIC_FAILURE);
    }
  }

  Future<PaginatedYearlyRebate> getYearlyRebates(int year) async {
    try {
      return await _apiService.getYearlyRebate(year);
    } catch (e) {
      print(e);
      throw Failure(AppConstants.GENERIC_FAILURE);
    }
  }

  Future<List<Faq>> getFAQs() async {
    try {
      return await _apiService.getFAQs();
    } catch (e) {
      print(e);
      throw Failure(AppConstants.GENERIC_FAILURE);
    }
  }
}
