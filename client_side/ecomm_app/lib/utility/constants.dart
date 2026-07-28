import 'dart:io';
import 'package:flutter/foundation.dart' show kIsWeb;

final MAIN_URL = kIsWeb
    ? 'http://localhost:3000' // Web (Chrome, Firefox, etc)
    : Platform.isIOS
        ? 'http://localhost:3000' // iOS Simulator
        : 'http://10.0.2.2:3000'; // Android Emulator

const FAVORITE_PRODUCT_BOX = 'FAVORITE_PRODUCT_BOX';
const USER_INFO_BOX = 'USER_INFO_BOX';

const PHONE_KEY = 'PHONE_KEY';
const STREET_KEY = 'STREET_KEY';
const CITY_KEY = 'CITY_KEY';
const STATE_KEY = 'STATE_KEY';
const POSTAL_CODE_KEY = 'POSTAL_CODE_KEY';
const COUNTRY_KEY = 'COUNTRY_KEY';
