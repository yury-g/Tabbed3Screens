//
//  DataModel.swift
//  FoodiePhraseBookSugar
//
//  Created by Yoda Dev on 4/19/16.
//  Copyright © 2016 Yury G. All rights reserved.
//

import Foundation



// from :http://www.geonames.de/languages.html , http://www.omniglot.com/language/names.htm , http://wpcentral.io/internationalization/
// current lang array has known typos, to fix in future.

var currentLang = ("en-US", "English","United States","American English ","🇺🇸")







//Vanity Variables


let wordsDataSet = ["Salt","Sugar","Water","Coffee", "Beer", "Bread", "Rice", "Spicy Hot", "Rare", "Extra Crispy", "Thank You", "It is very tasty", "Can you repeat that slowly", "Bathrooms", "Woman''s Bathroom", "Men''s Bathroom"  ]

var globalWordLangFlag =  ("en-US",  "English", "United States", "American English","🇺🇸")
var globalSelectedWordLangFlag = ("en-US",  "English", "United States", "American English","🇺🇸")

var theWord = "theWord"


let  langCodeAll38 = [
    
    // English
    ("en-US",  "English", "United States", "American English","🇺🇸"),
    ("en-AU",     "English",     "Australia","Aussie","🇦🇺"),
    ("en-GB",     "English",     "United Kingdom", "Queen's English","🇬🇧"),
    ("en-IE",      "English",     "Ireland", "Gaeilge","🇮🇪"),
    ("en-ZA",       "English",     "South Africa", "South African English","🇿🇦"),
    
    
    //French
    ("fr-CA",       "French",      "Canada","Français du Canada","🇨🇦" ),
    ("fr-FR",       "French",      "France", "Français","🇫🇷"),
    
    //Spanish
    ("es-ES",       "Spanish",     "Spain", "Español","🇪🇸"),
    ("es-MX",       "Spanish",     "Mexico", "Español de México","🇲🇽"),

    // Chinese
    ("zh-CN",       "Chinese",     "China","漢語/汉语","🇨🇳"),
    ("zh-HK",       "Chinese",   "Hong Kong","漢語/汉语","🇭🇰"),
    ("zh-TW",       "Chinese",     "Taiwan","漢語/汉语","🇹🇼"),
    
    // Pacific Rim
    ("ja-JP",       "Japanese",     "Japan", "日本語","🇯🇵"),
    ("ko-KR",       "Korean",      "Republic of Korea", "한국어","🇰🇷"),
    ("id-ID",       "Indonesian",    "Indonesia", "Bahasa Indonesia","🇮🇩"),
    ("th-TH",       "Thai",        "Thailand","ภาษาไทย","🇹🇭"),


    
    // North Europe
    ("sv-SE",       "Swedish",     "Sweden","Svenska","🇸🇪"),
    ("fi-FI",       "Finnish",     "Finland","Suomi","🇫🇮"),
    ("no-NO",       "Norwegian",    "Norway", "Norsk","🇳🇴"),
    
    // Europe
    ("de-DE",       "German", "Germany", "Deutsche","🇩🇪"),
    ("el-GR",      "Modern Greek",        "Greece","ελληνική","🇬🇷"),
    ("it-IT",       "Italian",     "Italy", "Italiano","🇮🇹"),

    
    //South & East Euro
    
    ("ru-RU",       "Russian",     "Russian Federation","русский","🇷🇺"),
    ("cs-CZ", "Czech", "Czech Republic","český","🇨🇿"),
    ("sk-SK",       "Slovak",      "Slovakia", "Slovenčina","🇸🇰"),
    ("pl-PL",       "Polish",      "Poland", "Polski","🇵🇱"),
    
   

    
    ("ro-RO",       "Romanian",        "Romania","Română","🇷🇴"),
    ("hu-HU",       "Hungarian",    "Hungary", "Magyar","🇭🇺"),
    
    ("tr-TR",       "Turkish",     "Turkey","Türkçe","🇹🇷"),
    
    
    
    //East & Middle East
    ("hi-IN",       "Hindi",       "India", "हिन्दी","🇮🇳"),
    ("he-IL",       "Hebrew",      "Israel","עברית","🇮🇱"),
    ("ar-SA","Arabic","Saudi Arabia","العربية","🇸🇦"),
    
    
    // Portuguese
    ("pt-BR",       "Portuguese",      "Brazil","Portuguese","🇧🇷"),
    ("pt-PT",       "Portuguese",      "Portugal","Portuguese","🇵🇹"),
   
    //Dutch
    ("nl-BE",       "Dutch",       "Belgium","Nederlandse","🇧🇪"),
    ("nl-NL",       "Dutch",       "Netherlands", "Nederlands","🇳🇱"),
    ("da-DK", "Danish","Denmark","Dansk","🇩🇰"),
    
    
]



