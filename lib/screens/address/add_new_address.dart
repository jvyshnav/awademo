import 'package:awademo/widgets/appbar/appbar.dart';
import 'package:flutter/material.dart';

class AddNewAddressScreen extends StatelessWidget {
  const AddNewAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        title: Text(
          "Add new Address",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Form(
            child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(
                    Icons.person,
                  ),
                  labelText: "Name"),
            ),
            defaultSizedBox(),
            TextFormField(
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(
                    Icons.phone,
                  ),
                  labelText: "phone number"),
            ),
            defaultSizedBox(),
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(
                          Icons.warehouse_outlined,
                        ),
                        labelText: "Street"),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: TextFormField(
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(
                          Icons.numbers,
                        ),
                        labelText: "postal code"),
                  ),
                ),
              ],
            ),
            defaultSizedBox(),
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(
                          Icons.location_city,
                        ),
                        labelText: "City"),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: TextFormField(
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(
                          Icons.place,
                        ),
                        labelText: "State"),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            SizedBox(width: double.infinity,
              child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                  onPressed: () {},
                  child: const Text(
                    "Save",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16,color: Colors.white),
                  )),
            )
          ],
        )),
      ),
    );
  }

  SizedBox defaultSizedBox() {
    return const SizedBox(
            height: 20  ,
          );
  }
}
