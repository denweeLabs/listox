import 'package:listox/core/groceries/data/model/grocery_category_dto.dart';
import 'package:listox/core/groceries/data/model/grocery_template_dto.dart';
import 'package:app_core/app_core.dart';

const groceryIconsBasePath = 'assets/icons/groceries/';

const kGroceryPredefinedIcons = [
  '${groceryIconsBasePath}milk.svg',
  '${groceryIconsBasePath}eggs.svg',
  '${groceryIconsBasePath}baguette.svg',
  '${groceryIconsBasePath}cheese.svg',
  '${groceryIconsBasePath}avocado.svg',
  '${groceryIconsBasePath}chef-hat.svg',
  '${groceryIconsBasePath}michelin-star-green.svg',
  '${groceryIconsBasePath}paw.svg',
  '${groceryIconsBasePath}tools-kitchen-2.svg',
  '${groceryIconsBasePath}coffee.svg',
  '${groceryIconsBasePath}bottle.svg',
  '${groceryIconsBasePath}meat.svg',
  '${groceryIconsBasePath}apple.svg',
  '${groceryIconsBasePath}french-fries-02.svg',
  '${groceryIconsBasePath}brand-pepsi.svg',
  '${groceryIconsBasePath}garlic.svg',
  '${groceryIconsBasePath}pepper.svg',
  '${groceryIconsBasePath}toilet-paper.svg',
  '${groceryIconsBasePath}mood-boy.svg',
  '${groceryIconsBasePath}dental.svg',
  '${groceryIconsBasePath}hand-sanitizer.svg',
  '${groceryIconsBasePath}spray.svg',
  '${groceryIconsBasePath}razor.svg',
  '${groceryIconsBasePath}razor-electric.svg',
  '${groceryIconsBasePath}bowl-chopsticks.svg',
  '${groceryIconsBasePath}note.svg',
  '${groceryIconsBasePath}salt.svg',
  '${groceryIconsBasePath}drop-circle.svg',
  '${groceryIconsBasePath}lollipop.svg',
  '${groceryIconsBasePath}paper-bag.svg',
  '${groceryIconsBasePath}cylinder.svg',
  '${groceryIconsBasePath}cake.svg',
  '${groceryIconsBasePath}wash-dry-1.svg',
  '${groceryIconsBasePath}trash.svg',
  '${groceryIconsBasePath}badge-wc.svg',
  '${groceryIconsBasePath}wash-press.svg',
  '${groceryIconsBasePath}window.svg',
  '${groceryIconsBasePath}swipe.svg',
  '${groceryIconsBasePath}bandage-off.svg',
  '${groceryIconsBasePath}pill.svg',
  '${groceryIconsBasePath}bandage.svg',
  '${groceryIconsBasePath}medicine-syrup.svg',
  '${groceryIconsBasePath}first-aid-kit.svg',
  '${groceryIconsBasePath}battery-vertical-charging.svg',
  '${groceryIconsBasePath}bulb.svg',
  '${groceryIconsBasePath}paw.svg',
  '${groceryIconsBasePath}printer.svg',
  '${groceryIconsBasePath}carrot.svg',
  '${groceryIconsBasePath}cup.svg',
  '${groceryIconsBasePath}lemon.svg',
  '${groceryIconsBasePath}fish.svg',
  '${groceryIconsBasePath}mushroom.svg',
  '${groceryIconsBasePath}milkshake.svg',
  '${groceryIconsBasePath}tools-kitchen-3.svg',
  '${groceryIconsBasePath}wheat.svg',
  '${groceryIconsBasePath}cherry.svg',
  '${groceryIconsBasePath}dog-bowl.svg',
  '${groceryIconsBasePath}egg-fried.svg',
  '${groceryIconsBasePath}pizza.svg',
  '${groceryIconsBasePath}salad.svg',
  '${groceryIconsBasePath}soup.svg',
  '${groceryIconsBasePath}ball-football.svg',
  '${groceryIconsBasePath}chisel.svg',
  '${groceryIconsBasePath}hanger-2.svg',
  '${groceryIconsBasePath}hanger.svg',
  '${groceryIconsBasePath}axe.svg',
  '${groceryIconsBasePath}shirt-sport.svg',
  '${groceryIconsBasePath}sock.svg',
  '${groceryIconsBasePath}yin-yang.svg',
  '${groceryIconsBasePath}photo-video.svg',
  '${groceryIconsBasePath}air-conditioning-disabled.svg',
  '${groceryIconsBasePath}armchair.svg',
  '${groceryIconsBasePath}device-remote.svg',
  '${groceryIconsBasePath}sofa.svg',
  '${groceryIconsBasePath}vacuum-cleaner.svg',
  '${groceryIconsBasePath}headphones.svg',
  '${groceryIconsBasePath}device-mobile.svg',
  '${groceryIconsBasePath}speakerphone.svg',
  '${groceryIconsBasePath}hotel-service.svg',
  '${groceryIconsBasePath}phone-call.svg',
  '${groceryIconsBasePath}shoe.svg',
  '${groceryIconsBasePath}shovel.svg',
  '${groceryIconsBasePath}thermometer.svg',
  '${groceryIconsBasePath}microphone-2.svg',
  '${groceryIconsBasePath}bubble-tea.svg',
  '${groceryIconsBasePath}sun-wind.svg',
  '${groceryIconsBasePath}wallet.svg',
  '${groceryIconsBasePath}gift.svg',
  '${groceryIconsBasePath}table.svg',
  '${groceryIconsBasePath}scale.svg',
  '${groceryIconsBasePath}confetti.svg',
  '${groceryIconsBasePath}device-gamepad-2.svg',
  '${groceryIconsBasePath}shirt.svg',
  '${groceryIconsBasePath}plant-2.svg',
];

