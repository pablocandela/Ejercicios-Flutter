import 'package:flutter/services.dart';
import 'package:local_auth/auth_strings.dart';
import 'package:local_auth/local_auth.dart';

class LocalAuthApi {
  static final _auth = LocalAuthentication();
  

  //Método que regresa un future que indica si hay una autenticacion local disponible en el dispositivo
  //(Por huella digital o escaneo de rostro).
  //Nota: En caso de andorid solo se hace la verificación de lector de huellas.
  static Future<bool> hasBiometrics() async {
    try {
      return await _auth.canCheckBiometrics;
    } on PlatformException catch (e) {
      return false;
    }
  }

  //Método que regresa un future que indica si el usuario se ha autenticado correctamente.
  //En caso de que no hubiera formas de autenticación locales o el usuario cancela la autenticación
  //se regresa false.
  static Future<bool> authenticate() async {
    final isAvailable = await hasBiometrics();
    if (!isAvailable) return false;
    try {
      //Muestra pantalla que indica que hay que autenticarse con huella digital.
      //el parámetro androidAuthStrings sirve para modificar los mensajes que vienen 
      //por defecto.
      return await _auth.authenticateWithBiometrics(
        localizedReason: 'Escanea tu huella digital para autenticarte',
        useErrorDialogs: true,
        stickyAuth: true,
        androidAuthStrings: const AndroidAuthMessages(
          cancelButton: "Cancelar",
          biometricSuccess: "Autenticado",
          biometricHint: "Verifica tu identidad",
          signInTitle: "Autenticación requerida" 
        ) 
      );
    } on PlatformException catch (e) {
      return false;
    }
  }
}