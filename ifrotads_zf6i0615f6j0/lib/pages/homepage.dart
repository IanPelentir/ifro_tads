import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            NavBar(),
            const HeroSection(),
            const AboutSection(),
            const GradeSection(),
            const DocentesSection(),
            const NoticiasSection(),
            const ContatoSection(),
            const Footer(),
          ],
        ),
      ),
    );
  }
}

// NAVBAR
class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
      color: Colors.black.withOpacity(0.9),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'IFRO TADS',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            children: [
              const NavButton(text: 'Início'),
              NavButton(
                text: 'Sobre',
                onPressed: () {
                  Navigator.pushNamed(context, '/sobre');
                },
              ),
              NavButton(
                text: 'Grade',
                onPressed: () {
                  Navigator.pushNamed(context, '/grade');
                },
              ),
              NavButton(
                text: 'Documentos',
                onPressed: () {
                  Navigator.pushNamed(context, '/documentos');
                }
                ),
               NavButton(
                text: 'Notícias',
                onPressed: () {
                  Navigator.pushNamed(context, '/noticias');
                }),
              NavButton(
                text: 'Contato',
                onPressed: () {
                  Navigator.pushNamed(context, '/contato');
                }
                ),
            ],
          ),
        ],
      ),
    );
  }
}

class NavButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;

  const NavButton({
    super.key,
    required this.text,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed ?? () {},
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16,
        ),
      ),
    );
  }
}

// HERO SECTION
class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 32),
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Tecnologia em Análise e\nDesenvolvimento de Sistemas',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 24),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green.shade600,
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 20),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            onPressed: () {
              // Futuro: scroll para Sobre
            },
            child: const Text(
              'Saiba Mais',
              style: TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}

// ABOUT SECTION
class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 64),
      color: Colors.black,
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Sobre o Curso',
            style: TextStyle(
              color: Colors.white,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 16),
          Text(
            'O curso de Tecnologia em Análise e Desenvolvimento de Sistemas forma profissionais '
            'capacitados para desenvolver, analisar, projetar, implementar e atualizar sistemas '
            'de informação para diversos setores.',
            style: TextStyle(
              color: Colors.white70,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}

// GRADE SECTION
class GradeSection extends StatelessWidget {
  const GradeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 64),
      color: Colors.black,
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Grade Curricular',
            style: TextStyle(
              color: Colors.white,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 16),
          Text(
            'A grade é composta por disciplinas como Programação, Banco de Dados, Engenharia de Software, '
            'Redes de Computadores, entre outras.',
            style: TextStyle(
              color: Colors.white70,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}

// DOCENTES SECTION
class DocentesSection extends StatelessWidget {
  const DocentesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 64),
      color: Colors.black,
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Corpo Docente',
            style: TextStyle(
              color: Colors.white,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 16),
          Text(
            'O corpo docente é formado por professores mestres e doutores com experiência no mercado e na academia.',
            style: TextStyle(
              color: Colors.white70,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}

// NOTICIAS SECTION
class NoticiasSection extends StatelessWidget {
  const NoticiasSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 64),
      color: Colors.black,
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Notícias',
            style: TextStyle(
              color: Colors.white,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 16),
          Text(
            'Confira as últimas notícias e eventos do curso.',
            style: TextStyle(
              color: Colors.white70,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}

// CONTATO SECTION
class ContatoSection extends StatelessWidget {
  const ContatoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 64),
      color: Colors.black,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Contato',
            style: TextStyle(
              color: Colors.white,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 16),
          Text(
            'Endereço, telefone e e-mail do campus.\nFormulário de contato será adicionado futuramente.',
            style: TextStyle(
              color: Colors.white70,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}

// FOOTER
class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 32),
      color: Colors.black,
      alignment: Alignment.center,
      child: const Text(
        '© 2025 IFRO - Tecnologia em Análise e Desenvolvimento de Sistemas',
        style: TextStyle(
          color: Colors.white70,
          fontSize: 14,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
