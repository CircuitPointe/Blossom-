import 'package:blossom/features/contact_person/data_collection/data_collection_provider.dart';
import 'package:blossom/features/contact_us/contact_us_provider.dart';
import 'package:blossom/features/feedback/feedback_provider.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import 'features/contact_person/family_inventory/family_inventory_provider.dart';
import 'features/contact_person/home_visits/home_visits_provider.dart';

final providers = <SingleChildWidget>[
  ChangeNotifierProvider(create: (_) => FamilyInventoryProvider()),
  ChangeNotifierProvider(create: (_) => HomeVisitsProvider()),
  ChangeNotifierProvider(create: (_) => FeedbackProvider()),
  ChangeNotifierProvider(create: (_) => ContactUsProvider()),
  ChangeNotifierProvider(create: (_) => DataCollectionProvider())
];