import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rrtesttask/blocs/home/home_bloc.dart';
import 'package:rrtesttask/domain/account.dart';
import 'package:rrtesttask/injection_container.dart';
import 'package:rrtesttask/domain/data_failure.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) =>
          sl<HomeBloc>()..add(const HomeEvent.started()),
      child: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          return Container(
            color: Colors.grey.shade300,
            child: Row(
              children: [
                Expanded(child: Container(), flex: 1),
                Expanded(
                  child: Column(
                    children: [
                      const ControlWidget(),
                      state.isLoading
                          ? const Expanded(
                              child: Center(
                                child: CircularProgressIndicator(),
                              ),
                            )
                          : const Expanded(child: AccountsWidget()),
                    ],
                  ),
                  flex: 2,
                ),
                Expanded(child: Container(), flex: 1),
              ],
            ),
          );
        },
      ),
    );
  }
}

class ControlWidget extends StatefulWidget {
  const ControlWidget({Key? key}) : super(key: key);
  @override
  _ControlWidgetState createState() => _ControlWidgetState();
}

class _ControlWidgetState extends State<ControlWidget> {
  final TextEditingController _searchController = TextEditingController();
  bool showFilter = false;
  bool? accountStatus;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      icon: state.nameOrAccount != ""
                          ? IconButton(
                              onPressed: () {
                                _searchController.text = "";
                                BlocProvider.of<HomeBloc>(context)
                                    .add(const HomeEvent.search(""));
                              },
                              icon: const Icon(Icons.search_off))
                          : const Icon(Icons.search),
                      labelText: "Search",
                    ),
                    onChanged: (value) {},
                    onEditingComplete: () async {
                      if (!state.isAuthenticated) return;
                      BlocProvider.of<HomeBloc>(context)
                          .add(HomeEvent.search(_searchController.text));
                    },
                    controller: _searchController,
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      showFilter = !showFilter;
                    });
                  },
                  child: Row(
                    children: [
                      state.filtered
                          ? const Icon(Icons.filter_alt_rounded)
                          : const Icon(Icons.filter_alt_outlined),
                      const Text('Filter'),
                    ],
                  ),
                ),
                Row(
                  children: [
                    const SizedBox(width: 30),
                    IconButton(
                      onPressed: () {
                        BlocProvider.of<HomeBloc>(context)
                            .add(const HomeEvent.switchView(true));
                      },
                      icon: const Icon(Icons.format_list_bulleted),
                    ),
                    IconButton(
                      onPressed: () {
                        BlocProvider.of<HomeBloc>(context)
                            .add(const HomeEvent.switchView(false));
                      },
                      icon: const Icon(Icons.grid_view_sharp),
                    ),
                  ],
                )
              ],
            ),
            showFilter
                ? Row(
                    children: [
                      const SizedBox(width: 10),
                      const Text("Account status:"),
                      const SizedBox(width: 10),
                      DropdownButton<bool?>(
                        value: state.filter?.active,
                        onChanged: (bool? value) {
                          BlocProvider.of<HomeBloc>(context)
                              .add(HomeEvent.filterByStatus(value));
                        },
                        items: const [
                          DropdownMenuItem(
                            child: Text("All"),
                            value: null,
                          ),
                          DropdownMenuItem(
                            child: Text("Active"),
                            value: false,
                          ),
                          DropdownMenuItem(
                            child: Text("Inactive"),
                            value: true,
                          ),
                        ],
                      ),
                      const SizedBox(width: 30),
                      DropdownButton<String?>(
                        value: state.filter?.stateOrProvince,
                        onChanged: (String? value) {
                          if (value == null) return;
                          BlocProvider.of<HomeBloc>(context).add(
                            HomeEvent.filterByStateOrProvince(value),
                          );
                        },
                        items: state.statesOrProcincesForFilter
                            .map((e) => DropdownMenuItem(
                                  child: Text(e),
                                  value: e,
                                ))
                            .toList(),
                      ),
                      const SizedBox(width: 10),
                      TextButton(
                          onPressed: () {
                            BlocProvider.of<HomeBloc>(context).add(
                              const HomeEvent.clearFilter(),
                            );
                          },
                          child: const Text("Clear"))
                    ],
                  )
                : Container(height: 10),
          ],
        );
      },
    );
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }
}

class AccountsWidget extends StatelessWidget {
  const AccountsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        if (!state.isAuthenticated) {
          return Column(
            children: [
              const Text("For searching you need to be authenticated."),
              TextButton(
                onPressed: () {
                  BlocProvider.of<HomeBloc>(context).add(
                    const HomeEvent.authenticate(),
                  );
                },
                child: const Text("Login"),
              )
            ],
          );
        }
        return state.filteredResult.fold(
          (err) => Text(err.getMessage()),
          (list) {
            return state.listView
                ? AccountListWidget(accounts: list)
                : AccountGridWidget(accounts: list);
          },
        );
      },
    );
  }
}

class AccountCard extends StatelessWidget {
  final Account account;

  const AccountCard({Key? key, required this.account}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final imageContainerWidth = MediaQuery.of(context).size.width / 8.67;

    return Container(
      padding: const EdgeInsets.all(5),
      margin: const EdgeInsets.all(5),
      color: Colors.white,
      child: Row(
        children: [
          Expanded(
            child: Container(
              constraints: const BoxConstraints(maxHeight: 150),
              width: imageContainerWidth,
              child: Image.network(account.imageUrl),
            ),
            flex: 3,
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  account.name,
                  style: const TextStyle(fontSize: 18),
                ),
                const SizedBox(height: 5),
                Text("State or Province:${account.stateOrProvince}"),
                Text(
                    "Account status:${account.isInative ? "Inactive" : "Active"}"),
                Text("Account number:${account.accountNumber}"),
              ],
            ),
            flex: 7,
          ),
        ],
      ),
    );
  }
}

class AccountListWidget extends StatelessWidget {
  final List<Account> accounts;

  const AccountListWidget({Key? key, required this.accounts}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: accounts.length,
      itemBuilder: (context, index) => AccountCard(
        account: accounts[index],
      ),
    );
  }
}

class AccountGridWidget extends StatelessWidget {
  final List<Account> accounts;

  const AccountGridWidget({Key? key, required this.accounts}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(1.5),
      crossAxisCount: 2,
      childAspectRatio: 2.00,
      mainAxisSpacing: 1.0,
      crossAxisSpacing: 1.0,
      children: accounts.map((e) => AccountCard(account: e)).toList(),
      shrinkWrap: true,
    );
  }
}
