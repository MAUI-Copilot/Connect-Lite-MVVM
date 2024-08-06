; ModuleID = 'marshal_methods.armeabi-v7a.ll'
source_filename = "marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [333 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [660 x i32] [
	i32 2616222, ; 0: System.Net.NetworkInformation.dll => 0x27eb9e => 68
	i32 10166715, ; 1: System.Net.NameResolution.dll => 0x9b21bb => 67
	i32 15721112, ; 2: System.Runtime.Intrinsics.dll => 0xefe298 => 108
	i32 32687329, ; 3: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 247
	i32 34715100, ; 4: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 284
	i32 34839235, ; 5: System.IO.FileSystem.DriveInfo => 0x2139ac3 => 48
	i32 39485524, ; 6: System.Net.WebSockets.dll => 0x25a8054 => 80
	i32 42639949, ; 7: System.Threading.Thread => 0x28aa24d => 145
	i32 66541672, ; 8: System.Diagnostics.StackTrace => 0x3f75868 => 30
	i32 67008169, ; 9: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 325
	i32 68219467, ; 10: System.Security.Cryptography.Primitives => 0x410f24b => 124
	i32 72070932, ; 11: Microsoft.Maui.Graphics.dll => 0x44bb714 => 189
	i32 82292897, ; 12: System.Runtime.CompilerServices.VisualC.dll => 0x4e7b0a1 => 102
	i32 101534019, ; 13: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 266
	i32 117431740, ; 14: System.Runtime.InteropServices => 0x6ffddbc => 107
	i32 120558881, ; 15: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 266
	i32 122350210, ; 16: System.Threading.Channels.dll => 0x74aea82 => 139
	i32 134690465, ; 17: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x80736a1 => 288
	i32 142721839, ; 18: System.Net.WebHeaderCollection => 0x881c32f => 77
	i32 149972175, ; 19: System.Security.Cryptography.Primitives.dll => 0x8f064cf => 124
	i32 159306688, ; 20: System.ComponentModel.Annotations => 0x97ed3c0 => 13
	i32 165246403, ; 21: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 221
	i32 176265551, ; 22: System.ServiceProcess => 0xa81994f => 132
	i32 182336117, ; 23: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 268
	i32 184328833, ; 24: System.ValueTuple.dll => 0xafca281 => 151
	i32 195452805, ; 25: vi/Microsoft.Maui.Controls.resources.dll => 0xba65f85 => 322
	i32 199333315, ; 26: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xbe195c3 => 323
	i32 205061960, ; 27: System.ComponentModel => 0xc38ff48 => 18
	i32 209399409, ; 28: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 219
	i32 220171995, ; 29: System.Diagnostics.Debug => 0xd1f8edb => 26
	i32 230216969, ; 30: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 241
	i32 230752869, ; 31: Microsoft.CSharp.dll => 0xdc10265 => 1
	i32 231409092, ; 32: System.Linq.Parallel => 0xdcb05c4 => 59
	i32 231814094, ; 33: System.Globalization => 0xdd133ce => 42
	i32 246610117, ; 34: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 91
	i32 261689757, ; 35: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 224
	i32 266337479, ; 36: Xamarin.Google.Guava.FailureAccess.dll => 0xfdffcc7 => 283
	i32 276479776, ; 37: System.Threading.Timer.dll => 0x107abf20 => 147
	i32 278686392, ; 38: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 243
	i32 280482487, ; 39: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 240
	i32 280992041, ; 40: cs/Microsoft.Maui.Controls.resources.dll => 0x10bf9929 => 294
	i32 291076382, ; 41: System.IO.Pipes.AccessControl.dll => 0x1159791e => 54
	i32 293579439, ; 42: ExoPlayer.Dash.dll => 0x117faaaf => 195
	i32 298918909, ; 43: System.Net.Ping.dll => 0x11d123fd => 69
	i32 317674968, ; 44: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 322
	i32 318968648, ; 45: Xamarin.AndroidX.Activity.dll => 0x13031348 => 210
	i32 321597661, ; 46: System.Numerics => 0x132b30dd => 83
	i32 336156722, ; 47: ja/Microsoft.Maui.Controls.resources.dll => 0x14095832 => 307
	i32 342366114, ; 48: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 242
	i32 356389973, ; 49: it/Microsoft.Maui.Controls.resources.dll => 0x153e1455 => 306
	i32 360082299, ; 50: System.ServiceModel.Web => 0x15766b7b => 131
	i32 367780167, ; 51: System.IO.Pipes => 0x15ebe147 => 55
	i32 374914964, ; 52: System.Transactions.Local => 0x1658bf94 => 149
	i32 375677976, ; 53: System.Net.ServicePoint.dll => 0x16646418 => 74
	i32 379916513, ; 54: System.Threading.Thread.dll => 0x16a510e1 => 145
	i32 385762202, ; 55: System.Memory.dll => 0x16fe439a => 62
	i32 392610295, ; 56: System.Threading.ThreadPool.dll => 0x1766c1f7 => 146
	i32 395744057, ; 57: _Microsoft.Android.Resource.Designer => 0x17969339 => 329
	i32 403441872, ; 58: WindowsBase => 0x180c08d0 => 165
	i32 435591531, ; 59: sv/Microsoft.Maui.Controls.resources.dll => 0x19f6996b => 318
	i32 441335492, ; 60: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 225
	i32 442565967, ; 61: System.Collections => 0x1a61054f => 12
	i32 450948140, ; 62: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 238
	i32 451504562, ; 63: System.Security.Cryptography.X509Certificates => 0x1ae969b2 => 125
	i32 452127346, ; 64: ExoPlayer.Database.dll => 0x1af2ea72 => 196
	i32 456227837, ; 65: System.Web.HttpUtility.dll => 0x1b317bfd => 152
	i32 459347974, ; 66: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 113
	i32 465846621, ; 67: mscorlib => 0x1bc4415d => 166
	i32 469710990, ; 68: System.dll => 0x1bff388e => 164
	i32 476646585, ; 69: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 240
	i32 486930444, ; 70: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 253
	i32 498788369, ; 71: System.ObjectModel => 0x1dbae811 => 84
	i32 500358224, ; 72: id/Microsoft.Maui.Controls.resources.dll => 0x1dd2dc50 => 305
	i32 503918385, ; 73: fi/Microsoft.Maui.Controls.resources.dll => 0x1e092f31 => 299
	i32 513247710, ; 74: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 183
	i32 526420162, ; 75: System.Transactions.dll => 0x1f6088c2 => 150
	i32 527452488, ; 76: Xamarin.Kotlin.StdLib.Jdk7 => 0x1f704948 => 288
	i32 530272170, ; 77: System.Linq.Queryable => 0x1f9b4faa => 60
	i32 539058512, ; 78: Microsoft.Extensions.Logging => 0x20216150 => 179
	i32 540030774, ; 79: System.IO.FileSystem.dll => 0x20303736 => 51
	i32 545304856, ; 80: System.Runtime.Extensions => 0x2080b118 => 103
	i32 546455878, ; 81: System.Runtime.Serialization.Xml => 0x20924146 => 114
	i32 549171840, ; 82: System.Globalization.Calendars => 0x20bbb280 => 40
	i32 557405415, ; 83: Jsr305Binding => 0x213954e7 => 279
	i32 569601784, ; 84: Xamarin.AndroidX.Window.Extensions.Core.Core => 0x21f36ef8 => 277
	i32 577335427, ; 85: System.Security.Cryptography.Cng => 0x22697083 => 120
	i32 592146354, ; 86: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x234b6fb2 => 313
	i32 601371474, ; 87: System.IO.IsolatedStorage.dll => 0x23d83352 => 52
	i32 605376203, ; 88: System.IO.Compression.FileSystem => 0x24154ecb => 44
	i32 613668793, ; 89: System.Security.Cryptography.Algorithms => 0x2493d7b9 => 119
	i32 626887733, ; 90: ExoPlayer.Container => 0x255d8c35 => 193
	i32 627609679, ; 91: Xamarin.AndroidX.CustomView => 0x2568904f => 230
	i32 627931235, ; 92: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 311
	i32 639843206, ; 93: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x26233b86 => 236
	i32 643868501, ; 94: System.Net => 0x2660a755 => 81
	i32 662205335, ; 95: System.Text.Encodings.Web.dll => 0x27787397 => 136
	i32 663517072, ; 96: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 273
	i32 666292255, ; 97: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 217
	i32 672442732, ; 98: System.Collections.Concurrent => 0x2814a96c => 8
	i32 683518922, ; 99: System.Net.Security => 0x28bdabca => 73
	i32 688181140, ; 100: ca/Microsoft.Maui.Controls.resources.dll => 0x2904cf94 => 293
	i32 690569205, ; 101: System.Xml.Linq.dll => 0x29293ff5 => 155
	i32 691348768, ; 102: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 290
	i32 693804605, ; 103: System.Windows => 0x295a9e3d => 154
	i32 699345723, ; 104: System.Reflection.Emit => 0x29af2b3b => 92
	i32 700284507, ; 105: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 285
	i32 700358131, ; 106: System.IO.Compression.ZipFile => 0x29be9df3 => 45
	i32 706645707, ; 107: ko/Microsoft.Maui.Controls.resources.dll => 0x2a1e8ecb => 308
	i32 709557578, ; 108: de/Microsoft.Maui.Controls.resources.dll => 0x2a4afd4a => 296
	i32 720511267, ; 109: Xamarin.Kotlin.StdLib.Jdk8 => 0x2af22123 => 289
	i32 722857257, ; 110: System.Runtime.Loader.dll => 0x2b15ed29 => 109
	i32 735137430, ; 111: System.Security.SecureString.dll => 0x2bd14e96 => 129
	i32 752232764, ; 112: System.Diagnostics.Contracts.dll => 0x2cd6293c => 25
	i32 755313932, ; 113: Xamarin.Android.Glide.Annotations.dll => 0x2d052d0c => 207
	i32 759454413, ; 114: System.Net.Requests => 0x2d445acd => 72
	i32 762598435, ; 115: System.IO.Pipes.dll => 0x2d745423 => 55
	i32 775507847, ; 116: System.IO.Compression => 0x2e394f87 => 46
	i32 777317022, ; 117: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 317
	i32 789151979, ; 118: Microsoft.Extensions.Options => 0x2f0980eb => 182
	i32 790371945, ; 119: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0x2f1c1e69 => 231
	i32 804715423, ; 120: System.Data.Common => 0x2ff6fb9f => 22
	i32 807930345, ; 121: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 0x302809e9 => 245
	i32 812693636, ; 122: ExoPlayer.Dash => 0x3070b884 => 195
	i32 823281589, ; 123: System.Private.Uri.dll => 0x311247b5 => 86
	i32 823549463, ; 124: MVVM_Login => 0x31165e17 => 0
	i32 830298997, ; 125: System.IO.Compression.Brotli => 0x317d5b75 => 43
	i32 832635846, ; 126: System.Xml.XPath.dll => 0x31a103c6 => 160
	i32 834051424, ; 127: System.Net.Quic => 0x31b69d60 => 71
	i32 843511501, ; 128: Xamarin.AndroidX.Print => 0x3246f6cd => 259
	i32 873119928, ; 129: Microsoft.VisualBasic => 0x340ac0b8 => 3
	i32 877678880, ; 130: System.Globalization.dll => 0x34505120 => 42
	i32 878954865, ; 131: System.Net.Http.Json => 0x3463c971 => 63
	i32 904024072, ; 132: System.ComponentModel.Primitives.dll => 0x35e25008 => 16
	i32 911108515, ; 133: System.IO.MemoryMappedFiles.dll => 0x364e69a3 => 53
	i32 915551335, ; 134: ExoPlayer.Ext.MediaSession => 0x36923467 => 201
	i32 926902833, ; 135: tr/Microsoft.Maui.Controls.resources.dll => 0x373f6a31 => 320
	i32 928116545, ; 136: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 284
	i32 939704684, ; 137: ExoPlayer.Extractor => 0x3802c16c => 199
	i32 952186615, ; 138: System.Runtime.InteropServices.JavaScript.dll => 0x38c136f7 => 105
	i32 956575887, ; 139: Xamarin.Kotlin.StdLib.Jdk8.dll => 0x3904308f => 289
	i32 966729478, ; 140: Xamarin.Google.Crypto.Tink.Android => 0x399f1f06 => 280
	i32 967690846, ; 141: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 242
	i32 974195181, ; 142: Plugin.Maui.SegmentedControl.dll => 0x3a1109ed => 190
	i32 975236339, ; 143: System.Diagnostics.Tracing => 0x3a20ecf3 => 34
	i32 975874589, ; 144: System.Xml.XDocument => 0x3a2aaa1d => 158
	i32 986514023, ; 145: System.Private.DataContractSerialization.dll => 0x3acd0267 => 85
	i32 987214855, ; 146: System.Diagnostics.Tools => 0x3ad7b407 => 32
	i32 992768348, ; 147: System.Collections.dll => 0x3b2c715c => 12
	i32 994442037, ; 148: System.IO.FileSystem => 0x3b45fb35 => 51
	i32 1001831731, ; 149: System.IO.UnmanagedMemoryStream.dll => 0x3bb6bd33 => 56
	i32 1012816738, ; 150: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 263
	i32 1019214401, ; 151: System.Drawing => 0x3cbffa41 => 36
	i32 1028013380, ; 152: ExoPlayer.UI.dll => 0x3d463d44 => 205
	i32 1028951442, ; 153: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 178
	i32 1029334545, ; 154: da/Microsoft.Maui.Controls.resources.dll => 0x3d5a6611 => 295
	i32 1031528504, ; 155: Xamarin.Google.ErrorProne.Annotations.dll => 0x3d7be038 => 281
	i32 1035644815, ; 156: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 215
	i32 1036536393, ; 157: System.Drawing.Primitives.dll => 0x3dc84a49 => 35
	i32 1044663988, ; 158: System.Linq.Expressions.dll => 0x3e444eb4 => 58
	i32 1052210849, ; 159: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 249
	i32 1067306892, ; 160: GoogleGson => 0x3f9dcf8c => 174
	i32 1082857460, ; 161: System.ComponentModel.TypeConverter => 0x408b17f4 => 17
	i32 1084122840, ; 162: Xamarin.Kotlin.StdLib => 0x409e66d8 => 286
	i32 1098259244, ; 163: System => 0x41761b2c => 164
	i32 1118262833, ; 164: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 308
	i32 1121599056, ; 165: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 0x42da3e50 => 248
	i32 1127624469, ; 166: Microsoft.Extensions.Logging.Debug => 0x43362f15 => 181
	i32 1149092582, ; 167: Xamarin.AndroidX.Window => 0x447dc2e6 => 276
	i32 1151313727, ; 168: ExoPlayer.Rtsp => 0x449fa73f => 202
	i32 1168523401, ; 169: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 314
	i32 1170634674, ; 170: System.Web.dll => 0x45c677b2 => 153
	i32 1175144683, ; 171: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 272
	i32 1178241025, ; 172: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 257
	i32 1203215381, ; 173: pl/Microsoft.Maui.Controls.resources.dll => 0x47b79c15 => 312
	i32 1204270330, ; 174: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 217
	i32 1208641965, ; 175: System.Diagnostics.Process => 0x480a69ad => 29
	i32 1219128291, ; 176: System.IO.IsolatedStorage => 0x48aa6be3 => 52
	i32 1234928153, ; 177: nb/Microsoft.Maui.Controls.resources.dll => 0x499b8219 => 310
	i32 1243150071, ; 178: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 0x4a18f6f7 => 277
	i32 1253011324, ; 179: Microsoft.Win32.Registry => 0x4aaf6f7c => 5
	i32 1260983243, ; 180: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 294
	i32 1263886435, ; 181: Xamarin.Google.Guava.dll => 0x4b556063 => 282
	i32 1264511973, ; 182: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 267
	i32 1267360935, ; 183: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 271
	i32 1273260888, ; 184: Xamarin.AndroidX.Collection.Ktx => 0x4be46b58 => 222
	i32 1275534314, ; 185: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 290
	i32 1278448581, ; 186: Xamarin.AndroidX.Annotation.Jvm => 0x4c3393c5 => 214
	i32 1293217323, ; 187: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 233
	i32 1309188875, ; 188: System.Private.DataContractSerialization => 0x4e08a30b => 85
	i32 1309209905, ; 189: ExoPlayer.DataSource => 0x4e08f531 => 197
	i32 1322716291, ; 190: Xamarin.AndroidX.Window.dll => 0x4ed70c83 => 276
	i32 1324164729, ; 191: System.Linq => 0x4eed2679 => 61
	i32 1335329327, ; 192: System.Runtime.Serialization.Json.dll => 0x4f97822f => 112
	i32 1364015309, ; 193: System.IO => 0x514d38cd => 57
	i32 1373134921, ; 194: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 324
	i32 1376866003, ; 195: Xamarin.AndroidX.SavedState => 0x52114ed3 => 263
	i32 1379779777, ; 196: System.Resources.ResourceManager => 0x523dc4c1 => 99
	i32 1395857551, ; 197: Xamarin.AndroidX.Media.dll => 0x5333188f => 254
	i32 1402170036, ; 198: System.Configuration.dll => 0x53936ab4 => 19
	i32 1406073936, ; 199: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 226
	i32 1406299041, ; 200: Xamarin.Google.Guava.FailureAccess => 0x53d26ba1 => 283
	i32 1408764838, ; 201: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 111
	i32 1411638395, ; 202: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 101
	i32 1422545099, ; 203: System.Runtime.CompilerServices.VisualC => 0x54ca50cb => 102
	i32 1430672901, ; 204: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 292
	i32 1434145427, ; 205: System.Runtime.Handles => 0x557b5293 => 104
	i32 1435222561, ; 206: Xamarin.Google.Crypto.Tink.Android.dll => 0x558bc221 => 280
	i32 1439761251, ; 207: System.Net.Quic.dll => 0x55d10363 => 71
	i32 1452070440, ; 208: System.Formats.Asn1.dll => 0x568cd628 => 38
	i32 1453312822, ; 209: System.Diagnostics.Tools.dll => 0x569fcb36 => 32
	i32 1457743152, ; 210: System.Runtime.Extensions.dll => 0x56e36530 => 103
	i32 1458022317, ; 211: System.Net.Security.dll => 0x56e7a7ad => 73
	i32 1461004990, ; 212: es\Microsoft.Maui.Controls.resources => 0x57152abe => 298
	i32 1461234159, ; 213: System.Collections.Immutable.dll => 0x5718a9ef => 9
	i32 1461719063, ; 214: System.Security.Cryptography.OpenSsl => 0x57201017 => 123
	i32 1462112819, ; 215: System.IO.Compression.dll => 0x57261233 => 46
	i32 1469204771, ; 216: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 216
	i32 1470490898, ; 217: Microsoft.Extensions.Primitives => 0x57a5e912 => 183
	i32 1479771757, ; 218: System.Collections.Immutable => 0x5833866d => 9
	i32 1480156764, ; 219: ExoPlayer.DataSource.dll => 0x5839665c => 197
	i32 1480492111, ; 220: System.IO.Compression.Brotli.dll => 0x583e844f => 43
	i32 1487239319, ; 221: Microsoft.Win32.Primitives => 0x58a57897 => 4
	i32 1490025113, ; 222: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 0x58cffa99 => 264
	i32 1493001747, ; 223: hi/Microsoft.Maui.Controls.resources.dll => 0x58fd6613 => 302
	i32 1514721132, ; 224: el/Microsoft.Maui.Controls.resources.dll => 0x5a48cf6c => 297
	i32 1536373174, ; 225: System.Diagnostics.TextWriterTraceListener => 0x5b9331b6 => 31
	i32 1543031311, ; 226: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 138
	i32 1543355203, ; 227: System.Reflection.Emit.dll => 0x5bfdbb43 => 92
	i32 1550322496, ; 228: System.Reflection.Extensions.dll => 0x5c680b40 => 93
	i32 1551623176, ; 229: sk/Microsoft.Maui.Controls.resources.dll => 0x5c7be408 => 317
	i32 1565862583, ; 230: System.IO.FileSystem.Primitives => 0x5d552ab7 => 49
	i32 1566207040, ; 231: System.Threading.Tasks.Dataflow.dll => 0x5d5a6c40 => 141
	i32 1573704789, ; 232: System.Runtime.Serialization.Json => 0x5dccd455 => 112
	i32 1580037396, ; 233: System.Threading.Overlapped => 0x5e2d7514 => 140
	i32 1582372066, ; 234: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 232
	i32 1592978981, ; 235: System.Runtime.Serialization.dll => 0x5ef2ee25 => 115
	i32 1597949149, ; 236: Xamarin.Google.ErrorProne.Annotations => 0x5f3ec4dd => 281
	i32 1601112923, ; 237: System.Xml.Serialization => 0x5f6f0b5b => 157
	i32 1603525486, ; 238: Microsoft.Maui.Controls.HotReload.Forms.dll => 0x5f93db6e => 326
	i32 1604827217, ; 239: System.Net.WebClient => 0x5fa7b851 => 76
	i32 1618516317, ; 240: System.Net.WebSockets.Client.dll => 0x6078995d => 79
	i32 1622152042, ; 241: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 252
	i32 1622358360, ; 242: System.Dynamic.Runtime => 0x60b33958 => 37
	i32 1624863272, ; 243: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 275
	i32 1635184631, ; 244: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x6176eff7 => 236
	i32 1636350590, ; 245: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 229
	i32 1638652436, ; 246: CommunityToolkit.Maui.MediaElement => 0x61abda14 => 173
	i32 1639515021, ; 247: System.Net.Http.dll => 0x61b9038d => 64
	i32 1639986890, ; 248: System.Text.RegularExpressions => 0x61c036ca => 138
	i32 1641389582, ; 249: System.ComponentModel.EventBasedAsync.dll => 0x61d59e0e => 15
	i32 1657153582, ; 250: System.Runtime => 0x62c6282e => 116
	i32 1658241508, ; 251: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 269
	i32 1658251792, ; 252: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 278
	i32 1670060433, ; 253: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 224
	i32 1675553242, ; 254: System.IO.FileSystem.DriveInfo.dll => 0x63dee9da => 48
	i32 1677501392, ; 255: System.Net.Primitives.dll => 0x63fca3d0 => 70
	i32 1678508291, ; 256: System.Net.WebSockets => 0x640c0103 => 80
	i32 1679769178, ; 257: System.Security.Cryptography => 0x641f3e5a => 126
	i32 1691477237, ; 258: System.Reflection.Metadata => 0x64d1e4f5 => 94
	i32 1696967625, ; 259: System.Security.Cryptography.Csp => 0x6525abc9 => 121
	i32 1698840827, ; 260: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 287
	i32 1700397376, ; 261: ExoPlayer.Transformer => 0x655a0140 => 204
	i32 1701541528, ; 262: System.Diagnostics.Debug.dll => 0x656b7698 => 26
	i32 1720223769, ; 263: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 0x66888819 => 245
	i32 1726116996, ; 264: System.Reflection.dll => 0x66e27484 => 97
	i32 1728033016, ; 265: System.Diagnostics.FileVersionInfo.dll => 0x66ffb0f8 => 28
	i32 1729485958, ; 266: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 220
	i32 1736233607, ; 267: ro/Microsoft.Maui.Controls.resources.dll => 0x677cd287 => 315
	i32 1743415430, ; 268: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 293
	i32 1744735666, ; 269: System.Transactions.Local.dll => 0x67fe8db2 => 149
	i32 1746316138, ; 270: Mono.Android.Export => 0x6816ab6a => 169
	i32 1750313021, ; 271: Microsoft.Win32.Primitives.dll => 0x6853a83d => 4
	i32 1758240030, ; 272: System.Resources.Reader.dll => 0x68cc9d1e => 98
	i32 1763938596, ; 273: System.Diagnostics.TraceSource.dll => 0x69239124 => 33
	i32 1765620304, ; 274: ExoPlayer.Core => 0x693d3a50 => 194
	i32 1765942094, ; 275: System.Reflection.Extensions => 0x6942234e => 93
	i32 1766324549, ; 276: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 268
	i32 1770582343, ; 277: Microsoft.Extensions.Logging.dll => 0x6988f147 => 179
	i32 1776026572, ; 278: System.Core.dll => 0x69dc03cc => 21
	i32 1777075843, ; 279: System.Globalization.Extensions.dll => 0x69ec0683 => 41
	i32 1780572499, ; 280: Mono.Android.Runtime.dll => 0x6a216153 => 170
	i32 1782862114, ; 281: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 309
	i32 1788241197, ; 282: Xamarin.AndroidX.Fragment => 0x6a96652d => 238
	i32 1793755602, ; 283: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 301
	i32 1808609942, ; 284: Xamarin.AndroidX.Loader => 0x6bcd3296 => 252
	i32 1813058853, ; 285: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 286
	i32 1813201214, ; 286: Xamarin.Google.Android.Material => 0x6c13413e => 278
	i32 1818569960, ; 287: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 258
	i32 1818787751, ; 288: Microsoft.VisualBasic.Core => 0x6c687fa7 => 2
	i32 1824175904, ; 289: System.Text.Encoding.Extensions => 0x6cbab720 => 134
	i32 1824722060, ; 290: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 111
	i32 1827303595, ; 291: Microsoft.VisualStudio.DesignTools.TapContract => 0x6cea70ab => 328
	i32 1828688058, ; 292: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 180
	i32 1842015223, ; 293: uk/Microsoft.Maui.Controls.resources.dll => 0x6dcaebf7 => 321
	i32 1847515442, ; 294: Xamarin.Android.Glide.Annotations => 0x6e1ed932 => 207
	i32 1853025655, ; 295: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 318
	i32 1858542181, ; 296: System.Linq.Expressions => 0x6ec71a65 => 58
	i32 1870277092, ; 297: System.Reflection.Primitives => 0x6f7a29e4 => 95
	i32 1875935024, ; 298: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 300
	i32 1879696579, ; 299: System.Formats.Tar.dll => 0x7009e4c3 => 39
	i32 1885316902, ; 300: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 218
	i32 1885918049, ; 301: Microsoft.VisualStudio.DesignTools.TapContract.dll => 0x7068d361 => 328
	i32 1888955245, ; 302: System.Diagnostics.Contracts => 0x70972b6d => 25
	i32 1889954781, ; 303: System.Reflection.Metadata.dll => 0x70a66bdd => 94
	i32 1898237753, ; 304: System.Reflection.DispatchProxy => 0x7124cf39 => 89
	i32 1900610850, ; 305: System.Resources.ResourceManager.dll => 0x71490522 => 99
	i32 1910275211, ; 306: System.Collections.NonGeneric.dll => 0x71dc7c8b => 10
	i32 1926145099, ; 307: ExoPlayer.Container.dll => 0x72cea44b => 193
	i32 1939592360, ; 308: System.Private.Xml.Linq => 0x739bd4a8 => 87
	i32 1956758971, ; 309: System.Resources.Writer => 0x74a1c5bb => 100
	i32 1961813231, ; 310: Xamarin.AndroidX.Security.SecurityCrypto.dll => 0x74eee4ef => 265
	i32 1968388702, ; 311: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 175
	i32 1983156543, ; 312: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 287
	i32 1984283898, ; 313: ExoPlayer.Ext.MediaSession.dll => 0x7645c4fa => 201
	i32 1985761444, ; 314: Xamarin.Android.Glide.GifDecoder => 0x765c50a4 => 209
	i32 2003115576, ; 315: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 297
	i32 2011961780, ; 316: System.Buffers.dll => 0x77ec19b4 => 7
	i32 2019465201, ; 317: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 249
	i32 2025202353, ; 318: ar/Microsoft.Maui.Controls.resources.dll => 0x78b622b1 => 292
	i32 2031763787, ; 319: Xamarin.Android.Glide => 0x791a414b => 206
	i32 2045470958, ; 320: System.Private.Xml => 0x79eb68ee => 88
	i32 2055257422, ; 321: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 244
	i32 2060060697, ; 322: System.Windows.dll => 0x7aca0819 => 154
	i32 2066184531, ; 323: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 296
	i32 2070888862, ; 324: System.Diagnostics.TraceSource => 0x7b6f419e => 33
	i32 2079903147, ; 325: System.Runtime.dll => 0x7bf8cdab => 116
	i32 2090596640, ; 326: System.Numerics.Vectors => 0x7c9bf920 => 82
	i32 2106312818, ; 327: ExoPlayer.Decoder => 0x7d8bc872 => 198
	i32 2113912252, ; 328: ExoPlayer.UI => 0x7dffbdbc => 205
	i32 2127167465, ; 329: System.Console => 0x7ec9ffe9 => 20
	i32 2142473426, ; 330: System.Collections.Specialized => 0x7fb38cd2 => 11
	i32 2143790110, ; 331: System.Xml.XmlSerializer.dll => 0x7fc7a41e => 162
	i32 2146852085, ; 332: Microsoft.VisualBasic.dll => 0x7ff65cf5 => 3
	i32 2159891885, ; 333: Microsoft.Maui => 0x80bd55ad => 187
	i32 2169148018, ; 334: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 304
	i32 2181898931, ; 335: Microsoft.Extensions.Options.dll => 0x820d22b3 => 182
	i32 2192057212, ; 336: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 180
	i32 2193016926, ; 337: System.ObjectModel.dll => 0x82b6c85e => 84
	i32 2201107256, ; 338: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 291
	i32 2201231467, ; 339: System.Net.Http => 0x8334206b => 64
	i32 2202964214, ; 340: ExoPlayer.dll => 0x834e90f6 => 191
	i32 2207618523, ; 341: it\Microsoft.Maui.Controls.resources => 0x839595db => 306
	i32 2217644978, ; 342: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 272
	i32 2222056684, ; 343: System.Threading.Tasks.Parallel => 0x8471e4ec => 143
	i32 2239138732, ; 344: ExoPlayer.SmoothStreaming => 0x85768bac => 203
	i32 2244775296, ; 345: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 253
	i32 2252106437, ; 346: System.Xml.Serialization.dll => 0x863c6ac5 => 157
	i32 2256313426, ; 347: System.Globalization.Extensions => 0x867c9c52 => 41
	i32 2265110946, ; 348: System.Security.AccessControl.dll => 0x8702d9a2 => 117
	i32 2266799131, ; 349: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 176
	i32 2267999099, ; 350: Xamarin.Android.Glide.DiskLruCache.dll => 0x872eeb7b => 208
	i32 2270573516, ; 351: fr/Microsoft.Maui.Controls.resources.dll => 0x875633cc => 300
	i32 2279755925, ; 352: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 261
	i32 2293034957, ; 353: System.ServiceModel.Web.dll => 0x88acefcd => 131
	i32 2295906218, ; 354: System.Net.Sockets => 0x88d8bfaa => 75
	i32 2298471582, ; 355: System.Net.Mail => 0x88ffe49e => 66
	i32 2303942373, ; 356: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 310
	i32 2305521784, ; 357: System.Private.CoreLib.dll => 0x896b7878 => 172
	i32 2315684594, ; 358: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 212
	i32 2320631194, ; 359: System.Threading.Tasks.Parallel.dll => 0x8a52059a => 143
	i32 2340441535, ; 360: System.Runtime.InteropServices.RuntimeInformation.dll => 0x8b804dbf => 106
	i32 2344264397, ; 361: System.ValueTuple => 0x8bbaa2cd => 151
	i32 2353062107, ; 362: System.Net.Primitives => 0x8c40e0db => 70
	i32 2368005991, ; 363: System.Xml.ReaderWriter.dll => 0x8d24e767 => 156
	i32 2371007202, ; 364: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 175
	i32 2378619854, ; 365: System.Security.Cryptography.Csp.dll => 0x8dc6dbce => 121
	i32 2383496789, ; 366: System.Security.Principal.Windows.dll => 0x8e114655 => 127
	i32 2395872292, ; 367: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 305
	i32 2401565422, ; 368: System.Web.HttpUtility => 0x8f24faee => 152
	i32 2403452196, ; 369: Xamarin.AndroidX.Emoji2.dll => 0x8f41c524 => 235
	i32 2409983638, ; 370: Microsoft.VisualStudio.DesignTools.MobileTapContracts.dll => 0x8fa56e96 => 327
	i32 2421380589, ; 371: System.Threading.Tasks.Dataflow => 0x905355ed => 141
	i32 2423080555, ; 372: Xamarin.AndroidX.Collection.Ktx.dll => 0x906d466b => 222
	i32 2427813419, ; 373: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 302
	i32 2435356389, ; 374: System.Console.dll => 0x912896e5 => 20
	i32 2435904999, ; 375: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 14
	i32 2437192331, ; 376: CommunityToolkit.Maui.MediaElement.dll => 0x91449a8b => 173
	i32 2454642406, ; 377: System.Text.Encoding.dll => 0x924edee6 => 135
	i32 2458678730, ; 378: System.Net.Sockets.dll => 0x928c75ca => 75
	i32 2459001652, ; 379: System.Linq.Parallel.dll => 0x92916334 => 59
	i32 2465532216, ; 380: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 225
	i32 2471841756, ; 381: netstandard.dll => 0x93554fdc => 167
	i32 2475788418, ; 382: Java.Interop.dll => 0x93918882 => 168
	i32 2476233210, ; 383: ExoPlayer => 0x939851fa => 191
	i32 2480646305, ; 384: Microsoft.Maui.Controls => 0x93dba8a1 => 185
	i32 2483903535, ; 385: System.ComponentModel.EventBasedAsync => 0x940d5c2f => 15
	i32 2484371297, ; 386: System.Net.ServicePoint => 0x94147f61 => 74
	i32 2490993605, ; 387: System.AppContext.dll => 0x94798bc5 => 6
	i32 2501346920, ; 388: System.Data.DataSetExtensions => 0x95178668 => 23
	i32 2505896520, ; 389: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 247
	i32 2515854816, ; 390: ExoPlayer.Common => 0x95f4e5e0 => 192
	i32 2522472828, ; 391: Xamarin.Android.Glide.dll => 0x9659e17c => 206
	i32 2538310050, ; 392: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 91
	i32 2550873716, ; 393: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 303
	i32 2562349572, ; 394: Microsoft.CSharp => 0x98ba5a04 => 1
	i32 2570120770, ; 395: System.Text.Encodings.Web => 0x9930ee42 => 136
	i32 2581783588, ; 396: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 0x99e2e424 => 248
	i32 2581819634, ; 397: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 271
	i32 2585220780, ; 398: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 134
	i32 2585805581, ; 399: System.Net.Ping => 0x9a20430d => 69
	i32 2589602615, ; 400: System.Threading.ThreadPool => 0x9a5a3337 => 146
	i32 2593496499, ; 401: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 312
	i32 2605712449, ; 402: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 291
	i32 2615233544, ; 403: Xamarin.AndroidX.Fragment.Ktx => 0x9be14c08 => 239
	i32 2616218305, ; 404: Microsoft.Extensions.Logging.Debug.dll => 0x9bf052c1 => 181
	i32 2617129537, ; 405: System.Private.Xml.dll => 0x9bfe3a41 => 88
	i32 2618712057, ; 406: System.Reflection.TypeExtensions.dll => 0x9c165ff9 => 96
	i32 2620871830, ; 407: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 229
	i32 2624644809, ; 408: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 234
	i32 2626028643, ; 409: ExoPlayer.Rtsp.dll => 0x9c860463 => 202
	i32 2626831493, ; 410: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 307
	i32 2627185994, ; 411: System.Diagnostics.TextWriterTraceListener.dll => 0x9c97ad4a => 31
	i32 2629843544, ; 412: System.IO.Compression.ZipFile.dll => 0x9cc03a58 => 45
	i32 2633051222, ; 413: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 243
	i32 2663391936, ; 414: Xamarin.Android.Glide.DiskLruCache => 0x9ec022c0 => 208
	i32 2663698177, ; 415: System.Runtime.Loader => 0x9ec4cf01 => 109
	i32 2664396074, ; 416: System.Xml.XDocument.dll => 0x9ecf752a => 158
	i32 2665622720, ; 417: System.Drawing.Primitives => 0x9ee22cc0 => 35
	i32 2676780864, ; 418: System.Data.Common.dll => 0x9f8c6f40 => 22
	i32 2686887180, ; 419: System.Runtime.Serialization.Xml.dll => 0xa026a50c => 114
	i32 2693849962, ; 420: System.IO.dll => 0xa090e36a => 57
	i32 2701096212, ; 421: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 269
	i32 2713040075, ; 422: ExoPlayer.Hls => 0xa1b5b4cb => 200
	i32 2715334215, ; 423: System.Threading.Tasks.dll => 0xa1d8b647 => 144
	i32 2717744543, ; 424: System.Security.Claims => 0xa1fd7d9f => 118
	i32 2719963679, ; 425: System.Security.Cryptography.Cng.dll => 0xa21f5a1f => 120
	i32 2724373263, ; 426: System.Runtime.Numerics.dll => 0xa262a30f => 110
	i32 2732626843, ; 427: Xamarin.AndroidX.Activity => 0xa2e0939b => 210
	i32 2735172069, ; 428: System.Threading.Channels => 0xa30769e5 => 139
	i32 2737747696, ; 429: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 216
	i32 2740948882, ; 430: System.IO.Pipes.AccessControl => 0xa35f8f92 => 54
	i32 2748088231, ; 431: System.Runtime.InteropServices.JavaScript => 0xa3cc7fa7 => 105
	i32 2752995522, ; 432: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 313
	i32 2758225723, ; 433: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 186
	i32 2764765095, ; 434: Microsoft.Maui.dll => 0xa4caf7a7 => 187
	i32 2765824710, ; 435: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 133
	i32 2770495804, ; 436: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 285
	i32 2774530498, ; 437: Plugin.Maui.SegmentedControl => 0xa55ff9c2 => 190
	i32 2778768386, ; 438: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 274
	i32 2779977773, ; 439: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0xa5b3182d => 262
	i32 2785988530, ; 440: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 319
	i32 2788224221, ; 441: Xamarin.AndroidX.Fragment.Ktx.dll => 0xa630ecdd => 239
	i32 2796087574, ; 442: ExoPlayer.Extractor.dll => 0xa6a8e916 => 199
	i32 2801831435, ; 443: Microsoft.Maui.Graphics => 0xa7008e0b => 189
	i32 2803228030, ; 444: System.Xml.XPath.XDocument.dll => 0xa715dd7e => 159
	i32 2806116107, ; 445: es/Microsoft.Maui.Controls.resources.dll => 0xa741ef0b => 298
	i32 2810250172, ; 446: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 226
	i32 2819470561, ; 447: System.Xml.dll => 0xa80db4e1 => 163
	i32 2821205001, ; 448: System.ServiceProcess.dll => 0xa8282c09 => 132
	i32 2821294376, ; 449: Xamarin.AndroidX.ResourceInspection.Annotation => 0xa8298928 => 262
	i32 2824502124, ; 450: System.Xml.XmlDocument => 0xa85a7b6c => 161
	i32 2831556043, ; 451: nl/Microsoft.Maui.Controls.resources.dll => 0xa8c61dcb => 311
	i32 2838993487, ; 452: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 0xa9379a4f => 250
	i32 2849599387, ; 453: System.Threading.Overlapped.dll => 0xa9d96f9b => 140
	i32 2853208004, ; 454: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 274
	i32 2855708567, ; 455: Xamarin.AndroidX.Transition => 0xaa36a797 => 270
	i32 2861098320, ; 456: Mono.Android.Export.dll => 0xaa88e550 => 169
	i32 2861189240, ; 457: Microsoft.Maui.Essentials => 0xaa8a4878 => 188
	i32 2870099610, ; 458: Xamarin.AndroidX.Activity.Ktx.dll => 0xab123e9a => 211
	i32 2875164099, ; 459: Jsr305Binding.dll => 0xab5f85c3 => 279
	i32 2875220617, ; 460: System.Globalization.Calendars.dll => 0xab606289 => 40
	i32 2884993177, ; 461: Xamarin.AndroidX.ExifInterface => 0xabf58099 => 237
	i32 2887636118, ; 462: System.Net.dll => 0xac1dd496 => 81
	i32 2899753641, ; 463: System.IO.UnmanagedMemoryStream => 0xacd6baa9 => 56
	i32 2900621748, ; 464: System.Dynamic.Runtime.dll => 0xace3f9b4 => 37
	i32 2901442782, ; 465: System.Reflection => 0xacf080de => 97
	i32 2905242038, ; 466: mscorlib.dll => 0xad2a79b6 => 166
	i32 2909740682, ; 467: System.Private.CoreLib => 0xad6f1e8a => 172
	i32 2916838712, ; 468: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 275
	i32 2919462931, ; 469: System.Numerics.Vectors.dll => 0xae037813 => 82
	i32 2921128767, ; 470: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 213
	i32 2936416060, ; 471: System.Resources.Reader => 0xaf06273c => 98
	i32 2940926066, ; 472: System.Diagnostics.StackTrace.dll => 0xaf4af872 => 30
	i32 2942453041, ; 473: System.Xml.XPath.XDocument => 0xaf624531 => 159
	i32 2959614098, ; 474: System.ComponentModel.dll => 0xb0682092 => 18
	i32 2960379616, ; 475: Xamarin.Google.Guava => 0xb073cee0 => 282
	i32 2968338931, ; 476: System.Security.Principal.Windows => 0xb0ed41f3 => 127
	i32 2972252294, ; 477: System.Security.Cryptography.Algorithms.dll => 0xb128f886 => 119
	i32 2972925604, ; 478: MVVM_Login.dll => 0xb1333ea4 => 0
	i32 2978675010, ; 479: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 233
	i32 2987532451, ; 480: Xamarin.AndroidX.Security.SecurityCrypto => 0xb21220a3 => 265
	i32 2996846495, ; 481: Xamarin.AndroidX.Lifecycle.Process.dll => 0xb2a03f9f => 246
	i32 3016983068, ; 482: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 267
	i32 3023353419, ; 483: WindowsBase.dll => 0xb434b64b => 165
	i32 3024354802, ; 484: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 241
	i32 3027462113, ; 485: ExoPlayer.Common.dll => 0xb47367e1 => 192
	i32 3038032645, ; 486: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 329
	i32 3056245963, ; 487: Xamarin.AndroidX.SavedState.SavedState.Ktx => 0xb62a9ccb => 264
	i32 3057625584, ; 488: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 255
	i32 3059408633, ; 489: Mono.Android.Runtime => 0xb65adef9 => 170
	i32 3059793426, ; 490: System.ComponentModel.Primitives => 0xb660be12 => 16
	i32 3075834255, ; 491: System.Threading.Tasks => 0xb755818f => 144
	i32 3077302341, ; 492: hu/Microsoft.Maui.Controls.resources.dll => 0xb76be845 => 304
	i32 3090735792, ; 493: System.Security.Cryptography.X509Certificates.dll => 0xb838e2b0 => 125
	i32 3099732863, ; 494: System.Security.Claims.dll => 0xb8c22b7f => 118
	i32 3103600923, ; 495: System.Formats.Asn1 => 0xb8fd311b => 38
	i32 3111772706, ; 496: System.Runtime.Serialization => 0xb979e222 => 115
	i32 3121463068, ; 497: System.IO.FileSystem.AccessControl.dll => 0xba0dbf1c => 47
	i32 3124832203, ; 498: System.Threading.Tasks.Extensions => 0xba4127cb => 142
	i32 3132293585, ; 499: System.Security.AccessControl => 0xbab301d1 => 117
	i32 3144327419, ; 500: ExoPlayer.Hls.dll => 0xbb6aa0fb => 200
	i32 3147165239, ; 501: System.Diagnostics.Tracing.dll => 0xbb95ee37 => 34
	i32 3148237826, ; 502: GoogleGson.dll => 0xbba64c02 => 174
	i32 3159123045, ; 503: System.Reflection.Primitives.dll => 0xbc4c6465 => 95
	i32 3160747431, ; 504: System.IO.MemoryMappedFiles => 0xbc652da7 => 53
	i32 3178803400, ; 505: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 256
	i32 3190271366, ; 506: ExoPlayer.Decoder.dll => 0xbe27ad86 => 198
	i32 3192346100, ; 507: System.Security.SecureString => 0xbe4755f4 => 129
	i32 3193515020, ; 508: System.Web => 0xbe592c0c => 153
	i32 3204380047, ; 509: System.Data.dll => 0xbefef58f => 24
	i32 3209718065, ; 510: System.Xml.XmlDocument.dll => 0xbf506931 => 161
	i32 3211777861, ; 511: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 232
	i32 3220365878, ; 512: System.Threading => 0xbff2e236 => 148
	i32 3226221578, ; 513: System.Runtime.Handles.dll => 0xc04c3c0a => 104
	i32 3251039220, ; 514: System.Reflection.DispatchProxy.dll => 0xc1c6ebf4 => 89
	i32 3258312781, ; 515: Xamarin.AndroidX.CardView => 0xc235e84d => 220
	i32 3265493905, ; 516: System.Linq.Queryable.dll => 0xc2a37b91 => 60
	i32 3265893370, ; 517: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 142
	i32 3277815716, ; 518: System.Resources.Writer.dll => 0xc35f7fa4 => 100
	i32 3279906254, ; 519: Microsoft.Win32.Registry.dll => 0xc37f65ce => 5
	i32 3280506390, ; 520: System.ComponentModel.Annotations.dll => 0xc3888e16 => 13
	i32 3290767353, ; 521: System.Security.Cryptography.Encoding => 0xc4251ff9 => 122
	i32 3299363146, ; 522: System.Text.Encoding => 0xc4a8494a => 135
	i32 3303498502, ; 523: System.Diagnostics.FileVersionInfo => 0xc4e76306 => 28
	i32 3305363605, ; 524: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 299
	i32 3316684772, ; 525: System.Net.Requests.dll => 0xc5b097e4 => 72
	i32 3317135071, ; 526: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 230
	i32 3317144872, ; 527: System.Data => 0xc5b79d28 => 24
	i32 3329734229, ; 528: ExoPlayer.Database => 0xc677b655 => 196
	i32 3340431453, ; 529: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 218
	i32 3345895724, ; 530: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 260
	i32 3346324047, ; 531: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 257
	i32 3357674450, ; 532: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 316
	i32 3358260929, ; 533: System.Text.Json => 0xc82afec1 => 137
	i32 3362336904, ; 534: Xamarin.AndroidX.Activity.Ktx => 0xc8693088 => 211
	i32 3362522851, ; 535: Xamarin.AndroidX.Core => 0xc86c06e3 => 227
	i32 3366347497, ; 536: Java.Interop => 0xc8a662e9 => 168
	i32 3374999561, ; 537: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 261
	i32 3381016424, ; 538: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 295
	i32 3395150330, ; 539: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 101
	i32 3396979385, ; 540: ExoPlayer.Transformer.dll => 0xca79cab9 => 204
	i32 3403906625, ; 541: System.Security.Cryptography.OpenSsl.dll => 0xcae37e41 => 123
	i32 3405233483, ; 542: Xamarin.AndroidX.CustomView.PoolingContainer => 0xcaf7bd4b => 231
	i32 3428513518, ; 543: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 177
	i32 3429136800, ; 544: System.Xml => 0xcc6479a0 => 163
	i32 3430777524, ; 545: netstandard => 0xcc7d82b4 => 167
	i32 3441283291, ; 546: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 234
	i32 3445260447, ; 547: System.Formats.Tar => 0xcd5a809f => 39
	i32 3452344032, ; 548: Microsoft.Maui.Controls.Compatibility.dll => 0xcdc696e0 => 184
	i32 3463511458, ; 549: hr/Microsoft.Maui.Controls.resources.dll => 0xce70fda2 => 303
	i32 3471940407, ; 550: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 17
	i32 3476120550, ; 551: Mono.Android => 0xcf3163e6 => 171
	i32 3479583265, ; 552: ru/Microsoft.Maui.Controls.resources.dll => 0xcf663a21 => 316
	i32 3484440000, ; 553: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 315
	i32 3485117614, ; 554: System.Text.Json.dll => 0xcfbaacae => 137
	i32 3486566296, ; 555: System.Transactions => 0xcfd0c798 => 150
	i32 3493954962, ; 556: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 223
	i32 3509114376, ; 557: System.Xml.Linq => 0xd128d608 => 155
	i32 3515174580, ; 558: System.Security.dll => 0xd1854eb4 => 130
	i32 3530912306, ; 559: System.Configuration => 0xd2757232 => 19
	i32 3539954161, ; 560: System.Net.HttpListener => 0xd2ff69f1 => 65
	i32 3560100363, ; 561: System.Threading.Timer => 0xd432d20b => 147
	i32 3570554715, ; 562: System.IO.FileSystem.AccessControl => 0xd4d2575b => 47
	i32 3580758918, ; 563: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 323
	i32 3597029428, ; 564: Xamarin.Android.Glide.GifDecoder.dll => 0xd6665034 => 209
	i32 3598340787, ; 565: System.Net.WebSockets.Client => 0xd67a52b3 => 79
	i32 3608519521, ; 566: System.Linq.dll => 0xd715a361 => 61
	i32 3624195450, ; 567: System.Runtime.InteropServices.RuntimeInformation => 0xd804d57a => 106
	i32 3627220390, ; 568: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 259
	i32 3633644679, ; 569: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 213
	i32 3638274909, ; 570: System.IO.FileSystem.Primitives.dll => 0xd8dbab5d => 49
	i32 3641597786, ; 571: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 244
	i32 3643446276, ; 572: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 320
	i32 3643854240, ; 573: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 256
	i32 3645089577, ; 574: System.ComponentModel.DataAnnotations => 0xd943a729 => 14
	i32 3657292374, ; 575: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 176
	i32 3660523487, ; 576: System.Net.NetworkInformation => 0xda2f27df => 68
	i32 3672681054, ; 577: Mono.Android.dll => 0xdae8aa5e => 171
	i32 3676670898, ; 578: Microsoft.Maui.Controls.HotReload.Forms => 0xdb258bb2 => 326
	i32 3682565725, ; 579: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 219
	i32 3684561358, ; 580: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 223
	i32 3697841164, ; 581: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xdc68940c => 325
	i32 3700866549, ; 582: System.Net.WebProxy.dll => 0xdc96bdf5 => 78
	i32 3706696989, ; 583: Xamarin.AndroidX.Core.Core.Ktx.dll => 0xdcefb51d => 228
	i32 3716563718, ; 584: System.Runtime.Intrinsics => 0xdd864306 => 108
	i32 3718780102, ; 585: Xamarin.AndroidX.Annotation => 0xdda814c6 => 212
	i32 3724971120, ; 586: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 255
	i32 3732100267, ; 587: System.Net.NameResolution => 0xde7354ab => 67
	i32 3737834244, ; 588: System.Net.Http.Json.dll => 0xdecad304 => 63
	i32 3748608112, ; 589: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 27
	i32 3751444290, ; 590: System.Xml.XPath => 0xdf9a7f42 => 160
	i32 3786282454, ; 591: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 221
	i32 3792276235, ; 592: System.Collections.NonGeneric => 0xe2098b0b => 10
	i32 3800979733, ; 593: Microsoft.Maui.Controls.Compatibility => 0xe28e5915 => 184
	i32 3802395368, ; 594: System.Collections.Specialized.dll => 0xe2a3f2e8 => 11
	i32 3819260425, ; 595: System.Net.WebProxy => 0xe3a54a09 => 78
	i32 3822602673, ; 596: Xamarin.AndroidX.Media => 0xe3d849b1 => 254
	i32 3823082795, ; 597: System.Security.Cryptography.dll => 0xe3df9d2b => 126
	i32 3829621856, ; 598: System.Numerics.dll => 0xe4436460 => 83
	i32 3841636137, ; 599: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 178
	i32 3844307129, ; 600: System.Net.Mail.dll => 0xe52378b9 => 66
	i32 3849253459, ; 601: System.Runtime.InteropServices.dll => 0xe56ef253 => 107
	i32 3870376305, ; 602: System.Net.HttpListener.dll => 0xe6b14171 => 65
	i32 3873536506, ; 603: System.Security.Principal => 0xe6e179fa => 128
	i32 3875112723, ; 604: System.Security.Cryptography.Encoding.dll => 0xe6f98713 => 122
	i32 3885497537, ; 605: System.Net.WebHeaderCollection.dll => 0xe797fcc1 => 77
	i32 3885922214, ; 606: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 270
	i32 3888767677, ; 607: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 260
	i32 3889960447, ; 608: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xe7dc15ff => 324
	i32 3896106733, ; 609: System.Collections.Concurrent.dll => 0xe839deed => 8
	i32 3896760992, ; 610: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 227
	i32 3901907137, ; 611: Microsoft.VisualBasic.Core.dll => 0xe89260c1 => 2
	i32 3920810846, ; 612: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 44
	i32 3921031405, ; 613: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 273
	i32 3928044579, ; 614: System.Xml.ReaderWriter => 0xea213423 => 156
	i32 3930554604, ; 615: System.Security.Principal.dll => 0xea4780ec => 128
	i32 3931092270, ; 616: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 258
	i32 3945713374, ; 617: System.Data.DataSetExtensions.dll => 0xeb2ecede => 23
	i32 3953953790, ; 618: System.Text.Encoding.CodePages => 0xebac8bfe => 133
	i32 3955647286, ; 619: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 215
	i32 3959773229, ; 620: Xamarin.AndroidX.Lifecycle.Process => 0xec05582d => 246
	i32 3980434154, ; 621: th/Microsoft.Maui.Controls.resources.dll => 0xed409aea => 319
	i32 3987592930, ; 622: he/Microsoft.Maui.Controls.resources.dll => 0xedadd6e2 => 301
	i32 4003436829, ; 623: System.Diagnostics.Process.dll => 0xee9f991d => 29
	i32 4015948917, ; 624: Xamarin.AndroidX.Annotation.Jvm.dll => 0xef5e8475 => 214
	i32 4025784931, ; 625: System.Memory => 0xeff49a63 => 62
	i32 4046471985, ; 626: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 186
	i32 4054681211, ; 627: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 90
	i32 4068434129, ; 628: System.Private.Xml.Linq.dll => 0xf27f60d1 => 87
	i32 4073602200, ; 629: System.Threading.dll => 0xf2ce3c98 => 148
	i32 4094352644, ; 630: Microsoft.Maui.Essentials.dll => 0xf40add04 => 188
	i32 4099507663, ; 631: System.Drawing.dll => 0xf45985cf => 36
	i32 4100113165, ; 632: System.Private.Uri => 0xf462c30d => 86
	i32 4101593132, ; 633: Xamarin.AndroidX.Emoji2 => 0xf479582c => 235
	i32 4102112229, ; 634: pt/Microsoft.Maui.Controls.resources.dll => 0xf48143e5 => 314
	i32 4125707920, ; 635: ms/Microsoft.Maui.Controls.resources.dll => 0xf5e94e90 => 309
	i32 4126470640, ; 636: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 177
	i32 4127667938, ; 637: System.IO.FileSystem.Watcher => 0xf60736e2 => 50
	i32 4130442656, ; 638: System.AppContext => 0xf6318da0 => 6
	i32 4147896353, ; 639: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 90
	i32 4150914736, ; 640: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 321
	i32 4151237749, ; 641: System.Core => 0xf76edc75 => 21
	i32 4159265925, ; 642: System.Xml.XmlSerializer => 0xf7e95c85 => 162
	i32 4161255271, ; 643: System.Reflection.TypeExtensions => 0xf807b767 => 96
	i32 4164802419, ; 644: System.IO.FileSystem.Watcher.dll => 0xf83dd773 => 50
	i32 4173364138, ; 645: ExoPlayer.SmoothStreaming.dll => 0xf8c07baa => 203
	i32 4181436372, ; 646: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 113
	i32 4182413190, ; 647: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 251
	i32 4182880526, ; 648: Microsoft.VisualStudio.DesignTools.MobileTapContracts => 0xf951b10e => 327
	i32 4185676441, ; 649: System.Security => 0xf97c5a99 => 130
	i32 4190597220, ; 650: ExoPlayer.Core.dll => 0xf9c77064 => 194
	i32 4196529839, ; 651: System.Net.WebClient.dll => 0xfa21f6af => 76
	i32 4213026141, ; 652: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 27
	i32 4256097574, ; 653: Xamarin.AndroidX.Core.Core.Ktx => 0xfdaee526 => 228
	i32 4258378803, ; 654: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 0xfdd1b433 => 250
	i32 4260525087, ; 655: System.Buffers => 0xfdf2741f => 7
	i32 4271975918, ; 656: Microsoft.Maui.Controls.dll => 0xfea12dee => 185
	i32 4274976490, ; 657: System.Runtime.Numerics => 0xfecef6ea => 110
	i32 4292120959, ; 658: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 251
	i32 4294763496 ; 659: Xamarin.AndroidX.ExifInterface.dll => 0xfffce3e8 => 237
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [660 x i32] [
	i32 68, ; 0
	i32 67, ; 1
	i32 108, ; 2
	i32 247, ; 3
	i32 284, ; 4
	i32 48, ; 5
	i32 80, ; 6
	i32 145, ; 7
	i32 30, ; 8
	i32 325, ; 9
	i32 124, ; 10
	i32 189, ; 11
	i32 102, ; 12
	i32 266, ; 13
	i32 107, ; 14
	i32 266, ; 15
	i32 139, ; 16
	i32 288, ; 17
	i32 77, ; 18
	i32 124, ; 19
	i32 13, ; 20
	i32 221, ; 21
	i32 132, ; 22
	i32 268, ; 23
	i32 151, ; 24
	i32 322, ; 25
	i32 323, ; 26
	i32 18, ; 27
	i32 219, ; 28
	i32 26, ; 29
	i32 241, ; 30
	i32 1, ; 31
	i32 59, ; 32
	i32 42, ; 33
	i32 91, ; 34
	i32 224, ; 35
	i32 283, ; 36
	i32 147, ; 37
	i32 243, ; 38
	i32 240, ; 39
	i32 294, ; 40
	i32 54, ; 41
	i32 195, ; 42
	i32 69, ; 43
	i32 322, ; 44
	i32 210, ; 45
	i32 83, ; 46
	i32 307, ; 47
	i32 242, ; 48
	i32 306, ; 49
	i32 131, ; 50
	i32 55, ; 51
	i32 149, ; 52
	i32 74, ; 53
	i32 145, ; 54
	i32 62, ; 55
	i32 146, ; 56
	i32 329, ; 57
	i32 165, ; 58
	i32 318, ; 59
	i32 225, ; 60
	i32 12, ; 61
	i32 238, ; 62
	i32 125, ; 63
	i32 196, ; 64
	i32 152, ; 65
	i32 113, ; 66
	i32 166, ; 67
	i32 164, ; 68
	i32 240, ; 69
	i32 253, ; 70
	i32 84, ; 71
	i32 305, ; 72
	i32 299, ; 73
	i32 183, ; 74
	i32 150, ; 75
	i32 288, ; 76
	i32 60, ; 77
	i32 179, ; 78
	i32 51, ; 79
	i32 103, ; 80
	i32 114, ; 81
	i32 40, ; 82
	i32 279, ; 83
	i32 277, ; 84
	i32 120, ; 85
	i32 313, ; 86
	i32 52, ; 87
	i32 44, ; 88
	i32 119, ; 89
	i32 193, ; 90
	i32 230, ; 91
	i32 311, ; 92
	i32 236, ; 93
	i32 81, ; 94
	i32 136, ; 95
	i32 273, ; 96
	i32 217, ; 97
	i32 8, ; 98
	i32 73, ; 99
	i32 293, ; 100
	i32 155, ; 101
	i32 290, ; 102
	i32 154, ; 103
	i32 92, ; 104
	i32 285, ; 105
	i32 45, ; 106
	i32 308, ; 107
	i32 296, ; 108
	i32 289, ; 109
	i32 109, ; 110
	i32 129, ; 111
	i32 25, ; 112
	i32 207, ; 113
	i32 72, ; 114
	i32 55, ; 115
	i32 46, ; 116
	i32 317, ; 117
	i32 182, ; 118
	i32 231, ; 119
	i32 22, ; 120
	i32 245, ; 121
	i32 195, ; 122
	i32 86, ; 123
	i32 0, ; 124
	i32 43, ; 125
	i32 160, ; 126
	i32 71, ; 127
	i32 259, ; 128
	i32 3, ; 129
	i32 42, ; 130
	i32 63, ; 131
	i32 16, ; 132
	i32 53, ; 133
	i32 201, ; 134
	i32 320, ; 135
	i32 284, ; 136
	i32 199, ; 137
	i32 105, ; 138
	i32 289, ; 139
	i32 280, ; 140
	i32 242, ; 141
	i32 190, ; 142
	i32 34, ; 143
	i32 158, ; 144
	i32 85, ; 145
	i32 32, ; 146
	i32 12, ; 147
	i32 51, ; 148
	i32 56, ; 149
	i32 263, ; 150
	i32 36, ; 151
	i32 205, ; 152
	i32 178, ; 153
	i32 295, ; 154
	i32 281, ; 155
	i32 215, ; 156
	i32 35, ; 157
	i32 58, ; 158
	i32 249, ; 159
	i32 174, ; 160
	i32 17, ; 161
	i32 286, ; 162
	i32 164, ; 163
	i32 308, ; 164
	i32 248, ; 165
	i32 181, ; 166
	i32 276, ; 167
	i32 202, ; 168
	i32 314, ; 169
	i32 153, ; 170
	i32 272, ; 171
	i32 257, ; 172
	i32 312, ; 173
	i32 217, ; 174
	i32 29, ; 175
	i32 52, ; 176
	i32 310, ; 177
	i32 277, ; 178
	i32 5, ; 179
	i32 294, ; 180
	i32 282, ; 181
	i32 267, ; 182
	i32 271, ; 183
	i32 222, ; 184
	i32 290, ; 185
	i32 214, ; 186
	i32 233, ; 187
	i32 85, ; 188
	i32 197, ; 189
	i32 276, ; 190
	i32 61, ; 191
	i32 112, ; 192
	i32 57, ; 193
	i32 324, ; 194
	i32 263, ; 195
	i32 99, ; 196
	i32 254, ; 197
	i32 19, ; 198
	i32 226, ; 199
	i32 283, ; 200
	i32 111, ; 201
	i32 101, ; 202
	i32 102, ; 203
	i32 292, ; 204
	i32 104, ; 205
	i32 280, ; 206
	i32 71, ; 207
	i32 38, ; 208
	i32 32, ; 209
	i32 103, ; 210
	i32 73, ; 211
	i32 298, ; 212
	i32 9, ; 213
	i32 123, ; 214
	i32 46, ; 215
	i32 216, ; 216
	i32 183, ; 217
	i32 9, ; 218
	i32 197, ; 219
	i32 43, ; 220
	i32 4, ; 221
	i32 264, ; 222
	i32 302, ; 223
	i32 297, ; 224
	i32 31, ; 225
	i32 138, ; 226
	i32 92, ; 227
	i32 93, ; 228
	i32 317, ; 229
	i32 49, ; 230
	i32 141, ; 231
	i32 112, ; 232
	i32 140, ; 233
	i32 232, ; 234
	i32 115, ; 235
	i32 281, ; 236
	i32 157, ; 237
	i32 326, ; 238
	i32 76, ; 239
	i32 79, ; 240
	i32 252, ; 241
	i32 37, ; 242
	i32 275, ; 243
	i32 236, ; 244
	i32 229, ; 245
	i32 173, ; 246
	i32 64, ; 247
	i32 138, ; 248
	i32 15, ; 249
	i32 116, ; 250
	i32 269, ; 251
	i32 278, ; 252
	i32 224, ; 253
	i32 48, ; 254
	i32 70, ; 255
	i32 80, ; 256
	i32 126, ; 257
	i32 94, ; 258
	i32 121, ; 259
	i32 287, ; 260
	i32 204, ; 261
	i32 26, ; 262
	i32 245, ; 263
	i32 97, ; 264
	i32 28, ; 265
	i32 220, ; 266
	i32 315, ; 267
	i32 293, ; 268
	i32 149, ; 269
	i32 169, ; 270
	i32 4, ; 271
	i32 98, ; 272
	i32 33, ; 273
	i32 194, ; 274
	i32 93, ; 275
	i32 268, ; 276
	i32 179, ; 277
	i32 21, ; 278
	i32 41, ; 279
	i32 170, ; 280
	i32 309, ; 281
	i32 238, ; 282
	i32 301, ; 283
	i32 252, ; 284
	i32 286, ; 285
	i32 278, ; 286
	i32 258, ; 287
	i32 2, ; 288
	i32 134, ; 289
	i32 111, ; 290
	i32 328, ; 291
	i32 180, ; 292
	i32 321, ; 293
	i32 207, ; 294
	i32 318, ; 295
	i32 58, ; 296
	i32 95, ; 297
	i32 300, ; 298
	i32 39, ; 299
	i32 218, ; 300
	i32 328, ; 301
	i32 25, ; 302
	i32 94, ; 303
	i32 89, ; 304
	i32 99, ; 305
	i32 10, ; 306
	i32 193, ; 307
	i32 87, ; 308
	i32 100, ; 309
	i32 265, ; 310
	i32 175, ; 311
	i32 287, ; 312
	i32 201, ; 313
	i32 209, ; 314
	i32 297, ; 315
	i32 7, ; 316
	i32 249, ; 317
	i32 292, ; 318
	i32 206, ; 319
	i32 88, ; 320
	i32 244, ; 321
	i32 154, ; 322
	i32 296, ; 323
	i32 33, ; 324
	i32 116, ; 325
	i32 82, ; 326
	i32 198, ; 327
	i32 205, ; 328
	i32 20, ; 329
	i32 11, ; 330
	i32 162, ; 331
	i32 3, ; 332
	i32 187, ; 333
	i32 304, ; 334
	i32 182, ; 335
	i32 180, ; 336
	i32 84, ; 337
	i32 291, ; 338
	i32 64, ; 339
	i32 191, ; 340
	i32 306, ; 341
	i32 272, ; 342
	i32 143, ; 343
	i32 203, ; 344
	i32 253, ; 345
	i32 157, ; 346
	i32 41, ; 347
	i32 117, ; 348
	i32 176, ; 349
	i32 208, ; 350
	i32 300, ; 351
	i32 261, ; 352
	i32 131, ; 353
	i32 75, ; 354
	i32 66, ; 355
	i32 310, ; 356
	i32 172, ; 357
	i32 212, ; 358
	i32 143, ; 359
	i32 106, ; 360
	i32 151, ; 361
	i32 70, ; 362
	i32 156, ; 363
	i32 175, ; 364
	i32 121, ; 365
	i32 127, ; 366
	i32 305, ; 367
	i32 152, ; 368
	i32 235, ; 369
	i32 327, ; 370
	i32 141, ; 371
	i32 222, ; 372
	i32 302, ; 373
	i32 20, ; 374
	i32 14, ; 375
	i32 173, ; 376
	i32 135, ; 377
	i32 75, ; 378
	i32 59, ; 379
	i32 225, ; 380
	i32 167, ; 381
	i32 168, ; 382
	i32 191, ; 383
	i32 185, ; 384
	i32 15, ; 385
	i32 74, ; 386
	i32 6, ; 387
	i32 23, ; 388
	i32 247, ; 389
	i32 192, ; 390
	i32 206, ; 391
	i32 91, ; 392
	i32 303, ; 393
	i32 1, ; 394
	i32 136, ; 395
	i32 248, ; 396
	i32 271, ; 397
	i32 134, ; 398
	i32 69, ; 399
	i32 146, ; 400
	i32 312, ; 401
	i32 291, ; 402
	i32 239, ; 403
	i32 181, ; 404
	i32 88, ; 405
	i32 96, ; 406
	i32 229, ; 407
	i32 234, ; 408
	i32 202, ; 409
	i32 307, ; 410
	i32 31, ; 411
	i32 45, ; 412
	i32 243, ; 413
	i32 208, ; 414
	i32 109, ; 415
	i32 158, ; 416
	i32 35, ; 417
	i32 22, ; 418
	i32 114, ; 419
	i32 57, ; 420
	i32 269, ; 421
	i32 200, ; 422
	i32 144, ; 423
	i32 118, ; 424
	i32 120, ; 425
	i32 110, ; 426
	i32 210, ; 427
	i32 139, ; 428
	i32 216, ; 429
	i32 54, ; 430
	i32 105, ; 431
	i32 313, ; 432
	i32 186, ; 433
	i32 187, ; 434
	i32 133, ; 435
	i32 285, ; 436
	i32 190, ; 437
	i32 274, ; 438
	i32 262, ; 439
	i32 319, ; 440
	i32 239, ; 441
	i32 199, ; 442
	i32 189, ; 443
	i32 159, ; 444
	i32 298, ; 445
	i32 226, ; 446
	i32 163, ; 447
	i32 132, ; 448
	i32 262, ; 449
	i32 161, ; 450
	i32 311, ; 451
	i32 250, ; 452
	i32 140, ; 453
	i32 274, ; 454
	i32 270, ; 455
	i32 169, ; 456
	i32 188, ; 457
	i32 211, ; 458
	i32 279, ; 459
	i32 40, ; 460
	i32 237, ; 461
	i32 81, ; 462
	i32 56, ; 463
	i32 37, ; 464
	i32 97, ; 465
	i32 166, ; 466
	i32 172, ; 467
	i32 275, ; 468
	i32 82, ; 469
	i32 213, ; 470
	i32 98, ; 471
	i32 30, ; 472
	i32 159, ; 473
	i32 18, ; 474
	i32 282, ; 475
	i32 127, ; 476
	i32 119, ; 477
	i32 0, ; 478
	i32 233, ; 479
	i32 265, ; 480
	i32 246, ; 481
	i32 267, ; 482
	i32 165, ; 483
	i32 241, ; 484
	i32 192, ; 485
	i32 329, ; 486
	i32 264, ; 487
	i32 255, ; 488
	i32 170, ; 489
	i32 16, ; 490
	i32 144, ; 491
	i32 304, ; 492
	i32 125, ; 493
	i32 118, ; 494
	i32 38, ; 495
	i32 115, ; 496
	i32 47, ; 497
	i32 142, ; 498
	i32 117, ; 499
	i32 200, ; 500
	i32 34, ; 501
	i32 174, ; 502
	i32 95, ; 503
	i32 53, ; 504
	i32 256, ; 505
	i32 198, ; 506
	i32 129, ; 507
	i32 153, ; 508
	i32 24, ; 509
	i32 161, ; 510
	i32 232, ; 511
	i32 148, ; 512
	i32 104, ; 513
	i32 89, ; 514
	i32 220, ; 515
	i32 60, ; 516
	i32 142, ; 517
	i32 100, ; 518
	i32 5, ; 519
	i32 13, ; 520
	i32 122, ; 521
	i32 135, ; 522
	i32 28, ; 523
	i32 299, ; 524
	i32 72, ; 525
	i32 230, ; 526
	i32 24, ; 527
	i32 196, ; 528
	i32 218, ; 529
	i32 260, ; 530
	i32 257, ; 531
	i32 316, ; 532
	i32 137, ; 533
	i32 211, ; 534
	i32 227, ; 535
	i32 168, ; 536
	i32 261, ; 537
	i32 295, ; 538
	i32 101, ; 539
	i32 204, ; 540
	i32 123, ; 541
	i32 231, ; 542
	i32 177, ; 543
	i32 163, ; 544
	i32 167, ; 545
	i32 234, ; 546
	i32 39, ; 547
	i32 184, ; 548
	i32 303, ; 549
	i32 17, ; 550
	i32 171, ; 551
	i32 316, ; 552
	i32 315, ; 553
	i32 137, ; 554
	i32 150, ; 555
	i32 223, ; 556
	i32 155, ; 557
	i32 130, ; 558
	i32 19, ; 559
	i32 65, ; 560
	i32 147, ; 561
	i32 47, ; 562
	i32 323, ; 563
	i32 209, ; 564
	i32 79, ; 565
	i32 61, ; 566
	i32 106, ; 567
	i32 259, ; 568
	i32 213, ; 569
	i32 49, ; 570
	i32 244, ; 571
	i32 320, ; 572
	i32 256, ; 573
	i32 14, ; 574
	i32 176, ; 575
	i32 68, ; 576
	i32 171, ; 577
	i32 326, ; 578
	i32 219, ; 579
	i32 223, ; 580
	i32 325, ; 581
	i32 78, ; 582
	i32 228, ; 583
	i32 108, ; 584
	i32 212, ; 585
	i32 255, ; 586
	i32 67, ; 587
	i32 63, ; 588
	i32 27, ; 589
	i32 160, ; 590
	i32 221, ; 591
	i32 10, ; 592
	i32 184, ; 593
	i32 11, ; 594
	i32 78, ; 595
	i32 254, ; 596
	i32 126, ; 597
	i32 83, ; 598
	i32 178, ; 599
	i32 66, ; 600
	i32 107, ; 601
	i32 65, ; 602
	i32 128, ; 603
	i32 122, ; 604
	i32 77, ; 605
	i32 270, ; 606
	i32 260, ; 607
	i32 324, ; 608
	i32 8, ; 609
	i32 227, ; 610
	i32 2, ; 611
	i32 44, ; 612
	i32 273, ; 613
	i32 156, ; 614
	i32 128, ; 615
	i32 258, ; 616
	i32 23, ; 617
	i32 133, ; 618
	i32 215, ; 619
	i32 246, ; 620
	i32 319, ; 621
	i32 301, ; 622
	i32 29, ; 623
	i32 214, ; 624
	i32 62, ; 625
	i32 186, ; 626
	i32 90, ; 627
	i32 87, ; 628
	i32 148, ; 629
	i32 188, ; 630
	i32 36, ; 631
	i32 86, ; 632
	i32 235, ; 633
	i32 314, ; 634
	i32 309, ; 635
	i32 177, ; 636
	i32 50, ; 637
	i32 6, ; 638
	i32 90, ; 639
	i32 321, ; 640
	i32 21, ; 641
	i32 162, ; 642
	i32 96, ; 643
	i32 50, ; 644
	i32 203, ; 645
	i32 113, ; 646
	i32 251, ; 647
	i32 327, ; 648
	i32 130, ; 649
	i32 194, ; 650
	i32 76, ; 651
	i32 27, ; 652
	i32 228, ; 653
	i32 250, ; 654
	i32 7, ; 655
	i32 185, ; 656
	i32 110, ; 657
	i32 251, ; 658
	i32 237 ; 659
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 4

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 4

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 4

; Functions

; Function attributes: "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nofree norecurse nosync nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 4, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 1

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: "no-trapping-math"="true" noreturn nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nofree norecurse nosync nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { "no-trapping-math"="true" noreturn nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }

; Metadata
!llvm.module.flags = !{!0, !1, !7}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.2xx @ 96b6bb65e8736e45180905177aa343f0e1854ea3"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"min_enum_size", i32 4}
