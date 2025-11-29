import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  final List<Appointment> appointments = const [
    Appointment(name: 'Ahmed Darwish', time: '10:50'),
    Appointment(name: 'Ahmed Nader', time: '13:00'),
    Appointment(name: 'Yasser', time: '15:20'),
    Appointment(name: 'Adham', time: '16:10'),
    Appointment(name: 'Ehab', time: '16:40'),
    Appointment(name: 'Ahmed khaled', time: '08:00'),
    Appointment(name: 'Ziad ', time: '19:40'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "Appointments",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu,
              color: Colors.white,
              size: 35,
            ),
          )
        ],
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.access_alarm_outlined,
            color: Colors.white,
            size: 30,
          ),
        ),
      ),
      body: Container(
        color: Colors.grey[100],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                'Tuesday, 29 November 2025',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey[700],
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),


            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 8,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: ListView.separated(
                  padding: EdgeInsets.all(16),
                  itemCount: appointments.length,
                  separatorBuilder: (context, index) => Divider(
                    color: Colors.grey[200],
                    height: 1,
                    thickness: 1,
                  ),
                  itemBuilder: (context, index) {
                    return AppointmentListItem(
                      appointment: appointments[index],
                      isFirst: index == 0,
                      isLast: index == appointments.length - 1,
                    );
                  },
                ),
              ),
            ),


            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding: EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Text(
                  'Add New Appointment',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Appointment {
  final String name;
  final String time;

  const Appointment({required this.name, required this.time});
}

class AppointmentListItem extends StatelessWidget {
  final Appointment appointment;
  final bool isFirst;
  final bool isLast;

  const AppointmentListItem({
    Key? key,
    required this.appointment,
    this.isFirst = false,
    this.isLast = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.vertical(
          top: isFirst ? Radius.circular(12) : Radius.zero,
          bottom: isLast ? Radius.circular(12) : Radius.zero,
        ),
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              appointment.name,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.black87,
              ),
            ),
          ),


          Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              color: Colors.blue[50],
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.blue, width: 1.5),
            ),
            child: Text(
              appointment.time,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.blue[800],
              ),
            ),
          ),
        ],
      ),
    );
  }
}