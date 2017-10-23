.class public Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;
.super Landroid/net/wifi/hs20/IWifiHs20Manager$Stub;
.source "WifiHs20ServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl$UtilityHandler;
    }
.end annotation


# static fields
.field public static final HS20_UTILITY:Ljava/lang/String; = "com.samsung.settings.wifi.hs20.utility"

.field public static final HS20_UTILITY_ACTION_TYPE:Ljava/lang/String; = "com.samsung.settings.wifi.hs20.utility_action_type"

.field public static final HS20_UTILITY_ACTION_TYPE_ALARM_TRIGGERED:I = 0x138c

.field public static final HS20_UTILITY_ACTION_TYPE_BASE:I = 0x1388

.field public static final HS20_UTILITY_ACTION_TYPE_BOOT_COMPLETED:I = 0x138b

.field public static final HS20_UTILITY_ACTION_TYPE_CLEAR_BLACKLIST:I = 0x138e

.field public static final HS20_UTILITY_ACTION_TYPE_HS20_CONFIGURATION_CHANGED:I = 0x1396

.field public static final HS20_UTILITY_ACTION_TYPE_HS20_STATE_CHANGED:I = 0x1394

.field public static final HS20_UTILITY_ACTION_TYPE_LOCALE_CHANGED:I = 0x1390

.field public static final HS20_UTILITY_ACTION_TYPE_NETWORK_STATE_CHANGE:I = 0x138f

.field public static final HS20_UTILITY_ACTION_TYPE_PROVIDER_LIST_UPDATED:I = 0x1392

.field public static final HS20_UTILITY_ACTION_TYPE_PROVISIONING_STATE_CHANGE:I = 0x1391

.field public static final HS20_UTILITY_ACTION_TYPE_SHEDULE_CHANGED:I = 0x138a

.field public static final HS20_UTILITY_ACTION_TYPE_START_ACTIVITY:I = 0x138d

.field public static final HS20_UTILITY_ACTION_TYPE_WIFI_STATE_CHANGED:I = 0x1393

.field public static final HS20_UTILITY_ACTION_TYPE_WNM_NOTIFY_USER:I = 0x1389

.field private static final ICON_NETWORKS_HS20_H_CONNECTED:I = 0x108037b

.field private static final ICON_NETWORKS_HS20_R_CONNECTED:I = 0x108037c

.field private static final INVALID_RESOUCE_ID:I = 0x0

.field private static final TAG:Ljava/lang/String; = "WifiHs20Service"

.field private static final mConfigOpBranding:Ljava/lang/String;


# instance fields
.field private friendlyName:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mCurrentOsuIconFile:Ljava/lang/String;

.field private final mHS20StateMachine:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

.field private mHs20ConnNotiId:I

.field private mHs20NotiBuilder:Landroid/app/Notification$Builder;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mOsuProvider:Landroid/net/wifi/hs20/WifiHs20OsuProvider;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSales_code:Ljava/lang/String;

.field mUtilityHandler:Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl$UtilityHandler;

.field private mUtilityHandlerThread:Ljava/lang/Thread;

