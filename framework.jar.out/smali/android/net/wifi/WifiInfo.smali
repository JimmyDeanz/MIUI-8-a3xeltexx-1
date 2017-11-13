.class public Landroid/net/wifi/WifiInfo;
.super Ljava/lang/Object;
.source "WifiInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/WifiInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_MAC_ADDRESS:Ljava/lang/String; = "02:00:00:00:00:00"

.field public static final FREQUENCY_UNITS:Ljava/lang/String; = "MHz"

.field public static final INVALID_RSSI:I = -0x7f

.field public static final LINK_SPEED_UNITS:Ljava/lang/String; = "Mbps"

.field public static final MAX_RSSI:I = 0xc8

.field public static final MIN_RSSI:I = -0x7e

.field private static final TAG:Ljava/lang/String; = "WifiInfo"

.field private static final WIFI_MAC_FILE:Ljava/lang/String; = "/efs/wifi/.mac.info"

.field private static final stateMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<",
            "Landroid/net/wifi/SupplicantState;",
            "Landroid/net/NetworkInfo$DetailedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public badRssiCount:I

.field public isGigaAp:Z

.field public isVendorAp:Z

.field public linkStuckCount:I

.field public lowRssiCount:I

.field private mAuthenticated:Z

.field private mBSSID:Ljava/lang/String;

.field private mCaptivePortal:Z

.field private mCheckVsieForSns:Z

.field private mDefaultAp:Z

.field private mEphemeral:Z

.field private mExpiration:Ljava/lang/String;

.field private mFrequency:I

.field private mIpAddress:Ljava/net/InetAddress;

.field private mLinkSpeed:I

.field private mLoginUrl:Ljava/lang/String;

.field private mMacAddress:Ljava/lang/String;

.field private mMeteredHint:Z

.field private mNetworkId:I

.field private mRssi:I

.field private mSharedAp:Z

.field private mSkipInternetCheck:Z

.field private mSupplicantState:Landroid/net/wifi/SupplicantState;

.field private mVerifiedPassword:Z

.field private mWifiSsid:Landroid/net/wifi/WifiSsid;

.field public rxSuccess:J

.field public rxSuccessRate:D

.field public score:I

.field public txBad:J

.field public txBadRate:D

.field public txRetries:J

.field public txRetriesRate:D

.field public txSuccess:J