// Category UUIDs — stable, version-4-format identifiers
const _catFood      = 'c0000000-0000-4000-8000-000000000001';
const _catBathroom  = 'c0000000-0000-4000-8000-000000000002';
const _catKitchen   = 'c0000000-0000-4000-8000-000000000003';
const _catCleaning  = 'c0000000-0000-4000-8000-000000000004';
const _catHealth    = 'c0000000-0000-4000-8000-000000000005';
const _catOther     = 'c0000000-0000-4000-8000-000000000006';

final categoryOtherId = UniqueId.fromValue(_catOther);

const kGroceryCategories = <GroceryCategoryDto>[
  GroceryCategoryDto(id: _catFood,     name: 'categories.food'),
  GroceryCategoryDto(id: _catBathroom, name: 'categories.bathroom'),
  GroceryCategoryDto(id: _catKitchen,  name: 'categories.kitchen'),
  GroceryCategoryDto(id: _catCleaning, name: 'categories.cleaning'),
  GroceryCategoryDto(id: _catHealth,   name: 'categories.health'),
  GroceryCategoryDto(id: _catOther,    name: 'categories.other'),
];

const kPredefinedGroceries = <GroceryTemplateDto>[

  // =========================
  // FOOD (core weekly staples)
  // =========================

  GroceryTemplateDto(id: 'b0000000-0000-4000-8000-000000000001', categoryId: _catFood,     name: 'groceries.milk',        consumptionPeriodDays: 3.0,   icon: '${groceryIconsBasePath}milk-carton.svg'),
  GroceryTemplateDto(id: 'b0000000-0000-4000-8000-000000000002', categoryId: _catFood,     name: 'groceries.eggs',        consumptionPeriodDays: 8.0,   icon: '${groceryIconsBasePath}eggs.svg'),
  GroceryTemplateDto(id: 'b0000000-0000-4000-8000-000000000003', categoryId: _catFood,     name: 'groceries.bread',       consumptionPeriodDays: 5.0,   icon: '${groceryIconsBasePath}baguette.svg'),
  GroceryTemplateDto(id: 'b0000000-0000-4000-8000-000000000004', categoryId: _catFood,     name: 'groceries.cheese',      consumptionPeriodDays: 14.0,  icon: '${groceryIconsBasePath}cheese.svg'),
  GroceryTemplateDto(id: 'b0000000-0000-4000-8000-000000000005', categoryId: _catFood,     name: 'groceries.yogurt',      consumptionPeriodDays: 7.0,   icon: '${groceryIconsBasePath}chef-hat.svg'),
  GroceryTemplateDto(id: 'b0000000-0000-4000-8000-000000000006', categoryId: _catFood,     name: 'groceries.rice',        consumptionPeriodDays: 45.0,  icon: '${groceryIconsBasePath}michelin-star-green.svg'),
  GroceryTemplateDto(id: 'b0000000-0000-4000-8000-000000000007', categoryId: _catFood,     name: 'groceries.pasta',       consumptionPeriodDays: 30.0,  icon: '${groceryIconsBasePath}tools-kitchen-2.svg'),
  GroceryTemplateDto(id: 'b0000000-0000-4000-8000-000000000008', categoryId: _catFood,     name: 'groceries.coffee',      consumptionPeriodDays: 14.0,  icon: '${groceryIconsBasePath}coffee.svg'),
  GroceryTemplateDto(id: 'b0000000-0000-4000-8000-000000000009', categoryId: _catFood,     name: 'groceries.water',       consumptionPeriodDays: 7.0,   icon: '${groceryIconsBasePath}bottle.svg'),
  GroceryTemplateDto(id: 'b0000000-0000-4000-8000-000000000010', categoryId: _catFood,     name: 'groceries.chicken',     consumptionPeriodDays: 7.0,   icon: '${groceryIconsBasePath}meat.svg'),
  GroceryTemplateDto(id: 'b0000000-0000-4000-8000-000000000011', categoryId: _catFood,     name: 'groceries.bananas',     consumptionPeriodDays: 5.0,   icon: '${groceryIconsBasePath}sausage.svg'),
  GroceryTemplateDto(id: 'b0000000-0000-4000-8000-000000000012', categoryId: _catFood,     name: 'groceries.apples',      consumptionPeriodDays: 7.0,   icon: '${groceryIconsBasePath}apple.svg'),
  GroceryTemplateDto(id: 'b0000000-0000-4000-8000-000000000013', categoryId: _catFood,     name: 'groceries.potatoes',    consumptionPeriodDays: 14.0,  icon: '${groceryIconsBasePath}french-fries-02.svg'),
  GroceryTemplateDto(id: 'b0000000-0000-4000-8000-000000000014', categoryId: _catFood,     name: 'groceries.onions',      consumptionPeriodDays: 14.0,  icon: '${groceryIconsBasePath}brand-pepsi.svg'),
  GroceryTemplateDto(id: 'b0000000-0000-4000-8000-000000000015', categoryId: _catFood,     name: 'groceries.butter',      consumptionPeriodDays: 20.0,  icon: '${groceryIconsBasePath}bread.svg'),
  GroceryTemplateDto(id: 'b0000000-0000-4000-8000-000000000016', categoryId: _catFood,     name: 'groceries.pepper',      consumptionPeriodDays: 14.0,  icon: '${groceryIconsBasePath}pepper.svg'),
  GroceryTemplateDto(id: 'b0000000-0000-4000-8000-000000000017', categoryId: _catFood,     name: 'groceries.garlic',      consumptionPeriodDays: 14.0,  icon: '${groceryIconsBasePath}garlic.svg'),
  GroceryTemplateDto(id: 'b0000000-0000-4000-8000-000000000018', categoryId: _catFood,     name: 'groceries.carrot',      consumptionPeriodDays: 14.0,  icon: '${groceryIconsBasePath}carrot.svg'),

  // =========================
  // BATHROOM (daily hygiene)
  // =========================

  GroceryTemplateDto(id: 'b0000000-0000-4000-8000-000000000019', categoryId: _catBathroom, name: 'groceries.toilet_paper',  consumptionPeriodDays: 14.0, icon: '${groceryIconsBasePath}toilet-paper.svg'),
  GroceryTemplateDto(id: 'b0000000-0000-4000-8000-000000000020', categoryId: _catBathroom, name: 'groceries.shampoo',       consumptionPeriodDays: 30.0, icon: '${groceryIconsBasePath}mood-boy.svg'),
  GroceryTemplateDto(id: 'b0000000-0000-4000-8000-000000000021', categoryId: _catBathroom, name: 'groceries.toothpaste',    consumptionPeriodDays: 30.0, icon: '${groceryIconsBasePath}dental.svg'),
  GroceryTemplateDto(id: 'b0000000-0000-4000-8000-000000000022', categoryId: _catBathroom, name: 'groceries.soap',          consumptionPeriodDays: 21.0, icon: '${groceryIconsBasePath}hand-sanitizer.svg'),
  GroceryTemplateDto(id: 'b0000000-0000-4000-8000-000000000023', categoryId: _catBathroom, name: 'groceries.deodorant',     consumptionPeriodDays: 30.0, icon: '${groceryIconsBasePath}spray.svg'),
  GroceryTemplateDto(id: 'b0000000-0000-4000-8000-000000000024', categoryId: _catBathroom, name: 'groceries.toothbrush',    consumptionPeriodDays: 90.0, icon: '${groceryIconsBasePath}razor.svg'),
  GroceryTemplateDto(id: 'b0000000-0000-4000-8000-000000000025', categoryId: _catBathroom, name: 'groceries.shaving_cream', consumptionPeriodDays: 30.0, icon: '${groceryIconsBasePath}razor-electric.svg'),

  // =========================
  // KITCHEN (cooking + prep)
  // =========================

  GroceryTemplateDto(id: 'b0000000-0000-4000-8000-000000000026', categoryId: _catKitchen,  name: 'groceries.dish_soap',    consumptionPeriodDays: 30.0,  icon: '${groceryIconsBasePath}bowl-chopsticks.svg'),
  GroceryTemplateDto(id: 'b0000000-0000-4000-8000-000000000027', categoryId: _catKitchen,  name: 'groceries.paper_towels', consumptionPeriodDays: 14.0,  icon: '${groceryIconsBasePath}note.svg'),
  GroceryTemplateDto(id: 'b0000000-0000-4000-8000-000000000028', categoryId: _catKitchen,  name: 'groceries.salt',         consumptionPeriodDays: 120.0, icon: '${groceryIconsBasePath}salt.svg'),
  GroceryTemplateDto(id: 'b0000000-0000-4000-8000-000000000029', categoryId: _catKitchen,  name: 'groceries.olive_oil',    consumptionPeriodDays: 30.0,  icon: '${groceryIconsBasePath}drop-circle.svg'),
  GroceryTemplateDto(id: 'b0000000-0000-4000-8000-000000000030', categoryId: _catKitchen,  name: 'groceries.sugar',        consumptionPeriodDays: 60.0,  icon: '${groceryIconsBasePath}lollipop.svg'),
  GroceryTemplateDto(id: 'b0000000-0000-4000-8000-000000000031', categoryId: _catKitchen,  name: 'groceries.flour',        consumptionPeriodDays: 90.0,  icon: '${groceryIconsBasePath}paper-bag.svg'),
  GroceryTemplateDto(id: 'b0000000-0000-4000-8000-000000000032', categoryId: _catKitchen,  name: 'groceries.foil',         consumptionPeriodDays: 60.0,  icon: '${groceryIconsBasePath}cylinder.svg'),
  GroceryTemplateDto(id: 'b0000000-0000-4000-8000-000000000033', categoryId: _catKitchen,  name: 'groceries.baking_paper', consumptionPeriodDays: 60.0,  icon: '${groceryIconsBasePath}cake.svg'),

  // =========================
  // CLEANING (household)
  // =========================

  GroceryTemplateDto(id: 'b0000000-0000-4000-8000-000000000034', categoryId: _catCleaning, name: 'groceries.laundry_detergent',   consumptionPeriodDays: 30.0, icon: '${groceryIconsBasePath}wash-dry-1.svg'),
  GroceryTemplateDto(id: 'b0000000-0000-4000-8000-000000000035', categoryId: _catCleaning, name: 'groceries.trash_bags',          consumptionPeriodDays: 20.0, icon: '${groceryIconsBasePath}trash.svg'),
  GroceryTemplateDto(id: 'b0000000-0000-4000-8000-000000000036', categoryId: _catCleaning, name: 'groceries.toilet_cleaner',      consumptionPeriodDays: 30.0, icon: '${groceryIconsBasePath}badge-wc.svg'),
  GroceryTemplateDto(id: 'b0000000-0000-4000-8000-000000000037', categoryId: _catCleaning, name: 'groceries.multi_surface_cleaner', consumptionPeriodDays: 30.0, icon: '${groceryIconsBasePath}wash-press.svg'),
  GroceryTemplateDto(id: 'b0000000-0000-4000-8000-000000000038', categoryId: _catCleaning, name: 'groceries.glass_cleaner',       consumptionPeriodDays: 45.0, icon: '${groceryIconsBasePath}window.svg'),
  GroceryTemplateDto(id: 'b0000000-0000-4000-8000-000000000039', categoryId: _catCleaning, name: 'groceries.disinfectant_spray',  consumptionPeriodDays: 30.0, icon: '${groceryIconsBasePath}spray.svg'),
  GroceryTemplateDto(id: 'b0000000-0000-4000-8000-000000000040', categoryId: _catCleaning, name: 'groceries.wipes',               consumptionPeriodDays: 30.0, icon: '${groceryIconsBasePath}swipe.svg'),

  // =========================
  // HEALTH (important refills)
  // =========================

  GroceryTemplateDto(id: 'b0000000-0000-4000-8000-000000000041', categoryId: _catHealth,   name: 'groceries.painkillers',   consumptionPeriodDays: 90.0,  icon: '${groceryIconsBasePath}bandage-off.svg'),
  GroceryTemplateDto(id: 'b0000000-0000-4000-8000-000000000042', categoryId: _catHealth,   name: 'groceries.vitamins',      consumptionPeriodDays: 30.0,  icon: '${groceryIconsBasePath}pill.svg'),
  GroceryTemplateDto(id: 'b0000000-0000-4000-8000-000000000043', categoryId: _catHealth,   name: 'groceries.bandages',      consumptionPeriodDays: 180.0, icon: '${groceryIconsBasePath}bandage.svg'),
  GroceryTemplateDto(id: 'b0000000-0000-4000-8000-000000000044', categoryId: _catHealth,   name: 'groceries.cough_syrup',   consumptionPeriodDays: 120.0, icon: '${groceryIconsBasePath}medicine-syrup.svg'),
  GroceryTemplateDto(id: 'b0000000-0000-4000-8000-000000000045', categoryId: _catHealth,   name: 'groceries.first_aid_kit', consumptionPeriodDays: 180.0, icon: '${groceryIconsBasePath}first-aid-kit.svg'),

  // =========================
  // OTHER (basic household)
  // =========================

  GroceryTemplateDto(id: 'b0000000-0000-4000-8000-000000000046', categoryId: _catOther,    name: 'groceries.batteries',     consumptionPeriodDays: 90.0,  icon: '${groceryIconsBasePath}battery-vertical-charging.svg'),
  GroceryTemplateDto(id: 'b0000000-0000-4000-8000-000000000047', categoryId: _catOther,    name: 'groceries.light_bulbs',   consumptionPeriodDays: 180.0, icon: '${groceryIconsBasePath}bulb.svg'),
  GroceryTemplateDto(id: 'b0000000-0000-4000-8000-000000000048', categoryId: _catOther,    name: 'groceries.pet_food',      consumptionPeriodDays: 14.0,  icon: '${groceryIconsBasePath}paw.svg'),
  GroceryTemplateDto(id: 'b0000000-0000-4000-8000-000000000049', categoryId: _catOther,    name: 'groceries.printer_paper', consumptionPeriodDays: 120.0, icon: '${groceryIconsBasePath}printer.svg'),
];
