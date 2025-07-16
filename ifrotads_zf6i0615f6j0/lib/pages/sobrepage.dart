import 'package:flutter/material.dart';

class SobrePage extends StatelessWidget {
  const SobrePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'Sobre o Curso',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            SectionTitle('Histórico'),
            SectionText(
              'O curso de Tecnologia em Análise e Desenvolvimento de Sistemas do IFRO iniciou suas atividades em Ariquemes para suprir a necessidade de profissionais qualificados na área de tecnologia na região, sendo referência no estado na formação de desenvolvedores e analistas.',
            ),
            SizedBox(height: 32),
            SectionTitle('Missão'),
            SectionText(
              'Formar profissionais capazes de analisar, projetar, documentar, especificar, testar, implantar e manter sistemas computacionais de informação, atuando de maneira ética e responsável no desenvolvimento de soluções tecnológicas para a sociedade.',
            ),
            SizedBox(height: 32),
            SectionTitle('Visão'),
            SectionText(
              'Ser reconhecido como um curso de excelência na formação de profissionais em tecnologia, contribuindo para o desenvolvimento socioeconômico e tecnológico da região e do país.',
            ),
            SizedBox(height: 32),
            SectionTitle('Objetivos'),
            SectionText(
              '• Desenvolver competências técnicas em programação e análise de sistemas.\n'
              '• Preparar profissionais para o mercado de trabalho e para o empreendedorismo tecnológico.\n'
              '• Incentivar a pesquisa e a inovação em tecnologia.\n'
              '• Promover uma formação crítica e ética.',
            ),
            SizedBox(height: 32),
            SectionTitle('Diferenciais do Curso'),
            SectionText(
              '• Corpo docente qualificado com mestres e doutores.\n'
              '• Infraestrutura moderna com laboratórios de informática atualizados.\n'
              '• Parcerias com empresas e órgãos públicos para estágios e projetos.\n'
              '• Incentivo à participação em eventos, maratonas de programação e feiras tecnológicas.',
            ),
            SizedBox(height: 32),
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
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class SectionText extends StatelessWidget {
  final String text;
  const SectionText(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        color: Colors.white70,
        fontSize: 16,
        height: 1.4,
      ),
    );
  }
}
