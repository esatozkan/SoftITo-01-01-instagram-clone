// import 'package:faker/faker.dart';
// import 'package:flutter/material.dart';
// import 'package:instagram_clone/ui/view/widgets/video_player_widget.dart';

// class DiscoveryGrid extends StatefulWidget {
//   const DiscoveryGrid({super.key});

//   @override
//   State<DiscoveryGrid> createState() => _DiscoveryGridState();
// }

// class _DiscoveryGridState extends State<DiscoveryGrid> {
//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: Column(
//         children: [
//           SizedBox(
//             height: 5,
//           ),
//           DiscoverItem(),
//           DiscoverItem2(),
//           DiscoverItem(),
//           DiscoverItem2(),
//           DiscoverItem(),
//           DiscoverItem2(),
//           DiscoverItem(),
//           DiscoverItem2(),
//         ],
//       ),
//     );
//   }

//   Widget DiscoverItem() {
//     return Row(
//       children: [
//         Column(
//           children: [
//             TextButton(
//               style: TextButton.styleFrom(
//                   padding: EdgeInsets.only(left: 5, top: 5)),
//               onPressed: () {},
//               child: Container(
//                 width: (MediaQuery.of(context).size.width / 4) - 5,
//                 height: MediaQuery.of(context).size.height / 4,
//                 decoration: BoxDecoration(
//                   image: DecorationImage(
//                       image: NetworkImage(
//                         Faker().image.image(random: true),
//                       ),
//                       fit: BoxFit.cover),
//                 ),
//               ),
//             ),
//             TextButton(
//               style: TextButton.styleFrom(
//                   padding: EdgeInsets.only(left: 5, top: 5)),
//               onPressed: () {},
//               child: Container(
//                 width: (MediaQuery.of(context).size.width / 4) - 5,
//                 height: MediaQuery.of(context).size.height / 4,
//                 decoration: BoxDecoration(
//                     image: DecorationImage(
//                         image: NetworkImage(Faker().image.image(random: true)),
//                         fit: BoxFit.cover)),
//               ),
//             ),
//           ],
//         ),
//         Column(
//           children: [
//             TextButton(
//               style: TextButton.styleFrom(
//                   padding: EdgeInsets.only(left: 5, top: 5)),
//               onPressed: () {},
//               child: Container(
//                 width: (MediaQuery.of(context).size.width / 4) - 5,
//                 height: MediaQuery.of(context).size.height / 4,
//                 decoration: BoxDecoration(
//                     image: DecorationImage(
//                         image: NetworkImage(Faker().image.image(random: true)),
//                         fit: BoxFit.cover)),
//               ),
//             ),
//             TextButton(
//               style: TextButton.styleFrom(
//                   padding: EdgeInsets.only(left: 5, top: 5)),
//               onPressed: () {},
//               child: Container(
//                 width: (MediaQuery.of(context).size.width / 4) - 5,
//                 height: MediaQuery.of(context).size.height / 4,
//                 decoration: BoxDecoration(
//                     image: DecorationImage(
//                         image: NetworkImage(Faker().image.image(random: true)),
//                         fit: BoxFit.cover)),
//               ),
//             ),
//           ],
//         ),
//         Container(
//           width: MediaQuery.of(context).size.width / 2,
//           height: MediaQuery.of(context).size.height / 2,
//           child: VideoApp(),
//         ),
//       ],
//     );
//   }

//   Widget DiscoverItem2() {
//     return Row(
//       children: [
//         Container(
//           width: MediaQuery.of(context).size.width / 2,
//           height: MediaQuery.of(context).size.height / 2,
//           child: VideoApp(),
//         ),
//         Column(
//           children: [
//             TextButton(
//               style: TextButton.styleFrom(
//                 padding: EdgeInsets.only(right: 5, bottom: 5),
//               ),
//               onPressed: () {},
//               child: Container(
//                 width: (MediaQuery.of(context).size.width / 4) - 5,
//                 height: MediaQuery.of(context).size.height / 4,
//                 decoration: BoxDecoration(
//                     image: DecorationImage(
//                         image:
//                             NetworkImage(Faker().image.image(random: true)))),
//               ),
//             ),
//             TextButton(
//               style: TextButton.styleFrom(
//                 padding: EdgeInsets.only(right: 5, bottom: 5),
//               ),
//               onPressed: () {},
//               child: Container(
//                 width: (MediaQuery.of(context).size.width / 4) - 5,
//                 height: MediaQuery.of(context).size.height / 4,
//                 decoration: BoxDecoration(
//                     image: DecorationImage(
//                   image: NetworkImage(Faker().image.image(random: true)),
//                 )),
//               ),
//             ),
//           ],
//         ),
//         Column(
//           children: [
//             TextButton(
//               style: TextButton.styleFrom(
//                 padding: EdgeInsets.only(right: 5, bottom: 5),
//               ),
//               onPressed: () {},
//               child: Container(
//                 width: (MediaQuery.of(context).size.width / 4) - 5,
//                 height: MediaQuery.of(context).size.height / 4,
//                 decoration: BoxDecoration(
//                     image: DecorationImage(
//                   image: NetworkImage(Faker().image.image(random: true)),
//                 )),
//               ),
//             ),
//             TextButton(
//               style: TextButton.styleFrom(
//                 padding: EdgeInsets.only(right: 5, bottom: 5),
//               ),
//               onPressed: () {},
//               child: Container(
//                 width: (MediaQuery.of(context).size.width / 4) - 5,
//                 height: MediaQuery.of(context).size.height / 4,
//                 decoration: BoxDecoration(
//                     image: DecorationImage(
//                   image: NetworkImage(Faker().image.image(random: true)),
//                 )),
//               ),
//             ),
//           ],
//         ),
//       ],
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class DiscoveryGrid extends StatelessWidget {
  const DiscoveryGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GridView.custom(
        gridDelegate: SliverQuiltedGridDelegate(
          crossAxisCount: 3,
          mainAxisSpacing: 5,
          crossAxisSpacing: 5,
          pattern: [
            const QuiltedGridTile(1, 1),
            const QuiltedGridTile(1, 1),
            const QuiltedGridTile(2, 1),
            const QuiltedGridTile(1, 1),
            const QuiltedGridTile(1, 1),
            const QuiltedGridTile(2, 1),
            const QuiltedGridTile(1, 1),
            const QuiltedGridTile(1, 1),
            const QuiltedGridTile(1, 1),
            const QuiltedGridTile(1, 1),
            // const QuiltedGridTile(2, 1),
            // const QuiltedGridTile(2, 1),
            // const QuiltedGridTile(4, 2),
            // const QuiltedGridTile(2, 1),
            // const QuiltedGridTile(2, 1),
            // const QuiltedGridTile(2, 1),
            // const QuiltedGridTile(2, 1),
            // const QuiltedGridTile(4, 2),
            // const QuiltedGridTile(2, 1),
            // const QuiltedGridTile(2, 1),
            // const QuiltedGridTile(2, 1),
            // const QuiltedGridTile(2, 1),
            // const QuiltedGridTile(4, 2),
            // const QuiltedGridTile(2, 1),
            // const QuiltedGridTile(2, 1),
          ],
        ),
        childrenDelegate: SliverChildBuilderDelegate(
          (context, index) => Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              fit: BoxFit.cover,
              image:
                  NetworkImage('https://picsum.photos/500/500?random=$index'),
            )),
          ),
        ),
      ),
    );
  }
}
