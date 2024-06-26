import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CardCertificateWidget extends StatelessWidget {
  final String imagePath;
  final String title1;
  final String title2;
  final String title3;
  final DateTime dateEnd;
  final VoidCallback function;

  const CardCertificateWidget({
    Key? key,
    required this.imagePath,
    required this.title1,
    required this.title2,
    required this.title3,
    required this.dateEnd,
    required this.function,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String formattedDateEnd = DateFormat('MM/yyyy').format(dateEnd);

    return Padding(
      padding:
          const EdgeInsets.only(top: 3.0, bottom: 0, left: 3.0, right: 3.0),
      child: Card(
        color: const Color.fromRGBO(36, 167, 174, 0.5),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: imagePath.isNotEmpty
                    ? Image.network(
                        imagePath,
                        width: 100,
                        height: 80,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return const Icon(
                            Icons.error,
                            size: 80,
                            color: Colors.red,
                          );
                        },
                      )
                    : const Icon(
                        Icons.image_not_supported,
                        size: 80,
                        color: Colors.grey,
                      ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title1,
                      style: const TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 1.0),
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                        fontFamily: 'RobotoMono',
                      ),
                    ),
                    Text(
                      title2,
                      style: const TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 1.0),
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          formattedDateEnd,
                          style: const TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1.0),
                            fontFamily: 'RobotoMono',
                            fontSize: 12,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Flexible(
                          child: Text(
                            title3,
                            style: const TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1.0),
                              fontFamily: 'RobotoMono',
                              fontSize: 12,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: function,
                child: const Icon(
                  Icons.remove_red_eye,
                  size: 40,
                  color: Color.fromRGBO(36, 167, 174, 1.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
