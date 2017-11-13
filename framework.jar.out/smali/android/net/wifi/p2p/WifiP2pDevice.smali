.class public Landroid/net/wifi/p2p/WifiP2pDevice;
.super Ljava/lang/Object;
.source "WifiP2pDevice.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final AVAILABLE:I = 0x3

.field public static final CONNECTED:I = 0x0

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/p2p/WifiP2pDevice;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEVICE_CAPAB_CLIENT_DISCOVERABILITY:I = 0x2

.field private static final DEVICE_CAPAB_CONCURRENT_OPER:I = 0x4

.field private static final DEVICE_CAPAB_DEVICE_LIMIT:I = 0x10

.field private static final DEVICE_CAPAB_INFRA_MANAGED:I = 0x8

.field private static final DEVICE_CAPAB_INVITATION_PROCEDURE:I = 0x20

.field private static final DEVICE_CAPAB_SERVICE_DISCOVERY:I = 0x1

.field public static final FAILED:I = 0x2

.field private static final GROUP_CAPAB_CROSS_CONN:I = 0x10

.field private static final GROUP_CAPAB_GROUP_FORMATION:I = 0x40

.field private static final GROUP_CAPAB_GROUP_LIMIT:I = 0x4

.field private static final GROUP_CAPAB_GROUP_OWNER:I = 0x1

.field private static final GROUP_CAPAB_INTRA_BSS_DIST:I = 0x8

.field private static final GROUP_CAPAB_PERSISTENT_GROUP:I = 0x2

.field private static final GROUP_CAPAB_PERSISTENT_RECONN:I = 0x20

.field public static final INVITED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "WifiP2pDevice"

.field public static final UNAVAILABLE:I = 0x4

.field private static final WPS_CONFIG_DISPLAY:I = 0x8

.field private static final WPS_CONFIG_KEYPAD:I = 0x100

.field private static final WPS_CONFIG_PUSHBUTTON:I = 0x80

.field private static final contactInfoHashPattern:Ljava/util/regex/Pattern;

.field private static final detailedDevicePattern:Ljava/util/regex/Pattern;

.field private static final goAddrPattern:Ljava/util/regex/Pattern;

.field private static final iconPattern:Ljava/util/regex/Pattern;

.field private static final intendedAddrPattern:Ljava/util/regex/Pattern;

.field private static final prefixPattern:Ljava/util/regex/Pattern;

.field private static final sconnectPattern:Ljava/util/regex/Pattern;

.field private static final ssDevInfoPattern:Ljava/util/regex/Pattern;

.field private static final threeTokenPattern:Ljava/util/regex/Pattern;

.field private static final twoTokenPattern:Ljava/util/regex/Pattern;


# instance fields
.field public GOdeviceName:Ljava/lang/String;

.field public SConnectInfo:Ljava/lang/String;

.field public candidateStaticIp:I

.field public contactImage:Landroid/graphics/Bitmap;

.field public contactInfoHash:Ljava/lang/String;

.field public deviceAddress:Ljava/lang/String;

.field public deviceCapability:I

.field public deviceName:Ljava/lang/String;

.field public groupCapability:I

.field public groupownerAddress:Ljava/lang/String;

.field public iconIdx:I

.field public interfaceAddress:Ljava/lang/String;

.field public primaryDeviceType:Ljava/lang/String;

.field public secondaryDeviceType:Ljava/lang/String;

.field public ssDevInfo:I

.field public status:I

.field public wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

