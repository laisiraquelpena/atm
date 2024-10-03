import 'package:app_atm/views/clientes.dart';
import 'package:app_atm/views/contato.dart';
import 'package:app_atm/views/empresa.dart';
import 'package:app_atm/views/servico.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Atm(),
    debugShowCheckedModeBanner: false,
  ));
}

class Atm extends StatefulWidget {
  const Atm({super.key});

  @override
  State<Atm> createState() => _AtmState();
}

class _AtmState extends State<Atm> {
  void abrirClientes() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Clientes()));
  }

  void abrirContatos() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Contato()));
  }

  void abrirEmpresa() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Empresa()));
  }

  void abrirServico(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=> Servico()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "consultoria ATM",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.green,
      ),
      backgroundColor: Colors.blue,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset("imagens/logo.png"),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                child: Image.asset("imagens/menu_cliente.png"),
                onTap: abrirClientes,
              ),
              SizedBox(
                width: 30,
              ),
              GestureDetector(
                child: Image.asset("imagens/menu_contato.png"),
                onTap: abrirContatos,
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                child: Image.asset("imagens/menu_empresa.png"),
                onTap: abrirEmpresa,
              ),
              SizedBox(
                width: 30,
              ),

              GestureDetector(
                child:  Image.asset("imagens/menu_servico.png"),
                onTap: abrirServico,
              )
             
            ],
          )
        ],
      ),
    );
  }
}
