import 'package:charts_flutter/flutter.dart';
import 'package:flutter/material.dart';

class VistoriaCard extends StatelessWidget {
  final Widget child;

  VistoriaCard({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 300,
      margin: EdgeInsets.symmetric(horizontal: 40, vertical: 60),
      child: Card(
        child: Stack(
          children: <Widget>[
            PieChart(
              [
                Series<int, String>(
                    id: 'Teste',
                    colorFn: (i, j) {
                      return i == 13
                          ? Color.fromHex(code: '#33cc33')
                          : Color.fromHex(code: '#333399');
                    },
                    domainFn: (int s, _) => s.toString(),
                    measureFn: (int s, _) => s,
                    data: [13, 8]),
              ],
              defaultRenderer: ArcRendererConfig(arcWidth: 30),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Text(
                    '21',
                    style: TextStyle(
                      fontSize: 80,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'vistorias',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w300,
                        fontStyle: FontStyle.italic,
                        letterSpacing: 3),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 10,
              top: 10,
              child: Row(children: <Widget>[
                Text('8 Em Edição'),
              ]),
            ),
            Positioned(
              right: 10,
              top: 10,
              child: Row(children: <Widget>[
                Text('13 Concluídas'),
              ]),
            )
          ],
        ),
      ),
    );
  }
}

class GaugeSegment {
  final String segment;
  final int size;

  GaugeSegment(this.segment, this.size);
}
