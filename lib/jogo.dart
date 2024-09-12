import 'package:flutter/material.dart';
import 'dart:math';

class Jogo extends StatefulWidget {
  const Jogo({super.key});

  @override
  State<Jogo> createState() => _JogoState();
}

class _JogoState extends State<Jogo> {
  var _imagemApp = const AssetImage('assets/images/padrao.png');
  var _imageUser = const AssetImage('assets/images/padrao.png');
  var _resultado = 'Escolha uma opção abaixo';
  final _opcoes = ['pedra', 'papel', 'tesoura'];

  void _opcaoSelecionada(String escolhaUsuario) {
    var numero = Random().nextInt(_opcoes.length);
    var escolhaApp = _opcoes[numero];

    setState(() {
      switch (escolhaApp) {
        case 'pedra':
          _imagemApp = const AssetImage('assets/images/pedra.png');
          break;
        case 'papel':
          _imagemApp = const AssetImage('assets/images/papel.png');
          break;
        case 'tesoura':
          _imagemApp = const AssetImage('assets/images/tesoura.png');
          break;
        default:
          _imagemApp = const AssetImage('assets/images/padrao.png');
          break;
      }

      _imageUser = escolhaUsuario == 'pedra'
          ? const AssetImage('assets/images/pedra.png')
          : escolhaUsuario == 'papel'
              ? const AssetImage('assets/images/papel.png')
              : const AssetImage('assets/images/tesoura.png');

      if (escolhaUsuario == escolhaApp) {
        _resultado = 'Empate';
      } else if ((escolhaUsuario == 'pedra' && escolhaApp == 'tesoura') ||
          (escolhaUsuario == 'papel' && escolhaApp == 'pedra') ||
          (escolhaUsuario == 'tesoura' && escolhaApp == 'papel')) {
        _resultado = 'Você ganhou';
      } else {
        _resultado = 'Você perdeu';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Jokenpô'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    const Text('Você'),
                    Image(
                      image: _imageUser,
                      width: 100,
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    const Text('App'),
                    Image(
                      image: _imagemApp,
                      width: 100,
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 64.0),
            Text(
              _resultado,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                GestureDetector(
                  onTap: () => _opcaoSelecionada('pedra'),
                  child: Image.asset('assets/images/pedra.png', width: 100),
                ),
                GestureDetector(
                  onTap: () => _opcaoSelecionada('papel'),
                  child: Image.asset('assets/images/papel.png', width: 100),
                ),
                GestureDetector(
                  onTap: () => _opcaoSelecionada('tesoura'),
                  child: Image.asset('assets/images/tesoura.png', width: 100),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

void main() => runApp(const MaterialApp(home: Jogo()));
