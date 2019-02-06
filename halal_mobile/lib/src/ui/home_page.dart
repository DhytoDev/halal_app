import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HalalAppBar(),
      body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        padding: const EdgeInsets.fromLTRB(8, 16, 8, 8),
        children: List.generate(10, (index) {
          return Container(
            color: Colors.greenAccent,
          );
        }),
      ),
    );
  }
}

class HalalAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return PreferredSize(
        child: Stack(
          children: <Widget>[
            Opacity(
              opacity: 0.8,
              child: Image.network(
                'https://images.unsplash.com/photo-1543429257-ccb7256a22d8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1371&q=80',
                fit: BoxFit.cover,
                height: 275.0,
                width: MediaQuery.of(context).size.width,
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: AppBar(
                backgroundColor: Colors.transparent,
                title: Text('Halal App'),
                centerTitle: true,
                elevation: 0.0,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                AppBar(
                  backgroundColor: Colors.transparent,
                  elevation: 0.0,
                  centerTitle: true,
                  title: Text(
                    'Cari Berdasarkan Nama Produk',
                  ),
                ),
                Card(
                  color: Colors.white,
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  elevation: 6,
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.search),
                        const SizedBox(width: 8),
                        Expanded(child: Text('Search Product')),
                        IconButton(
                            icon: Icon(Icons.filter_list), onPressed: null)
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
        preferredSize: preferredSize);
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size(double.infinity, 275);
}
