import 'package:flutter/material.dart';
import 'package:to_do/constants/routes.dart';
import 'package:to_do/data/models/remote/post_res_model.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({super.key, required this.post});
  final PostResModel post;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .pushNamed(AppRoutes.details, arguments: {"id": post.id});
      },
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${post.id}",
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                "${post.title}",
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                "${post.body}",
                style: const TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
    
    
    
    
    
    
    
//     Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
//       child: Card(
//         elevation: 5,
//         child: Center(
//           child: ListTile(
//             leading: Text("${post.id}"),
//             title: Text("${post.title}"),
//             subtitle: Text("${post.body}"),
//           ),
//         ),
//       ),
//     );
//   }
// }
