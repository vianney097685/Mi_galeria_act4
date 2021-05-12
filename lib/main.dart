import 'package:flutter/material.dart';

void main() => runApp(MiAgendaFotograficaApp());

class MiAgendaFotograficaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(title: "No tiene efecto", home: new PaginaPrincipal(title: "Mi galeria de fotos HATZIRY")); //fin de material
  } //fin de widget
} //fin de mi agenda fotografica

class PaginaPrincipal extends StatefulWidget {
  final String title;
  @override
  PaginaPrincipal({this.title}) : super();
  @override
  State<StatefulWidget> createState() {
    return new PaginaPrincipalState();
  }
} //fin de pagina principal con estado

class PaginaPrincipalState extends State<PaginaPrincipal> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new GridView.extent(
        maxCrossAxisExtent: 150.0,
        mainAxisSpacing: 5.0,
        crossAxisSpacing: 5.0,
        padding: const EdgeInsets.all(5.0),
        children: _buildGridTiles(29),
      ), //fin de gridview
    ); //fin de Scaffold
  } //fin de widget
} //fin de PaginaPrincipalState

List<Widget> _buildGridTiles(numberOfTiles) {
  List<Container> containers = new List<Container>.generate(numberOfTiles, (int index) {
    //index = 0, 1, 2,...
    final imageName = index < 9 ? 'images/image0${index + 1}.jpg' : 'images/image${index + 1}.jpg';
    return new Container(
      child: new Image.asset(imageName, fit: BoxFit.fill),
    );
  }); //fin del contenedor generar nombre de foto
  return containers;
} //fin de list Widget
