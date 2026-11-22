class BankAccount {
  int accountID;
  double balance;

  BankAccount(this.accountID, this.balance);

  BankAccount.empty()
      : accountID = 0,
        balance = 0;

  void withdraw(double amount) {
    if (balance >= amount) {
      balance -= amount;
      print('Withdrew $amount. Balance is $balance');
    } else {
      print('Insufficient balance');
    }
  }

  void deposit(double amount) {
    balance += amount;
    print('Deposited $amount. Balance is $balance');
  }
}

class Holiday {
  String name;
  int day;
  String month;

  Holiday(this.name, this.day, this.month);

  static bool inSameMonth(Holiday h1, Holiday h2) {
    return h1.month == h2.month;
  }

  static double avgDate(List<Holiday> holidays) {
    int total = 0;
    for (int i = 0; i < holidays.length; i++) {
      total += holidays[i].day;
    }
    return total / holidays.length;
  }
}

class Movie {
  String title;
  String studio;
  String rating;

  Movie(this.title, this.studio, [this.rating = 'PG']);

  static List<Movie> getPG(List<Movie> movies) {
    List<Movie> result = [];
    for (int i = 0; i < movies.length; i++) {
      if (movies[i].rating.contains('PG')) {
        result.add(movies[i]);
      }
    }
    return result;
  }
}

void main() {
  print('--- BankAccount ---');
  BankAccount account1 = BankAccount(1, 500);
  BankAccount account2 = BankAccount.empty();
  account1.deposit(200);
  account1.withdraw(100);
  account1.withdraw(1000);
  account2.deposit(50);

  print('\n--- Holiday ---');
  Holiday independenceDay = Holiday('Independence Day', 4, 'July');
  Holiday summerFest = Holiday('Summer Fest', 20, 'July');
  Holiday christmas = Holiday('Christmas', 25, 'December');

  print(Holiday.inSameMonth(independenceDay, summerFest));
  print(Holiday.inSameMonth(independenceDay, christmas));
  print(Holiday.avgDate([independenceDay, summerFest, christmas]));

  print('\n--- Movie ---');
  Movie casinoRoyale = Movie('Casino Royale', 'Eon Productions', 'PG13');
  Movie movie2 = Movie('Toy Story', 'Pixar');
  Movie movie3 = Movie('Joker', 'Warner Bros', 'R');

  List<Movie> pgMovies = Movie.getPG([casinoRoyale, movie2, movie3]);
  for (int i = 0; i < pgMovies.length; i++) {
    print('${pgMovies[i].title} - ${pgMovies[i].rating}');
  }
}