.field public txSuccessRate:D


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 49
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Landroid/net/wifi/SupplicantState;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    .line 61
    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/wifi/SupplicantState;->INTERFACE_DISABLED:Landroid/net/wifi/SupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/wifi/SupplicantState;->INACTIVE:Landroid/net/wifi/SupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/wifi/SupplicantState;->SCANNING:Landroid/net/wifi/SupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/wifi/SupplicantState;->AUTHENTICATING:Landroid/net/wifi/SupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/wifi/SupplicantState;->ASSOCIATING:Landroid/net/wifi/SupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/wifi/SupplicantState;->ASSOCIATED:Landroid/net/wifi/SupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/wifi/SupplicantState;->FOUR_WAY_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/wifi/SupplicantState;->GROUP_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/wifi/SupplicantState;->DORMANT:Landroid/net/wifi/SupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/wifi/SupplicantState;->UNINITIALIZED:Landroid/net/wifi/SupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/wifi/SupplicantState;->INVALID:Landroid/net/wifi/SupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 865
    new-instance v0, Landroid/net/wifi/WifiInfo$1;

    invoke-direct {v0}, Landroid/net/wifi/WifiInfo$1;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    const-string v0, "02:00:00:00:00:00"

    iput-object v0, p0, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    .line 280
    iput-object v2, p0, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    .line 281
    iput-object v2, p0, Landroid/net/wifi/WifiInfo;->mBSSID:Ljava/lang/String;

    .line 282
    iput v3, p0, Landroid/net/wifi/WifiInfo;->mNetworkId:I

    .line 283
    sget-object v0, Landroid/net/wifi/SupplicantState;->UNINITIALIZED:Landroid/net/wifi/SupplicantState;

    iput-object v0, p0, Landroid/net/wifi/WifiInfo;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    .line 284
    const/16 v0, -0x7f

    iput v0, p0, Landroid/net/wifi/WifiInfo;->mRssi:I

    .line 285
    iput v3, p0, Landroid/net/wifi/WifiInfo;->mLinkSpeed:I

    .line 286
    iput v3, p0, Landroid/net/wifi/WifiInfo;->mFrequency:I

    .line 287
    iput-boolean v1, p0, Landroid/net/wifi/WifiInfo;->mSkipInternetCheck:Z

    .line 288
    iput-boolean v1, p0, Landroid/net/wifi/WifiInfo;->mCaptivePortal:Z

    .line 289
    iput-boolean v1, p0, Landroid/net/wifi/WifiInfo;->mAuthenticated:Z

    .line 290
    iput-object v2, p0, Landroid/net/wifi/WifiInfo;->mLoginUrl:Ljava/lang/String;

    .line 291
    iput-boolean v1, p0, Landroid/net/wifi/WifiInfo;->mDefaultAp:Z

    .line 293
    iput-boolean v1, p0, Landroid/net/wifi/WifiInfo;->mSharedAp:Z

    .line 294
    iput-object v2, p0, Landroid/net/wifi/WifiInfo;->mExpiration:Ljava/lang/String;

    .line 295
    iput-boolean v1, p0, Landroid/net/wifi/WifiInfo;->mVerifiedPassword:Z

    .line 296
    iput-boolean v1, p0, Landroid/net/wifi/WifiInfo;->mCheckVsieForSns:Z

    .line 298
    iput-boolean v1, p0, Landroid/net/wifi/WifiInfo;->isGigaAp:Z

    .line 299
    iput-boolean v1, p0, Landroid/net/wifi/WifiInfo;->isVendorAp:Z

    .line 300
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/WifiInfo;)V
    .locals 2
    .param p1, "source"    # Landroid/net/wifi/WifiInfo;

    .prologue
    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    const-string v0, "02:00:00:00:00:00"

    iput-object v0, p0, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    .line 334
    if-eqz p1, :cond_0

    .line 335
    iget-object v0, p1, Landroid/net/wifi/WifiInfo;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    iput-object v0, p0, Landroid/net/wifi/WifiInfo;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    .line 336
    iget-object v0, p1, Landroid/net/wifi/WifiInfo;->mBSSID:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/WifiInfo;->mBSSID:Ljava/lang/String;

    .line 337
    iget-object v0, p1, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    iput-object v0, p0, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    .line 338
    iget v0, p1, Landroid/net/wifi/WifiInfo;->mNetworkId:I

    iput v0, p0, Landroid/net/wifi/WifiInfo;->mNetworkId:I

    .line 339
    iget v0, p1, Landroid/net/wifi/WifiInfo;->mRssi:I

    iput v0, p0, Landroid/net/wifi/WifiInfo;->mRssi:I

    .line 340
    iget v0, p1, Landroid/net/wifi/WifiInfo;->mLinkSpeed:I

    iput v0, p0, Landroid/net/wifi/WifiInfo;->mLinkSpeed:I

    .line 341
    iget v0, p1, Landroid/net/wifi/WifiInfo;->mFrequency:I

    iput v0, p0, Landroid/net/wifi/WifiInfo;->mFrequency:I

    .line 342
    iget-object v0, p1, Landroid/net/wifi/WifiInfo;->mIpAddress:Ljava/net/InetAddress;

    iput-object v0, p0, Landroid/net/wifi/WifiInfo;->mIpAddress:Ljava/net/InetAddress;

    .line 343
    iget-object v0, p1, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    .line 344
    iget-boolean v0, p1, Landroid/net/wifi/WifiInfo;->mMeteredHint:Z

    iput-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mMeteredHint:Z

    .line 345
    iget-boolean v0, p1, Landroid/net/wifi/WifiInfo;->mEphemeral:Z

    iput-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mEphemeral:Z

    .line 346
    iget-wide v0, p1, Landroid/net/wifi/WifiInfo;->txBad:J

    iput-wide v0, p0, Landroid/net/wifi/WifiInfo;->txBad:J

    .line 347
    iget-wide v0, p1, Landroid/net/wifi/WifiInfo;->txRetries:J

    iput-wide v0, p0, Landroid/net/wifi/WifiInfo;->txRetries:J

    .line 348
    iget-wide v0, p1, Landroid/net/wifi/WifiInfo;->txSuccess:J

    iput-wide v0, p0, Landroid/net/wifi/WifiInfo;->txSuccess:J

    .line 349
    iget-wide v0, p1, Landroid/net/wifi/WifiInfo;->rxSuccess:J

    iput-wide v0, p0, Landroid/net/wifi/WifiInfo;->rxSuccess:J

    .line 350
    iget-wide v0, p1, Landroid/net/wifi/WifiInfo;->txBadRate:D

    iput-wide v0, p0, Landroid/net/wifi/WifiInfo;->txBadRate:D

    .line 351
    iget-wide v0, p1, Landroid/net/wifi/WifiInfo;->txRetriesRate:D

    iput-wide v0, p0, Landroid/net/wifi/WifiInfo;->txRetriesRate:D

    .line 352
    iget-wide v0, p1, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    iput-wide v0, p0, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    .line 353
    iget-wide v0, p1, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    iput-wide v0, p0, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    .line 354
    iget v0, p1, Landroid/net/wifi/WifiInfo;->score:I

    iput v0, p0, Landroid/net/wifi/WifiInfo;->score:I

    .line 355
    iget v0, p1, Landroid/net/wifi/WifiInfo;->badRssiCount:I

    iput v0, p0, Landroid/net/wifi/WifiInfo;->badRssiCount:I

    .line 356
    iget v0, p1, Landroid/net/wifi/WifiInfo;->lowRssiCount:I

    iput v0, p0, Landroid/net/wifi/WifiInfo;->lowRssiCount:I

    .line 357
    iget v0, p1, Landroid/net/wifi/WifiInfo;->linkStuckCount:I

    iput v0, p0, Landroid/net/wifi/WifiInfo;->linkStuckCount:I

    .line 358
    iget-boolean v0, p1, Landroid/net/wifi/WifiInfo;->mSkipInternetCheck:Z

    iput-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mSkipInternetCheck:Z

    .line 359
    iget-boolean v0, p1, Landroid/net/wifi/WifiInfo;->mCaptivePortal:Z

    iput-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mCaptivePortal:Z

    .line 360
    iget-boolean v0, p1, Landroid/net/wifi/WifiInfo;->mAuthenticated:Z

    iput-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mAuthenticated:Z

    .line 361
    iget-object v0, p1, Landroid/net/wifi/WifiInfo;->mLoginUrl:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/WifiInfo;->mLoginUrl:Ljava/lang/String;

    .line 362
    iget-boolean v0, p1, Landroid/net/wifi/WifiInfo;->mDefaultAp:Z

    iput-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mDefaultAp:Z

    .line 364
    iget-boolean v0, p1, Landroid/net/wifi/WifiInfo;->mSharedAp:Z

    iput-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mSharedAp:Z

    .line 365
    iget-object v0, p1, Landroid/net/wifi/WifiInfo;->mExpiration:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/WifiInfo;->mExpiration:Ljava/lang/String;

    .line 366
    iget-boolean v0, p1, Landroid/net/wifi/WifiInfo;->mVerifiedPassword:Z

    iput-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mVerifiedPassword:Z

    .line 367
    iget-boolean v0, p1, Landroid/net/wifi/WifiInfo;->mCheckVsieForSns:Z

    iput-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mCheckVsieForSns:Z

    .line 369
    iget-boolean v0, p1, Landroid/net/wifi/WifiInfo;->isGigaAp:Z

    iput-boolean v0, p0, Landroid/net/wifi/WifiInfo;->isGigaAp:Z

    .line 370
    iget-boolean v0, p1, Landroid/net/wifi/WifiInfo;->isVendorAp:Z

    iput-boolean v0, p0, Landroid/net/wifi/WifiInfo;->isVendorAp:Z

    .line 372
    :cond_0
    return-void
