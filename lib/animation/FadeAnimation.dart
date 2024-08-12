// import 'package:flutter/material.dart';

// class FadeAnimationDemo extends StatefulWidget {
//   @override
//   _FadeAnimationDemoState createState() => _FadeAnimationDemoState();
// }

// class _FadeAnimationDemoState extends State<FadeAnimationDemo>
//     with SingleTickerProviderStateMixin {
//   late AnimationController _controller;
//   late Animation<double> _animation;

//   @override
//   void initState() {
//     super.initState();
//     _controller = AnimationController(
//       vsync: this,
//       duration: Duration(seconds: 2),
//     );
//     _animation = Tween<double>(
//       begin: 0,
//       end: 1,
//     ).animate(_controller);
//     _controller.forward();
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Fade Animation Demo'),
//       ),
//       body: Center(
//         child: FadeTransition(
//           opacity: _animation,
//           child: Container(
//             width: 200,
//             height: 200,
//             color: Colors.blue,
//             child: Center(
//               child: Text(
//                 'Fade Animation',
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 20,
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
