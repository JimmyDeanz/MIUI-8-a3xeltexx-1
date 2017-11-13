.class final Landroid/app/SystemServiceRegistry;
.super Ljava/lang/Object;
.source "SystemServiceRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/SystemServiceRegistry$StaticOuterContextServiceFetcher;,
        Landroid/app/SystemServiceRegistry$StaticServiceFetcher;,
        Landroid/app/SystemServiceRegistry$CachedServiceFetcher;,
        Landroid/app/SystemServiceRegistry$ServiceFetcher;
    }
.end annotation


# static fields
.field private static final SYSTEM_SERVICE_FETCHERS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/SystemServiceRegistry$ServiceFetcher",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static final SYSTEM_SERVICE_NAMES:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SystemServiceRegistry"

.field private static sServiceCacheSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_NAMES:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_FETCHERS:Ljava/util/HashMap;

    const-string v0, "accessibility"

    const-class v1, Landroid/view/accessibility/AccessibilityManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$1;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$1;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string v0, "captioning"

    const-class v1, Landroid/view/accessibility/CaptioningManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$2;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$2;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string v0, "account"

    const-class v1, Landroid/accounts/AccountManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$3;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$3;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string v0, "activity"

    const-class v1, Landroid/app/ActivityManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$4;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$4;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string v0, "iccc"

    const-class v1, Lcom/samsung/android/iccc/IntegrityControlCheckCenter;

    new-instance v2, Landroid/app/SystemServiceRegistry$5;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$5;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string v0, "alarm"

    const-class v1, Landroid/app/AlarmManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$6;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$6;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string v0, "audio"

    const-class v1, Landroid/media/AudioManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$7;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$7;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string v0, "media_router"

    const-class v1, Landroid/media/MediaRouter;

    new-instance v2, Landroid/app/SystemServiceRegistry$8;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$8;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string v0, "bluetooth"

    const-class v1, Landroid/bluetooth/BluetoothManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$9;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$9;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string v0, "hdmi_control"

    const-class v1, Landroid/hardware/hdmi/HdmiControlManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$10;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$10;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string v0, "clipboard"

    const-class v1, Landroid/content/ClipboardManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$11;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$11;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    sget-object v0, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_NAMES:Ljava/util/HashMap;

    const-class v1, Landroid/text/ClipboardManager;

    const-string v2, "clipboard"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "clipboardEx"

    const-class v1, Landroid/sec/clipboard/ClipboardExManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$12;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$12;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string v0, "connectivity"

    const-class v1, Landroid/net/ConnectivityManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$13;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$13;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string v0, "country_detector"

    const-class v1, Landroid/location/CountryDetector;

    new-instance v2, Landroid/app/SystemServiceRegistry$14;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$14;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string v0, "device_policy"

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$15;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$15;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string v0, "download"

    const-class v1, Landroid/app/DownloadManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$16;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$16;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string v0, "batterymanager"

    const-class v1, Landroid/os/BatteryManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$17;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$17;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string v0, "nfc"

    const-class v1, Landroid/nfc/NfcManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$18;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$18;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string v0, "dropbox"

    const-class v1, Landroid/os/DropBoxManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$19;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$19;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string v0, "input"

    const-class v1, Landroid/hardware/input/InputManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$20;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$20;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string v0, "display"

    const-class v1, Landroid/hardware/display/DisplayManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$21;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$21;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string v0, "input_method"

    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$22;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$22;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string v0, "textservices"

    const-class v1, Landroid/view/textservice/TextServicesManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$23;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$23;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string v0, "keyguard"

    const-class v1, Landroid/app/KeyguardManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$24;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$24;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string v0, "layout_inflater"

    const-class v1, Landroid/view/LayoutInflater;

    new-instance v2, Landroid/app/SystemServiceRegistry$25;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$25;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string v0, "location"

    const-class v1, Landroid/location/LocationManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$26;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$26;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string v0, "sec_location"

    const-class v1, Lcom/samsung/location/SLocationManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$27;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$27;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string v0, "netpolicy"

    const-class v1, Landroid/net/NetworkPolicyManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$29;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$29;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string v0, "notification"

    const-class v1, Landroid/app/NotificationManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$30;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$30;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_SupportHuxWiFiPromptDataOveruse"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "wifioffload"

    const-class v1, Landroid/net/wifi/WifiOffloadManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$31;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$31;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    :cond_0
    const-string v0, "servicediscovery"

    const-class v1, Landroid/net/nsd/NsdManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$32;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$32;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string v0, "power"

    const-class v1, Landroid/os/PowerManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$33;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$33;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string v0, "CustomFrequencyManagerService"

    const-class v1, Landroid/os/CustomFrequencyManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$34;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$34;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string v0, "search"

    const-class v1, Landroid/app/SearchManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$35;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$35;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string v0, "sensor"

    const-class v1, Landroid/hardware/SensorManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$36;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$36;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string v0, "sensorhub"

    const-class v1, Lcom/samsung/android/sensorhub/SensorHubManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$37;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$37;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string v0, "statusbar"

    const-class v1, Landroid/app/StatusBarManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$38;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$38;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string v0, "storage"

    const-class v1, Landroid/os/storage/StorageManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$39;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$39;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string v0, "phone"

    const-class v1, Landroid/telephony/TelephonyManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$40;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$40;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string v0, "telephony_subscription_service"

    const-class v1, Landroid/telephony/SubscriptionManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$41;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$41;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string v0, "carrier_config"

    const-class v1, Landroid/telephony/CarrierConfigManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$42;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$42;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string v0, "telecom"

    const-class v1, Landroid/telecom/TelecomManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$43;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$43;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string v0, "uimode"

    const-class v1, Landroid/app/UiModeManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$44;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$44;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string v0, "usb"

    const-class v1, Landroid/hardware/usb/UsbManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$45;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$45;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string v0, "serial"

    const-class v1, Landroid/hardware/SerialManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$46;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$46;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string v0, "vibrator"

    const-class v1, Landroid/os/Vibrator;

    new-instance v2, Landroid/app/SystemServiceRegistry$47;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$47;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string v0, "wallpaper"

    const-class v1, Landroid/app/WallpaperManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$48;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$48;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string v0, "context_aware"

    const-class v1, Lcom/samsung/android/contextaware/ContextAwareManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$49;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$49;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string v0, "scontext"

    const-class v1, Landroid/hardware/scontext/SContextManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$50;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$50;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string v0, "wifi"

    const-class v1, Landroid/net/wifi/WifiManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$51;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$51;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string v0, "wifihs20"

    const-class v1, Landroid/net/wifi/hs20/WifiHs20Manager;

    new-instance v2, Landroid/app/SystemServiceRegistry$52;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$52;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string v0, "wifip2p"

    const-class v1, Landroid/net/wifi/p2p/WifiP2pManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$53;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$53;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string v0, "wifiscanner"

    const-class v1, Landroid/net/wifi/WifiScanner;

    new-instance v2, Landroid/app/SystemServiceRegistry$54;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$54;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string v0, "rttmanager"

    const-class v1, Landroid/net/wifi/RttManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$55;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$55;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string v0, "ethernet"

    const-class v1, Landroid/net/EthernetManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$56;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$56;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string v0, "window"

    const-class v1, Landroid/view/WindowManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$57;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$57;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string v0, "ktuca"

    const-class v1, Landroid/ktuca/KtUcaManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$58;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$58;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string v0, "user"

    const-class v1, Landroid/os/UserManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$59;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$59;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string v0, "appops"

    const-class v1, Landroid/app/AppOpsManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$60;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$60;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string v0, "camera"

    const-class v1, Landroid/hardware/camera2/CameraManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$61;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$61;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string v0, "launcherapps"

    const-class v1, Landroid/content/pm/LauncherApps;

    new-instance v2, Landroid/app/SystemServiceRegistry$62;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$62;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string v0, "restrictions"

    const-class v1, Landroid/content/RestrictionsManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$63;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$63;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string v0, "print"

    const-class v1, Landroid/print/PrintManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$64;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$64;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string v0, "consumer_ir"

    const-class v1, Landroid/hardware/ConsumerIrManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$65;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$65;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string v0, "media_session"

    const-class v1, Landroid/media/session/MediaSessionManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$66;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$66;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string v0, "trust"

    const-class v1, Landroid/app/trust/TrustManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$67;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$67;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string v0, "fingerprint"

    const-class v1, Landroid/hardware/fingerprint/FingerprintManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$68;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$68;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string v0, "tv_input"

    const-class v1, Landroid/media/tv/TvInputManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$70;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$70;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string v0, "network_score"

    const-class v1, Landroid/net/NetworkScoreManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$71;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$71;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string v0, "usagestats"

    const-class v1, Landroid/app/usage/UsageStatsManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$72;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$72;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string v0, "netstats"

    const-class v1, Landroid/app/usage/NetworkStatsManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$73;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$73;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string v0, "jobscheduler"

    const-class v1, Landroid/app/job/JobScheduler;

    new-instance v2, Landroid/app/SystemServiceRegistry$74;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$74;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string v0, "persistent_data_block"

    const-class v1, Landroid/service/persistentdata/PersistentDataBlockManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$75;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$75;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string v0, "barbeam"

    const-class v1, Landroid/app/BarBeamCommandImpl;

    new-instance v2, Landroid/app/SystemServiceRegistry$76;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$76;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string v0, "media_projection"

    const-class v1, Landroid/media/projection/MediaProjectionManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$77;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$77;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string v0, "appwidget"

    const-class v1, Landroid/appwidget/AppWidgetManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$78;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$78;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string v0, "motion_recognition"

    const-class v1, Landroid/hardware/motion/MotionRecognitionManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$79;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$79;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string v0, "midi"

    const-class v1, Landroid/media/midi/MidiManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$80;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$80;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string v0, "radio"

    const-class v1, Landroid/hardware/radio/RadioManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$81;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$81;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string v0, "ABTPersistenceService"

    const-class v1, Lcom/absolute/android/persistence/ABTPersistenceManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$82;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$82;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string v0, "spengestureservice"

    const-class v1, Lcom/samsung/android/smartclip/SpenGestureManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$87;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$87;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string v0, "vr"

    const-class v1, Landroid/app/VRManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$88;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$88;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string v0, "persona"

    const-class v1, Landroid/os/PersonaManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$89;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$89;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string v0, "rcp"

    const-class v1, Landroid/os/RCPManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$90;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$90;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string v0, "execute"

    const-class v1, Lcom/samsung/android/app/ExecuteManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$91;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$91;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_SupportEpdg"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "epdg"

    const-class v1, Lcom/sec/epdg/EpdgManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$92;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$92;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    :cond_1
    const-string v0, "2"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_2

    const-string v0, "FMPlayer"

    const-class v1, Lcom/samsung/android/media/fmradio/FmPlayer;

    new-instance v2, Landroid/app/SystemServiceRegistry$94;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$94;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    :cond_2
    const-string v0, "mDNIe"

    const-class v1, Lcom/samsung/android/mdnie/MdnieManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$95;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$95;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string v0, "AAS"

    const-class v1, Lcom/samsung/android/allaroundsensing/AASManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$96;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$96;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-string v0, "MSCS"

    const-class v1, Lcom/samsung/android/mscs/MSCSManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$97;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$97;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    invoke-static {}, Landroid/app/ContextImplInjector;->registerMiuiServices()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$008()I
    .locals 2

    .prologue
    sget v0, Landroid/app/SystemServiceRegistry;->sServiceCacheSize:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Landroid/app/SystemServiceRegistry;->sServiceCacheSize:I

    return v0
.end method

.method public static createServiceCache()[Ljava/lang/Object;
    .locals 1

    .prologue
    sget v0, Landroid/app/SystemServiceRegistry;->sServiceCacheSize:I

    new-array v0, v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public static getSystemService(Landroid/app/ContextImpl;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p0, "ctx"    # Landroid/app/ContextImpl;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    sget-object v1, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_FETCHERS:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SystemServiceRegistry$ServiceFetcher;

    .local v0, "fetcher":Landroid/app/SystemServiceRegistry$ServiceFetcher;, "Landroid/app/SystemServiceRegistry$ServiceFetcher<*>;"
    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Landroid/app/SystemServiceRegistry$ServiceFetcher;->getService(Landroid/app/ContextImpl;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getSystemServiceName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_NAMES:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private static registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V
    .locals 1
    .param p0, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Landroid/app/SystemServiceRegistry$ServiceFetcher",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p1, "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "serviceFetcher":Landroid/app/SystemServiceRegistry$ServiceFetcher;, "Landroid/app/SystemServiceRegistry$ServiceFetcher<TT;>;"
    sget-object v0, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_NAMES:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_FETCHERS:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
