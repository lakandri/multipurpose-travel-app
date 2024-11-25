import 'package:ticketing_system/models/SupportRepository.dart';
import 'package:ticketing_system/models/support_option.dart';

class CustomerSupportViewModel {
  final SupportRepository _repository = SupportRepository();

  List<SupportOption> getSupportOptions() {
    return _repository.fetchSupportOptions();
  }
}
