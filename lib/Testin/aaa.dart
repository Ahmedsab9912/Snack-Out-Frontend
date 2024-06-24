// import 'package:flutter/material.dart';
//
// class PartyMembersDisplay extends StatefulWidget {
//   @override
//   _PartyMembersDisplayState createState() => _PartyMembersDisplayState();
// }
//
// class _PartyMembersDisplayState extends State<PartyMembersDisplay> {
//   late Future<List<PartyMembersModel>> _futurePartyMembers;
//
//   @override
//   void initState() {
//     super.initState();
//     _futurePartyMembers = fetchPartyMembers();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder<List<PartyMembersModel>>(
//       future: _futurePartyMembers,
//       builder: (context, snapshot) {
//         if (snapshot.hasData) {
//           return ListView.builder(
//             scrollDirection: Axis.horizontal, // Horizontal scrolling list
//             itemCount: snapshot.data!.length,
//             itemBuilder: (context, index) {
//               final member = snapshot.data![index];
//               return Column(
//                 children: [
//                   CircleAvatar(
//                     radius: 30,
//                     backgroundImage: NetworkImage(member.imageUrl),
//                   ),
//                   SizedBox(height: 8),
//                   Text(member.username),
//                 ],
//               );
//             },
//           );
//         } else if (snapshot.hasError) {
//           return Text('${snapshot.error}');
//         }
//         return CircularProgressIndicator();
//       },
//     );
//   }
// }
