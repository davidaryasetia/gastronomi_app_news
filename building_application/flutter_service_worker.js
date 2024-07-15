'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "93acc69ef0e9b64f65530bd987107879",
"assets/AssetManifest.bin.json": "826531eebfc01dcb46eb38f7bea352bd",
"assets/AssetManifest.json": "891255b3e0c4af8443ef98502c9b3399",
"assets/assets/images/9star.png": "403786832286cd1d1096c997519db725",
"assets/assets/images/ic_Address.png": "fe686bc1a52de69bda67ec84766ec2d6",
"assets/assets/images/ic_beleq.png": "95f1460b7d8be040b30012352d9d7d60",
"assets/assets/images/ic_culture.png": "2fb4f53e8a147465a2284a01e09af11c",
"assets/assets/images/ic_culture2.png": "3c455032a4c009f76fc28858c3019e1e",
"assets/assets/images/ic_fb_yellow.png": "79b9b73a6686a39ae2e4a0bac854af88",
"assets/assets/images/ic_gastrobot.png": "87d99b970484fcee5951d6de351eb57d",
"assets/assets/images/ic_group_arrow.png": "165b20616bf4869223aba4a722669b63",
"assets/assets/images/ic_icon.png": "cd9af02ae480dba801a6dd2d802cadd4",
"assets/assets/images/ic_ig_yellow.png": "0e966bba4c1d5c2b954e1362939bec9b",
"assets/assets/images/ic_li_yellow.png": "e9f029855f7ef82ab16266a04974af5c",
"assets/assets/images/ic_location_primary.png": "23c47e251a8a2263c76027bdc5da794c",
"assets/assets/images/ic_logo_icon.svg": "6bdfef6a705f26f528d763dc61099ed6",
"assets/assets/images/ic_mendet.png": "ebe85cb1d08629831ae3c0f874b00ae9",
"assets/assets/images/ic_merariq.png": "09bd354203808bd1e9b46ac7662ea06f",
"assets/assets/images/ic_penari.jpg": "9db037c8c8677102b7c8d0e8877737ea",
"assets/assets/images/ic_penari.png": "f83ded8dda8a810c37d8c5fd07e7d0d6",
"assets/assets/images/ic_penari_blur.png": "1cacc001fe61a44b0e14548f4d63c98d",
"assets/assets/images/ic_profile.jpg": "77f2b244701df27688b0e9111722f91f",
"assets/assets/images/ic_recipe.png": "b48cc6db7c25ef439e7756dce2e8cad4",
"assets/assets/images/ic_resto_bg.png": "b21136d76b7e82258fb32ab41e060831",
"assets/assets/images/ic_row.png": "b25bc76880ae0bba3e3ae7bc1b02fe4c",
"assets/assets/images/ic_village.png": "fb62872eb6050373397fa3cc8a4d0661",
"assets/assets/images/img_.png": "c8afd8242c6798cb7122544290f5811d",
"assets/assets/images/img_1.png": "e8a0b87fa073a71db94f8823a8414b33",
"assets/assets/images/img_10.png": "b6851a739389e8e6b32aeebcdb5b9b25",
"assets/assets/images/img_11.png": "ac09d592c4fb8a77dcd3310953278675",
"assets/assets/images/img_12.png": "4c6f851969f2dc048a12c828f1cd5604",
"assets/assets/images/img_13.png": "f156601ab9284541db15ac87106df878",
"assets/assets/images/img_14.png": "971e956a63162ef2b98562e1308a651e",
"assets/assets/images/img_15.png": "0d36cf5ed909fc0cee7a14381eece9e0",
"assets/assets/images/img_16.png": "24cf8029340f5a6bbf0f763f570bd982",
"assets/assets/images/img_17.png": "2ef1d434c17560dff21aac6e8e52c22f",
"assets/assets/images/img_18.png": "188c696606a4360f919c792069167fb2",
"assets/assets/images/img_19.png": "3213394c3581adbcae1bb7b0d1050270",
"assets/assets/images/img_2.png": "8114c9404bf8dcac2259833237e67b57",
"assets/assets/images/img_20.png": "c80fd080849fdc32bc99fa1463e59c4c",
"assets/assets/images/img_21.png": "a7c1c7f84615e1413bde50c0930c17ad",
"assets/assets/images/img_3.png": "d8a3750bec5f2e8ef09a0a8ae8579554",
"assets/assets/images/img_4.png": "e1f688da49ce8fe0831e8d6869a01a22",
"assets/assets/images/img_5.png": "1359d63c6052570f41ae75fb70706fa4",
"assets/assets/images/img_6.png": "55109eb340538c0629279e7136d01933",
"assets/assets/images/img_7.png": "afa970077962d7e805098a9a3da99c48",
"assets/assets/images/img_8.png": "23d59aa33ea44d082d4c87baee6e8509",
"assets/assets/images/img_9.png": "4fcde0e54634158c613cfe97c15bc2dc",
"assets/assets/images/img_about_us.png": "a2e79f057db54a4be7f7c74568066b1e",
"assets/assets/images/img_adat_lombok.png": "88b01ae59de15af7883df5d52805c22f",
"assets/assets/images/img_aqiqah.png": "9eef5c68d9dff9439773c14c2837840a",
"assets/assets/images/img_arrow_up.png": "28e776934cbb82c814fd37abc93b166e",
"assets/assets/images/img_ayam.png": "6b59483cb8166a073d666fbb45b04267",
"assets/assets/images/img_ayam2.png": "89b1d2facf49d32d494b7b9c745120d6",
"assets/assets/images/img_beberuk_terong4.png": "668ccb5e56f20e84279232cc966c2982",
"assets/assets/images/img_bg_culture.png": "06a422544199e46ec9b0152adf3d1df6",
"assets/assets/images/img_bg_detail_culture.png": "bf7a6ad983ad00ed0c6ec42f9aa96b36",
"assets/assets/images/img_bg_detail_page.png": "565ab9f2ff9e99f22535d6ced975a9ba",
"assets/assets/images/img_bg_detail_village.jpg": "136872ba1be8b02c61aa4e55174ccbc4",
"assets/assets/images/img_bg_gastro.jpg": "0b97513e7fe4ad6473d0430d9ba2b9e5",
"assets/assets/images/img_bg_list.png": "30a8a20ec35f2ea85845368d28515c55",
"assets/assets/images/img_bg_login.png": "52e21d61e7ca42ae219396cd265e3261",
"assets/assets/images/img_bg_profile.jpg": "7f10cfb99c79edf0baf3fdfde2037de5",
"assets/assets/images/img_bg_restaurant.png": "a15cc14fe3cdb305adace563f64d89fb",
"assets/assets/images/img_bg_resto2.png": "c5ed2a947fbfe9647bd5c6f63b2911c6",
"assets/assets/images/img_bg_resto3.png": "b68d7f991a61c19313eda20616d29719",
"assets/assets/images/img_bg_village.png": "6330159f76dcf6a9d5e4d555bdf409c9",
"assets/assets/images/img_bottom_line.png": "56b00bc32c8e4edb00ecfacd98449c12",
"assets/assets/images/img_culture.png": "40a853f496dd04a7c1583e3635d3b83b",
"assets/assets/images/img_dessert.png": "618ddb41472ea6dfe5e8ce102c608927",
"assets/assets/images/img_detail_1.png": "0168a84a7e92eb26424429dd256c92ce",
"assets/assets/images/img_detail_2.png": "34270af784c098c608676b0c798cbf17",
"assets/assets/images/img_detail_3.png": "6d02134611ea1a75bc0b686167c16391",
"assets/assets/images/img_detail_4.png": "1f28e90ca7e12c21d350b388911e043d",
"assets/assets/images/img_detail_5.png": "d809e27bd71ffa9c776799a23a6c8fce",
"assets/assets/images/img_detail_6.png": "0827d46b3ed61d1c6a672283ed8a54aa",
"assets/assets/images/img_detail_long.png": "8332836ca757f366bbbcf7b6900f2236",
"assets/assets/images/img_drink.png": "41aead8403b3b5d93ed3d49f91ca7972",
"assets/assets/images/img_food.png": "3da6ccf2056dadca1ce24f247ae437cb",
"assets/assets/images/img_gambar_homeapge.png": "2c18e06ac5a4e4e4fdba3c4f2b37eb6f",
"assets/assets/images/img_google.png": "5baa24bfe658908e07ff78e8e27edec7",
"assets/assets/images/img_history_1.png": "433441c6581d8afa5305d1693252c876",
"assets/assets/images/img_history_2.png": "57aba69f723e7d9c04f9000579de8d44",
"assets/assets/images/img_history_3.png": "b3c337bc34ab27f175b7dfe4aecc9983",
"assets/assets/images/img_history_4.png": "b0d8855a5190f79c1e56debe679073d0",
"assets/assets/images/img_island.png": "a955af5098bcd9b059428857baf9b6d4",
"assets/assets/images/img_list_menu.png": "c8afd8242c6798cb7122544290f5811d",
"assets/assets/images/img_lombok_island.png": "f35f86f158a252deb7b93e63c0a2c908",
"assets/assets/images/img_me.png": "cdc963fa4d06b4b5ed2ffb283d2b5ce8",
"assets/assets/images/img_menu_makanan.png": "92fcc17db5e9eaf68a6fb8e2b273e863",
"assets/assets/images/img_moon.png": "c922477562c27132ce6889140e1bebd9",
"assets/assets/images/img_most_ayam.png": "24dd44e0c6eb0ec99ca84ea1406032d0",
"assets/assets/images/img_most_beberuk.png": "8e0c15a415c7b8d87e046f4ee35847a3",
"assets/assets/images/img_most_plecik.png": "73d47d141067eff25ed087edaa2dc84e",
"assets/assets/images/img_nutrition.png": "99de481928c94ad80aa0ebccaaadcf8b",
"assets/assets/images/img_nyunatang.png": "9e8d2e5b522ccfe40f28553e5a2a8a8a",
"assets/assets/images/img_peserean.png": "9070c14a889bb506667eaf59f1b1d18d",
"assets/assets/images/img_plant.png": "5f858e6a0d66e28ec644e32b323cdc0c",
"assets/assets/images/img_platting.png": "5853510ead42aa66ec63fe393e48a785",
"assets/assets/images/img_plecing_kangkung1.png": "25a08abbe2066e73e77864cd08ca3373",
"assets/assets/images/img_plecing_kangkung2.png": "acdb04a9f53475c49ebc9b2acf9833fe",
"assets/assets/images/img_plecing_kangkung3.png": "b6181b46a37dd5dc5cde384e6f21c8ca",
"assets/assets/images/img_recipe.png": "84f8a500addda5a783f681fb03820dda",
"assets/assets/images/img_recipe_ayam.png": "04c8a09ad4e3b2c523192335cff95b88",
"assets/assets/images/img_restaurant2.png": "f308cd9d45c55b6c132456d67988843d",
"assets/assets/images/img_resto1.jpg": "1361c5a5c75463151ad301ffd0641d55",
"assets/assets/images/img_resto2.jpg": "998fb6bb6a989fe802bccd27665f6127",
"assets/assets/images/img_resto3.jpg": "d02a8f89e3125a7503eb01e1f5536363",
"assets/assets/images/img_resto4.jpg": "801c7020c3b439390a4e8ec5b59ac796",
"assets/assets/images/img_sate_bulayak3.png": "304403cf7caaf80652b686f8567b6edf",
"assets/assets/images/img_sate_rembiga1.png": "4d5fae154d410120d5649ade776e0f1d",
"assets/assets/images/img_sate_tanjung1.png": "219e73c903fb8383ff387669aae2b8d0",
"assets/assets/images/img_sate_tanjung2.png": "a51e65455580397a8eb59cc1907d18a4",
"assets/assets/images/img_tari1.png": "9a7d577048ae6e79bdfe1ab3fd2f1fc1",
"assets/assets/images/img_Tari2.png": "aa6e8aedf2443510726cec04b40fc3dd",
"assets/assets/images/img_tari3.png": "553211d7f6b82ca7b8f2c5b5c8e15ae4",
"assets/assets/images/img_tools.png": "1604fa8ce27f66d07b4b3f9efdaab978",
"assets/assets/images/img_traditional_dessert.png": "e651f37efeda3ee6c1ac976855e7929b",
"assets/assets/images/img_traditional_drink.png": "634c589f23d28bdd0e803c1aad8fe933",
"assets/assets/images/img_traditional_food.png": "b23934a82142e87ae771e2887a7c0a1d",
"assets/assets/images/img_village.png": "ba091243927e1383e6f3137e01d0dbec",
"assets/assets/images/ntb.jpg": "cc2d8c7e9d1e254b8443a2cb9472d422",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "4f157d71bb777313c8bf380424e099fd",
"assets/NOTICES": "bdb3f3a21464e2bbe785071db09b2acd",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
"assets/packages/fluttertoast/assets/toastify.css": "a85675050054f179444bc5ad70ffc635",
"assets/packages/fluttertoast/assets/toastify.js": "56e2c9cedd97f10e7e5f1cebd85d53e3",
"assets/packages/flutter_inappwebview/assets/t_rex_runner/t-rex.css": "5a8d0222407e388155d7d1395a75d5b9",
"assets/packages/flutter_inappwebview/assets/t_rex_runner/t-rex.html": "16911fcc170c8af1c5457940bd0bf055",
"assets/packages/youtube_player_flutter/assets/speedometer.webp": "50448630e948b5b3998ae5a5d112622b",
"assets/packages/youtube_player_iframe/assets/player.html": "dc7a0426386dc6fd0e4187079900aea8",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "738255d00768497e86aa4ca510cce1e1",
"canvaskit/canvaskit.js.symbols": "74a84c23f5ada42fe063514c587968c6",
"canvaskit/canvaskit.wasm": "9251bb81ae8464c4df3b072f84aa969b",
"canvaskit/chromium/canvaskit.js": "901bb9e28fac643b7da75ecfd3339f3f",
"canvaskit/chromium/canvaskit.js.symbols": "ee7e331f7f5bbf5ec937737542112372",
"canvaskit/chromium/canvaskit.wasm": "399e2344480862e2dfa26f12fa5891d7",
"canvaskit/skwasm.js": "5d4f9263ec93efeb022bb14a3881d240",
"canvaskit/skwasm.js.symbols": "c3c05bd50bdf59da8626bbe446ce65a3",
"canvaskit/skwasm.wasm": "4051bfc27ba29bf420d17aa0c3a98bce",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "383e55f7f3cce5be08fcf1f3881f585c",
"flutter_bootstrap.js": "ae818c98db03be72c08b61d734fbb57a",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"ic_icon.png": "cd9af02ae480dba801a6dd2d802cadd4",
"index.html": "1a7260c355b5639f76ae60d3d5ad4374",
"/": "1a7260c355b5639f76ae60d3d5ad4374",
"main.dart.js": "75be543ea904820b8972f16771bc2ef4",
"manifest.json": "a4bb3a88ef061a749d2d825343398d6b",
"version.json": "6e5d476cf3f4c18cb038acfc04e3bdcb"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