.end method

.method static synthetic access$002(Landroid/net/wifi/WifiInfo;Landroid/net/wifi/WifiSsid;)Landroid/net/wifi/WifiSsid;
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiInfo;
    .param p1, "x1"    # Landroid/net/wifi/WifiSsid;

    .prologue
    .line 42
    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    return-object p1
.end method

.method static synthetic access$102(Landroid/net/wifi/WifiInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mBSSID:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Landroid/net/wifi/WifiInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Landroid/net/wifi/WifiInfo;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiInfo;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Landroid/net/wifi/WifiInfo;->mMeteredHint:Z

    return p1
.end method

.method static synthetic access$402(Landroid/net/wifi/WifiInfo;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiInfo;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Landroid/net/wifi/WifiInfo;->mEphemeral:Z

    return p1
.end method

.method static synthetic access$502(Landroid/net/wifi/WifiInfo;Landroid/net/wifi/SupplicantState;)Landroid/net/wifi/SupplicantState;
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiInfo;
    .param p1, "x1"    # Landroid/net/wifi/SupplicantState;

    .prologue
    .line 42
    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    return-object p1
.end method

.method static synthetic access$602(Landroid/net/wifi/WifiInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mLoginUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$702(Landroid/net/wifi/WifiInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mExpiration:Ljava/lang/String;

    return-object p1
.end method

.method public static getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;
    .locals 1
    .param p0, "suppState"    # Landroid/net/wifi/SupplicantState;

    .prologue
    .line 608
    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    invoke-virtual {v0, p0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo$DetailedState;

    return-object v0
.end method

.method public static getMacAddressFromFile()Ljava/lang/String;
    .locals 12

    .prologue
    .line 503
    const/4 v3, 0x0

    .line 504
    .local v3, "in":Ljava/io/DataInputStream;
    const/4 v5, 0x0

    .line 505
    .local v5, "length":I
    const/16 v6, 0x11

    .line 506
    .local v6, "macLength":I
    const/16 v9, 0x20

    new-array v0, v9, [B

    .line 507
    .local v0, "buffer":[B
    const/4 v7, 0x0

    .line 510
    .local v7, "retValue":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/io/DataInputStream;

    new-instance v9, Ljava/io/BufferedInputStream;

    new-instance v10, Ljava/io/FileInputStream;

    const-string v11, "/efs/wifi/.mac.info"

    invoke-direct {v10, v11}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v9}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 511
    .end local v3    # "in":Ljava/io/DataInputStream;
    .local v4, "in":Ljava/io/DataInputStream;
    :try_start_1
    invoke-virtual {v4, v0}, Ljava/io/DataInputStream;->read([B)I

    move-result v5

    .line 512
    if-lt v5, v6, :cond_0

    .line 513
    new-instance v8, Ljava/lang/String;

    const/4 v9, 0x0

    invoke-direct {v8, v0, v9, v6}, Ljava/lang/String;-><init>([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 514
    .end local v7    # "retValue":Ljava/lang/String;
    .local v8, "retValue":Ljava/lang/String;
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v7

    .line 519
    .end local v8    # "retValue":Ljava/lang/String;
    .restart local v7    # "retValue":Ljava/lang/String;
    :cond_0
    if-eqz v4, :cond_3

    .line 521
    :try_start_3
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-object v3, v4

    .line 528
    .end local v4    # "in":Ljava/io/DataInputStream;
    .restart local v3    # "in":Ljava/io/DataInputStream;
    :cond_1
    :goto_0
    return-object v7

    .line 522
    .end local v3    # "in":Ljava/io/DataInputStream;
    .restart local v4    # "in":Ljava/io/DataInputStream;
    :catch_0
    move-exception v1

    .line 523
    .local v1, "e":Ljava/io/IOException;
    const-string v9, "WifiInfo"

    const-string v10, "Failed to close .mac.info file"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .line 524
    .end local v4    # "in":Ljava/io/DataInputStream;
    .restart local v3    # "in":Ljava/io/DataInputStream;
    goto :goto_0

    .line 516
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 517
    .local v2, "ignore":Ljava/io/IOException;
    :goto_1
    :try_start_4
    const-string v9, "WifiInfo"

    const-string v10, "Failed to get MAC address from /efs/wifi/.mac.info"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 519
    if-eqz v3, :cond_1

    .line 521
    :try_start_5
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 522
    :catch_2
    move-exception v1

    .line 523
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v9, "WifiInfo"

    const-string v10, "Failed to close .mac.info file"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 519
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "ignore":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    :goto_2
    if-eqz v3, :cond_2

    .line 521
    :try_start_6
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 524
    :cond_2
    :goto_3
    throw v9

    .line 522
    :catch_3
    move-exception v1

    .line 523
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v10, "WifiInfo"

    const-string v11, "Failed to close .mac.info file"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 519
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "in":Ljava/io/DataInputStream;
    .restart local v4    # "in":Ljava/io/DataInputStream;
    :catchall_1
    move-exception v9

    move-object v3, v4

    .end local v4    # "in":Ljava/io/DataInputStream;
    .restart local v3    # "in":Ljava/io/DataInputStream;
    goto :goto_2

    .end local v3    # "in":Ljava/io/DataInputStream;
    .end local v7    # "retValue":Ljava/lang/String;
    .restart local v4    # "in":Ljava/io/DataInputStream;
    .restart local v8    # "retValue":Ljava/lang/String;
    :catchall_2
    move-exception v9

    move-object v7, v8

    .end local v8    # "retValue":Ljava/lang/String;
    .restart local v7    # "retValue":Ljava/lang/String;
    move-object v3, v4

    .end local v4    # "in":Ljava/io/DataInputStream;
    .restart local v3    # "in":Ljava/io/DataInputStream;
    goto :goto_2

    .line 516
    .end local v3    # "in":Ljava/io/DataInputStream;
    .restart local v4    # "in":Ljava/io/DataInputStream;
    :catch_4
    move-exception v2

    move-object v3, v4

    .end local v4    # "in":Ljava/io/DataInputStream;
    .restart local v3    # "in":Ljava/io/DataInputStream;
    goto :goto_1

    .end local v3    # "in":Ljava/io/DataInputStream;
    .end local v7    # "retValue":Ljava/lang/String;
    .restart local v4    # "in":Ljava/io/DataInputStream;
    .restart local v8    # "retValue":Ljava/lang/String;
    :catch_5
    move-exception v2

    move-object v7, v8

    .end local v8    # "retValue":Ljava/lang/String;
    .restart local v7    # "retValue":Ljava/lang/String;
    move-object v3, v4

    .end local v4    # "in":Ljava/io/DataInputStream;
    .restart local v3    # "in":Ljava/io/DataInputStream;
    goto :goto_1

    .end local v3    # "in":Ljava/io/DataInputStream;
    .restart local v4    # "in":Ljava/io/DataInputStream;
    :cond_3
    move-object v3, v4

    .end local v4    # "in":Ljava/io/DataInputStream;
    .restart local v3    # "in":Ljava/io/DataInputStream;
    goto :goto_0
.end method

.method public static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x22

    const/4 v2, 0x1

    .line 778
    if-nez p0, :cond_1

    const/4 p0, 0x0

    .line 783
    .end local p0    # "string":Ljava/lang/String;
    .local v0, "length":I
    :cond_0
    :goto_0
    return-object p0

    .line 779
    .end local v0    # "length":I
    .restart local p0    # "string":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 780
    .restart local v0    # "length":I
    if-le v0, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    .line 781
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method static valueOf(Ljava/lang/String;)Landroid/net/wifi/SupplicantState;
    .locals 2
    .param p0, "stateName"    # Ljava/lang/String;

    .prologue
    .line 622
    const-string v1, "4WAY_HANDSHAKE"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 623
    sget-object v1, Landroid/net/wifi/SupplicantState;->FOUR_WAY_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    .line 628
    :goto_0
    return-object v1

    .line 626
    :cond_0
    :try_start_0
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/SupplicantState;->valueOf(Ljava/lang/String;)Landroid/net/wifi/SupplicantState;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 627
    :catch_0
    move-exception v0

    .line 628
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v1, Landroid/net/wifi/SupplicantState;->INVALID:Landroid/net/wifi/SupplicantState;

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 807
    const/4 v0, 0x0

    return v0
.end method

.method public getBSSID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mBSSID:Ljava/lang/String;

    return-object v0
.end method

.method public getCheckVsieForSns()Z
    .locals 1

    .prologue
    .line 764
    iget-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mCheckVsieForSns:Z

    return v0
.end method

.method public getDefaultAp()Z
    .locals 1

    .prologue
    .line 701
    iget-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mDefaultAp:Z

    return v0
.end method

.method public getExpiration()Ljava/lang/String;
    .locals 1

    .prologue
    .line 732
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mExpiration:Ljava/lang/String;

    return-object v0
.end method

.method public getFrequency()I
    .locals 1

    .prologue
    .line 459
    iget v0, p0, Landroid/net/wifi/WifiInfo;->mFrequency:I

    return v0
.end method

.method public getHiddenSSID()Z
    .locals 1

    .prologue
    .line 598
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 599
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    invoke-virtual {v0}, Landroid/net/wifi/WifiSsid;->isHidden()Z

    move-result v0

    goto :goto_0
.end method

.method public getIpAddress()I
    .locals 2

    .prologue
    .line 586
    const/4 v0, 0x0

    .line 587
    .local v0, "result":I
    iget-object v1, p0, Landroid/net/wifi/WifiInfo;->mIpAddress:Ljava/net/InetAddress;

    instance-of v1, v1, Ljava/net/Inet4Address;

    if-eqz v1, :cond_0

    .line 588
    iget-object v1, p0, Landroid/net/wifi/WifiInfo;->mIpAddress:Ljava/net/InetAddress;

    check-cast v1, Ljava/net/Inet4Address;

    invoke-static {v1}, Landroid/net/NetworkUtils;->inetAddressToInt(Ljava/net/Inet4Address;)I

    move-result v0

    .line 590
    :cond_0
    return v0
.end method

.method public getLinkSpeed()I
    .locals 1

    .prologue
    .line 445
    iget v0, p0, Landroid/net/wifi/WifiInfo;->mLinkSpeed:I

    return v0
.end method

.method public getLoginUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 670
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mLoginUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getMacAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 494
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 496
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    goto :goto_0
.end method

.method public getMeteredHint()Z
    .locals 1

    .prologue
    .line 538
    iget-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mMeteredHint:Z

    return v0
.end method

.method public getNetworkId()I
    .locals 1

    .prologue
    .line 563
    iget v0, p0, Landroid/net/wifi/WifiInfo;->mNetworkId:I

    return v0
.end method

.method public getRssi()I
    .locals 1

    .prologue
    .line 427
    iget v0, p0, Landroid/net/wifi/WifiInfo;->mRssi:I

    return v0
.end method

.method public getSSID()Ljava/lang/String;
    .locals 3

    .prologue
    .line 387
    iget-object v1, p0, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    if-eqz v1, :cond_1

    .line 388
    iget-object v1, p0, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    invoke-virtual {v1}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    move-result-object v0

    .line 389
    .local v0, "unicode":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 390
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 395
    .end local v0    # "unicode":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 392
    .restart local v0    # "unicode":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    invoke-virtual {v1}, Landroid/net/wifi/WifiSsid;->getHexString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 395
    .end local v0    # "unicode":Ljava/lang/String;
    :cond_1
    const-string v1, "<unknown ssid>"

    goto :goto_0
.end method

.method public getSkipInternetCheck()Z
    .locals 1

    .prologue
    .line 638
    iget-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mSkipInternetCheck:Z

    return v0
.end method

.method public getSupplicantState()Landroid/net/wifi/SupplicantState;
    .locals 1

    .prologue
    .line 572
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    return-object v0
.end method

.method public getWifiSsid()Landroid/net/wifi/WifiSsid;
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    return-object v0
.end method

.method public is24GHz()Z
    .locals 1

    .prologue
    .line 472
    iget v0, p0, Landroid/net/wifi/WifiInfo;->mFrequency:I

    invoke-static {v0}, Landroid/net/wifi/ScanResult;->is24GHz(I)Z

    move-result v0

    return v0
.end method

.method public is5GHz()Z
    .locals 1

    .prologue
    .line 480
    iget v0, p0, Landroid/net/wifi/WifiInfo;->mFrequency:I

    invoke-static {v0}, Landroid/net/wifi/ScanResult;->is5GHz(I)Z

    move-result v0

    return v0
.end method

.method public isAuthenticated()Z
    .locals 1

    .prologue
    .line 662
    iget-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mAuthenticated:Z

    return v0
.end method

.method public isCaptivePortal()Z
    .locals 1

    .prologue
    .line 654
    iget-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mCaptivePortal:Z

    return v0
.end method

.method public isEphemeral()Z
    .locals 1

    .prologue
    .line 548
    iget-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mEphemeral:Z

    return v0
.end method

.method public isSharedAp()Z
    .locals 1

    .prologue
    .line 716
    iget-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mSharedAp:Z

    return v0
.end method

.method public isVerifiedPassword()Z
    .locals 1

    .prologue
    .line 748
    iget-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mVerifiedPassword:Z

    return v0
.end method

.method public reset()V
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v6, -0x1

    const-wide/16 v4, 0x0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 304
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiInfo;->setInetAddress(Ljava/net/InetAddress;)V

    .line 305
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiInfo;->setBSSID(Ljava/lang/String;)V

    .line 306
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiInfo;->setSSID(Landroid/net/wifi/WifiSsid;)V

    .line 307
    invoke-virtual {p0, v6}, Landroid/net/wifi/WifiInfo;->setNetworkId(I)V

    .line 308
    const/16 v0, -0x7f

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiInfo;->setRssi(I)V

    .line 309
    invoke-virtual {p0, v6}, Landroid/net/wifi/WifiInfo;->setLinkSpeed(I)V

    .line 310
    invoke-virtual {p0, v6}, Landroid/net/wifi/WifiInfo;->setFrequency(I)V

    .line 311
    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiInfo;->setMeteredHint(Z)V

    .line 312
    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiInfo;->setEphemeral(Z)V

    .line 313
    iput-wide v4, p0, Landroid/net/wifi/WifiInfo;->txBad:J

    .line 314
    iput-wide v4, p0, Landroid/net/wifi/WifiInfo;->txSuccess:J

    .line 315
    iput-wide v4, p0, Landroid/net/wifi/WifiInfo;->rxSuccess:J

    .line 316
    iput-wide v4, p0, Landroid/net/wifi/WifiInfo;->txRetries:J

    .line 317
    iput-wide v2, p0, Landroid/net/wifi/WifiInfo;->txBadRate:D

    .line 318
    iput-wide v2, p0, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    .line 319
    iput-wide v2, p0, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    .line 320
    iput-wide v2, p0, Landroid/net/wifi/WifiInfo;->txRetriesRate:D

    .line 321
    iput v1, p0, Landroid/net/wifi/WifiInfo;->lowRssiCount:I

    .line 322
    iput-boolean v1, p0, Landroid/net/wifi/WifiInfo;->isGigaAp:Z

    .line 323
    iput-boolean v1, p0, Landroid/net/wifi/WifiInfo;->isVendorAp:Z

    .line 324
    iput v1, p0, Landroid/net/wifi/WifiInfo;->badRssiCount:I

    .line 325
    iput v1, p0, Landroid/net/wifi/WifiInfo;->linkStuckCount:I

    .line 326
    iput v1, p0, Landroid/net/wifi/WifiInfo;->score:I

    .line 327
    return-void
.end method

.method public setAuthenticated(Z)V
    .locals 0
    .param p1, "auth"    # Z

    .prologue
    .line 686
    iput-boolean p1, p0, Landroid/net/wifi/WifiInfo;->mAuthenticated:Z

    .line 687
    return-void
.end method

.method public setBSSID(Ljava/lang/String;)V
    .locals 0
    .param p1, "BSSID"    # Ljava/lang/String;

    .prologue
    .line 405
    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mBSSID:Ljava/lang/String;

    .line 406
    return-void
.end method

.method public setCaptivePortal(Z)V
    .locals 0
    .param p1, "captivePortal"    # Z

    .prologue
    .line 678
    iput-boolean p1, p0, Landroid/net/wifi/WifiInfo;->mCaptivePortal:Z

    .line 679
    return-void
.end method

.method public setCheckVsieForSns(Z)V
    .locals 0
    .param p1, "checkVsieForSns"    # Z

    .prologue
    .line 772
    iput-boolean p1, p0, Landroid/net/wifi/WifiInfo;->mCheckVsieForSns:Z

    .line 773
    return-void
.end method

.method public setDefaultAp(Z)V
    .locals 0
    .param p1, "defaultAp"    # Z

    .prologue
    .line 708
    iput-boolean p1, p0, Landroid/net/wifi/WifiInfo;->mDefaultAp:Z

    .line 709
    return-void
.end method

.method public setEphemeral(Z)V
    .locals 0
    .param p1, "ephemeral"    # Z

    .prologue
    .line 543
    iput-boolean p1, p0, Landroid/net/wifi/WifiInfo;->mEphemeral:Z

    .line 544
    return-void
.end method

.method public setExpiration(Ljava/lang/String;)V
    .locals 0
    .param p1, "expiration"    # Ljava/lang/String;

    .prologue
    .line 740
    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mExpiration:Ljava/lang/String;

    .line 741
    return-void
.end method

.method public setFrequency(I)V
    .locals 0
    .param p1, "frequency"    # I

    .prologue
    .line 464
    iput p1, p0, Landroid/net/wifi/WifiInfo;->mFrequency:I

    .line 465
    return-void
.end method

.method public setInetAddress(Ljava/net/InetAddress;)V
    .locals 0
    .param p1, "address"    # Ljava/net/InetAddress;

    .prologue
    .line 582
    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mIpAddress:Ljava/net/InetAddress;

    .line 583
    return-void
.end method

.method public setLinkSpeed(I)V
    .locals 0
    .param p1, "linkSpeed"    # I

    .prologue
    .line 450
    iput p1, p0, Landroid/net/wifi/WifiInfo;->mLinkSpeed:I

    .line 451
    return-void
.end method

.method public setLoginUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 694
    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mLoginUrl:Ljava/lang/String;

    .line 695
    return-void
.end method

.method public setMacAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "macAddress"    # Ljava/lang/String;

    .prologue
    .line 489
    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    .line 490
    return-void
.end method

.method public setMeteredHint(Z)V
    .locals 0
    .param p1, "meteredHint"    # Z

    .prologue
    .line 533
    iput-boolean p1, p0, Landroid/net/wifi/WifiInfo;->mMeteredHint:Z

    .line 534
    return-void
.end method

.method public setNetworkId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 553
    iput p1, p0, Landroid/net/wifi/WifiInfo;->mNetworkId:I

    .line 554
    return-void
.end method

.method public setRssi(I)V
    .locals 1
    .param p1, "rssi"    # I

    .prologue
    .line 432
    const/16 v0, -0x7f

    if-ge p1, v0, :cond_0

    .line 433
    const/16 p1, -0x7f

    .line 434
    :cond_0
    const/16 v0, 0xc8

    if-le p1, v0, :cond_1

    .line 435
    const/16 p1, 0xc8

    .line 436
    :cond_1
    iput p1, p0, Landroid/net/wifi/WifiInfo;->mRssi:I

    .line 437
    return-void
.end method

.method public setSSID(Landroid/net/wifi/WifiSsid;)V
    .locals 0
    .param p1, "wifiSsid"    # Landroid/net/wifi/WifiSsid;

    .prologue
    .line 376
    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    .line 377
    return-void
.end method

.method public setSharedAp(Z)V
    .locals 0
    .param p1, "sharedAp"    # Z

    .prologue
    .line 724
    iput-boolean p1, p0, Landroid/net/wifi/WifiInfo;->mSharedAp:Z

    .line 725
    return-void
.end method

.method public setSkipInternetCheck(Z)V
    .locals 0
    .param p1, "skipInternetCheck"    # Z

    .prologue
    .line 646
    iput-boolean p1, p0, Landroid/net/wifi/WifiInfo;->mSkipInternetCheck:Z

    .line 647
    return-void
.end method

.method public setSupplicantState(Landroid/net/wifi/SupplicantState;)V
    .locals 0
    .param p1, "state"    # Landroid/net/wifi/SupplicantState;

    .prologue
    .line 577
    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    .line 578
    return-void
.end method

.method setSupplicantState(Ljava/lang/String;)V
    .locals 1
    .param p1, "stateName"    # Ljava/lang/String;

    .prologue
    .line 618
    invoke-static {p1}, Landroid/net/wifi/WifiInfo;->valueOf(Ljava/lang/String;)Landroid/net/wifi/SupplicantState;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiInfo;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    .line 619
    return-void
.end method

.method public setVerifiedPassword(Z)V
    .locals 0
    .param p1, "verifiedPassword"    # Z

    .prologue
    .line 756
    iput-boolean p1, p0, Landroid/net/wifi/WifiInfo;->mVerifiedPassword:Z

    .line 757
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 788
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 789
    .local v1, "sb":Ljava/lang/StringBuffer;
    const-string v0, "<none>"

    .line 791
    .local v0, "none":Ljava/lang/String;
    const-string v2, "SSID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v2, p0, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    if-nez v2, :cond_0

    const-string v2, "<unknown ssid>"

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", BSSID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v2, p0, Landroid/net/wifi/WifiInfo;->mBSSID:Ljava/lang/String;

    if-nez v2, :cond_1

    move-object v2, v0

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", MAC: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v2, p0, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    if-nez v2, :cond_2

    move-object v2, v0

    :goto_2
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", Supplicant state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiInfo;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    if-nez v3, :cond_3

    .end local v0    # "none":Ljava/lang/String;
    :goto_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", RSSI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/WifiInfo;->mRssi:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", Link speed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/WifiInfo;->mLinkSpeed:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "Mbps"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", Frequency: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/WifiInfo;->mFrequency:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "MHz"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", Net ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/WifiInfo;->mNetworkId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", Metered hint: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-boolean v3, p0, Landroid/net/wifi/WifiInfo;->mMeteredHint:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", score: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/WifiInfo;->score:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 802
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 791
    .restart local v0    # "none":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    goto/16 :goto_0

    :cond_1
    iget-object v2, p0, Landroid/net/wifi/WifiInfo;->mBSSID:Ljava/lang/String;

    goto/16 :goto_1

    :cond_2
    iget-object v2, p0, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    goto :goto_2

    :cond_3
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    goto :goto_3
.end method

.method public updatePacketRates(JJ)V
    .locals 7
    .param p1, "txPackets"    # J
    .param p3, "rxPackets"    # J

    .prologue
    const-wide/16 v0, 0x0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    const-wide/16 v2, 0x0

    .line 246
    iput-wide v0, p0, Landroid/net/wifi/WifiInfo;->txBad:J

    .line 247
    iput-wide v0, p0, Landroid/net/wifi/WifiInfo;->txRetries:J

    .line 248
    iput-wide v2, p0, Landroid/net/wifi/WifiInfo;->txBadRate:D

    .line 249
    iput-wide v2, p0, Landroid/net/wifi/WifiInfo;->txRetriesRate:D

    .line 250
    iget-wide v0, p0, Landroid/net/wifi/WifiInfo;->txSuccess:J

    cmp-long v0, v0, p1

    if-gtz v0, :cond_0

    iget-wide v0, p0, Landroid/net/wifi/WifiInfo;->rxSuccess:J

    cmp-long v0, v0, p3

    if-gtz v0, :cond_0

    .line 251
    iget-wide v0, p0, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    mul-double/2addr v0, v4

    iget-wide v2, p0, Landroid/net/wifi/WifiInfo;->txSuccess:J

    sub-long v2, p1, v2

    long-to-double v2, v2

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    .line 253
    iget-wide v0, p0, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    mul-double/2addr v0, v4

    iget-wide v2, p0, Landroid/net/wifi/WifiInfo;->rxSuccess:J

    sub-long v2, p3, v2

    long-to-double v2, v2

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    .line 259
    :goto_0
    iput-wide p1, p0, Landroid/net/wifi/WifiInfo;->txSuccess:J

    .line 260
    iput-wide p3, p0, Landroid/net/wifi/WifiInfo;->rxSuccess:J

    .line 261
    return-void

    .line 256
    :cond_0
    iput-wide v2, p0, Landroid/net/wifi/WifiInfo;->txBadRate:D

    .line 257
    iput-wide v2, p0, Landroid/net/wifi/WifiInfo;->txRetriesRate:D

    goto :goto_0
.end method

.method public updatePacketRates(Landroid/net/wifi/WifiLinkLayerStats;)V
    .locals 14
    .param p1, "stats"    # Landroid/net/wifi/WifiLinkLayerStats;

    .prologue
    .line 196
    if-eqz p1, :cond_1

    .line 197
    iget-wide v8, p1, Landroid/net/wifi/WifiLinkLayerStats;->txmpdu_be:J

    iget-wide v10, p1, Landroid/net/wifi/WifiLinkLayerStats;->txmpdu_bk:J

    add-long/2addr v8, v10

    iget-wide v10, p1, Landroid/net/wifi/WifiLinkLayerStats;->txmpdu_vi:J

    add-long/2addr v8, v10

    iget-wide v10, p1, Landroid/net/wifi/WifiLinkLayerStats;->txmpdu_vo:J

    add-long v4, v8, v10

    .line 198
    .local v4, "txgood":J
    iget-wide v8, p1, Landroid/net/wifi/WifiLinkLayerStats;->retries_be:J

    iget-wide v10, p1, Landroid/net/wifi/WifiLinkLayerStats;->retries_bk:J

    add-long/2addr v8, v10

    iget-wide v10, p1, Landroid/net/wifi/WifiLinkLayerStats;->retries_vi:J

    add-long/2addr v8, v10

    iget-wide v10, p1, Landroid/net/wifi/WifiLinkLayerStats;->retries_vo:J

    add-long v6, v8, v10

    .line 200
    .local v6, "txretries":J
    iget-wide v8, p1, Landroid/net/wifi/WifiLinkLayerStats;->rxmpdu_be:J

    iget-wide v10, p1, Landroid/net/wifi/WifiLinkLayerStats;->rxmpdu_bk:J

    add-long/2addr v8, v10

    iget-wide v10, p1, Landroid/net/wifi/WifiLinkLayerStats;->rxmpdu_vi:J

    add-long/2addr v8, v10

    iget-wide v10, p1, Landroid/net/wifi/WifiLinkLayerStats;->rxmpdu_vo:J

    add-long v0, v8, v10

    .line 201
    .local v0, "rxgood":J
    iget-wide v8, p1, Landroid/net/wifi/WifiLinkLayerStats;->lostmpdu_be:J

    iget-wide v10, p1, Landroid/net/wifi/WifiLinkLayerStats;->lostmpdu_bk:J

    add-long/2addr v8, v10

    iget-wide v10, p1, Landroid/net/wifi/WifiLinkLayerStats;->lostmpdu_vi:J

    add-long/2addr v8, v10

    iget-wide v10, p1, Landroid/net/wifi/WifiLinkLayerStats;->lostmpdu_vo:J

    add-long v2, v8, v10

    .line 204
    .local v2, "txbad":J
    iget-wide v8, p0, Landroid/net/wifi/WifiInfo;->txBad:J

    cmp-long v8, v8, v2

    if-gtz v8, :cond_0

    iget-wide v8, p0, Landroid/net/wifi/WifiInfo;->txSuccess:J

    cmp-long v8, v8, v4

    if-gtz v8, :cond_0

    iget-wide v8, p0, Landroid/net/wifi/WifiInfo;->rxSuccess:J

    cmp-long v8, v8, v0

    if-gtz v8, :cond_0

    iget-wide v8, p0, Landroid/net/wifi/WifiInfo;->txRetries:J

    cmp-long v8, v8, v6

    if-gtz v8, :cond_0

    .line 208
    iget-wide v8, p0, Landroid/net/wifi/WifiInfo;->txBadRate:D

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v8, v10

    iget-wide v10, p0, Landroid/net/wifi/WifiInfo;->txBad:J

    sub-long v10, v2, v10

    long-to-double v10, v10

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    iput-wide v8, p0, Landroid/net/wifi/WifiInfo;->txBadRate:D

    .line 210
    iget-wide v8, p0, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v8, v10

    iget-wide v10, p0, Landroid/net/wifi/WifiInfo;->txSuccess:J

    sub-long v10, v4, v10

    long-to-double v10, v10

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    iput-wide v8, p0, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    .line 212
    iget-wide v8, p0, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v8, v10

    iget-wide v10, p0, Landroid/net/wifi/WifiInfo;->rxSuccess:J

    sub-long v10, v0, v10

    long-to-double v10, v10

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    iput-wide v8, p0, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    .line 214
    iget-wide v8, p0, Landroid/net/wifi/WifiInfo;->txRetriesRate:D

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v8, v10

    iget-wide v10, p0, Landroid/net/wifi/WifiInfo;->txRetries:J

    sub-long v10, v6, v10

    long-to-double v10, v10

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    iput-wide v8, p0, Landroid/net/wifi/WifiInfo;->txRetriesRate:D

    .line 222
    :goto_0
    iput-wide v2, p0, Landroid/net/wifi/WifiInfo;->txBad:J

    .line 223
    iput-wide v4, p0, Landroid/net/wifi/WifiInfo;->txSuccess:J

    .line 224
    iput-wide v0, p0, Landroid/net/wifi/WifiInfo;->rxSuccess:J

    .line 225
    iput-wide v6, p0, Landroid/net/wifi/WifiInfo;->txRetries:J

    .line 236
    .end local v0    # "rxgood":J
    .end local v2    # "txbad":J
    .end local v4    # "txgood":J
    .end local v6    # "txretries":J
    :goto_1
    return-void

    .line 217
    .restart local v0    # "rxgood":J
    .restart local v2    # "txbad":J
    .restart local v4    # "txgood":J
    .restart local v6    # "txretries":J
    :cond_0
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Landroid/net/wifi/WifiInfo;->txBadRate:D

    .line 218
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    .line 219
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    .line 220
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Landroid/net/wifi/WifiInfo;->txRetriesRate:D

    goto :goto_0

    .line 227
    .end local v0    # "rxgood":J
    .end local v2    # "txbad":J
    .end local v4    # "txgood":J
    .end local v6    # "txretries":J
    :cond_1
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Landroid/net/wifi/WifiInfo;->txBad:J

    .line 228
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Landroid/net/wifi/WifiInfo;->txSuccess:J

    .line 229
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Landroid/net/wifi/WifiInfo;->rxSuccess:J

    .line 230
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Landroid/net/wifi/WifiInfo;->txRetries:J

    .line 231
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Landroid/net/wifi/WifiInfo;->txBadRate:D

    .line 232
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    .line 233
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    .line 234
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Landroid/net/wifi/WifiInfo;->txRetriesRate:D

    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 812
    iget v0, p0, Landroid/net/wifi/WifiInfo;->mNetworkId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 813
    iget v0, p0, Landroid/net/wifi/WifiInfo;->mRssi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 814
    iget v0, p0, Landroid/net/wifi/WifiInfo;->mLinkSpeed:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 815
    iget v0, p0, Landroid/net/wifi/WifiInfo;->mFrequency:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 816
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mIpAddress:Ljava/net/InetAddress;

    if-eqz v0, :cond_0

    .line 817
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 818
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mIpAddress:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 822
    :goto_0
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    if-eqz v0, :cond_1

    .line 823
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 824
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    invoke-virtual {v0, p1, p2}, Landroid/net/wifi/WifiSsid;->writeToParcel(Landroid/os/Parcel;I)V

    .line 828
    :goto_1
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mBSSID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 829
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 830
    iget-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mMeteredHint:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 831
    iget-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mEphemeral:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 832
    iget v0, p0, Landroid/net/wifi/WifiInfo;->score:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 833
    iget-wide v4, p0, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeDouble(D)V

    .line 834
    iget-wide v4, p0, Landroid/net/wifi/WifiInfo;->txRetriesRate:D

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeDouble(D)V

    .line 835
    iget-wide v4, p0, Landroid/net/wifi/WifiInfo;->txBadRate:D

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeDouble(D)V

    .line 836
    iget-wide v4, p0, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeDouble(D)V

    .line 837
    iget v0, p0, Landroid/net/wifi/WifiInfo;->badRssiCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 838
    iget v0, p0, Landroid/net/wifi/WifiInfo;->lowRssiCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 839
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v0, p1, p2}, Landroid/net/wifi/SupplicantState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 841
    iget-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mSkipInternetCheck:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 844
    iget-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mCaptivePortal:Z

    if-eqz v0, :cond_5

    move v0, v1

    :goto_5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 846
    iget-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mAuthenticated:Z

    if-eqz v0, :cond_6

    move v0, v1

    :goto_6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 849
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mLoginUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 851
    iget-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mDefaultAp:Z

    if-eqz v0, :cond_7

    move v0, v1

    :goto_7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 853
    iget-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mSharedAp:Z

    if-eqz v0, :cond_8

    move v0, v1

    :goto_8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 854
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mExpiration:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 855
    iget-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mVerifiedPassword:Z

    if-eqz v0, :cond_9

    move v0, v1

    :goto_9
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 858
    iget-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mCheckVsieForSns:Z

    if-eqz v0, :cond_a

    move v0, v1

    :goto_a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 860
    iget-boolean v0, p0, Landroid/net/wifi/WifiInfo;->isGigaAp:Z

    if-eqz v0, :cond_b

    move v0, v1

    :goto_b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 861
    iget-boolean v0, p0, Landroid/net/wifi/WifiInfo;->isVendorAp:Z

    if-eqz v0, :cond_c

    :goto_c
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 862
    return-void

    .line 820
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    goto/16 :goto_0

    .line 826
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :cond_2
    move v0, v2

    .line 830
    goto/16 :goto_2

    :cond_3
    move v0, v2

    .line 831
    goto/16 :goto_3

    :cond_4
    move v0, v2

    .line 841
    goto :goto_4

    :cond_5
    move v0, v2

    .line 844
    goto :goto_5

    :cond_6
    move v0, v2

    .line 846
    goto :goto_6

    :cond_7
    move v0, v2

    .line 851
    goto :goto_7

    :cond_8
    move v0, v2

    .line 853
    goto :goto_8

    :cond_9
    move v0, v2

    .line 855
    goto :goto_9

    :cond_a
    move v0, v2

    .line 858
    goto :goto_a

    :cond_b
    move v0, v2

    .line 860
    goto :goto_b

    :cond_c
    move v1, v2

    .line 861
    goto :goto_c
.end method
