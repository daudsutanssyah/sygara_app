'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {".git/COMMIT_EDITMSG": "857a705949bccddab41f6a6b8b1e4f8a",
".git/config": "f15c1cc4ab5141af3f1c86834e8586f2",
".git/description": "a0a7c3fff21f2aea3cfa1d0316dd816c",
".git/HEAD": "5ab7a4355e4c959b0c5c008f202f51ec",
".git/hooks/applypatch-msg.sample": "ce562e08d8098926a3862fc6e7905199",
".git/hooks/commit-msg.sample": "579a3c1e12a1e74a98169175fb913012",
".git/hooks/fsmonitor-watchman.sample": "a0b2633a2c8e97501610bd3f73da66fc",
".git/hooks/post-update.sample": "2b7ea5cee3c49ff53d41e00785eb974c",
".git/hooks/pre-applypatch.sample": "054f9ffb8bfe04a599751cc757226dda",
".git/hooks/pre-commit.sample": "5029bfab85b1c39281aa9697379ea444",
".git/hooks/pre-merge-commit.sample": "39cb268e2a85d436b9eb6f47614c3cbc",
".git/hooks/pre-push.sample": "2c642152299a94e05ea26eae11993b13",
".git/hooks/pre-rebase.sample": "56e45f2bcbc8226d2b4200f7c46371bf",
".git/hooks/pre-receive.sample": "2ad18ec82c20af7b5926ed9cea6aeedd",
".git/hooks/prepare-commit-msg.sample": "2b5c047bdb474555e1787db32b2d2fc5",
".git/hooks/push-to-checkout.sample": "c7ab00c7784efeadad3ae9b228d4b4db",
".git/hooks/sendemail-validate.sample": "4d67df3a8d5c98cb8565c07e42be0b04",
".git/hooks/update.sample": "647ae13c682f7827c22f5fc08a03674e",
".git/index": "6b314b48c898d5b763be23cd3b60bc97",
".git/info/exclude": "036208b4a1ab4a235d75c181e685e5a3",
".git/logs/HEAD": "aa80a9c3c77c46164360ad63fb3d49af",
".git/logs/refs/heads/gh-pages": "90e28ca54c138efc5898d30a92862e73",
".git/logs/refs/remotes/origin/gh-pages": "5432e05bbfa5674fa903113899eed7fc",
".git/objects/02/1d4f3579879a4ac147edbbd8ac2d91e2bc7323": "9e9721befbee4797263ad5370cd904ff",
".git/objects/09/263374fbc0c9e02f681454452ea279ecd048b0": "7c1900972b6f55ed63cc15a0e5bf6da2",
".git/objects/0f/4a4435a0413ca86fa26f45458391294f0b78f5": "5ccc45b0d173c2fbff34512286b8dbb1",
".git/objects/10/70e443b54ec79f6d32739112bc87a75ab25cfb": "ff204a985471ac4ac62d6d833f13a206",
".git/objects/11/66dfe02f95d2f14abd8daa35b7cd61820ca885": "88f61dc1b70767dc612755d9e2dda681",
".git/objects/12/2dd2acb3ffe163758ef5fb61d8440908adbaec": "8783b7073486bad94e324870c874506e",
".git/objects/19/7d5e0da1bd0d4d28a9d158c00f0b5be6fbe657": "26d75086e07bdd6a89559ea250d41c54",
".git/objects/1a/aaa100c5ec47ddf392276cbf9be92d3699e00f": "c2c52845ec2c674594671e97b5754c51",
".git/objects/1a/df75208f4fe8de2258ed83944e7716941a1021": "194ac2acdbe37d5714d493b3f8234d74",
".git/objects/20/3a3ff5cc524ede7e585dff54454bd63a1b0f36": "4b23a88a964550066839c18c1b5c461e",
".git/objects/22/9fb0ce50f75c9dab7ac4112b762d4e92775832": "e232537f041d560b6cc5d5c9434b2da6",
".git/objects/28/97f4dc5b1ee7258a6d48e4b95eb3741427f13f": "6297750e23ccfaab6c4a11772192d83c",
".git/objects/29/f22f56f0c9903bf90b2a78ef505b36d89a9725": "e85914d97d264694217ae7558d414e81",
".git/objects/30/65567fa71d99d160654f2fb502fb7778e20cce": "a46229b5a5a3d18bd51022e483861df6",
".git/objects/34/c780da54a189bc20ead21c3a46636c19104c43": "867b76bd3db1df9e0fd231626dfc9341",
".git/objects/36/3df666b52aab5dc3859ace26519b54131f5cbc": "445aaeb9cec732238d5fe4258b6cebed",
".git/objects/39/6a61f825a398b50be2583e06ff8b4a3783dac4": "02eb9ebd965c5a0a7c694cc813a620a5",
".git/objects/3a/8eb755a9752e69e1117793a267059d4c79d2a6": "40421bfbf96e6b82126b5baf624ba551",
".git/objects/46/2e12408e2cbd4e051bcf680870871e7f64983e": "de10c207481fc946d5d4059678737f34",
".git/objects/46/4ab5882a2234c39b1a4dbad5feba0954478155": "2e52a767dc04391de7b4d0beb32e7fc4",
".git/objects/4d/bf9da7bcce5387354fe394985b98ebae39df43": "534c022f4a0845274cbd61ff6c9c9c33",
".git/objects/4f/fbe6ec4693664cb4ff395edf3d949bd4607391": "2beb9ca6c799e0ff64e0ad79f9e55e69",
".git/objects/59/f87bc0980ec2b111aa9aa23ebcdd082a0c7086": "b26fc1eb184b1ab203d5a15b2d25b92b",
".git/objects/5b/8ad1306b5d7b4de0ceccbc7e6aa3d59af67a98": "dd4b15bf3696de14fa2f7b6e7c96f570",
".git/objects/5d/d85456a98774a48d9fceadec3ef9f48d664067": "e8306de090c01328c12b845075a0c371",
".git/objects/5d/f2ba11b7e96c7ce71ec019d0560c30385189d4": "fbacc07d1a06b444c1e1e6e3892c6cc1",
".git/objects/67/958dfd50be9715da9e63d2451e499b0a90d25c": "d05a5ccad2fe1a2cd435a7e9160a7a86",
".git/objects/69/892208ce456080cdcb3270fc18a1f3b2a115ec": "50b513803b6a2bcd226397fe11c53b6d",
".git/objects/6a/2bc8506a95ff29b43fb1dbd141e867d24ccf79": "7f56465cbe60136ed0cd04ceebc7b429",
".git/objects/6b/9862a1351012dc0f337c9ee5067ed3dbfbb439": "85896cd5fba127825eb58df13dfac82b",
".git/objects/6c/c276c99754728e8b602abeb5c67cffcebb1001": "b5d5759387ccf26d539fa68df2e4e002",
".git/objects/72/eb6d0c12498118f346348051a992a814ca5f5d": "c12e458853ed84684db5d8f2b6f0272c",
".git/objects/7a/6c1911dddaea52e2dbffc15e45e428ec9a9915": "f1dee6885dc6f71f357a8e825bda0286",
".git/objects/84/b8fcf683c70c978e67e8c7d10ac3c7e7c4f6ac": "1e4f904349c5d0093fd661acac6205a9",
".git/objects/88/b2a6adbfa9a49060de22ab77dc6ab9f7ae1165": "e979b077f4f41666e371d7e819e35ffc",
".git/objects/88/cfd48dff1169879ba46840804b412fe02fefd6": "e42aaae6a4cbfbc9f6326f1fa9e3380c",
".git/objects/8a/aa46ac1ae21512746f852a42ba87e4165dfdd1": "1d8820d345e38b30de033aa4b5a23e7b",
".git/objects/8b/2a77c68d432bcbeb8a08446acad3c2b69a5f1d": "60685b7be98957b50bec8fd3f6c6f443",
".git/objects/8f/667c73211b45a8d1aa60414e38c5df9f50e138": "e7252e4e7f60b7d96b0777983a4a3323",
".git/objects/92/bb854ae01e8a8c90ccaa07f4d16305f24f6628": "31c86e9598882a3253e95cebcc07fc94",
".git/objects/98/0d49437042d93ffa850a60d02cef584a35a85c": "8e18e4c1b6c83800103ff097cc222444",
".git/objects/9b/3ef5f169177a64f91eafe11e52b58c60db3df2": "91d370e4f73d42e0a622f3e44af9e7b1",
".git/objects/9e/3b4630b3b8461ff43c272714e00bb47942263e": "accf36d08c0545fa02199021e5902d52",
".git/objects/9e/90af3fbb2367b0c1e11d7fac310c761aec0690": "49531c1582c19ead5a26ab5dd74005b5",
".git/objects/9f/5bba0a060ed658e15af2491417f7c5e91e9a08": "2190b17f728d725f2591fe82c091686b",
".git/objects/a0/38906ad84f368aaef65ce02cadf02b913653df": "64a474001f5ccf8f79389d432ef06318",
".git/objects/a1/536095ed14d006e5e2a00f8129396161c2b4d8": "3b89ccbc71e693bdac19f49ea77f8f53",
".git/objects/b6/b8806f5f9d33389d53c2868e6ea1aca7445229": "b14016efdbcda10804235f3a45562bbf",
".git/objects/b7/49bfef07473333cf1dd31e9eed89862a5d52aa": "36b4020dca303986cad10924774fb5dc",
".git/objects/b9/2a0d854da9a8f73216c4a0ef07a0f0a44e4373": "f62d1eb7f51165e2a6d2ef1921f976f3",
".git/objects/ba/138aac2703b87b821ed4a3eef74d59f4061548": "3e9498566b6bd7299cbe9f7d73187802",
".git/objects/be/7ae1cae5baf6794d9b083be9ae1cbc513bde66": "4a5a43af616f75fc00eedc67b6483cc9",
".git/objects/c1/a6cfeec60a99230354bdb60e4d15badf9daf9d": "4bc503a85c14510515d1b8cf2c20ea32",
".git/objects/c3/b50e4f90f09f1ca6448af412f90eb92956d746": "425fa691ec14c6ac6de2d681add9985b",
".git/objects/c4/016f7d68c0d70816a0c784867168ffa8f419e1": "fdf8b8a8484741e7a3a558ed9d22f21d",
".git/objects/ca/3bba02c77c467ef18cffe2d4c857e003ad6d5d": "316e3d817e75cf7b1fd9b0226c088a43",
".git/objects/ca/a2ba84051e9fabe77c3a3ea85aa2fe27111d6f": "6d2bf95c2bbdc1d94391d17c7b83ba73",
".git/objects/ce/358dbd178041643f6760b29129821e58d4d7a7": "01e5a76264b9f347a0d706ca328e6bf1",
".git/objects/d4/3532a2348cc9c26053ddb5802f0e5d4b8abc05": "3dad9b209346b1723bb2cc68e7e42a44",
".git/objects/d4/c3273edaf423fc268627c22cb553ab447252bc": "30547a80721e86eb373d11491d724de6",
".git/objects/d6/795a0213d9adc835f38a65407bbf1dfd1132fb": "94f60a2ff9a1476a16bdbfb722c9815e",
".git/objects/d6/9c56691fbdb0b7efa65097c7cc1edac12a6d3e": "868ce37a3a78b0606713733248a2f579",
".git/objects/d7/7cfefdbe249b8bf90ce8244ed8fc1732fe8f73": "9c0876641083076714600718b0dab097",
".git/objects/d8/4e522fb813e69d743779a7c0b9f264ff1c4a91": "d1640f9685884973989b754a9eeeab3c",
".git/objects/dd/6746f2771cb4c23d706ef0bcd1eb17ee9cf522": "71e145c09fb5da775e1e58cd45cb4db0",
".git/objects/e3/4b447d5ccf33b90dae7cb6838c53089dbc4ef8": "5e96ca9b02a744bcd2868445cbac0353",
".git/objects/e3/e9ee754c75ae07cc3d19f9b8c1e656cc4946a1": "14066365125dcce5aec8eb1454f0d127",
".git/objects/e9/6d04b62a5649e5299349de2b9d0e8957cdcef9": "d4639dcaef53db1707d8ab928f37ef07",
".git/objects/e9/94225c71c957162e2dcc06abe8295e482f93a2": "2eed33506ed70a5848a0b06f5b754f2c",
".git/objects/eb/9b4d76e525556d5d89141648c724331630325d": "37c0954235cbe27c4d93e74fe9a578ef",
".git/objects/ed/b55d4deb8363b6afa65df71d1f9fd8c7787f22": "886ebb77561ff26a755e09883903891d",
".git/objects/ed/e32d2362922a785c880bbe82dda951512f053c": "040371b34b568d5765472e0759035b59",
".git/objects/f0/1864d6685df8c680747e23e632890592fa7425": "300dab497e8ae2252d61b6ba976ccfb7",
".git/objects/f0/73c1bfbb966c8929dbe3c72631269d4c567496": "3263068a98fd4804267c806ca0562e5f",
".git/objects/f2/04823a42f2d890f945f70d88b8e2d921c6ae26": "6b47f314ffc35cf6a1ced3208ecc857d",
".git/objects/f2/21e3879128460e23cbb8fc6e562d2cdc1e7347": "d7dc91cbf87f9bb315d4291de7580255",
".git/objects/f5/72b90ef57ee79b82dd846c6871359a7cb10404": "e68f5265f0bb82d792ff536dcb99d803",
".git/objects/fd/638cc625aa06beccbbc73f0f465366435be54c": "139c07d86b646631ab39beb40d8c2ea5",
".git/objects/fe/3b987e61ed346808d9aa023ce3073530ad7426": "dc7db10bf25046b27091222383ede515",
".git/refs/heads/gh-pages": "3c6211cc052336b0be51cb43ab153f99",
".git/refs/remotes/origin/gh-pages": "3c6211cc052336b0be51cb43ab153f99",
"assets/AssetManifest.bin": "6c900854b88cecc8b2cf6d86dc98c12f",
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
"assets/fonts/MaterialIcons-Regular.otf": "5c6ea192e855ecca61c4e1ee0f8fce9c",
"assets/NOTICES": "472af9bb4ed18743ad8cae1cce01908b",
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
"demo.html": "d8c311253a329b17a3a36d6b11057ae7",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "888483df48293866f9f41d3d9274a779",
"flutter_bootstrap.js": "12e3e006882be5d3ca7e8f045ad46520",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "336b3681f97ac51e6d501ed09382ce76",
"/": "336b3681f97ac51e6d501ed09382ce76",
"main.dart.js": "53afc7bfae9e239a7064ac6edf4b30d5",
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
