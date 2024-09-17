import 'package:flutter/material.dart';
import 'package:news_app/models/news.dart';
import 'package:news_app/widgets/news_form.dart';
import 'package:news_app/widgets/news_list/news_list.dart';

class HomeScreen extends StatefulWidget
{
  const HomeScreen({
    super.key
  });

  @override
  State<StatefulWidget> createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> 
{
  final List<News> _registeredNews = [
    News(
      title: "Saat Istana Tanggapi KPK yang Mengaku Sulit Bertemu Presiden...",
      body:"JAKARTA, KOMPAS.com - Ketua Komisi Pemberantasan Korupsi (KPK), Nawawi Pomolango, mengungkapkan bahwa lembaga antirasuah ini mengalami kesulitan untuk bertemu dengan Presiden Joko Widodo. Hal ini disampaikan Nawawi dalam acara Media Gathering di Bogor, Jawa Barat, Kamis (12/9/2024). Nawawi bercanda dengan Wakil Ketua KPK, Alexander Marwata, saat membahas pemberitaan tentang Presiden yang menerima pimpinan organisasi masyarakat (ormas) di Istana."
    ),
    News(
      title: "Muncul Gerakan MLB PBNU Coba Goyang Posisi Gus Yahya dari Ketum", 
      body: "JAKARTA, KOMPAS.com - Polemik mengenai kepemimpinan Yahya Cholil Staquf (Gus Yahya) sebagai Ketua Umum Pengurus Besar Nahdlatul Ulama (PBNU) semakin memanas. Sejumlah pihak berencana menggelar Muktamar Luar Biasa (MLB) PBNU dan telah membentuk struktur kepanitiaan."
    )
  ];

  void _openFormNews()
  {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context, 
      builder: (ctx) => const NewsForm()
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("News App"),
        actions: [
          IconButton(
            onPressed: _openFormNews, 
            icon: const Icon(Icons.add)
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(child: NewsList(newsList: _registeredNews))
        ],
      ),
    );
  }
}