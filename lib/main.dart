import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movies Gallery Landing Page',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.deepPurple,
        brightness: Brightness.dark,
      ),
      home: const LandingPage(),
    );
  }
}

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  bool isHide = false;
  @override
  Widget build(BuildContext context) {
    const String privacyPolicy = '''
Última actualización: 27/05/2024

Introducción

Esta Política de Privacidad describe cómo Movies Gallery la Aplicación recopila, utiliza y comparte información sobre usted cuando utiliza nuestra aplicación móvil. Al usar nuestra aplicación, usted acepta las prácticas descritas en esta Política de Privacidad.

Información que Recopilamos

Información que No Recopilamos

Nuestra aplicación no recopila ni almacena información personal de los usuarios. No solicitamos, accedemos ni almacenamos datos como nombres, direcciones de correo electrónico, números de teléfono, ubicaciones o cualquier otro tipo de información personal.

Información Automática

La única información que nuestra aplicación procesa son los datos obtenidos de una API pública. Estos datos son directamente consultados y mostrados en la aplicación sin ninguna modificación o almacenamiento.

Uso de la Información

Utilizamos los datos obtenidos de la API pública exclusivamente para mostrar información relevante en la aplicación. Esta información se utiliza para proporcionar a los usuarios datos actualizados y relevantes según el propósito de la aplicación.

Compartir Información

No compartimos ninguna información personal con terceros ya que no recopilamos ninguna. Los datos de la API pública mostrados en la aplicación son obtenidos directamente de la fuente pública y no se transmiten a otros servicios o terceros.

Seguridad

Nos comprometemos a proteger la información que procesamos en la aplicación. Implementamos medidas de seguridad razonables para proteger los datos obtenidos de la API pública contra acceso no autorizado, alteración, divulgación o destrucción.

Cambios en esta Política de Privacidad

Podemos actualizar nuestra Política de Privacidad de vez en cuando. Le notificaremos cualquier cambio publicando la nueva Política de Privacidad en esta página. Se recomienda revisar esta Política de Privacidad periódicamente para cualquier cambio.

Contacto

Si tiene alguna pregunta sobre esta Política de Privacidad, por favor contáctenos a través de:

Correo electrónico: pablo.melo0420@gmail.com


Aceptación de esta Política

Al utilizar nuestra aplicación, usted acepta esta Política de Privacidad. Si no está de acuerdo con esta política, por favor no utilice nuestra aplicación.
''';

    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        padding:
            EdgeInsets.only(right: size.width * 0.05, left: size.width * 0.05),
        color: Theme.of(context).scaffoldBackgroundColor, // Background color
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(height: size.height * 0.1),

              // Logo
              Row(
                children: [
                  Container(
                    height: size.height * 0.1,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 51, 28, 90),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            spreadRadius: 4,
                            blurRadius: 10,
                            offset: const Offset(0, 3),
                          )
                        ]),
                    child: Image.asset(
                      'assets/images/image_logo.png',
                      scale: 10,
                    ),
                  ),
                ],
              ),

              SizedBox(height: size.height * 0.1),

              Container(
                color: Colors.transparent,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: const Text(
                  " Política de Privacidad",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              if (!isHide)
                Container(
                  color: Colors.transparent,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: const Text(privacyPolicy),
                ),

              SizedBox(
                width: size.width * 0.2,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      isHide = !isHide;
                    });
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(!isHide
                          ? Icons.keyboard_arrow_up_outlined
                          : Icons.keyboard_arrow_down_outlined),
                      SizedBox(
                        width: size.width * 0.05,
                      ),
                      Text(!isHide ? "Ocultar" : "Mostrar"),
                    ],
                  ),
                ),
              ),

              // Heading
              const Padding(
                padding: EdgeInsets.only(bottom: 20.0),
                child: Text(
                  'Get to know the movies that are currently in theaters',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),

              // Subtitle
              const Padding(
                padding: EdgeInsets.only(bottom: 30.0),
                child: Text(
                  'Dare to look for that little thing that you want to see so much and enjoy it',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),

              // Buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // TODO: Implement App Store link
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 15),
                      textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    child: const Text('GET IT ON\nGoogle Play'),
                  ),
                  const SizedBox(width: 20),
                  // ElevatedButton(
                  //   onPressed: () {
                  //   },
                  //   style: ElevatedButton.styleFrom(
                  //     backgroundColor: Colors.black,
                  //     padding: const EdgeInsets.symmetric(
                  //         horizontal: 30, vertical: 15),
                  //     textStyle: const TextStyle(
                  //       color: Colors.white,
                  //       fontSize: 16,
                  //       fontWeight: FontWeight.bold,
                  //     ),
                  //   ),
                  //   child: const Text('Download on the\nApp Store'),
                  // ),
                ],
              ),

              // Image/Device Preview (Optional)
              GestureDetector(
                onTap: () {
                  debugPrint("clickeo");
                },
                child: MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: Container(
                    margin: EdgeInsets.only(
                      bottom: size.height * 0.1,
                    ),
                    height: size.height * 0.5,
                    // color: Colors.red,
                    child: Image.asset(
                        'assets/images/Movies Gallery.png'), // Replace with your image
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
