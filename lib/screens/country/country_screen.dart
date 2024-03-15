import 'package:all_lesson/data/model/country_model.dart';
import 'package:all_lesson/utils/style/text_style.dart';
import 'package:all_lesson/screens/country/view_model/country_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CountryScreen extends StatelessWidget {
  const CountryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    CountryViewModel viewModel = context.watch<CountryViewModel>();
    return Scaffold(
      body: viewModel.isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height,
                  width: double.infinity,
                  child: ListView.builder(
                    itemCount: viewModel.countries.length,
                    itemBuilder: (context, index) {
                      CountryModel country = viewModel.countries[index];
                      return ListTile(
                        leading: Image.network(
                          country.flagModel.png,
                          height: 30,
                          width: 40,
                        ),
                        title: Text(country.name.common,
                            style: AppTextStyle.interMedium),
                        subtitle: Text(country.capital[0],
                            style: AppTextStyle.interLight),
                        trailing:
                            Text(country.flag, style: AppTextStyle.interBold),
                      );
                    },
                  ),
                ),
              ],
            ),
    );
  }
}