.field public wpsConfigMethodsSupported:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 179
    const-string v0, "((?:[0-9a-f]{2}:){5}[0-9a-f]{2}) (\\d+ )?p2p_dev_addr=((?:[0-9a-f]{2}:){5}[0-9a-f]{2}) pri_dev_type=(\\d+-[0-9a-fA-F]+-\\d+) name=\'(.*)\' config_methods=(0x[0-9a-fA-F]+) dev_capab=(0x[0-9a-fA-F]+) group_capab=(0x[0-9a-fA-F]+)( wfd_dev_info=0x([0-9a-fA-F]{12}))?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pDevice;->detailedDevicePattern:Ljava/util/regex/Pattern;

    .line 196
    const-string v0, "(p2p_dev_addr=)?((?:[0-9a-f]{2}:){5}[0-9a-f]{2})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pDevice;->twoTokenPattern:Ljava/util/regex/Pattern;

    .line 205
    const-string v0, "(?:[0-9a-f]{2}:){5}[0-9a-f]{2} p2p_dev_addr=((?:[0-9a-f]{2}:){5}[0-9a-f]{2})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pDevice;->threeTokenPattern:Ljava/util/regex/Pattern;

    .line 210
    const-string/jumbo v0, "p2p_go_addr=((?:[0-9a-f]{2}:){5}[0-9a-f]{2})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pDevice;->goAddrPattern:Ljava/util/regex/Pattern;

    .line 214
    const-string/jumbo v0, "p2p_intended_addr=((?:[0-9a-f]{2}:){5}[0-9a-f]{2})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pDevice;->intendedAddrPattern:Ljava/util/regex/Pattern;

    .line 218
    const-string v0, " sc_info=0x([0-9a-fA-F]*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pDevice;->sconnectPattern:Ljava/util/regex/Pattern;

    .line 223
    const-string v0, " ss_dev_info=0x([0-9a-fA-F]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pDevice;->ssDevInfoPattern:Ljava/util/regex/Pattern;

    .line 228
    const-string v0, " icon=0x([0-9a-fA-F]*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pDevice;->iconPattern:Ljava/util/regex/Pattern;

    .line 232
    const-string v0, " prefix=\'(.+)\'"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pDevice;->prefixPattern:Ljava/util/regex/Pattern;

    .line 236
    const-string v0, " contact_info=0x([0-9a-fA-F]*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pDevice;->contactInfoHashPattern:Ljava/util/regex/Pattern;

    .line 538
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDevice$1;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pDevice$1;-><init>()V

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string v0, ""

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 47
    const-string v0, ""

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 51
    const-string v0, ""

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->interfaceAddress:Ljava/lang/String;

    .line 139
    const/4 v0, 0x4

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    .line 165
    iput-object v1, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->contactInfoHash:Ljava/lang/String;

    .line 168
    iput-object v1, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->contactImage:Landroid/graphics/Bitmap;

    .line 171
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->iconIdx:I

    .line 241
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 2
    .param p1, "source"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    const/4 v1, 0x0

    .line 485
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string v0, ""

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 47
    const-string v0, ""

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 51
    const-string v0, ""

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->interfaceAddress:Ljava/lang/String;

    .line 139
    const/4 v0, 0x4

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    .line 165
    iput-object v1, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->contactInfoHash:Ljava/lang/String;

    .line 168
    iput-object v1, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->contactImage:Landroid/graphics/Bitmap;

    .line 171
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->iconIdx:I

    .line 486
    if-eqz p1, :cond_0

    .line 487
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 488
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 489
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    .line 490
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->secondaryDeviceType:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->secondaryDeviceType:Ljava/lang/String;

    .line 491
    iget v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsConfigMethodsSupported:I

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsConfigMethodsSupported:I

    .line 492
    iget v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceCapability:I

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceCapability:I

    .line 493
    iget v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->groupCapability:I

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->groupCapability:I

    .line 494
    iget v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    .line 495
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->groupownerAddress:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->groupownerAddress:Ljava/lang/String;

    .line 496
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->GOdeviceName:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->GOdeviceName:Ljava/lang/String;

    .line 498
    iget v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->candidateStaticIp:I

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->candidateStaticIp:I

    .line 499
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    .line 500
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->interfaceAddress:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->interfaceAddress:Ljava/lang/String;

    .line 501
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->SConnectInfo:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->SConnectInfo:Ljava/lang/String;

    .line 502
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->contactInfoHash:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->contactInfoHash:Ljava/lang/String;

    .line 503
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->contactImage:Landroid/graphics/Bitmap;

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->contactImage:Landroid/graphics/Bitmap;

    .line 504
    iget v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->ssDevInfo:I

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->ssDevInfo:I

    .line 505
    iget v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->iconIdx:I

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->iconIdx:I

    .line 507
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 18
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 260
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string v13, ""

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 47
    const-string v13, ""

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 51
    const-string v13, ""

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->interfaceAddress:Ljava/lang/String;

    .line 139
    const/4 v13, 0x4

    move-object/from16 v0, p0

    iput v13, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    .line 165
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->contactInfoHash:Ljava/lang/String;

    .line 168
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->contactImage:Landroid/graphics/Bitmap;

    .line 171
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->iconIdx:I

    .line 261
    const-string v13, "[ \n]"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 270
    .local v12, "tokens":[Ljava/lang/String;
    array-length v13, v12

    const/4 v14, 0x1

    if-ge v13, v14, :cond_0

    .line 271
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string v14, "Malformed supplicant event"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 274
    :cond_0
    array-length v13, v12

    packed-switch v13, :pswitch_data_0

    .line 299
    sget-object v13, Landroid/net/wifi/p2p/WifiP2pDevice;->detailedDevicePattern:Ljava/util/regex/Pattern;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 300
    .local v4, "match":Ljava/util/regex/Matcher;
    sget-object v13, Landroid/net/wifi/p2p/WifiP2pDevice;->goAddrPattern:Ljava/util/regex/Pattern;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 301
    .local v6, "matchForGoAddr":Ljava/util/regex/Matcher;
    sget-object v13, Landroid/net/wifi/p2p/WifiP2pDevice;->sconnectPattern:Ljava/util/regex/Pattern;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 302
    .local v2, "Sconnect":Ljava/util/regex/Matcher;
    sget-object v13, Landroid/net/wifi/p2p/WifiP2pDevice;->ssDevInfoPattern:Ljava/util/regex/Pattern;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    .line 305
    .local v10, "matchForSS":Ljava/util/regex/Matcher;
    sget-object v13, Landroid/net/wifi/p2p/WifiP2pDevice;->iconPattern:Ljava/util/regex/Pattern;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 306
    .local v7, "matchForIcon":Ljava/util/regex/Matcher;
    sget-object v13, Landroid/net/wifi/p2p/WifiP2pDevice;->prefixPattern:Ljava/util/regex/Pattern;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    .line 307
    .local v9, "matchForPrifix":Ljava/util/regex/Matcher;
    sget-object v13, Landroid/net/wifi/p2p/WifiP2pDevice;->contactInfoHashPattern:Ljava/util/regex/Pattern;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 308
    .local v5, "matchForContactHash":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v13

    if-nez v13, :cond_4

    .line 309
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string v14, "Malformed supplicant event"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 277
    .end local v2    # "Sconnect":Ljava/util/regex/Matcher;
    .end local v4    # "match":Ljava/util/regex/Matcher;
    .end local v5    # "matchForContactHash":Ljava/util/regex/Matcher;
    .end local v6    # "matchForGoAddr":Ljava/util/regex/Matcher;
    .end local v7    # "matchForIcon":Ljava/util/regex/Matcher;
    .end local v9    # "matchForPrifix":Ljava/util/regex/Matcher;
    .end local v10    # "matchForSS":Ljava/util/regex/Matcher;
    :pswitch_0
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 355
    :cond_1
    :goto_0
    return-void

    .line 280
    :pswitch_1
    sget-object v13, Landroid/net/wifi/p2p/WifiP2pDevice;->twoTokenPattern:Ljava/util/regex/Pattern;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 281
    .restart local v4    # "match":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v13

    if-nez v13, :cond_2

    .line 282
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string v14, "Malformed supplicant event"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 284
    :cond_2
    const/4 v13, 0x2

    invoke-virtual {v4, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    goto :goto_0

    .line 288
    .end local v4    # "match":Ljava/util/regex/Matcher;
    :pswitch_2
    sget-object v13, Landroid/net/wifi/p2p/WifiP2pDevice;->threeTokenPattern:Ljava/util/regex/Pattern;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 289
    .restart local v4    # "match":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v13

    if-nez v13, :cond_3

    .line 290
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string v14, "Malformed supplicant event"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 292
    :cond_3
    const/4 v13, 0x1

    invoke-virtual {v4, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 293
    sget-object v13, Landroid/net/wifi/p2p/WifiP2pDevice;->intendedAddrPattern:Ljava/util/regex/Pattern;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 294
    .local v8, "matchForIntendedAddr":Ljava/util/regex/Matcher;
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 295
    const/4 v13, 0x1

    invoke-virtual {v8, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->interfaceAddress:Ljava/lang/String;

    goto :goto_0

    .line 312
    .end local v8    # "matchForIntendedAddr":Ljava/util/regex/Matcher;
    .restart local v2    # "Sconnect":Ljava/util/regex/Matcher;
    .restart local v5    # "matchForContactHash":Ljava/util/regex/Matcher;
    .restart local v6    # "matchForGoAddr":Ljava/util/regex/Matcher;
    .restart local v7    # "matchForIcon":Ljava/util/regex/Matcher;
    .restart local v9    # "matchForPrifix":Ljava/util/regex/Matcher;
    .restart local v10    # "matchForSS":Ljava/util/regex/Matcher;
    :cond_4
    const/4 v13, 0x3

    invoke-virtual {v4, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 313
    const/4 v13, 0x4

    invoke-virtual {v4, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    .line 316
    const/4 v13, 0x5

    invoke-virtual {v4, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/net/wifi/WifiSsid;->createFromAsciiEncoded(Ljava/lang/String;)Landroid/net/wifi/WifiSsid;

    move-result-object v3

    .line 317
    .local v3, "devName":Landroid/net/wifi/WifiSsid;
    if-eqz v3, :cond_c

    invoke-virtual {v3}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    move-result-object v13

    :goto_1
    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 319
    const/4 v13, 0x6

    invoke-virtual {v4, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/net/wifi/p2p/WifiP2pDevice;->parseHex(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsConfigMethodsSupported:I

    .line 320
    const/4 v13, 0x7

    invoke-virtual {v4, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/net/wifi/p2p/WifiP2pDevice;->parseHex(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceCapability:I

    .line 321
    const/16 v13, 0x8

    invoke-virtual {v4, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/net/wifi/p2p/WifiP2pDevice;->parseHex(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->groupCapability:I

    .line 322
    const/16 v13, 0x9

    invoke-virtual {v4, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_5

    .line 323
    const/16 v13, 0xa

    invoke-virtual {v4, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    .line 324
    .local v11, "str":Ljava/lang/String;
    new-instance v13, Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    const/4 v14, 0x0

    const/4 v15, 0x4

    invoke-virtual {v11, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Landroid/net/wifi/p2p/WifiP2pDevice;->parseHex(Ljava/lang/String;)I

    move-result v14

    const/4 v15, 0x4

    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-virtual {v11, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Landroid/net/wifi/p2p/WifiP2pDevice;->parseHex(Ljava/lang/String;)I

    move-result v15

    const/16 v16, 0x8

    const/16 v17, 0xc

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/net/wifi/p2p/WifiP2pDevice;->parseHex(Ljava/lang/String;)I

    move-result v16

    invoke-direct/range {v13 .. v16}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;-><init>(III)V

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    .line 328
    .end local v11    # "str":Ljava/lang/String;
    :cond_5
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 329
    const/4 v13, 0x1

    invoke-virtual {v6, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->groupownerAddress:Ljava/lang/String;

    .line 331
    :cond_6
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 332
    const/4 v13, 0x1

    invoke-virtual {v2, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->SConnectInfo:Ljava/lang/String;

    .line 335
    :cond_7
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->find()Z

    move-result v13

    if-eqz v13, :cond_8

    .line 336
    const/4 v13, 0x1

    invoke-virtual {v10, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/net/wifi/p2p/WifiP2pDevice;->parseHex(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->ssDevInfo:I

    .line 340
    :cond_8
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v13

    if-eqz v13, :cond_9

    .line 341
    const/4 v13, 0x1

    invoke-virtual {v7, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/net/wifi/p2p/WifiP2pDevice;->parseHex(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->iconIdx:I

    .line 343
    :cond_9
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    move-result v13

    if-eqz v13, :cond_a

    .line 344
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v14, 0x1

    invoke-virtual {v9, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 346
    :cond_a
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v13

    if-eqz v13, :cond_b

    .line 347
    const/4 v13, 0x1

    invoke-virtual {v5, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->contactInfoHash:Ljava/lang/String;

    .line 352
    :cond_b
    const/4 v13, 0x0

    aget-object v13, v12, v13

    const-string v14, "P2P-DEVICE-FOUND"

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 353
    const/4 v13, 0x3

    move-object/from16 v0, p0

    iput v13, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    goto/16 :goto_0

    .line 317
    :cond_c
    const-string v13, "<unknown ssid>"

    goto/16 :goto_1

    .line 274
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private parseHex(Ljava/lang/String;)I
    .locals 5
    .param p1, "hexString"    # Ljava/lang/String;

    .prologue
    .line 573
    const/4 v1, 0x0

    .line 574
    .local v1, "num":I
    const-string v2, "0x"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "0X"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 575
    :cond_0
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 579
    :cond_1
    const/16 v2, 0x10

    :try_start_0
    invoke-static {p1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 583
    :goto_0
    return v1

    .line 580
    :catch_0
    move-exception v0

    .line 581
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v2, "WifiP2pDevice"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to parse hex string "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 481
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 448
    if-ne p0, p1, :cond_1

    .line 455
    :cond_0
    :goto_0
    return v1

    .line 449
    :cond_1
    instance-of v3, p1, Landroid/net/wifi/p2p/WifiP2pDevice;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 451
    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 452
    .local v0, "other":Landroid/net/wifi/p2p/WifiP2pDevice;
    if-eqz v0, :cond_3

    iget-object v3, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 453
    :cond_3
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0

    .line 455
    :cond_4
    iget-object v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public isDeviceLimit()Z
    .locals 1

    .prologue
    .line 384
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceCapability:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGroupClient()Ljava/lang/String;
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->groupownerAddress:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->groupownerAddress:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 398
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->groupownerAddress:Ljava/lang/String;

    .line 400
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGroupLimit()Z
    .locals 1

    .prologue
    .line 406
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->groupCapability:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGroupOwner()Z
    .locals 1

    .prologue
    .line 389
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->groupCapability:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInvitationCapable()Z
    .locals 1

    .prologue
    .line 379
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceCapability:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isServiceDiscoveryCapable()Z
    .locals 1

    .prologue
    .line 374
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceCapability:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 459
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 460
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    const-string v1, "Device: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 461
    const-string v1, "\n deviceAddress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 462
    const-string v1, "\n primary type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 463
    const-string v1, "\n secondary type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->secondaryDeviceType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 464
    const-string v1, "\n wps: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsConfigMethodsSupported:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 465
    const-string v1, "\n grpcapab: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->groupCapability:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 466
    const-string v1, "\n devcapab: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceCapability:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 467
    const-string v1, "\n status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 468
    const-string v1, "\n wfdInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 469
    const-string v1, "\n groupownerAddress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->groupownerAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 470
    const-string v1, "\n GOdeviceName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->GOdeviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 471
    const-string v1, "\n interfaceAddress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->interfaceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 472
    const-string v1, "\n SConnectInfo : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->SConnectInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 473
    const-string v1, "\n contactInfoHash : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->contactInfoHash:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 474
    const-string v1, "\n ssDevInfo : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->ssDevInfo:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 475
    const-string v1, "\n iconIdx : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->iconIdx:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 476
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public update(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 1
    .param p1, "device"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 417
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pDevice;->updateSupplicantDetails(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 418
    iget v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    .line 419
    return-void
.end method

.method public updateSupplicantDetails(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 2
    .param p1, "device"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 423
    if-nez p1, :cond_0

    .line 424
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "device is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 426
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 427
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "deviceAddress is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 429
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 430
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "deviceAddress does not match"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 432
    :cond_2
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 433
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    .line 434
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->secondaryDeviceType:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->secondaryDeviceType:Ljava/lang/String;

    .line 435
    iget v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsConfigMethodsSupported:I

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsConfigMethodsSupported:I

    .line 436
    iget v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceCapability:I

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceCapability:I

    .line 437
    iget v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->groupCapability:I

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->groupCapability:I

    .line 438
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    .line 439
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->SConnectInfo:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->SConnectInfo:Ljava/lang/String;

    .line 440
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->contactInfoHash:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->contactInfoHash:Ljava/lang/String;

    .line 441
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->contactImage:Landroid/graphics/Bitmap;

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->contactImage:Landroid/graphics/Bitmap;

    .line 442
    iget v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->ssDevInfo:I

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->ssDevInfo:I

    .line 443
    iget v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->iconIdx:I

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->iconIdx:I

    .line 444
    return-void
.end method

.method public wpsDisplaySupported()Z
    .locals 1

    .prologue
    .line 369
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsConfigMethodsSupported:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public wpsKeypadSupported()Z
    .locals 1

    .prologue
    .line 364
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsConfigMethodsSupported:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public wpsPbcSupported()Z
    .locals 1

    .prologue
    .line 359
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsConfigMethodsSupported:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 511
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 512
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 513
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 514
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->secondaryDeviceType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 515
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsConfigMethodsSupported:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 516
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceCapability:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 517
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->groupCapability:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 518
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 519
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    if-eqz v0, :cond_0

    .line 520
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 521
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v0, p1, p2}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 525
    :goto_0
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->groupownerAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 526
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->GOdeviceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 528
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->candidateStaticIp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 529
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->interfaceAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 530
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->SConnectInfo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 531
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->contactInfoHash:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 532
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->contactImage:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 533
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->ssDevInfo:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 534
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->iconIdx:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 535
    return-void

    .line 523
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method
