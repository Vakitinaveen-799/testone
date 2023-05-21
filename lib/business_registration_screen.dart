import 'package:flutter/material.dart';

import 'dashboard_ongoing_services.dart';

class MySlider extends StatefulWidget {
  const MySlider({Key? key}) : super(key: key);

  @override
  _MySliderState createState() => _MySliderState();
}

class _MySliderState extends State<MySlider> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  List<bool> _isOpen = [false, false, false];
  

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0D47A1),
        title: Text('Business Registration'),
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(text: 'Overview'),
            Tab(text: 'Benefits'),
            Tab(text: 'Documents Checklist'),
          ],
          onTap: (index) {
            // Navigate to the corresponding slide
            // using the _tabController.animateTo() method
            _tabController.animateTo(index);
          },
        ),
      ),
      body: TabBarView(
        physics: NeverScrollableScrollPhysics(),
        controller: _tabController,
        children: [
                Container(
                  child: SingleChildScrollView(
            child: Padding(padding: const EdgeInsets.all(16.0),
          child: Container(
          //  color: Colors.green,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                    'Overview',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Color(0xFF0D47A1)),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus tincidunt massa enim, ut faucibus ipsum euismod vel. Aenean hendrerit luctus orci, in aliquet ipsum fringilla vel. Nunc sagittis euismod orci ac imperdiet. In vel velit rhoncus, ultrices nisl quis, commodo magna.',
                    style: TextStyle(fontSize: 16),
                  ),
                   SizedBox(height: 32),
                  Text(
                    'Benefits',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Color(0xFF0D47A1)),
                  ),
                  SizedBox(height: 16),
                  ListView(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      ListTile(
  leading: CircleAvatar(
    backgroundColor: Color(0xFF64B5F6),
    radius: 8.0, // set the desired radius value here
  ),
  title: Padding(
    padding: EdgeInsets.only(left: 12.0), // set the desired padding value here
    child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. \nVivamus tincidunt massa enim, ut faucibus ipsum euismod vel.'),
  ),
),
ListTile(
  leading: CircleAvatar(
    backgroundColor: Color(0xFF64B5F6),
    radius: 8.0, // set the desired radius value here
  ),
  title: Padding(
    padding: EdgeInsets.only(left: 12.0), // set the desired padding value here
    child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. \nVivamus tincidunt massa enim, ut faucibus ipsum euismod vel.'),
  ),
),

                    ],
                  ),
                  SizedBox(height: 32),
                  Text(
                    'Documents Checklist',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Color(0xFF0D47A1)),
                  ),
                  
                  SizedBox(height: 16),
                  ListView(
  shrinkWrap: true,
  physics: NeverScrollableScrollPhysics(),
  children: [
    ListTile(
      leading: Text('1.'),
      title: Text('E-Form 132'),
    ),
    ListTile(
      leading: Text('2.'),
      title: Text('Form name'),
    ),
    ListTile(
      leading: Text('3.'),
      title: Text('Scanned copy of PAN Card or Passport\n (Foreign Nationals & NRIs)'),
    ),
    ListTile(
      leading: Text('4.'),
      title: Text('Scanned copy of Voter’s ID/Passport/\n Driver’s License'),
    ),
  ],
),

                  SizedBox(height: 32),
                Text(
                  'Prerequisites',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Color(0xFF0D47A1)),
                ),
                SizedBox(height: 16),
                  ListView(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      ListTile(
                        leading: CircleAvatar(
    backgroundColor: Color(0xFF64B5F6),
    radius: 8.0, // set the desired radius value here
  ),
                        title: Text('Benefit 1'),
                      ),
                      ListTile(
                        leading: CircleAvatar(
    backgroundColor: Color(0xFF64B5F6),
    radius: 8.0, // set the desired radius value here
  ),
                        title: Text('Benefit 2'),
                      ),
                    ],
                  ),
                  SizedBox(height: 32),
                Text(
                  'FAQs',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Color(0xFF0D47A1)),
                ),    
                 SizedBox(height: 32),
                 Column(
                  children: [
                    ExpansionPanelList(
                      expansionCallback: (int index, bool isExpanded) {
                  setState(() {
                    _isOpen[index] = !isExpanded;
                  });
                },
                children: [
                  ExpansionPanel(headerBuilder: (BuildContext context, bool isExpanded) {
                      return ListTile(
                        title: Text('What is the product warranty?'),
                      );
                    }, 
                    body: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            'Our products come with a one-year warranty. If there is any manufacturing defect or issue with the product, please contact us and we will take care of it.',
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            'Please note that the warranty does not cover damage due to misuse or accidents.',
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            'To claim warranty, please provide the original purchase receipt and contact our customer service team.',
                          ),
                        ),
                      ],
                    ),
                    isExpanded: _isOpen[0],
                  ),
                  ExpansionPanel(headerBuilder: (BuildContext context, bool isExpanded) {
                      return ListTile(
                        title: Text('What is the product warranty?'),
                      );
                    }, 
                    body: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            'Our products come with a one-year warranty. If there is any manufacturing defect or issue with the product, please contact us and we will take care of it.',
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            'Please note that the warranty does not cover damage due to misuse or accidents.',
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            'To claim warranty, please provide the original purchase receipt and contact our customer service team.',
                          ),
                        ),
                      ],
                    ),
                    isExpanded: _isOpen[1],
                  ),
                  ExpansionPanel(headerBuilder: (BuildContext context, bool isExpanded) {
                      return ListTile(
                        title: Text('What is the product warranty?'),
                      );
                    }, 
                    body: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            'Our products come with a one-year warranty. If there is any manufacturing defect or issue with the product, please contact us and we will take care of it.',
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            'Please note that the warranty does not cover damage due to misuse or accidents.',
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            'To claim warranty, please provide the original purchase receipt and contact our customer service team.',
                          ),
                        ),
                      ],
                    ),
                    isExpanded: _isOpen[2],
                  ),
                  
                ],
                    )
                  ],
                 ),
                 SizedBox(height: 62),      
                         
              ]
            ),
                  
          ),
          
          ),
          ),
          ),
          Container(
                  child: SingleChildScrollView(
            child: Padding(padding: const EdgeInsets.all(16.0),
          child: Container(
           // color: Colors.yellow,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                    'Overview',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Color(0xFF0D47A1)),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus tincidunt massa enim, ut faucibus ipsum euismod vel. Aenean hendrerit luctus orci, in aliquet ipsum fringilla vel. Nunc sagittis euismod orci ac imperdiet. In vel velit rhoncus, ultrices nisl quis, commodo magna.',
                    style: TextStyle(fontSize: 16),
                  ),
                   SizedBox(height: 32),
                  Text(
                    'Benefits',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 16),
                  ListView(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      ListTile(
                        leading: CircleAvatar(
    backgroundColor: Color(0xFF64B5F6),
    radius: 8.0, // set the desired radius value here
  ),
                        title: Text('Benefit 1'),
                      ),
                      ListTile(
                        leading: CircleAvatar(
    backgroundColor: Color(0xFF64B5F6),
    radius: 8.0, // set the desired radius value here
  ),
                        title: Text('Benefit 2'),
                      ),
                    ],
                  ),
                  SizedBox(height: 32),
                  Text(
                    'Documents Checklist',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Color(0xFF0D47A1)),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Please ensure that you have the following documents ready before proceeding:',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 16),
                  ListView(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      ListTile(
                        leading: Text('1.'),
                        title: Text('Scanned copy of PAN Card or Passport (Foreign Nationals & NRIs)'),
                      ),
                      ListTile(
                        leading: Text('2.'),
                        title: Text('Scanned copy of Voter’s ID/Passport/ Driver’s License'),
                      ),
                      ListTile(
                        leading: Text('3.'),
                        title: Text('Form Details'),
                      ),
                      ListTile(
                        leading: Text('4.'),
                        title: Text('Form uploads'),
                      ),
                    ],
                  ),
                  SizedBox(height: 32),
                Text(
                  'Prerequisites',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Color(0xFF0D47A1)),
                ),
                SizedBox(height: 16),
                  ListView(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      ListTile(
                        leading: CircleAvatar(
    backgroundColor: Color(0xFF64B5F6),
    radius: 8.0, // set the desired radius value here
  ),
                        title: Text('Benefit 1'),
                      ),
                      ListTile(
                        leading: CircleAvatar(
    backgroundColor: Color(0xFF64B5F6),
    radius: 8.0, // set the desired radius value here
  ),
                        title: Text('Benefit 2'),
                      ),
                    ],
                  ),
                  SizedBox(height: 32),
                Text(
                  'FAQs',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Color(0xFF0D47A1)),
                ),    
                 SizedBox(height: 32),
                 Column(
                  children: [
                    ExpansionPanelList(
                      expansionCallback: (int index, bool isExpanded) {
                  setState(() {
                    _isOpen[index] = !isExpanded;
                  });
                },
                children: [
                  ExpansionPanel(headerBuilder: (BuildContext context, bool isExpanded) {
                      return ListTile(
                        title: Text('What is the product warranty?'),
                      );
                    }, 
                    body: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            'Our products come with a one-year warranty. If there is any manufacturing defect or issue with the product, please contact us and we will take care of it.',
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            'Please note that the warranty does not cover damage due to misuse or accidents.',
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            'To claim warranty, please provide the original purchase receipt and contact our customer service team.',
                          ),
                        ),
                      ],
                    ),
                    isExpanded: _isOpen[0],
                  ),
                  ExpansionPanel(headerBuilder: (BuildContext context, bool isExpanded) {
                      return ListTile(
                        title: Text('What is the product warranty?'),
                      );
                    }, 
                    body: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            'Our products come with a one-year warranty. If there is any manufacturing defect or issue with the product, please contact us and we will take care of it.',
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            'Please note that the warranty does not cover damage due to misuse or accidents.',
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            'To claim warranty, please provide the original purchase receipt and contact our customer service team.',
                          ),
                        ),
                      ],
                    ),
                    isExpanded: _isOpen[1],
                  ),
                  ExpansionPanel(headerBuilder: (BuildContext context, bool isExpanded) {
                      return ListTile(
                        title: Text('What is the product warranty?'),
                      );
                    }, 
                    body: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            'Our products come with a one-year warranty. If there is any manufacturing defect or issue with the product, please contact us and we will take care of it.',
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            'Please note that the warranty does not cover damage due to misuse or accidents.',
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            'To claim warranty, please provide the original purchase receipt and contact our customer service team.',
                          ),
                        ),
                      ],
                    ),
                    isExpanded: _isOpen[2],
                  ),
                  
                ],
                    )
                  ],
                  
                 ),  
                 SizedBox(height: 62),   
                         
              ]
            ),
                  
          ),
          
          ),
          ),
          ),
          
          Container(
                  child: SingleChildScrollView(
            child: Padding(padding: const EdgeInsets.all(16.0),
          child: Container(
           // color: Colors.red,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                    'Overview',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Color(0xFF0D47A1)),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus tincidunt massa enim, ut faucibus ipsum euismod vel. Aenean hendrerit luctus orci, in aliquet ipsum fringilla vel. Nunc sagittis euismod orci ac imperdiet. In vel velit rhoncus, ultrices nisl quis, commodo magna.',
                    style: TextStyle(fontSize: 16),
                  ),
                   SizedBox(height: 32),
                  Text(
                    'Benefits',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 16),
                  ListView(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      ListTile(
                        leading: CircleAvatar(
    backgroundColor: Color(0xFF64B5F6),
    radius: 8.0, // set the desired radius value here
  ),
                        title: Text('Benefit 1'),
                      ),
                      ListTile(
                        leading: CircleAvatar(
    backgroundColor: Color(0xFF64B5F6),
    radius: 8.0, // set the desired radius value here
  ),
                        title: Text('Benefit 2'),
                      ),
                    ],
                  ),
                  SizedBox(height: 32),
                  Text(
                    'Documents Checklist',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Color(0xFF0D47A1)),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Please ensure that you have the following documents ready before proceeding:',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 16),
                  ListView(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      ListTile(
                        leading: Text('1.'),
                        title: Text('Scanned copy of PAN Card or Passport (Foreign Nationals & NRIs)'),
                      ),
                      ListTile(
                        leading: Text('2.'),
                        title: Text('Scanned copy of Voter’s ID/Passport/ Driver’s License'),
                      ),
                      ListTile(
                        leading: Text('3.'),
                        title: Text('Form Details'),
                      ),
                      ListTile(
                        leading: Text('4.'),
                        title: Text('Form uploads'),
                      ),
                    ],
                  ),
                  SizedBox(height: 32),
                Text(
                  'Prerequisites',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Color(0xFF0D47A1)),
                ),
                SizedBox(height: 16),
                  ListView(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      ListTile(
                        leading: CircleAvatar(
    backgroundColor: Color(0xFF64B5F6),
    radius: 8.0, // set the desired radius value here
  ),
                        title: Text('Benefit 1'),
                      ),
                      ListTile(
                        leading: CircleAvatar(
    backgroundColor: Color(0xFF64B5F6),
    radius: 8.0, // set the desired radius value here
  ),
                        title: Text('Benefit 2'),
                      ),
                    ],
                  ),
                  SizedBox(height: 32),
                Text(
                  'FAQs',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Color(0xFF0D47A1)),
                ),    
                 SizedBox(height: 32),
                 Column(
                  children: [
                    ExpansionPanelList(
                      expansionCallback: (int index, bool isExpanded) {
                  setState(() {
                    _isOpen[index] = !isExpanded;
                  });
                },
                children: [
                  ExpansionPanel(headerBuilder: (BuildContext context, bool isExpanded) {
                      return ListTile(
                        title: Text('What is the product warranty?'),
                      );
                    }, 
                    body: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            'Our products come with a one-year warranty. If there is any manufacturing defect or issue with the product, please contact us and we will take care of it.',
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            'Please note that the warranty does not cover damage due to misuse or accidents.',
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            'To claim warranty, please provide the original purchase receipt and contact our customer service team.',
                          ),
                        ),
                      ],
                    ),
                    isExpanded: _isOpen[0],
                  ),
                  ExpansionPanel(headerBuilder: (BuildContext context, bool isExpanded) {
                      return ListTile(
                        title: Text('What is the product warranty?'),
                      );
                    }, 
                    body: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            'Our products come with a one-year warranty. If there is any manufacturing defect or issue with the product, please contact us and we will take care of it.',
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            'Please note that the warranty does not cover damage due to misuse or accidents.',
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            'To claim warranty, please provide the original purchase receipt and contact our customer service team.',
                          ),
                        ),
                      ],
                    ),
                    isExpanded: _isOpen[1],
                  ),
                  ExpansionPanel(headerBuilder: (BuildContext context, bool isExpanded) {
                      return ListTile(
                        title: Text('What is the product warranty?'),
                      );
                    }, 
                    body: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            'Our products come with a one-year warranty. If there is any manufacturing defect or issue with the product, please contact us and we will take care of it.',
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            'Please note that the warranty does not cover damage due to misuse or accidents.',
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            'To claim warranty, please provide the original purchase receipt and contact our customer service team.',
                          ),
                        ),
                      ],
                    ),
                    isExpanded: _isOpen[2],
                  ),
                  
                ],
                    )
                  ],
                 
                 ),
                 SizedBox(height: 62),      
                         
              ]
              
            ),
                  
          ),
          
          ),
          ),
          ),
          
        ],
    
      ),
      floatingActionButton: SizedBox(
          width: 350.0,
          height: 60.0,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
        primary: Color(0xFF0D47A1),
        elevation: 6.0, // set the desired elevation value here
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0), // set the desired border radius value here
        ),
      ),
            onPressed: () {
              // Do something when the button is pressed
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DashboardOngoingServices()),
            );
            },
            child: Text('Book Service'),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,






    );
    
  }
}