var saltTuplesArray = [("en-US","salt"),("cs-CZ","sůl"),
                       ("da-DK","salt")
    ,("de-DE","Salz-")
    ,("el-GR", "άλας")
    ,("fi-FI", "suolaa")
    ,("fr-FR", "sel")
    ,("es-ES", "sal")
    ,("he-IL", "מלח")
    ,("hi-IN", "नमक")
    ,("hu-HU", "só")
    ,("id-ID", "garam")
    ,("it-IT", "sale")
    ,("ja-JP", "塩")
    ,("ko-KR", "소금")
    ,("nl-NL", "zout")
    ,("ar-SA", "ملح")
    ,("no-NO", "salt")
    ,("pt-PT", "sal")
    ,("ru-RU", "соль")
    ,("sv-SE", "salt-")
    ,("th-TH", "เกลือ")
    ,("tr-TR", "tuz")
    ,("zh-TW", "鹽")]


var sugarTuplesArray = [("en-US","sugar")
    
    ,("fr-FR","sucres")
    ,("es-ES","azúcares")
    
    ,("it-IT", "zucchero")
    ,("pt-PT","açúcar")
    ,("el-GR", "ζάχαρη")
    ,("tr-TR", "şeker")
    
    ,("ru-RU", "сахар")
    ,("cs-CZ", "cukr")
    ,("hu-HU", "cukor")
    
    ,("sv-SE", "socker")
    ,("nl-NL", "suiker")
    ,("da-DK", "sukker")
    ,("de-DE", "Zucker")
    
    ,("he-IL", "סוכר")
    ,("hi-IN", "चीनी")
    ,("ar-SA", "السكر")
    ,("id-ID", "gula")
    
    ,("th-TH", "น้ำตาล")
    ,("ko-KR", "설탕")
    ,("ja-JP", "シュガー")
    ,("zh-TW", "糖")]


var coffeeTuplesArray = [("nl-NL","koffie"), ("de-DE", "Kaffee"), ("tr-TR", "Kahve"), ("en-US", "coffee"), ("hu-HU", "kávé"), ("sv-SE", "kaffe"), ("id-ID","kopi"), ("zh-TW", "咖啡"),( "da-DK", "kaffe"), ("ar-SA", "قهوة"), ("el-GR", "καφές"), ("fr-FR", "café"), ("th-TH", "กาแฟ"), ("ru-RU", "кофе"), ("hi-IN", "कॉफ़ी"), ("pt-PT", "café"), ("ko-KR", "커피"), ("es-ES", "café"), ("ja-JP", "コー​​ヒー"), ("it-IT", "caffè"), ("he-IL", "קָפֶה"), ("cs-CZ", "káva")]


var waterTuplesArray = [("nl-NL", "water"), ("de-DE", "Wasser"), ("tr-TR", "su"), ("en-US", "water"), ("hu-HU", "só"),( "sv-SE", "vatten"), ("id-ID", "air"), ("zh-TW", "水"), ("da-DK", "vand"), ("ar-SA", "ماء"), ("el-GR", "νερό"), ("fr-FR", "eau"), ("th-TH", "น้ำ"), ("ru-RU", "воды"),( "hi-IN", "víz"),("pt-PT", "água"), ("ja-JP", "水"), ("es-ES", "agua"), ("ko-KR", "물"),( "it-IT", "acqua"), ("he-IL", "מַיִם"), ("cs-CZ", "voda")   ]


var coffeeDictionary = ["nl-NL": "koffie", "de-DE": "Kaffee", "tr-TR": "Kahve", "en-US": "coffee", "hu-HU": "kávé", "sv-SE": "kaffe", "id-ID": "kopi", "zh-TW": "咖啡", "da-DK": "kaffe", "ar-SA": "قهوة", "el-GR": "καφές", "fr-FR": "café", "th-TH": "กาแฟ", "ru-RU": "кофе", "hi-IN": "कॉफ़ी", "pt-PT": "café", "ko-KR": "커피", "es-ES": "café", "ja-JP": "コー​​ヒー", "it-IT": "caffè", "he-IL": "קָפֶה", "cs-CZ": "káva"]


var waterDictionary = ["nl-NL": "water", "de-DE": "Wasser", "tr-TR": "su", "en-US": "water", "hu-HU": "só", "sv-SE": "vatten", "id-ID": "air", "zh-TW": "水", "da-DK": "vand", "ar-SA": "ماء", "el-GR": "νερό", "fr-FR": "eau", "th-TH": "น้ำ", "ru-RU": "воды", "hi-IN": "víz", "pt-PT": "água", "ja-JP": "水", "es-ES": "agua", "ko-KR": "물", "it-IT": "acqua", "he-IL": "מַיִם", "cs-CZ": "voda"]


