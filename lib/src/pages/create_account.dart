import 'package:flutter/material.dart';
import 'package:fluxo_livre/src/widgets/input_login_widget.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Criar Novo Usuário',
          textAlign: TextAlign.center),
        centerTitle: true,
        backgroundColor: const Color(0xFFAFAE24),
      ),
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/img_fundologin.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(26.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 150,
                width: 150,
                child: Image(image: AssetImage('assets/images/et.png')),
              ),
              const SizedBox(height: 20),
              InputLoginWidget(
                icon: Icons.person_outline,
                hint: 'Nome',
                obscure: false,
              ),
              const SizedBox(height: 20),
              InputLoginWidget(
                icon: Icons.email,
                hint: 'Email',
                obscure: false,
              ),
              const SizedBox(height: 20),
              InputLoginWidget(
                icon: Icons.badge,
                hint: 'CPF',
                obscure: false,
              ),
              const SizedBox(height: 20),
              InputLoginWidget(
                icon: Icons.lock_outline,
                hint: 'Senha',
                obscure: true,
              ),
              const SizedBox(height: 20),
              InputLoginWidget(
                icon: Icons.lock_outline,
                hint: 'Confirmar Senha',
                obscure: true,
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFAFAE24),
                  minimumSize: Size(double.infinity, 40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed('/home');
                },
                child: const Text(
                  'Cadastrar',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF031C5F),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFAFAE24),
                  minimumSize: Size(double.infinity, 40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed('/');
                },
                child: const Text(
                  'Cancelar',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF031C5F),
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
