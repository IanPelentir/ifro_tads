import 'package:flutter/material.dart';

class DocumentosPage extends StatelessWidget {
  const DocumentosPage({super.key});

  final List<Map<String, String>> documentos = const [
    {
      'titulo': 'Projeto Pedagógico do Curso',
      'descricao': 'Descrição do projeto pedagógico do curso de TADS',
    },
    {
      'titulo': 'Regulamento Acadêmico',
      'descricao': 'Regras e normas acadêmicas para os alunos',
    },
    {
      'titulo': 'Ementas das Disciplinas',
      'descricao': 'Resumo dos conteúdos das disciplinas do curso',
    },
    {
      'titulo': 'Calendário Letivo',
      'descricao': 'Datas importantes e feriados acadêmicos',
    },
    {
      'titulo': 'Formulários e Modelos',
      'descricao': 'Formulários para matrícula, estágio e outros',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Documentos'),
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(24),
        itemCount: documentos.length,
        separatorBuilder: (_, __) => const Divider(color: Colors.green),
        itemBuilder: (context, index) {
          final doc = documentos[index];
          return ListTile(
            leading: const Icon(Icons.description, color: Colors.green),
            title: Text(
              doc['titulo']!,
              style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              doc['descricao']!,
              style: const TextStyle(color: Colors.white70),
            ),
            trailing: const Icon(Icons.download, color: Colors.green),
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Clique em "${doc['titulo']}" - documento fictício.'),
                  backgroundColor: Colors.green,
                ),
              );
            },
          );
        },
      ),
    );
  }
}
