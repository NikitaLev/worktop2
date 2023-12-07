import 'package:flutter/material.dart';
import '../components/Data.dart';
import '../components/container_bottom.dart';
import '../components/container_top.dart';

class CreateTicketPage extends StatefulWidget {
  const CreateTicketPage({super.key});

  @override
  State<CreateTicketPage> createState() => _CreateTicketPageState();
}

class _CreateTicketPageState extends State<CreateTicketPage> {
  Data data = Data(name: 'name', phone: 'phone', manufacturer: 'manufacturer');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 24,
                  backgroundColor: Colors.blue,
                ),
                SizedBox(width: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Имя Фамилия',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      'Должность',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            child: Container(
              margin: const EdgeInsets.only(top: 16, left: 16, right: 16),
              child: CustomTopContainer(
                date: '26 ноября 2023',
                name: 'Иван Иванов',
                avatar:
                    'https://sun9-79.userapi.com/impg/7OKhfylGY0Ayh_bALsDZItbJNCQr9TGg8u9bpA/2i8eUL4JIxA.jpg?size=914x899&quality=95&sign=1eb37fa31e951e84fbd76102802ae887&type=album',
              ),
            ),
          ),
          Container(
            child: Expanded(
              flex: 9,
              child: Container(
                margin: const EdgeInsets.only(left: 16, right: 16),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                ),
                child: CustomBottomContainer(data: data),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
