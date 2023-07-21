import 'package:flutter/material.dart';
import 'package:flutter_expense/models/expense.dart';
import 'package:flutter_expense/widgets/expenses_list/expense_item.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Expense Item', () {
    testWidgets('should show one widget', (WidgetTester widgetTester) async {
      Expense expense = Expense(
          title: 'title',
          amount: 99.99,
          date: DateTime.now(),
          category: Category.food);

      await widgetTester.pumpWidget(
        MaterialApp(
          home: ExpenseItem(expense),
        ),
      );

      expect(find.byType(Card), findsOneWidget);
      expect(find.byType(ScrollView), findsNothing);
    });
  });
}
