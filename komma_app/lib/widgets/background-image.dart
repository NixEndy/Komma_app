import 'package:flutter/material.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({
    Key key,
    @required this.image,
  }) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      //Creacion del degradado de la parte deabajo de la app
      shaderCallback: (react) => LinearGradient(
        begin: Alignment.bottomCenter,
        end: Alignment.center,
        colors: [Colors.grey, Colors.transparent],
      ).createShader(react),
      blendMode: BlendMode.darken,
      child: Container(
        //CONTENEDOR DE LA IMAGEN DE FONDO DE LA PANTALLA DE LOGIN
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(Colors.lime, BlendMode.darken))),
      ),
    );
  }
}
