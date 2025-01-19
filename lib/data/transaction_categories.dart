class TransactionCategories {
  final String category;
  final List<String> subCategory;

  const TransactionCategories({
    required this.category,
    required this.subCategory,
  });
}

const List<TransactionCategories> transactionCategoriesData = [
  TransactionCategories(category: "Income", subCategory: [
    "Salary",
    "Interest",
    "Dividends",
    "Rental Income",
    "Reimbursement",
    "Business Income",
    "Freelance/Gig Work",
    "Bonuses/Commissions",
  ]),
  TransactionCategories(category: "Expense", subCategory: [
    "Fuel",
    "Rent",
    "Hobbies",
    "Clothing",
    "Groceries",
    "Medical Bill",
    "Books/Courses",
    "EMI/Credit Card",
    "Movies/Concerts",
    "Public Transport",
    "Travel/Vacations",
    "Insurance Premium",
    "Water/Electricity",
    "Maintenance/Repairs",
    "Eating Out/Ordering In",
  ]),
  TransactionCategories(category: "Savings", subCategory: [
    "Emergency Fund",
    "General Savings",
    "Short-term Goals",
  ]),
  TransactionCategories(category: "Investment", subCategory: [
    "Bonds",
    "Real Estate",
    "Stocks/ETFs",
    "Mutual Funds",
    "Cryptocurrency",
  ]),
];
