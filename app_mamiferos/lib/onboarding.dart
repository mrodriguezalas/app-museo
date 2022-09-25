import 'package:app_mamiferos/main.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnBoardingPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) => SafeArea(
      child: IntroductionScreen(
        pages: [
          PageViewModel(
            title: 'Bienvenido',
            body: 'Mamíferos-CR es una herramienta tecnológica a disposición del público para mejorar el conocimiento y la conservación de la mastofauna en Costa Rica.',
            image: buildImage('assets/images/logo_resize_no_circle.png'),
            decoration: getPageDecoration()
          ),
          PageViewModel(
              title: 'Ciencia ciudadana',
              body: 'Esta aplicación busca facilitar la capacitación de los usuarios en la identificación de especies, ofrecer un producto de educación e interés turístico, brindar la oportunidad de involucrar a diferentes personas en ciencia ciudadana y ampliar el conocimiento sobre los mamíferos de Costa Rica. ',
              image: buildImage('assets/images/logo_resize_no_circle.png'),
              decoration: getPageDecoration()
          ),
          PageViewModel(
              title: 'Producto Interinstitucional',
              body: 'El presente producto se enmarca en el Programa de monitoreo de mamíferos medianos y grandes llevado a cabo en el Área de Conservación Central (ACC), un esfuerzo interinstitucional entre el Departamento de Historia Natural del Museo Nacional de Costa Rica y el Área de Conservación Central del Sistema Nacional de Áreas de Conservación (SINAC)',
              image: buildImage('assets/images/logo_resize_no_circle.png'),
              decoration: getPageDecoration()
          )
        ],
        done: Text('Comenzar', style: TextStyle(fontWeight: FontWeight.w600),),
        onDone: () => goToHome(context),
        showNextButton: true,
        next: const Icon(Icons.arrow_forward),
        showSkipButton: true,
        skip: Text('Skip'),
        onSkip: () => goToHome(context),
      ));

  void goToHome(context) => Navigator.of(context).pushReplacement(
    MaterialPageRoute(builder: (_) => HomeScreen())
  );

  Widget buildImage(String path) =>
      Center(child: Image.asset(path, width: 350,));

  PageDecoration getPageDecoration() => PageDecoration(
    titleTextStyle: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
    bodyTextStyle: TextStyle(fontSize: 18),
    bodyPadding: EdgeInsets.all(16).copyWith(bottom: 0),
    imagePadding: EdgeInsets.all(18)
  );
}

