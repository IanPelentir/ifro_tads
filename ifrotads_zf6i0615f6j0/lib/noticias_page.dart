import 'package:flutter/material.dart';

class NoticiasPage extends StatelessWidget {
  const NoticiasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'Notícias',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SectionTitle('Últimas Notícias'),
            const SizedBox(height: 16),
            NewsCard(
              title: 'Semana Acadêmica de Tecnologia',
              date: '01/09/2025',
              content:
                  'A Semana Acadêmica do curso de TADS trouxe palestras sobre inteligência artificial, '
                  'workshops de Flutter e maratonas de programação para os estudantes, incentivando a prática e a inovação.',
            ),
            const SizedBox(height: 16),
            NewsCard(
              title: 'Novo Laboratório de Informática Inaugurado',
              date: '15/08/2025',
              content:
                  'O IFRO Campus Ariquemes inaugurou um novo laboratório de informática com equipamentos modernos '
                  'para atender às necessidades dos alunos do curso de TADS.',
            ),
            const SizedBox(height: 16),
            NewsCard(
              title: 'Alunos de TADS vencem Hackathon Estadual',
              date: '05/08/2025',
              content:
                  'Estudantes do curso de TADS participaram do Hackathon Estadual de Rondônia e conquistaram o primeiro lugar '
                  'com um projeto inovador de aplicativo para gestão de saúde pública.',
            ),
            const SizedBox(height: 16),
            NewsCard(
              title: 'Inscrições abertas para o Processo Seletivo',
              date: '20/07/2025',
              content:
                  'O curso de Tecnologia em Análise e Desenvolvimento de Sistemas do IFRO está com inscrições abertas para o processo seletivo 2026. '
                  'Garanta sua vaga e faça parte do futuro da tecnologia!',
            ),
            const SizedBox(height: 32),
            Center(
              child: Text(
                '© 2025 IFRO - Tecnologia em Análise e Desenvolvimento de Sistemas',
                style: TextStyle(color: Colors.white70, fontSize: 14),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;
  const SectionTitle(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        color: Colors.green,
        fontSize: 28,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class NewsCard extends StatelessWidget {
  final String title;
  final String date;
  final String content;

  const NewsCard({
    super.key,
    required this.title,
    required this.date,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[900],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                color: Colors.green,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              date,
              style: const TextStyle(
                color: Colors.white54,
                fontSize: 14,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              content,
              style: const TextStyle(
                color: Colors.white70,
                fontSize: 16,
                height: 1.4,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
