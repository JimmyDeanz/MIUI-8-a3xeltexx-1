.class public Lcom/absolute/android/utils/DeviceUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "APS"

.field private static final b:Z = false

.field private static final c:Ljava/lang/String; = "000000000000000"

.field private static final d:Ljava/lang/String; = "Android"

.field private static final e:Ljava/lang/Object;

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/Class;

.field private static h:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/absolute/android/utils/DeviceUtil;->e:Ljava/lang/Object;

    .line 39
    const/4 v0, 0x0

    sput-object v0, Lcom/absolute/android/utils/DeviceUtil;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v4, 0x14

    const/4 v2, 0x6

    const/16 v5, 0x20

    .line 65
    sget-object v3, Lcom/absolute/android/utils/DeviceUtil;->e:Ljava/lang/Object;

    monitor-enter v3

    .line 67
    :try_start_0
    sget-object v0, Lcom/absolute/android/utils/DeviceUtil;->f:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 69
    invoke-static {}, Lcom/absolute/android/utils/DeviceUtil;->getManufacturer()Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_7

    .line 72
    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 75
    :goto_0
    invoke-static {}, Lcom/absolute/android/utils/DeviceUtil;->getModel()Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v4, :cond_6

    .line 78
    const/4 v1, 0x0

    const/16 v4, 0x14

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 82
    :goto_1
    const-string v0, "1"

    const-string/jumbo v4, "ro.kernel.qemu"

    invoke-static {v4}, Lcom/absolute/android/utils/DeviceUtil;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 83
    invoke-static {p0}, Lcom/absolute/android/utils/DeviceUtil;->getTelephonyId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 84
    if-nez v0, :cond_0

    .line 85
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 87
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v5, :cond_1

    .line 88
    const/4 v4, 0x0

    const/16 v5, 0x20

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 90
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "~"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "~"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/absolute/android/utils/DeviceUtil;->f:Ljava/lang/String;

    .line 102
    :cond_2
    :goto_2
    sget-object v0, Lcom/absolute/android/utils/DeviceUtil;->f:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 104
    const-string v0, "000000000000000"

    sput-object v0, Lcom/absolute/android/utils/DeviceUtil;->f:Ljava/lang/String;

    .line 111
    :cond_3
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    sget-object v0, Lcom/absolute/android/utils/DeviceUtil;->f:Ljava/lang/String;

    return-object v0

    .line 93
    :cond_4
    :try_start_1
    invoke-static {}, Lcom/absolute/android/utils/DeviceUtil;->getSerialNumber()Ljava/lang/String;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v5, :cond_5

    .line 96
    const/4 v4, 0x0

    const/16 v5, 0x20

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 98
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "~"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "~"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/absolute/android/utils/DeviceUtil;->f:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_6
    move-object v1, v0

    goto/16 :goto_1

    :cond_7
    move-object v2, v0

    goto/16 :goto_0
.end method

.method public static getHardwareName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    const-string/jumbo v0, "ro.hardware"

    invoke-static {v0}, Lcom/absolute/android/utils/DeviceUtil;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getHardwareRevision()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    const-string/jumbo v0, "ro.revision"

    invoke-static {v0}, Lcom/absolute/android/utils/DeviceUtil;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMacAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 154
    const/4 v1, 0x0

    .line 157
    :try_start_0
    const-string/jumbo v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 158
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 169
    :goto_0
    return-object v0

    .line 159
    :catch_0
    move-exception v0

    .line 160
    const-string v2, "APS"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getMacAddress: exception caught getting wifi MAC address. Exception: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/absolute/android/utils/ExceptionUtil;->getExceptionMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_0
.end method

.method public static getManufacturer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    const-string/jumbo v0, "ro.product.manufacturer"

    invoke-static {v0}, Lcom/absolute/android/utils/DeviceUtil;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    const-string/jumbo v0, "ro.product.model"

    invoke-static {v0}, Lcom/absolute/android/utils/DeviceUtil;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getOSVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 246
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public static getPlatform()Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    const-string v0, "Android"

    return-object v0
.end method

.method public static getSerialNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    const-string/jumbo v0, "ro.serialno"

    invoke-static {v0}, Lcom/absolute/android/utils/DeviceUtil;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 258
    const-string v1, ""

    .line 259
    sget-object v2, Lcom/absolute/android/utils/DeviceUtil;->e:Ljava/lang/Object;

    monitor-enter v2

    .line 260
    :try_start_0
    sget-object v0, Lcom/absolute/android/utils/DeviceUtil;->h:Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 262
    :try_start_1
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 263
    const-string v3, "get"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/absolute/android/utils/DeviceUtil;->h:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 270
    :cond_0
    :goto_0
    :try_start_2
    sget-object v0, Lcom/absolute/android/utils/DeviceUtil;->h:Ljava/lang/reflect/Method;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_1

    .line 272
    :try_start_3
    sget-object v0, Lcom/absolute/android/utils/DeviceUtil;->h:Ljava/lang/reflect/Method;

    sget-object v3, Lcom/absolute/android/utils/DeviceUtil;->g:Ljava/lang/Class;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 279
    :goto_1
    :try_start_4
    monitor-exit v2

    .line 280
    return-object v0

    .line 265
    :catch_0
    move-exception v0

    .line 266
    const-string v3, "APS"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getSystemProperty: exception getting android.os.SystemProperties.get() method. Exception: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/absolute/android/utils/ExceptionUtil;->getExceptionMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 279
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 274
    :catch_1
    move-exception v0

    .line 275
    :try_start_5
    const-string v3, "APS"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getSystemProperty: exception getting invoking android.os.SystemProperties.get() method for propertyName: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Lcom/absolute/android/utils/ExceptionUtil;->getExceptionMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public static getTelephonyId(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 125
    const/4 v1, 0x0

    .line 127
    :try_start_0
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 129
    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 142
    :goto_0
    return-object v0

    .line 132
    :catch_0
    move-exception v0

    .line 133
    const-string v2, "APS"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getTelephonyId: exception caught invoking TelephonyManager.getDeviceId(). Exception: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/absolute/android/utils/ExceptionUtil;->getExceptionMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method
