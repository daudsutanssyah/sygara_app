'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "6c900854b88cecc8b2cf6d86dc98c12f",
"assets/AssetManifest.bin.json": "7858fd17d048d4cf9926c56d5f34d175",
"assets/AssetManifest.json": "a490d42d8677d67e457340561548b792",
"assets/assets/icon/ic-arrow-back.png": "4e6315028a4aa1c4820f643381f812c0",
"assets/assets/icon/ic-arrow.png": "60da7d638abffae1a81208c7de605bf0",
"assets/assets/icon/ic-cart-green.png": "c368db86439e76f9d8696b9514efda7c",
"assets/assets/icon/ic-cart.png": "02bf32880aa4574910ed815924536ce9",
"assets/assets/icon/ic-eye.png": "8eb500db272a317e92642eb167297f62",
"assets/assets/icon/ic-home-green.png": "8f069071294b37eaca6c67f65850f340",
"assets/assets/icon/ic-home.png": "979d4297b95be11a48e521741cac677f",
"assets/assets/icon/ic-minus.png": "a63fcc210de165bc42168f9e836f608a",
"assets/assets/icon/ic-notif.png": "5a445668172972572b0bdd8674555d57",
"assets/assets/icon/ic-pesanan-green.png": "7a284cc5a539e69b15327494ac5cc169",
"assets/assets/icon/ic-pesanan.png": "cdb1251455da5fcaba21519d50ac6fec",
"assets/assets/icon/ic-plus.png": "1825efbb1af8792d0856b1f8cded50aa",
"assets/assets/icon/ic-profil-green.png": "5c58ff124f6be849a64630b44008634d",
"assets/assets/icon/ic-profil.png": "4e8b7d23124596c0c13caf4e510dd198",
"assets/assets/img-apel.png": "9ab2404bb66be731f8b9c47081920791",
"assets/assets/img-banner.png": "284d078d4675831cd6278fb054829369",
"assets/assets/img-bayam.png": "ba89e55cb6ea65c7e8f9a4ee0647892b",
"assets/assets/img-brokoli.png": "e8212267a98c47b89b3bca0819ec487b",
"assets/assets/img-category-buah.png": "3dcf37a25632d6d68287ae8b63951b39",
"assets/assets/img-category-sayur.png": "0b55d6184ba755c9cebae5f1049ce4e3",
"assets/assets/img-empty.png": "58119006303470c44779c9f5e05655f0",
"assets/assets/img-jeruk.png": "f98e3bf8229b1de2333d0ebff889d32e",
"assets/assets/img-order.png": "0975088d5fc618054d03b24e89045393",
"assets/assets/img-pisang.png": "35057edaca8a6a88dae5426f1550e939",
"assets/assets/img-semangka.png": "3d283bb296a104da10b53ddd41a0a9f1",
"assets/assets/img-sukses.png": "fda07bf01b607ae728e0c5d82155b484",
"assets/assets/img-tomat.png": "0d8736e446bd41a28eb3a864baf559c9",
"assets/assets/img-wortel.png": "7c3c1c48883bf8b8410a0a1779847d35",
"assets/assets/logo-putih.png": "d7bb1bc7b2e05667bd051c696f0ccd42",
"assets/assets/logo.png": "3e0b3739c978f07d051e3d8634e0c4a6",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "82851190a91346ae825598b8c797f458",
"assets/NOTICES": "25fb45b27c656afd4059475054c695ca",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "140ccb7d34d0a55065fbd422b843add6",
"canvaskit/canvaskit.js.symbols": "58832fbed59e00d2190aa295c4d70360",
"canvaskit/canvaskit.wasm": "07b9f5853202304d3b0749d9306573cc",
"canvaskit/chromium/canvaskit.js": "5e27aae346eee469027c80af0751d53d",
"canvaskit/chromium/canvaskit.js.symbols": "193deaca1a1424049326d4a91ad1d88d",
"canvaskit/chromium/canvaskit.wasm": "24c77e750a7fa6d474198905249ff506",
"canvaskit/skwasm.js": "1ef3ea3a0fec4569e5d531da25f34095",
"canvaskit/skwasm.js.symbols": "0088242d10d7e7d6d2649d1fe1bda7c1",
"canvaskit/skwasm.wasm": "264db41426307cfc7fa44b95a7772109",
"canvaskit/skwasm_heavy.js": "413f5b2b2d9345f37de148e2544f584f",
"canvaskit/skwasm_heavy.js.symbols": "3c01ec03b5de6d62c34e17014d1decd3",
"canvaskit/skwasm_heavy.wasm": "8034ad26ba2485dab2fd49bdd786837b",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "888483df48293866f9f41d3d9274a779",
"flutter_bootstrap.js": "32f8daa2b26c766188a711a56c3c5f41",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "336b3681f97ac51e6d501ed09382ce76",
"/": "336b3681f97ac51e6d501ed09382ce76",
"main.dart.js": "384e2b88157323f1fb7141406f97c8ec",
"manifest.json": "331a117fd59d085ee482a67f1daa48a9",
"version.json": "af84a24b554790105ac8c424b7a1365d"};
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
