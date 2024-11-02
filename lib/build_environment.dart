enum BuildFlavor { development, production }

class BuildEnvironment {
  final BuildFlavor flavor;
  final String baseUrl;

  // Use late to delay initialization until it's set in init()
  static late BuildEnvironment _instance;

  BuildEnvironment._internal({required this.flavor, required this.baseUrl});

  static void init({required BuildFlavor flavor, required String baseUrl}) {
    _instance = BuildEnvironment._internal(flavor: flavor, baseUrl: baseUrl);
  }

  static BuildEnvironment get instance {
    try {
      return _instance;
    } catch (e) {
      throw Exception("BuildEnvironment has not been initialized. Call `BuildEnvironment.init()` in `main()`.");
    }
  }
}