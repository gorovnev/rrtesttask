import 'package:rrtesttask/domain/account.dart';
import 'package:dartz/dartz.dart';
import 'package:rrtesttask/domain/account_repository.dart';
import 'package:rrtesttask/domain/data_failure.dart';
import 'dart:math';

class InMemoryAccountStorage implements IAccountRepository {
  final states = {
    'AL': 'Alabama',
    'AK': 'Alaska',
    'AA': 'APO - AA',
    'AE': 'APO - AE',
    'AP': 'APO - AP',
    'AZ': 'Arizona',
    'AR': 'Arkansas',
    'CA': 'California',
    'CO': 'Colorado',
    'CT': 'Connecticut',
    'DE': 'Delaware',
    'DC': 'District of Columbia',
    'FL': 'Florida',
    'GA': 'Georgia',
    'HI': 'Hawaii',
    'ID': 'Idaho',
    'IL': 'Illinois',
    'IN': 'Indiana',
    'IA': 'Iowa',
    'KS': 'Kansas',
    'KY': 'Kentucky',
    'LA': 'Louisiana',
    'ME': 'Maine',
    'MD': 'Maryland',
    'MA': 'Massachusetts',
    'MI': 'Michigan',
    'MN': 'Minnesota',
    'MS': 'Mississippi',
    'MO': 'Missouri',
    'MT': 'Montana',
    'NE': 'Nebraska',
    'NV': 'Nevada',
    'NH': 'New Hampshire',
    'NJ': 'New Jersey',
    'NM': 'New Mexico',
    'NY': 'New York',
    'NC': 'North Carolina',
    'ND': 'North Dakota',
    'OH': 'Ohio',
    'OK': 'Oklahoma',
    'OR': 'Oregon',
    'PA': 'Pennsylvania',
    'RI': 'Rhode Island',
    'SC': 'South Carolina',
    'SD': 'South Dakota',
    'TN': 'Tennessee',
    'TX': 'Texas',
    'UT': 'Utah',
    'VT': 'Vermont',
    'VA': 'Virginia',
    'WA': 'Washington',
    'WV': 'West Virginia',
    'WI': 'Wisconsin',
    'WY': 'Wyoming',
  };

  InMemoryAccountStorage() {
    init();
  }

  final Map<String, Account> _accounts = <String, Account>{};
  @override
  Future<Either<DataFailure, List<Account>>> getAll() {
    return Future.delayed(
      const Duration(seconds: 3),
      () => right(_accounts.values.toList()),
    );
  }

  @override
  Future<Either<DataFailure, List<Account>>> searchByAccountOrName(
      String accountOrName) {
    final pattern = accountOrName.toLowerCase();
    final List<Account> result = [];
    _accounts.forEach(
      (key, value) {
        if (key.contains(pattern)) {
          result.add(value);
          return;
        }
        if (value.name.toLowerCase().contains(pattern)) result.add(value);
      },
    );
    return Future.value(right(result));
  }

  void init() {
    // https://picsum.photos/200/300
    const imageUrl = "https://picsum.photos/200"; // Random image
    final names = [
      'Liam',
      'Olivia',
      'Noah',
      'Emma',
      'Oliver',
      'Ava',
      'Elijah',
      'Charlotte',
      'William',
      'Sophia',
      'James',
      'Amelia',
      'Benjamin',
      'Isabella',
      'Lucas',
      'Mia',
      'Henry',
      'Evelyn',
      'Alexander',
      'Harper',
    ];
    final surnames = [
      'Smith',
      'Johnson',
      'Williams',
      'Brown',
      'Jones',
      'Garcia',
      'Miller',
      'Davis',
      'Rodriguez',
      'Martinez',
      'Hernandez',
      'Lopez',
      'Gonzalez',
      'Wilson',
      'Anderson',
      'Thomas',
      'Taylor',
      'Moore',
      'Jackson',
      'Martin',
    ];

    const limit = 50;
    final rng = Random();
    final stateList = states.keys.toList();
    for (var i = 0; i < 50; i++) {
      final id = rng.nextInt(20);
      final name = names[id] + " " + surnames[id];
      final stateId = rng.nextInt(stateList.length);
      final account = Account(
        imageUrl: imageUrl,
        name: name,
        accountNumber: i.toString(),
        stateCode: stateList[stateId],
        stateOrProvince: states[stateList[stateId]]!,
      );
      _accounts[account.accountNumber] = account;
    }

    var a = 0;
  }
}
