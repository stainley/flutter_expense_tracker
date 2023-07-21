
import 'package:flutter_expense/widgets/expense_widget.dart' as app;
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  
  group('E2E test', () {
    testWidgets('tap on floating action button', (tester) async {

      // Load app widget
      await tester.pumpWidget(const app. ExpenseWidget());

      
    });
  });
}