.field private final mWifiHs20DMHandler:Lcom/android/server/wifi/hs20/WifiHs20DMHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 108
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_ConfigOpBranding"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->mConfigOpBranding:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 112
    invoke-direct {p0}, Landroid/net/wifi/hs20/IWifiHs20Manager$Stub;-><init>()V

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->mUtilityHandler:Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl$UtilityHandler;

    .line 106
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->mHs20ConnNotiId:I

    .line 404
    new-instance v0, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl$1;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl$1;-><init>(Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;)V

    iput-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 113
    const-string v0, "WifiHs20Service"

    const-string v1, "Service created"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iput-object p1, p0, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->mContext:Landroid/content/Context;

    .line 115
    new-instance v0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->mContext:Landroid/content/Context;

    const-string v2, "wifi.interface"

    const-string v3, "wlan0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->mHS20StateMachine:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    .line 117
    new-instance v0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->mWifiHs20DMHandler:Lcom/android/server/wifi/hs20/WifiHs20DMHandler;

    .line 118
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Hs20UtilityHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->mUtilityHandlerThread:Ljava/lang/Thread;

    .line 119
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->mUtilityHandlerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 120
    new-instance v1, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl$UtilityHandler;

    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->mUtilityHandlerThread:Ljava/lang/Thread;

    check-cast v0, Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl$UtilityHandler;-><init>(Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->mUtilityHandler:Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl$UtilityHandler;

    .line 122
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->mNotificationManager:Landroid/app/NotificationManager;

    .line 124
    invoke-direct {p0}, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->registerForBroadcasts()V

    .line 125
    invoke-static {}, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->readSalesCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->mSales_code:Ljava/lang/String;

    .line 126
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;

    .prologue
    .line 66
    iget v0, p0, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->mHs20ConnNotiId:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private enforceAccessPermission()V
    .locals 3

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    const-string v2, "WifiHs20Service"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    return-void
.end method

.method private enforceAccessSecuredPermission()V
    .locals 3

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.sec.ACCESS_WIFI_SECURED_INFO"

    const-string v2, "WifiHs20Service"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    return-void
.end method

.method private enforceChangePermission()V
    .locals 3

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_WIFI_STATE"

    const-string v2, "WifiHs20Service"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    return-void
.end method

.method private static readSalesCode()Ljava/lang/String;
    .locals 4

    .prologue
    .line 147
    const-string v1, ""

    .line 149
    .local v1, "sales_code":Ljava/lang/String;
    :try_start_0
    const-string v2, "ril.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 150
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 151
    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 158
    :cond_0
    :goto_0
    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 172
    :goto_2
    return-object v1

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "WifiHs20Service"

    const-string v3, "readSalesCode failed"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 158
    .end local v0    # "e":Ljava/lang/Exception;
    :sswitch_0
    const-string v3, "SPR"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :sswitch_1
    const-string v3, "SPRINT"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :sswitch_2
    const-string v3, "VMU"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x2

    goto :goto_1

    :sswitch_3
    const-string v3, "XAS"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x3

    goto :goto_1

    :sswitch_4
    const-string v3, "BST"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x4

    goto :goto_1

    :sswitch_5
    const-string v3, "SKC"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x5

    goto :goto_1

    :sswitch_6
    const-string v3, "SKT"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x6

    goto :goto_1

    .line 165
    :pswitch_0
    const-string v1, "SPR"

    .line 166
    goto :goto_2

    .line 169
    :pswitch_1
    const-string v1, "SKT"

    goto :goto_2

    .line 158
    nop

    :sswitch_data_0
    .sparse-switch
        -0x6dd009e6 -> :sswitch_1
        0x10223 -> :sswitch_4
        0x140eb -> :sswitch_5
        0x140fc -> :sswitch_6
        0x14195 -> :sswitch_0
        0x14c7e -> :sswitch_2
        0x1528a -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private registerForBroadcasts()V
    .locals 3

    .prologue
    .line 136
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 137
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 138
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 139
    const-string v1, "com.android.server.wifi.hs20.blacklist_alarm"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 140
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 141
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 142
    const-string v1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 143
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 144
    return-void
.end method

.method private writeCredInfo(Ljava/lang/String;)V
    .locals 11
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 354
    const-string v3, "/data/misc/wifi/"

    .line 356
    .local v3, "filePath":Ljava/lang/String;
    :try_start_0
    new-instance v6, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "credential.conf"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 357
    .local v6, "newFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 358
    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 361
    :cond_0
    :try_start_1
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    .line 362
    const-string v8, "WifiHs20Service"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "File name :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "chmod 664  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 364
    .local v0, "command":Ljava/lang/String;
    const-string v8, "WifiHs20Service"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Command"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v7

    .line 367
    .local v7, "p":Ljava/lang/Process;
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Process;->waitFor()I

    .line 368
    invoke-virtual {v7}, Ljava/lang/Process;->destroy()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 375
    .end local v0    # "command":Ljava/lang/String;
    .end local v7    # "p":Ljava/lang/Process;
    :goto_0
    const/4 v4, 0x0

    .line 377
    .local v4, "fw":Ljava/io/FileOutputStream;
    :try_start_3
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 378
    .end local v4    # "fw":Ljava/io/FileOutputStream;
    .local v5, "fw":Ljava/io/FileOutputStream;
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 382
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    move-object v4, v5

    .line 389
    .end local v5    # "fw":Ljava/io/FileOutputStream;
    .end local v6    # "newFile":Ljava/io/File;
    :goto_1
    return-void

    .line 369
    .restart local v0    # "command":Ljava/lang/String;
    .restart local v6    # "newFile":Ljava/io/File;
    .restart local v7    # "p":Ljava/lang/Process;
    :catch_0
    move-exception v1

    .line 370
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_0

    .line 372
    .end local v0    # "command":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .end local v7    # "p":Ljava/lang/Process;
    :catch_1
    move-exception v1

    .line 373
    .local v1, "e":Ljava/io/IOException;
    :try_start_7
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_0

    .line 384
    .end local v1    # "e":Ljava/io/IOException;
    .end local v6    # "newFile":Ljava/io/File;
    :catch_2
    move-exception v1

    .line 385
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string v8, "WifiHs20Service"

    const-string v9, "File not found"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 379
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .restart local v4    # "fw":Ljava/io/FileOutputStream;
    .restart local v6    # "newFile":Ljava/io/File;
    :catch_3
    move-exception v2

    .line 380
    .local v2, "e1":Ljava/lang/Exception;
    :goto_2
    :try_start_8
    const-string v8, "WifiHs20Service"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 382
    :try_start_9
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_1

    .line 386
    .end local v2    # "e1":Ljava/lang/Exception;
    .end local v4    # "fw":Ljava/io/FileOutputStream;
    .end local v6    # "newFile":Ljava/io/File;
    :catch_4
    move-exception v1

    .line 387
    .local v1, "e":Ljava/io/IOException;
    const-string v8, "WifiHs20Service"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 382
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v4    # "fw":Ljava/io/FileOutputStream;
    .restart local v6    # "newFile":Ljava/io/File;
    :catchall_0
    move-exception v8

    :goto_3
    :try_start_a
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    throw v8
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    .end local v4    # "fw":Ljava/io/FileOutputStream;
    .restart local v5    # "fw":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v8

    move-object v4, v5

    .end local v5    # "fw":Ljava/io/FileOutputStream;
    .restart local v4    # "fw":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 379
    .end local v4    # "fw":Ljava/io/FileOutputStream;
    .restart local v5    # "fw":Ljava/io/FileOutputStream;
    :catch_5
    move-exception v2

    move-object v4, v5

    .end local v5    # "fw":Ljava/io/FileOutputStream;
    .restart local v4    # "fw":Ljava/io/FileOutputStream;
    goto :goto_2
.end method


# virtual methods
.method public cancelSubscription()V
    .locals 1

    .prologue
    .line 215
    invoke-direct {p0}, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->enforceAccessPermission()V

    .line 216
    invoke-direct {p0}, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->enforceChangePermission()V

    .line 217
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->mHS20StateMachine:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->cancelSubscription()V

    .line 218
    return-void
.end method

.method public deleteSubscription(I)Z
    .locals 1
    .param p1, "hsId"    # I

    .prologue
    .line 243
    invoke-direct {p0}, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->enforceAccessSecuredPermission()V

    .line 244
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->mHS20StateMachine:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->syncDeleteSubscription(I)Z

    move-result v0

    return v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 393
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump WifiHs20Service from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 403
    :goto_0
    return-void

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->mHS20StateMachine:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 402
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_0
.end method

.method public enableSubscription(IZ)Z
    .locals 1
    .param p1, "hsId"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 237
    invoke-direct {p0}, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->enforceAccessPermission()V

    .line 238
    invoke-direct {p0}, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->enforceChangePermission()V

    .line 239
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->mHS20StateMachine:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->syncEnableSubscription(IZ)Z

    move-result v0

    return v0
.end method

.method public getCertID(I)I
    .locals 3
    .param p1, "credentialID"    # I

    .prologue
    .line 335
    invoke-direct {p0}, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->enforceAccessSecuredPermission()V

    .line 336
    new-instance v1, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;-><init>(Landroid/content/Context;)V

    .line 337
    .local v1, "mDB":Lcom/android/server/wifi/hs20/WifiHs20DBHandler;
    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getcredentialInfo(ILjava/lang/String;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    move-result-object v0

    .line 338
    .local v0, "mCredential":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;
    iget-object v2, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->digitalCertificateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;

    iget v2, v2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;->certID:I

    return v2
.end method

.method public getCredentials(IILjava/lang/String;)Landroid/os/Bundle;
    .locals 4
    .param p1, "credentialType"    # I
    .param p2, "credentialID"    # I
    .param p3, "subscriptionType"    # Ljava/lang/String;

    .prologue
    .line 323
    invoke-direct {p0}, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->enforceAccessSecuredPermission()V

    .line 324
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->mWifiHs20DMHandler:Lcom/android/server/wifi/hs20/WifiHs20DMHandler;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getCredentials(IILjava/lang/String;)Landroid/net/wifi/hs20/WifiHs20DMData;

    move-result-object v1

    .line 326
    .local v1, "credentials":Landroid/net/wifi/hs20/WifiHs20DMData;
    if-nez v1, :cond_0

    .line 327
    const/4 v0, 0x0

    .line 331
    :goto_0
    return-object v0

    .line 328
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 329
    .local v0, "credData":Landroid/os/Bundle;
    const-string v2, "Username"

    iget-object v3, v1, Landroid/net/wifi/hs20/WifiHs20DMData;->username:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    const-string v2, "Password"

    iget-object v3, v1, Landroid/net/wifi/hs20/WifiHs20DMData;->password:[B

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    goto :goto_0
.end method

.method public getDMData(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 8
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 248
    invoke-direct {p0}, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->enforceAccessSecuredPermission()V

    .line 249
    new-instance v0, Landroid/net/wifi/hs20/WifiHs20DMData;

    invoke-direct {v0}, Landroid/net/wifi/hs20/WifiHs20DMData;-><init>()V

    .line 250
    .local v0, "data":Landroid/net/wifi/hs20/WifiHs20DMData;
    const-string v2, "Uri"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/hs20/WifiHs20DMData;->uri:Ljava/lang/String;

    .line 251
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->mWifiHs20DMHandler:Lcom/android/server/wifi/hs20/WifiHs20DMHandler;

    invoke-virtual {v2, v0}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getDMData(Landroid/net/wifi/hs20/WifiHs20DMData;)Z

    .line 252
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 253
    .local v1, "dmBundle":Landroid/os/Bundle;
    const-string v2, "WifiHs20Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDMData: format"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/net/wifi/hs20/WifiHs20DMData;->fmt:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget v2, v0, Landroid/net/wifi/hs20/WifiHs20DMData;->fmt:I

    if-nez v2, :cond_1

    .line 255
    const-string v2, "data"

    iget-wide v4, v0, Landroid/net/wifi/hs20/WifiHs20DMData;->intData:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 256
    const-string v2, "WifiHs20Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDMData:Integer data"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v0, Landroid/net/wifi/hs20/WifiHs20DMData;->intData:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    const-string v2, "Format"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 273
    :cond_0
    :goto_0
    return-object v1

    .line 258
    :cond_1
    iget v2, v0, Landroid/net/wifi/hs20/WifiHs20DMData;->fmt:I

    if-ne v2, v6, :cond_2

    .line 259
    const-string v2, "data"

    iget-boolean v3, v0, Landroid/net/wifi/hs20/WifiHs20DMData;->booleanData:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 260
    const-string v2, "WifiHs20Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDMData: booleanData data"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, v0, Landroid/net/wifi/hs20/WifiHs20DMData;->booleanData:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    const-string v2, "Format"

    invoke-virtual {v1, v2, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 262
    :cond_2
    iget v2, v0, Landroid/net/wifi/hs20/WifiHs20DMData;->fmt:I

    if-ne v2, v5, :cond_3

    .line 263
    const-string v2, "data"

    iget-object v3, v0, Landroid/net/wifi/hs20/WifiHs20DMData;->charData:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const-string v2, "WifiHs20Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDMData: charData data"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/net/wifi/hs20/WifiHs20DMData;->charData:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    const-string v2, "Format"

    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 266
    const-string v2, "dataLen"

    iget v3, v0, Landroid/net/wifi/hs20/WifiHs20DMData;->charDataLen:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 267
    :cond_3
    iget v2, v0, Landroid/net/wifi/hs20/WifiHs20DMData;->fmt:I

    if-ne v2, v7, :cond_0

    .line 268
    const-string v2, "data"

    iget-object v3, v0, Landroid/net/wifi/hs20/WifiHs20DMData;->byteData:[B

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 269
    const-string v2, "WifiHs20Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDMData: byteData data"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/net/wifi/hs20/WifiHs20DMData;->byteData:[B

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    const-string v2, "Format"

    invoke-virtual {v1, v2, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 271
    const-string v2, "dataLen"

    iget v3, v0, Landroid/net/wifi/hs20/WifiHs20DMData;->byteDataLen:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0
.end method

.method public getFormatType(Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 318
    invoke-direct {p0}, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->enforceAccessSecuredPermission()V

    .line 319
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->mWifiHs20DMHandler:Lcom/android/server/wifi/hs20/WifiHs20DMHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getFormatType(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getKeyPass()[B
    .locals 2

    .prologue
    .line 342
    invoke-direct {p0}, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->enforceAccessSecuredPermission()V

    .line 343
    new-instance v0, Lcom/android/server/wifi/hs20/WifiHs20PasswordGenerator;

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/wifi/hs20/WifiHs20PasswordGenerator;-><init>(Landroid/content/Context;)V

    .line 344
    .local v0, "hs20PasswordGenerator":Lcom/android/server/wifi/hs20/WifiHs20PasswordGenerator;
    invoke-virtual {v0}, Lcom/android/server/wifi/hs20/WifiHs20PasswordGenerator;->genPasswd1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    return-object v1
.end method

.method public getMessenger()Landroid/os/Messenger;
    .locals 2

    .prologue
    .line 180
    invoke-direct {p0}, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->enforceAccessPermission()V

    .line 181
    invoke-direct {p0}, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->enforceChangePermission()V

    .line 182
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->mHS20StateMachine:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    invoke-virtual {v1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method public getSubscribedSpList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/hs20/WifiHs20SubscribedSp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->mHS20StateMachine:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->syncGetSubscribedSpList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public handleDMRequest(Landroid/os/Bundle;)Z
    .locals 8
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v3, 0x1

    .line 277
    invoke-direct {p0}, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->enforceAccessSecuredPermission()V

    .line 278
    new-instance v1, Landroid/net/wifi/hs20/WifiHs20DMData;

    invoke-direct {v1}, Landroid/net/wifi/hs20/WifiHs20DMData;-><init>()V

    .line 279
    .local v1, "data":Landroid/net/wifi/hs20/WifiHs20DMData;
    const-string v4, "Action"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 280
    .local v0, "action":I
    const-string v4, "Format"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 281
    .local v2, "format":I
    if-ne v0, v3, :cond_1

    .line 282
    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->mWifiHs20DMHandler:Lcom/android/server/wifi/hs20/WifiHs20DMHandler;

    invoke-virtual {v3}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->startSession()Z

    move-result v3

    .line 314
    :cond_0
    :goto_0
    return v3

    .line 283
    :cond_1
    if-ne v0, v5, :cond_2

    .line 284
    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->mWifiHs20DMHandler:Lcom/android/server/wifi/hs20/WifiHs20DMHandler;

    const-string v4, "status"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->endSession(I)Z

    move-result v3

    goto :goto_0

    .line 285
    :cond_2
    if-eq v0, v6, :cond_3

    if-ne v0, v7, :cond_9

    .line 287
    :cond_3
    iput v2, v1, Landroid/net/wifi/hs20/WifiHs20DMData;->fmt:I

    .line 288
    const-string v4, "Uri"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/net/wifi/hs20/WifiHs20DMData;->uri:Ljava/lang/String;

    .line 289
    iget v4, v1, Landroid/net/wifi/hs20/WifiHs20DMData;->fmt:I

    if-nez v4, :cond_5

    .line 290
    const-string v3, "data"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v1, Landroid/net/wifi/hs20/WifiHs20DMData;->intData:J

    .line 300
    :cond_4
    :goto_1
    if-ne v0, v6, :cond_8

    .line 301
    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->mWifiHs20DMHandler:Lcom/android/server/wifi/hs20/WifiHs20DMHandler;

    invoke-virtual {v3, v1}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->addDMData(Landroid/net/wifi/hs20/WifiHs20DMData;)Z

    move-result v3

    goto :goto_0

    .line 291
    :cond_5
    iget v4, v1, Landroid/net/wifi/hs20/WifiHs20DMData;->fmt:I

    if-ne v4, v5, :cond_6

    .line 292
    const-string v3, "data"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v1, Landroid/net/wifi/hs20/WifiHs20DMData;->booleanData:Z

    goto :goto_1

    .line 293
    :cond_6
    iget v4, v1, Landroid/net/wifi/hs20/WifiHs20DMData;->fmt:I

    if-ne v4, v3, :cond_7

    .line 294
    const-string v3, "data"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/net/wifi/hs20/WifiHs20DMData;->charData:Ljava/lang/String;

    .line 295
    const-string v3, "dataLen"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Landroid/net/wifi/hs20/WifiHs20DMData;->charDataLen:I

    goto :goto_1

    .line 296
    :cond_7
    iget v3, v1, Landroid/net/wifi/hs20/WifiHs20DMData;->fmt:I

    if-ne v3, v7, :cond_4

    .line 297
    const-string v3, "data"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    iput-object v3, v1, Landroid/net/wifi/hs20/WifiHs20DMData;->byteData:[B

    .line 298
    const-string v3, "dataLen"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Landroid/net/wifi/hs20/WifiHs20DMData;->byteDataLen:I

    goto :goto_1

    .line 303
    :cond_8
    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->mWifiHs20DMHandler:Lcom/android/server/wifi/hs20/WifiHs20DMHandler;

    invoke-virtual {v3, v1}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->replaceDMData(Landroid/net/wifi/hs20/WifiHs20DMData;)Z

    move-result v3

    goto :goto_0

    .line 305
    :cond_9
    const/4 v4, 0x6

    if-ne v0, v4, :cond_a

    .line 306
    iput v2, v1, Landroid/net/wifi/hs20/WifiHs20DMData;->fmt:I

    .line 307
    const-string v3, "Uri"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/net/wifi/hs20/WifiHs20DMData;->uri:Ljava/lang/String;

    .line 308
    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->mWifiHs20DMHandler:Lcom/android/server/wifi/hs20/WifiHs20DMHandler;

    invoke-virtual {v3, v1}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->deleteDMData(Landroid/net/wifi/hs20/WifiHs20DMData;)Z

    move-result v3

    goto/16 :goto_0

    .line 309
    :cond_a
    const/4 v4, 0x7

    if-ne v0, v4, :cond_0

    .line 310
    const-string v3, "Command"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/net/wifi/hs20/WifiHs20DMData;->command:Ljava/lang/String;

    .line 311
    const-string v3, "execData"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/net/wifi/hs20/WifiHs20DMData;->execData:Ljava/lang/String;

    .line 312
    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->mWifiHs20DMHandler:Lcom/android/server/wifi/hs20/WifiHs20DMHandler;

    invoke-virtual {v3, v1}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->exec(Landroid/net/wifi/hs20/WifiHs20DMData;)Z

    move-result v3

    goto/16 :goto_0
.end method

.method public isSubscrptionInProgress()Z
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->mHS20StateMachine:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->isSubscrptionInProgress()Z

    move-result v0

    return v0
.end method

.method public modifyPasspointCred(Ljava/lang/String;)I
    .locals 1
    .param p1, "credInfo"    # Ljava/lang/String;

    .prologue
    .line 348
    invoke-direct {p0}, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->enforceAccessSecuredPermission()V

    .line 350
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->mHS20StateMachine:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->syncLoadCred(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public showHS20WifiNotification(Landroid/net/wifi/WifiConfiguration;)V
    .locals 13
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const v12, 0x108037c

    const v11, 0x108037b

    const/4 v10, 0x1

    const/4 v1, 0x0

    .line 564
    const-string v0, "WifiHs20Service"

    const-string v3, "showHS20WifiNotification"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    if-eqz p1, :cond_9

    .line 567
    const-string v0, "WifiHs20Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Passpoint sales  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->mSales_code:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    const-string v0, "SPR"

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->mSales_code:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 635
    :cond_0
    :goto_0
    return-void

    .line 573
    :cond_1
    const-string v0, "SKT"

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->mSales_code:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 574
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->isHS20Home:I

    if-eq v0, v10, :cond_0

    .line 579
    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->mHs20NotiBuilder:Landroid/app/Notification$Builder;

    if-nez v0, :cond_3

    .line 580
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const/4 v3, -0x4

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->mHs20NotiBuilder:Landroid/app/Notification$Builder;

    .line 583
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 584
    .local v2, "wifiSettingsIntent":Landroid/content/Intent;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v3, "CscFeature_Wifi_SupportAdvancedMenu"

    invoke-virtual {v0, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 586
    const-string v0, "com.android.settings"

    const-string v3, "com.android.settings.Settings$AdvancedWifiSettingsActivity"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 592
    :goto_1
    const v0, 0x10008000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 594
    iget-object v9, p0, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->mHs20NotiBuilder:Landroid/app/Notification$Builder;

    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move v3, v1

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 597
    .end local v2    # "wifiSettingsIntent":Landroid/content/Intent;
    :cond_3
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 598
    .local v7, "r":Landroid/content/res/Resources;
    const/4 v8, 0x0

    .line 599
    .local v8, "title":Ljava/lang/String;
    const/4 v6, 0x0

    .line 600
    .local v6, "message":Ljava/lang/String;
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->isHS20Home:I

    if-ne v0, v10, :cond_5

    .line 601
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->mHs20NotiBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v11}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 602
    iput v11, p0, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->mHs20ConnNotiId:I

    .line 607
    :goto_2
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->HS20VenueName:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 608
    const v0, 0x1040a72

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v3, v10, [Ljava/lang/Object;

    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v4, v3, v1

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 614
    :goto_3
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->HS20OperatorName:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 615
    const v0, 0x1040a74

    new-array v3, v10, [Ljava/lang/Object;

    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->HS20OperatorName:Ljava/lang/String;

    aput-object v4, v3, v1

    invoke-virtual {v7, v0, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 627
    :goto_4
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->mHs20NotiBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v8}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 628
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v1, "HS20_CONNECTED_NOTIFICATION"

    iget v3, p0, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->mHs20ConnNotiId:I

    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->mHs20NotiBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    .line 589
    .end local v6    # "message":Ljava/lang/String;
    .end local v7    # "r":Landroid/content/res/Resources;
    .end local v8    # "title":Ljava/lang/String;
    .restart local v2    # "wifiSettingsIntent":Landroid/content/Intent;
    :cond_4
    const-string v0, "com.android.settings"

    const-string v3, "com.android.settings.Settings$WifiSettingsActivity"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 604
    .end local v2    # "wifiSettingsIntent":Landroid/content/Intent;
    .restart local v6    # "message":Ljava/lang/String;
    .restart local v7    # "r":Landroid/content/res/Resources;
    .restart local v8    # "title":Ljava/lang/String;
    :cond_5
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->mHs20NotiBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v12}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 605
    iput v12, p0, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->mHs20ConnNotiId:I

    goto :goto_2

    .line 611
    :cond_6
    const v0, 0x1040a73

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v4, v3, v1

    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->HS20VenueName:Ljava/lang/String;

    aput-object v4, v3, v10

    invoke-virtual {v7, v0, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    .line 619
    :cond_7
    const-string v0, "SKT"

    sget-object v3, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->mConfigOpBranding:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 620
    const v0, 0x1040a75

    new-array v3, v10, [Ljava/lang/Object;

    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->HS20OperatorName:Ljava/lang/String;

    aput-object v4, v3, v1

    invoke-virtual {v7, v0, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    .line 624
    :cond_8
    const v0, 0x1040a76

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    .line 631
    .end local v6    # "message":Ljava/lang/String;
    .end local v7    # "r":Landroid/content/res/Resources;
    .end local v8    # "title":Ljava/lang/String;
    :cond_9
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v3, "HS20_CONNECTED_NOTIFICATION"

    iget v4, p0, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->mHs20ConnNotiId:I

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v3, v4, v5}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 633
    iput v1, p0, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->mHs20ConnNotiId:I

    goto/16 :goto_0
.end method

.method public startOSUProcess(Landroid/net/wifi/hs20/WifiHs20OsuProvider;)V
    .locals 2
    .param p1, "selectedOsuProvider"    # Landroid/net/wifi/hs20/WifiHs20OsuProvider;

    .prologue
    .line 201
    invoke-direct {p0}, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->enforceAccessPermission()V

    .line 202
    invoke-direct {p0}, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->enforceChangePermission()V

    .line 203
    iput-object p1, p0, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->mOsuProvider:Landroid/net/wifi/hs20/WifiHs20OsuProvider;

    .line 204
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->mOsuProvider:Landroid/net/wifi/hs20/WifiHs20OsuProvider;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->getFriendlyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->friendlyName:Ljava/lang/String;

    .line 205
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->mHS20StateMachine:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->startOSUProcess(Landroid/net/wifi/hs20/WifiHs20OsuProvider;)V

    .line 206
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/wifi/hs20/WifiHs20OsuProvider;->getOsuIcon(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->mCurrentOsuIconFile:Ljava/lang/String;

    .line 208
    return-void
.end method

.method public startPolicyUpdate(Ljava/lang/String;)V
    .locals 1
    .param p1, "fqdn"    # Ljava/lang/String;

    .prologue
    .line 221
    invoke-direct {p0}, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->enforceAccessPermission()V

    .line 222
    invoke-direct {p0}, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->enforceChangePermission()V

    .line 223
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->mHS20StateMachine:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->startPolicyUpdate(Ljava/lang/String;)V

    .line 224
    return-void
.end method

.method public systemServiceReady()V
    .locals 4

    .prologue
    .line 129
    const-string v2, "wifi"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 130
    .local v0, "s":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/net/wifi/IWifiManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/WifiServiceImpl;

    .line 131
    .local v1, "wifiServiceImpl":Lcom/android/server/wifi/WifiServiceImpl;
    invoke-virtual {v1}, Lcom/android/server/wifi/WifiServiceImpl;->getWifiMonitor()Lcom/android/server/wifi/WifiMonitor;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->mHS20StateMachine:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiMonitor;->setStateMachine2(Lcom/android/internal/util/StateMachine;)V

    .line 132
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->mHS20StateMachine:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    invoke-virtual {v2}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->systemServiceReady()V

    .line 133
    return-void
.end method

.method public updateCredPriorities(Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 231
    invoke-direct {p0}, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->enforceAccessPermission()V

    .line 232
    invoke-direct {p0}, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->enforceChangePermission()V

    .line 233
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20ServiceImpl;->mHS20StateMachine:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    invoke-virtual {v0, p1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->syncUpdateCredPriorities(Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method
