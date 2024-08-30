import 'package:flutter/material.dart';
import 'package:news_app/widgets/category_list_veiw.dart';
import 'package:news_app/widgets/news_tile_list_builder.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("News"),
            Text(
              "Cloud",
              style: TextStyle(
                color: Colors.orange,
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(child: CategoryList()),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 20,
              ),
            ),
            const NewsListBuilder(
              category: "general",
            ),
          ],
        ),
      ),
    );
  }
}
