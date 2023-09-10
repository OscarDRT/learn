void main(List<String> args) async {
  print('HOLA');

  /* httpGet('url')
      .then(
        (value) => print(value),
      )
      .catchError((onError) => print('Error: ${onError}'));
 */

  try {
    final value = await httpGetAsyncAwait('url');
    print(value);
  } on Exception {
    print('Tenemos una Exception');
  } catch (e) {
    print("Error: ${e}");
  } finally {
    print("FIN");
  }

  print('ADIOS');
}

Future<String> httpGet(String url) {
  return Future.delayed(const Duration(seconds: 1), (() {
    //throw "Error mi papa";

    return 'Respuesta de la petición';
  }));
}

httpGetAsyncAwait(String url) async {
  return await Future.delayed(const Duration(seconds: 3), (() {
    //throw "Error mi papa 2";

    throw Exception('No params');

    return 'Respuesta de la petición 2';
  }));
}
