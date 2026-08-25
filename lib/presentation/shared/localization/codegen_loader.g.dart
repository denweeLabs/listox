// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes, avoid_renaming_method_parameters, constant_identifier_names

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>?> load(String path, Locale locale) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> _zh = {
  "appTitle": "Listox",
  "loading": {
    "just_a_moment": "请稍候..."
  },
  "error": {
    "generic_titles": {
      "title1": "哎呀！",
      "title2": "出错了",
      "title3": "糟糕！",
      "title4": "嗯...",
      "title5": "好吧",
      "title6": "意外！",
      "title7": "又来了！",
      "title8": "哦不",
      "title9": "错误",
      "title10": "糟了",
      "title11": "出错啦"
    }
  },
  "error_message": {
    "grocery_not_found": "找不到该商品",
    "grocery_storage": "数据保存失败",
    "common": {
      "unexpected": "发生了意外错误... 我们正在处理！🚨"
    },
    "email": {
      "failed_to_open_support": "哎呀！无法打开邮件应用... 你可以随时发邮件至 {} 联系我们 💌"
    },
    "preferences_unexpected": "发生了意外问题"
  },
  "label": {
    "oops": "哎呀",
    "whoops": "哎呀！"
  },
  "snackbar": {
    "badConnection": {
      "title": "无网络连接",
      "description": "请检查你的网络连接"
    }
  },
  "common": {
    "cancel": "取消",
    "delete": "删除",
    "edit": "编辑"
  },
  "account": {
    "title": "账户",
    "premium_status_premium": "高级用户",
    "premium_status_upgrade": "高级版",
    "premium_expiry": "高级版有效期至 {date}。感谢你的支持 <3",
    "premium_upgrade_cta": "升级高级版，无限管理购物清单！",
    "notifications_enabled": "已开启",
    "notifications_disabled": "已关闭",
    "notifications_description": "出门购物前收到提醒",
    "section_notifications": "通知",
    "section_preferences": "偏好设置",
    "language_title": "语言",
    "language_subtitle": "界面语言",
    "haptics_title": "触感反馈",
    "haptics_subtitle": "振动反馈",
    "section_theme": "主题",
    "theme_system": "跟随系统",
    "theme_light": "浅色",
    "theme_dark": "深色",
    "section_colorations": "配色",
    "section_more": "更多",
    "about_app": "关于应用",
    "privacy_terms": "隐私与条款",
    "contact_support": "联系客服"
  },
  "dialog": {
    "delete_grocery": {
      "title": "删除商品？",
      "subtitle": "确定要删除\"{name}\"吗？此操作无法撤销 ⛔️"
    },
    "notification_mode": {
      "title": "提醒计划",
      "auto_label": "自动",
      "auto_description": "预测下次购物时间",
      "custom_days_label": "自定义",
      "custom_days_description": "选择特定星期几"
    },
    "permission": {
      "notifications_title": "权限",
      "notifications_subtitle": "请允许此应用的通知权限以接收提醒",
      "notifications_subtitle_settings": "请在系统设置中允许此应用的通知权限"
    }
  },
  "edit_grocery": {
    "title": "编辑商品\n\"{name}\"",
    "input_name_hint": "叫什么名字？",
    "input_period_hint": "多少天买一次？",
    "input_period_default": {
      "one": "每 {} 天",
      "other": "每 {} 天"
    },
    "input_period_description": "输入大概的周期，Listox 会从你的购买记录中学习！",
    "button_update": "更新"
  },
  "home": {
    "header_title": "你可能需要购买的商品",
    "tab_this_week": "本周",
    "tab_later": "稍后",
    "purchase_confirmed": "购买已确认！",
    "purchase_confirmed_description": "我们将学习您的使用习惯，预测您何时再次需要这些商品",
    "due_overdue": {
      "one": "已超期 {} 天",
      "other": "已超期 {} 天"
    },
    "due_today": "今天到期",
    "due_tomorrow": "明天到期",
    "due_in_days": {
      "one": "还剩 {} 天",
      "other": "还剩 {} 天"
    },
    "pre_list_this_week": "本周可能需要",
    "pre_list_later": "之后可能需要",
    "checked_section_title": "已选商品",
    "fully_stocked": "库存充足！",
    "premium_lock_cta": "升级高级版查看全部",
    "premium_upgrade_hint": "用高级版解锁所有杂货"
  },
  "purchase_banner": {
    "fully_stocked": "库存充足！点击「购买」确认",
    "items_checked": {
      "one": "已选 1 件！点击「购买」确认",
      "other": "已选 {} 件！点击「购买」确认"
    },
    "button_purchase": "购买"
  },
  "tutorial": {
    "schedule_heading": "你的购物计划",
    "this_week_body": "这里显示 Listox 预测你下次购物需要的商品。",
    "later_body": "这里显示暂时还有余量的商品，到了补货时间会移至「本周」。",
    "skip": "跳过"
  },
  "welcome": {
    "title": "欢迎使用 Listox",
    "onboarding_subtitle": "智能购物清单，记住你的购买习惯，提醒你何时补货",
    "bullet1_title": "追踪必需品",
    "bullet1_subtitle": "添加你常买的商品，统一管理",
    "bullet2_title": "再也不会忘记",
    "bullet2_subtitle": "Listox 学习你的购买频率，预测补货时间",
    "bullet3_title": "随时准备好购物",
    "bullet3_subtitle": "出门前查看本周需要购买的商品",
    "cta": "继续"
  },
  "select_groceries": {
    "heading": "选择必需品",
    "description": "选择你经常购买的商品，Listox 会追踪你何时需要它们",
    "button_done": "完成",
    "button_selected_suffix": "/{max} 已选",
    "add": "添加",
    "limit_reached": "目前最多可选 {max} 件商品"
  },
  "search_groceries": {
    "hint": "搜索商品..."
  },
  "weekdays_m": {
    "mon": "周一",
    "tue": "周二",
    "wed": "周三",
    "thu": "周四",
    "fri": "周五",
    "sat": "周六",
    "sun": "周日"
  },
  "weekdays_s": {
    "mon": "一",
    "tue": "二",
    "wed": "三",
    "thu": "四",
    "fri": "五",
    "sat": "六",
    "sun": "日"
  },
  "notifications": {
    "mode_auto": "自动",
    "prompts": {
      "title_1": "快去超市了？🏪",
      "body_1": "查看清单，不要漏掉任何东西",
      "title_2": "准备去购物？🛒",
      "body_2": "看看哪些必需品快用完了",
      "title_3": "下次购物提醒 🛒",
      "body_3": "出发前快看看你需要什么",
      "title_4": "快去买东西了？🛒",
      "body_4": "查看哪些商品需要补货",
      "title_5": "准备去超市？🏪",
      "body_5": "你的购物清单已准备好，快看看吧",
      "title_6": "别忘了任何东西 🛒",
      "body_6": "你的购物清单已更新",
      "title_7": "计划去购物？🏪",
      "body_7": "查看清单，充分利用这次购物",
      "title_8": "购物前 🛍️",
      "body_8": "快速查看清单能为你省不少时间",
      "title_9": "顺路去趟超市？🛒",
      "body_9": "你可能需要的商品已在清单上",
      "title_10": "有什么快用完了？⏰",
      "body_10": "你的购物清单已是最新，快看看吧"
    }
  },
  "add_custom_grocery": {
    "heading": "创建自定义\n必需品",
    "input_name_hint": "叫什么名字？",
    "input_period_hint": "多少天买一次？",
    "input_period_description": "输入大概的周期，Listox 会从你的购买记录中学习！",
    "button_create": "创建"
  },
  "quick_add": {
    "tile_label": "快速添加",
    "dialog_title": "快速添加",
    "dialog_subtitle": "确认购买后，该商品将被移除。",
    "hint": "输入名称",
    "empty_state_hint": "临时需要某样东西？点击任意处添加"
  },
  "paywall": {
    "bullet1": "无限追踪必需品",
    "bullet2": "建立完整的购物清单",
    "bullet3": "购物前清楚知道需要什么"
  },
  "smart_engine_banner": {
    "title": "智能档案",
    "description": "Listox 记录你的购买习惯，在你缺货前推荐购物清单。"
  },
  "categories": {
    "food": "食品",
    "bathroom": "卫浴",
    "kitchen": "厨房",
    "cleaning": "清洁",
    "health": "健康",
    "other": "其他"
  },
  "groceries": {
    "milk": "牛奶",
    "eggs": "鸡蛋",
    "bread": "面包",
    "cheese": "奶酪",
    "yogurt": "酸奶",
    "rice": "大米",
    "pasta": "意面",
    "coffee": "咖啡",
    "water": "矿泉水",
    "chicken": "鸡肉",
    "bananas": "香蕉",
    "apples": "苹果",
    "potatoes": "土豆",
    "onions": "洋葱",
    "butter": "黄油",
    "pepper": "胡椒",
    "garlic": "大蒜",
    "carrot": "胡萝卜",
    "toilet_paper": "卫生纸",
    "shampoo": "洗发水",
    "toothpaste": "牙膏",
    "soap": "肥皂",
    "deodorant": "止汗剂",
    "toothbrush": "牙刷",
    "shaving_cream": "剃须膏",
    "dish_soap": "洗洁精",
    "paper_towels": "厨房纸",
    "salt": "盐",
    "olive_oil": "橄榄油",
    "sugar": "白糖",
    "flour": "面粉",
    "foil": "锡纸",
    "baking_paper": "烘焙纸",
    "laundry_detergent": "洗衣液",
    "trash_bags": "垃圾袋",
    "toilet_cleaner": "马桶清洁剂",
    "multi_surface_cleaner": "多功能清洁剂",
    "glass_cleaner": "玻璃清洁剂",
    "disinfectant_spray": "消毒喷雾",
    "wipes": "湿巾",
    "painkillers": "止痛药",
    "vitamins": "维生素",
    "bandages": "创可贴",
    "cough_syrup": "止咳糖浆",
    "first_aid_kit": "急救箱",
    "batteries": "电池",
    "light_bulbs": "灯泡",
    "pet_food": "宠物粮",
    "printer_paper": "打印纸"
  }
};
static const Map<String,dynamic> _tr = {
  "appTitle": "Listox",
  "loading": {
    "just_a_moment": "Bir saniye..."
  },
  "error": {
    "generic_titles": {
      "title1": "Hay aksi!",
      "title2": "Bir şeyler yanlış gitti",
      "title3": "Ah hayır!",
      "title4": "Hmm...",
      "title5": "Peki öyleyse",
      "title6": "Beklenmedik!",
      "title7": "Yine mi!",
      "title8": "Aman",
      "title9": "Hata",
      "title10": "Vay canına",
      "title11": "Hata oluştu"
    }
  },
  "error_message": {
    "grocery_not_found": "Ürün bulunamadı",
    "grocery_storage": "Veriler kaydedilemedi",
    "common": {
      "unexpected": "Beklenmedik bir hata oluştu... Üzerinde çalışıyoruz! 🚨"
    },
    "email": {
      "failed_to_open_support": "Hay aksi! E-posta uygulaması açılamadı... {} adresinden bize ulaşabilirsin 💌"
    },
    "preferences_unexpected": "Beklenmedik bir sorun oluştu"
  },
  "label": {
    "oops": "Hay aksi",
    "whoops": "Hay aksi!"
  },
  "snackbar": {
    "badConnection": {
      "title": "Bağlantı yok",
      "description": "İnternet bağlantını kontrol et"
    }
  },
  "common": {
    "cancel": "İptal",
    "delete": "Sil",
    "edit": "Düzenle"
  },
  "account": {
    "title": "Hesap",
    "premium_status_premium": "Premium Kullanıcı",
    "premium_status_upgrade": "Premium",
    "premium_expiry": "Premium {date} tarihine kadar geçerli. Desteğin için teşekkürler <3",
    "premium_upgrade_cta": "Sınırsız yönetim için Premium'a geç!",
    "notifications_enabled": "Açık",
    "notifications_disabled": "Kapalı",
    "notifications_description": "Markete gitmeden önce hızlı bir hatırlatıcı",
    "section_notifications": "Bildirimler",
    "section_preferences": "Tercihler",
    "language_title": "Dil",
    "language_subtitle": "Arayüz dili",
    "haptics_title": "Dokunsal",
    "haptics_subtitle": "Titreşim geri bildirimi",
    "section_theme": "Tema",
    "theme_system": "Sistem",
    "theme_light": "Açık",
    "theme_dark": "Koyu",
    "section_colorations": "Renkler",
    "section_more": "Daha fazla",
    "about_app": "Uygulama hakkında",
    "privacy_terms": "Gizlilik",
    "contact_support": "Destek ile iletişim"
  },
  "dialog": {
    "delete_grocery": {
      "title": "Ürün silinsin mi?",
      "subtitle": "\"{name}\" ürününü silmek istediğinden emin misin? Bu işlem geri alınamaz ⛔️"
    },
    "notification_mode": {
      "title": "Hatırlatıcı Planı",
      "auto_label": "Otomatik",
      "auto_description": "Bir sonraki alışverişi tahmin eder",
      "custom_days_label": "Özel günler",
      "custom_days_description": "Belirli günleri seç"
    },
    "permission": {
      "notifications_title": "İzin",
      "notifications_subtitle": "Bildirim almak için bu uygulamaya izin ver",
      "notifications_subtitle_settings": "Bildirim almak için sistem ayarlarından bu uygulamaya izin ver"
    }
  },
  "edit_grocery": {
    "title": "Ürünü düzenle\n\"{name}\"",
    "input_name_hint": "Ne diye çağıralım?",
    "input_period_hint": "Kaç günde bir satın alıyorsun?",
    "input_period_default": {
      "one": "Her {} günde",
      "other": "Her {} günde"
    },
    "input_period_description": "Yaklaşık bir süre gir. Listox alışveriş geçmişinden öğrenecek!",
    "button_update": "Güncelle"
  },
  "home": {
    "header_title": "Satın almanız gerekebilecek ürünler",
    "tab_this_week": "Bu Hafta",
    "tab_later": "Sonra",
    "purchase_confirmed": "Alışveriş onaylandı!",
    "purchase_confirmed_description": "Kullanımınızı öğreneceğiz ve bu ürünlere tekrar ne zaman ihtiyaç duyacağınızı tahmin edeceğiz",
    "due_overdue": {
      "one": "{} gün gecikmiş",
      "other": "{} gün gecikmiş"
    },
    "due_today": "Bugün alınmalı",
    "due_tomorrow": "Yarın alınmalı",
    "due_in_days": {
      "one": "{} gün sonra",
      "other": "{} gün sonra"
    },
    "pre_list_this_week": "Bu hafta gerekli olabilir",
    "pre_list_later": "Sonra gerekli olabilir",
    "checked_section_title": "İşaretlenen ürünler",
    "fully_stocked": "Stoğun yeterli!",
    "premium_lock_cta": "Her şeyi görmek için Premium'a geç",
    "premium_upgrade_hint": "Premium ile tüm ürünlerin kilidini aç"
  },
  "purchase_banner": {
    "fully_stocked": "Her şey tamam! Onaylamak için \"Satın Al\"a dokun",
    "items_checked": {
      "one": "1 ürün işaretlendi! Onaylamak için \"Satın Al\"a dokun",
      "other": "{} ürün işaretlendi! Onaylamak için \"Satın Al\"a dokun"
    },
    "button_purchase": "Satın Al"
  },
  "tutorial": {
    "schedule_heading": "ALIŞVERİŞ TAKVİMİN",
    "this_week_body": "Burada Listox'un bir sonraki alışverişinde ihtiyaç duyacağını tahmin ettiği ürünleri göreceksin.",
    "later_body": "Burada henüz yeterince stokta olan ürünleri göreceksin. Yenileme zamanı gelince \"Bu Hafta\"ya geçerler.",
    "skip": "GEÇ"
  },
  "welcome": {
    "title": "Listox'a Hoş Geldin",
    "onboarding_subtitle": "Ne satın aldığını öğrenen ve ne zaman yenileme yapman gerektiğini hatırlatan akıllı alışveriş listen",
    "bullet1_title": "Temel ihtiyaçları takip et",
    "bullet1_subtitle": "Düzenli olarak satın aldıklarını ekle ve hepsini tek bir yerde tut",
    "bullet2_title": "Bir daha unutma",
    "bullet2_subtitle": "Listox satın alma sıklığını öğrenir ve ne zaman yenileme yapman gerektiğini tahmin eder",
    "bullet3_title": "Markete her zaman hazır",
    "bullet3_subtitle": "Çıkmadan önce bu hafta neye ihtiyacın olabileceğini gör",
    "cta": "Devam"
  },
  "select_groceries": {
    "heading": "Temel ihtiyaçları seç",
    "description": "Sık satın aldığın ürünleri seç. Listox ne zaman ihtiyaç duyacağını takip edecek",
    "button_done": "Tamam",
    "button_selected_suffix": "/{max} seçildi",
    "add": "Ekle",
    "limit_reached": "Şimdilik en fazla {max} ürün seçebilirsin"
  },
  "search_groceries": {
    "hint": "Ürün ara..."
  },
  "weekdays_m": {
    "mon": "Pzt",
    "tue": "Sal",
    "wed": "Çar",
    "thu": "Per",
    "fri": "Cum",
    "sat": "Cmt",
    "sun": "Paz"
  },
  "weekdays_s": {
    "mon": "Pt",
    "tue": "Sa",
    "wed": "Ça",
    "thu": "Pe",
    "fri": "Cu",
    "sat": "Ct",
    "sun": "Pz"
  },
  "notifications": {
    "mode_auto": "Otomatik",
    "prompts": {
      "title_1": "Yakında markete mi gidiyorsun? 🏪",
      "body_1": "Hiçbir şeyi kaçırmamak için listeni kontrol et",
      "title_2": "Alışveriş yapmaya gidiyor musun? 🛒",
      "body_2": "Hangi temel ihtiyaçların azaldığını gör",
      "title_3": "Bir sonraki alışverişin 🛒",
      "body_3": "Neye ihtiyacın olabileceğine hızlıca bak",
      "title_4": "Yakında alışveriş mi? 🛒",
      "body_4": "Neyin yenilenmesi gerektiğini kontrol et",
      "title_5": "Markete gidiyor musun? 🏪",
      "body_5": "Listen hazır! Hızlıca bak",
      "title_6": "Hiçbir şeyi unutma 🛒",
      "body_6": "Alışveriş listen hazır",
      "title_7": "Markete gitmeyi planlıyor musun? 🏪",
      "body_7": "Listeni kontrol et ve geziden yararlan",
      "title_8": "Alışverişe gitmeden önce 🛍️",
      "body_8": "Listeye hızlı bir bakış sana zaman kazandırabilir",
      "title_9": "Yakında marketten geçecek misin? 🛒",
      "body_9": "İhtiyaç duyabileceğin temel ürünler zaten listende",
      "title_10": "Bir şeyler bitiyor mu? ⏰",
      "body_10": "Alışveriş listen güncel, bir göz at"
    }
  },
  "add_custom_grocery": {
    "heading": "Özel ürün\noluştur",
    "input_name_hint": "Ne diye çağıralım?",
    "input_period_hint": "Kaç günde bir satın alıyorsun?",
    "input_period_description": "Yaklaşık bir süre gir. Listox alışveriş geçmişinden öğrenecek!",
    "button_create": "Oluştur"
  },
  "quick_add": {
    "tile_label": "Hızlı ekle",
    "dialog_title": "Hızlı ekle",
    "dialog_subtitle": "Ürün, alışveriş onaylandıktan sonra kaldırılacak.",
    "hint": "Ad gir",
    "empty_state_hint": "Sadece bir kez bir şeye mi ihtiyacın var? Eklemek için herhangi bir yere dokun"
  },
  "paywall": {
    "bullet1": "Sınırsız temel ürün takibi",
    "bullet2": "Eksiksiz temel ürün listenizi oluşturun",
    "bullet3": "Alışverişten önce her zaman neye ihtiyaç duyduğunuzu bilin"
  },
  "smart_engine_banner": {
    "title": "Akıllı Profil",
    "description": "Listox satın aldıklarını öğrenir ve stok bitmeden önce alışveriş listeleri önerir."
  },
  "categories": {
    "food": "Gıda",
    "bathroom": "Banyo",
    "kitchen": "Mutfak",
    "cleaning": "Temizlik",
    "health": "Sağlık",
    "other": "Diğer"
  },
  "groceries": {
    "milk": "Süt",
    "eggs": "Yumurta",
    "bread": "Ekmek",
    "cheese": "Peynir",
    "yogurt": "Yoğurt",
    "rice": "Pirinç",
    "pasta": "Makarna",
    "coffee": "Kahve",
    "water": "Su",
    "chicken": "Tavuk",
    "bananas": "Muz",
    "apples": "Elma",
    "potatoes": "Patates",
    "onions": "Soğan",
    "butter": "Tereyağı",
    "pepper": "Karabiber",
    "garlic": "Sarımsak",
    "carrot": "Havuç",
    "toilet_paper": "Tuvalet kağıdı",
    "shampoo": "Şampuan",
    "toothpaste": "Diş macunu",
    "soap": "Sabun",
    "deodorant": "Deodorant",
    "toothbrush": "Diş fırçası",
    "shaving_cream": "Tıraş köpüğü",
    "dish_soap": "Bulaşık deterjanı",
    "paper_towels": "Kağıt havlu",
    "salt": "Tuz",
    "olive_oil": "Zeytinyağı",
    "sugar": "Şeker",
    "flour": "Un",
    "foil": "Alüminyum folyo",
    "baking_paper": "Fırın kağıdı",
    "laundry_detergent": "Çamaşır deterjanı",
    "trash_bags": "Çöp torbası",
    "toilet_cleaner": "Tuvalet temizleyici",
    "multi_surface_cleaner": "Çok amaçlı temizleyici",
    "glass_cleaner": "Cam temizleyici",
    "disinfectant_spray": "Dezenfektan sprey",
    "wipes": "Islak mendil",
    "painkillers": "Ağrı kesici",
    "vitamins": "Vitamin",
    "bandages": "Yara bandı",
    "cough_syrup": "Öksürük şurubu",
    "first_aid_kit": "İlk yardım çantası",
    "batteries": "Pil",
    "light_bulbs": "Ampul",
    "pet_food": "Evcil hayvan maması",
    "printer_paper": "Yazıcı kağıdı"
  }
};
static const Map<String,dynamic> _hu = {
  "appTitle": "Listox",
  "loading": {
    "just_a_moment": "Egy pillanat..."
  },
  "error": {
    "generic_titles": {
      "title1": "Hoppá!",
      "title2": "Valami nem stimmel",
      "title3": "Ó, nem!",
      "title4": "Hmm...",
      "title5": "Nos",
      "title6": "Váratlan!",
      "title7": "Megint!",
      "title8": "Jaj",
      "title9": "Hiba",
      "title10": "Ne már",
      "title11": "Ups"
    }
  },
  "error_message": {
    "grocery_not_found": "A termék nem található",
    "grocery_storage": "Az adatok mentése sikertelen",
    "common": {
      "unexpected": "Hoppá! Váratlan hiba történt... Dolgozunk rajta! 🚨"
    },
    "email": {
      "failed_to_open_support": "Hoppá! Nem sikerült megnyitni az e-mail alkalmazást... Elérhet minket a {} címen 💌"
    },
    "preferences_unexpected": "Váratlan probléma merült fel"
  },
  "label": {
    "oops": "Hoppá",
    "whoops": "Hoppá!"
  },
  "snackbar": {
    "badConnection": {
      "title": "Nincs kapcsolat",
      "description": "Ellenőrizze az internetkapcsolatot"
    }
  },
  "common": {
    "cancel": "Mégse",
    "delete": "Törlés",
    "edit": "Szerkesztés"
  },
  "account": {
    "title": "Fiók",
    "premium_status_premium": "Prémium felhasználó",
    "premium_status_upgrade": "Prémium",
    "premium_expiry": "Prémium aktív {date}-ig. Köszönjük a támogatást <3",
    "premium_upgrade_cta": "Válts Prémiumra a korlátlan kezelésért!",
    "notifications_enabled": "Bekapcsolva",
    "notifications_disabled": "Kikapcsolva",
    "notifications_description": "Gyors emlékeztető vásárlás előtt",
    "section_notifications": "Értesítések",
    "section_preferences": "Beállítások",
    "language_title": "Nyelv",
    "language_subtitle": "Felület nyelve",
    "haptics_title": "Haptika",
    "haptics_subtitle": "Rezgéses visszajelzés",
    "section_theme": "Téma",
    "theme_system": "Rendszer",
    "theme_light": "Világos",
    "theme_dark": "Sötét",
    "section_colorations": "Színek",
    "section_more": "Több",
    "about_app": "Az alkalmazásról",
    "privacy_terms": "Adatvédelem",
    "contact_support": "Kapcsolat a támogatással"
  },
  "dialog": {
    "delete_grocery": {
      "title": "Törli a terméket?",
      "subtitle": "Biztosan törölni akarod a \"{name}\" terméket? Ez a művelet nem vonható vissza ⛔️"
    },
    "notification_mode": {
      "title": "Emlékeztető ütemezés",
      "auto_label": "Automatikus",
      "auto_description": "Előrejelzi a következő vásárlást",
      "custom_days_label": "Egyéni napok",
      "custom_days_description": "Válassz adott napokat"
    },
    "permission": {
      "notifications_title": "Engedély",
      "notifications_subtitle": "Az értesítések fogadásához engedélyezd ezt az alkalmazást",
      "notifications_subtitle_settings": "Az értesítések fogadásához engedélyezd ezt az alkalmazást a rendszer beállításaiban"
    }
  },
  "edit_grocery": {
    "title": "Termék szerkesztése\n\"{name}\"",
    "input_name_hint": "Mi a neve?",
    "input_period_hint": "Hány naponta veszed?",
    "input_period_default": {
      "one": "Minden {} naponként",
      "other": "Minden {} naponként"
    },
    "input_period_description": "Adj meg egy hozzávetőleges időszakot. A Listox megtanulja a vásárlási előzményeidből!",
    "button_update": "Frissítés"
  },
  "home": {
    "header_title": "Termékek, amelyeket esetleg meg kellene venni",
    "tab_this_week": "Ezen a Héten",
    "tab_later": "Később",
    "purchase_confirmed": "Vásárlás megerősítve!",
    "purchase_confirmed_description": "Megtanuljuk szokásait és megjósoljuk, mikor lesz szüksége ezekre a termékekre újra",
    "due_overdue": {
      "one": "{} napja lejárt",
      "other": "{} napja lejárt"
    },
    "due_today": "Ma esedékes",
    "due_tomorrow": "Holnap esedékes",
    "due_in_days": {
      "one": "{} nap múlva",
      "other": "{} nap múlva"
    },
    "pre_list_this_week": "Ezen a héten szükséges lehet",
    "pre_list_later": "Később szükséges lehet",
    "checked_section_title": "Bejelölt termékek",
    "fully_stocked": "A készleted elegendő!",
    "premium_lock_cta": "Válts Prémiumra az összes megtekintéséhez",
    "premium_upgrade_hint": "Oldj fel mindent a Premiummal"
  },
  "purchase_banner": {
    "fully_stocked": "Minden készen van! Nyomd a \"Vásárlás\" gombot a megerősítéshez",
    "items_checked": {
      "one": "1 termék bejelölve! Nyomd a \"Vásárlás\" gombot a megerősítéshez",
      "other": "{} termék bejelölve! Nyomd a \"Vásárlás\" gombot a megerősítéshez"
    },
    "button_purchase": "Vásárlás"
  },
  "tutorial": {
    "schedule_heading": "VÁSÁRLÁSI TERVEID",
    "this_week_body": "Itt láthatod azokat a termékeket, amelyeket a Listox előrejelez, hogy a következő bevásárláson szükséged lesz.",
    "later_body": "Itt láthatod azokat a termékeket, amelyekből még elegendő van. Átkerülnek az \"Ezen a Héten\" lapra, amikor ideje lesz pótolni.",
    "skip": "KIHAGYÁS"
  },
  "welcome": {
    "title": "Üdvözöl a Listox",
    "onboarding_subtitle": "Az okos bevásárlólista, amely megtanulja, mit veszel, és emlékeztet, mikor kell pótolni",
    "bullet1_title": "Kövesd az alapvető dolgokat",
    "bullet1_subtitle": "Add hozzá, amit rendszeresen vásárolsz, és tarts mindent egy helyen",
    "bullet2_title": "Soha ne felejts el",
    "bullet2_subtitle": "A Listox tanul és előrejelzi, mikor van ideje pótolni",
    "bullet3_title": "Mindig készen a vásárlásra",
    "bullet3_subtitle": "Nézd meg, mire lehet szükséged ezen a héten, mielőtt elmész",
    "cta": "Folytatás"
  },
  "select_groceries": {
    "heading": "Válaszd ki az alapvető dolgokat",
    "description": "Válaszd ki a termékeket, amelyeket gyakran vásárolsz. A Listox nyomon követi, mikor lesz szükséged rájuk",
    "button_done": "Kész",
    "button_selected_suffix": "/{max} kiválasztva",
    "add": "Hozzáadás",
    "limit_reached": "Jelenleg maximum {max} terméket választhatsz"
  },
  "search_groceries": {
    "hint": "Termékek keresése..."
  },
  "weekdays_m": {
    "mon": "Hé",
    "tue": "Ke",
    "wed": "Sze",
    "thu": "Cs",
    "fri": "Pé",
    "sat": "Szo",
    "sun": "Va"
  },
  "weekdays_s": {
    "mon": "H",
    "tue": "K",
    "wed": "Sze",
    "thu": "Cs",
    "fri": "P",
    "sat": "Szo",
    "sun": "V"
  },
  "notifications": {
    "mode_auto": "Automatikus",
    "prompts": {
      "title_1": "Hamarosan a szupermarketbe? 🏪",
      "body_1": "Ellenőrizd a listát, hogy semmit se hagyj ki",
      "title_2": "Bevásárolsz? 🛒",
      "body_2": "Nézd meg, melyik alapvető dolog fogy el",
      "title_3": "Következő vásárlás 🛒",
      "body_3": "Gyorsan nézd meg, mire lehet szükséged",
      "title_4": "Hamarosan vásárolsz? 🛒",
      "body_4": "Ellenőrizd, mi szorul pótlásra",
      "title_5": "Bemész az üzletbe? 🏪",
      "body_5": "A listád készen áll! Vetsd rá a pillantásodat",
      "title_6": "Ne felejts el semmit 🛒",
      "body_6": "A bevásárlólistád készen áll",
      "title_7": "Tervezel üzletbe látogatást? 🏪",
      "body_7": "Ellenőrizd a listát és hozd ki a maximumot az útból",
      "title_8": "Vásárlás előtt 🛍️",
      "body_8": "Egy gyors pillantás a listára időt takaríthat meg",
      "title_9": "Betérsz a boltba? 🛒",
      "body_9": "Az alapvető termékek, amelyekre szükséged lehet, már a listádon vannak",
      "title_10": "Valami elfogy? ⏰",
      "body_10": "A bevásárlólistád frissítve van, vetsd rá a pillantásodat"
    }
  },
  "add_custom_grocery": {
    "heading": "Egyéni termék\nlétrehozása",
    "input_name_hint": "Mi a neve?",
    "input_period_hint": "Hány naponta veszed?",
    "input_period_description": "Adj meg egy hozzávetőleges időszakot. A Listox megtanulja a vásárlási előzményeidből!",
    "button_create": "Létrehozás"
  },
  "quick_add": {
    "tile_label": "Gyors hozzáadás",
    "dialog_title": "Gyors hozzáadás",
    "dialog_subtitle": "A termék eltávolításra kerül a vásárlás megerősítése után.",
    "hint": "Írd be a nevet",
    "empty_state_hint": "Csak egyszer kell valami? Érintsd meg bárhol a hozzáadáshoz"
  },
  "paywall": {
    "bullet1": "Korlátlan számú termék nyomkövetése",
    "bullet2": "Az összes alapvető dolog teljes listájának összeállítása",
    "bullet3": "Mindig tudd, mire van szükséged vásárlás előtt"
  },
  "smart_engine_banner": {
    "title": "Okos Profil",
    "description": "A Listox megtanulja, mit vásárolsz, és bevásárlólistákat javasol, mielőtt elfogynak a készletek."
  },
  "categories": {
    "food": "Élelmiszer",
    "bathroom": "Fürdőszoba",
    "kitchen": "Konyha",
    "cleaning": "Takarítás",
    "health": "Egészség",
    "other": "Egyéb"
  },
  "groceries": {
    "milk": "Tej",
    "eggs": "Tojás",
    "bread": "Kenyér",
    "cheese": "Sajt",
    "yogurt": "Joghurt",
    "rice": "Rizs",
    "pasta": "Tészta",
    "coffee": "Kávé",
    "water": "Víz",
    "chicken": "Csirke",
    "bananas": "Banán",
    "apples": "Alma",
    "potatoes": "Burgonya",
    "onions": "Hagyma",
    "butter": "Vaj",
    "pepper": "Bors",
    "garlic": "Fokhagyma",
    "carrot": "Sárgarépa",
    "toilet_paper": "WC-papír",
    "shampoo": "Sampon",
    "toothpaste": "Fogkrém",
    "soap": "Szappan",
    "deodorant": "Dezodor",
    "toothbrush": "Fogkefe",
    "shaving_cream": "Borotvakrém",
    "dish_soap": "Mosogatószer",
    "paper_towels": "Papírtörlő",
    "salt": "Só",
    "olive_oil": "Olívaolaj",
    "sugar": "Cukor",
    "flour": "Liszt",
    "foil": "Alufólia",
    "baking_paper": "Sütőpapír",
    "laundry_detergent": "Mosószer",
    "trash_bags": "Szemetes zsák",
    "toilet_cleaner": "WC-tisztító",
    "multi_surface_cleaner": "Általános tisztítószer",
    "glass_cleaner": "Ablaktisztító",
    "disinfectant_spray": "Fertőtlenítő spray",
    "wipes": "Törlőkendő",
    "painkillers": "Fájdalomcsillapító",
    "vitamins": "Vitaminok",
    "bandages": "Tapasz",
    "cough_syrup": "Köhögés elleni szirup",
    "first_aid_kit": "Elsősegélycsomag",
    "batteries": "Elemek",
    "light_bulbs": "Izzók",
    "pet_food": "Állateledel",
    "printer_paper": "Nyomtatópapír"
  }
};
static const Map<String,dynamic> _nl = {
  "appTitle": "Listox",
  "loading": {
    "just_a_moment": "Een ogenblik..."
  },
  "error": {
    "generic_titles": {
      "title1": "Oeps!",
      "title2": "Er ging iets mis",
      "title3": "Oh nee!",
      "title4": "Hmm...",
      "title5": "Nou ja",
      "title6": "Onverwacht!",
      "title7": "Weer hetzelfde!",
      "title8": "Ai",
      "title9": "Fout",
      "title10": "Tjonge",
      "title11": "Oeps"
    }
  },
  "error_message": {
    "grocery_not_found": "Product niet gevonden",
    "grocery_storage": "Opslaan van gegevens mislukt",
    "common": {
      "unexpected": "Oeps! Er is een onverwachte fout opgetreden... We werken eraan! 🚨"
    },
    "email": {
      "failed_to_open_support": "Oeps! E-mailapp kon niet worden geopend... Je kunt ons bereiken via {} 💌"
    },
    "preferences_unexpected": "Er is een onverwacht probleem opgetreden"
  },
  "label": {
    "oops": "Oeps",
    "whoops": "Oeps!"
  },
  "snackbar": {
    "badConnection": {
      "title": "Geen verbinding",
      "description": "Controleer je internetverbinding"
    }
  },
  "common": {
    "cancel": "Annuleren",
    "delete": "Verwijderen",
    "edit": "Bewerken"
  },
  "account": {
    "title": "Account",
    "premium_status_premium": "Premium gebruiker",
    "premium_status_upgrade": "Premium",
    "premium_expiry": "Premium geldig tot {date}. Bedankt voor je steun <3",
    "premium_upgrade_cta": "Upgrade naar Premium voor onbeperkt beheer!",
    "notifications_enabled": "Aan",
    "notifications_disabled": "Uit",
    "notifications_description": "Snelle herinnering voor het winkelen",
    "section_notifications": "Meldingen",
    "section_preferences": "Voorkeuren",
    "language_title": "Taal",
    "language_subtitle": "Interfacetaal",
    "haptics_title": "Haptics",
    "haptics_subtitle": "Trillingsfeedback",
    "section_theme": "Thema",
    "theme_system": "Systeem",
    "theme_light": "Licht",
    "theme_dark": "Donker",
    "section_colorations": "Kleuren",
    "section_more": "Meer",
    "about_app": "Over de app",
    "privacy_terms": "Privacy",
    "contact_support": "Contact opnemen"
  },
  "dialog": {
    "delete_grocery": {
      "title": "Product verwijderen?",
      "subtitle": "Weet je zeker dat je \"{name}\" wilt verwijderen? Deze actie kan niet ongedaan worden gemaakt ⛔️"
    },
    "notification_mode": {
      "title": "Herinneringsschema",
      "auto_label": "Automatisch",
      "auto_description": "Voorspelt de volgende aankoop",
      "custom_days_label": "Aangepaste dagen",
      "custom_days_description": "Kies specifieke dagen"
    },
    "permission": {
      "notifications_title": "Toestemming",
      "notifications_subtitle": "Sta deze app toe om meldingen te ontvangen",
      "notifications_subtitle_settings": "Sta deze app toe in de systeeminstellingen om meldingen te ontvangen"
    }
  },
  "edit_grocery": {
    "title": "Product bewerken\n\"{name}\"",
    "input_name_hint": "Hoe heet het?",
    "input_period_hint": "Elke hoeveel dagen koop je dit?",
    "input_period_default": {
      "one": "Elke {} dag",
      "other": "Elke {} dagen"
    },
    "input_period_description": "Voer een geschatte periode in. Listox leert van je aankoopgeschiedenis!",
    "button_update": "Bijwerken"
  },
  "home": {
    "header_title": "Producten die je misschien moet kopen",
    "tab_this_week": "Deze Week",
    "tab_later": "Later",
    "purchase_confirmed": "Aankoop bevestigd!",
    "purchase_confirmed_description": "We leren je gebruikspatroon en voorspellen wanneer je deze items opnieuw nodig hebt",
    "due_overdue": {
      "one": "{} dag te laat",
      "other": "{} dagen te laat"
    },
    "due_today": "Vandaag verwacht",
    "due_tomorrow": "Morgen verwacht",
    "due_in_days": {
      "one": "Over {} dag",
      "other": "Over {} dagen"
    },
    "pre_list_this_week": "Misschien nodig deze week",
    "pre_list_later": "Misschien later nodig",
    "checked_section_title": "Aangevinkte producten",
    "fully_stocked": "Je voorraad is voldoende!",
    "premium_lock_cta": "Upgrade naar Premium om alles te zien",
    "premium_upgrade_hint": "Ontgrendel al je boodschappen met Premium"
  },
  "purchase_banner": {
    "fully_stocked": "Alles compleet! Tik op \"Kopen\" om te bevestigen",
    "items_checked": {
      "one": "1 product aangevinkt! Tik op \"Kopen\" om te bevestigen",
      "other": "{} producten aangevinkt! Tik op \"Kopen\" om te bevestigen"
    },
    "button_purchase": "Kopen"
  },
  "tutorial": {
    "schedule_heading": "JOUW WINKELSCHEMA",
    "this_week_body": "Hier zie je de producten waarvan Listox voorspelt dat je ze nodig hebt tijdens je volgende winkelrit.",
    "later_body": "Hier zie je producten waarvan je nog genoeg hebt. Ze gaan naar \"Deze Week\" wanneer het tijd is om bij te vullen.",
    "skip": "OVERSLAAN"
  },
  "welcome": {
    "title": "Welkom bij Listox",
    "onboarding_subtitle": "Je slimme boodschappenlijst die leert wat je koopt en je herinnert wanneer je moet aanvullen",
    "bullet1_title": "Houd essentials bij",
    "bullet1_subtitle": "Voeg toe wat je regelmatig koopt en houd alles op één plek",
    "bullet2_title": "Nooit meer vergeten",
    "bullet2_subtitle": "Listox leert en voorspelt wanneer het tijd is om bij te vullen",
    "bullet3_title": "Altijd klaar om te winkelen",
    "bullet3_subtitle": "Zie wat je misschien nodig hebt deze week voordat je de deur uitgaat",
    "cta": "Doorgaan"
  },
  "select_groceries": {
    "heading": "Kies je essentials",
    "description": "Selecteer producten die je vaak koopt. Listox houdt bij wanneer je ze nodig hebt",
    "button_done": "Klaar",
    "button_selected_suffix": "/{max} geselecteerd",
    "add": "Toevoegen",
    "limit_reached": "Je kunt nu maximaal {max} producten selecteren"
  },
  "search_groceries": {
    "hint": "Producten zoeken..."
  },
  "weekdays_m": {
    "mon": "Ma",
    "tue": "Di",
    "wed": "Wo",
    "thu": "Do",
    "fri": "Vr",
    "sat": "Za",
    "sun": "Zo"
  },
  "weekdays_s": {
    "mon": "M",
    "tue": "Di",
    "wed": "W",
    "thu": "Do",
    "fri": "V",
    "sat": "Za",
    "sun": "Zo"
  },
  "notifications": {
    "mode_auto": "Automatisch",
    "prompts": {
      "title_1": "Ga je binnenkort naar de supermarkt? 🏪",
      "body_1": "Controleer je lijst om niets te missen",
      "title_2": "Ga je boodschappen doen? 🛒",
      "body_2": "Bekijk welke essentials bijna op zijn",
      "title_3": "Volgende winkelrit 🛒",
      "body_3": "Kijk snel wat je misschien nodig hebt",
      "title_4": "Binnenkort boodschappen? 🛒",
      "body_4": "Controleer wat er bijgevuld moet worden",
      "title_5": "Ga je naar de winkel? 🏪",
      "body_5": "Je lijst staat klaar! Kijk even snel",
      "title_6": "Vergeet niets 🛒",
      "body_6": "Je boodschappenlijst staat klaar",
      "title_7": "Van plan naar de winkel te gaan? 🏪",
      "body_7": "Controleer je lijst en haal het meeste uit je trip",
      "title_8": "Voor het winkelen 🛍️",
      "body_8": "Een snelle blik op de lijst kan je tijd besparen",
      "title_9": "Even langs de winkel? 🛒",
      "body_9": "De essentials die je misschien nodig hebt staan al in je lijst",
      "title_10": "Raakt er iets op? ⏰",
      "body_10": "Je boodschappenlijst is bijgewerkt, kijk even"
    }
  },
  "add_custom_grocery": {
    "heading": "Maak een eigen\nproduct",
    "input_name_hint": "Hoe heet het?",
    "input_period_hint": "Elke hoeveel dagen koop je dit?",
    "input_period_description": "Voer een geschatte periode in. Listox leert van je aankoopgeschiedenis!",
    "button_create": "Aanmaken"
  },
  "quick_add": {
    "tile_label": "Snel toevoegen",
    "dialog_title": "Snel toevoegen",
    "dialog_subtitle": "Het product wordt verwijderd na bevestiging van de aankoop.",
    "hint": "Naam invoeren",
    "empty_state_hint": "Heb je iets maar één keer nodig? Tik ergens om het toe te voegen"
  },
  "paywall": {
    "bullet1": "Bijhouden van onbeperkte essentials",
    "bullet2": "Bouw je volledige lijst met essentials",
    "bullet3": "Weet altijd wat je nodig hebt voor het winkelen"
  },
  "smart_engine_banner": {
    "title": "Slim Profiel",
    "description": "Listox leert wat je koopt en stelt boodschappenlijsten voor voordat je door je voorraad heen bent."
  },
  "categories": {
    "food": "Voedsel",
    "bathroom": "Badkamer",
    "kitchen": "Keuken",
    "cleaning": "Schoonmaak",
    "health": "Gezondheid",
    "other": "Overig"
  },
  "groceries": {
    "milk": "Melk",
    "eggs": "Eieren",
    "bread": "Brood",
    "cheese": "Kaas",
    "yogurt": "Yoghurt",
    "rice": "Rijst",
    "pasta": "Pasta",
    "coffee": "Koffie",
    "water": "Water",
    "chicken": "Kip",
    "bananas": "Bananen",
    "apples": "Appels",
    "potatoes": "Aardappelen",
    "onions": "Uien",
    "butter": "Boter",
    "pepper": "Peper",
    "garlic": "Knoflook",
    "carrot": "Wortel",
    "toilet_paper": "Toiletpapier",
    "shampoo": "Shampoo",
    "toothpaste": "Tandpasta",
    "soap": "Zeep",
    "deodorant": "Deodorant",
    "toothbrush": "Tandenborstel",
    "shaving_cream": "Scheerschuim",
    "dish_soap": "Afwasmiddel",
    "paper_towels": "Keukenpapier",
    "salt": "Zout",
    "olive_oil": "Olijfolie",
    "sugar": "Suiker",
    "flour": "Bloem",
    "foil": "Aluminiumfolie",
    "baking_paper": "Bakpapier",
    "laundry_detergent": "Wasmiddel",
    "trash_bags": "Vuilniszakken",
    "toilet_cleaner": "Toiletreinger",
    "multi_surface_cleaner": "Allesreiniger",
    "glass_cleaner": "Glasreiniger",
    "disinfectant_spray": "Desinfecterende spray",
    "wipes": "Vochtige doekjes",
    "painkillers": "Pijnstillers",
    "vitamins": "Vitamines",
    "bandages": "Pleisters",
    "cough_syrup": "Hoestsiroop",
    "first_aid_kit": "EHBO-doos",
    "batteries": "Batterijen",
    "light_bulbs": "Gloeilampen",
    "pet_food": "Dierenvoer",
    "printer_paper": "Printerpapier"
  }
};
static const Map<String,dynamic> _ja = {
  "appTitle": "Listox",
  "loading": {
    "just_a_moment": "少々お待ちください..."
  },
  "error": {
    "generic_titles": {
      "title1": "おっと！",
      "title2": "問題が発生しました",
      "title3": "まずい！",
      "title4": "うーん...",
      "title5": "なるほど",
      "title6": "予想外！",
      "title7": "またですか！",
      "title8": "あれ",
      "title9": "エラー",
      "title10": "困った",
      "title11": "しまった"
    }
  },
  "error_message": {
    "grocery_not_found": "商品が見つかりません",
    "grocery_storage": "データの保存に失敗しました",
    "common": {
      "unexpected": "予期しないエラーが発生しました... 対応中です！🚨"
    },
    "email": {
      "failed_to_open_support": "おっと！メールアプリを開けませんでした... {} までご連絡ください 💌"
    },
    "preferences_unexpected": "予期しない問題が発生しました"
  },
  "label": {
    "oops": "おっと",
    "whoops": "おっと！"
  },
  "snackbar": {
    "badConnection": {
      "title": "接続なし",
      "description": "インターネット接続を確認してください"
    }
  },
  "common": {
    "cancel": "キャンセル",
    "delete": "削除",
    "edit": "編集"
  },
  "account": {
    "title": "アカウント",
    "premium_status_premium": "プレミアムユーザー",
    "premium_status_upgrade": "プレミアム",
    "premium_expiry": "プレミアムは{date}まで有効です。ご支援ありがとうございます <3",
    "premium_upgrade_cta": "プレミアムで無制限に管理しよう！",
    "notifications_enabled": "オン",
    "notifications_disabled": "オフ",
    "notifications_description": "買い物前にリマインダーをお届け",
    "section_notifications": "通知",
    "section_preferences": "設定",
    "language_title": "言語",
    "language_subtitle": "インターフェース言語",
    "haptics_title": "ハプティクス",
    "haptics_subtitle": "振動フィードバック",
    "section_theme": "テーマ",
    "theme_system": "システム",
    "theme_light": "ライト",
    "theme_dark": "ダーク",
    "section_colorations": "カラー",
    "section_more": "その他",
    "about_app": "アプリについて",
    "privacy_terms": "プライバシー",
    "contact_support": "サポートに連絡"
  },
  "dialog": {
    "delete_grocery": {
      "title": "商品を削除しますか？",
      "subtitle": "\"{name}\" を本当に削除しますか？この操作は取り消せません ⛔️"
    },
    "notification_mode": {
      "title": "リマインダー設定",
      "auto_label": "自動",
      "auto_description": "次回の買い物を予測",
      "custom_days_label": "カスタム曜日",
      "custom_days_description": "曜日を選択"
    },
    "permission": {
      "notifications_title": "許可",
      "notifications_subtitle": "通知を受け取るには、このアプリの許可を有効にしてください",
      "notifications_subtitle_settings": "通知を受け取るには、システム設定でこのアプリの許可を有効にしてください"
    }
  },
  "edit_grocery": {
    "title": "商品を編集\n\"{name}\"",
    "input_name_hint": "名前は？",
    "input_period_hint": "何日ごとに買いますか？",
    "input_period_default": {
      "one": "{}日ごと",
      "other": "{}日ごと"
    },
    "input_period_description": "おおよその周期を入力してください。購入記録からListoxが学習します！",
    "button_update": "更新"
  },
  "home": {
    "header_title": "購入が必要かもしれない商品",
    "tab_this_week": "今週",
    "tab_later": "後で",
    "purchase_confirmed": "購入を確認しました！",
    "purchase_confirmed_description": "使用パターンを学習し、次にこれらのアイテムが必要になる時期を予測します",
    "due_overdue": {
      "one": "{}日遅れています",
      "other": "{}日遅れています"
    },
    "due_today": "今日が期限",
    "due_tomorrow": "明日が期限",
    "due_in_days": {
      "one": "あと{}日",
      "other": "あと{}日"
    },
    "pre_list_this_week": "今週必要になりそう",
    "pre_list_later": "後で必要になりそう",
    "checked_section_title": "チェック済み",
    "fully_stocked": "十分な在庫があります！",
    "premium_lock_cta": "プレミアムですべて表示",
    "premium_upgrade_hint": "プレミアムで全アイテムを解放"
  },
  "purchase_banner": {
    "fully_stocked": "在庫十分！「購入」をタップして確認",
    "items_checked": {
      "one": "1件チェック！「購入」をタップして確認",
      "other": "{}件チェック！「購入」をタップして確認"
    },
    "button_purchase": "購入"
  },
  "tutorial": {
    "schedule_heading": "あなたの買い物スケジュール",
    "this_week_body": "次回の買い物で必要になると予測されたアイテムが表示されます。",
    "later_body": "まだ十分にあるアイテムが表示されます。補充の時期になると「今週」に移動します。",
    "skip": "スキップ"
  },
  "welcome": {
    "title": "Listoxへようこそ",
    "onboarding_subtitle": "あなたの購買習慣を学習し、補充時期を教えてくれるスマートな買い物リスト",
    "bullet1_title": "必需品を管理",
    "bullet1_subtitle": "定期的に購入するものを追加して、一か所で管理",
    "bullet2_title": "もう忘れない",
    "bullet2_subtitle": "Listoxが購入頻度を学習し、補充時期を予測",
    "bullet3_title": "いつでも買い物準備万端",
    "bullet3_subtitle": "外出前に今週必要なものを確認",
    "cta": "続ける"
  },
  "select_groceries": {
    "heading": "必需品を選ぶ",
    "description": "よく買うものを選択してください。Listoxが必要な時期を追跡します",
    "button_done": "完了",
    "button_selected_suffix": "/{max} 選択",
    "add": "追加",
    "limit_reached": "現在{max}件まで選択できます"
  },
  "search_groceries": {
    "hint": "商品を検索..."
  },
  "weekdays_m": {
    "mon": "月",
    "tue": "火",
    "wed": "水",
    "thu": "木",
    "fri": "金",
    "sat": "土",
    "sun": "日"
  },
  "weekdays_s": {
    "mon": "月",
    "tue": "火",
    "wed": "水",
    "thu": "木",
    "fri": "金",
    "sat": "土",
    "sun": "日"
  },
  "notifications": {
    "mode_auto": "自動",
    "prompts": {
      "title_1": "もうすぐ買い物？🏪",
      "body_1": "リストを確認して忘れ物をなくしましょう",
      "title_2": "そろそろ買い物に行きますか？🛒",
      "body_2": "補充が必要な必需品を確認しましょう",
      "title_3": "次回の買い物 🛒",
      "body_3": "必要なものをさっと確認しましょう",
      "title_4": "もうすぐ買い物？🛒",
      "body_4": "補充が必要なものを確認",
      "title_5": "お店に行きますか？🏪",
      "body_5": "リストの準備ができています！確認しましょう",
      "title_6": "忘れ物なく 🛒",
      "body_6": "買い物リストが準備できています",
      "title_7": "お店への外出を計画中？🏪",
      "body_7": "リストを確認してお買い物を活用しましょう",
      "title_8": "買い物前に 🛍️",
      "body_8": "リストを確認すれば時間を節約できます",
      "title_9": "ちょっとお買い物？🛒",
      "body_9": "必要な商品はすでにリストにあります",
      "title_10": "何か切れそう？⏰",
      "body_10": "買い物リストが最新です、確認しましょう"
    }
  },
  "add_custom_grocery": {
    "heading": "カスタム\n必需品を作成",
    "input_name_hint": "名前は？",
    "input_period_hint": "何日ごとに買いますか？",
    "input_period_description": "おおよその周期を入力してください。購入記録からListoxが学習します！",
    "button_create": "作成"
  },
  "quick_add": {
    "tile_label": "クイック追加",
    "dialog_title": "クイック追加",
    "dialog_subtitle": "購入確認後にこの商品は削除されます。",
    "hint": "名前を入力",
    "empty_state_hint": "一度だけ必要なもの？どこでもタップして追加"
  },
  "paywall": {
    "bullet1": "必需品を無制限に管理",
    "bullet2": "完全な必需品リストを作成",
    "bullet3": "買い物前に必要なものを常に把握"
  },
  "smart_engine_banner": {
    "title": "スマートプロフィール",
    "description": "Listoxが購買習慣を記録し、在庫切れ前にリストを提案します。"
  },
  "categories": {
    "food": "食品",
    "bathroom": "バス・トイレ",
    "kitchen": "キッチン",
    "cleaning": "清掃",
    "health": "健康",
    "other": "その他"
  },
  "groceries": {
    "milk": "牛乳",
    "eggs": "卵",
    "bread": "パン",
    "cheese": "チーズ",
    "yogurt": "ヨーグルト",
    "rice": "お米",
    "pasta": "パスタ",
    "coffee": "コーヒー",
    "water": "ミネラルウォーター",
    "chicken": "鶏肉",
    "bananas": "バナナ",
    "apples": "りんご",
    "potatoes": "じゃがいも",
    "onions": "玉ねぎ",
    "butter": "バター",
    "pepper": "こしょう",
    "garlic": "にんにく",
    "carrot": "にんじん",
    "toilet_paper": "トイレットペーパー",
    "shampoo": "シャンプー",
    "toothpaste": "歯磨き粉",
    "soap": "石鹸",
    "deodorant": "デオドラント",
    "toothbrush": "歯ブラシ",
    "shaving_cream": "シェービングクリーム",
    "dish_soap": "食器用洗剤",
    "paper_towels": "キッチンペーパー",
    "salt": "塩",
    "olive_oil": "オリーブオイル",
    "sugar": "砂糖",
    "flour": "小麦粉",
    "foil": "アルミホイル",
    "baking_paper": "クッキングシート",
    "laundry_detergent": "洗濯洗剤",
    "trash_bags": "ゴミ袋",
    "toilet_cleaner": "トイレ洗剤",
    "multi_surface_cleaner": "多目的クリーナー",
    "glass_cleaner": "ガラスクリーナー",
    "disinfectant_spray": "除菌スプレー",
    "wipes": "ウェットティッシュ",
    "painkillers": "痛み止め",
    "vitamins": "ビタミン",
    "bandages": "バンドエイド",
    "cough_syrup": "咳止めシロップ",
    "first_aid_kit": "救急箱",
    "batteries": "乾電池",
    "light_bulbs": "電球",
    "pet_food": "ペットフード",
    "printer_paper": "プリンター用紙"
  }
};
static const Map<String,dynamic> _de = {
  "appTitle": "Listox",
  "loading": {
    "just_a_moment": "Einen Moment..."
  },
  "error": {
    "generic_titles": {
      "title1": "Ups!",
      "title2": "Etwas ist schiefgelaufen",
      "title3": "Oh nein!",
      "title4": "Hmm...",
      "title5": "Na sowas",
      "title6": "Unerwartet!",
      "title7": "Schon wieder...",
      "title8": "Oh je",
      "title9": "Fehler",
      "title10": "Mist",
      "title11": "Autsch"
    }
  },
  "error_message": {
    "grocery_not_found": "Artikel nicht gefunden",
    "grocery_storage": "Daten konnten nicht gespeichert werden",
    "common": {
      "unexpected": "Ein unerwarteter Fehler ist aufgetreten... Wir kümmern uns darum! 🚨"
    },
    "email": {
      "failed_to_open_support": "Ups! E-Mail-App konnte nicht geöffnet werden... Du erreichst uns jederzeit unter {} 💌"
    },
    "preferences_unexpected": "Ein unerwarteter Fehler ist aufgetreten"
  },
  "label": {
    "oops": "Ups",
    "whoops": "Ups!"
  },
  "snackbar": {
    "badConnection": {
      "title": "Keine Verbindung",
      "description": "Bitte überprüfe deine Internetverbindung"
    }
  },
  "common": {
    "cancel": "Abbrechen",
    "delete": "Löschen",
    "edit": "Bearbeiten"
  },
  "account": {
    "title": "Konto",
    "premium_status_premium": "Premium",
    "premium_status_upgrade": "Premium",
    "premium_expiry": "Premium aktiv bis {date}. Vielen Dank für deine Unterstützung <3",
    "premium_upgrade_cta": "Upgrade auf Premium für unbegrenzte Artikel!",
    "notifications_enabled": "Aktiviert",
    "notifications_disabled": "Deaktiviert",
    "notifications_description": "Erinnerung vor dem Einkauf",
    "section_notifications": "Benachrichtigungen",
    "section_preferences": "Einstellungen",
    "language_title": "Sprache",
    "language_subtitle": "Oberflächensprache",
    "haptics_title": "Haptik",
    "haptics_subtitle": "Vibrations-Feedback",
    "section_theme": "Design",
    "theme_system": "System",
    "theme_light": "Hell",
    "theme_dark": "Dunkel",
    "section_colorations": "Farben",
    "section_more": "Mehr",
    "about_app": "Über die App",
    "privacy_terms": "Datenschutz",
    "contact_support": "Support kontaktieren"
  },
  "dialog": {
    "delete_grocery": {
      "title": "Artikel löschen?",
      "subtitle": "Möchtest du \"{name}\" wirklich löschen? Diese Aktion kann nicht rückgängig gemacht werden ⛔️"
    },
    "notification_mode": {
      "title": "Erinnerungs-Plan",
      "auto_label": "Auto",
      "auto_description": "Sagt den nächsten Einkauf voraus",
      "custom_days_label": "Eigene Tage",
      "custom_days_description": "Wochentage auswählen"
    },
    "permission": {
      "notifications_title": "Berechtigung",
      "notifications_subtitle": "Erlaube Benachrichtigungen, um Erinnerungen zu erhalten",
      "notifications_subtitle_settings": "Erlaube Benachrichtigungen für diese App in den Systemeinstellungen"
    }
  },
  "edit_grocery": {
    "title": "Artikel bearbeiten\n\"{name}\"",
    "input_name_hint": "Wie soll es heißen?",
    "input_period_hint": "Wie oft kaufst du es (Tage)?",
    "input_period_default": {
      "one": "Alle {} Tag",
      "other": "Alle {} Tage"
    },
    "input_period_description": "Ungefähren Zeitraum eingeben. Listox lernt von deinen Einkäufen!",
    "button_update": "Aktualisieren"
  },
  "home": {
    "header_title": "Artikel, die du bald brauchst",
    "tab_this_week": "Diese Woche",
    "tab_later": "Später",
    "purchase_confirmed": "Einkauf bestätigt!",
    "purchase_confirmed_description": "Wir lernen Ihr Nutzungsverhalten und sagen voraus, wann Sie diese Artikel wieder benötigen",
    "due_overdue": {
      "one": "Vor {} Tag fällig",
      "other": "Vor {} Tagen fällig"
    },
    "due_today": "Heute fällig",
    "due_tomorrow": "Morgen fällig",
    "due_in_days": {
      "one": "In {} Tag",
      "other": "In {} Tagen"
    },
    "pre_list_this_week": "Wahrscheinlich diese Woche nötig",
    "pre_list_later": "Wahrscheinlich später nötig",
    "checked_section_title": "Im Warenkorb",
    "fully_stocked": "Du bist gut versorgt!",
    "premium_lock_cta": "Upgrade auf Premium, um alles zu sehen",
    "premium_upgrade_hint": "Schalte alle Einkäufe mit Premium frei"
  },
  "purchase_banner": {
    "fully_stocked": "Alles da! Tippe auf \"Kaufen\" zum Bestätigen",
    "items_checked": {
      "one": "1 Artikel markiert! Tippe auf \"Kaufen\" zum Bestätigen",
      "other": "{} Artikel markiert! Tippe auf \"Kaufen\" zum Bestätigen"
    },
    "button_purchase": "Kaufen"
  },
  "tutorial": {
    "schedule_heading": "DEIN EINKAUFSPLAN",
    "this_week_body": "Hier siehst du Artikel, die Listox für deinen nächsten Einkauf vorschlägt.",
    "later_body": "Hier siehst du Artikel, von denen du noch genug hast. Sie wechseln zu \"Diese Woche\", wenn es Zeit ist, nachzufüllen.",
    "skip": "ÜBERSPRINGEN"
  },
  "welcome": {
    "title": "Willkommen bei Listox",
    "onboarding_subtitle": "Deine smarte Einkaufsliste, die lernt, was du kaufst, und dich ans Nachfüllen erinnert",
    "bullet1_title": "Wichtiges verfolgen",
    "bullet1_subtitle": "Füge regelmäßig gekaufte Artikel hinzu und behalte alles im Blick",
    "bullet2_title": "Nie wieder vergessen",
    "bullet2_subtitle": "Listox lernt und sagt voraus, wann es Zeit zum Nachfüllen ist",
    "bullet3_title": "Immer bereit für den Einkauf",
    "bullet3_subtitle": "Sieh, was du diese Woche brauchst, bevor du losfährst",
    "cta": "Weiter"
  },
  "select_groceries": {
    "heading": "Artikel auswählen",
    "description": "Wähle Artikel, die du regelmäßig kaufst. Listox verfolgt, wann du sie wieder brauchst",
    "button_done": "Fertig",
    "button_selected_suffix": "/{max} ausgewählt",
    "add": "Hinzufügen",
    "limit_reached": "Du kannst aktuell bis zu {max} Artikel auswählen"
  },
  "search_groceries": {
    "hint": "Artikel suchen..."
  },
  "weekdays_m": {
    "mon": "Mo",
    "tue": "Di",
    "wed": "Mi",
    "thu": "Do",
    "fri": "Fr",
    "sat": "Sa",
    "sun": "So"
  },
  "weekdays_s": {
    "mon": "M",
    "tue": "D",
    "wed": "M",
    "thu": "D",
    "fri": "F",
    "sat": "S",
    "sun": "S"
  },
  "notifications": {
    "mode_auto": "Auto",
    "prompts": {
      "title_1": "Bald im Laden? 🏪",
      "body_1": "Schau auf deine Liste, damit du nichts vergisst",
      "title_2": "Gehst du bald einkaufen? 🛒",
      "body_2": "Sieh nach, was bald nachgefüllt werden sollte",
      "title_3": "Dein nächster Einkauf 🛒",
      "body_3": "Schau kurz auf die Liste, bevor du losfährst",
      "title_4": "Bald einkaufen? 🛒",
      "body_4": "Prüfe, was du nachkaufen solltest",
      "title_5": "Gehst du in den Laden? 🏪",
      "body_5": "Deine Liste ist bereit! Schau kurz rein",
      "title_6": "Vergiss nichts 🛒",
      "body_6": "Deine Einkaufsliste ist aktuell",
      "title_7": "Planst du einen Einkauf? 🏪",
      "body_7": "Überprüfe deine Liste und mach das Beste draus",
      "title_8": "Vor dem Einkaufen 🛍️",
      "body_8": "Ein kurzer Blick auf die Liste spart dir Zeit",
      "title_9": "Kurzer Einkauf geplant? 🛒",
      "body_9": "Benötigte Artikel sind schon auf deiner Liste",
      "title_10": "Läuft dir etwas aus? ⏰",
      "body_10": "Deine Einkaufsliste ist aktuell – schau mal rein"
    }
  },
  "add_custom_grocery": {
    "heading": "Eigenen\nArtikel erstellen",
    "input_name_hint": "Wie soll es heißen?",
    "input_period_hint": "Wie oft kaufst du es (Tage)?",
    "input_period_description": "Ungefähren Zeitraum eingeben. Listox lernt von deinen Einkäufen!",
    "button_create": "Erstellen"
  },
  "quick_add": {
    "tile_label": "Schnell hinzufügen",
    "dialog_title": "Schnell hinzufügen",
    "dialog_subtitle": "Der Artikel wird nach dem Bestätigen des Einkaufs entfernt.",
    "hint": "Name eingeben",
    "empty_state_hint": "Etwas nur einmal brauchen? Tippe irgendwo, um es hinzuzufügen"
  },
  "paywall": {
    "bullet1": "Unbegrenzt Artikel verwalten",
    "bullet2": "Vollständige Einkaufsliste aufbauen",
    "bullet3": "Nie wieder etwas im Laden vergessen"
  },
  "smart_engine_banner": {
    "title": "Smartes Profil",
    "description": "Listox merkt sich, was du kaufst, und schlägt Einkaufslisten vor, bevor dir etwas ausgeht."
  },
  "categories": {
    "food": "Lebensmittel",
    "bathroom": "Bad",
    "kitchen": "Küche",
    "cleaning": "Reinigung",
    "health": "Gesundheit",
    "other": "Sonstiges"
  },
  "groceries": {
    "milk": "Milch",
    "eggs": "Eier",
    "bread": "Brot",
    "cheese": "Käse",
    "yogurt": "Joghurt",
    "rice": "Reis",
    "pasta": "Nudeln",
    "coffee": "Kaffee",
    "water": "Wasser",
    "chicken": "Hähnchen",
    "bananas": "Bananen",
    "apples": "Äpfel",
    "potatoes": "Kartoffeln",
    "onions": "Zwiebeln",
    "butter": "Butter",
    "pepper": "Pfeffer",
    "garlic": "Knoblauch",
    "carrot": "Karotte",
    "toilet_paper": "Toilettenpapier",
    "shampoo": "Shampoo",
    "toothpaste": "Zahnpasta",
    "soap": "Seife",
    "deodorant": "Deo",
    "toothbrush": "Zahnbürste",
    "shaving_cream": "Rasierschaum",
    "dish_soap": "Spülmittel",
    "paper_towels": "Küchentücher",
    "salt": "Salz",
    "olive_oil": "Olivenöl",
    "sugar": "Zucker",
    "flour": "Mehl",
    "foil": "Alufolie",
    "baking_paper": "Backpapier",
    "laundry_detergent": "Waschmittel",
    "trash_bags": "Müllbeutel",
    "toilet_cleaner": "WC-Reiniger",
    "multi_surface_cleaner": "Allzweckreiniger",
    "glass_cleaner": "Glasreiniger",
    "disinfectant_spray": "Desinfektionsspray",
    "wipes": "Feuchttücher",
    "painkillers": "Schmerzmittel",
    "vitamins": "Vitamine",
    "bandages": "Pflaster",
    "cough_syrup": "Hustensaft",
    "first_aid_kit": "Erste-Hilfe-Set",
    "batteries": "Batterien",
    "light_bulbs": "Glühbirnen",
    "pet_food": "Tierfutter",
    "printer_paper": "Druckerpapier"
  }
};
static const Map<String,dynamic> _ru = {
  "appTitle": "Listox",
  "loading": {
    "just_a_moment": "Секунду..."
  },
  "error": {
    "generic_titles": {
      "title1": "Упс!",
      "title2": "Что-то пошло не так",
      "title3": "О нет!",
      "title4": "Хмм...",
      "title5": "Ну и ну",
      "title6": "Неожиданно!",
      "title7": "Опять...",
      "title8": "Ой-ой",
      "title9": "Ошибка",
      "title10": "Ой!",
      "title11": "Упс"
    }
  },
  "error_message": {
    "grocery_not_found": "Товар не найден",
    "grocery_storage": "Не удалось сохранить данные",
    "common": {
      "unexpected": "Неожиданная ошибка... Уже разбираемся! 🚨"
    },
    "email": {
      "failed_to_open_support": "Упс! Не удалось открыть почту... Но вы можете написать нам на {} 💌"
    },
    "preferences_unexpected": "Произошла непредвиденная ошибка"
  },
  "label": {
    "oops": "Упс",
    "whoops": "Упс!"
  },
  "snackbar": {
    "badConnection": {
      "title": "Нет соединения",
      "description": "Проверьте подключение к интернету"
    }
  },
  "common": {
    "cancel": "Отмена",
    "delete": "Удалить",
    "edit": "Изменить"
  },
  "account": {
    "title": "Аккаунт",
    "premium_status_premium": "Premium",
    "premium_status_upgrade": "Premium",
    "premium_expiry": "Подписка активна до {date} Спасибо за поддержку <3",
    "premium_upgrade_cta": "Перейдите на Премиум для безлимитного списка!",
    "notifications_enabled": "Включены",
    "notifications_disabled": "Отключены",
    "notifications_description": "Напомним перед походом в магазин",
    "section_notifications": "Уведомления",
    "section_preferences": "Настройки",
    "language_title": "Язык",
    "language_subtitle": "Язык интерфейса",
    "haptics_title": "Вибрация",
    "haptics_subtitle": "Тактильный отклик",
    "section_theme": "Тема",
    "theme_system": "Системная",
    "theme_light": "Светлая",
    "theme_dark": "Тёмная",
    "section_colorations": "Оформление",
    "section_more": "Ещё",
    "about_app": "О приложении",
    "privacy_terms": "Конфиденциальность",
    "contact_support": "Написать в поддержку"
  },
  "dialog": {
    "delete_grocery": {
      "title": "Удалить товар?",
      "subtitle": "Вы точно хотите удалить \"{name}\"? Это действие нельзя отменить ⛔️"
    },
    "notification_mode": {
      "title": "Расписание напоминаний",
      "auto_label": "Авто",
      "auto_description": "Предсказывает следующий поход",
      "custom_days_label": "Свои дни",
      "custom_days_description": "Выберите дни недели"
    },
    "permission": {
      "notifications_title": "Разрешение",
      "notifications_subtitle": "Разрешите уведомления, чтобы получать напоминания",
      "notifications_subtitle_settings": "Разрешите уведомления для приложения в настройках системы"
    }
  },
  "edit_grocery": {
    "title": "Изменить товар\n\"{name}\"",
    "input_name_hint": "Как называется?",
    "input_period_hint": "Как часто покупаете (дней)?",
    "input_period_default": {
      "one": "Раз в {} день",
      "few": "Раз в {} дня",
      "many": "Раз в {} дней",
      "other": "Раз в {} дня"
    },
    "input_period_description": "Укажите примерный период. Listox будет учиться на ваших покупках!",
    "button_update": "Обновить"
  },
  "home": {
    "header_title": "Товары, которые пора пополнить",
    "tab_this_week": "На неделе",
    "tab_later": "Позже",
    "purchase_confirmed": "Покупка подтверждена!",
    "purchase_confirmed_description": "Мы изучим ваши привычки и предскажем, когда вам снова понадобятся эти товары",
    "due_overdue": {
      "one": "{} день назад",
      "few": "{} дня назад",
      "many": "{} дней назад",
      "other": "{} дня назад"
    },
    "due_today": "Нужно сегодня",
    "due_tomorrow": "Нужно завтра",
    "due_in_days": {
      "one": "Через {} день",
      "few": "Через {} дня",
      "many": "Через {} дней",
      "other": "Через {} дня"
    },
    "pre_list_this_week": "Вероятно нужно на этой неделе",
    "pre_list_later": "Понадобится позже",
    "checked_section_title": "В корзине",
    "fully_stocked": "Запасов хватает!",
    "premium_lock_cta": "Перейдите на Премиум, чтобы видеть всё",
    "premium_upgrade_hint": "Откройте все продукты с Премиумом"
  },
  "purchase_banner": {
    "fully_stocked": "Закупились! Нажмите «Купить» для подтверждения",
    "items_checked": {
      "one": "1 товар отмечен! Нажмите «Купить» для подтверждения",
      "few": "{} товара отмечено! Нажмите «Купить» для подтверждения",
      "many": "{} товаров отмечено! Нажмите «Купить» для подтверждения",
      "other": "{} товара отмечено! Нажмите «Купить» для подтверждения"
    },
    "button_purchase": "Купить"
  },
  "tutorial": {
    "schedule_heading": "ВАШ ПЛАН ПОКУПОК",
    "this_week_body": "Здесь товары, которые Listox предсказывает для следующего похода в магазин.",
    "later_body": "Здесь товары, которых пока хватает. Они перейдут в «На неделе», когда придёт время пополнить.",
    "skip": "ПРОПУСТИТЬ"
  },
  "welcome": {
    "title": "Добро пожаловать в Listox",
    "onboarding_subtitle": "Умный список покупок, который учится на ваших привычках и напоминает о пополнении",
    "bullet1_title": "Отслеживайте основное",
    "bullet1_subtitle": "Добавьте товары, которые покупаете регулярно, и держите всё в одном месте",
    "bullet2_title": "Больше ничего не забывайте",
    "bullet2_subtitle": "Listox учится и предсказывает, когда пора пополнить запасы",
    "bullet3_title": "Всегда готовы к походу",
    "bullet3_subtitle": "Смотрите, что нужно на этой неделе, до выхода из дома",
    "cta": "Продолжить"
  },
  "select_groceries": {
    "heading": "Выберите товары",
    "description": "Мы будем прогнозировать, когда вам понадобятся эти товары.",
    "button_done": "Готово",
    "button_selected_suffix": "/{max} выбрано",
    "add": "Добавить",
    "limit_reached": "Пока можно выбрать не более {max} товаров"
  },
  "search_groceries": {
    "hint": "Поиск товаров..."
  },
  "weekdays_m": {
    "mon": "Пн",
    "tue": "Вт",
    "wed": "Ср",
    "thu": "Чт",
    "fri": "Пт",
    "sat": "Сб",
    "sun": "Вс"
  },
  "weekdays_s": {
    "mon": "П",
    "tue": "В",
    "wed": "С",
    "thu": "Ч",
    "fri": "П",
    "sat": "С",
    "sun": "В"
  },
  "notifications": {
    "mode_auto": "Авто",
    "prompts": {
      "title_1": "Скоро в магазин? 🏪",
      "body_1": "Проверьте список, чтобы ничего не упустить",
      "title_2": "Собираетесь за покупками? 🛒",
      "body_2": "Посмотрите, что пора пополнить",
      "title_3": "Следующий поход в магазин 🛒",
      "body_3": "Загляните в список перед выходом",
      "title_4": "Скоро за покупками? 🛒",
      "body_4": "Проверьте, что нужно докупить",
      "title_5": "Собираетесь в магазин? 🏪",
      "body_5": "Ваш список готов! Загляните перед выходом",
      "title_6": "Ничего не забудьте 🛒",
      "body_6": "Ваш список покупок готов",
      "title_7": "Планируете поход в магазин? 🏪",
      "body_7": "Сверьтесь со списком и ничего не забудьте",
      "title_8": "Перед походом в магазин 🛍️",
      "body_8": "Быстрая проверка списка сэкономит вам время",
      "title_9": "Забежите в магазин? 🛒",
      "body_9": "Нужные товары уже в вашем списке",
      "title_10": "Что-то заканчивается? ⏰",
      "body_10": "Ваш список актуален, загляните"
    }
  },
  "add_custom_grocery": {
    "heading": "Создать свой\nтовар",
    "input_name_hint": "Как называется?",
    "input_period_hint": "Как часто покупаете (дней)?",
    "input_period_description": "Укажите примерный период. Listox будет учиться на ваших покупках!",
    "button_create": "Создать"
  },
  "quick_add": {
    "tile_label": "Быстрое добавление",
    "dialog_title": "Быстрое добавление",
    "dialog_subtitle": "Товар удалится после подтверждения покупки.",
    "hint": "Введите название",
    "empty_state_hint": "Нужно что-то разово? Нажмите, чтобы добавить"
  },
  "paywall": {
    "bullet1": "Без ограничений на число товаров",
    "bullet2": "Полный список всего необходимого",
    "bullet3": "Всегда знайте, что купить в магазине"
  },
  "smart_engine_banner": {
    "title": "Умный профиль",
    "description": "Listox запоминает ваши покупки и подсказывает, что нужно пополнить."
  },
  "categories": {
    "food": "Еда",
    "bathroom": "Ванная",
    "kitchen": "Кухня",
    "cleaning": "Уборка",
    "health": "Здоровье",
    "other": "Другое"
  },
  "groceries": {
    "milk": "Молоко",
    "eggs": "Яйца",
    "bread": "Хлеб",
    "cheese": "Сыр",
    "yogurt": "Йогурт",
    "rice": "Рис",
    "pasta": "Макароны",
    "coffee": "Кофе",
    "water": "Вода",
    "chicken": "Курица",
    "bananas": "Бананы",
    "apples": "Яблоки",
    "potatoes": "Картофель",
    "onions": "Лук",
    "butter": "Масло",
    "pepper": "Перец",
    "garlic": "Чеснок",
    "carrot": "Морковь",
    "toilet_paper": "Туалетная бумага",
    "shampoo": "Шампунь",
    "toothpaste": "Зубная паста",
    "soap": "Мыло",
    "deodorant": "Дезодорант",
    "toothbrush": "Зубная щётка",
    "shaving_cream": "Пена для бритья",
    "dish_soap": "Средство для посуды",
    "paper_towels": "Бумажные полотенца",
    "salt": "Соль",
    "olive_oil": "Оливковое масло",
    "sugar": "Сахар",
    "flour": "Мука",
    "foil": "Фольга",
    "baking_paper": "Бумага для выпечки",
    "laundry_detergent": "Стиральный порошок",
    "trash_bags": "Мусорные пакеты",
    "toilet_cleaner": "Чистящее для унитаза",
    "multi_surface_cleaner": "Универсальный спрей",
    "glass_cleaner": "Стеклоочиститель",
    "disinfectant_spray": "Дезинфектор",
    "wipes": "Влажные салфетки",
    "painkillers": "Обезболивающее",
    "vitamins": "Витамины",
    "bandages": "Пластыри",
    "cough_syrup": "Сироп от кашля",
    "first_aid_kit": "Аптечка",
    "batteries": "Батарейки",
    "light_bulbs": "Лампочки",
    "pet_food": "Корм для животных",
    "printer_paper": "Бумага для принтера"
  }
};
static const Map<String,dynamic> _pl = {
  "appTitle": "Listox",
  "loading": {
    "just_a_moment": "Chwileczkę..."
  },
  "error": {
    "generic_titles": {
      "title1": "Ojej!",
      "title2": "Coś poszło nie tak",
      "title3": "O nie!",
      "title4": "Hmm...",
      "title5": "No to co",
      "title6": "Niespodziewane!",
      "title7": "Znowu!",
      "title8": "Ojej",
      "title9": "Błąd",
      "title10": "No nie...",
      "title11": "Ups"
    }
  },
  "error_message": {
    "grocery_not_found": "Nie znaleziono produktu",
    "grocery_storage": "Zapisywanie danych nie powiodło się",
    "common": {
      "unexpected": "Ups! Wystąpił nieoczekiwany błąd... Pracujemy nad tym! 🚨"
    },
    "email": {
      "failed_to_open_support": "Ups! Nie udało się otworzyć aplikacji e-mail... Możesz skontaktować się z nami pod adresem {} 💌"
    },
    "preferences_unexpected": "Wystąpił nieoczekiwany problem"
  },
  "label": {
    "oops": "Ups",
    "whoops": "Ups!"
  },
  "snackbar": {
    "badConnection": {
      "title": "Brak połączenia",
      "description": "Sprawdź swoje połączenie internetowe"
    }
  },
  "common": {
    "cancel": "Anuluj",
    "delete": "Usuń",
    "edit": "Edytuj"
  },
  "account": {
    "title": "Konto",
    "premium_status_premium": "Użytkownik Premium",
    "premium_status_upgrade": "Premium",
    "premium_expiry": "Premium aktywne do {date}. Dziękujemy za wsparcie <3",
    "premium_upgrade_cta": "Ulepsz do Premium dla nieograniczonego zarządzania!",
    "notifications_enabled": "Włączone",
    "notifications_disabled": "Wyłączone",
    "notifications_description": "Szybkie przypomnienie przed zakupami",
    "section_notifications": "Powiadomienia",
    "section_preferences": "Preferencje",
    "language_title": "Język",
    "language_subtitle": "Język interfejsu",
    "haptics_title": "Haptyka",
    "haptics_subtitle": "Wibracje zwrotne",
    "section_theme": "Motyw",
    "theme_system": "Systemowy",
    "theme_light": "Jasny",
    "theme_dark": "Ciemny",
    "section_colorations": "Kolory",
    "section_more": "Więcej",
    "about_app": "O aplikacji",
    "privacy_terms": "Prywatność",
    "contact_support": "Kontakt z pomocą"
  },
  "dialog": {
    "delete_grocery": {
      "title": "Usunąć produkt?",
      "subtitle": "Czy na pewno chcesz usunąć \"{name}\"? Tej operacji nie można cofnąć ⛔️"
    },
    "notification_mode": {
      "title": "Harmonogram przypomnień",
      "auto_label": "Automatyczny",
      "auto_description": "Przewiduje kolejne zakupy",
      "custom_days_label": "Wybrane dni",
      "custom_days_description": "Wybierz konkretne dni"
    },
    "permission": {
      "notifications_title": "Uprawnienie",
      "notifications_subtitle": "Aby otrzymywać powiadomienia, zezwól tej aplikacji",
      "notifications_subtitle_settings": "Aby otrzymywać powiadomienia, zezwól tej aplikacji w ustawieniach systemowych"
    }
  },
  "edit_grocery": {
    "title": "Edytuj produkt\n\"{name}\"",
    "input_name_hint": "Jak się nazywa?",
    "input_period_hint": "Co ile dni kupujesz?",
    "input_period_default": {
      "one": "Co {} dzień",
      "few": "Co {} dni",
      "many": "Co {} dni",
      "other": "Co {} dnia"
    },
    "input_period_description": "Podaj przybliżony okres. Listox nauczy się z historii zakupów!",
    "button_update": "Zaktualizuj"
  },
  "home": {
    "header_title": "Produkty, które być może musisz kupić",
    "tab_this_week": "Ten Tydzień",
    "tab_later": "Później",
    "purchase_confirmed": "Zakup potwierdzony!",
    "purchase_confirmed_description": "Nauczymy się Twoich nawyków i przewidzimy, kiedy znowu będziesz potrzebować tych produktów",
    "due_overdue": {
      "one": "{} dzień opóźnienia",
      "few": "{} dni opóźnienia",
      "many": "{} dni opóźnienia",
      "other": "{} dnia opóźnienia"
    },
    "due_today": "Termin dzisiaj",
    "due_tomorrow": "Termin jutro",
    "due_in_days": {
      "one": "Za {} dzień",
      "few": "Za {} dni",
      "many": "Za {} dni",
      "other": "Za {} dnia"
    },
    "pre_list_this_week": "Może być potrzebne w tym tygodniu",
    "pre_list_later": "Może być potrzebne później",
    "checked_section_title": "Zaznaczone produkty",
    "fully_stocked": "Twój zapas jest wystarczający!",
    "premium_lock_cta": "Ulepsz do Premium, aby zobaczyć wszystko",
    "premium_upgrade_hint": "Odblokuj wszystkie produkty z Premium"
  },
  "purchase_banner": {
    "fully_stocked": "Wszystko gotowe! Dotknij \"Kup\" aby potwierdzić",
    "items_checked": {
      "one": "1 produkt zaznaczony! Dotknij \"Kup\" aby potwierdzić",
      "few": "{} produkty zaznaczone! Dotknij \"Kup\" aby potwierdzić",
      "many": "{} produktów zaznaczonych! Dotknij \"Kup\" aby potwierdzić",
      "other": "{} produktu zaznaczone! Dotknij \"Kup\" aby potwierdzić"
    },
    "button_purchase": "Kup"
  },
  "tutorial": {
    "schedule_heading": "TWÓJ PLAN ZAKUPÓW",
    "this_week_body": "Tutaj zobaczysz produkty, które Listox przewiduje, że będziesz potrzebować podczas następnych zakupów.",
    "later_body": "Tutaj zobaczysz produkty, których masz jeszcze wystarczająco dużo. Przeniosą się do \"Ten Tydzień\" gdy nadejdzie czas uzupełnienia.",
    "skip": "POMIŃ"
  },
  "welcome": {
    "title": "Witaj w Listox",
    "onboarding_subtitle": "Twoja inteligentna lista zakupów, która uczy się co kupujesz i przypomina kiedy uzupełnić zapasy",
    "bullet1_title": "Śledź niezbędne produkty",
    "bullet1_subtitle": "Dodaj to, co regularnie kupujesz i miej wszystko w jednym miejscu",
    "bullet2_title": "Nigdy więcej nie zapomnisz",
    "bullet2_subtitle": "Listox uczy się i przewiduje, kiedy nadszedł czas uzupełnienia",
    "bullet3_title": "Zawsze gotowy na zakupy",
    "bullet3_subtitle": "Sprawdź, czego możesz potrzebować w tym tygodniu przed wyjściem",
    "cta": "Kontynuuj"
  },
  "select_groceries": {
    "heading": "Wybierz niezbędne produkty",
    "description": "Wybierz produkty, które często kupujesz. Listox będzie śledzić, kiedy ich potrzebujesz",
    "button_done": "Gotowe",
    "button_selected_suffix": "/{max} wybranych",
    "add": "Dodaj",
    "limit_reached": "Na razie możesz wybrać maksymalnie {max} produktów"
  },
  "search_groceries": {
    "hint": "Szukaj produktów..."
  },
  "weekdays_m": {
    "mon": "Pon",
    "tue": "Wt",
    "wed": "Śr",
    "thu": "Czw",
    "fri": "Pt",
    "sat": "Sob",
    "sun": "Nd"
  },
  "weekdays_s": {
    "mon": "Pn",
    "tue": "Wt",
    "wed": "Śr",
    "thu": "Cz",
    "fri": "Pt",
    "sat": "Sb",
    "sun": "Nd"
  },
  "notifications": {
    "mode_auto": "Automatyczny",
    "prompts": {
      "title_1": "Idziesz wkrótce do sklepu? 🏪",
      "body_1": "Sprawdź listę, żeby nic nie pominąć",
      "title_2": "Idziesz na zakupy? 🛒",
      "body_2": "Zobacz, które podstawowe produkty się kończą",
      "title_3": "Następne zakupy 🛒",
      "body_3": "Rzuć szybko okiem, czego możesz potrzebować",
      "title_4": "Wkrótce na zakupy? 🛒",
      "body_4": "Sprawdź, co wymaga uzupełnienia",
      "title_5": "Idziesz do sklepu? 🏪",
      "body_5": "Twoja lista jest gotowa! Zerknij szybko",
      "title_6": "Niczego nie zapomnij 🛒",
      "body_6": "Twoja lista zakupów jest gotowa",
      "title_7": "Planujesz wizytę w sklepie? 🏪",
      "body_7": "Sprawdź listę i wykorzystaj wyjście",
      "title_8": "Przed zakupami 🛍️",
      "body_8": "Szybkie spojrzenie na listę może zaoszczędzić czas",
      "title_9": "Wpadniesz do sklepu? 🛒",
      "body_9": "Podstawowe produkty, które możesz potrzebować, są już na liście",
      "title_10": "Coś się kończy? ⏰",
      "body_10": "Twoja lista zakupów jest zaktualizowana, rzuć okiem"
    }
  },
  "add_custom_grocery": {
    "heading": "Utwórz własny\nprodukt",
    "input_name_hint": "Jak się nazywa?",
    "input_period_hint": "Co ile dni kupujesz?",
    "input_period_description": "Podaj przybliżony okres. Listox nauczy się z historii zakupów!",
    "button_create": "Utwórz"
  },
  "quick_add": {
    "tile_label": "Szybkie dodawanie",
    "dialog_title": "Szybkie dodawanie",
    "dialog_subtitle": "Produkt zostanie usunięty po potwierdzeniu zakupu.",
    "hint": "Wpisz nazwę",
    "empty_state_hint": "Potrzebujesz czegoś tylko raz? Dotknij gdziekolwiek, aby dodać"
  },
  "paywall": {
    "bullet1": "Śledź nieograniczoną liczbę produktów",
    "bullet2": "Zbuduj kompletną listę niezbędnych produktów",
    "bullet3": "Zawsze wiedz, czego potrzebujesz przed zakupami"
  },
  "smart_engine_banner": {
    "title": "Inteligentny Profil",
    "description": "Listox uczy się, co kupujesz i sugeruje listy zakupów zanim skończą się zapasy."
  },
  "categories": {
    "food": "Żywność",
    "bathroom": "Łazienka",
    "kitchen": "Kuchnia",
    "cleaning": "Sprzątanie",
    "health": "Zdrowie",
    "other": "Inne"
  },
  "groceries": {
    "milk": "Mleko",
    "eggs": "Jajka",
    "bread": "Chleb",
    "cheese": "Ser",
    "yogurt": "Jogurt",
    "rice": "Ryż",
    "pasta": "Makaron",
    "coffee": "Kawa",
    "water": "Woda",
    "chicken": "Kurczak",
    "bananas": "Banany",
    "apples": "Jabłka",
    "potatoes": "Ziemniaki",
    "onions": "Cebula",
    "butter": "Masło",
    "pepper": "Pieprz",
    "garlic": "Czosnek",
    "carrot": "Marchewka",
    "toilet_paper": "Papier toaletowy",
    "shampoo": "Szampon",
    "toothpaste": "Pasta do zębów",
    "soap": "Mydło",
    "deodorant": "Dezodorant",
    "toothbrush": "Szczoteczka do zębów",
    "shaving_cream": "Krem do golenia",
    "dish_soap": "Płyn do naczyń",
    "paper_towels": "Ręczniki papierowe",
    "salt": "Sól",
    "olive_oil": "Oliwa z oliwek",
    "sugar": "Cukier",
    "flour": "Mąka",
    "foil": "Folia aluminiowa",
    "baking_paper": "Papier do pieczenia",
    "laundry_detergent": "Proszek do prania",
    "trash_bags": "Worki na śmieci",
    "toilet_cleaner": "Środek do toalety",
    "multi_surface_cleaner": "Płyn wielofunkcyjny",
    "glass_cleaner": "Płyn do szyb",
    "disinfectant_spray": "Spray dezynfekujący",
    "wipes": "Chusteczki nawilżane",
    "painkillers": "Środki przeciwbólowe",
    "vitamins": "Witaminy",
    "bandages": "Plastry",
    "cough_syrup": "Syrop na kaszel",
    "first_aid_kit": "Apteczka",
    "batteries": "Baterie",
    "light_bulbs": "Żarówki",
    "pet_food": "Karma dla zwierząt",
    "printer_paper": "Papier do drukarki"
  }
};
static const Map<String,dynamic> _uk = {
  "appTitle": "Listox",
  "loading": {
    "just_a_moment": "Зачекайте..."
  },
  "error": {
    "generic_titles": {
      "title1": "Ой!",
      "title2": "Щось пішло не так",
      "title3": "О ні!",
      "title4": "Хм...",
      "title5": "Гаразд",
      "title6": "Несподівано!",
      "title7": "Знову!",
      "title8": "Ой",
      "title9": "Помилка",
      "title10": "Невже",
      "title11": "Упс"
    }
  },
  "error_message": {
    "grocery_not_found": "Товар не знайдено",
    "grocery_storage": "Не вдалося зберегти дані",
    "common": {
      "unexpected": "Упс! Сталася несподівана помилка... Ми вже вирішуємо це! 🚨"
    },
    "email": {
      "failed_to_open_support": "Упс! Не вдалося відкрити поштовий додаток... Ви можете зв'язатися з нами за адресою {} 💌"
    },
    "preferences_unexpected": "Сталася несподівана проблема"
  },
  "label": {
    "oops": "Упс",
    "whoops": "Упс!"
  },
  "snackbar": {
    "badConnection": {
      "title": "Немає з'єднання",
      "description": "Перевірте підключення до інтернету"
    }
  },
  "common": {
    "cancel": "Скасувати",
    "delete": "Видалити",
    "edit": "Редагувати"
  },
  "account": {
    "title": "Акаунт",
    "premium_status_premium": "Преміум-користувач",
    "premium_status_upgrade": "Преміум",
    "premium_expiry": "Преміум активний до {date}. Дякуємо за підтримку <3",
    "premium_upgrade_cta": "Перейдіть на Преміум для необмеженого управління!",
    "notifications_enabled": "Увімкнено",
    "notifications_disabled": "Вимкнено",
    "notifications_description": "Швидке нагадування перед покупками",
    "section_notifications": "Сповіщення",
    "section_preferences": "Налаштування",
    "language_title": "Мова",
    "language_subtitle": "Мова інтерфейсу",
    "haptics_title": "Гаптика",
    "haptics_subtitle": "Тактильний відгук",
    "section_theme": "Тема",
    "theme_system": "Системна",
    "theme_light": "Світла",
    "theme_dark": "Темна",
    "section_colorations": "Кольори",
    "section_more": "Більше",
    "about_app": "Про додаток",
    "privacy_terms": "Конфіденційність",
    "contact_support": "Зв'язатися з підтримкою"
  },
  "dialog": {
    "delete_grocery": {
      "title": "Видалити товар?",
      "subtitle": "Ви впевнені, що хочете видалити \"{name}\"? Цю дію не можна скасувати ⛔️"
    },
    "notification_mode": {
      "title": "Розклад нагадувань",
      "auto_label": "Авто",
      "auto_description": "Прогнозує наступну покупку",
      "custom_days_label": "Вибрані дні",
      "custom_days_description": "Виберіть конкретні дні"
    },
    "permission": {
      "notifications_title": "Дозвіл",
      "notifications_subtitle": "Дозвольте цьому додатку для отримання сповіщень",
      "notifications_subtitle_settings": "Дозвольте цей додаток у системних налаштуваннях для отримання сповіщень"
    }
  },
  "edit_grocery": {
    "title": "Редагувати товар\n\"{name}\"",
    "input_name_hint": "Як він називається?",
    "input_period_hint": "Раз на скільки днів ви купуєте?",
    "input_period_default": {
      "one": "Кожен {} день",
      "few": "Кожні {} дні",
      "many": "Кожні {} днів",
      "other": "Кожні {} дні"
    },
    "input_period_description": "Введіть приблизний період. Listox навчиться з вашої історії покупок!",
    "button_update": "Оновити"
  },
  "home": {
    "header_title": "Товари, які вам може знадобитися купити",
    "tab_this_week": "Цього Тижня",
    "tab_later": "Пізніше",
    "purchase_confirmed": "Купівлю підтверджено!",
    "purchase_confirmed_description": "Ми навчимося вашим звичкам і передбачимо, коли вам знову знадобляться ці товари",
    "due_overdue": {
      "one": "{} день тому",
      "few": "{} дні тому",
      "many": "{} днів тому",
      "other": "{} дня тому"
    },
    "due_today": "Cьогодні",
    "due_tomorrow": "Завтра",
    "due_in_days": {
      "one": "Через {} день",
      "few": "Через {} дні",
      "many": "Через {} днів",
      "other": "Через {} дня"
    },
    "pre_list_this_week": "Може знадобитися цього тижня",
    "pre_list_later": "Може знадобитися пізніше",
    "checked_section_title": "Відмічені товари",
    "fully_stocked": "Ваш запас достатній!",
    "premium_lock_cta": "Перейдіть на Преміум, щоб побачити все",
    "premium_upgrade_hint": "Розблокуйте всі продукти з Преміумом"
  },
  "purchase_banner": {
    "fully_stocked": "Все готово! Нажміть \"Купити\" для підтвердження",
    "items_checked": {
      "one": "1 товар відмічено! Нажміть \"Купити\" для підтвердження",
      "few": "{} товари відмічено! Нажміть \"Купити\" для підтвердження",
      "many": "{} товарів відмічено! Нажміть \"Купити\" для підтвердження",
      "other": "{} товари відмічено! Нажміть \"Купити\" для підтвердження"
    },
    "button_purchase": "Купити"
  },
  "tutorial": {
    "schedule_heading": "ВАШ ГРАФІК ПОКУПОК",
    "this_week_body": "Тут ви побачите товари, які Listox прогнозує вам знадобляться під час наступного шопінгу.",
    "later_body": "Тут ви побачите товари, яких у вас ще достатньо. Вони перейдуть до \"Цього Тижня\" коли настане час поповнення.",
    "skip": "ПРОПУСТИТИ"
  },
  "welcome": {
    "title": "Ласкаво просимо до Listox",
    "onboarding_subtitle": "Ваш розумний список покупок, який вчиться що ви купуєте та нагадує коли потрібно поповнити запаси",
    "bullet1_title": "Відстежуйте необхідне",
    "bullet1_subtitle": "Додайте те, що ви регулярно купуєте, і тримайте все в одному місці",
    "bullet2_title": "Більше не забувайте",
    "bullet2_subtitle": "Listox вчиться та прогнозує коли настав час поповнення",
    "bullet3_title": "Завжди готові до покупок",
    "bullet3_subtitle": "Перегляньте, що може знадобитися цього тижня перед виходом",
    "cta": "Продовжити"
  },
  "select_groceries": {
    "heading": "Виберіть необхідне",
    "description": "Виберіть товари, які ви часто купуєте. Listox відстежуватиме коли вони вам знадобляться",
    "button_done": "Готово",
    "button_selected_suffix": "/{max} вибрано",
    "add": "Додати",
    "limit_reached": "Зараз ви можете вибрати максимум {max} товарів"
  },
  "search_groceries": {
    "hint": "Пошук товарів..."
  },
  "weekdays_m": {
    "mon": "Пн",
    "tue": "Вт",
    "wed": "Ср",
    "thu": "Чт",
    "fri": "Пт",
    "sat": "Сб",
    "sun": "Нд"
  },
  "weekdays_s": {
    "mon": "Пн",
    "tue": "Вт",
    "wed": "Ср",
    "thu": "Чт",
    "fri": "Пт",
    "sat": "Сб",
    "sun": "Нд"
  },
  "notifications": {
    "mode_auto": "Авто",
    "prompts": {
      "title_1": "Скоро до супермаркету? 🏪",
      "body_1": "Перевірте список, щоб нічого не пропустити",
      "title_2": "Йдете за покупками? 🛒",
      "body_2": "Подивіться, які необхідні товари закінчуються",
      "title_3": "Наступна покупка 🛒",
      "body_3": "Швидко перегляньте, що може знадобитися",
      "title_4": "Скоро за покупками? 🛒",
      "body_4": "Перевірте, що потрібно поповнити",
      "title_5": "Йдете до магазину? 🏪",
      "body_5": "Ваш список готовий! Погляньте",
      "title_6": "Нічого не забудьте 🛒",
      "body_6": "Ваш список покупок готовий",
      "title_7": "Плануєте похід до магазину? 🏪",
      "body_7": "Перевірте список та скористайтеся поїздкою",
      "title_8": "Перед покупками 🛍️",
      "body_8": "Швидкий погляд на список може заощадити час",
      "title_9": "Заскочите до магазину? 🛒",
      "body_9": "Необхідні товари, які можуть знадобитися, вже у вашому списку",
      "title_10": "Щось закінчується? ⏰",
      "body_10": "Ваш список покупок оновлено, погляньте"
    }
  },
  "add_custom_grocery": {
    "heading": "Створити власний\nтовар",
    "input_name_hint": "Як він називається?",
    "input_period_hint": "Раз на скільки днів ви купуєте?",
    "input_period_description": "Введіть приблизний період. Listox навчиться з вашої історії покупок!",
    "button_create": "Створити"
  },
  "quick_add": {
    "tile_label": "Швидке додавання",
    "dialog_title": "Швидке додавання",
    "dialog_subtitle": "Товар буде видалено після підтвердження купівлі.",
    "hint": "Введіть назву",
    "empty_state_hint": "Потрібно щось лише один раз? Торкніться будь-де, щоб додати"
  },
  "paywall": {
    "bullet1": "Відстежуйте необмежену кількість товарів",
    "bullet2": "Складіть повний список необхідного",
    "bullet3": "Завжди знайте, що вам потрібно перед покупками"
  },
  "smart_engine_banner": {
    "title": "Розумний Профіль",
    "description": "Listox вчиться, що ви купуєте, та пропонує списки покупок до того, як закінчаться запаси."
  },
  "categories": {
    "food": "Їжа",
    "bathroom": "Ванна кімната",
    "kitchen": "Кухня",
    "cleaning": "Прибирання",
    "health": "Здоров'я",
    "other": "Інше"
  },
  "groceries": {
    "milk": "Молоко",
    "eggs": "Яйця",
    "bread": "Хліб",
    "cheese": "Сир",
    "yogurt": "Йогурт",
    "rice": "Рис",
    "pasta": "Паста",
    "coffee": "Кава",
    "water": "Вода",
    "chicken": "Курка",
    "bananas": "Банани",
    "apples": "Яблука",
    "potatoes": "Картопля",
    "onions": "Цибуля",
    "butter": "Масло",
    "pepper": "Перець",
    "garlic": "Часник",
    "carrot": "Морква",
    "toilet_paper": "Туалетний папір",
    "shampoo": "Шампунь",
    "toothpaste": "Зубна паста",
    "soap": "Мило",
    "deodorant": "Дезодорант",
    "toothbrush": "Зубна щітка",
    "shaving_cream": "Крем для гоління",
    "dish_soap": "Засіб для миття посуду",
    "paper_towels": "Паперові рушники",
    "salt": "Сіль",
    "olive_oil": "Оливкова олія",
    "sugar": "Цукор",
    "flour": "Борошно",
    "foil": "Алюмінієва фольга",
    "baking_paper": "Папір для випікання",
    "laundry_detergent": "Пральний порошок",
    "trash_bags": "Пакети для сміття",
    "toilet_cleaner": "Засіб для туалету",
    "multi_surface_cleaner": "Багатоцільовий очисник",
    "glass_cleaner": "Засіб для скла",
    "disinfectant_spray": "Дезінфікуючий спрей",
    "wipes": "Вологі серветки",
    "painkillers": "Знеболюючі",
    "vitamins": "Вітаміни",
    "bandages": "Пластирі",
    "cough_syrup": "Сироп від кашлю",
    "first_aid_kit": "Аптечка першої допомоги",
    "batteries": "Батарейки",
    "light_bulbs": "Лампочки",
    "pet_food": "Корм для тварин",
    "printer_paper": "Папір для принтера"
  }
};
static const Map<String,dynamic> _fi = {
  "appTitle": "Listox",
  "loading": {
    "just_a_moment": "Hetki..."
  },
  "error": {
    "generic_titles": {
      "title1": "Voi!",
      "title2": "Jokin meni pieleen",
      "title3": "Voi ei!",
      "title4": "Hmm...",
      "title5": "No niin",
      "title6": "Odottamatonta!",
      "title7": "Taas!",
      "title8": "Ai",
      "title9": "Virhe",
      "title10": "Kuules",
      "title11": "Oops"
    }
  },
  "error_message": {
    "grocery_not_found": "Tuotetta ei löydy",
    "grocery_storage": "Tietojen tallentaminen epäonnistui",
    "common": {
      "unexpected": "Oops! Tapahtui odottamaton virhe... Työskentelemme sen parissa! 🚨"
    },
    "email": {
      "failed_to_open_support": "Oops! Sähköpostisovelluksen avaaminen epäonnistui... Voit ottaa meihin yhteyttä osoitteessa {} 💌"
    },
    "preferences_unexpected": "Ilmeni odottamaton ongelma"
  },
  "label": {
    "oops": "Oops",
    "whoops": "Oops!"
  },
  "snackbar": {
    "badConnection": {
      "title": "Ei yhteyttä",
      "description": "Tarkista internet-yhteys"
    }
  },
  "common": {
    "cancel": "Peruuta",
    "delete": "Poista",
    "edit": "Muokkaa"
  },
  "account": {
    "title": "Tili",
    "premium_status_premium": "Premium-käyttäjä",
    "premium_status_upgrade": "Premium",
    "premium_expiry": "Premium aktiivinen {date} asti. Kiitos tuestasi <3",
    "premium_upgrade_cta": "Päivitä Premiumiin rajoittamatonta hallintaa varten!",
    "notifications_enabled": "Käytössä",
    "notifications_disabled": "Ei käytössä",
    "notifications_description": "Nopea muistutus ennen ostoksia",
    "section_notifications": "Ilmoitukset",
    "section_preferences": "Asetukset",
    "language_title": "Kieli",
    "language_subtitle": "Käyttöliittymän kieli",
    "haptics_title": "Haptiikka",
    "haptics_subtitle": "Värinäpalaute",
    "section_theme": "Teema",
    "theme_system": "Järjestelmä",
    "theme_light": "Vaalea",
    "theme_dark": "Tumma",
    "section_colorations": "Värit",
    "section_more": "Lisää",
    "about_app": "Tietoja sovelluksesta",
    "privacy_terms": "Tietosuoja",
    "contact_support": "Ota yhteyttä tukeen"
  },
  "dialog": {
    "delete_grocery": {
      "title": "Poista tuote?",
      "subtitle": "Haluatko varmasti poistaa \"{name}\"? Tätä toimintoa ei voi kumota ⛔️"
    },
    "notification_mode": {
      "title": "Muistutusaikataulu",
      "auto_label": "Automaattinen",
      "auto_description": "Ennustaa seuraavan oston",
      "custom_days_label": "Mukautetut päivät",
      "custom_days_description": "Valitse tietyt päivät"
    },
    "permission": {
      "notifications_title": "Lupa",
      "notifications_subtitle": "Salli tämä sovellus ilmoitusten vastaanottamiseksi",
      "notifications_subtitle_settings": "Salli tämä sovellus järjestelmäasetuksissa ilmoitusten vastaanottamiseksi"
    }
  },
  "edit_grocery": {
    "title": "Muokkaa tuotetta\n\"{name}\"",
    "input_name_hint": "Mikä sen nimi on?",
    "input_period_hint": "Kuinka monen päivän välein ostat?",
    "input_period_default": {
      "one": "Joka {} päivä",
      "other": "Joka {} päivä"
    },
    "input_period_description": "Anna likimääräinen jakso. Listox oppii ostohistoriastasi!",
    "button_update": "Päivitä"
  },
  "home": {
    "header_title": "Tuotteet, jotka sinun ehkä pitää ostaa",
    "tab_this_week": "Tällä Viikolla",
    "tab_later": "Myöhemmin",
    "purchase_confirmed": "Osto vahvistettu!",
    "purchase_confirmed_description": "Opimme käyttötottumuksesi ja ennustamme, milloin tarvitset nämä tuotteet uudelleen",
    "due_overdue": {
      "one": "{} päivä myöhässä",
      "other": "{} päivää myöhässä"
    },
    "due_today": "Erääntyy tänään",
    "due_tomorrow": "Erääntyy huomenna",
    "due_in_days": {
      "one": "{} päivän päästä",
      "other": "{} päivän päästä"
    },
    "pre_list_this_week": "Saattaa tarvita tällä viikolla",
    "pre_list_later": "Saattaa tarvita myöhemmin",
    "checked_section_title": "Valitut tuotteet",
    "fully_stocked": "Varastosi on riittävä!",
    "premium_lock_cta": "Päivitä Premiumiin nähdäksesi kaikki",
    "premium_upgrade_hint": "Avaa kaikki ruokasi Premiumilla"
  },
  "purchase_banner": {
    "fully_stocked": "Kaikki valmiina! Paina \"Osta\" vahvistaaksesi",
    "items_checked": {
      "one": "1 tuote valittu! Paina \"Osta\" vahvistaaksesi",
      "other": "{} tuotetta valittu! Paina \"Osta\" vahvistaaksesi"
    },
    "button_purchase": "Osta"
  },
  "tutorial": {
    "schedule_heading": "OSTOSSUUNNITELMASI",
    "this_week_body": "Täällä näet tuotteet, jotka Listox ennustaa tarvitsevasi seuraavalla ostosreissullasi.",
    "later_body": "Täällä näet tuotteet, joita sinulla on vielä tarpeeksi. Ne siirtyvät \"Tällä Viikolla\" -välilehdelle, kun on aika täydentää varastoa.",
    "skip": "OHITA"
  },
  "welcome": {
    "title": "Tervetuloa Listoxiin",
    "onboarding_subtitle": "Älykäs ostoslistasi, joka oppii mitä ostat ja muistuttaa milloin täydentää varastoa",
    "bullet1_title": "Seuraa tärkeimpiä tavaroita",
    "bullet1_subtitle": "Lisää mitä säännöllisesti ostat ja pidä kaikki yhdessä paikassa",
    "bullet2_title": "Älä koskaan unohda",
    "bullet2_subtitle": "Listox oppii ja ennustaa milloin on aika täydentää varastoa",
    "bullet3_title": "Aina valmis ostoksille",
    "bullet3_subtitle": "Katso mitä saattaa tarvita tällä viikolla ennen lähtöä",
    "cta": "Jatka"
  },
  "select_groceries": {
    "heading": "Valitse tärkeimmät tavarat",
    "description": "Valitse tuotteet, joita ostat usein. Listox seuraa milloin tarvitset niitä",
    "button_done": "Valmis",
    "button_selected_suffix": "/{max} valittu",
    "add": "Lisää",
    "limit_reached": "Voit tällä hetkellä valita enintään {max} tuotetta"
  },
  "search_groceries": {
    "hint": "Etsi tuotteita..."
  },
  "weekdays_m": {
    "mon": "Ma",
    "tue": "Ti",
    "wed": "Ke",
    "thu": "To",
    "fri": "Pe",
    "sat": "La",
    "sun": "Su"
  },
  "weekdays_s": {
    "mon": "M",
    "tue": "Ti",
    "wed": "K",
    "thu": "To",
    "fri": "P",
    "sat": "L",
    "sun": "S"
  },
  "notifications": {
    "mode_auto": "Automaattinen",
    "prompts": {
      "title_1": "Pian supermarketiin? 🏪",
      "body_1": "Tarkista lista, ettei mitään unohdu",
      "title_2": "Menet ostoksille? 🛒",
      "body_2": "Katso mitkä perustavarat ovat lopussa",
      "title_3": "Seuraavat ostokset 🛒",
      "body_3": "Vilkaise nopeasti mitä saattaa tarvita",
      "title_4": "Pian ostoksille? 🛒",
      "body_4": "Tarkista mitä pitää täydentää",
      "title_5": "Menet kauppaan? 🏪",
      "body_5": "Listasi on valmis! Katso se",
      "title_6": "Älä unohda mitään 🛒",
      "body_6": "Ostoslistasi on valmis",
      "title_7": "Suunnitteletko kauppakäyntiä? 🏪",
      "body_7": "Tarkista lista ja hyödynnä matka",
      "title_8": "Ennen ostoksia 🛍️",
      "body_8": "Nopea vilkaisu listaan voi säästää aikaa",
      "title_9": "Poikkeatko kaupassa? 🛒",
      "body_9": "Tarvitsemasi perustavarat ovat jo listallasi",
      "title_10": "Onko jokin loppumassa? ⏰",
      "body_10": "Ostoslistasi on päivitetty, vilkaise se"
    }
  },
  "add_custom_grocery": {
    "heading": "Luo mukautettu\ntuote",
    "input_name_hint": "Mikä sen nimi on?",
    "input_period_hint": "Kuinka monen päivän välein ostat?",
    "input_period_description": "Anna likimääräinen jakso. Listox oppii ostohistoriastasi!",
    "button_create": "Luo"
  },
  "quick_add": {
    "tile_label": "Pikalisäys",
    "dialog_title": "Pikalisäys",
    "dialog_subtitle": "Tuote poistetaan oston vahvistamisen jälkeen.",
    "hint": "Kirjoita nimi",
    "empty_state_hint": "Tarvitsetko jotain vain kerran? Kosketa minne tahansa lisätäksesi"
  },
  "paywall": {
    "bullet1": "Seuraa rajatonta määrää tuotteita",
    "bullet2": "Rakenna täydellinen lista tärkeimmistä tavaroista",
    "bullet3": "Tiedä aina mitä tarvitset ennen ostoksia"
  },
  "smart_engine_banner": {
    "title": "Älykäs Profiili",
    "description": "Listox oppii mitä ostat ja ehdottaa ostoslistoja ennen kuin varastot loppuvat."
  },
  "categories": {
    "food": "Ruoka",
    "bathroom": "Kylpyhuone",
    "kitchen": "Keittiö",
    "cleaning": "Siivous",
    "health": "Terveys",
    "other": "Muut"
  },
  "groceries": {
    "milk": "Maito",
    "eggs": "Munat",
    "bread": "Leipä",
    "cheese": "Juusto",
    "yogurt": "Jogurtti",
    "rice": "Riisi",
    "pasta": "Pasta",
    "coffee": "Kahvi",
    "water": "Vesi",
    "chicken": "Kana",
    "bananas": "Banaanit",
    "apples": "Omenat",
    "potatoes": "Perunat",
    "onions": "Sipulit",
    "butter": "Voi",
    "pepper": "Pippuri",
    "garlic": "Valkosipuli",
    "carrot": "Porkkana",
    "toilet_paper": "WC-paperi",
    "shampoo": "Shampoo",
    "toothpaste": "Hammastahna",
    "soap": "Saippua",
    "deodorant": "Deodorantti",
    "toothbrush": "Hammasharja",
    "shaving_cream": "Partavaahto",
    "dish_soap": "Astianpesuaine",
    "paper_towels": "Talouspaperi",
    "salt": "Suola",
    "olive_oil": "Oliiviöljy",
    "sugar": "Sokeri",
    "flour": "Jauhot",
    "foil": "Alumiinifolio",
    "baking_paper": "Leivinpaperi",
    "laundry_detergent": "Pyykinpesuaine",
    "trash_bags": "Roskapussit",
    "toilet_cleaner": "WC-puhdistusaine",
    "multi_surface_cleaner": "Yleispuhdistusaine",
    "glass_cleaner": "Lasinpuhdistusaine",
    "disinfectant_spray": "Desinfiointisuihke",
    "wipes": "Kosteuspyyhkeet",
    "painkillers": "Särkylääke",
    "vitamins": "Vitamiinit",
    "bandages": "Laastari",
    "cough_syrup": "Yskänlääke",
    "first_aid_kit": "Ensiapupakkaus",
    "batteries": "Paristot",
    "light_bulbs": "Lamput",
    "pet_food": "Lemmikkieläinruoka",
    "printer_paper": "Tulostinpaperi"
  }
};
static const Map<String,dynamic> _pt = {
  "appTitle": "Listox",
  "loading": {
    "just_a_moment": "Um momento..."
  },
  "error": {
    "generic_titles": {
      "title1": "Ops!",
      "title2": "Algo deu errado",
      "title3": "Oh não!",
      "title4": "Hmm...",
      "title5": "Tá bom então",
      "title6": "Inesperado!",
      "title7": "De novo!",
      "title8": "Eita",
      "title9": "Erro",
      "title10": "Caramba",
      "title11": "Nossa"
    }
  },
  "error_message": {
    "grocery_not_found": "Item não encontrado",
    "grocery_storage": "Falha ao salvar os dados",
    "common": {
      "unexpected": "Ops! Algo inesperado aconteceu... Estamos resolvendo! 🚨"
    },
    "email": {
      "failed_to_open_support": "Ops! Não conseguimos abrir seu app de e-mail... Mas você pode nos contatar em {} 💌"
    },
    "preferences_unexpected": "Ocorreu um problema inesperado"
  },
  "label": {
    "oops": "Ops",
    "whoops": "Ops!"
  },
  "snackbar": {
    "badConnection": {
      "title": "Sem conexão",
      "description": "Verifique sua conexão com a internet"
    }
  },
  "common": {
    "cancel": "Cancelar",
    "delete": "Excluir",
    "edit": "Editar"
  },
  "account": {
    "title": "Conta",
    "premium_status_premium": "Usuário Premium",
    "premium_status_upgrade": "Premium",
    "premium_expiry": "Premium válido até {date}. Obrigado pelo seu apoio <3",
    "premium_upgrade_cta": "Assine o Premium para gestão ilimitada!",
    "notifications_enabled": "Ativadas",
    "notifications_disabled": "Desativadas",
    "notifications_description": "Um lembrete rápido antes de ir ao mercado",
    "section_notifications": "Notificações",
    "section_preferences": "Preferências",
    "language_title": "Idioma",
    "language_subtitle": "Idioma da interface",
    "haptics_title": "Tátil",
    "haptics_subtitle": "Feedback de vibração",
    "section_theme": "Tema",
    "theme_system": "Sistema",
    "theme_light": "Claro",
    "theme_dark": "Escuro",
    "section_colorations": "Cores",
    "section_more": "Mais",
    "about_app": "Sobre o app",
    "privacy_terms": "Privacidade",
    "contact_support": "Contatar suporte"
  },
  "dialog": {
    "delete_grocery": {
      "title": "Excluir item?",
      "subtitle": "Tem certeza que quer excluir \"{name}\"? Esta ação não pode ser desfeita ⛔️"
    },
    "notification_mode": {
      "title": "Agenda de lembretes",
      "auto_label": "Auto",
      "auto_description": "Prevê sua próxima compra",
      "custom_days_label": "Dias personalizados",
      "custom_days_description": "Escolha dias da semana"
    },
    "permission": {
      "notifications_title": "Permissão",
      "notifications_subtitle": "Permita as notificações para receber lembretes",
      "notifications_subtitle_settings": "Permita as notificações para este app nas configurações do sistema"
    }
  },
  "edit_grocery": {
    "title": "Editar item\n\"{name}\"",
    "input_name_hint": "Como chamá-lo?",
    "input_period_hint": "De quantos em quantos dias você compra?",
    "input_period_default": {
      "one": "A cada {} dia",
      "other": "A cada {} dias"
    },
    "input_period_description": "Informe um período aproximado. O Listox vai aprender com suas compras!",
    "button_update": "Atualizar"
  },
  "home": {
    "header_title": "O que você pode precisar comprar",
    "tab_this_week": "Esta Semana",
    "tab_later": "Depois",
    "purchase_confirmed": "Compra confirmada!",
    "purchase_confirmed_description": "Aprenderemos seu uso e preveremos quando você precisará desses itens novamente",
    "due_overdue": {
      "one": "{} dia de atraso",
      "other": "{} dias de atraso"
    },
    "due_today": "Vence hoje",
    "due_tomorrow": "Vence amanhã",
    "due_in_days": {
      "one": "Em {} dia",
      "other": "Em {} dias"
    },
    "pre_list_this_week": "Provável que precise esta semana",
    "pre_list_later": "Provável que precise depois",
    "checked_section_title": "Itens marcados",
    "fully_stocked": "Você está bem abastecido!",
    "premium_lock_cta": "Assine o Premium para ver tudo",
    "premium_upgrade_hint": "Desbloqueie todos os seus itens com Premium"
  },
  "purchase_banner": {
    "fully_stocked": "Tudo certo! Toque em \"Comprar\" para confirmar",
    "items_checked": {
      "one": "1 item marcado! Toque em \"Comprar\" para confirmar",
      "other": "{} itens marcados! Toque em \"Comprar\" para confirmar"
    },
    "button_purchase": "Comprar"
  },
  "tutorial": {
    "schedule_heading": "SUA AGENDA DE COMPRAS",
    "this_week_body": "Aqui você vai ver os itens que o Listox prevê que você vai precisar na próxima compra.",
    "later_body": "Aqui você vai ver os itens que ainda tem em quantidade suficiente. Eles vão para \"Esta Semana\" quando for hora de repor.",
    "skip": "PULAR"
  },
  "welcome": {
    "title": "Bem-vindo ao Listox",
    "onboarding_subtitle": "Sua lista de compras inteligente que aprende o que você compra e te lembra de repor",
    "bullet1_title": "Rastreie o essencial",
    "bullet1_subtitle": "Adicione o que você compra regularmente e mantenha tudo em um lugar",
    "bullet2_title": "Nunca mais esqueça",
    "bullet2_subtitle": "O Listox aprende e prevê quando é hora de repor",
    "bullet3_title": "Sempre pronto para o mercado",
    "bullet3_subtitle": "Veja o que pode precisar esta semana antes de sair de casa",
    "cta": "Continuar"
  },
  "select_groceries": {
    "heading": "Escolha o essencial",
    "description": "Selecione os itens que você compra com frequência. O Listox vai acompanhar quando precisar de novo",
    "button_done": "Pronto",
    "button_selected_suffix": "/{max} selecionados",
    "add": "Adicionar",
    "limit_reached": "Por enquanto você pode selecionar até {max} itens"
  },
  "search_groceries": {
    "hint": "Buscar itens..."
  },
  "weekdays_m": {
    "mon": "Seg",
    "tue": "Ter",
    "wed": "Qua",
    "thu": "Qui",
    "fri": "Sex",
    "sat": "Sáb",
    "sun": "Dom"
  },
  "weekdays_s": {
    "mon": "S",
    "tue": "T",
    "wed": "Q",
    "thu": "Q",
    "fri": "S",
    "sat": "S",
    "sun": "D"
  },
  "notifications": {
    "mode_auto": "Auto",
    "prompts": {
      "title_1": "Indo ao mercado em breve? 🏪",
      "body_1": "Confira sua lista para não esquecer nada",
      "title_2": "Vai fazer compras em breve? 🛒",
      "body_2": "Veja quais essenciais podem estar acabando",
      "title_3": "Sua próxima ida ao mercado 🛒",
      "body_3": "Dê uma olhada rápida no que pode precisar",
      "title_4": "Compras em breve? 🛒",
      "body_4": "Veja o que pode precisar repor",
      "title_5": "Indo ao mercado? 🏪",
      "body_5": "Sua lista está pronta! Dê uma olhadinha",
      "title_6": "Não esqueça de nada 🛒",
      "body_6": "Sua lista de compras está pronta",
      "title_7": "Planejando ir ao mercado? 🏪",
      "body_7": "Confira sua lista e aproveite a ida",
      "title_8": "Antes de fazer compras 🛍️",
      "body_8": "Uma olhada rápida na lista pode te poupar tempo",
      "title_9": "Passando no mercado em breve? 🛒",
      "body_9": "Os essenciais que pode precisar já estão na sua lista",
      "title_10": "Algo acabando? ⏰",
      "body_10": "Sua lista está atualizada, dê uma olhada"
    }
  },
  "add_custom_grocery": {
    "heading": "Criar item\npersonalizado",
    "input_name_hint": "Como chamá-lo?",
    "input_period_hint": "De quantos em quantos dias você compra?",
    "input_period_description": "Informe um período aproximado. O Listox vai aprender com suas compras!",
    "button_create": "Criar"
  },
  "quick_add": {
    "tile_label": "Adicionar rápido",
    "dialog_title": "Adicionar rápido",
    "dialog_subtitle": "O item será removido após confirmar a compra.",
    "hint": "Digite o nome",
    "empty_state_hint": "Precisa de algo só desta vez? Toque em qualquer lugar para adicionar"
  },
  "paywall": {
    "bullet1": "Rastreie itens essenciais sem limite",
    "bullet2": "Monte sua lista completa de essenciais",
    "bullet3": "Saiba sempre o que precisa antes de comprar"
  },
  "smart_engine_banner": {
    "title": "Perfil Inteligente",
    "description": "O Listox aprende o que você compra e sugere listas antes que acabe."
  },
  "categories": {
    "food": "Alimentos",
    "bathroom": "Banheiro",
    "kitchen": "Cozinha",
    "cleaning": "Limpeza",
    "health": "Saúde",
    "other": "Outros"
  },
  "groceries": {
    "milk": "Leite",
    "eggs": "Ovos",
    "bread": "Pão",
    "cheese": "Queijo",
    "yogurt": "Iogurte",
    "rice": "Arroz",
    "pasta": "Macarrão",
    "coffee": "Café",
    "water": "Água",
    "chicken": "Frango",
    "bananas": "Bananas",
    "apples": "Maçãs",
    "potatoes": "Batatas",
    "onions": "Cebolas",
    "butter": "Manteiga",
    "pepper": "Pimenta",
    "garlic": "Alho",
    "carrot": "Cenoura",
    "toilet_paper": "Papel higiênico",
    "shampoo": "Shampoo",
    "toothpaste": "Creme dental",
    "soap": "Sabonete",
    "deodorant": "Desodorante",
    "toothbrush": "Escova de dentes",
    "shaving_cream": "Espuma de barbear",
    "dish_soap": "Detergente",
    "paper_towels": "Papel toalha",
    "salt": "Sal",
    "olive_oil": "Azeite",
    "sugar": "Açúcar",
    "flour": "Farinha",
    "foil": "Papel alumínio",
    "baking_paper": "Papel manteiga",
    "laundry_detergent": "Sabão em pó",
    "trash_bags": "Sacos de lixo",
    "toilet_cleaner": "Limpador de vaso",
    "multi_surface_cleaner": "Multiuso",
    "glass_cleaner": "Limpa-vidros",
    "disinfectant_spray": "Spray desinfetante",
    "wipes": "Lenços umedecidos",
    "painkillers": "Analgésico",
    "vitamins": "Vitaminas",
    "bandages": "Curativo",
    "cough_syrup": "Xarope para tosse",
    "first_aid_kit": "Kit de primeiros socorros",
    "batteries": "Pilhas",
    "light_bulbs": "Lâmpadas",
    "pet_food": "Ração",
    "printer_paper": "Papel para impressora"
  }
};
static const Map<String,dynamic> _en = {
  "appTitle": "Listox",
  "loading": {
    "just_a_moment": "Just a moment..."
  },
  "error": {
    "generic_titles": {
      "title1": "Oops!",
      "title2": "Something went wrong",
      "title3": "Oh no!",
      "title4": "Hmm...",
      "title5": "Well then",
      "title6": "Unexpected!",
      "title7": "Not again!",
      "title8": "Uh oh",
      "title9": "Error",
      "title10": "Yikes",
      "title11": "Whoops"
    }
  },
  "error_message": {
    "grocery_not_found": "Item not found",
    "grocery_storage": "Failed to save data",
    "common": {
      "unexpected": "Oh! Some unexpected error happened... We're on it! 🚨"
    },
    "email": {
      "failed_to_open_support": "Whoops! We couldn't open your email app... But you can reach us anytime by sending a message to {} 💌"
    },
    "preferences_unexpected": "Unexpected issue occurred"
  },
  "label": {
    "oops": "Oops",
    "whoops": "Whoops!"
  },
  "snackbar": {
    "badConnection": {
      "title": "No connection",
      "description": "Please check your internet connection"
    }
  },
  "common": {
    "cancel": "Cancel",
    "delete": "Delete",
    "edit": "Edit"
  },
  "account": {
    "title": "Account",
    "premium_status_premium": "Premium User",
    "premium_status_upgrade": "Premium",
    "premium_expiry": "Premium valid until {date}. Thanks for your support <3",
    "premium_upgrade_cta": "Upgrade to get unlimited groceries management!",
    "notifications_enabled": "Enabled",
    "notifications_disabled": "Disabled",
    "notifications_description": "Receive a quick reminder before going to the store",
    "section_notifications": "Notifications",
    "section_preferences": "Preferences",
    "language_title": "Language",
    "language_subtitle": "Interface language",
    "haptics_title": "Haptics",
    "haptics_subtitle": "Vibration feedback",
    "section_theme": "Theme",
    "theme_system": "System",
    "theme_light": "Light",
    "theme_dark": "Dark",
    "section_colorations": "Colorations",
    "section_more": "More",
    "about_app": "About app",
    "privacy_terms": "Privacy & Terms",
    "contact_support": "Contact Support"
  },
  "dialog": {
    "delete_grocery": {
      "title": "Delete grocery?",
      "subtitle": "Are you sure you want to delete \"{name}\"? This action will permanently remove the data ⛔️"
    },
    "notification_mode": {
      "title": "Reminder Schedule",
      "auto_label": "Auto",
      "auto_description": "Predicts next shopping",
      "custom_days_label": "Custom days",
      "custom_days_description": "Pick specific weekdays"
    },
    "permission": {
      "notifications_title": "Permission",
      "notifications_subtitle": "To receive notifications, make sure to allow permission for this app",
      "notifications_subtitle_settings": "To receive notifications, make sure to allow permission for this app in the system settings"
    }
  },
  "edit_grocery": {
    "title": "Edit grocery\n\"{name}\"",
    "input_name_hint": "How to call it?",
    "input_period_hint": "How often you buy it (days)?",
    "input_period_default": {
      "one": "Due every {} day",
      "other": "Due every {} days"
    },
    "input_period_description": "Enter an approximate period. Listox will learn how often you buy this item as you record more purchases!",
    "button_update": "Update"
  },
  "home": {
    "header_title": "Groceries you might need to buy",
    "tab_this_week": "This Week",
    "tab_later": "Later",
    "purchase_confirmed": "Purchase confirmed!",
    "purchase_confirmed_description": "We'll learn your usage and predict when you will need these items again",
    "due_overdue": {
      "one": "Overdue by {} day",
      "other": "Overdue by {} days"
    },
    "due_today": "Due today",
    "due_tomorrow": "Due tomorrow",
    "due_in_days": {
      "one": "Due in {} day",
      "other": "Due in {} days"
    },
    "pre_list_this_week": "Likely needed this week",
    "pre_list_later": "Likely needed later",
    "checked_section_title": "Checked items",
    "fully_stocked": "You're fully stocked!",
    "premium_lock_cta": "Upgrade to Premium to see all essentials",
    "premium_upgrade_hint": "Unlock all your groceries with Premium"
  },
  "purchase_banner": {
    "fully_stocked": "You are fully stocked! Tap \"Purchase\" to confirm",
    "items_checked": {
      "one": "1 item checked! Tap \"Purchase\" to confirm",
      "other": "{} items checked! Tap \"Purchase\" to confirm"
    },
    "button_purchase": "Purchase"
  },
  "tutorial": {
    "schedule_heading": "YOUR SHOPPING SCHEDULE",
    "this_week_body": "Here you'll see items Listox predicts you'll need on your next shopping trip.",
    "later_body": "Here you'll see items you still have enough of for now. They'll move to \"This Week\" when it's time to restock.",
    "skip": "SKIP"
  },
  "welcome": {
    "title": "Welcome to Listox",
    "onboarding_subtitle": "Your smart grocery list that learns what you buy and reminds you when to restock",
    "bullet1_title": "Track your essentials",
    "bullet1_subtitle": "Add the things you regularly buy and keep them all in one place",
    "bullet2_title": "Never forget again",
    "bullet2_subtitle": "Listox learns how often you buy things and predicts when to restock",
    "bullet3_title": "Always ready for the store",
    "bullet3_subtitle": "See what you might need this week before heading out",
    "cta": "Continue"
  },
  "select_groceries": {
    "heading": "Pick Essentials",
    "description": "Select the items you buy often. Listox will track when you need them again",
    "button_done": "Done",
    "button_selected_suffix": "/{max} Selected",
    "add": "Add",
    "limit_reached": "You can select up to {max} items for now"
  },
  "search_groceries": {
    "hint": "Search items..."
  },
  "weekdays_m": {
    "mon": "Mon",
    "tue": "Tue",
    "wed": "Wed",
    "thu": "Thu",
    "fri": "Fri",
    "sat": "Sat",
    "sun": "Sun"
  },
  "weekdays_s": {
    "mon": "M",
    "tue": "T",
    "wed": "W",
    "thu": "T",
    "fri": "F",
    "sat": "S",
    "sun": "S"
  },
  "notifications": {
    "mode_auto": "Auto",
    "prompts": {
      "title_1": "Heading to the store soon? 🏪",
      "body_1": "Check your list so you don't miss anything",
      "title_2": "Going to the store soon? 🛒",
      "body_2": "See which essentials might be running low",
      "title_3": "Your next shopping trip 🛒",
      "body_3": "Take a quick look at what you might need",
      "title_4": "Shopping soon? 🛒",
      "body_4": "Check what might need restocking",
      "title_5": "Going to the store soon? 🏪",
      "body_5": "Your shopping list is all set for you! Take a quick look",
      "title_6": "Don't forget a thing 🛒",
      "body_6": "Your shopping list is ready for you",
      "title_7": "Planning a store visit? 🏪",
      "body_7": "Check your list and make the most of the trip",
      "title_8": "Before you go shopping 🛍️",
      "body_8": "A quick list check can save you some time",
      "title_9": "Quick store run soon? 🛒",
      "body_9": "Essentials you might need are already on your list",
      "title_10": "Running low on something? ⏰",
      "body_10": "Your shopping list is up to date, take a look"
    }
  },
  "add_custom_grocery": {
    "heading": "Create custom\nessential",
    "input_name_hint": "How to call it?",
    "input_period_hint": "How often you buy it (days)?",
    "input_period_description": "Enter an approximate period. Listox will learn how often you buy this item as you record more purchases!",
    "button_create": "Create"
  },
  "quick_add": {
    "tile_label": "Quick add",
    "dialog_title": "Quick Add",
    "dialog_subtitle": "The item will be removed after you confirm the purchase.",
    "hint": "Enter name",
    "empty_state_hint": "Need something just this once? Tap anywhere to add it"
  },
  "paywall": {
    "bullet1": "Track unlimited essentials",
    "bullet2": "Build your complete essentials list",
    "bullet3": "Always know what you need before shopping"
  },
  "smart_engine_banner": {
    "title": "Smart Profile",
    "description": "Listox learns what you regularly buy and suggests grocery lists before you run out."
  },
  "categories": {
    "food": "Food",
    "bathroom": "Bathroom",
    "kitchen": "Kitchen",
    "cleaning": "Cleaning",
    "health": "Health",
    "other": "Other"
  },
  "groceries": {
    "milk": "Milk",
    "eggs": "Eggs",
    "bread": "Bread",
    "cheese": "Cheese",
    "yogurt": "Yogurt",
    "rice": "Rice",
    "pasta": "Pasta",
    "coffee": "Coffee",
    "water": "Water",
    "chicken": "Chicken",
    "bananas": "Bananas",
    "apples": "Apples",
    "potatoes": "Potatoes",
    "onions": "Onions",
    "butter": "Butter",
    "pepper": "Pepper",
    "garlic": "Garlic",
    "carrot": "Carrot",
    "toilet_paper": "Toilet Paper",
    "shampoo": "Shampoo",
    "toothpaste": "Toothpaste",
    "soap": "Soap",
    "deodorant": "Deodorant",
    "toothbrush": "Toothbrush",
    "shaving_cream": "Shaving Cream",
    "dish_soap": "Dish Soap",
    "paper_towels": "Paper Towels",
    "salt": "Salt",
    "olive_oil": "Olive Oil",
    "sugar": "Sugar",
    "flour": "Flour",
    "foil": "Aluminum Foil",
    "baking_paper": "Baking Paper",
    "laundry_detergent": "Laundry Detergent",
    "trash_bags": "Trash Bags",
    "toilet_cleaner": "Toilet Cleaner",
    "multi_surface_cleaner": "Surface Cleaner",
    "glass_cleaner": "Glass Cleaner",
    "disinfectant_spray": "Disinfectant Spray",
    "wipes": "Cleaning Wipes",
    "painkillers": "Painkillers",
    "vitamins": "Vitamins",
    "bandages": "Bandages",
    "cough_syrup": "Cough Syrup",
    "first_aid_kit": "First Aid Kit",
    "batteries": "Batteries",
    "light_bulbs": "Light Bulbs",
    "pet_food": "Pet Food",
    "printer_paper": "Printer Paper"
  }
};
static const Map<String,dynamic> _it = {
  "appTitle": "Listox",
  "loading": {
    "just_a_moment": "Un momento..."
  },
  "error": {
    "generic_titles": {
      "title1": "Ops!",
      "title2": "Qualcosa è andato storto",
      "title3": "Oh no!",
      "title4": "Hmm...",
      "title5": "Beh, allora",
      "title6": "Inaspettato!",
      "title7": "Di nuovo!",
      "title8": "Ahi",
      "title9": "Errore",
      "title10": "Accidenti",
      "title11": "Oops"
    }
  },
  "error_message": {
    "grocery_not_found": "Articolo non trovato",
    "grocery_storage": "Salvataggio dati fallito",
    "common": {
      "unexpected": "Ops! Si è verificato un errore imprevisto... Ci stiamo lavorando! 🚨"
    },
    "email": {
      "failed_to_open_support": "Ops! Non siamo riusciti ad aprire l'app di posta... Puoi contattarci a {} 💌"
    },
    "preferences_unexpected": "Si è verificato un problema imprevisto"
  },
  "label": {
    "oops": "Ops",
    "whoops": "Ops!"
  },
  "snackbar": {
    "badConnection": {
      "title": "Nessuna connessione",
      "description": "Controlla la tua connessione internet"
    }
  },
  "common": {
    "cancel": "Annulla",
    "delete": "Elimina",
    "edit": "Modifica"
  },
  "account": {
    "title": "Account",
    "premium_status_premium": "Utente Premium",
    "premium_status_upgrade": "Premium",
    "premium_expiry": "Premium valido fino al {date}. Grazie per il tuo supporto <3",
    "premium_upgrade_cta": "Passa al Premium per una gestione illimitata!",
    "notifications_enabled": "Attivate",
    "notifications_disabled": "Disattivate",
    "notifications_description": "Un promemoria veloce prima di fare la spesa",
    "section_notifications": "Notifiche",
    "section_preferences": "Preferenze",
    "language_title": "Lingua",
    "language_subtitle": "Lingua dell'interfaccia",
    "haptics_title": "Aptico",
    "haptics_subtitle": "Feedback vibrante",
    "section_theme": "Tema",
    "theme_system": "Sistema",
    "theme_light": "Chiaro",
    "theme_dark": "Scuro",
    "section_colorations": "Colori",
    "section_more": "Altro",
    "about_app": "Informazioni",
    "privacy_terms": "Privacy",
    "contact_support": "Contatta il supporto"
  },
  "dialog": {
    "delete_grocery": {
      "title": "Eliminare l'articolo?",
      "subtitle": "Sei sicuro di voler eliminare \"{name}\"? Questa azione è irreversibile ⛔️"
    },
    "notification_mode": {
      "title": "Pianificazione promemoria",
      "auto_label": "Auto",
      "auto_description": "Prevede il prossimo acquisto",
      "custom_days_label": "Giorni personalizzati",
      "custom_days_description": "Scegli giorni specifici"
    },
    "permission": {
      "notifications_title": "Permesso",
      "notifications_subtitle": "Per ricevere notifiche, assicurati di consentire il permesso a questa app",
      "notifications_subtitle_settings": "Per ricevere notifiche, consenti il permesso nelle impostazioni di sistema"
    }
  },
  "edit_grocery": {
    "title": "Modifica articolo\n\"{name}\"",
    "input_name_hint": "Come si chiama?",
    "input_period_hint": "Ogni quanti giorni lo compri?",
    "input_period_default": {
      "one": "Ogni {} giorno",
      "other": "Ogni {} giorni"
    },
    "input_period_description": "Inserisci un periodo approssimativo. Listox imparerà dai tuoi acquisti!",
    "button_update": "Aggiorna"
  },
  "home": {
    "header_title": "Prodotti che potresti aver bisogno di comprare",
    "tab_this_week": "Questa Settimana",
    "tab_later": "Dopo",
    "purchase_confirmed": "Acquisto confermato!",
    "purchase_confirmed_description": "Impareremo le tue abitudini e prevederemo quando avrai di nuovo bisogno di questi articoli",
    "due_overdue": {
      "one": "{} giorno di ritardo",
      "other": "{} giorni di ritardo"
    },
    "due_today": "Scade oggi",
    "due_tomorrow": "Scade domani",
    "due_in_days": {
      "one": "Tra {} giorno",
      "other": "Tra {} giorni"
    },
    "pre_list_this_week": "Probabilmente necessario questa settimana",
    "pre_list_later": "Probabilmente necessario dopo",
    "checked_section_title": "Articoli selezionati",
    "fully_stocked": "Sei ben rifornito!",
    "premium_lock_cta": "Passa al Premium per vedere tutto",
    "premium_upgrade_hint": "Sblocca tutti i tuoi articoli con Premium"
  },
  "purchase_banner": {
    "fully_stocked": "Tutto a posto! Tocca \"Acquista\" per confermare",
    "items_checked": {
      "one": "1 articolo selezionato! Tocca \"Acquista\" per confermare",
      "other": "{} articoli selezionati! Tocca \"Acquista\" per confermare"
    },
    "button_purchase": "Acquista"
  },
  "tutorial": {
    "schedule_heading": "IL TUO PIANO DELLA SPESA",
    "this_week_body": "Qui vedrai gli articoli che Listox prevede ti serviranno nel prossimo giro della spesa.",
    "later_body": "Qui vedrai gli articoli di cui hai ancora abbastanza. Passeranno a \"Questa Settimana\" quando sarà il momento di rifornirti.",
    "skip": "SALTA"
  },
  "welcome": {
    "title": "Benvenuto su Listox",
    "onboarding_subtitle": "La tua lista della spesa intelligente che impara cosa compri e ti ricorda quando rifornirti",
    "bullet1_title": "Tieni traccia degli essenziali",
    "bullet1_subtitle": "Aggiungi ciò che compri regolarmente e tieni tutto in un unico posto",
    "bullet2_title": "Non dimenticare mai più",
    "bullet2_subtitle": "Listox impara e prevede quando è il momento di rifornirti",
    "bullet3_title": "Sempre pronto per la spesa",
    "bullet3_subtitle": "Scopri cosa potresti aver bisogno questa settimana prima di uscire",
    "cta": "Continua"
  },
  "select_groceries": {
    "heading": "Scegli gli essenziali",
    "description": "Seleziona gli articoli che compri spesso. Listox seguirà quando ne avrai bisogno",
    "button_done": "Fatto",
    "button_selected_suffix": "/{max} selezionati",
    "add": "Aggiungi",
    "limit_reached": "Per ora puoi selezionare fino a {max} articoli"
  },
  "search_groceries": {
    "hint": "Cerca articoli..."
  },
  "weekdays_m": {
    "mon": "Lun",
    "tue": "Mar",
    "wed": "Mer",
    "thu": "Gio",
    "fri": "Ven",
    "sat": "Sab",
    "sun": "Dom"
  },
  "weekdays_s": {
    "mon": "L",
    "tue": "M",
    "wed": "M",
    "thu": "G",
    "fri": "V",
    "sat": "S",
    "sun": "D"
  },
  "notifications": {
    "mode_auto": "Auto",
    "prompts": {
      "title_1": "Vai al supermercato presto? 🏪",
      "body_1": "Controlla la lista per non dimenticare niente",
      "title_2": "Stai andando a fare la spesa? 🛒",
      "body_2": "Guarda quali essenziali stanno per finire",
      "title_3": "Prossima spesa 🛒",
      "body_3": "Dai un'occhiata veloce a cosa potrebbe servirti",
      "title_4": "Spesa in arrivo? 🛒",
      "body_4": "Controlla cosa potrebbe aver bisogno di essere rifornito",
      "title_5": "Stai andando al negozio? 🏪",
      "body_5": "La tua lista è pronta! Dai un'occhiata",
      "title_6": "Non dimenticare niente 🛒",
      "body_6": "La tua lista della spesa è pronta",
      "title_7": "Pianifichi una visita al negozio? 🏪",
      "body_7": "Controlla la lista e approfitta del viaggio",
      "title_8": "Prima di fare la spesa 🛍️",
      "body_8": "Un'occhiata rapida alla lista può farti risparmiare tempo",
      "title_9": "Passata veloce al negozio? 🛒",
      "body_9": "Gli essenziali di cui potresti aver bisogno sono già nella tua lista",
      "title_10": "Qualcosa sta finendo? ⏰",
      "body_10": "La tua lista è aggiornata, dai un'occhiata"
    }
  },
  "add_custom_grocery": {
    "heading": "Crea un essenziale\npersonalizzato",
    "input_name_hint": "Come si chiama?",
    "input_period_hint": "Ogni quanti giorni lo compri?",
    "input_period_description": "Inserisci un periodo approssimativo. Listox imparerà dai tuoi acquisti!",
    "button_create": "Crea"
  },
  "quick_add": {
    "tile_label": "Aggiunta rapida",
    "dialog_title": "Aggiunta rapida",
    "dialog_subtitle": "L'articolo verrà rimosso dopo la conferma dell'acquisto.",
    "hint": "Inserisci un nome",
    "empty_state_hint": "Hai bisogno di qualcosa solo questa volta? Tocca ovunque per aggiungerlo"
  },
  "paywall": {
    "bullet1": "Tieni traccia di essenziali illimitati",
    "bullet2": "Costruisci la tua lista completa di essenziali",
    "bullet3": "Sappi sempre cosa ti serve prima di fare la spesa"
  },
  "smart_engine_banner": {
    "title": "Profilo Intelligente",
    "description": "Listox impara cosa compri e suggerisce liste prima che tu finisca le scorte."
  },
  "categories": {
    "food": "Alimentari",
    "bathroom": "Bagno",
    "kitchen": "Cucina",
    "cleaning": "Pulizia",
    "health": "Salute",
    "other": "Altro"
  },
  "groceries": {
    "milk": "Latte",
    "eggs": "Uova",
    "bread": "Pane",
    "cheese": "Formaggio",
    "yogurt": "Yogurt",
    "rice": "Riso",
    "pasta": "Pasta",
    "coffee": "Caffè",
    "water": "Acqua",
    "chicken": "Pollo",
    "bananas": "Banane",
    "apples": "Mele",
    "potatoes": "Patate",
    "onions": "Cipolle",
    "butter": "Burro",
    "pepper": "Pepe",
    "garlic": "Aglio",
    "carrot": "Carota",
    "toilet_paper": "Carta igienica",
    "shampoo": "Shampoo",
    "toothpaste": "Dentifricio",
    "soap": "Sapone",
    "deodorant": "Deodorante",
    "toothbrush": "Spazzolino",
    "shaving_cream": "Schiuma da barba",
    "dish_soap": "Detersivo piatti",
    "paper_towels": "Carta da cucina",
    "salt": "Sale",
    "olive_oil": "Olio d'oliva",
    "sugar": "Zucchero",
    "flour": "Farina",
    "foil": "Carta stagnola",
    "baking_paper": "Carta da forno",
    "laundry_detergent": "Detersivo bucato",
    "trash_bags": "Sacchi dell'immondizia",
    "toilet_cleaner": "Pulisci WC",
    "multi_surface_cleaner": "Detergente multiuso",
    "glass_cleaner": "Pulisci vetri",
    "disinfectant_spray": "Spray disinfettante",
    "wipes": "Salviette umidificate",
    "painkillers": "Antidolorifici",
    "vitamins": "Vitamine",
    "bandages": "Cerotti",
    "cough_syrup": "Sciroppo per la tosse",
    "first_aid_kit": "Kit di pronto soccorso",
    "batteries": "Batterie",
    "light_bulbs": "Lampadine",
    "pet_food": "Cibo per animali",
    "printer_paper": "Carta per stampante"
  }
};
static const Map<String,dynamic> _fr = {
  "appTitle": "Listox",
  "loading": {
    "just_a_moment": "Un instant..."
  },
  "error": {
    "generic_titles": {
      "title1": "Oups !",
      "title2": "Quelque chose a mal tourné",
      "title3": "Oh non !",
      "title4": "Hmm...",
      "title5": "Bon alors",
      "title6": "Inattendu !",
      "title7": "Encore !",
      "title8": "Aïe",
      "title9": "Erreur",
      "title10": "Zut",
      "title11": "Oups"
    }
  },
  "error_message": {
    "grocery_not_found": "Article introuvable",
    "grocery_storage": "Échec de la sauvegarde",
    "common": {
      "unexpected": "Oups ! Une erreur inattendue... On s'en occupe ! 🚨"
    },
    "email": {
      "failed_to_open_support": "Oups ! Impossible d'ouvrir l'app mail... Mais tu peux nous contacter à {} 💌"
    },
    "preferences_unexpected": "Un problème inattendu est survenu"
  },
  "label": {
    "oops": "Oups",
    "whoops": "Oups !"
  },
  "snackbar": {
    "badConnection": {
      "title": "Pas de connexion",
      "description": "Vérifie ta connexion internet"
    }
  },
  "common": {
    "cancel": "Annuler",
    "delete": "Supprimer",
    "edit": "Modifier"
  },
  "account": {
    "title": "Compte",
    "premium_status_premium": "Utilisateur Premium",
    "premium_status_upgrade": "Premium",
    "premium_expiry": "Premium valide jusqu'au {date}. Merci pour ton soutien <3",
    "premium_upgrade_cta": "Passe au Premium pour une gestion illimitée !",
    "notifications_enabled": "Activées",
    "notifications_disabled": "Désactivées",
    "notifications_description": "Un rappel avant d'aller faire les courses",
    "section_notifications": "Notifications",
    "section_preferences": "Préférences",
    "language_title": "Langue",
    "language_subtitle": "Langue de l'interface",
    "haptics_title": "Haptique",
    "haptics_subtitle": "Retour vibratoire",
    "section_theme": "Thème",
    "theme_system": "Système",
    "theme_light": "Clair",
    "theme_dark": "Sombre",
    "section_colorations": "Couleurs",
    "section_more": "Plus",
    "about_app": "À propos",
    "privacy_terms": "Confidentialité",
    "contact_support": "Contacter le support"
  },
  "dialog": {
    "delete_grocery": {
      "title": "Supprimer l'article ?",
      "subtitle": "Tu veux vraiment supprimer \"{name}\" ? Cette action est irréversible ⛔️"
    },
    "notification_mode": {
      "title": "Planification des rappels",
      "auto_label": "Auto",
      "auto_description": "Prédit le prochain passage",
      "custom_days_label": "Jours personnalisés",
      "custom_days_description": "Choisis des jours de la semaine"
    },
    "permission": {
      "notifications_title": "Permission",
      "notifications_subtitle": "Autorise les notifications pour recevoir des rappels",
      "notifications_subtitle_settings": "Autorise les notifications pour cette app dans les paramètres système"
    }
  },
  "edit_grocery": {
    "title": "Modifier l'article\n\"{name}\"",
    "input_name_hint": "Comment l'appeler ?",
    "input_period_hint": "Tous les combien de jours tu l'achètes ?",
    "input_period_default": {
      "one": "Tous les {} jour",
      "other": "Tous les {} jours"
    },
    "input_period_description": "Indique une période approximative. Listox apprendra de tes achats !",
    "button_update": "Mettre à jour"
  },
  "home": {
    "header_title": "Ce que tu pourrais avoir besoin d'acheter",
    "tab_this_week": "Cette Semaine",
    "tab_later": "Plus Tard",
    "purchase_confirmed": "Achat confirmé !",
    "purchase_confirmed_description": "Nous apprendrons vos habitudes et prédirons quand vous aurez à nouveau besoin de ces articles",
    "due_overdue": {
      "one": "{} jour de retard",
      "other": "{} jours de retard"
    },
    "due_today": "À acheter aujourd'hui",
    "due_tomorrow": "À acheter demain",
    "due_in_days": {
      "one": "Dans {} jour",
      "other": "Dans {} jours"
    },
    "pre_list_this_week": "Probablement nécessaire cette semaine",
    "pre_list_later": "Probablement nécessaire plus tard",
    "checked_section_title": "Articles cochés",
    "fully_stocked": "Tu es bien approvisionné !",
    "premium_lock_cta": "Passe au Premium pour tout voir",
    "premium_upgrade_hint": "Débloquez tous vos articles avec Premium"
  },
  "purchase_banner": {
    "fully_stocked": "Tout est là ! Appuie sur \"Acheter\" pour confirmer",
    "items_checked": {
      "one": "1 article coché ! Appuie sur \"Acheter\" pour confirmer",
      "other": "{} articles cochés ! Appuie sur \"Acheter\" pour confirmer"
    },
    "button_purchase": "Acheter"
  },
  "tutorial": {
    "schedule_heading": "TON PLANNING DE COURSES",
    "this_week_body": "Ici tu verras les articles que Listox prédit dont tu auras besoin lors de ta prochaine sortie.",
    "later_body": "Ici tu verras les articles dont tu as encore suffisamment. Ils passeront en \"Cette Semaine\" quand il sera temps de se réapprovisionner.",
    "skip": "PASSER"
  },
  "welcome": {
    "title": "Bienvenue sur Listox",
    "onboarding_subtitle": "Ta liste de courses intelligente qui apprend ce que tu achètes et te rappelle de te réapprovisionner",
    "bullet1_title": "Suis tes essentiels",
    "bullet1_subtitle": "Ajoute ce que tu achètes régulièrement et garde tout au même endroit",
    "bullet2_title": "N'oublie plus rien",
    "bullet2_subtitle": "Listox apprend et prédit quand il est temps de se réapprovisionner",
    "bullet3_title": "Toujours prêt pour les courses",
    "bullet3_subtitle": "Vois ce dont tu pourrais avoir besoin cette semaine avant de partir",
    "cta": "Continuer"
  },
  "select_groceries": {
    "heading": "Choisir les essentiels",
    "description": "Sélectionne les articles que tu achètes souvent. Listox suivra quand tu en auras besoin",
    "button_done": "Terminé",
    "button_selected_suffix": "/{max} sélectionnés",
    "add": "Ajouter",
    "limit_reached": "Tu peux sélectionner jusqu'à {max} articles pour l'instant"
  },
  "search_groceries": {
    "hint": "Rechercher des articles..."
  },
  "weekdays_m": {
    "mon": "Lun",
    "tue": "Mar",
    "wed": "Mer",
    "thu": "Jeu",
    "fri": "Ven",
    "sat": "Sam",
    "sun": "Dim"
  },
  "weekdays_s": {
    "mon": "L",
    "tue": "M",
    "wed": "M",
    "thu": "J",
    "fri": "V",
    "sat": "S",
    "sun": "D"
  },
  "notifications": {
    "mode_auto": "Auto",
    "prompts": {
      "title_1": "Tu vas faire les courses bientôt ? 🏪",
      "body_1": "Vérifie ta liste pour ne rien oublier",
      "title_2": "Tu pars faire les courses ? 🛒",
      "body_2": "Vois quels essentiels commencent à manquer",
      "title_3": "Prochaine sortie shopping 🛒",
      "body_3": "Jette un œil à ce dont tu pourrais avoir besoin",
      "title_4": "Courses prévues bientôt ? 🛒",
      "body_4": "Vérifie ce qui doit être réapprovisionné",
      "title_5": "Tu vas au magasin ? 🏪",
      "body_5": "Ta liste est prête ! Jette un coup d'œil",
      "title_6": "N'oublie rien 🛒",
      "body_6": "Ta liste de courses est prête",
      "title_7": "Tu planifies une sortie ? 🏪",
      "body_7": "Consulte ta liste et profite du déplacement",
      "title_8": "Avant de faire les courses 🛍️",
      "body_8": "Un rapide coup d'œil à la liste peut te faire gagner du temps",
      "title_9": "Petite course prévue ? 🛒",
      "body_9": "Les essentiels dont tu as besoin sont déjà sur ta liste",
      "title_10": "Quelque chose qui manque ? ⏰",
      "body_10": "Ta liste est à jour, jette un œil"
    }
  },
  "add_custom_grocery": {
    "heading": "Créer un essentiel\npersonnalisé",
    "input_name_hint": "Comment l'appeler ?",
    "input_period_hint": "Tous les combien de jours tu l'achètes ?",
    "input_period_description": "Indique une période approximative. Listox apprendra de tes achats !",
    "button_create": "Créer"
  },
  "quick_add": {
    "tile_label": "Ajout rapide",
    "dialog_title": "Ajout rapide",
    "dialog_subtitle": "L'article sera supprimé après confirmation de l'achat.",
    "hint": "Entrer un nom",
    "empty_state_hint": "Besoin de quelque chose juste une fois ? Appuie n'importe où pour l'ajouter"
  },
  "paywall": {
    "bullet1": "Suis des essentiels en illimité",
    "bullet2": "Construis ta liste complète d'essentiels",
    "bullet3": "Sache toujours ce dont tu as besoin avant les courses"
  },
  "smart_engine_banner": {
    "title": "Profil Intelligent",
    "description": "Listox mémorise ce que tu achètes et te suggère des listes avant que tu ne sois à court."
  },
  "categories": {
    "food": "Alimentation",
    "bathroom": "Salle de bain",
    "kitchen": "Cuisine",
    "cleaning": "Nettoyage",
    "health": "Santé",
    "other": "Autres"
  },
  "groceries": {
    "milk": "Lait",
    "eggs": "Œufs",
    "bread": "Pain",
    "cheese": "Fromage",
    "yogurt": "Yaourt",
    "rice": "Riz",
    "pasta": "Pâtes",
    "coffee": "Café",
    "water": "Eau",
    "chicken": "Poulet",
    "bananas": "Bananes",
    "apples": "Pommes",
    "potatoes": "Pommes de terre",
    "onions": "Oignons",
    "butter": "Beurre",
    "pepper": "Poivre",
    "garlic": "Ail",
    "carrot": "Carotte",
    "toilet_paper": "Papier toilette",
    "shampoo": "Shampoing",
    "toothpaste": "Dentifrice",
    "soap": "Savon",
    "deodorant": "Déodorant",
    "toothbrush": "Brosse à dents",
    "shaving_cream": "Mousse à raser",
    "dish_soap": "Liquide vaisselle",
    "paper_towels": "Essuie-tout",
    "salt": "Sel",
    "olive_oil": "Huile d'olive",
    "sugar": "Sucre",
    "flour": "Farine",
    "foil": "Papier aluminium",
    "baking_paper": "Papier cuisson",
    "laundry_detergent": "Lessive",
    "trash_bags": "Sacs poubelle",
    "toilet_cleaner": "Nettoyant WC",
    "multi_surface_cleaner": "Nettoyant multi-surfaces",
    "glass_cleaner": "Nettoyant vitres",
    "disinfectant_spray": "Spray désinfectant",
    "wipes": "Lingettes",
    "painkillers": "Analgésiques",
    "vitamins": "Vitamines",
    "bandages": "Pansements",
    "cough_syrup": "Sirop pour la toux",
    "first_aid_kit": "Trousse de secours",
    "batteries": "Piles",
    "light_bulbs": "Ampoules",
    "pet_food": "Nourriture pour animaux",
    "printer_paper": "Papier imprimante"
  }
};
static const Map<String,dynamic> _el = {
  "appTitle": "Listox",
  "loading": {
    "just_a_moment": "Μια στιγμή..."
  },
  "error": {
    "generic_titles": {
      "title1": "Ωχ!",
      "title2": "Κάτι πήγε στραβά",
      "title3": "Ω, όχι!",
      "title4": "Χμμ...",
      "title5": "Λοιπόν",
      "title6": "Απροσδόκητο!",
      "title7": "Πάλι!",
      "title8": "Αχ",
      "title9": "Σφάλμα",
      "title10": "Α, ναι",
      "title11": "Ωχ"
    }
  },
  "error_message": {
    "grocery_not_found": "Το προϊόν δεν βρέθηκε",
    "grocery_storage": "Αποτυχία αποθήκευσης δεδομένων",
    "common": {
      "unexpected": "Ωχ! Παρουσιάστηκε απροσδόκητο σφάλμα... Δουλεύουμε πάνω σε αυτό! 🚨"
    },
    "email": {
      "failed_to_open_support": "Ωχ! Δεν ήταν δυνατό το άνοιγμα της εφαρμογής email... Επικοινωνήστε μαζί μας στο {} 💌"
    },
    "preferences_unexpected": "Παρουσιάστηκε απροσδόκητο πρόβλημα"
  },
  "label": {
    "oops": "Ωχ",
    "whoops": "Ωχ!"
  },
  "snackbar": {
    "badConnection": {
      "title": "Χωρίς σύνδεση",
      "description": "Ελέγξτε τη σύνδεσή σας στο διαδίκτυο"
    }
  },
  "common": {
    "cancel": "Ακύρωση",
    "delete": "Διαγραφή",
    "edit": "Επεξεργασία"
  },
  "account": {
    "title": "Λογαριασμός",
    "premium_status_premium": "Χρήστης Premium",
    "premium_status_upgrade": "Premium",
    "premium_expiry": "Το Premium είναι ενεργό έως {date}. Ευχαριστούμε για την υποστήριξη <3",
    "premium_upgrade_cta": "Αναβαθμίστε σε Premium για απεριόριστη διαχείριση!",
    "notifications_enabled": "Ενεργοποιημένο",
    "notifications_disabled": "Απενεργοποιημένο",
    "notifications_description": "Μια γρήγορη υπενθύμιση πριν τα ψώνια",
    "section_notifications": "Ειδοποιήσεις",
    "section_preferences": "Προτιμήσεις",
    "language_title": "Γλώσσα",
    "language_subtitle": "Γλώσσα διεπαφής",
    "haptics_title": "Haptic",
    "haptics_subtitle": "Δόνηση",
    "section_theme": "Θέμα",
    "theme_system": "Σύστημα",
    "theme_light": "Ανοιχτό",
    "theme_dark": "Σκοτεινό",
    "section_colorations": "Χρώματα",
    "section_more": "Περισσότερα",
    "about_app": "Σχετικά με την εφαρμογή",
    "privacy_terms": "Απόρρητο",
    "contact_support": "Επικοινωνία υποστήριξης"
  },
  "dialog": {
    "delete_grocery": {
      "title": "Διαγραφή προϊόντος;",
      "subtitle": "Είσαι σίγουρος ότι θέλεις να διαγράψεις το \"{name}\"; Αυτή η ενέργεια δεν μπορεί να αναιρεθεί ⛔️"
    },
    "notification_mode": {
      "title": "Πρόγραμμα υπενθυμίσεων",
      "auto_label": "Αυτόματο",
      "auto_description": "Προβλέπει την επόμενη αγορά",
      "custom_days_label": "Προσαρμοσμένες ημέρες",
      "custom_days_description": "Επιλέξτε συγκεκριμένες ημέρες"
    },
    "permission": {
      "notifications_title": "Άδεια",
      "notifications_subtitle": "Για να λαμβάνεις ειδοποιήσεις, επίτρεψε αυτήν την εφαρμογή",
      "notifications_subtitle_settings": "Για να λαμβάνεις ειδοποιήσεις, επίτρεψε αυτήν την εφαρμογή στις ρυθμίσεις συστήματος"
    }
  },
  "edit_grocery": {
    "title": "Επεξεργασία προϊόντος\n\"{name}\"",
    "input_name_hint": "Πώς λέγεται;",
    "input_period_hint": "Κάθε πόσες μέρες αγοράζεις;",
    "input_period_default": {
      "one": "Κάθε {} μέρα",
      "other": "Κάθε {} μέρες"
    },
    "input_period_description": "Εισαγάγετε μια κατά προσέγγιση περίοδο. Το Listox θα μάθει από την ιστορία αγορών σας!",
    "button_update": "Ενημέρωση"
  },
  "home": {
    "header_title": "Προϊόντα που μπορεί να χρειαστεί να αγοράσεις",
    "tab_this_week": "Αυτή την Εβδομάδα",
    "tab_later": "Αργότερα",
    "purchase_confirmed": "Αγορά επιβεβαιώθηκε!",
    "purchase_confirmed_description": "Θα μάθουμε τις συνήθειές σας και θα προβλέψουμε πότε θα χρειαστείτε ξανά αυτά τα είδη",
    "due_overdue": {
      "one": "{} μέρα καθυστέρηση",
      "other": "{} μέρες καθυστέρηση"
    },
    "due_today": "Οφείλεται σήμερα",
    "due_tomorrow": "Οφείλεται αύριο",
    "due_in_days": {
      "one": "Σε {} μέρα",
      "other": "Σε {} μέρες"
    },
    "pre_list_this_week": "Μπορεί να χρειαστεί αυτή την εβδομάδα",
    "pre_list_later": "Μπορεί να χρειαστεί αργότερα",
    "checked_section_title": "Σημειωμένα προϊόντα",
    "fully_stocked": "Το απόθεμά σου είναι επαρκές!",
    "premium_lock_cta": "Αναβαθμίστε σε Premium για να δείτε όλα",
    "premium_upgrade_hint": "Ξεκλειδώστε όλα τα είδη σας με Premium"
  },
  "purchase_banner": {
    "fully_stocked": "Όλα έτοιμα! Πάτησε \"Αγορά\" για επιβεβαίωση",
    "items_checked": {
      "one": "1 προϊόν σημειώθηκε! Πάτησε \"Αγορά\" για επιβεβαίωση",
      "other": "{} προϊόντα σημειώθηκαν! Πάτησε \"Αγορά\" για επιβεβαίωση"
    },
    "button_purchase": "Αγορά"
  },
  "tutorial": {
    "schedule_heading": "ΤΟ ΠΡΟΓΡΑΜΜΑ ΑΓΟΡΩΝ ΣΟΥ",
    "this_week_body": "Εδώ θα δεις τα προϊόντα που το Listox προβλέπει ότι θα χρειαστείς στην επόμενη αγορά σου.",
    "later_body": "Εδώ θα δεις τα προϊόντα που έχεις αρκετά σε απόθεμα. Θα μεταβούν στην \"Αυτή την Εβδομάδα\" όταν έρθει η ώρα να ανεφοδιαστείς.",
    "skip": "ΠΑΡΑΛΕΙΨΗ"
  },
  "welcome": {
    "title": "Καλωσήρθες στο Listox",
    "onboarding_subtitle": "Η έξυπνη λίστα αγορών που μαθαίνει τι αγοράζεις και σε θυμίζει πότε να ανεφοδιαστείς",
    "bullet1_title": "Παρακολούθησε τα απαραίτητα",
    "bullet1_subtitle": "Πρόσθεσε αυτό που αγοράζεις τακτικά και κράτα όλα σε ένα μέρος",
    "bullet2_title": "Μη ξεχάσεις ποτέ",
    "bullet2_subtitle": "Το Listox μαθαίνει και προβλέπει πότε είναι η ώρα να ανεφοδιαστείς",
    "bullet3_title": "Πάντα έτοιμος για αγορές",
    "bullet3_subtitle": "Δες τι μπορεί να χρειαστείς αυτή την εβδομάδα πριν φύγεις",
    "cta": "Συνέχεια"
  },
  "select_groceries": {
    "heading": "Επέλεξε τα απαραίτητα",
    "description": "Επέλεξε τα προϊόντα που αγοράζεις συχνά. Το Listox θα παρακολουθεί πότε θα τα χρειαστείς",
    "button_done": "Τέλος",
    "button_selected_suffix": "/{max} επιλεγμένα",
    "add": "Προσθήκη",
    "limit_reached": "Μπορείς να επιλέξεις μέχρι {max} προϊόντα προς το παρόν"
  },
  "search_groceries": {
    "hint": "Αναζήτηση προϊόντων..."
  },
  "weekdays_m": {
    "mon": "Δευ",
    "tue": "Τρί",
    "wed": "Τετ",
    "thu": "Πέμ",
    "fri": "Παρ",
    "sat": "Σάβ",
    "sun": "Κυρ"
  },
  "weekdays_s": {
    "mon": "Δε",
    "tue": "Τρ",
    "wed": "Τε",
    "thu": "Πε",
    "fri": "Πα",
    "sat": "Σα",
    "sun": "Κυ"
  },
  "notifications": {
    "mode_auto": "Αυτόματο",
    "prompts": {
      "title_1": "Σύντομα στο σούπερ μάρκετ; 🏪",
      "body_1": "Δες τη λίστα για να μην χάσεις τίποτα",
      "title_2": "Πας για ψώνια; 🛒",
      "body_2": "Δες ποια απαραίτητα τελειώνουν",
      "title_3": "Επόμενα ψώνια 🛒",
      "body_3": "Ρίξε μια γρήγορη ματιά σε τι μπορεί να χρειαστείς",
      "title_4": "Σύντομα ψώνια; 🛒",
      "body_4": "Έλεγξε τι χρειάζεται ανεφοδιασμός",
      "title_5": "Πας στο μαγαζί; 🏪",
      "body_5": "Η λίστα σου είναι έτοιμη! Ρίξε μια ματιά",
      "title_6": "Μη ξεχάσεις τίποτα 🛒",
      "body_6": "Η λίστα αγορών σου είναι έτοιμη",
      "title_7": "Σχεδιάζεις επίσκεψη στο μαγαζί; 🏪",
      "body_7": "Έλεγξε τη λίστα και αξιοποίησε την εκδρομή",
      "title_8": "Πριν τα ψώνια 🛍️",
      "body_8": "Μια γρήγορη ματιά στη λίστα μπορεί να εξοικονομήσει χρόνο",
      "title_9": "Περνάς από το μαγαζί; 🛒",
      "body_9": "Τα απαραίτητα που μπορεί να χρειαστείς είναι ήδη στη λίστα σου",
      "title_10": "Κάτι τελειώνει; ⏰",
      "body_10": "Η λίστα αγορών σου ενημερώθηκε, ρίξε μια ματιά"
    }
  },
  "add_custom_grocery": {
    "heading": "Δημιουργία\nπροσαρμοσμένου προϊόντος",
    "input_name_hint": "Πώς λέγεται;",
    "input_period_hint": "Κάθε πόσες μέρες αγοράζεις;",
    "input_period_description": "Εισαγάγετε μια κατά προσέγγιση περίοδο. Το Listox θα μάθει από την ιστορία αγορών σας!",
    "button_create": "Δημιουργία"
  },
  "quick_add": {
    "tile_label": "Γρήγορη προσθήκη",
    "dialog_title": "Γρήγορη προσθήκη",
    "dialog_subtitle": "Το προϊόν θα αφαιρεθεί μετά την επιβεβαίωση της αγοράς.",
    "hint": "Εισαγάγετε ένα όνομα",
    "empty_state_hint": "Χρειάζεσαι κάτι μόνο μία φορά; Άγγιξε οπουδήποτε για να προσθέσεις"
  },
  "paywall": {
    "bullet1": "Παρακολούθηση απεριόριστων προϊόντων",
    "bullet2": "Δημιουργία πλήρους λίστας απαραίτητων",
    "bullet3": "Πάντα να ξέρεις τι χρειάζεσαι πριν τα ψώνια"
  },
  "smart_engine_banner": {
    "title": "Έξυπνο Προφίλ",
    "description": "Το Listox μαθαίνει τι αγοράζεις και προτείνει λίστες αγορών πριν εξαντληθούν τα αποθέματα."
  },
  "categories": {
    "food": "Τρόφιμα",
    "bathroom": "Μπάνιο",
    "kitchen": "Κουζίνα",
    "cleaning": "Καθαρισμός",
    "health": "Υγεία",
    "other": "Άλλα"
  },
  "groceries": {
    "milk": "Γάλα",
    "eggs": "Αυγά",
    "bread": "Ψωμί",
    "cheese": "Τυρί",
    "yogurt": "Γιαούρτι",
    "rice": "Ρύζι",
    "pasta": "Ζυμαρικά",
    "coffee": "Καφές",
    "water": "Νερό",
    "chicken": "Κοτόπουλο",
    "bananas": "Μπανάνες",
    "apples": "Μήλα",
    "potatoes": "Πατάτες",
    "onions": "Κρεμμύδια",
    "butter": "Βούτυρο",
    "pepper": "Πιπέρι",
    "garlic": "Σκόρδο",
    "carrot": "Καρότο",
    "toilet_paper": "Χαρτί υγείας",
    "shampoo": "Σαμπουάν",
    "toothpaste": "Οδοντόκρεμα",
    "soap": "Σαπούνι",
    "deodorant": "Αποσμητικό",
    "toothbrush": "Οδοντόβουρτσα",
    "shaving_cream": "Κρέμα ξυρίσματος",
    "dish_soap": "Απορρυπαντικό πιάτων",
    "paper_towels": "Χαρτοπετσέτες",
    "salt": "Αλάτι",
    "olive_oil": "Ελαιόλαδο",
    "sugar": "Ζάχαρη",
    "flour": "Αλεύρι",
    "foil": "Αλουμινόχαρτο",
    "baking_paper": "Αντικολλητικό χαρτί",
    "laundry_detergent": "Απορρυπαντικό ρούχων",
    "trash_bags": "Σακούλες σκουπιδιών",
    "toilet_cleaner": "Καθαριστικό τουαλέτας",
    "multi_surface_cleaner": "Καθαριστικό πολλαπλών επιφανειών",
    "glass_cleaner": "Καθαριστικό τζαμιών",
    "disinfectant_spray": "Απολυμαντικό σπρέι",
    "wipes": "Υγρά μαντηλάκια",
    "painkillers": "Παυσίπονα",
    "vitamins": "Βιταμίνες",
    "bandages": "Τσιρότα",
    "cough_syrup": "Σιρόπι βήχα",
    "first_aid_kit": "Κιτ πρώτων βοηθειών",
    "batteries": "Μπαταρίες",
    "light_bulbs": "Λαμπτήρες",
    "pet_food": "Τροφή για κατοικίδια",
    "printer_paper": "Χαρτί εκτυπωτή"
  }
};
static const Map<String,dynamic> _ro = {
  "appTitle": "Listox",
  "loading": {
    "just_a_moment": "Un moment..."
  },
  "error": {
    "generic_titles": {
      "title1": "Of!",
      "title2": "Ceva n-a mers bine",
      "title3": "O, nu!",
      "title4": "Hmm...",
      "title5": "Ei bine",
      "title6": "Neașteptat!",
      "title7": "Din nou!",
      "title8": "Vai",
      "title9": "Eroare",
      "title10": "Uite ce e",
      "title11": "Ups"
    }
  },
  "error_message": {
    "grocery_not_found": "Produsul nu a fost găsit",
    "grocery_storage": "Salvarea datelor a eșuat",
    "common": {
      "unexpected": "Ups! A apărut o eroare neașteptată... Lucrăm la asta! 🚨"
    },
    "email": {
      "failed_to_open_support": "Ups! Nu am putut deschide aplicația de email... Ne poți contacta la {} 💌"
    },
    "preferences_unexpected": "A apărut o problemă neașteptată"
  },
  "label": {
    "oops": "Ups",
    "whoops": "Ups!"
  },
  "snackbar": {
    "badConnection": {
      "title": "Fără conexiune",
      "description": "Verificați conexiunea la internet"
    }
  },
  "common": {
    "cancel": "Anulare",
    "delete": "Ștergere",
    "edit": "Editare"
  },
  "account": {
    "title": "Cont",
    "premium_status_premium": "Utilizator Premium",
    "premium_status_upgrade": "Premium",
    "premium_expiry": "Premium activ până la {date}. Mulțumim pentru sprijin <3",
    "premium_upgrade_cta": "Treci la Premium pentru gestionare nelimitată!",
    "notifications_enabled": "Activat",
    "notifications_disabled": "Dezactivat",
    "notifications_description": "O scurtă reamintire înainte de cumpărături",
    "section_notifications": "Notificări",
    "section_preferences": "Preferințe",
    "language_title": "Limbă",
    "language_subtitle": "Limba interfeței",
    "haptics_title": "Haptic",
    "haptics_subtitle": "Feedback prin vibrații",
    "section_theme": "Temă",
    "theme_system": "Sistem",
    "theme_light": "Luminoasă",
    "theme_dark": "Întunecată",
    "section_colorations": "Culori",
    "section_more": "Mai mult",
    "about_app": "Despre aplicație",
    "privacy_terms": "Confidențialitate",
    "contact_support": "Contactați suportul"
  },
  "dialog": {
    "delete_grocery": {
      "title": "Ștergeți produsul?",
      "subtitle": "Sigur vrei să ștergi \"{name}\"? Această acțiune nu poate fi anulată ⛔️"
    },
    "notification_mode": {
      "title": "Program de remindere",
      "auto_label": "Automat",
      "auto_description": "Prezice următoarea achiziție",
      "custom_days_label": "Zile personalizate",
      "custom_days_description": "Alege zile specifice"
    },
    "permission": {
      "notifications_title": "Permisiune",
      "notifications_subtitle": "Pentru a primi notificări, permite această aplicație",
      "notifications_subtitle_settings": "Pentru a primi notificări, permite această aplicație în setările sistemului"
    }
  },
  "edit_grocery": {
    "title": "Editează produsul\n\"{name}\"",
    "input_name_hint": "Cum se numește?",
    "input_period_hint": "La câte zile cumperi?",
    "input_period_default": {
      "one": "La fiecare {} zi",
      "few": "La fiecare {} zile",
      "other": "La fiecare {} de zile"
    },
    "input_period_description": "Introduceți o perioadă aproximativă. Listox va învăța din istoricul achizițiilor!",
    "button_update": "Actualizare"
  },
  "home": {
    "header_title": "Produse pe care ar putea trebui să le cumperi",
    "tab_this_week": "Săptămâna Asta",
    "tab_later": "Mai târziu",
    "purchase_confirmed": "Achiziție confirmată!",
    "purchase_confirmed_description": "Vom învăța obiceiurile tale și vom prezice când vei avea din nou nevoie de aceste produse",
    "due_overdue": {
      "one": "{} zi întârziere",
      "few": "{} zile întârziere",
      "other": "{} de zile întârziere"
    },
    "due_today": "Scadent azi",
    "due_tomorrow": "Scadent mâine",
    "due_in_days": {
      "one": "În {} zi",
      "few": "În {} zile",
      "other": "În {} de zile"
    },
    "pre_list_this_week": "Poate fi necesar săptămâna aceasta",
    "pre_list_later": "Poate fi necesar mai târziu",
    "checked_section_title": "Produse bifate",
    "fully_stocked": "Stocul tău este suficient!",
    "premium_lock_cta": "Treci la Premium pentru a vedea tot",
    "premium_upgrade_hint": "Deblochează toate produsele cu Premium"
  },
  "purchase_banner": {
    "fully_stocked": "Totul este complet! Apasă \"Cumpără\" pentru confirmare",
    "items_checked": {
      "one": "1 produs bifat! Apasă \"Cumpără\" pentru confirmare",
      "few": "{} produse bifate! Apasă \"Cumpără\" pentru confirmare",
      "other": "{} de produse bifate! Apasă \"Cumpără\" pentru confirmare"
    },
    "button_purchase": "Cumpără"
  },
  "tutorial": {
    "schedule_heading": "PLANUL TĂU DE CUMPĂRĂTURI",
    "this_week_body": "Aici vei vedea produsele pe care Listox le prevede că vei avea nevoie la următoarea sesiune de cumpărături.",
    "later_body": "Aici vei vedea produsele pe care le ai în stoc suficient. Vor trece la \"Săptămâna Asta\" când va fi momentul să reaprovizionezi.",
    "skip": "SARI"
  },
  "welcome": {
    "title": "Bine ai venit la Listox",
    "onboarding_subtitle": "Lista ta inteligentă de cumpărături care învață ce cumperi și îți amintește când să reaprovizionezi",
    "bullet1_title": "Urmărește elementele esențiale",
    "bullet1_subtitle": "Adaugă ce cumperi regulat și ține totul într-un singur loc",
    "bullet2_title": "Nu uita niciodată",
    "bullet2_subtitle": "Listox învață și prezice când e momentul să reaprovizionezi",
    "bullet3_title": "Mereu pregătit pentru cumpărături",
    "bullet3_subtitle": "Vezi ce ai putea nevoie săptămâna aceasta înainte să ieși",
    "cta": "Continuare"
  },
  "select_groceries": {
    "heading": "Alege elementele esențiale",
    "description": "Selectează produsele pe care le cumperi des. Listox va urmări când vei avea nevoie de ele",
    "button_done": "Gata",
    "button_selected_suffix": "/{max} selectate",
    "add": "Adaugă",
    "limit_reached": "Deocamdată poți selecta maximum {max} produse"
  },
  "search_groceries": {
    "hint": "Caută produse..."
  },
  "weekdays_m": {
    "mon": "Lun",
    "tue": "Mar",
    "wed": "Mie",
    "thu": "Joi",
    "fri": "Vin",
    "sat": "Sâm",
    "sun": "Dum"
  },
  "weekdays_s": {
    "mon": "L",
    "tue": "Ma",
    "wed": "Mi",
    "thu": "J",
    "fri": "V",
    "sat": "S",
    "sun": "D"
  },
  "notifications": {
    "mode_auto": "Automat",
    "prompts": {
      "title_1": "Mergi curând la supermarket? 🏪",
      "body_1": "Verifică lista să nu ratezi nimic",
      "title_2": "Faci cumpărături? 🛒",
      "body_2": "Uită-te ce articole esențiale sunt pe terminate",
      "title_3": "Următoarele cumpărături 🛒",
      "body_3": "Aruncă o privire rapidă la ce ai putea nevoie",
      "title_4": "Cumpărături în curând? 🛒",
      "body_4": "Verifică ce trebuie reaprovizionat",
      "title_5": "Mergi la magazin? 🏪",
      "body_5": "Lista ta e gata! Dă-i o privire",
      "title_6": "Nu uita nimic 🛒",
      "body_6": "Lista ta de cumpărături e gata",
      "title_7": "Planifici o vizită la magazin? 🏪",
      "body_7": "Verifică lista și profită de drum",
      "title_8": "Înainte de cumpărături 🛍️",
      "body_8": "O privire rapidă la listă poate economisi timp",
      "title_9": "Treci pe la magazin? 🛒",
      "body_9": "Produsele esențiale de care ai putea nevoie sunt deja în lista ta",
      "title_10": "Se termină ceva? ⏰",
      "body_10": "Lista ta de cumpărături e actualizată, dă-i o privire"
    }
  },
  "add_custom_grocery": {
    "heading": "Creează un produs\npersonalizat",
    "input_name_hint": "Cum se numește?",
    "input_period_hint": "La câte zile cumperi?",
    "input_period_description": "Introduceți o perioadă aproximativă. Listox va învăța din istoricul achizițiilor!",
    "button_create": "Creare"
  },
  "quick_add": {
    "tile_label": "Adăugare rapidă",
    "dialog_title": "Adăugare rapidă",
    "dialog_subtitle": "Produsul va fi eliminat după confirmarea achiziției.",
    "hint": "Introduceți un nume",
    "empty_state_hint": "Ai nevoie de ceva doar o dată? Atinge oriunde pentru a adăuga"
  },
  "paywall": {
    "bullet1": "Urmărește produse nelimitate",
    "bullet2": "Construiește lista completă de esențiale",
    "bullet3": "Știi mereu ce ai nevoie înainte de cumpărături"
  },
  "smart_engine_banner": {
    "title": "Profil Inteligent",
    "description": "Listox învață ce cumperi și sugerează liste de cumpărături înainte să rămâi fără stoc."
  },
  "categories": {
    "food": "Alimente",
    "bathroom": "Baie",
    "kitchen": "Bucătărie",
    "cleaning": "Curățenie",
    "health": "Sănătate",
    "other": "Altele"
  },
  "groceries": {
    "milk": "Lapte",
    "eggs": "Ouă",
    "bread": "Pâine",
    "cheese": "Brânză",
    "yogurt": "Iaurt",
    "rice": "Orez",
    "pasta": "Paste",
    "coffee": "Cafea",
    "water": "Apă",
    "chicken": "Pui",
    "bananas": "Banane",
    "apples": "Mere",
    "potatoes": "Cartofi",
    "onions": "Ceapă",
    "butter": "Unt",
    "pepper": "Piper",
    "garlic": "Usturoi",
    "carrot": "Morcov",
    "toilet_paper": "Hârtie igienică",
    "shampoo": "Șampon",
    "toothpaste": "Pastă de dinți",
    "soap": "Săpun",
    "deodorant": "Deodorant",
    "toothbrush": "Periuță de dinți",
    "shaving_cream": "Cremă de ras",
    "dish_soap": "Detergent de vase",
    "paper_towels": "Prosoape de hârtie",
    "salt": "Sare",
    "olive_oil": "Ulei de măsline",
    "sugar": "Zahăr",
    "flour": "Făină",
    "foil": "Folie de aluminiu",
    "baking_paper": "Hârtie de copt",
    "laundry_detergent": "Detergent de rufe",
    "trash_bags": "Saci de gunoi",
    "toilet_cleaner": "Soluție pentru toaletă",
    "multi_surface_cleaner": "Curățitor multisuprafețe",
    "glass_cleaner": "Soluție pentru geamuri",
    "disinfectant_spray": "Spray dezinfectant",
    "wipes": "Șervețele umede",
    "painkillers": "Analgezice",
    "vitamins": "Vitamine",
    "bandages": "Plasturi",
    "cough_syrup": "Sirop de tuse",
    "first_aid_kit": "Trusă de prim ajutor",
    "batteries": "Baterii",
    "light_bulbs": "Becuri",
    "pet_food": "Hrană pentru animale de companie",
    "printer_paper": "Hârtie pentru imprimantă"
  }
};
static const Map<String,dynamic> _hi = {
  "appTitle": "Listox",
  "loading": {
    "just_a_moment": "एक पल..."
  },
  "error": {
    "generic_titles": {
      "title1": "उफ़!",
      "title2": "कुछ गड़बड़ हो गई",
      "title3": "ओह नहीं!",
      "title4": "हम्म...",
      "title5": "अच्छा फिर",
      "title6": "अप्रत्याशित!",
      "title7": "फिर से!",
      "title8": "अरे",
      "title9": "त्रुटि",
      "title10": "अरे यार",
      "title11": "गलती"
    }
  },
  "error_message": {
    "grocery_not_found": "आइटम नहीं मिला",
    "grocery_storage": "डेटा सेव नहीं हो सका",
    "common": {
      "unexpected": "कुछ अनपेक्षित हो गया... हम इस पर काम कर रहे हैं! 🚨"
    },
    "email": {
      "failed_to_open_support": "उफ़! ईमेल ऐप नहीं खुल सका... लेकिन आप {} पर हमसे संपर्क कर सकते हैं 💌"
    },
    "preferences_unexpected": "अनपेक्षित समस्या हुई"
  },
  "label": {
    "oops": "उफ़",
    "whoops": "उफ़!"
  },
  "snackbar": {
    "badConnection": {
      "title": "कोई कनेक्शन नहीं",
      "description": "कृपया अपना इंटरनेट कनेक्शन जांचें"
    }
  },
  "common": {
    "cancel": "रद्द करें",
    "delete": "हटाएं",
    "edit": "संपादित करें"
  },
  "account": {
    "title": "खाता",
    "premium_status_premium": "प्रीमियम यूज़र",
    "premium_status_upgrade": "प्रीमियम",
    "premium_expiry": "प्रीमियम {date} तक वैध है। आपके समर्थन के लिए धन्यवाद <3",
    "premium_upgrade_cta": "असीमित ग्रोसरी के लिए प्रीमियम लें!",
    "notifications_enabled": "चालू",
    "notifications_disabled": "बंद",
    "notifications_description": "दुकान जाने से पहले एक रिमाइंडर",
    "section_notifications": "सूचनाएं",
    "section_preferences": "प्राथमिकताएं",
    "language_title": "भाषा",
    "language_subtitle": "इंटरफ़ेस भाषा",
    "haptics_title": "हैप्टिक्स",
    "haptics_subtitle": "वाइब्रेशन फ़ीडबैक",
    "section_theme": "थीम",
    "theme_system": "सिस्टम",
    "theme_light": "हल्का",
    "theme_dark": "गहरा",
    "section_colorations": "रंग",
    "section_more": "और",
    "about_app": "ऐप के बारे में",
    "privacy_terms": "गोपनीयता",
    "contact_support": "सपोर्ट से संपर्क करें"
  },
  "dialog": {
    "delete_grocery": {
      "title": "आइटम हटाएं?",
      "subtitle": "क्या आप सच में \"{name}\" हटाना चाहते हैं? यह क्रिया वापस नहीं होगी ⛔️"
    },
    "notification_mode": {
      "title": "रिमाइंडर शेड्यूल",
      "auto_label": "ऑटो",
      "auto_description": "अगली शॉपिंग का अनुमान लगाता है",
      "custom_days_label": "कस्टम दिन",
      "custom_days_description": "विशेष दिन चुनें"
    },
    "permission": {
      "notifications_title": "अनुमति",
      "notifications_subtitle": "सूचनाएं पाने के लिए इस ऐप को अनुमति दें",
      "notifications_subtitle_settings": "सिस्टम सेटिंग्स में इस ऐप को नोटिफिकेशन की अनुमति दें"
    }
  },
  "edit_grocery": {
    "title": "आइटम संपादित करें\n\"{name}\"",
    "input_name_hint": "इसे क्या कहें?",
    "input_period_hint": "कितने दिन में खरीदते हैं?",
    "input_period_default": {
      "one": "हर {} दिन",
      "other": "हर {} दिन"
    },
    "input_period_description": "एक अनुमानित अवधि दर्ज करें। Listox आपकी खरीदारी से सीखेगा!",
    "button_update": "अपडेट करें"
  },
  "home": {
    "header_title": "जो चीज़ें शायद खरीदनी हों",
    "tab_this_week": "इस हफ्ते",
    "tab_later": "बाद में",
    "purchase_confirmed": "खरीदारी की पुष्टि हो गई!",
    "purchase_confirmed_description": "हम आपके उपयोग से सीखेंगे और अनुमान लगाएंगे कि आपको ये चीज़ें फिर कब चाहिए होंगी",
    "due_overdue": {
      "one": "{} दिन पहले देय था",
      "other": "{} दिन पहले देय था"
    },
    "due_today": "आज देय है",
    "due_tomorrow": "कल देय है",
    "due_in_days": {
      "one": "{} दिन में",
      "other": "{} दिन में"
    },
    "pre_list_this_week": "इस हफ्ते ज़रूरत होगी",
    "pre_list_later": "बाद में ज़रूरत होगी",
    "checked_section_title": "चुने हुए आइटम",
    "fully_stocked": "पूरा स्टॉक है!",
    "premium_lock_cta": "सब देखने के लिए प्रीमियम लें",
    "premium_upgrade_hint": "प्रीमियम के साथ सभी किराना अनलॉक करें"
  },
  "purchase_banner": {
    "fully_stocked": "सब कुछ है! \"खरीदें\" दबाकर पुष्टि करें",
    "items_checked": {
      "one": "1 आइटम चुना! \"खरीदें\" दबाकर पुष्टि करें",
      "other": "{} आइटम चुने! \"खरीदें\" दबाकर पुष्टि करें"
    },
    "button_purchase": "खरीदें"
  },
  "tutorial": {
    "schedule_heading": "आपका शॉपिंग शेड्यूल",
    "this_week_body": "यहाँ वो आइटम दिखेंगे जो Listox की राय में आपको अगली बार खरीदने चाहिए।",
    "later_body": "यहाँ वो आइटम दिखेंगे जो अभी पर्याप्त हैं। जब भरने का समय होगा तो वे \"इस हफ्ते\" में आ जाएंगे।",
    "skip": "छोड़ें"
  },
  "welcome": {
    "title": "Listox में आपका स्वागत है",
    "onboarding_subtitle": "स्मार्ट ग्रोसरी लिस्ट जो आपकी खरीदारी सीखती है और भरने की याद दिलाती है",
    "bullet1_title": "ज़रूरी चीज़ें ट्रैक करें",
    "bullet1_subtitle": "जो चीज़ें नियमित खरीदते हैं उन्हें जोड़ें और एक जगह रखें",
    "bullet2_title": "फिर कभी न भूलें",
    "bullet2_subtitle": "Listox सीखता है और बताता है कि कब भरना है",
    "bullet3_title": "हमेशा दुकान के लिए तैयार",
    "bullet3_subtitle": "निकलने से पहले देखें इस हफ्ते क्या चाहिए",
    "cta": "जारी रखें"
  },
  "select_groceries": {
    "heading": "ज़रूरी चीज़ें चुनें",
    "description": "जो आइटम अक्सर खरीदते हैं उन्हें चुनें। Listox ट्रैक करेगा कब चाहिए",
    "button_done": "हो गया",
    "button_selected_suffix": "/{max} चुने",
    "add": "जोड़ें",
    "limit_reached": "अभी अधिकतम {max} आइटम चुन सकते हैं"
  },
  "search_groceries": {
    "hint": "आइटम खोजें..."
  },
  "weekdays_m": {
    "mon": "सोम",
    "tue": "मंगल",
    "wed": "बुध",
    "thu": "गुरु",
    "fri": "शुक्र",
    "sat": "शनि",
    "sun": "रवि"
  },
  "weekdays_s": {
    "mon": "स",
    "tue": "मं",
    "wed": "बु",
    "thu": "गु",
    "fri": "शु",
    "sat": "श",
    "sun": "र"
  },
  "notifications": {
    "mode_auto": "ऑटो",
    "prompts": {
      "title_1": "जल्द दुकान जाना है? 🏪",
      "body_1": "लिस्ट देखें ताकि कुछ छूट न जाए",
      "title_2": "शॉपिंग पर जाने वाले हैं? 🛒",
      "body_2": "देखें कौन सी ज़रूरी चीज़ें कम हो रही हैं",
      "title_3": "अगली शॉपिंग ट्रिप 🛒",
      "body_3": "जल्दी से देखें आपको क्या चाहिए",
      "title_4": "जल्द खरीदारी? 🛒",
      "body_4": "देखें क्या भरना है",
      "title_5": "दुकान जाने वाले हैं? 🏪",
      "body_5": "आपकी शॉपिंग लिस्ट तैयार है! एक नज़र डालें",
      "title_6": "कुछ मत भूलिए 🛒",
      "body_6": "आपकी शॉपिंग लिस्ट तैयार है",
      "title_7": "दुकान की योजना बना रहे हैं? 🏪",
      "body_7": "लिस्ट देखें और यात्रा का सदुपयोग करें",
      "title_8": "शॉपिंग से पहले 🛍️",
      "body_8": "लिस्ट की जल्दी जांच से समय बचेगा",
      "title_9": "जल्दी दुकान जाना है? 🛒",
      "body_9": "जो चाहिए वो पहले से लिस्ट में है",
      "title_10": "कुछ खत्म हो रहा है? ⏰",
      "body_10": "आपकी शॉपिंग लिस्ट अप-टू-डेट है"
    }
  },
  "add_custom_grocery": {
    "heading": "कस्टम\nआइटम बनाएं",
    "input_name_hint": "इसे क्या कहें?",
    "input_period_hint": "कितने दिन में खरीदते हैं?",
    "input_period_description": "एक अनुमानित अवधि दर्ज करें। Listox आपकी खरीदारी से सीखेगा!",
    "button_create": "बनाएं"
  },
  "quick_add": {
    "tile_label": "जल्दी जोड़ें",
    "dialog_title": "जल्दी जोड़ें",
    "dialog_subtitle": "खरीदारी की पुष्टि के बाद आइटम हट जाएगा।",
    "hint": "नाम डालें",
    "empty_state_hint": "बस एक बार कुछ चाहिए? कहीं भी टैप करके जोड़ें"
  },
  "paywall": {
    "bullet1": "असीमित ज़रूरी चीज़ें ट्रैक करें",
    "bullet2": "अपनी पूरी ज़रूरी चीज़ों की लिस्ट बनाएं",
    "bullet3": "शॉपिंग से पहले हमेशा जानें क्या चाहिए"
  },
  "smart_engine_banner": {
    "title": "स्मार्ट प्रोफाइल",
    "description": "Listox आपकी खरीदारी की आदतें याद रखता है और खत्म होने से पहले लिस्ट सुझाता है।"
  },
  "categories": {
    "food": "खाना",
    "bathroom": "बाथरूम",
    "kitchen": "रसोई",
    "cleaning": "सफाई",
    "health": "स्वास्थ्य",
    "other": "अन्य"
  },
  "groceries": {
    "milk": "दूध",
    "eggs": "अंडे",
    "bread": "ब्रेड",
    "cheese": "चीज़",
    "yogurt": "दही",
    "rice": "चावल",
    "pasta": "पास्ता",
    "coffee": "कॉफी",
    "water": "पानी",
    "chicken": "चिकन",
    "bananas": "केले",
    "apples": "सेब",
    "potatoes": "आलू",
    "onions": "प्याज",
    "butter": "मक्खन",
    "pepper": "काली मिर्च",
    "garlic": "लहसुन",
    "carrot": "गाजर",
    "toilet_paper": "टॉयलेट पेपर",
    "shampoo": "शैम्पू",
    "toothpaste": "टूथपेस्ट",
    "soap": "साबुन",
    "deodorant": "डिओडोरेंट",
    "toothbrush": "टूथब्रश",
    "shaving_cream": "शेविंग क्रीम",
    "dish_soap": "बर्तन धोने का साबुन",
    "paper_towels": "किचन रोल",
    "salt": "नमक",
    "olive_oil": "जैतून का तेल",
    "sugar": "चीनी",
    "flour": "आटा",
    "foil": "एल्युमिनियम फॉइल",
    "baking_paper": "बेकिंग पेपर",
    "laundry_detergent": "कपड़े धोने का पाउडर",
    "trash_bags": "कचरे की थैलियां",
    "toilet_cleaner": "टॉयलेट क्लीनर",
    "multi_surface_cleaner": "सर्फेस क्लीनर",
    "glass_cleaner": "ग्लास क्लीनर",
    "disinfectant_spray": "डिसइन्फेक्टेंट स्प्रे",
    "wipes": "वेट वाइप्स",
    "painkillers": "दर्द की दवा",
    "vitamins": "विटामिन",
    "bandages": "पट्टी",
    "cough_syrup": "खांसी की दवाई",
    "first_aid_kit": "प्राथमिक चिकित्सा किट",
    "batteries": "बैटरी",
    "light_bulbs": "बल्ब",
    "pet_food": "पालतू जानवर का खाना",
    "printer_paper": "प्रिंटर पेपर"
  }
};
static const Map<String,dynamic> _ko = {
  "appTitle": "Listox",
  "loading": {
    "just_a_moment": "잠시만요..."
  },
  "error": {
    "generic_titles": {
      "title1": "이런!",
      "title2": "문제가 발생했어요",
      "title3": "아 이런!",
      "title4": "음...",
      "title5": "그렇군요",
      "title6": "예상 밖이에요!",
      "title7": "또요!",
      "title8": "어머",
      "title9": "오류",
      "title10": "난감해요",
      "title11": "실수가 생겼어요"
    }
  },
  "error_message": {
    "grocery_not_found": "상품을 찾을 수 없어요",
    "grocery_storage": "데이터 저장에 실패했어요",
    "common": {
      "unexpected": "예상치 못한 오류가 발생했어요... 해결 중이에요! 🚨"
    },
    "email": {
      "failed_to_open_support": "이런! 이메일 앱을 열 수 없었어요... {} 으로 언제든지 연락 주세요 💌"
    },
    "preferences_unexpected": "예상치 못한 문제가 발생했어요"
  },
  "label": {
    "oops": "이런",
    "whoops": "이런!"
  },
  "snackbar": {
    "badConnection": {
      "title": "연결 없음",
      "description": "인터넷 연결을 확인해 주세요"
    }
  },
  "common": {
    "cancel": "취소",
    "delete": "삭제",
    "edit": "편집"
  },
  "account": {
    "title": "계정",
    "premium_status_premium": "프리미엄 사용자",
    "premium_status_upgrade": "프리미엄",
    "premium_expiry": "프리미엄이 {date}까지 유효해요. 지원해 주셔서 감사해요 <3",
    "premium_upgrade_cta": "프리미엄으로 무제한 관리를 시작하세요!",
    "notifications_enabled": "켜짐",
    "notifications_disabled": "꺼짐",
    "notifications_description": "장보기 전 빠른 알림",
    "section_notifications": "알림",
    "section_preferences": "환경설정",
    "language_title": "언어",
    "language_subtitle": "인터페이스 언어",
    "haptics_title": "햅틱스",
    "haptics_subtitle": "진동 피드백",
    "section_theme": "테마",
    "theme_system": "시스템",
    "theme_light": "라이트",
    "theme_dark": "다크",
    "section_colorations": "색상",
    "section_more": "더보기",
    "about_app": "앱 정보",
    "privacy_terms": "개인정보처리방침",
    "contact_support": "고객센터 문의"
  },
  "dialog": {
    "delete_grocery": {
      "title": "상품을 삭제할까요?",
      "subtitle": "\"{name}\"을(를) 정말 삭제할까요? 이 작업은 되돌릴 수 없어요 ⛔️"
    },
    "notification_mode": {
      "title": "알림 일정",
      "auto_label": "자동",
      "auto_description": "다음 장보기를 예측해요",
      "custom_days_label": "요일 선택",
      "custom_days_description": "특정 요일을 선택하세요"
    },
    "permission": {
      "notifications_title": "권한",
      "notifications_subtitle": "알림을 받으려면 이 앱의 권한을 허용해 주세요",
      "notifications_subtitle_settings": "알림을 받으려면 시스템 설정에서 이 앱의 권한을 허용해 주세요"
    }
  },
  "edit_grocery": {
    "title": "상품 편집\n\"{name}\"",
    "input_name_hint": "이름을 알려주세요",
    "input_period_hint": "며칠마다 구매하나요?",
    "input_period_default": {
      "one": "{}일마다",
      "other": "{}일마다"
    },
    "input_period_description": "대략적인 주기를 입력해 주세요. Listox가 구매 기록으로 학습할 거예요!",
    "button_update": "업데이트"
  },
  "home": {
    "header_title": "구매가 필요할 수 있는 상품",
    "tab_this_week": "이번 주",
    "tab_later": "나중에",
    "purchase_confirmed": "구매가 확인됐어요!",
    "purchase_confirmed_description": "사용 패턴을 학습하여 이 항목이 다시 필요한 시기를 예측합니다",
    "due_overdue": {
      "one": "{}일 지났어요",
      "other": "{}일 지났어요"
    },
    "due_today": "오늘이 기한이에요",
    "due_tomorrow": "내일이 기한이에요",
    "due_in_days": {
      "one": "{}일 후",
      "other": "{}일 후"
    },
    "pre_list_this_week": "이번 주에 필요할 것 같아요",
    "pre_list_later": "나중에 필요할 것 같아요",
    "checked_section_title": "체크한 상품",
    "fully_stocked": "재고가 충분해요!",
    "premium_lock_cta": "프리미엄으로 전체 보기",
    "premium_upgrade_hint": "프리미엄으로 모든 식료품을 잠금 해제"
  },
  "purchase_banner": {
    "fully_stocked": "재고 충분! 「구매」를 탭해서 확인하세요",
    "items_checked": {
      "one": "1개 체크됐어요! 「구매」를 탭해서 확인하세요",
      "other": "{}개 체크됐어요! 「구매」를 탭해서 확인하세요"
    },
    "button_purchase": "구매"
  },
  "tutorial": {
    "schedule_heading": "내 장보기 일정",
    "this_week_body": "Listox가 다음 장보기에 필요할 것으로 예측한 상품이 표시돼요.",
    "later_body": "아직 충분한 상품이 표시돼요. 보충할 때가 되면 「이번 주」로 이동해요.",
    "skip": "건너뛰기"
  },
  "welcome": {
    "title": "Listox에 오신 것을 환영해요",
    "onboarding_subtitle": "구매 습관을 학습하고 재고 보충 시기를 알려주는 스마트 장보기 목록",
    "bullet1_title": "필수품 추적",
    "bullet1_subtitle": "정기적으로 구매하는 것을 추가하고 한 곳에서 관리해요",
    "bullet2_title": "다시는 잊지 않아요",
    "bullet2_subtitle": "Listox가 구매 빈도를 학습하고 보충 시기를 예측해요",
    "bullet3_title": "언제나 장보기 준비 완료",
    "bullet3_subtitle": "외출 전 이번 주에 필요한 것을 확인하세요",
    "cta": "계속하기"
  },
  "select_groceries": {
    "heading": "필수품 선택",
    "description": "자주 구매하는 상품을 선택하세요. Listox가 필요한 시기를 추적할 거예요",
    "button_done": "완료",
    "button_selected_suffix": "/{max} 선택됨",
    "add": "추가",
    "limit_reached": "지금은 최대 {max}개까지 선택할 수 있어요"
  },
  "search_groceries": {
    "hint": "상품 검색..."
  },
  "weekdays_m": {
    "mon": "월",
    "tue": "화",
    "wed": "수",
    "thu": "목",
    "fri": "금",
    "sat": "토",
    "sun": "일"
  },
  "weekdays_s": {
    "mon": "월",
    "tue": "화",
    "wed": "수",
    "thu": "목",
    "fri": "금",
    "sat": "토",
    "sun": "일"
  },
  "notifications": {
    "mode_auto": "자동",
    "prompts": {
      "title_1": "곧 마트에 가나요? 🏪",
      "body_1": "목록을 확인해서 빠뜨리지 마세요",
      "title_2": "장보기 계획 중이신가요? 🛒",
      "body_2": "부족한 필수품을 확인해 보세요",
      "title_3": "다음 장보기 🛒",
      "body_3": "필요한 것을 빠르게 확인해 보세요",
      "title_4": "곧 장보러 가나요? 🛒",
      "body_4": "보충이 필요한 것을 확인해 보세요",
      "title_5": "마트에 가시나요? 🏪",
      "body_5": "목록이 준비됐어요! 확인해 보세요",
      "title_6": "하나도 빠뜨리지 마세요 🛒",
      "body_6": "장보기 목록이 준비됐어요",
      "title_7": "장보기를 계획 중인가요? 🏪",
      "body_7": "목록을 확인하고 알차게 다녀오세요",
      "title_8": "장보기 전에 🛍️",
      "body_8": "목록을 빠르게 확인하면 시간이 절약돼요",
      "title_9": "잠깐 마트에 들를 건가요? 🛒",
      "body_9": "필요한 상품이 이미 목록에 있어요",
      "title_10": "뭔가 떨어져 가나요? ⏰",
      "body_10": "장보기 목록이 최신 상태예요, 확인해 보세요"
    }
  },
  "add_custom_grocery": {
    "heading": "커스텀\n필수품 만들기",
    "input_name_hint": "이름을 알려주세요",
    "input_period_hint": "며칠마다 구매하나요?",
    "input_period_description": "대략적인 주기를 입력해 주세요. Listox가 구매 기록으로 학습할 거예요!",
    "button_create": "만들기"
  },
  "quick_add": {
    "tile_label": "빠른 추가",
    "dialog_title": "빠른 추가",
    "dialog_subtitle": "구매 확인 후 이 상품은 삭제돼요.",
    "hint": "이름 입력",
    "empty_state_hint": "딱 한 번만 필요한 것이 있나요? 아무 곳이나 탭해서 추가하세요"
  },
  "paywall": {
    "bullet1": "필수품을 무제한으로 관리",
    "bullet2": "완전한 필수품 목록 만들기",
    "bullet3": "장보기 전 항상 필요한 것 파악하기"
  },
  "smart_engine_banner": {
    "title": "스마트 프로필",
    "description": "Listox가 구매 습관을 기록하고 재고가 떨어지기 전에 목록을 제안해요."
  },
  "categories": {
    "food": "식품",
    "bathroom": "욕실",
    "kitchen": "주방",
    "cleaning": "청소",
    "health": "건강",
    "other": "기타"
  },
  "groceries": {
    "milk": "우유",
    "eggs": "계란",
    "bread": "빵",
    "cheese": "치즈",
    "yogurt": "요거트",
    "rice": "쌀",
    "pasta": "파스타",
    "coffee": "커피",
    "water": "생수",
    "chicken": "닭고기",
    "bananas": "바나나",
    "apples": "사과",
    "potatoes": "감자",
    "onions": "양파",
    "butter": "버터",
    "pepper": "후추",
    "garlic": "마늘",
    "carrot": "당근",
    "toilet_paper": "화장지",
    "shampoo": "샴푸",
    "toothpaste": "치약",
    "soap": "비누",
    "deodorant": "데오도란트",
    "toothbrush": "칫솔",
    "shaving_cream": "면도 크림",
    "dish_soap": "주방세제",
    "paper_towels": "키친타월",
    "salt": "소금",
    "olive_oil": "올리브오일",
    "sugar": "설탕",
    "flour": "밀가루",
    "foil": "알루미늄 호일",
    "baking_paper": "베이킹 페이퍼",
    "laundry_detergent": "세탁 세제",
    "trash_bags": "쓰레기봉투",
    "toilet_cleaner": "변기 세정제",
    "multi_surface_cleaner": "다목적 클리너",
    "glass_cleaner": "유리 클리너",
    "disinfectant_spray": "소독 스프레이",
    "wipes": "물티슈",
    "painkillers": "진통제",
    "vitamins": "비타민",
    "bandages": "밴드",
    "cough_syrup": "기침 시럽",
    "first_aid_kit": "응급처치 키트",
    "batteries": "건전지",
    "light_bulbs": "전구",
    "pet_food": "반려동물 사료",
    "printer_paper": "프린터 용지"
  }
};
static const Map<String,dynamic> _vi = {
  "appTitle": "Listox",
  "loading": {
    "just_a_moment": "Một chút thôi..."
  },
  "error": {
    "generic_titles": {
      "title1": "Ôi!",
      "title2": "Có gì đó sai rồi",
      "title3": "Ồ không!",
      "title4": "Hmm...",
      "title5": "Thôi được",
      "title6": "Bất ngờ quá!",
      "title7": "Lại nữa rồi!",
      "title8": "Trời ơi",
      "title9": "Lỗi",
      "title10": "Ôi chao",
      "title11": "Ối"
    }
  },
  "error_message": {
    "grocery_not_found": "Không tìm thấy sản phẩm",
    "grocery_storage": "Lưu dữ liệu thất bại",
    "common": {
      "unexpected": "Ôi! Đã xảy ra lỗi không mong muốn... Chúng tôi đang xử lý! 🚨"
    },
    "email": {
      "failed_to_open_support": "Ôi! Không thể mở ứng dụng email... Bạn có thể liên hệ chúng tôi tại {} 💌"
    },
    "preferences_unexpected": "Đã xảy ra sự cố không mong muốn"
  },
  "label": {
    "oops": "Ôi",
    "whoops": "Ôi!"
  },
  "snackbar": {
    "badConnection": {
      "title": "Không có kết nối",
      "description": "Kiểm tra kết nối internet của bạn"
    }
  },
  "common": {
    "cancel": "Hủy",
    "delete": "Xóa",
    "edit": "Sửa"
  },
  "account": {
    "title": "Tài khoản",
    "premium_status_premium": "Người dùng Premium",
    "premium_status_upgrade": "Premium",
    "premium_expiry": "Premium có hiệu lực đến {date}. Cảm ơn bạn đã ủng hộ <3",
    "premium_upgrade_cta": "Nâng cấp Premium để quản lý không giới hạn!",
    "notifications_enabled": "Bật",
    "notifications_disabled": "Tắt",
    "notifications_description": "Nhắc nhở nhanh trước khi đi mua sắm",
    "section_notifications": "Thông báo",
    "section_preferences": "Tùy chọn",
    "language_title": "Ngôn ngữ",
    "language_subtitle": "Ngôn ngữ giao diện",
    "haptics_title": "Haptic",
    "haptics_subtitle": "Phản hồi rung",
    "section_theme": "Giao diện",
    "theme_system": "Hệ thống",
    "theme_light": "Sáng",
    "theme_dark": "Tối",
    "section_colorations": "Màu sắc",
    "section_more": "Khác",
    "about_app": "Về ứng dụng",
    "privacy_terms": "Quyền riêng tư",
    "contact_support": "Liên hệ hỗ trợ"
  },
  "dialog": {
    "delete_grocery": {
      "title": "Xóa sản phẩm?",
      "subtitle": "Bạn có chắc muốn xóa \"{name}\"? Hành động này không thể hoàn tác ⛔️"
    },
    "notification_mode": {
      "title": "Lịch nhắc nhở",
      "auto_label": "Tự động",
      "auto_description": "Dự đoán lần mua sắm tiếp theo",
      "custom_days_label": "Ngày tùy chỉnh",
      "custom_days_description": "Chọn các ngày cụ thể"
    },
    "permission": {
      "notifications_title": "Quyền",
      "notifications_subtitle": "Để nhận thông báo, hãy cho phép ứng dụng này",
      "notifications_subtitle_settings": "Để nhận thông báo, hãy cho phép ứng dụng này trong cài đặt hệ thống"
    }
  },
  "edit_grocery": {
    "title": "Sửa sản phẩm\n\"{name}\"",
    "input_name_hint": "Tên là gì?",
    "input_period_hint": "Bao nhiêu ngày mua một lần?",
    "input_period_default": {
      "one": "Mỗi {} ngày",
      "other": "Mỗi {} ngày"
    },
    "input_period_description": "Nhập chu kỳ ước tính. Listox sẽ học từ lịch sử mua sắm của bạn!",
    "button_update": "Cập nhật"
  },
  "home": {
    "header_title": "Sản phẩm bạn có thể cần mua",
    "tab_this_week": "Tuần Này",
    "tab_later": "Sau",
    "purchase_confirmed": "Đã xác nhận mua hàng!",
    "purchase_confirmed_description": "Chúng tôi sẽ học từ cách dùng của bạn và dự đoán khi nào bạn cần những mặt hàng này lần nữa",
    "due_overdue": {
      "one": "Trễ {} ngày",
      "other": "Trễ {} ngày"
    },
    "due_today": "Đến hạn hôm nay",
    "due_tomorrow": "Đến hạn ngày mai",
    "due_in_days": {
      "one": "Trong {} ngày",
      "other": "Trong {} ngày"
    },
    "pre_list_this_week": "Có thể cần trong tuần này",
    "pre_list_later": "Có thể cần sau",
    "checked_section_title": "Sản phẩm đã chọn",
    "fully_stocked": "Kho hàng của bạn đủ rồi!",
    "premium_lock_cta": "Nâng cấp Premium để xem tất cả",
    "premium_upgrade_hint": "Mở khóa tất cả thực phẩm với Premium"
  },
  "purchase_banner": {
    "fully_stocked": "Tất cả đầy đủ! Nhấn \"Mua\" để xác nhận",
    "items_checked": {
      "one": "1 sản phẩm đã chọn! Nhấn \"Mua\" để xác nhận",
      "other": "{} sản phẩm đã chọn! Nhấn \"Mua\" để xác nhận"
    },
    "button_purchase": "Mua"
  },
  "tutorial": {
    "schedule_heading": "LỊCH MUA SẮM CỦA BẠN",
    "this_week_body": "Tại đây bạn sẽ thấy các sản phẩm Listox dự đoán bạn cần trong chuyến mua sắm tiếp theo.",
    "later_body": "Tại đây bạn sẽ thấy các sản phẩm còn đủ hàng. Chúng sẽ chuyển sang \"Tuần Này\" khi đến lúc bổ sung.",
    "skip": "BỎ QUA"
  },
  "welcome": {
    "title": "Chào mừng đến Listox",
    "onboarding_subtitle": "Danh sách mua sắm thông minh học những gì bạn mua và nhắc khi nào cần bổ sung",
    "bullet1_title": "Theo dõi nhu yếu phẩm",
    "bullet1_subtitle": "Thêm những thứ bạn mua thường xuyên và giữ tất cả ở một nơi",
    "bullet2_title": "Không bao giờ quên nữa",
    "bullet2_subtitle": "Listox học và dự đoán khi nào đến lúc bổ sung",
    "bullet3_title": "Luôn sẵn sàng mua sắm",
    "bullet3_subtitle": "Xem những gì bạn có thể cần tuần này trước khi ra ngoài",
    "cta": "Tiếp tục"
  },
  "select_groceries": {
    "heading": "Chọn Nhu Yếu Phẩm",
    "description": "Chọn những sản phẩm bạn hay mua. Listox sẽ theo dõi khi nào bạn cần",
    "button_done": "Xong",
    "button_selected_suffix": "/{max} đã chọn",
    "add": "Thêm",
    "limit_reached": "Hiện tại bạn có thể chọn tối đa {max} sản phẩm"
  },
  "search_groceries": {
    "hint": "Tìm kiếm sản phẩm..."
  },
  "weekdays_m": {
    "mon": "T2",
    "tue": "T3",
    "wed": "T4",
    "thu": "T5",
    "fri": "T6",
    "sat": "T7",
    "sun": "CN"
  },
  "weekdays_s": {
    "mon": "T2",
    "tue": "T3",
    "wed": "T4",
    "thu": "T5",
    "fri": "T6",
    "sat": "T7",
    "sun": "CN"
  },
  "notifications": {
    "mode_auto": "Tự động",
    "prompts": {
      "title_1": "Sắp đi siêu thị chưa? 🏪",
      "body_1": "Kiểm tra danh sách để không bỏ sót gì",
      "title_2": "Đi mua sắm không? 🛒",
      "body_2": "Xem những nhu yếu phẩm nào sắp hết",
      "title_3": "Chuyến mua sắm tiếp theo 🛒",
      "body_3": "Xem nhanh những gì bạn có thể cần",
      "title_4": "Sắp đi mua sắm chưa? 🛒",
      "body_4": "Kiểm tra những gì cần bổ sung",
      "title_5": "Đi cửa hàng không? 🏪",
      "body_5": "Danh sách của bạn đã sẵn sàng! Xem nhanh thôi",
      "title_6": "Đừng quên bất cứ thứ gì 🛒",
      "body_6": "Danh sách mua sắm của bạn đã sẵn sàng",
      "title_7": "Có kế hoạch đến cửa hàng không? 🏪",
      "body_7": "Kiểm tra danh sách và tận dụng chuyến đi",
      "title_8": "Trước khi đi mua sắm 🛍️",
      "body_8": "Xem nhanh danh sách có thể tiết kiệm thời gian",
      "title_9": "Ghé qua cửa hàng chút nhé? 🛒",
      "body_9": "Những nhu yếu phẩm bạn có thể cần đã có trong danh sách",
      "title_10": "Có gì sắp hết không? ⏰",
      "body_10": "Danh sách mua sắm của bạn đã được cập nhật, hãy xem qua"
    }
  },
  "add_custom_grocery": {
    "heading": "Tạo sản phẩm\ntùy chỉnh",
    "input_name_hint": "Tên là gì?",
    "input_period_hint": "Bao nhiêu ngày mua một lần?",
    "input_period_description": "Nhập chu kỳ ước tính. Listox sẽ học từ lịch sử mua sắm của bạn!",
    "button_create": "Tạo"
  },
  "quick_add": {
    "tile_label": "Thêm nhanh",
    "dialog_title": "Thêm nhanh",
    "dialog_subtitle": "Sản phẩm sẽ bị xóa sau khi xác nhận mua hàng.",
    "hint": "Nhập tên",
    "empty_state_hint": "Chỉ cần một lần? Nhấn vào bất kỳ đâu để thêm"
  },
  "paywall": {
    "bullet1": "Theo dõi nhu yếu phẩm không giới hạn",
    "bullet2": "Xây dựng danh sách nhu yếu phẩm hoàn chỉnh",
    "bullet3": "Luôn biết mình cần gì trước khi đi mua sắm"
  },
  "smart_engine_banner": {
    "title": "Hồ Sơ Thông Minh",
    "description": "Listox học những gì bạn mua và gợi ý danh sách mua sắm trước khi hết hàng."
  },
  "categories": {
    "food": "Thực phẩm",
    "bathroom": "Phòng tắm",
    "kitchen": "Nhà bếp",
    "cleaning": "Vệ sinh",
    "health": "Sức khỏe",
    "other": "Khác"
  },
  "groceries": {
    "milk": "Sữa",
    "eggs": "Trứng",
    "bread": "Bánh mì",
    "cheese": "Phô mai",
    "yogurt": "Sữa chua",
    "rice": "Gạo",
    "pasta": "Mì ống",
    "coffee": "Cà phê",
    "water": "Nước suối",
    "chicken": "Thịt gà",
    "bananas": "Chuối",
    "apples": "Táo",
    "potatoes": "Khoai tây",
    "onions": "Hành tây",
    "butter": "Bơ",
    "pepper": "Hạt tiêu",
    "garlic": "Tỏi",
    "carrot": "Cà rốt",
    "toilet_paper": "Giấy vệ sinh",
    "shampoo": "Dầu gội",
    "toothpaste": "Kem đánh răng",
    "soap": "Xà phòng",
    "deodorant": "Lăn khử mùi",
    "toothbrush": "Bàn chải đánh răng",
    "shaving_cream": "Kem cạo râu",
    "dish_soap": "Nước rửa bát",
    "paper_towels": "Khăn giấy bếp",
    "salt": "Muối",
    "olive_oil": "Dầu ô liu",
    "sugar": "Đường",
    "flour": "Bột mì",
    "foil": "Giấy bạc",
    "baking_paper": "Giấy nướng",
    "laundry_detergent": "Bột giặt",
    "trash_bags": "Túi rác",
    "toilet_cleaner": "Nước tẩy toilet",
    "multi_surface_cleaner": "Chất tẩy đa năng",
    "glass_cleaner": "Nước lau kính",
    "disinfectant_spray": "Xịt khử trùng",
    "wipes": "Khăn ướt",
    "painkillers": "Thuốc giảm đau",
    "vitamins": "Vitamin",
    "bandages": "Băng dán",
    "cough_syrup": "Siro ho",
    "first_aid_kit": "Hộp sơ cứu",
    "batteries": "Pin",
    "light_bulbs": "Bóng đèn",
    "pet_food": "Thức ăn thú cưng",
    "printer_paper": "Giấy in"
  }
};
static const Map<String,dynamic> _cs = {
  "appTitle": "Listox",
  "loading": {
    "just_a_moment": "Chvilku..."
  },
  "error": {
    "generic_titles": {
      "title1": "Jejda!",
      "title2": "Něco se pokazilo",
      "title3": "Ó ne!",
      "title4": "Hmm...",
      "title5": "No tak",
      "title6": "Nečekané!",
      "title7": "Zase!",
      "title8": "Ach",
      "title9": "Chyba",
      "title10": "No ne...",
      "title11": "Ups"
    }
  },
  "error_message": {
    "grocery_not_found": "Produkt nenalezen",
    "grocery_storage": "Uložení dat se nezdařilo",
    "common": {
      "unexpected": "Ups! Došlo k neočekávané chybě... Pracujeme na tom! 🚨"
    },
    "email": {
      "failed_to_open_support": "Ups! Nepodařilo se otevřít e-mailovou aplikaci... Kontaktujte nás na {} 💌"
    },
    "preferences_unexpected": "Došlo k neočekávanému problému"
  },
  "label": {
    "oops": "Ups",
    "whoops": "Ups!"
  },
  "snackbar": {
    "badConnection": {
      "title": "Žádné připojení",
      "description": "Zkontrolujte své internetové připojení"
    }
  },
  "common": {
    "cancel": "Zrušit",
    "delete": "Smazat",
    "edit": "Upravit"
  },
  "account": {
    "title": "Účet",
    "premium_status_premium": "Prémiový uživatel",
    "premium_status_upgrade": "Premium",
    "premium_expiry": "Premium aktivní do {date}. Děkujeme za podporu <3",
    "premium_upgrade_cta": "Přejdi na Premium pro neomezené správy!",
    "notifications_enabled": "Zapnuto",
    "notifications_disabled": "Vypnuto",
    "notifications_description": "Rychlá připomínka před nákupem",
    "section_notifications": "Oznámení",
    "section_preferences": "Předvolby",
    "language_title": "Jazyk",
    "language_subtitle": "Jazyk rozhraní",
    "haptics_title": "Haptika",
    "haptics_subtitle": "Vibrační zpětná vazba",
    "section_theme": "Motiv",
    "theme_system": "Systém",
    "theme_light": "Světlý",
    "theme_dark": "Tmavý",
    "section_colorations": "Barvy",
    "section_more": "Více",
    "about_app": "O aplikaci",
    "privacy_terms": "Soukromí",
    "contact_support": "Kontaktovat podporu"
  },
  "dialog": {
    "delete_grocery": {
      "title": "Smazat produkt?",
      "subtitle": "Opravdu chceš smazat \"{name}\"? Tuto akci nelze vrátit ⛔️"
    },
    "notification_mode": {
      "title": "Plán připomínek",
      "auto_label": "Automaticky",
      "auto_description": "Předpovídá další nákup",
      "custom_days_label": "Vlastní dny",
      "custom_days_description": "Vyber konkrétní dny"
    },
    "permission": {
      "notifications_title": "Oprávnění",
      "notifications_subtitle": "Pro příjem oznámení povol tuto aplikaci",
      "notifications_subtitle_settings": "Pro příjem oznámení povol tuto aplikaci v nastavení systému"
    }
  },
  "edit_grocery": {
    "title": "Upravit produkt\n\"{name}\"",
    "input_name_hint": "Jak se jmenuje?",
    "input_period_hint": "Každých kolik dní kupuješ?",
    "input_period_default": {
      "one": "Každý {} den",
      "few": "Každé {} dny",
      "other": "Každých {} dní"
    },
    "input_period_description": "Zadej přibližnou periodu. Listox se naučí z tvé historie nákupů!",
    "button_update": "Aktualizovat"
  },
  "home": {
    "header_title": "Produkty, které možná budeš potřebovat koupit",
    "tab_this_week": "Tento Týden",
    "tab_later": "Později",
    "purchase_confirmed": "Nákup potvrzen!",
    "purchase_confirmed_description": "Naučíme se vaše zvyky a předpovíme, kdy tyto položky budete znovu potřebovat",
    "due_overdue": {
      "one": "{} den po termínu",
      "few": "{} dny po termínu",
      "other": "{} dní po termínu"
    },
    "due_today": "Splatnost dnes",
    "due_tomorrow": "Splatnost zítra",
    "due_in_days": {
      "one": "Za {} den",
      "few": "Za {} dny",
      "other": "Za {} dní"
    },
    "pre_list_this_week": "Může být potřeba tento týden",
    "pre_list_later": "Může být potřeba později",
    "checked_section_title": "Označené produkty",
    "fully_stocked": "Tvoje zásoby jsou dostatečné!",
    "premium_lock_cta": "Přejdi na Premium a zobraz vše",
    "premium_upgrade_hint": "Odemkněte všechny položky s Premium"
  },
  "purchase_banner": {
    "fully_stocked": "Vše připraveno! Klepni na \"Koupit\" pro potvrzení",
    "items_checked": {
      "one": "1 produkt označen! Klepni na \"Koupit\" pro potvrzení",
      "few": "{} produkty označeny! Klepni na \"Koupit\" pro potvrzení",
      "other": "{} produktů označeno! Klepni na \"Koupit\" pro potvrzení"
    },
    "button_purchase": "Koupit"
  },
  "tutorial": {
    "schedule_heading": "TVŮJ NÁKUPNÍ PLÁN",
    "this_week_body": "Zde uvidíš produkty, které Listox předpovídá, že budeš potřebovat při příštím nákupu.",
    "later_body": "Zde uvidíš produkty, kterých máš ještě dostatek. Přesunou se do \"Tento Týden\" až bude čas doplnit zásoby.",
    "skip": "PŘESKOČIT"
  },
  "welcome": {
    "title": "Vítej v Listox",
    "onboarding_subtitle": "Tvůj chytrý nákupní seznam, který se učí co kupuješ a připomíná ti kdy doplnit zásoby",
    "bullet1_title": "Sleduj základní zboží",
    "bullet1_subtitle": "Přidej to, co pravidelně kupuješ a měj vše na jednom místě",
    "bullet2_title": "Nikdy víc nezapomeneš",
    "bullet2_subtitle": "Listox se učí a předpovídá, kdy je čas doplnit zásoby",
    "bullet3_title": "Vždy připraven na nákup",
    "bullet3_subtitle": "Zjisti, co možná budeš potřebovat tento týden před odchodem",
    "cta": "Pokračovat"
  },
  "select_groceries": {
    "heading": "Vyberte základní zboží",
    "description": "Vyberte produkty, které často kupujete. Listox bude sledovat, kdy je budete potřebovat",
    "button_done": "Hotovo",
    "button_selected_suffix": "/{max} vybráno",
    "add": "Přidat",
    "limit_reached": "Nyní můžeš vybrat maximálně {max} produktů"
  },
  "search_groceries": {
    "hint": "Hledat produkty..."
  },
  "weekdays_m": {
    "mon": "Po",
    "tue": "Út",
    "wed": "St",
    "thu": "Čt",
    "fri": "Pá",
    "sat": "So",
    "sun": "Ne"
  },
  "weekdays_s": {
    "mon": "Po",
    "tue": "Út",
    "wed": "St",
    "thu": "Čt",
    "fri": "Pá",
    "sat": "So",
    "sun": "Ne"
  },
  "notifications": {
    "mode_auto": "Automaticky",
    "prompts": {
      "title_1": "Brzy do supermarketu? 🏪",
      "body_1": "Zkontroluj seznam, ať ti nic neuteče",
      "title_2": "Jdeš nakupovat? 🛒",
      "body_2": "Podívej se, které základní věci docházejí",
      "title_3": "Příští nákup 🛒",
      "body_3": "Rychle se podívej, co možná budeš potřebovat",
      "title_4": "Brzy nakupovat? 🛒",
      "body_4": "Zkontroluj, co je potřeba doplnit",
      "title_5": "Jdeš do obchodu? 🏪",
      "body_5": "Tvůj seznam je připraven! Koukni na to",
      "title_6": "Nezapomeň na nic 🛒",
      "body_6": "Tvůj nákupní seznam je připraven",
      "title_7": "Plánuješ výlet do obchodu? 🏪",
      "body_7": "Zkontroluj seznam a vytěž maximum z výletu",
      "title_8": "Před nákupem 🛍️",
      "body_8": "Rychlý pohled na seznam může ušetřit čas",
      "title_9": "Zastavíš se v obchodě? 🛒",
      "body_9": "Základní věci, které možná potřebuješ, jsou již na tvém seznamu",
      "title_10": "Něco docházelo? ⏰",
      "body_10": "Tvůj nákupní seznam je aktualizován, koukni na to"
    }
  },
  "add_custom_grocery": {
    "heading": "Vytvořit vlastní\nprodukt",
    "input_name_hint": "Jak se jmenuje?",
    "input_period_hint": "Každých kolik dní kupuješ?",
    "input_period_description": "Zadej přibližnou periodu. Listox se naučí z tvé historie nákupů!",
    "button_create": "Vytvořit"
  },
  "quick_add": {
    "tile_label": "Rychlé přidání",
    "dialog_title": "Rychlé přidání",
    "dialog_subtitle": "Produkt bude odstraněn po potvrzení nákupu.",
    "hint": "Zadej název",
    "empty_state_hint": "Potřebuješ něco jen jednou? Klepni kamkoliv pro přidání"
  },
  "paywall": {
    "bullet1": "Sleduj neomezené množství produktů",
    "bullet2": "Sestav kompletní seznam základního zboží",
    "bullet3": "Vždy víš co potřebuješ před nákupem"
  },
  "smart_engine_banner": {
    "title": "Chytrý Profil",
    "description": "Listox se učí co kupuješ a navrhuje nákupní seznamy dřív než dojdou zásoby."
  },
  "categories": {
    "food": "Potraviny",
    "bathroom": "Koupelna",
    "kitchen": "Kuchyně",
    "cleaning": "Úklid",
    "health": "Zdraví",
    "other": "Ostatní"
  },
  "groceries": {
    "milk": "Mléko",
    "eggs": "Vejce",
    "bread": "Chléb",
    "cheese": "Sýr",
    "yogurt": "Jogurt",
    "rice": "Rýže",
    "pasta": "Těstoviny",
    "coffee": "Káva",
    "water": "Voda",
    "chicken": "Kuřecí maso",
    "bananas": "Banány",
    "apples": "Jablka",
    "potatoes": "Brambory",
    "onions": "Cibule",
    "butter": "Máslo",
    "pepper": "Pepř",
    "garlic": "Česnek",
    "carrot": "Mrkev",
    "toilet_paper": "Toaletní papír",
    "shampoo": "Šampon",
    "toothpaste": "Zubní pasta",
    "soap": "Mýdlo",
    "deodorant": "Deodorant",
    "toothbrush": "Zubní kartáček",
    "shaving_cream": "Krém na holení",
    "dish_soap": "Prostředek na nádobí",
    "paper_towels": "Papírové utěrky",
    "salt": "Sůl",
    "olive_oil": "Olivový olej",
    "sugar": "Cukr",
    "flour": "Mouka",
    "foil": "Alobal",
    "baking_paper": "Pečicí papír",
    "laundry_detergent": "Prací prášek",
    "trash_bags": "Pytle na odpadky",
    "toilet_cleaner": "Čistič toalety",
    "multi_surface_cleaner": "Víceúčelový čistič",
    "glass_cleaner": "Čistič oken",
    "disinfectant_spray": "Dezinfekční sprej",
    "wipes": "Vlhčené ubrousky",
    "painkillers": "Léky proti bolesti",
    "vitamins": "Vitamíny",
    "bandages": "Náplasti",
    "cough_syrup": "Sirup na kašel",
    "first_aid_kit": "Lékárnička",
    "batteries": "Baterie",
    "light_bulbs": "Žárovky",
    "pet_food": "Krmivo pro zvířata",
    "printer_paper": "Papír do tiskárny"
  }
};
static const Map<String,dynamic> _id = {
  "appTitle": "Listox",
  "loading": {
    "just_a_moment": "Sebentar..."
  },
  "error": {
    "generic_titles": {
      "title1": "Aduh!",
      "title2": "Ada yang salah",
      "title3": "Oh tidak!",
      "title4": "Hmm...",
      "title5": "Baiklah",
      "title6": "Tak terduga!",
      "title7": "Lagi!",
      "title8": "Astaga",
      "title9": "Kesalahan",
      "title10": "Waduh",
      "title11": "Ups"
    }
  },
  "error_message": {
    "grocery_not_found": "Barang tidak ditemukan",
    "grocery_storage": "Gagal menyimpan data",
    "common": {
      "unexpected": "Ups! Terjadi kesalahan tak terduga... Kami sedang menanganinya! 🚨"
    },
    "email": {
      "failed_to_open_support": "Ups! Tidak bisa membuka aplikasi email... Tapi kamu bisa menghubungi kami di {} 💌"
    },
    "preferences_unexpected": "Terjadi masalah yang tidak terduga"
  },
  "label": {
    "oops": "Aduh",
    "whoops": "Aduh!"
  },
  "snackbar": {
    "badConnection": {
      "title": "Tidak ada koneksi",
      "description": "Periksa koneksi internet kamu"
    }
  },
  "common": {
    "cancel": "Batal",
    "delete": "Hapus",
    "edit": "Edit"
  },
  "account": {
    "title": "Akun",
    "premium_status_premium": "Pengguna Premium",
    "premium_status_upgrade": "Premium",
    "premium_expiry": "Premium berlaku hingga {date}. Terima kasih atas dukunganmu <3",
    "premium_upgrade_cta": "Upgrade ke Premium untuk pengelolaan tanpa batas!",
    "notifications_enabled": "Aktif",
    "notifications_disabled": "Nonaktif",
    "notifications_description": "Pengingat cepat sebelum belanja",
    "section_notifications": "Notifikasi",
    "section_preferences": "Preferensi",
    "language_title": "Bahasa",
    "language_subtitle": "Bahasa antarmuka",
    "haptics_title": "Haptic",
    "haptics_subtitle": "Umpan balik getar",
    "section_theme": "Tema",
    "theme_system": "Sistem",
    "theme_light": "Terang",
    "theme_dark": "Gelap",
    "section_colorations": "Warna",
    "section_more": "Lainnya",
    "about_app": "Tentang aplikasi",
    "privacy_terms": "Privasi",
    "contact_support": "Hubungi dukungan"
  },
  "dialog": {
    "delete_grocery": {
      "title": "Hapus barang?",
      "subtitle": "Yakin mau hapus \"{name}\"? Tindakan ini tidak bisa dibatalkan ⛔️"
    },
    "notification_mode": {
      "title": "Jadwal Pengingat",
      "auto_label": "Otomatis",
      "auto_description": "Memprediksi belanja berikutnya",
      "custom_days_label": "Hari khusus",
      "custom_days_description": "Pilih hari tertentu"
    },
    "permission": {
      "notifications_title": "Izin",
      "notifications_subtitle": "Untuk menerima notifikasi, pastikan izinkan aplikasi ini",
      "notifications_subtitle_settings": "Untuk menerima notifikasi, izinkan aplikasi ini di pengaturan sistem"
    }
  },
  "edit_grocery": {
    "title": "Edit barang\n\"{name}\"",
    "input_name_hint": "Namanya apa?",
    "input_period_hint": "Berapa hari sekali kamu beli?",
    "input_period_default": {
      "one": "Setiap {} hari",
      "other": "Setiap {} hari"
    },
    "input_period_description": "Masukkan perkiraan periode. Listox akan belajar dari riwayat pembelianmu!",
    "button_update": "Perbarui"
  },
  "home": {
    "header_title": "Barang yang mungkin perlu kamu beli",
    "tab_this_week": "Minggu Ini",
    "tab_later": "Nanti",
    "purchase_confirmed": "Pembelian dikonfirmasi!",
    "purchase_confirmed_description": "Kami akan mempelajari penggunaan Anda dan memprediksi kapan Anda akan membutuhkan barang-barang ini lagi",
    "due_overdue": {
      "one": "Terlambat {} hari",
      "other": "Terlambat {} hari"
    },
    "due_today": "Jatuh tempo hari ini",
    "due_tomorrow": "Jatuh tempo besok",
    "due_in_days": {
      "one": "Dalam {} hari",
      "other": "Dalam {} hari"
    },
    "pre_list_this_week": "Mungkin dibutuhkan minggu ini",
    "pre_list_later": "Mungkin dibutuhkan nanti",
    "checked_section_title": "Barang dicentang",
    "fully_stocked": "Stokmu sudah cukup!",
    "premium_lock_cta": "Upgrade Premium untuk lihat semua",
    "premium_upgrade_hint": "Buka semua belanjaan Anda dengan Premium"
  },
  "purchase_banner": {
    "fully_stocked": "Semua lengkap! Ketuk \"Beli\" untuk konfirmasi",
    "items_checked": {
      "one": "1 barang dicentang! Ketuk \"Beli\" untuk konfirmasi",
      "other": "{} barang dicentang! Ketuk \"Beli\" untuk konfirmasi"
    },
    "button_purchase": "Beli"
  },
  "tutorial": {
    "schedule_heading": "JADWAL BELANJA KAMU",
    "this_week_body": "Di sini kamu akan melihat barang yang Listox prediksi kamu butuhkan di perjalanan belanja berikutnya.",
    "later_body": "Di sini kamu akan melihat barang yang stoknya masih cukup. Akan pindah ke \"Minggu Ini\" saat waktunya mengisi ulang.",
    "skip": "LEWATI"
  },
  "welcome": {
    "title": "Selamat datang di Listox",
    "onboarding_subtitle": "Daftar belanja cerdasmu yang belajar apa yang kamu beli dan mengingatkan kapan harus mengisi ulang",
    "bullet1_title": "Lacak kebutuhanmu",
    "bullet1_subtitle": "Tambahkan yang sering kamu beli dan simpan semuanya di satu tempat",
    "bullet2_title": "Jangan pernah lupa lagi",
    "bullet2_subtitle": "Listox belajar dan memprediksi kapan waktunya mengisi ulang",
    "bullet3_title": "Selalu siap belanja",
    "bullet3_subtitle": "Lihat apa yang mungkin kamu butuhkan minggu ini sebelum keluar",
    "cta": "Lanjutkan"
  },
  "select_groceries": {
    "heading": "Pilih Kebutuhan",
    "description": "Pilih barang yang sering kamu beli. Listox akan melacak kapan kamu membutuhkannya",
    "button_done": "Selesai",
    "button_selected_suffix": "/{max} dipilih",
    "add": "Tambah",
    "limit_reached": "Untuk sekarang kamu bisa pilih hingga {max} barang"
  },
  "search_groceries": {
    "hint": "Cari barang..."
  },
  "weekdays_m": {
    "mon": "Sen",
    "tue": "Sel",
    "wed": "Rab",
    "thu": "Kam",
    "fri": "Jum",
    "sat": "Sab",
    "sun": "Min"
  },
  "weekdays_s": {
    "mon": "Sn",
    "tue": "Sl",
    "wed": "Rb",
    "thu": "Km",
    "fri": "Jm",
    "sat": "Sb",
    "sun": "Mg"
  },
  "notifications": {
    "mode_auto": "Otomatis",
    "prompts": {
      "title_1": "Mau ke supermarket? 🏪",
      "body_1": "Periksa daftarmu agar tidak ketinggalan apa pun",
      "title_2": "Mau belanja? 🛒",
      "body_2": "Lihat kebutuhan apa yang hampir habis",
      "title_3": "Belanja berikutnya 🛒",
      "body_3": "Sekilas lihat apa yang mungkin kamu butuhkan",
      "title_4": "Mau belanja segera? 🛒",
      "body_4": "Periksa apa yang perlu diisi ulang",
      "title_5": "Mau ke toko? 🏪",
      "body_5": "Daftar belanjaanmu sudah siap! Cek dulu",
      "title_6": "Jangan lupa apa pun 🛒",
      "body_6": "Daftar belanjaanmu sudah siap",
      "title_7": "Merencanakan ke toko? 🏪",
      "body_7": "Cek daftarmu dan manfaatkan perjalanan",
      "title_8": "Sebelum belanja 🛍️",
      "body_8": "Sekilas cek daftar bisa menghemat waktumu",
      "title_9": "Mampir ke toko sebentar? 🛒",
      "body_9": "Kebutuhan yang mungkin diperlukan sudah ada di daftarmu",
      "title_10": "Ada yang hampir habis? ⏰",
      "body_10": "Daftar belanjaanmu sudah diperbarui, cek yuk"
    }
  },
  "add_custom_grocery": {
    "heading": "Buat kebutuhan\nkhusus",
    "input_name_hint": "Namanya apa?",
    "input_period_hint": "Berapa hari sekali kamu beli?",
    "input_period_description": "Masukkan perkiraan periode. Listox akan belajar dari riwayat pembelianmu!",
    "button_create": "Buat"
  },
  "quick_add": {
    "tile_label": "Tambah cepat",
    "dialog_title": "Tambah cepat",
    "dialog_subtitle": "Barang akan dihapus setelah pembelian dikonfirmasi.",
    "hint": "Masukkan nama",
    "empty_state_hint": "Butuh sesuatu sekali saja? Ketuk di mana saja untuk menambahkannya"
  },
  "paywall": {
    "bullet1": "Lacak kebutuhan tanpa batas",
    "bullet2": "Bangun daftar kebutuhanmu yang lengkap",
    "bullet3": "Selalu tahu apa yang dibutuhkan sebelum belanja"
  },
  "smart_engine_banner": {
    "title": "Profil Cerdas",
    "description": "Listox mempelajari apa yang kamu beli dan menyarankan daftar belanja sebelum stok habis."
  },
  "categories": {
    "food": "Makanan",
    "bathroom": "Kamar Mandi",
    "kitchen": "Dapur",
    "cleaning": "Kebersihan",
    "health": "Kesehatan",
    "other": "Lainnya"
  },
  "groceries": {
    "milk": "Susu",
    "eggs": "Telur",
    "bread": "Roti",
    "cheese": "Keju",
    "yogurt": "Yogurt",
    "rice": "Beras",
    "pasta": "Pasta",
    "coffee": "Kopi",
    "water": "Air mineral",
    "chicken": "Ayam",
    "bananas": "Pisang",
    "apples": "Apel",
    "potatoes": "Kentang",
    "onions": "Bawang",
    "butter": "Mentega",
    "pepper": "Lada",
    "garlic": "Bawang putih",
    "carrot": "Wortel",
    "toilet_paper": "Tisu toilet",
    "shampoo": "Sampo",
    "toothpaste": "Pasta gigi",
    "soap": "Sabun",
    "deodorant": "Deodoran",
    "toothbrush": "Sikat gigi",
    "shaving_cream": "Krim cukur",
    "dish_soap": "Sabun cuci piring",
    "paper_towels": "Tisu dapur",
    "salt": "Garam",
    "olive_oil": "Minyak zaitun",
    "sugar": "Gula",
    "flour": "Tepung",
    "foil": "Aluminium foil",
    "baking_paper": "Kertas roti",
    "laundry_detergent": "Deterjen pakaian",
    "trash_bags": "Kantong sampah",
    "toilet_cleaner": "Pembersih toilet",
    "multi_surface_cleaner": "Pembersih serbaguna",
    "glass_cleaner": "Pembersih kaca",
    "disinfectant_spray": "Semprotan disinfektan",
    "wipes": "Tisu basah",
    "painkillers": "Obat pereda nyeri",
    "vitamins": "Vitamin",
    "bandages": "Plester",
    "cough_syrup": "Sirup batuk",
    "first_aid_kit": "Kotak P3K",
    "batteries": "Baterai",
    "light_bulbs": "Lampu",
    "pet_food": "Makanan hewan peliharaan",
    "printer_paper": "Kertas printer"
  }
};
static const Map<String,dynamic> _th = {
  "appTitle": "Listox",
  "loading": {
    "just_a_moment": "รอสักครู่..."
  },
  "error": {
    "generic_titles": {
      "title1": "โอ้โห!",
      "title2": "มีบางอย่างผิดพลาด",
      "title3": "โอ้ไม่!",
      "title4": "อืม...",
      "title5": "โอเค",
      "title6": "ไม่คาดคิด!",
      "title7": "อีกครั้งแล้ว!",
      "title8": "โอ้",
      "title9": "ข้อผิดพลาด",
      "title10": "อ๊ะ",
      "title11": "อุ๊ปส์"
    }
  },
  "error_message": {
    "grocery_not_found": "ไม่พบสินค้า",
    "grocery_storage": "บันทึกข้อมูลล้มเหลว",
    "common": {
      "unexpected": "อุ๊ปส์! เกิดข้อผิดพลาดที่ไม่คาดคิด... กำลังแก้ไข! 🚨"
    },
    "email": {
      "failed_to_open_support": "อุ๊ปส์! ไม่สามารถเปิดแอปอีเมลได้... ติดต่อเราได้ที่ {} 💌"
    },
    "preferences_unexpected": "เกิดปัญหาที่ไม่คาดคิด"
  },
  "label": {
    "oops": "อุ๊ปส์",
    "whoops": "อุ๊ปส์!"
  },
  "snackbar": {
    "badConnection": {
      "title": "ไม่มีการเชื่อมต่อ",
      "description": "ตรวจสอบการเชื่อมต่ออินเทอร์เน็ตของคุณ"
    }
  },
  "common": {
    "cancel": "ยกเลิก",
    "delete": "ลบ",
    "edit": "แก้ไข"
  },
  "account": {
    "title": "บัญชี",
    "premium_status_premium": "ผู้ใช้ Premium",
    "premium_status_upgrade": "Premium",
    "premium_expiry": "Premium มีผลถึง {date} ขอบคุณสำหรับการสนับสนุน <3",
    "premium_upgrade_cta": "อัปเกรดเป็น Premium เพื่อจัดการไม่จำกัด!",
    "notifications_enabled": "เปิด",
    "notifications_disabled": "ปิด",
    "notifications_description": "การแจ้งเตือนก่อนออกไปซื้อของ",
    "section_notifications": "การแจ้งเตือน",
    "section_preferences": "การตั้งค่า",
    "language_title": "ภาษา",
    "language_subtitle": "ภาษาของแอป",
    "haptics_title": "Haptic",
    "haptics_subtitle": "การสั่นสะเทือน",
    "section_theme": "ธีม",
    "theme_system": "ระบบ",
    "theme_light": "สว่าง",
    "theme_dark": "มืด",
    "section_colorations": "สี",
    "section_more": "เพิ่มเติม",
    "about_app": "เกี่ยวกับแอป",
    "privacy_terms": "ความเป็นส่วนตัว",
    "contact_support": "ติดต่อฝ่ายสนับสนุน"
  },
  "dialog": {
    "delete_grocery": {
      "title": "ลบสินค้า?",
      "subtitle": "แน่ใจว่าต้องการลบ \"{name}\"? การดำเนินการนี้ไม่สามารถยกเลิกได้ ⛔️"
    },
    "notification_mode": {
      "title": "กำหนดการแจ้งเตือน",
      "auto_label": "อัตโนมัติ",
      "auto_description": "คาดการณ์การซื้อครั้งถัดไป",
      "custom_days_label": "วันที่กำหนดเอง",
      "custom_days_description": "เลือกวันที่ต้องการ"
    },
    "permission": {
      "notifications_title": "สิทธิ์",
      "notifications_subtitle": "เพื่อรับการแจ้งเตือน กรุณาอนุญาตแอปนี้",
      "notifications_subtitle_settings": "เพื่อรับการแจ้งเตือน กรุณาอนุญาตแอปนี้ในการตั้งค่าระบบ"
    }
  },
  "edit_grocery": {
    "title": "แก้ไขสินค้า\n\"{name}\"",
    "input_name_hint": "ชื่อคืออะไร?",
    "input_period_hint": "ซื้อทุกกี่วัน?",
    "input_period_default": {
      "one": "ทุก {} วัน",
      "other": "ทุก {} วัน"
    },
    "input_period_description": "ใส่ระยะเวลาโดยประมาณ Listox จะเรียนรู้จากประวัติการซื้อของคุณ!",
    "button_update": "อัปเดต"
  },
  "home": {
    "header_title": "สินค้าที่คุณอาจต้องซื้อ",
    "tab_this_week": "สัปดาห์นี้",
    "tab_later": "ภายหลัง",
    "purchase_confirmed": "ยืนยันการซื้อแล้ว!",
    "purchase_confirmed_description": "เราจะเรียนรู้การใช้งานของคุณและคาดการณ์ว่าคุณจะต้องการสินค้าเหล่านี้อีกเมื่อใด",
    "due_overdue": {
      "one": "เลย {} วัน",
      "other": "เลย {} วัน"
    },
    "due_today": "ครบกำหนดวันนี้",
    "due_tomorrow": "ครบกำหนดพรุ่งนี้",
    "due_in_days": {
      "one": "อีก {} วัน",
      "other": "อีก {} วัน"
    },
    "pre_list_this_week": "อาจต้องใช้สัปดาห์นี้",
    "pre_list_later": "อาจต้องใช้ภายหลัง",
    "checked_section_title": "สินค้าที่เลือกแล้ว",
    "fully_stocked": "สต็อกของคุณเพียงพอแล้ว!",
    "premium_lock_cta": "อัปเกรด Premium เพื่อดูทั้งหมด",
    "premium_upgrade_hint": "ปลดล็อกรายการทั้งหมดด้วย Premium"
  },
  "purchase_banner": {
    "fully_stocked": "ครบทุกอย่าง! แตะ \"ซื้อ\" เพื่อยืนยัน",
    "items_checked": {
      "one": "เลือก 1 รายการ! แตะ \"ซื้อ\" เพื่อยืนยัน",
      "other": "เลือก {} รายการ! แตะ \"ซื้อ\" เพื่อยืนยัน"
    },
    "button_purchase": "ซื้อ"
  },
  "tutorial": {
    "schedule_heading": "ตารางซื้อของของคุณ",
    "this_week_body": "ที่นี่คุณจะเห็นสินค้าที่ Listox คาดการณ์ว่าคุณต้องการในการซื้อของครั้งถัดไป",
    "later_body": "ที่นี่คุณจะเห็นสินค้าที่ยังมีเพียงพอ จะย้ายไป \"สัปดาห์นี้\" เมื่อถึงเวลาเติม",
    "skip": "ข้าม"
  },
  "welcome": {
    "title": "ยินดีต้อนรับสู่ Listox",
    "onboarding_subtitle": "รายการซื้อของอัจฉริยะที่เรียนรู้สิ่งที่คุณซื้อและแจ้งเมื่อต้องเติมสต็อก",
    "bullet1_title": "ติดตามสิ่งจำเป็น",
    "bullet1_subtitle": "เพิ่มสิ่งที่คุณซื้อเป็นประจำและเก็บทุกอย่างไว้ที่เดียว",
    "bullet2_title": "ไม่ลืมอีกต่อไป",
    "bullet2_subtitle": "Listox เรียนรู้และคาดการณ์ว่าเมื่อไหร่ต้องเติมสต็อก",
    "bullet3_title": "พร้อมซื้อของเสมอ",
    "bullet3_subtitle": "ดูสิ่งที่คุณอาจต้องใช้สัปดาห์นี้ก่อนออกไป",
    "cta": "ต่อไป"
  },
  "select_groceries": {
    "heading": "เลือกสิ่งจำเป็น",
    "description": "เลือกสินค้าที่คุณซื้อบ่อย Listox จะติดตามว่าเมื่อไหร่คุณต้องการ",
    "button_done": "เสร็จ",
    "button_selected_suffix": "/{max} ที่เลือก",
    "add": "เพิ่ม",
    "limit_reached": "ตอนนี้คุณเลือกได้สูงสุด {max} รายการ"
  },
  "search_groceries": {
    "hint": "ค้นหาสินค้า..."
  },
  "weekdays_m": {
    "mon": "จ",
    "tue": "อ",
    "wed": "พ",
    "thu": "พฤ",
    "fri": "ศ",
    "sat": "ส",
    "sun": "อา"
  },
  "weekdays_s": {
    "mon": "จ",
    "tue": "อ",
    "wed": "พ",
    "thu": "พฤ",
    "fri": "ศ",
    "sat": "ส",
    "sun": "อา"
  },
  "notifications": {
    "mode_auto": "อัตโนมัติ",
    "prompts": {
      "title_1": "กำลังจะไปซูเปอร์มาร์เก็ตใช่ไหม? 🏪",
      "body_1": "เช็กรายการเพื่อไม่ให้ลืมอะไร",
      "title_2": "จะไปซื้อของใช่ไหม? 🛒",
      "body_2": "ดูว่าสิ่งจำเป็นอะไรใกล้หมดบ้าง",
      "title_3": "การซื้อของครั้งถัดไป 🛒",
      "body_3": "ดูอย่างรวดเร็วว่าคุณอาจต้องการอะไร",
      "title_4": "จะไปซื้อของเร็วๆ นี้ใช่ไหม? 🛒",
      "body_4": "เช็กว่าอะไรต้องเติมบ้าง",
      "title_5": "กำลังไปร้านค้าใช่ไหม? 🏪",
      "body_5": "รายการของคุณพร้อมแล้ว! ดูเลย",
      "title_6": "อย่าลืมอะไรเลย 🛒",
      "body_6": "รายการซื้อของของคุณพร้อมแล้ว",
      "title_7": "วางแผนจะไปร้านค้าใช่ไหม? 🏪",
      "body_7": "เช็กรายการและใช้ประโยชน์จากการเดินทาง",
      "title_8": "ก่อนไปซื้อของ 🛍️",
      "body_8": "ดูรายการอย่างรวดเร็วอาจช่วยประหยัดเวลา",
      "title_9": "แวะร้านค้าได้เลย? 🛒",
      "body_9": "สิ่งจำเป็นที่คุณอาจต้องการมีอยู่ในรายการแล้ว",
      "title_10": "มีอะไรใกล้หมดไหม? ⏰",
      "body_10": "รายการซื้อของของคุณอัปเดตแล้ว ดูเลย"
    }
  },
  "add_custom_grocery": {
    "heading": "สร้างสินค้า\nกำหนดเอง",
    "input_name_hint": "ชื่อคืออะไร?",
    "input_period_hint": "ซื้อทุกกี่วัน?",
    "input_period_description": "ใส่ระยะเวลาโดยประมาณ Listox จะเรียนรู้จากประวัติการซื้อของคุณ!",
    "button_create": "สร้าง"
  },
  "quick_add": {
    "tile_label": "เพิ่มด่วน",
    "dialog_title": "เพิ่มด่วน",
    "dialog_subtitle": "สินค้าจะถูกลบหลังจากยืนยันการซื้อ",
    "hint": "ใส่ชื่อ",
    "empty_state_hint": "ต้องการบางอย่างแค่ครั้งเดียว? แตะที่ไหนก็ได้เพื่อเพิ่ม"
  },
  "paywall": {
    "bullet1": "ติดตามสิ่งจำเป็นไม่จำกัด",
    "bullet2": "สร้างรายการสิ่งจำเป็นที่สมบูรณ์",
    "bullet3": "รู้เสมอว่าต้องการอะไรก่อนซื้อของ"
  },
  "smart_engine_banner": {
    "title": "โปรไฟล์อัจฉริยะ",
    "description": "Listox เรียนรู้สิ่งที่คุณซื้อและแนะนำรายการซื้อของก่อนที่สต็อกจะหมด"
  },
  "categories": {
    "food": "อาหาร",
    "bathroom": "ห้องน้ำ",
    "kitchen": "ครัว",
    "cleaning": "ทำความสะอาด",
    "health": "สุขภาพ",
    "other": "อื่นๆ"
  },
  "groceries": {
    "milk": "นม",
    "eggs": "ไข่",
    "bread": "ขนมปัง",
    "cheese": "ชีส",
    "yogurt": "โยเกิร์ต",
    "rice": "ข้าว",
    "pasta": "พาสต้า",
    "coffee": "กาแฟ",
    "water": "น้ำดื่ม",
    "chicken": "ไก่",
    "bananas": "กล้วย",
    "apples": "แอปเปิ้ล",
    "potatoes": "มันฝรั่ง",
    "onions": "หัวหอม",
    "butter": "เนย",
    "pepper": "พริกไทย",
    "garlic": "กระเทียม",
    "carrot": "แครอท",
    "toilet_paper": "กระดาษชำระ",
    "shampoo": "แชมพู",
    "toothpaste": "ยาสีฟัน",
    "soap": "สบู่",
    "deodorant": "ระงับกลิ่นกาย",
    "toothbrush": "แปรงสีฟัน",
    "shaving_cream": "ครีมโกนหนวด",
    "dish_soap": "น้ำยาล้างจาน",
    "paper_towels": "กระดาษทิชชู",
    "salt": "เกลือ",
    "olive_oil": "น้ำมันมะกอก",
    "sugar": "น้ำตาล",
    "flour": "แป้ง",
    "foil": "กระดาษฟอยล์",
    "baking_paper": "กระดาษรองอบ",
    "laundry_detergent": "ผงซักฟอก",
    "trash_bags": "ถุงขยะ",
    "toilet_cleaner": "น้ำยาล้างห้องน้ำ",
    "multi_surface_cleaner": "น้ำยาทำความสะอาดอเนกประสงค์",
    "glass_cleaner": "น้ำยาเช็ดกระจก",
    "disinfectant_spray": "สเปรย์ฆ่าเชื้อ",
    "wipes": "ผ้าเปียก",
    "painkillers": "ยาแก้ปวด",
    "vitamins": "วิตามิน",
    "bandages": "พลาสเตอร์",
    "cough_syrup": "ยาแก้ไอ",
    "first_aid_kit": "กล่องปฐมพยาบาล",
    "batteries": "ถ่านไฟฉาย",
    "light_bulbs": "หลอดไฟ",
    "pet_food": "อาหารสัตว์เลี้ยง",
    "printer_paper": "กระดาษพิมพ์"
  }
};
static const Map<String,dynamic> _sv = {
  "appTitle": "Listox",
  "loading": {
    "just_a_moment": "Ett ögonblick..."
  },
  "error": {
    "generic_titles": {
      "title1": "Hoppsan!",
      "title2": "Något gick fel",
      "title3": "Åh nej!",
      "title4": "Hmm...",
      "title5": "Okej då",
      "title6": "Oväntat!",
      "title7": "Igen!",
      "title8": "Oj",
      "title9": "Fel",
      "title10": "Oj då",
      "title11": "Hoppsan"
    }
  },
  "error_message": {
    "grocery_not_found": "Produkten hittades inte",
    "grocery_storage": "Det gick inte att spara data",
    "common": {
      "unexpected": "Hoppsan! Ett oväntat fel inträffade... Vi jobbar på det! 🚨"
    },
    "email": {
      "failed_to_open_support": "Hoppsan! Det gick inte att öppna e-postappen... Du kan nå oss på {} 💌"
    },
    "preferences_unexpected": "Ett oväntat problem inträffade"
  },
  "label": {
    "oops": "Hoppsan",
    "whoops": "Hoppsan!"
  },
  "snackbar": {
    "badConnection": {
      "title": "Ingen anslutning",
      "description": "Kontrollera din internetanslutning"
    }
  },
  "common": {
    "cancel": "Avbryt",
    "delete": "Ta bort",
    "edit": "Redigera"
  },
  "account": {
    "title": "Konto",
    "premium_status_premium": "Premium-användare",
    "premium_status_upgrade": "Premium",
    "premium_expiry": "Premium aktivt till {date}. Tack för ditt stöd <3",
    "premium_upgrade_cta": "Uppgradera till Premium för obegränsad hantering!",
    "notifications_enabled": "På",
    "notifications_disabled": "Av",
    "notifications_description": "En snabb påminnelse innan du handlar",
    "section_notifications": "Aviseringar",
    "section_preferences": "Inställningar",
    "language_title": "Språk",
    "language_subtitle": "Gränssnittsspråk",
    "haptics_title": "Haptics",
    "haptics_subtitle": "Vibrationsfeedback",
    "section_theme": "Tema",
    "theme_system": "System",
    "theme_light": "Ljust",
    "theme_dark": "Mörkt",
    "section_colorations": "Färger",
    "section_more": "Mer",
    "about_app": "Om appen",
    "privacy_terms": "Integritet",
    "contact_support": "Kontakta support"
  },
  "dialog": {
    "delete_grocery": {
      "title": "Ta bort produkt?",
      "subtitle": "Är du säker på att du vill ta bort \"{name}\"? Den här åtgärden kan inte ångras ⛔️"
    },
    "notification_mode": {
      "title": "Påminnelseschema",
      "auto_label": "Automatisk",
      "auto_description": "Förutspår nästa köp",
      "custom_days_label": "Anpassade dagar",
      "custom_days_description": "Välj specifika dagar"
    },
    "permission": {
      "notifications_title": "Behörighet",
      "notifications_subtitle": "Tillåt den här appen för att ta emot aviseringar",
      "notifications_subtitle_settings": "Tillåt den här appen i systeminställningarna för att ta emot aviseringar"
    }
  },
  "edit_grocery": {
    "title": "Redigera produkt\n\"{name}\"",
    "input_name_hint": "Vad heter den?",
    "input_period_hint": "Var hur många dagar köper du den?",
    "input_period_default": {
      "one": "Var {} dag",
      "other": "Var {} dag"
    },
    "input_period_description": "Ange en ungefärlig period. Listox lär sig från din inköpshistorik!",
    "button_update": "Uppdatera"
  },
  "home": {
    "header_title": "Produkter du kanske behöver köpa",
    "tab_this_week": "Den här veckan",
    "tab_later": "Senare",
    "purchase_confirmed": "Köp bekräftat!",
    "purchase_confirmed_description": "Vi lär oss din användning och förutsäger när du behöver dessa varor igen",
    "due_overdue": {
      "one": "{} dag försenad",
      "other": "{} dagar försenad"
    },
    "due_today": "Förfaller idag",
    "due_tomorrow": "Förfaller imorgon",
    "due_in_days": {
      "one": "Om {} dag",
      "other": "Om {} dagar"
    },
    "pre_list_this_week": "Kanske behövs den här veckan",
    "pre_list_later": "Kanske behövs senare",
    "checked_section_title": "Ibockade produkter",
    "fully_stocked": "Ditt lager räcker!",
    "premium_lock_cta": "Uppgradera till Premium för att se allt",
    "premium_upgrade_hint": "Lås upp alla dina varor med Premium"
  },
  "purchase_banner": {
    "fully_stocked": "Allt klart! Tryck på \"Köp\" för att bekräfta",
    "items_checked": {
      "one": "1 produkt ibockad! Tryck på \"Köp\" för att bekräfta",
      "other": "{} produkter ibockade! Tryck på \"Köp\" för att bekräfta"
    },
    "button_purchase": "Köp"
  },
  "tutorial": {
    "schedule_heading": "DITT INKÖPSSCHEMA",
    "this_week_body": "Här ser du produkterna som Listox förutspår att du behöver under nästa shoppingtur.",
    "later_body": "Här ser du produkter du fortfarande har tillräckligt av. De flyttas till \"Den här veckan\" när det är dags att fylla på.",
    "skip": "HOPPA ÖVER"
  },
  "welcome": {
    "title": "Välkommen till Listox",
    "onboarding_subtitle": "Din smarta inköpslista som lär sig vad du köper och påminner dig när du behöver fylla på",
    "bullet1_title": "Håll koll på det viktiga",
    "bullet1_subtitle": "Lägg till det du köper regelbundet och ha allt på ett ställe",
    "bullet2_title": "Glöm aldrig mer",
    "bullet2_subtitle": "Listox lär sig och förutspår när det är dags att fylla på",
    "bullet3_title": "Alltid redo att handla",
    "bullet3_subtitle": "Se vad du kanske behöver den här veckan innan du går ut",
    "cta": "Fortsätt"
  },
  "select_groceries": {
    "heading": "Välj det viktiga",
    "description": "Välj produkter du köper ofta. Listox håller koll på när du behöver dem",
    "button_done": "Klar",
    "button_selected_suffix": "/{max} valda",
    "add": "Lägg till",
    "limit_reached": "Just nu kan du välja upp till {max} produkter"
  },
  "search_groceries": {
    "hint": "Sök produkter..."
  },
  "weekdays_m": {
    "mon": "Mån",
    "tue": "Tis",
    "wed": "Ons",
    "thu": "Tor",
    "fri": "Fre",
    "sat": "Lör",
    "sun": "Sön"
  },
  "weekdays_s": {
    "mon": "M",
    "tue": "T",
    "wed": "O",
    "thu": "T",
    "fri": "F",
    "sat": "L",
    "sun": "S"
  },
  "notifications": {
    "mode_auto": "Automatisk",
    "prompts": {
      "title_1": "Ska du snart till mataffären? 🏪",
      "body_1": "Kolla listan så du inte missar något",
      "title_2": "Ska du handla mat? 🛒",
      "body_2": "Se vilka basprodukter som håller på att ta slut",
      "title_3": "Nästa shoppingrunda 🛒",
      "body_3": "Ta en snabb titt på vad du kanske behöver",
      "title_4": "Snart dags att handla? 🛒",
      "body_4": "Kolla vad som behöver fyllas på",
      "title_5": "Ska du till butiken? 🏪",
      "body_5": "Din lista är klar! Kolla snabbt",
      "title_6": "Glöm ingenting 🛒",
      "body_6": "Din inköpslista är klar",
      "title_7": "Planerar du ett butiksbesök? 🏪",
      "body_7": "Kolla listan och ta vara på resan",
      "title_8": "Innan du handlar 🛍️",
      "body_8": "En snabb titt på listan kan spara tid",
      "title_9": "Ska du svänga förbi butiken? 🛒",
      "body_9": "Basprodukterna du kanske behöver finns redan i din lista",
      "title_10": "Håller något på att ta slut? ⏰",
      "body_10": "Din inköpslista är uppdaterad, ta en titt"
    }
  },
  "add_custom_grocery": {
    "heading": "Skapa en egen\nprodukt",
    "input_name_hint": "Vad heter den?",
    "input_period_hint": "Var hur många dagar köper du den?",
    "input_period_description": "Ange en ungefärlig period. Listox lär sig från din inköpshistorik!",
    "button_create": "Skapa"
  },
  "quick_add": {
    "tile_label": "Snabblägg till",
    "dialog_title": "Snabblägg till",
    "dialog_subtitle": "Produkten tas bort efter att köpet bekräftats.",
    "hint": "Skriv in ett namn",
    "empty_state_hint": "Behöver du något bara en gång? Tryck var som helst för att lägga till"
  },
  "paywall": {
    "bullet1": "Håll koll på obegränsat antal produkter",
    "bullet2": "Bygg din kompletta lista med basprodukter",
    "bullet3": "Vet alltid vad du behöver innan du handlar"
  },
  "smart_engine_banner": {
    "title": "Smart Profil",
    "description": "Listox lär sig vad du köper och föreslår inköpslistor innan du tar slut på lager."
  },
  "categories": {
    "food": "Mat",
    "bathroom": "Badrum",
    "kitchen": "Kök",
    "cleaning": "Städning",
    "health": "Hälsa",
    "other": "Övrigt"
  },
  "groceries": {
    "milk": "Mjölk",
    "eggs": "Ägg",
    "bread": "Bröd",
    "cheese": "Ost",
    "yogurt": "Yoghurt",
    "rice": "Ris",
    "pasta": "Pasta",
    "coffee": "Kaffe",
    "water": "Vatten",
    "chicken": "Kyckling",
    "bananas": "Bananer",
    "apples": "Äpplen",
    "potatoes": "Potatis",
    "onions": "Lök",
    "butter": "Smör",
    "pepper": "Peppar",
    "garlic": "Vitlök",
    "carrot": "Morot",
    "toilet_paper": "Toalettpapper",
    "shampoo": "Schampo",
    "toothpaste": "Tandkräm",
    "soap": "Tvål",
    "deodorant": "Deodorant",
    "toothbrush": "Tandborste",
    "shaving_cream": "Rakkräm",
    "dish_soap": "Diskmedel",
    "paper_towels": "Hushållspapper",
    "salt": "Salt",
    "olive_oil": "Olivolja",
    "sugar": "Socker",
    "flour": "Mjöl",
    "foil": "Aluminiumfolie",
    "baking_paper": "Bakplåtspapper",
    "laundry_detergent": "Tvättmedel",
    "trash_bags": "Soppåsar",
    "toilet_cleaner": "Toalettrengöring",
    "multi_surface_cleaner": "Allrengöringsmedel",
    "glass_cleaner": "Fönsterputs",
    "disinfectant_spray": "Desinfektionsspray",
    "wipes": "Våtservetter",
    "painkillers": "Smärtstillande",
    "vitamins": "Vitaminer",
    "bandages": "Plåster",
    "cough_syrup": "Hostmedicin",
    "first_aid_kit": "Första hjälpen-kit",
    "batteries": "Batterier",
    "light_bulbs": "Glödlampor",
    "pet_food": "Djurmat",
    "printer_paper": "Skrivarpapper"
  }
};
static const Map<String,dynamic> _es = {
  "appTitle": "Listox",
  "loading": {
    "just_a_moment": "Un momento..."
  },
  "error": {
    "generic_titles": {
      "title1": "¡Ups!",
      "title2": "Algo salió mal",
      "title3": "¡Oh no!",
      "title4": "Hmm...",
      "title5": "Vaya",
      "title6": "¡Inesperado!",
      "title7": "¡Otra vez!",
      "title8": "Ay",
      "title9": "Error",
      "title10": "Caramba",
      "title11": "¡Ups!"
    }
  },
  "error_message": {
    "grocery_not_found": "Artículo no encontrado",
    "grocery_storage": "No se pudieron guardar los datos",
    "common": {
      "unexpected": "¡Algo inesperado ocurrió... Ya lo estamos solucionando! 🚨"
    },
    "email": {
      "failed_to_open_support": "¡Ups! No pudimos abrir tu app de correo... Pero puedes escribirnos a {} 💌"
    },
    "preferences_unexpected": "Ocurrió un problema inesperado"
  },
  "label": {
    "oops": "Ups",
    "whoops": "¡Ups!"
  },
  "snackbar": {
    "badConnection": {
      "title": "Sin conexión",
      "description": "Comprueba tu conexión a internet"
    }
  },
  "common": {
    "cancel": "Cancelar",
    "delete": "Eliminar",
    "edit": "Editar"
  },
  "account": {
    "title": "Cuenta",
    "premium_status_premium": "Usuario Premium",
    "premium_status_upgrade": "Premium",
    "premium_expiry": "Premium válido hasta {date}. ¡Gracias por tu apoyo <3",
    "premium_upgrade_cta": "¡Hazte Premium para gestión ilimitada!",
    "notifications_enabled": "Activadas",
    "notifications_disabled": "Desactivadas",
    "notifications_description": "Un recordatorio antes de ir al supermercado",
    "section_notifications": "Notificaciones",
    "section_preferences": "Preferencias",
    "language_title": "Idioma",
    "language_subtitle": "Idioma de la interfaz",
    "haptics_title": "Háptica",
    "haptics_subtitle": "Respuesta de vibración",
    "section_theme": "Tema",
    "theme_system": "Sistema",
    "theme_light": "Claro",
    "theme_dark": "Oscuro",
    "section_colorations": "Colores",
    "section_more": "Más",
    "about_app": "Sobre la app",
    "privacy_terms": "Privacidad",
    "contact_support": "Contactar soporte"
  },
  "dialog": {
    "delete_grocery": {
      "title": "¿Eliminar artículo?",
      "subtitle": "¿Seguro que quieres eliminar \"{name}\"? Esta acción no se puede deshacer ⛔️"
    },
    "notification_mode": {
      "title": "Programa de recordatorios",
      "auto_label": "Auto",
      "auto_description": "Predice tu próxima compra",
      "custom_days_label": "Días propios",
      "custom_days_description": "Elige días de la semana"
    },
    "permission": {
      "notifications_title": "Permiso",
      "notifications_subtitle": "Activa las notificaciones para recibir recordatorios",
      "notifications_subtitle_settings": "Activa las notificaciones para esta app en los ajustes del sistema"
    }
  },
  "edit_grocery": {
    "title": "Editar artículo\n\"{name}\"",
    "input_name_hint": "¿Cómo se llama?",
    "input_period_hint": "¿Cada cuántos días lo compras?",
    "input_period_default": {
      "one": "Cada {} día",
      "other": "Cada {} días"
    },
    "input_period_description": "Introduce un período aproximado. ¡Listox aprenderá con cada compra!",
    "button_update": "Actualizar"
  },
  "home": {
    "header_title": "Lo que quizás necesitas comprar",
    "tab_this_week": "Esta semana",
    "tab_later": "Después",
    "purchase_confirmed": "¡Compra confirmada!",
    "purchase_confirmed_description": "Aprenderemos tu uso y predeciremos cuándo necesitarás estos artículos de nuevo",
    "due_overdue": {
      "one": "Vencido hace {} día",
      "other": "Vencido hace {} días"
    },
    "due_today": "Vence hoy",
    "due_tomorrow": "Vence mañana",
    "due_in_days": {
      "one": "En {} día",
      "other": "En {} días"
    },
    "pre_list_this_week": "Probable que lo necesites esta semana",
    "pre_list_later": "Probable que lo necesites después",
    "checked_section_title": "En el carrito",
    "fully_stocked": "¡Estás bien abastecido!",
    "premium_lock_cta": "Hazte Premium para ver todo",
    "premium_upgrade_hint": "Desbloquea todos tus artículos con Premium"
  },
  "purchase_banner": {
    "fully_stocked": "¡Todo listo! Pulsa \"Comprar\" para confirmar",
    "items_checked": {
      "one": "1 artículo marcado! Pulsa \"Comprar\" para confirmar",
      "other": "{} artículos marcados! Pulsa \"Comprar\" para confirmar"
    },
    "button_purchase": "Comprar"
  },
  "tutorial": {
    "schedule_heading": "TU PLAN DE COMPRAS",
    "this_week_body": "Aquí verás los artículos que Listox predice que necesitarás en tu próxima compra.",
    "later_body": "Aquí verás artículos de los que todavía tienes suficiente. Pasarán a \"Esta semana\" cuando sea hora de reponer.",
    "skip": "OMITIR"
  },
  "welcome": {
    "title": "Bienvenido a Listox",
    "onboarding_subtitle": "Tu lista de compras inteligente que aprende lo que compras y te recuerda cuándo reponer",
    "bullet1_title": "Controla lo esencial",
    "bullet1_subtitle": "Añade lo que compras regularmente y tenlo todo en un solo lugar",
    "bullet2_title": "No olvides nada",
    "bullet2_subtitle": "Listox aprende y predice cuándo es hora de reponer",
    "bullet3_title": "Siempre listo para comprar",
    "bullet3_subtitle": "Mira lo que necesitas esta semana antes de salir",
    "cta": "Continuar"
  },
  "select_groceries": {
    "heading": "Elige lo esencial",
    "description": "Selecciona los artículos que compras seguido. Listox seguirá cuándo los necesitas de nuevo",
    "button_done": "Listo",
    "button_selected_suffix": "/{max} seleccionados",
    "add": "Añadir",
    "limit_reached": "Por ahora puedes seleccionar hasta {max} artículos"
  },
  "search_groceries": {
    "hint": "Buscar artículos..."
  },
  "weekdays_m": {
    "mon": "Lun",
    "tue": "Mar",
    "wed": "Mié",
    "thu": "Jue",
    "fri": "Vie",
    "sat": "Sáb",
    "sun": "Dom"
  },
  "weekdays_s": {
    "mon": "L",
    "tue": "M",
    "wed": "X",
    "thu": "J",
    "fri": "V",
    "sat": "S",
    "sun": "D"
  },
  "notifications": {
    "mode_auto": "Auto",
    "prompts": {
      "title_1": "¿Vas al super pronto? 🏪",
      "body_1": "Mira tu lista para no olvidar nada",
      "title_2": "¿Vas a hacer la compra? 🛒",
      "body_2": "Comprueba qué te puede estar faltando",
      "title_3": "Tu próxima compra 🛒",
      "body_3": "Echa un vistazo antes de salir",
      "title_4": "¿Compras pronto? 🛒",
      "body_4": "Revisa qué necesitas reponer",
      "title_5": "¿Vas al supermercado? 🏪",
      "body_5": "¡Tu lista está lista! Échale un vistazo",
      "title_6": "No se te olvide nada 🛒",
      "body_6": "Tu lista de la compra está actualizada",
      "title_7": "¿Planeas ir al super? 🏪",
      "body_7": "Revisa tu lista y aprovecha el viaje",
      "title_8": "Antes de ir a comprar 🛍️",
      "body_8": "Un vistazo rápido a la lista te ahorrará tiempo",
      "title_9": "¿Pasas por la tienda? 🛒",
      "body_9": "Los artículos que necesitas ya están en tu lista",
      "title_10": "¿Se te acaba algo? ⏰",
      "body_10": "Tu lista está al día, dale un vistazo"
    }
  },
  "add_custom_grocery": {
    "heading": "Crear artículo\npersonalizado",
    "input_name_hint": "¿Cómo se llama?",
    "input_period_hint": "¿Cada cuántos días lo compras?",
    "input_period_description": "Introduce un período aproximado. ¡Listox aprenderá con cada compra!",
    "button_create": "Crear"
  },
  "quick_add": {
    "tile_label": "Añadir rápido",
    "dialog_title": "Añadir rápido",
    "dialog_subtitle": "El artículo se eliminará al confirmar la compra.",
    "hint": "Escribe el nombre",
    "empty_state_hint": "¿Necesitas algo puntualmente? Pulsa aquí para añadirlo"
  },
  "paywall": {
    "bullet1": "Artículos esenciales ilimitados",
    "bullet2": "Tu lista completa en un solo lugar",
    "bullet3": "Siempre sabe qué comprar antes de salir"
  },
  "smart_engine_banner": {
    "title": "Perfil Inteligente",
    "description": "Listox recuerda lo que compras y te sugiere listas antes de que se te acabe."
  },
  "categories": {
    "food": "Alimentación",
    "bathroom": "Baño",
    "kitchen": "Cocina",
    "cleaning": "Limpieza",
    "health": "Salud",
    "other": "Otros"
  },
  "groceries": {
    "milk": "Leche",
    "eggs": "Huevos",
    "bread": "Pan",
    "cheese": "Queso",
    "yogurt": "Yogur",
    "rice": "Arroz",
    "pasta": "Pasta",
    "coffee": "Café",
    "water": "Agua",
    "chicken": "Pollo",
    "bananas": "Plátanos",
    "apples": "Manzanas",
    "potatoes": "Patatas",
    "onions": "Cebollas",
    "butter": "Mantequilla",
    "pepper": "Pimienta",
    "garlic": "Ajo",
    "carrot": "Zanahoria",
    "toilet_paper": "Papel higiénico",
    "shampoo": "Champú",
    "toothpaste": "Pasta de dientes",
    "soap": "Jabón",
    "deodorant": "Desodorante",
    "toothbrush": "Cepillo de dientes",
    "shaving_cream": "Espuma de afeitar",
    "dish_soap": "Lavavajillas",
    "paper_towels": "Papel de cocina",
    "salt": "Sal",
    "olive_oil": "Aceite de oliva",
    "sugar": "Azúcar",
    "flour": "Harina",
    "foil": "Papel de aluminio",
    "baking_paper": "Papel de horno",
    "laundry_detergent": "Detergente",
    "trash_bags": "Bolsas de basura",
    "toilet_cleaner": "Limpiador WC",
    "multi_surface_cleaner": "Limpiador multiusos",
    "glass_cleaner": "Limpiacristales",
    "disinfectant_spray": "Spray desinfectante",
    "wipes": "Toallitas",
    "painkillers": "Analgésicos",
    "vitamins": "Vitaminas",
    "bandages": "Tiritas",
    "cough_syrup": "Jarabe para la tos",
    "first_aid_kit": "Botiquín",
    "batteries": "Pilas",
    "light_bulbs": "Bombillas",
    "pet_food": "Comida para mascotas",
    "printer_paper": "Papel de impresora"
  }
};
static const Map<String,dynamic> _ar = {
  "appTitle": "Listox",
  "loading": {
    "just_a_moment": "لحظة من فضلك..."
  },
  "error": {
    "generic_titles": {
      "title1": "آخ!",
      "title2": "حدث خطأ ما",
      "title3": "لا يا إلهي!",
      "title4": "هممم...",
      "title5": "حسنًا إذن",
      "title6": "غير متوقع!",
      "title7": "مجددًا!",
      "title8": "أوه لا",
      "title9": "خطأ",
      "title10": "يا إلهي",
      "title11": "عذرًا"
    }
  },
  "error_message": {
    "grocery_not_found": "العنصر غير موجود",
    "grocery_storage": "فشل حفظ البيانات",
    "common": {
      "unexpected": "حدث خطأ غير متوقع... نعمل على حله! 🚨"
    },
    "email": {
      "failed_to_open_support": "عذرًا! تعذّر فتح تطبيق البريد... يمكنك التواصل معنا على {} 💌"
    },
    "preferences_unexpected": "حدثت مشكلة غير متوقعة"
  },
  "label": {
    "oops": "آخ",
    "whoops": "آخ!"
  },
  "snackbar": {
    "badConnection": {
      "title": "لا يوجد اتصال",
      "description": "يرجى التحقق من اتصالك بالإنترنت"
    }
  },
  "common": {
    "cancel": "إلغاء",
    "delete": "حذف",
    "edit": "تعديل"
  },
  "account": {
    "title": "الحساب",
    "premium_status_premium": "مستخدم مميز",
    "premium_status_upgrade": "مميز",
    "premium_expiry": "الاشتراك المميز صالح حتى {date}. شكرًا لدعمك <3",
    "premium_upgrade_cta": "اشترك بالمميز لإدارة غير محدودة!",
    "notifications_enabled": "مفعّلة",
    "notifications_disabled": "معطّلة",
    "notifications_description": "تذكير سريع قبل الذهاب للتسوق",
    "section_notifications": "الإشعارات",
    "section_preferences": "التفضيلات",
    "language_title": "اللغة",
    "language_subtitle": "لغة الواجهة",
    "haptics_title": "الاهتزاز",
    "haptics_subtitle": "التغذية الراجعة بالاهتزاز",
    "section_theme": "المظهر",
    "theme_system": "تلقائي",
    "theme_light": "فاتح",
    "theme_dark": "داكن",
    "section_colorations": "الألوان",
    "section_more": "المزيد",
    "about_app": "حول التطبيق",
    "privacy_terms": "الخصوصية والشروط",
    "contact_support": "التواصل مع الدعم"
  },
  "dialog": {
    "delete_grocery": {
      "title": "حذف العنصر؟",
      "subtitle": "هل أنت متأكد من حذف \"{name}\"؟ لا يمكن التراجع عن هذا الإجراء ⛔️"
    },
    "notification_mode": {
      "title": "جدول التذكيرات",
      "auto_label": "تلقائي",
      "auto_description": "يتنبأ بموعد التسوق القادم",
      "custom_days_label": "أيام مخصصة",
      "custom_days_description": "اختر أيامًا محددة"
    },
    "permission": {
      "notifications_title": "الإذن",
      "notifications_subtitle": "لتلقي الإشعارات، تأكد من منح الإذن لهذا التطبيق",
      "notifications_subtitle_settings": "لتلقي الإشعارات، تأكد من منح الإذن في إعدادات النظام"
    }
  },
  "edit_grocery": {
    "title": "تعديل العنصر\n\"{name}\"",
    "input_name_hint": "ما اسمه؟",
    "input_period_hint": "كم مرة تشتريه (بالأيام)؟",
    "input_period_default": {
      "one": "كل {} يوم",
      "two": "كل {} يوم",
      "few": "كل {} أيام",
      "many": "كل {} يومًا",
      "other": "كل {} يوم"
    },
    "input_period_description": "أدخل فترة تقريبية. سيتعلم Listox من مشترياتك!",
    "button_update": "تحديث"
  },
  "home": {
    "header_title": "البقالة التي قد تحتاجها",
    "tab_this_week": "هذا الأسبوع",
    "tab_later": "لاحقًا",
    "purchase_confirmed": "تم تأكيد الشراء!",
    "purchase_confirmed_description": "سنتعلم من استخدامك ونتنبأ متى ستحتاج هذه العناصر مرة أخرى",
    "due_overdue": {
      "one": "متأخر {} يوم",
      "two": "متأخر {} يوم",
      "few": "متأخر {} أيام",
      "many": "متأخر {} يومًا",
      "other": "متأخر {} يوم"
    },
    "due_today": "مستحق اليوم",
    "due_tomorrow": "مستحق غدًا",
    "due_in_days": {
      "one": "بعد {} يوم",
      "two": "بعد {} يوم",
      "few": "بعد {} أيام",
      "many": "بعد {} يومًا",
      "other": "بعد {} يوم"
    },
    "pre_list_this_week": "ربما تحتاجه هذا الأسبوع",
    "pre_list_later": "ربما تحتاجه لاحقًا",
    "checked_section_title": "العناصر المحددة",
    "fully_stocked": "مخزونك كافٍ!",
    "premium_lock_cta": "اشترك بالمميز لرؤية كل شيء",
    "premium_upgrade_hint": "افتح جميع مشترياتك مع بريميوم"
  },
  "purchase_banner": {
    "fully_stocked": "مخزونك كافٍ! اضغط \"شراء\" للتأكيد",
    "items_checked": {
      "one": "عنصر واحد محدد! اضغط \"شراء\" للتأكيد",
      "two": "عنصران محددان! اضغط \"شراء\" للتأكيد",
      "few": "{} عناصر محددة! اضغط \"شراء\" للتأكيد",
      "many": "{} عنصرًا محددًا! اضغط \"شراء\" للتأكيد",
      "other": "{} عنصر محدد! اضغط \"شراء\" للتأكيد"
    },
    "button_purchase": "شراء"
  },
  "tutorial": {
    "schedule_heading": "جدول تسوقك",
    "this_week_body": "ستجد هنا العناصر التي يتنبأ Listox أنك ستحتاجها في رحلة التسوق القادمة.",
    "later_body": "ستجد هنا العناصر التي لا تزال لديك منها الكثير. ستنتقل إلى \"هذا الأسبوع\" عند حلول وقت إعادة التخزين.",
    "skip": "تخطي"
  },
  "welcome": {
    "title": "مرحبًا بك في Listox",
    "onboarding_subtitle": "قائمة تسوقك الذكية التي تتعلم ما تشتريه وتذكرك بإعادة التخزين",
    "bullet1_title": "تتبع ضرورياتك",
    "bullet1_subtitle": "أضف ما تشتريه بانتظام واحتفظ به في مكان واحد",
    "bullet2_title": "لا تنسَ أبدًا",
    "bullet2_subtitle": "Listox يتعلم ويتنبأ بوقت إعادة التخزين",
    "bullet3_title": "دائمًا مستعد للتسوق",
    "bullet3_subtitle": "اعرف ما تحتاجه هذا الأسبوع قبل الخروج",
    "cta": "متابعة"
  },
  "select_groceries": {
    "heading": "اختر الضروريات",
    "description": "اختر العناصر التي تشتريها كثيرًا. Listox سيتتبع متى تحتاجها",
    "button_done": "تم",
    "button_selected_suffix": "/{max} مختار",
    "add": "إضافة",
    "limit_reached": "يمكنك اختيار ما يصل إلى {max} عناصر الآن"
  },
  "search_groceries": {
    "hint": "ابحث عن عناصر..."
  },
  "weekdays_m": {
    "mon": "إثنين",
    "tue": "ثلثاء",
    "wed": "أربعاء",
    "thu": "خميس",
    "fri": "جمعة",
    "sat": "سبت",
    "sun": "أحد"
  },
  "weekdays_s": {
    "mon": "إث",
    "tue": "ثل",
    "wed": "أر",
    "thu": "خم",
    "fri": "جم",
    "sat": "سب",
    "sun": "أح"
  },
  "notifications": {
    "mode_auto": "تلقائي",
    "prompts": {
      "title_1": "ذاهب للسوق قريبًا؟ 🏪",
      "body_1": "راجع قائمتك حتى لا تفوتك أي شيء",
      "title_2": "ستتسوق قريبًا؟ 🛒",
      "body_2": "تحقق من الضروريات التي تنفد",
      "title_3": "رحلة التسوق القادمة 🛒",
      "body_3": "ألقِ نظرة سريعة على ما قد تحتاجه",
      "title_4": "تسوق قريبًا؟ 🛒",
      "body_4": "تحقق مما يحتاج للتجديد",
      "title_5": "ستذهب للسوق؟ 🏪",
      "body_5": "قائمتك جاهزة! ألقِ نظرة سريعة",
      "title_6": "لا تنسَ شيئًا 🛒",
      "body_6": "قائمة التسوق جاهزة لك",
      "title_7": "تخطط لزيارة السوق؟ 🏪",
      "body_7": "راجع قائمتك واستثمر الرحلة",
      "title_8": "قبل التسوق 🛍️",
      "body_8": "مراجعة سريعة للقائمة توفر وقتك",
      "title_9": "ستمر بالسوق قريبًا؟ 🛒",
      "body_9": "الضروريات التي قد تحتاجها موجودة بالفعل في قائمتك",
      "title_10": "ينفد شيء ما؟ ⏰",
      "body_10": "قائمتك محدّثة، ألقِ نظرة"
    }
  },
  "add_custom_grocery": {
    "heading": "إنشاء عنصر\nمخصص",
    "input_name_hint": "ما اسمه؟",
    "input_period_hint": "كم مرة تشتريه (بالأيام)؟",
    "input_period_description": "أدخل فترة تقريبية. سيتعلم Listox من مشترياتك!",
    "button_create": "إنشاء"
  },
  "quick_add": {
    "tile_label": "إضافة سريعة",
    "dialog_title": "إضافة سريعة",
    "dialog_subtitle": "سيُحذف العنصر بعد تأكيد الشراء.",
    "hint": "أدخل الاسم",
    "empty_state_hint": "تحتاج شيئًا لمرة واحدة؟ اضغط في أي مكان لإضافته"
  },
  "paywall": {
    "bullet1": "تتبع ضروريات غير محدودة",
    "bullet2": "أنشئ قائمة ضرورياتك الكاملة",
    "bullet3": "اعرف دائمًا ما تحتاجه قبل التسوق"
  },
  "smart_engine_banner": {
    "title": "الملف الذكي",
    "description": "Listox يتعلم ما تشتريه ويقترح قوائم التسوق قبل أن ينفد مخزونك."
  },
  "categories": {
    "food": "طعام",
    "bathroom": "حمام",
    "kitchen": "مطبخ",
    "cleaning": "تنظيف",
    "health": "صحة",
    "other": "أخرى"
  },
  "groceries": {
    "milk": "حليب",
    "eggs": "بيض",
    "bread": "خبز",
    "cheese": "جبن",
    "yogurt": "زبادي",
    "rice": "أرز",
    "pasta": "معكرونة",
    "coffee": "قهوة",
    "water": "ماء",
    "chicken": "دجاج",
    "bananas": "موز",
    "apples": "تفاح",
    "potatoes": "بطاطا",
    "onions": "بصل",
    "butter": "زبدة",
    "pepper": "فلفل أسود",
    "garlic": "ثوم",
    "carrot": "جزر",
    "toilet_paper": "ورق حمام",
    "shampoo": "شامبو",
    "toothpaste": "معجون أسنان",
    "soap": "صابون",
    "deodorant": "مزيل عرق",
    "toothbrush": "فرشاة أسنان",
    "shaving_cream": "كريم حلاقة",
    "dish_soap": "سائل جلي",
    "paper_towels": "مناديل مطبخ",
    "salt": "ملح",
    "olive_oil": "زيت زيتون",
    "sugar": "سكر",
    "flour": "دقيق",
    "foil": "ورق ألومنيوم",
    "baking_paper": "ورق الخبز",
    "laundry_detergent": "مسحوق غسيل",
    "trash_bags": "أكياس قمامة",
    "toilet_cleaner": "منظف مرحاض",
    "multi_surface_cleaner": "منظف متعدد الأسطح",
    "glass_cleaner": "منظف زجاج",
    "disinfectant_spray": "رذاذ مطهر",
    "wipes": "مناديل مبللة",
    "painkillers": "مسكنات ألم",
    "vitamins": "فيتامينات",
    "bandages": "ضمادات",
    "cough_syrup": "شراب سعال",
    "first_aid_kit": "حقيبة إسعافات أولية",
    "batteries": "بطاريات",
    "light_bulbs": "مصابيح",
    "pet_food": "طعام الحيوانات الأليفة",
    "printer_paper": "ورق طابعة"
  }
};
static const Map<String,dynamic> _nb = {
  "appTitle": "Listox",
  "loading": {
    "just_a_moment": "Et øyeblikk..."
  },
  "error": {
    "generic_titles": {
      "title1": "Oi!",
      "title2": "Noe gikk galt",
      "title3": "Å, nei!",
      "title4": "Hmm...",
      "title5": "Vel",
      "title6": "Uventet!",
      "title7": "Igjen!",
      "title8": "Au",
      "title9": "Feil",
      "title10": "Se her",
      "title11": "Oops"
    }
  },
  "error_message": {
    "grocery_not_found": "Varen ble ikke funnet",
    "grocery_storage": "Lagring av data mislyktes",
    "common": {
      "unexpected": "Oops! Det oppstod en uventet feil... Vi jobber med det! 🚨"
    },
    "email": {
      "failed_to_open_support": "Oops! Klarte ikke å åpne e-postappen... Du kan kontakte oss på {} 💌"
    },
    "preferences_unexpected": "Det oppstod et uventet problem"
  },
  "label": {
    "oops": "Oops",
    "whoops": "Oops!"
  },
  "snackbar": {
    "badConnection": {
      "title": "Ingen tilkobling",
      "description": "Sjekk internettilkoblingen din"
    }
  },
  "common": {
    "cancel": "Avbryt",
    "delete": "Slett",
    "edit": "Rediger"
  },
  "account": {
    "title": "Konto",
    "premium_status_premium": "Premium-bruker",
    "premium_status_upgrade": "Premium",
    "premium_expiry": "Premium aktiv til {date}. Takk for støtten <3",
    "premium_upgrade_cta": "Oppgrader til Premium for ubegrenset administrasjon!",
    "notifications_enabled": "Aktivert",
    "notifications_disabled": "Deaktivert",
    "notifications_description": "En rask påminnelse før handler",
    "section_notifications": "Varsler",
    "section_preferences": "Innstillinger",
    "language_title": "Språk",
    "language_subtitle": "Grensesnittspråk",
    "haptics_title": "Haptics",
    "haptics_subtitle": "Vibrasjonsfeedback",
    "section_theme": "Tema",
    "theme_system": "System",
    "theme_light": "Lys",
    "theme_dark": "Mørk",
    "section_colorations": "Farger",
    "section_more": "Mer",
    "about_app": "Om appen",
    "privacy_terms": "Personvern",
    "contact_support": "Kontakt support"
  },
  "dialog": {
    "delete_grocery": {
      "title": "Slett vare?",
      "subtitle": "Er du sikker på at du vil slette \"{name}\"? Denne handlingen kan ikke angres ⛔️"
    },
    "notification_mode": {
      "title": "Påminnelsesplan",
      "auto_label": "Automatisk",
      "auto_description": "Forutsier neste kjøp",
      "custom_days_label": "Egendefinerte dager",
      "custom_days_description": "Velg bestemte dager"
    },
    "permission": {
      "notifications_title": "Tillatelse",
      "notifications_subtitle": "For å motta varsler, tillat denne appen",
      "notifications_subtitle_settings": "For å motta varsler, tillat denne appen i systeminnstillingene"
    }
  },
  "edit_grocery": {
    "title": "Rediger vare\n\"{name}\"",
    "input_name_hint": "Hva heter den?",
    "input_period_hint": "Hvor mange dager mellom kjøpene?",
    "input_period_default": {
      "one": "Hver {} dag",
      "other": "Hver {} dag"
    },
    "input_period_description": "Angi en omtrentlig periode. Listox vil lære av kjøpshistorikken din!",
    "button_update": "Oppdater"
  },
  "home": {
    "header_title": "Produkter du kanskje trenger å kjøpe",
    "tab_this_week": "Denne Uken",
    "tab_later": "Senere",
    "purchase_confirmed": "Kjøp bekreftet!",
    "purchase_confirmed_description": "Vi lærer av bruken din og forutsier når du trenger disse varene igjen",
    "due_overdue": {
      "one": "{} dag forsinket",
      "other": "{} dager forsinket"
    },
    "due_today": "Forfaller i dag",
    "due_tomorrow": "Forfaller i morgen",
    "due_in_days": {
      "one": "Om {} dag",
      "other": "Om {} dager"
    },
    "pre_list_this_week": "Kan være nødvendig denne uken",
    "pre_list_later": "Kan være nødvendig senere",
    "checked_section_title": "Avkryssede varer",
    "fully_stocked": "Beholdningen din er tilstrekkelig!",
    "premium_lock_cta": "Oppgrader til Premium for å se alt",
    "premium_upgrade_hint": "Lås opp alle varene dine med Premium"
  },
  "purchase_banner": {
    "fully_stocked": "Alt klart! Trykk \"Kjøp\" for å bekrefte",
    "items_checked": {
      "one": "1 vare avkrysset! Trykk \"Kjøp\" for å bekrefte",
      "other": "{} varer avkrysset! Trykk \"Kjøp\" for å bekrefte"
    },
    "button_purchase": "Kjøp"
  },
  "tutorial": {
    "schedule_heading": "DIN HANDLEPLAN",
    "this_week_body": "Her ser du varene som Listox forutsier at du trenger på neste handletur.",
    "later_body": "Her ser du varene du har nok av. De flyttes til \"Denne Uken\" når det er tid for å fylle på.",
    "skip": "HOPP OVER"
  },
  "welcome": {
    "title": "Velkommen til Listox",
    "onboarding_subtitle": "Din smarte handleliste som lærer hva du kjøper og minner deg på når du trenger å fylle på",
    "bullet1_title": "Følg med på det essensielle",
    "bullet1_subtitle": "Legg til det du jevnlig kjøper og ha alt på ett sted",
    "bullet2_title": "Glem aldri noe",
    "bullet2_subtitle": "Listox lærer og forutsier når det er på tide å fylle på",
    "bullet3_title": "Alltid klar for handel",
    "bullet3_subtitle": "Se hva du kanskje trenger denne uken før du drar",
    "cta": "Fortsett"
  },
  "select_groceries": {
    "heading": "Velg det essensielle",
    "description": "Velg produktene du kjøper ofte. Listox vil følge med på når du trenger dem",
    "button_done": "Ferdig",
    "button_selected_suffix": "/{max} valgt",
    "add": "Legg til",
    "limit_reached": "Du kan foreløpig velge maksimalt {max} produkter"
  },
  "search_groceries": {
    "hint": "Søk etter produkter..."
  },
  "weekdays_m": {
    "mon": "Man",
    "tue": "Tir",
    "wed": "Ons",
    "thu": "Tor",
    "fri": "Fre",
    "sat": "Lør",
    "sun": "Søn"
  },
  "weekdays_s": {
    "mon": "M",
    "tue": "Ti",
    "wed": "O",
    "thu": "To",
    "fri": "F",
    "sat": "L",
    "sun": "S"
  },
  "notifications": {
    "mode_auto": "Automatisk",
    "prompts": {
      "title_1": "Snart til supermarkedet? 🏪",
      "body_1": "Sjekk listen så du ikke glemmer noe",
      "title_2": "Skal du handle? 🛒",
      "body_2": "Se hvilke basisvarer som er i ferd med å ta slutt",
      "title_3": "Neste handletur 🛒",
      "body_3": "Kast et raskt blikk på hva du kanskje trenger",
      "title_4": "Snart handling? 🛒",
      "body_4": "Sjekk hva som trenger å fylles på",
      "title_5": "Skal du i butikken? 🏪",
      "body_5": "Listen din er klar! Ta en titt",
      "title_6": "Ikke glem noe 🛒",
      "body_6": "Handlelisten din er klar",
      "title_7": "Planlegger du et butikkbesøk? 🏪",
      "body_7": "Sjekk listen og få mest mulig ut av turen",
      "title_8": "Før handel 🛍️",
      "body_8": "Et raskt blikk på listen kan spare tid",
      "title_9": "Stikker du innom butikken? 🛒",
      "body_9": "Basisvarene du kanskje trenger er allerede på listen din",
      "title_10": "Er noe i ferd med å ta slutt? ⏰",
      "body_10": "Handlelisten din er oppdatert, ta en titt"
    }
  },
  "add_custom_grocery": {
    "heading": "Opprett egendefinert\nvare",
    "input_name_hint": "Hva heter den?",
    "input_period_hint": "Hvor mange dager mellom kjøpene?",
    "input_period_description": "Angi en omtrentlig periode. Listox vil lære av kjøpshistorikken din!",
    "button_create": "Opprett"
  },
  "quick_add": {
    "tile_label": "Rask tillegg",
    "dialog_title": "Rask tillegg",
    "dialog_subtitle": "Varen vil bli fjernet etter bekreftelse av kjøpet.",
    "hint": "Skriv inn et navn",
    "empty_state_hint": "Trenger du noe bare én gang? Trykk hvor som helst for å legge til"
  },
  "paywall": {
    "bullet1": "Følg med på ubegrenset antall produkter",
    "bullet2": "Bygg en komplett liste over essensielle varer",
    "bullet3": "Alltid vit hva du trenger før du handler"
  },
  "smart_engine_banner": {
    "title": "Smart Profil",
    "description": "Listox lærer hva du kjøper og foreslår handlelister før beholdningen går tom."
  },
  "categories": {
    "food": "Mat",
    "bathroom": "Bad",
    "kitchen": "Kjøkken",
    "cleaning": "Rengjøring",
    "health": "Helse",
    "other": "Annet"
  },
  "groceries": {
    "milk": "Melk",
    "eggs": "Egg",
    "bread": "Brød",
    "cheese": "Ost",
    "yogurt": "Yoghurt",
    "rice": "Ris",
    "pasta": "Pasta",
    "coffee": "Kaffe",
    "water": "Vann",
    "chicken": "Kylling",
    "bananas": "Bananer",
    "apples": "Epler",
    "potatoes": "Poteter",
    "onions": "Løk",
    "butter": "Smør",
    "pepper": "Pepper",
    "garlic": "Hvitløk",
    "carrot": "Gulrot",
    "toilet_paper": "Toalettpapir",
    "shampoo": "Sjampo",
    "toothpaste": "Tannkrem",
    "soap": "Såpe",
    "deodorant": "Deodorant",
    "toothbrush": "Tannbørste",
    "shaving_cream": "Barberkrem",
    "dish_soap": "Oppvaskmiddel",
    "paper_towels": "Kjøkkenpapir",
    "salt": "Salt",
    "olive_oil": "Olivenolje",
    "sugar": "Sukker",
    "flour": "Mel",
    "foil": "Aluminiumsfolie",
    "baking_paper": "Bakepapir",
    "laundry_detergent": "Vaskemiddel",
    "trash_bags": "Søppelposer",
    "toilet_cleaner": "Toalettrens",
    "multi_surface_cleaner": "Universalrens",
    "glass_cleaner": "Glassrens",
    "disinfectant_spray": "Desinfeksjonsspray",
    "wipes": "Våtservietter",
    "painkillers": "Smertestillende",
    "vitamins": "Vitaminer",
    "bandages": "Plaster",
    "cough_syrup": "Hostesaft",
    "first_aid_kit": "Førstehjelpsett",
    "batteries": "Batterier",
    "light_bulbs": "Lyspærer",
    "pet_food": "Dyremat",
    "printer_paper": "Skriverpapir"
  }
};
static const Map<String, Map<String,dynamic>> mapLocales = {"zh": _zh, "tr": _tr, "hu": _hu, "nl": _nl, "ja": _ja, "de": _de, "ru": _ru, "pl": _pl, "uk": _uk, "fi": _fi, "pt": _pt, "en": _en, "it": _it, "fr": _fr, "el": _el, "ro": _ro, "hi": _hi, "ko": _ko, "vi": _vi, "cs": _cs, "id": _id, "th": _th, "sv": _sv, "es": _es, "ar": _ar, "nb": _nb};
}
