import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:webmiss/pages/component/loading_widget.dart';
import 'package:webmiss/repo/open_weather_repo.dart';

class WeatherPage extends StatefulWidget {
  const WeatherPage({super.key});

  @override
  State<WeatherPage> createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  bool isLoading = false;
  String? response;
  late OpenWeatherRepo openWeatherRepo;

  @override
  void initState() {
    isLoading = true;
    openWeatherRepo = OpenWeatherRepo();
    initFetchFromApi();
    super.initState();
  }

  initFetchFromApi() async{
    response = await openWeatherRepo.getWeatherForecast(lat: -6.2146, lon: 106.8451, day: 5);
    isLoading = false;
    setState(() { });
  }

  @override
  void setState(VoidCallback fn) {
    super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Weather Forecast"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: !isLoading ? Container(
        margin: const EdgeInsets.all(32),
        child: Text(response!),
      ) : loadingWidget(context),
    );
  }
}
