import 'package:flutter/material.dart';
import 'package:healthyfy/home.dart';
class Profile extends StatefulWidget {

  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
    String? selectedGender;
    final TextEditingController _fnameController = TextEditingController();
    final TextEditingController _lnameController = TextEditingController();
    final TextEditingController _addressController = TextEditingController();
    final TextEditingController _dateController = TextEditingController();
    DateTime? _selectedDate;
    void _pickDate(context) async{
      DateTime? picked =  await showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime(2000),
          lastDate: DateTime(2100));
      print(picked);
      // _selectedDate =
      if (picked!=null){
        _dateController.text = "${picked.day}/${picked.month}/${picked.year}";
        }

    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Healthyfy 🍀", )),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              CircleAvatar(radius: 50, backgroundImage: AssetImage("assets/images/coffee.png"),),
              SizedBox(height: 20,child: Text("Profile", style: TextStyle(color: Colors.deepPurple, fontSize: 15),)),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField( controller: _fnameController,
                  decoration: InputDecoration(
                  label: Text("Enter your First Name: "),
                  enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                  prefixIcon: Icon(Icons.person_outline_rounded),
                  suffixIcon: Icon(Icons.check_circle, color: Colors.green,)
                ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _lnameController,
                  decoration: InputDecoration(
                  label: Text("Enter your Last Name: "),
                  enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                  prefixIcon: Icon(Icons.person_outline_rounded),
                  suffixIcon: Icon(Icons.check_circle, color: Colors.green,)
                ),
                ),
              ),

              // Row 1
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: _dateController,
                        readOnly: false,
                        decoration: InputDecoration(
                          label: Text("Date of Birth"),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          prefixIcon: const Icon(Icons.calendar_month_outlined),
                        ),
                        onTap: () {
                          _pickDate(context);

                        }

                        // async{
                        //   DateTime? selectedDate = await showDatePicker(
                        //       context: context,
                        //       initialDate: DateTime.now(),
                        //       firstDate: DateTime(1900),
                        //       lastDate: DateTime.now(),
                        //   );
                        //   if( selectedDate!= null){
                        //     _dateController.text = "${selectedDate.day}/${selectedDate.month}/${selectedDate.year}";
                        //   }
                        // }
                        ,
                        

                      ),
                    ),
                    SizedBox(width: 10),
                    // TextButton(onPressed: (){_pickDate(context);}, child: Text("Date?")),
                    // Space between the fields
                   Expanded(
                    child: DropdownButtonFormField<String>(

                      decoration: InputDecoration(
                        labelText: "Gender",
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      value: selectedGender, //this is the damned controller!!
                      items: ["Male", "Female", "Other"]
                          .map((gender) => DropdownMenuItem<String>(
                        value: gender,
                        child: Text(gender),
                      ))
                          .toList(),
                      onChanged: (value) {
                        setState(() {
                          selectedGender = value!;
                        });
                      },
                    ),
                  ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _addressController,
                  decoration: InputDecoration(
                    label: Text("Enter Address: "),
                    enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                    prefixIcon: Icon(Icons.person_outline_rounded),
                    suffixIcon: Icon(Icons.check_circle, color: Colors.green,)
                ),
                ),
              ),

              // Row 2
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          label: Text("Pincode"),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          prefixIcon: Icon(Icons.numbers_outlined),
                        ),
                      ),
                    ),
                    SizedBox(width: 10), // Space between the fields
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          label: Text("Roll Number"),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          prefixIcon: Icon(Icons.question_mark_rounded),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomSheet:Padding( padding: EdgeInsets.all(0),
        child: ElevatedButton(
            onPressed: (){
              //Navigator.pop(context, MaterialPageRoute(builder: (context) => const Home()));
              print(_fnameController.text);
              print(_lnameController.text);
              print(selectedGender);
              print(_addressController.text);
              print(_dateController.text);
            }, child: Text("Submit !")),
      ) ,
    );
  }
}

