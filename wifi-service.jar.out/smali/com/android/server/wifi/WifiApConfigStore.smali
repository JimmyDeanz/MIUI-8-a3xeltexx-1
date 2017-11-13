.class public Lcom/android/server/wifi/WifiApConfigStore;
.super Lcom/android/internal/util/StateMachine;
.source "WifiApConfigStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiApConfigStore$ActiveState;,
        Lcom/android/server/wifi/WifiApConfigStore$InactiveState;,
        Lcom/android/server/wifi/WifiApConfigStore$DefaultState;
    }
.end annotation


# static fields
.field private static final AP_CONFIG_FILE:Ljava/lang/String;

.field private static final AP_CONFIG_FILE_VERSION:I = 0x3

.field public static final CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

.field private static final DBG:Z

.field private static final MAX_CLIENT:I

.field private static final TAG:Ljava/lang/String; = "WifiApConfigStore"

.field private static final defaultPassword:Ljava/lang/String;

.field private static final errPWD:Ljava/lang/String; = "\tUSER#DEFINED#PWD#\n"

.field private static final errSSID:Ljava/lang/String; = "\t#ERROR#SSID#\n"

.field private static mWifiApConfig:Landroid/net/wifi/WifiConfiguration;


# instance fields
.field public allowed2GChannel:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mActiveState:Lcom/android/internal/util/State;

.field private mContext:Landroid/content/Context;

.field private mDefaultSecurity:Ljava/lang/String;

.field private mDefaultSsidPwd:Ljava/lang/String;

.field private mDefaultState:Lcom/android/internal/util/State;

.field private mInactiveState:Lcom/android/internal/util/State;

.field private mReplyChannel:Lcom/android/internal/util/AsyncChannel;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 67
    const-string v1, "eng"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-eq v1, v0, :cond_1

    :cond_0
    :goto_0
    sput-boolean v0, Lcom/android/server/wifi/WifiApConfigStore;->DBG:Z

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/misc/wifi/softap.conf"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/WifiApConfigStore;->AP_CONFIG_FILE:Ljava/lang/String;

    .line 79
    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    sget v0, Landroid/net/wifi/WifiApCust;->mDefaultMaxClientNum:I

    sput v0, Lcom/android/server/wifi/WifiApConfigStore;->MAX_CLIENT:I

    .line 82
    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    sget-object v0, Landroid/net/wifi/WifiApCust;->mMHSCustomer:Ljava/lang/String;

    sput-object v0, Lcom/android/server/wifi/WifiApConfigStore;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    .line 83
    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    sget-object v0, Landroid/net/wifi/WifiApCust;->mDefaultPassword:Ljava/lang/String;

    sput-object v0, Lcom/android/server/wifi/WifiApConfigStore;->defaultPassword:Ljava/lang/String;

    .line 91
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    return-void

    .line 67
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "target"    # Landroid/os/Handler;

    .prologue
    .line 96
    const-string v6, "WifiApConfigStore"

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 84
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Wifi_DefaultSsidNPwd"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/wifi/WifiApConfigStore;->mDefaultSsidPwd:Ljava/lang/String;

    .line 85
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Wifi_UseDefaultSecurityAs"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/wifi/WifiApConfigStore;->mDefaultSecurity:Ljava/lang/String;

    .line 87
    new-instance v6, Lcom/android/server/wifi/WifiApConfigStore$DefaultState;

    invoke-direct {v6, p0}, Lcom/android/server/wifi/WifiApConfigStore$DefaultState;-><init>(Lcom/android/server/wifi/WifiApConfigStore;)V

    iput-object v6, p0, Lcom/android/server/wifi/WifiApConfigStore;->mDefaultState:Lcom/android/internal/util/State;

    .line 88
    new-instance v6, Lcom/android/server/wifi/WifiApConfigStore$InactiveState;

    invoke-direct {v6, p0}, Lcom/android/server/wifi/WifiApConfigStore$InactiveState;-><init>(Lcom/android/server/wifi/WifiApConfigStore;)V

    iput-object v6, p0, Lcom/android/server/wifi/WifiApConfigStore;->mInactiveState:Lcom/android/internal/util/State;

    .line 89
    new-instance v6, Lcom/android/server/wifi/WifiApConfigStore$ActiveState;

    invoke-direct {v6, p0}, Lcom/android/server/wifi/WifiApConfigStore$ActiveState;-><init>(Lcom/android/server/wifi/WifiApConfigStore;)V

    iput-object v6, p0, Lcom/android/server/wifi/WifiApConfigStore;->mActiveState:Lcom/android/internal/util/State;

    .line 92
    new-instance v6, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v6}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v6, p0, Lcom/android/server/wifi/WifiApConfigStore;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    .line 93
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/server/wifi/WifiApConfigStore;->allowed2GChannel:Ljava/util/ArrayList;

    .line 98
    iput-object p1, p0, Lcom/android/server/wifi/WifiApConfigStore;->mContext:Landroid/content/Context;

    .line 99
    iget-object v6, p0, Lcom/android/server/wifi/WifiApConfigStore;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v6}, Lcom/android/server/wifi/WifiApConfigStore;->addState(Lcom/android/internal/util/State;)V

    .line 100
    iget-object v6, p0, Lcom/android/server/wifi/WifiApConfigStore;->mInactiveState:Lcom/android/internal/util/State;

    iget-object v7, p0, Lcom/android/server/wifi/WifiApConfigStore;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v6, v7}, Lcom/android/server/wifi/WifiApConfigStore;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 101
    iget-object v6, p0, Lcom/android/server/wifi/WifiApConfigStore;->mActiveState:Lcom/android/internal/util/State;

    iget-object v7, p0, Lcom/android/server/wifi/WifiApConfigStore;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v6, v7}, Lcom/android/server/wifi/WifiApConfigStore;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 103
    iget-object v6, p0, Lcom/android/server/wifi/WifiApConfigStore;->mInactiveState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v6}, Lcom/android/server/wifi/WifiApConfigStore;->setInitialState(Lcom/android/internal/util/State;)V

    .line 104
    iget-object v6, p0, Lcom/android/server/wifi/WifiApConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x104001f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "ap2GChannelListStr":Ljava/lang/String;
    const-string v6, "WifiApConfigStore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "2G band allowed channels are:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    if-eqz v0, :cond_0

    .line 109
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/server/wifi/WifiApConfigStore;->allowed2GChannel:Ljava/util/ArrayList;

    .line 110
    const-string v6, ","

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 111
    .local v2, "channelList":[Ljava/lang/String;
    move-object v1, v2

    .local v1, "arr$":[Ljava/lang/String;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v5, v1, v3

    .line 112
    .local v5, "tmp":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/wifi/WifiApConfigStore;->allowed2GChannel:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 115
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "channelList":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "tmp":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method static synthetic access$000()Landroid/net/wifi/WifiConfiguration;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method static synthetic access$002(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 66
    sput-object p0, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/server/wifi/WifiApConfigStore;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiApConfigStore;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/server/wifi/WifiApConfigStore;->reGenerateAndWriteConfiguration()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/wifi/WifiApConfigStore;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiApConfigStore;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiApConfigStore;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/wifi/WifiApConfigStore;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiApConfigStore;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiApConfigStore;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/wifi/WifiApConfigStore;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiApConfigStore;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/server/wifi/WifiApConfigStore;->generateDefaultSSID()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/wifi/WifiApConfigStore;)Lcom/android/internal/util/AsyncChannel;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiApConfigStore;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/server/wifi/WifiApConfigStore;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/wifi/WifiApConfigStore;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiApConfigStore;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/server/wifi/WifiApConfigStore;->mActiveState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/wifi/WifiApConfigStore;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiApConfigStore;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiApConfigStore;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/wifi/WifiApConfigStore;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiApConfigStore;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/server/wifi/WifiApConfigStore;->setDefaultApConfiguration()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/wifi/WifiApConfigStore;Landroid/net/wifi/WifiConfiguration;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiApConfigStore;
    .param p1, "x1"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiApConfigStore;->writeApConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/wifi/WifiApConfigStore;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiApConfigStore;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiApConfigStore;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/wifi/WifiApConfigStore;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiApConfigStore;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/server/wifi/WifiApConfigStore;->mInactiveState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method private generateDefaultSSID()V
    .locals 20

    .prologue
    .line 823
    const-string v16, "WifiApConfigStore"

    const-string v17, "generateDefaultSSID.."

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    const/4 v10, 0x0

    .line 825
    .local v10, "number":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiApConfigStore;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const-string v17, "phone"

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/telephony/TelephonyManager;

    .line 827
    .local v14, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-eqz v14, :cond_0

    .line 828
    invoke-virtual {v14}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v10

    .line 831
    :cond_0
    if-nez v10, :cond_1

    .line 832
    const-string v10, ""

    .line 835
    :cond_1
    const-string v15, ""

    .line 836
    .local v15, "tempSSID":Ljava/lang/String;
    const-string v4, ""

    .line 837
    .local v4, "defaultSsid":Ljava/lang/String;
    const-string v3, ""

    .line 839
    .local v3, "defaultNumber":Ljava/lang/String;
    const-string v16, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiApConfigStore;->mDefaultSsidPwd:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 840
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiApConfigStore;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const v17, 0x10403b1

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 846
    :goto_0
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v16

    const/16 v17, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_5

    .line 847
    invoke-virtual {v10}, Ljava/lang/String;->toCharArray()[C

    move-result-object v16

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v17

    add-int/lit8 v17, v17, -0x4

    const/16 v18, 0x4

    invoke-static/range {v16 .. v18}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v6

    .line 848
    .local v6, "last4digitNum":Ljava/lang/String;
    invoke-virtual {v15, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 849
    move-object v3, v6

    .line 857
    .end local v6    # "last4digitNum":Ljava/lang/String;
    :goto_1
    new-instance v2, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v2}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 858
    .local v2, "config":Landroid/net/wifi/WifiConfiguration;
    sput-object v2, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    .line 859
    sget-object v16, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v0, v16

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 860
    sget-object v16, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput-boolean v0, v1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 862
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiApConfigStore;->mDefaultSecurity:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string v17, "WPA2/PSK"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiApConfigStore;->mDefaultSecurity:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string v17, "WPA/PSK"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_a

    .line 863
    :cond_2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v11

    .line 865
    .local v11, "randomUUID":Ljava/lang/String;
    const-string v16, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiApConfigStore;->mDefaultSsidPwd:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 866
    sget-object v16, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v18, 0x0

    const/16 v19, 0x8

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x9

    const/16 v19, 0xd

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 883
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiApConfigStore;->mDefaultSecurity:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string v17, "WPA2/PSK"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_9

    .line 884
    sget-object v16, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v16, v0

    const/16 v17, 0x4

    invoke-virtual/range {v16 .. v17}, Ljava/util/BitSet;->set(I)V

    .line 893
    .end local v11    # "randomUUID":Ljava/lang/String;
    :goto_3
    const-string v16, "WifiApConfigStore"

    const-string v17, "Calling writeApConfiguration"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    sget-object v16, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiApConfigStore;->writeApConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    .line 895
    return-void

    .line 842
    .end local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiApConfigStore;->mDefaultSsidPwd:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string v17, ","

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 843
    .local v9, "mSplitSsid":[Ljava/lang/String;
    const/16 v16, 0x0

    aget-object v15, v9, v16

    goto/16 :goto_0

    .line 851
    .end local v9    # "mSplitSsid":[Ljava/lang/String;
    :cond_5
    new-instance v12, Ljava/util/Random;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-direct {v12, v0, v1}, Ljava/util/Random;-><init>(J)V

    .line 852
    .local v12, "rnd":Ljava/util/Random;
    const/16 v16, 0x2327

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v16

    move/from16 v0, v16

    add-int/lit16 v13, v0, 0x3e8

    .line 853
    .local v13, "sequence":I
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 854
    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 868
    .end local v12    # "rnd":Ljava/util/Random;
    .end local v13    # "sequence":I
    .restart local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v11    # "randomUUID":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiApConfigStore;->mDefaultSsidPwd:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string v17, ","

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 869
    .local v8, "mSplitPwd":[Ljava/lang/String;
    array-length v0, v8

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_7

    .line 870
    sget-object v16, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v18, 0x0

    const/16 v19, 0x8

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x9

    const/16 v19, 0xd

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_2

    .line 872
    :cond_7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 873
    .local v7, "mPwd":Ljava/lang/StringBuilder;
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_4
    array-length v0, v8

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v5, v0, :cond_3

    .line 874
    const-string v16, "LAST4DIGIT"

    aget-object v17, v8, v5

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_8

    .line 875
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 879
    :goto_5
    sget-object v16, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 873
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 877
    :cond_8
    aget-object v16, v8, v5

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 886
    .end local v5    # "i":I
    .end local v7    # "mPwd":Ljava/lang/StringBuilder;
    .end local v8    # "mSplitPwd":[Ljava/lang/String;
    :cond_9
    sget-object v16, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Ljava/util/BitSet;->set(I)V

    goto/16 :goto_3

    .line 889
    .end local v11    # "randomUUID":Ljava/lang/String;
    :cond_a
    sget-object v16, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    const-string v17, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 890
    sget-object v16, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Ljava/util/BitSet;->set(I)V

    goto/16 :goto_3
.end method

.method private getIMEI(I)Ljava/lang/String;
    .locals 5
    .param p1, "digit"    # I

    .prologue
    .line 742
    iget-object v3, p0, Lcom/android/server/wifi/WifiApConfigStore;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 743
    .local v2, "telephony":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 744
    .local v0, "imei":Ljava/lang/String;
    sget-boolean v3, Lcom/android/server/wifi/WifiApConfigStore;->DBG:Z

    if-eqz v3, :cond_0

    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WifiApConfigStore getIMEI() imei"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/wifi/WifiApCust;->logToFile(Ljava/lang/String;)V

    .line 745
    :cond_0
    if-eqz v0, :cond_2

    .line 746
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 747
    .local v1, "len":I
    if-nez p1, :cond_1

    .line 754
    .end local v0    # "imei":Ljava/lang/String;
    .end local v1    # "len":I
    :goto_0
    return-object v0

    .line 749
    .restart local v0    # "imei":Ljava/lang/String;
    .restart local v1    # "len":I
    :cond_1
    if-lt v1, p1, :cond_3

    .line 750
    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0, v4, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    goto :goto_0

    .line 752
    .end local v1    # "len":I
    :cond_2
    const-string v3, "WifiApConfigStore"

    const-string v4, "Fail to get IMEI"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getLastIMEI(I)Ljava/lang/String;
    .locals 5
    .param p1, "digit"    # I

    .prologue
    .line 757
    iget-object v3, p0, Lcom/android/server/wifi/WifiApConfigStore;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 758
    .local v2, "telephony":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 759
    .local v0, "imei":Ljava/lang/String;
    sget-boolean v3, Lcom/android/server/wifi/WifiApConfigStore;->DBG:Z

    if-eqz v3, :cond_0

    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WifiApConfigStore getLastIMEI() imei"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/wifi/WifiApCust;->logToFile(Ljava/lang/String;)V

    .line 760
    :cond_0
    if-eqz v0, :cond_2

    .line 761
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 762
    .local v1, "len":I
    if-nez p1, :cond_1

    .line 769
    .end local v0    # "imei":Ljava/lang/String;
    .end local v1    # "len":I
    :goto_0
    return-object v0

    .line 764
    .restart local v0    # "imei":Ljava/lang/String;
    .restart local v1    # "len":I
    :cond_1
    if-lt v1, p1, :cond_3

    .line 765
    new-instance v3, Ljava/lang/String;

    sub-int v4, v1, p1

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    goto :goto_0

    .line 767
    .end local v1    # "len":I
    :cond_2
    const-string v3, "WifiApConfigStore"

    const-string v4, "Fail to get IMEI"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getMacAddressLast2Digits()Ljava/lang/String;
    .locals 5

    .prologue
    .line 713
    invoke-static {}, Landroid/net/wifi/WifiInfo;->getMacAddressFromFile()Ljava/lang/String;

    move-result-object v1

    .line 714
    .local v1, "mac":Ljava/lang/String;
    sget-boolean v3, Lcom/android/server/wifi/WifiApConfigStore;->DBG:Z

    if-eqz v3, :cond_0

    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WifiApConfigStore getMacAddressLast2Digits() mac:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/wifi/WifiApCust;->logToFile(Ljava/lang/String;)V

    .line 715
    :cond_0
    if-eqz v1, :cond_1

    .line 716
    const-string v3, ":"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 717
    .local v2, "temp":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .line 718
    .local v0, "len":I
    new-instance v3, Ljava/lang/String;

    add-int/lit8 v4, v0, -0x2

    invoke-virtual {v2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 722
    .end local v0    # "len":I
    .end local v2    # "temp":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 720
    :cond_1
    const-string v3, "WifiApConfigStore"

    const-string v4, "MAC read fail"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private getMacAddressLast3Digits()Ljava/lang/String;
    .locals 5

    .prologue
    .line 701
    invoke-static {}, Landroid/net/wifi/WifiInfo;->getMacAddressFromFile()Ljava/lang/String;

    move-result-object v1

    .line 702
    .local v1, "mac":Ljava/lang/String;
    sget-boolean v3, Lcom/android/server/wifi/WifiApConfigStore;->DBG:Z

    if-eqz v3, :cond_0

    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WifiApConfigStore getMacAddressLast3Digits() mac:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/wifi/WifiApCust;->logToFile(Ljava/lang/String;)V

    .line 703
    :cond_0
    if-eqz v1, :cond_1

    .line 704
    const-string v3, ":"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 705
    .local v2, "temp":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .line 706
    .local v0, "len":I
    new-instance v3, Ljava/lang/String;

    add-int/lit8 v4, v0, -0x3

    invoke-virtual {v2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 710
    .end local v0    # "len":I
    .end local v2    # "temp":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 708
    :cond_1
    const-string v3, "WifiApConfigStore"

    const-string v4, "MAC read fail"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private getMacAddressLast4Digits()Ljava/lang/String;
    .locals 5

    .prologue
    .line 688
    invoke-static {}, Landroid/net/wifi/WifiInfo;->getMacAddressFromFile()Ljava/lang/String;

    move-result-object v1

    .line 689
    .local v1, "mac":Ljava/lang/String;
    sget-boolean v3, Lcom/android/server/wifi/WifiApConfigStore;->DBG:Z

    if-eqz v3, :cond_0

    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WifiApConfigStore getMacAddressLast4Digits() mac:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/wifi/WifiApCust;->logToFile(Ljava/lang/String;)V

    .line 690
    :cond_0
    if-eqz v1, :cond_1

    .line 691
    const-string v3, ":"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 692
    .local v2, "temp":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .line 693
    .local v0, "len":I
    new-instance v3, Ljava/lang/String;

    add-int/lit8 v4, v0, -0x4

    invoke-virtual {v2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 697
    .end local v0    # "len":I
    .end local v2    # "temp":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 695
    :cond_1
    const-string v3, "WifiApConfigStore"

    const-string v4, "MAC read fail"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private getModelName()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 772
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 775
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 776
    .local v0, "len":I
    if-le v0, v4, :cond_0

    const-string v2, "SAMSUNG-"

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 777
    invoke-virtual {v1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 779
    :cond_0
    return-object v1
.end method

.method private getRandom12Chars()Ljava/lang/String;
    .locals 4

    .prologue
    .line 671
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 673
    .local v0, "randomUUID":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x9

    const/16 v3, 0xd

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getRandom4Chars()Ljava/lang/String;
    .locals 3

    .prologue
    .line 683
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 685
    .local v0, "randomUUID":Ljava/lang/String;
    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getRandom8Chars()Ljava/lang/String;
    .locals 3

    .prologue
    .line 677
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 679
    .local v0, "randomUUID":Ljava/lang/String;
    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getRandomAlphabet(IJ)Ljava/lang/String;
    .locals 8
    .param p1, "digit"    # I
    .param p2, "seed"    # J

    .prologue
    .line 798
    new-instance v0, Ljava/lang/String;

    const-string v5, "abcdefghijklmnopqrstuvwxyz"

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 799
    .local v0, "alphabet":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 800
    .local v2, "len":I
    const-wide/16 v6, 0x0

    cmp-long v5, p2, v6

    if-nez v5, :cond_0

    .line 801
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p2

    .line 802
    :cond_0
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3, p2, p3}, Ljava/util/Random;-><init>(J)V

    .line 803
    .local v3, "random":Ljava/util/Random;
    const-string v4, ""

    .line 804
    .local v4, "result":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_1

    .line 805
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 804
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 807
    :cond_1
    return-object v4
.end method

.method private getRandomDigits(IJ)Ljava/lang/String;
    .locals 10
    .param p1, "digit"    # I
    .param p2, "seed"    # J

    .prologue
    const-wide/16 v6, 0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 782
    if-nez p1, :cond_0

    .line 783
    const-string v4, ""

    .line 794
    :goto_0
    return-object v4

    .line 784
    :cond_0
    const-wide/16 v4, 0x0

    cmp-long v4, p2, v4

    if-nez v4, :cond_1

    .line 785
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p2

    .line 786
    :cond_1
    cmp-long v4, p2, v6

    if-nez v4, :cond_2

    .line 787
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    add-long p2, v4, v6

    .line 789
    :cond_2
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3, p2, p3}, Ljava/util/Random;-><init>(J)V

    .line 790
    .local v3, "random":Ljava/util/Random;
    const/16 v2, 0xa

    .line 791
    .local v2, "maxValue":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    if-ge v1, p1, :cond_3

    .line 792
    mul-int/lit8 v2, v2, 0xa

    .line 791
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 793
    :cond_3
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%%0%dd"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 794
    .local v0, "format":Ljava/lang/String;
    new-array v4, v9, [Ljava/lang/Object;

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {v3, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private getRandomSymbol(IJ)Ljava/lang/String;
    .locals 8
    .param p1, "digit"    # I
    .param p2, "seed"    # J

    .prologue
    .line 810
    new-instance v4, Ljava/lang/String;

    const-string v5, "!@#$/^&*()"

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 811
    .local v4, "sym":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    .line 812
    .local v1, "len":I
    const-wide/16 v6, 0x0

    cmp-long v5, p2, v6

    if-nez v5, :cond_0

    .line 813
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p2

    .line 814
    :cond_0
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2, p2, p3}, Ljava/util/Random;-><init>(J)V

    .line 815
    .local v2, "random":Ljava/util/Random;
    const-string v3, ""

    .line 816
    .local v3, "result":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 817
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 816
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 819
    :cond_1
    return-object v3
.end method

.method private getTelephonyNumber(IZ)Ljava/lang/String;
    .locals 7
    .param p1, "digit"    # I
    .param p2, "retry"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x6

    .line 725
    iget-object v5, p0, Lcom/android/server/wifi/WifiApConfigStore;->mContext:Landroid/content/Context;

    const-string v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 726
    .local v2, "telephony":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    .line 727
    .local v1, "min":Ljava/lang/String;
    sget-boolean v5, Lcom/android/server/wifi/WifiApConfigStore;->DBG:Z

    if-eqz v5, :cond_0

    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WifiApConfigStore getTelephonyNumber() min:["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "retry:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/wifi/WifiApCust;->logToFile(Ljava/lang/String;)V

    .line 728
    :cond_0
    if-eqz v1, :cond_4

    .line 729
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 730
    .local v0, "len":I
    if-nez p2, :cond_3

    const-string v5, "000000"

    const/4 v6, 0x0

    if-le v3, v0, :cond_1

    move v3, v0

    :cond_1
    invoke-virtual {v1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v1, v4

    .line 739
    .end local v0    # "len":I
    .end local v1    # "min":Ljava/lang/String;
    :cond_2
    :goto_0
    return-object v1

    .line 732
    .restart local v0    # "len":I
    .restart local v1    # "min":Ljava/lang/String;
    :cond_3
    if-eqz p1, :cond_2

    .line 734
    if-lt v0, p1, :cond_5

    .line 735
    new-instance v3, Ljava/lang/String;

    sub-int v4, v0, p1

    invoke-virtual {v1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    goto :goto_0

    .line 737
    .end local v0    # "len":I
    :cond_4
    const-string v3, "WifiApConfigStore"

    const-string v5, "Fail to get MSISDN"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move-object v1, v4

    .line 739
    goto :goto_0
.end method

.method public static makeWifiApConfigStore(Landroid/content/Context;Landroid/os/Handler;)Lcom/android/server/wifi/WifiApConfigStore;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "target"    # Landroid/os/Handler;

    .prologue
    .line 118
    sget-boolean v1, Lcom/android/server/wifi/WifiApConfigStore;->DBG:Z

    if-eqz v1, :cond_0

    .line 119
    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    const-string v1, "makeWifiApConfigStore()"

    invoke-static {v1}, Landroid/net/wifi/WifiApCust;->logToFile(Ljava/lang/String;)V

    .line 121
    :cond_0
    new-instance v0, Lcom/android/server/wifi/WifiApConfigStore;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wifi/WifiApConfigStore;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 122
    .local v0, "s":Lcom/android/server/wifi/WifiApConfigStore;
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiApConfigStore;->start()V

    .line 123
    return-object v0
.end method

.method private parseSecProductFeaturePassword(Z)Ljava/lang/String;
    .locals 14
    .param p1, "retry"    # Z

    .prologue
    const-wide/16 v12, 0x0

    const/4 v11, 0x5

    const/4 v10, 0x0

    const-wide/16 v8, 0x1

    const/4 v7, 0x4

    .line 597
    sget-boolean v5, Lcom/android/server/wifi/WifiApConfigStore;->DBG:Z

    if-eqz v5, :cond_0

    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WifiApConfigStore parseSecProductFeaturePassword() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/server/wifi/WifiApConfigStore;->defaultPassword:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " retry:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/wifi/WifiApCust;->logToFile(Ljava/lang/String;)V

    .line 598
    :cond_0
    const-string v5, "SamsungDefault"

    sget-object v6, Lcom/android/server/wifi/WifiApConfigStore;->defaultPassword:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 599
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v7, v12, v13}, Lcom/android/server/wifi/WifiApConfigStore;->getRandomAlphabet(IJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, v7, v8, v9}, Lcom/android/server/wifi/WifiApConfigStore;->getRandomDigits(IJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 644
    :cond_1
    :goto_0
    return-object v0

    .line 600
    :cond_2
    const-string v5, "Random12Chars"

    sget-object v6, Lcom/android/server/wifi/WifiApConfigStore;->defaultPassword:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 601
    invoke-direct {p0}, Lcom/android/server/wifi/WifiApConfigStore;->getRandom12Chars()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 602
    :cond_3
    const-string v5, "Random8Chars"

    sget-object v6, Lcom/android/server/wifi/WifiApConfigStore;->defaultPassword:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 603
    invoke-direct {p0}, Lcom/android/server/wifi/WifiApConfigStore;->getRandom8Chars()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 604
    :cond_4
    const-string v5, "Min10Digits"

    sget-object v6, Lcom/android/server/wifi/WifiApConfigStore;->defaultPassword:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 605
    invoke-direct {p0, v10, p1}, Lcom/android/server/wifi/WifiApConfigStore;->getTelephonyNumber(IZ)Ljava/lang/String;

    move-result-object v4

    .line 606
    .local v4, "telephonyNumber":Ljava/lang/String;
    sget-boolean v5, Lcom/android/server/wifi/WifiApConfigStore;->DBG:Z

    if-eqz v5, :cond_5

    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WifiApConfigStore telephonyNumber:["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "retry:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/wifi/WifiApCust;->logToFile(Ljava/lang/String;)V

    .line 607
    :cond_5
    if-eqz v4, :cond_7

    .line 608
    const-string v5, ""

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "0"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 609
    :cond_6
    const/16 v5, 0xa

    invoke-direct {p0, v5, v8, v9}, Lcom/android/server/wifi/WifiApConfigStore;->getRandomDigits(IJ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_7
    move-object v0, v4

    .line 612
    goto :goto_0

    .line 613
    .end local v4    # "telephonyNumber":Ljava/lang/String;
    :cond_8
    const-string v5, "ModelWith4RandomDigits"

    sget-object v6, Lcom/android/server/wifi/WifiApConfigStore;->defaultPassword:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 614
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/wifi/WifiApConfigStore;->getModelName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Lcom/android/server/wifi/WifiApConfigStore;->getRandom4Chars()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 615
    :cond_9
    const-string v5, "IMEI5With5RandomDigits"

    sget-object v6, Lcom/android/server/wifi/WifiApConfigStore;->defaultPassword:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 616
    invoke-direct {p0, v11}, Lcom/android/server/wifi/WifiApConfigStore;->getIMEI(I)Ljava/lang/String;

    move-result-object v0

    .line 617
    .local v0, "imei":Ljava/lang/String;
    if-eqz v0, :cond_a

    .line 618
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, v11, v8, v9}, Lcom/android/server/wifi/WifiApConfigStore;->getRandomDigits(IJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 620
    :cond_a
    const-string v5, "WifiApConfigStore"

    const-string v6, "Not generate default password : because imei is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 622
    .end local v0    # "imei":Ljava/lang/String;
    :cond_b
    const-string v5, "IMEILast8Digits"

    sget-object v6, Lcom/android/server/wifi/WifiApConfigStore;->defaultPassword:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 623
    const/16 v5, 0x8

    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiApConfigStore;->getLastIMEI(I)Ljava/lang/String;

    move-result-object v0

    .line 624
    .restart local v0    # "imei":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 627
    const-string v5, "WifiApConfigStore"

    const-string v6, "Not generate default password : because imei is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    const-string v0, "XXXXXXXX"

    .line 630
    sget-boolean v5, Lcom/android/server/wifi/WifiApConfigStore;->DBG:Z

    if-eqz v5, :cond_1

    const-string v5, "WifiApConfigStore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "imei = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 632
    .end local v0    # "imei":Ljava/lang/String;
    :cond_c
    const-string v5, "VZWRandomRule"

    sget-object v6, Lcom/android/server/wifi/WifiApConfigStore;->defaultPassword:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 633
    invoke-direct {p0, v10, p1}, Lcom/android/server/wifi/WifiApConfigStore;->getTelephonyNumber(IZ)Ljava/lang/String;

    move-result-object v1

    .line 635
    .local v1, "mdn":Ljava/lang/String;
    if-eqz v1, :cond_d

    const-string v5, ""

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    .line 636
    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 640
    .local v2, "seed":J
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v7, v2, v3}, Lcom/android/server/wifi/WifiApConfigStore;->getRandomAlphabet(IJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x3

    invoke-direct {p0, v6, v2, v3}, Lcom/android/server/wifi/WifiApConfigStore;->getRandomDigits(IJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {p0, v6, v2, v3}, Lcom/android/server/wifi/WifiApConfigStore;->getRandomSymbol(IJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 638
    .end local v2    # "seed":J
    :cond_d
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .restart local v2    # "seed":J
    goto :goto_1

    .line 641
    .end local v1    # "mdn":Ljava/lang/String;
    .end local v2    # "seed":J
    :cond_e
    const-string v5, "UserDefined"

    sget-object v6, Lcom/android/server/wifi/WifiApConfigStore;->defaultPassword:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 642
    const-string v0, "\tUSER#DEFINED#PWD#\n"

    goto/16 :goto_0

    .line 644
    :cond_f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v7, v12, v13}, Lcom/android/server/wifi/WifiApConfigStore;->getRandomAlphabet(IJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, v7, v8, v9}, Lcom/android/server/wifi/WifiApConfigStore;->getRandomDigits(IJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private parseSecProductFeatureSsid(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 12
    .param p1, "errString"    # Ljava/lang/String;
    .param p2, "flagErrorBreak"    # Z

    .prologue
    .line 494
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 495
    .local v7, "ssid":Ljava/lang/StringBuilder;
    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    sget-object v1, Landroid/net/wifi/WifiApCust;->mDefaultSSID:Ljava/lang/String;

    .line 496
    .local v1, "defaultSsid":Ljava/lang/String;
    sget-boolean v9, Lcom/android/server/wifi/WifiApConfigStore;->DBG:Z

    if-eqz v9, :cond_0

    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "WifiApConfigStore parseSecProductFeatureSsid() "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/wifi/WifiApCust;->logToFile(Ljava/lang/String;)V

    .line 497
    :cond_0
    const-string v9, ","

    invoke-virtual {v1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 498
    .local v0, "customSSID":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v9, v0

    if-ge v2, v9, :cond_18

    .line 499
    const-string v9, "Default"

    aget-object v10, v0, v2

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 500
    iget-object v9, p0, Lcom/android/server/wifi/WifiApConfigStore;->mContext:Landroid/content/Context;

    const v10, 0x10403b1

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 501
    :cond_1
    const-string v9, "ModelName"

    aget-object v10, v0, v2

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 502
    invoke-direct {p0}, Lcom/android/server/wifi/WifiApConfigStore;->getModelName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 503
    :cond_2
    const-string v9, "Random4Digits"

    aget-object v10, v0, v2

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 504
    const/4 v9, 0x4

    const-wide/16 v10, 0x0

    invoke-direct {p0, v9, v10, v11}, Lcom/android/server/wifi/WifiApConfigStore;->getRandomDigits(IJ)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 505
    :cond_3
    const-string v9, "Mac4Digits"

    aget-object v10, v0, v2

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 506
    invoke-direct {p0}, Lcom/android/server/wifi/WifiApConfigStore;->getMacAddressLast4Digits()Ljava/lang/String;

    move-result-object v4

    .line 507
    .local v4, "mac":Ljava/lang/String;
    if-eqz v4, :cond_4

    .line 508
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 509
    :cond_4
    if-eqz p2, :cond_6

    .line 594
    .end local v4    # "mac":Ljava/lang/String;
    .end local p1    # "errString":Ljava/lang/String;
    :cond_5
    :goto_2
    return-object p1

    .line 512
    .restart local v4    # "mac":Ljava/lang/String;
    .restart local p1    # "errString":Ljava/lang/String;
    :cond_6
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 513
    .end local v4    # "mac":Ljava/lang/String;
    :cond_7
    const-string v9, "Mac3Digits"

    aget-object v10, v0, v2

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 514
    invoke-direct {p0}, Lcom/android/server/wifi/WifiApConfigStore;->getMacAddressLast3Digits()Ljava/lang/String;

    move-result-object v4

    .line 515
    .restart local v4    # "mac":Ljava/lang/String;
    if-eqz v4, :cond_8

    .line 516
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 517
    :cond_8
    if-nez p2, :cond_5

    .line 520
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 521
    .end local v4    # "mac":Ljava/lang/String;
    :cond_9
    const-string v9, "Mac2Digits"

    aget-object v10, v0, v2

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 522
    invoke-direct {p0}, Lcom/android/server/wifi/WifiApConfigStore;->getMacAddressLast2Digits()Ljava/lang/String;

    move-result-object v4

    .line 523
    .restart local v4    # "mac":Ljava/lang/String;
    if-eqz v4, :cond_a

    .line 524
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 525
    :cond_a
    if-nez p2, :cond_5

    .line 528
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 529
    .end local v4    # "mac":Ljava/lang/String;
    :cond_b
    const-string v9, "Min4Digits"

    aget-object v10, v0, v2

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 530
    const/4 v9, 0x4

    const/4 v10, 0x0

    invoke-direct {p0, v9, v10}, Lcom/android/server/wifi/WifiApConfigStore;->getTelephonyNumber(IZ)Ljava/lang/String;

    move-result-object v5

    .line 531
    .local v5, "min":Ljava/lang/String;
    if-eqz v5, :cond_c

    .line 532
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 533
    :cond_c
    if-nez p2, :cond_5

    .line 537
    const/4 v9, 0x4

    const-wide/16 v10, 0x0

    invoke-direct {p0, v9, v10, v11}, Lcom/android/server/wifi/WifiApConfigStore;->getRandomDigits(IJ)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 541
    .end local v5    # "min":Ljava/lang/String;
    :cond_d
    const-string v9, "Min2Digits"

    aget-object v10, v0, v2

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 542
    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-direct {p0, v9, v10}, Lcom/android/server/wifi/WifiApConfigStore;->getTelephonyNumber(IZ)Ljava/lang/String;

    move-result-object v5

    .line 543
    .restart local v5    # "min":Ljava/lang/String;
    if-eqz v5, :cond_e

    .line 544
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 545
    :cond_e
    if-nez p2, :cond_5

    .line 548
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 549
    .end local v5    # "min":Ljava/lang/String;
    :cond_f
    const-string v9, "IMEILast2Digits"

    aget-object v10, v0, v2

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 550
    const/4 v9, 0x2

    invoke-direct {p0, v9}, Lcom/android/server/wifi/WifiApConfigStore;->getLastIMEI(I)Ljava/lang/String;

    move-result-object v3

    .line 551
    .local v3, "imei":Ljava/lang/String;
    if-eqz v3, :cond_10

    .line 552
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 553
    :cond_10
    if-nez p2, :cond_5

    .line 556
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 557
    .end local v3    # "imei":Ljava/lang/String;
    :cond_11
    const-string v9, "IMEILast4Digits"

    aget-object v10, v0, v2

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 558
    const/4 v9, 0x4

    invoke-direct {p0, v9}, Lcom/android/server/wifi/WifiApConfigStore;->getLastIMEI(I)Ljava/lang/String;

    move-result-object v3

    .line 559
    .restart local v3    # "imei":Ljava/lang/String;
    if-eqz v3, :cond_12

    .line 560
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 561
    :cond_12
    if-nez p2, :cond_5

    .line 564
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 565
    .end local v3    # "imei":Ljava/lang/String;
    :cond_13
    const-string v9, "Space"

    aget-object v10, v0, v2

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_14

    .line 566
    const-string v9, " "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 567
    :cond_14
    const-string v9, "BrandName"

    aget-object v10, v0, v2

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_16

    .line 568
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v9

    const-string v10, "SEC_FLOATING_FEATURE_SETTINGS_CONFIG_BRAND_NAME"

    invoke-virtual {v9, v10}, Lcom/samsung/android/feature/FloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 569
    .local v8, "temp":Ljava/lang/String;
    const-string v9, ""

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_15

    .line 570
    const-string v9, "brand"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 572
    :cond_15
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 574
    .end local v8    # "temp":Ljava/lang/String;
    :cond_16
    const-string v9, "ChameleonSSID"

    aget-object v10, v0, v2

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_17

    .line 576
    const-string v9, "WifiApConfigStore"

    const-string v10, "updateHotspotS"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    const-string v9, "WifiApConfigStore"

    const-string v10, "ChameleonSSID is null -> ModelName is used."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    invoke-direct {p0}, Lcom/android/server/wifi/WifiApConfigStore;->getModelName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 586
    :cond_17
    aget-object v9, v0, v2

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 589
    :cond_18
    sget-boolean v9, Lcom/android/server/wifi/WifiApConfigStore;->DBG:Z

    if-eqz v9, :cond_19

    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "WifiApConfigStore parseSecProductFeatureSsid() ssid:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/wifi/WifiApCust;->logToFile(Ljava/lang/String;)V

    .line 590
    :cond_19
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    const/16 v10, 0x20

    if-le v9, v10, :cond_1a

    .line 591
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 592
    .local v6, "modifiedSsid":Ljava/lang/String;
    const/4 v9, 0x0

    const/16 v10, 0x20

    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_2

    .line 594
    .end local v6    # "modifiedSsid":Ljava/lang/String;
    :cond_1a
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_2
.end method

.method private reGenerateAndWriteConfiguration()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x4

    .line 647
    const-string v2, "WifiApConfigStore"

    const-string v3, "Re-Generate SSID"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    const-string v2, "XXXX"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/WifiApConfigStore;->parseSecProductFeatureSsid(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 649
    .local v0, "defaultSSID":Ljava/lang/String;
    sget-object v2, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    iput-object v0, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 651
    sget-object v2, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2}, Ljava/util/BitSet;->cardinality()I

    move-result v2

    if-lt v2, v5, :cond_0

    .line 652
    const-string v2, "WifiApConfigStore"

    const-string v3, "KeyManagement.cardinality() >= 1 => clear"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    sget-object v2, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2}, Ljava/util/BitSet;->clear()V

    .line 655
    :cond_0
    const-string v2, "None"

    sget-object v3, Lcom/android/server/wifi/WifiApConfigStore;->defaultPassword:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 656
    sget-object v2, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    .line 666
    :goto_0
    const-string v2, "XXXX"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 667
    sget-object v2, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiApConfigStore;->writeApConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    .line 669
    :cond_1
    return-void

    .line 658
    :cond_2
    sget-object v2, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v6}, Ljava/util/BitSet;->set(I)V

    .line 659
    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiApConfigStore;->parseSecProductFeaturePassword(Z)Ljava/lang/String;

    move-result-object v1

    .line 660
    .local v1, "password":Ljava/lang/String;
    if-nez v1, :cond_3

    .line 661
    sget-object v2, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v4, 0x0

    invoke-direct {p0, v6, v4, v5}, Lcom/android/server/wifi/WifiApConfigStore;->getRandomAlphabet(IJ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-wide/16 v4, 0x1

    invoke-direct {p0, v6, v4, v5}, Lcom/android/server/wifi/WifiApConfigStore;->getRandomDigits(IJ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_0

    .line 663
    :cond_3
    sget-object v2, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    iput-object v1, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_0
.end method

.method private setDefaultApConfiguration()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 451
    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    const-string v2, "setDefaultApConfiguration()"

    invoke-static {v2}, Landroid/net/wifi/WifiApCust;->logToFile(Ljava/lang/String;)V

    .line 452
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 453
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Wifi_UseRandom4digitCombinationAsSSID"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 454
    const-string v2, ""

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 459
    :goto_0
    const-string v2, "None"

    sget-object v3, Lcom/android/server/wifi/WifiApConfigStore;->defaultPassword:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 460
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    .line 474
    :goto_1
    iput-boolean v4, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 475
    iput v4, v0, Landroid/net/wifi/WifiConfiguration;->channel:I

    .line 476
    const-string v2, "SPRINT"

    sget-object v3, Lcom/android/server/wifi/WifiApConfigStore;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 477
    const/16 v2, 0x8

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    .line 481
    :goto_2
    iput v5, v0, Landroid/net/wifi/WifiConfiguration;->wpsStatus:I

    .line 486
    iput v5, v0, Landroid/net/wifi/WifiConfiguration;->txPowerMode:I

    .line 491
    const v2, 0x20019

    invoke-virtual {p0, v2, v0}, Lcom/android/server/wifi/WifiApConfigStore;->sendMessage(ILjava/lang/Object;)V

    .line 492
    return-void

    .line 457
    :cond_0
    const-string v2, "\t#ERROR#SSID#\n"

    invoke-direct {p0, v2, v5}, Lcom/android/server/wifi/WifiApConfigStore;->parseSecProductFeatureSsid(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_0

    .line 462
    :cond_1
    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiApConfigStore;->parseSecProductFeaturePassword(Z)Ljava/lang/String;

    move-result-object v1

    .line 463
    .local v1, "password":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 464
    const-string v2, "\t#ERROR#SSID#\n"

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_1

    .line 466
    :cond_2
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 467
    const-string v2, "UserDefined"

    sget-object v3, Lcom/android/server/wifi/WifiApConfigStore;->defaultPassword:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 468
    const-string v2, "\tUSER#DEFINED#PWD#\n"

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_1

    .line 470
    :cond_3
    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_1

    .line 479
    .end local v1    # "password":Ljava/lang/String;
    :cond_4
    sget v2, Lcom/android/server/wifi/WifiApConfigStore;->MAX_CLIENT:I

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    goto :goto_2
.end method

.method private writeApConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    .locals 7
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 397
    if-nez p1, :cond_1

    .line 398
    sget-boolean v4, Lcom/android/server/wifi/WifiApConfigStore;->DBG:Z

    if-eqz v4, :cond_0

    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    const-string v4, "WifiApConfigStore writeApConfiguration() config is null."

    invoke-static {v4}, Landroid/net/wifi/WifiApCust;->logToFile(Ljava/lang/String;)V

    .line 444
    :cond_0
    :goto_0
    return-void

    .line 402
    :cond_1
    sget-boolean v4, Lcom/android/server/wifi/WifiApConfigStore;->DBG:Z

    if-eqz v4, :cond_2

    .line 403
    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WifiApConfigStore writeApConfiguration() ssid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " pwd:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/wifi/WifiApCust;->logToFile(Ljava/lang/String;)V

    .line 405
    :cond_2
    const/4 v2, 0x0

    .line 407
    .local v2, "out":Ljava/io/DataOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/DataOutputStream;

    new-instance v4, Ljava/io/BufferedOutputStream;

    new-instance v5, Ljava/io/FileOutputStream;

    sget-object v6, Lcom/android/server/wifi/WifiApConfigStore;->AP_CONFIG_FILE:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v3, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 410
    .end local v2    # "out":Ljava/io/DataOutputStream;
    .local v3, "out":Ljava/io/DataOutputStream;
    if-eqz v3, :cond_4

    .line 411
    const/4 v4, 0x3

    :try_start_1
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 412
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 413
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 418
    :cond_3
    iget-boolean v4, p1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 419
    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->channel:I

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 420
    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 421
    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 422
    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->vendorIE:I

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 423
    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->apIsolate:I

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 424
    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->wpsStatus:I

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 425
    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->txPowerMode:I

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 427
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getAuthType()I

    move-result v0

    .line 428
    .local v0, "authType":I
    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 429
    if-eqz v0, :cond_4

    .line 430
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 431
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 438
    .end local v0    # "authType":I
    :cond_4
    if-eqz v3, :cond_6

    .line 440
    :try_start_2
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v2, v3

    .line 441
    .end local v3    # "out":Ljava/io/DataOutputStream;
    .restart local v2    # "out":Ljava/io/DataOutputStream;
    goto/16 :goto_0

    .end local v2    # "out":Ljava/io/DataOutputStream;
    .restart local v3    # "out":Ljava/io/DataOutputStream;
    :catch_0
    move-exception v4

    move-object v2, v3

    .end local v3    # "out":Ljava/io/DataOutputStream;
    .restart local v2    # "out":Ljava/io/DataOutputStream;
    goto/16 :goto_0

    .line 435
    :catch_1
    move-exception v1

    .line 436
    .local v1, "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    const-string v4, "WifiApConfigStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error writing hotspot configuration"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 438
    if-eqz v2, :cond_0

    .line 440
    :try_start_4
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 441
    :catch_2
    move-exception v4

    goto/16 :goto_0

    .line 438
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_2
    if-eqz v2, :cond_5

    .line 440
    :try_start_5
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 441
    :cond_5
    :goto_3
    throw v4

    :catch_3
    move-exception v5

    goto :goto_3

    .line 438
    .end local v2    # "out":Ljava/io/DataOutputStream;
    .restart local v3    # "out":Ljava/io/DataOutputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "out":Ljava/io/DataOutputStream;
    .restart local v2    # "out":Ljava/io/DataOutputStream;
    goto :goto_2

    .line 435
    .end local v2    # "out":Ljava/io/DataOutputStream;
    .restart local v3    # "out":Ljava/io/DataOutputStream;
    :catch_4
    move-exception v1

    move-object v2, v3

    .end local v3    # "out":Ljava/io/DataOutputStream;
    .restart local v2    # "out":Ljava/io/DataOutputStream;
    goto :goto_1

    .end local v2    # "out":Ljava/io/DataOutputStream;
    .restart local v3    # "out":Ljava/io/DataOutputStream;
    :cond_6
    move-object v2, v3

    .end local v3    # "out":Ljava/io/DataOutputStream;
    .restart local v2    # "out":Ljava/io/DataOutputStream;
    goto/16 :goto_0
.end method


# virtual methods
.method public getMessenger()Landroid/os/Messenger;
    .locals 2

    .prologue
    .line 393
    new-instance v0, Landroid/os/Messenger;

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiApConfigStore;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method public getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 3

    .prologue
    .line 126
    sget-object v0, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    .line 127
    const-string v0, "\t#ERROR#SSID#\n"

    sget-object v1, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    invoke-direct {p0}, Lcom/android/server/wifi/WifiApConfigStore;->reGenerateAndWriteConfiguration()V

    .line 136
    :cond_0
    :goto_0
    sget-boolean v0, Lcom/android/server/wifi/WifiApConfigStore;->DBG:Z

    if-eqz v0, :cond_4

    .line 137
    sget-object v0, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    if-nez v0, :cond_3

    .line 138
    const-string v0, "WifiApConfigStore"

    const-string v1, "getWifiApConfiguration return null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :goto_1
    sget-object v0, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0

    .line 129
    :cond_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_UseRandom4digitCombinationAsSSID"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, ""

    sget-object v1, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 131
    invoke-direct {p0}, Lcom/android/server/wifi/WifiApConfigStore;->reGenerateAndWriteConfiguration()V

    goto :goto_0

    .line 132
    :cond_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_UseRandom4digitCombinationAsSSID"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    invoke-direct {p0}, Lcom/android/server/wifi/WifiApConfigStore;->generateDefaultSSID()V

    goto :goto_0

    .line 140
    :cond_3
    const-string v0, "WifiApConfigStore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWifiApConfiguration "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pwd:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 142
    :cond_4
    sget-object v0, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    if-nez v0, :cond_5

    .line 143
    const-string v0, "WifiApConfigStore"

    const-string v1, "getWifiApConfiguration return null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 145
    :cond_5
    const-string v0, "WifiApConfigStore"

    const-string v1, "getWifiApConfiguration ssid"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public isCustomerChanged()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 254
    const-string v0, ""

    .line 255
    .local v0, "preCustomer":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/wifi/WifiApConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_ap_customer"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 256
    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCustomerChanged() pre:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Curr:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/server/wifi/WifiApConfigStore;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/wifi/WifiApCust;->logToFile(Ljava/lang/String;)V

    .line 257
    if-nez v0, :cond_1

    .line 259
    iget-object v2, p0, Lcom/android/server/wifi/WifiApConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_ap_customer"

    sget-object v4, Lcom/android/server/wifi/WifiApConfigStore;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 273
    :cond_0
    :goto_0
    return v1

    .line 262
    :cond_1
    sget-object v2, Lcom/android/server/wifi/WifiApConfigStore;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 265
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 267
    iget-object v2, p0, Lcom/android/server/wifi/WifiApConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_ap_customer"

    sget-object v4, Lcom/android/server/wifi/WifiApConfigStore;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 270
    :cond_2
    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    const-string v1, " diff, changed  return true"

    invoke-static {v1}, Landroid/net/wifi/WifiApCust;->logToFile(Ljava/lang/String;)V

    .line 271
    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " put :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/wifi/WifiApConfigStore;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/WifiApCust;->logToFile(Ljava/lang/String;)V

    .line 272
    iget-object v1, p0, Lcom/android/server/wifi/WifiApConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_ap_customer"

    sget-object v3, Lcom/android/server/wifi/WifiApConfigStore;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 273
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public loadApConfiguration()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    .line 281
    const/4 v3, 0x0

    .line 282
    .local v3, "in":Ljava/io/DataInputStream;
    const/4 v5, 0x3

    .line 283
    .local v5, "version":I
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiApConfigStore;->isCustomerChanged()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 284
    invoke-direct {p0}, Lcom/android/server/wifi/WifiApConfigStore;->setDefaultApConfiguration()V

    .line 335
    :cond_0
    :goto_0
    return-void

    .line 288
    :cond_1
    :try_start_0
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 289
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    new-instance v4, Ljava/io/DataInputStream;

    new-instance v6, Ljava/io/BufferedInputStream;

    new-instance v7, Ljava/io/FileInputStream;

    sget-object v8, Lcom/android/server/wifi/WifiApConfigStore;->AP_CONFIG_FILE:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    .end local v3    # "in":Ljava/io/DataInputStream;
    .local v4, "in":Ljava/io/DataInputStream;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    .line 293
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 300
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v6

    iput-boolean v6, v1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 301
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    iput v6, v1, Landroid/net/wifi/WifiConfiguration;->channel:I

    .line 302
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    iput v6, v1, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    .line 303
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    iput v6, v1, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    .line 304
    iget v6, v1, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    if-nez v6, :cond_2

    .line 305
    sget v6, Lcom/android/server/wifi/WifiApConfigStore;->MAX_CLIENT:I

    iput v6, v1, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    .line 307
    :cond_2
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    iput v6, v1, Landroid/net/wifi/WifiConfiguration;->vendorIE:I

    .line 308
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    iput v6, v1, Landroid/net/wifi/WifiConfiguration;->apIsolate:I

    .line 309
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    iput v6, v1, Landroid/net/wifi/WifiConfiguration;->wpsStatus:I

    .line 310
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    iput v6, v1, Landroid/net/wifi/WifiConfiguration;->txPowerMode:I

    .line 312
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 313
    .local v0, "authType":I
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v6, v0}, Ljava/util/BitSet;->set(I)V

    .line 314
    if-eqz v0, :cond_3

    .line 315
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 317
    :cond_3
    sput-object v1, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    .line 318
    if-ge v5, v9, :cond_4

    .line 319
    const v6, 0x20019

    sget-object v7, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {p0, v6, v7}, Lcom/android/server/wifi/WifiApConfigStore;->sendMessage(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 329
    :cond_4
    if-eqz v4, :cond_8

    .line 331
    :try_start_2
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v3, v4

    .line 332
    .end local v4    # "in":Ljava/io/DataInputStream;
    .restart local v3    # "in":Ljava/io/DataInputStream;
    goto :goto_0

    .end local v3    # "in":Ljava/io/DataInputStream;
    .restart local v4    # "in":Ljava/io/DataInputStream;
    :catch_0
    move-exception v6

    move-object v3, v4

    .end local v4    # "in":Ljava/io/DataInputStream;
    .restart local v3    # "in":Ljava/io/DataInputStream;
    goto :goto_0

    .line 321
    .end local v0    # "authType":I
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    :catch_1
    move-exception v2

    .line 322
    .local v2, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    sget-boolean v6, Lcom/android/server/wifi/WifiApConfigStore;->DBG:Z

    if-eqz v6, :cond_5

    const-string v6, "WifiApConfigStore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :cond_5
    if-ge v5, v9, :cond_6

    .line 324
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiApConfigStore;->loadApConfigurationOldVer()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 329
    :goto_2
    if-eqz v3, :cond_0

    .line 331
    :try_start_4
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 332
    :catch_2
    move-exception v6

    goto/16 :goto_0

    .line 326
    :cond_6
    :try_start_5
    invoke-direct {p0}, Lcom/android/server/wifi/WifiApConfigStore;->setDefaultApConfiguration()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 329
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    :goto_3
    if-eqz v3, :cond_7

    .line 331
    :try_start_6
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 332
    :cond_7
    :goto_4
    throw v6

    :catch_3
    move-exception v7

    goto :goto_4

    .line 329
    .end local v3    # "in":Ljava/io/DataInputStream;
    .restart local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v4    # "in":Ljava/io/DataInputStream;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "in":Ljava/io/DataInputStream;
    .restart local v3    # "in":Ljava/io/DataInputStream;
    goto :goto_3

    .line 321
    .end local v3    # "in":Ljava/io/DataInputStream;
    .restart local v4    # "in":Ljava/io/DataInputStream;
    :catch_4
    move-exception v2

    move-object v3, v4

    .end local v4    # "in":Ljava/io/DataInputStream;
    .restart local v3    # "in":Ljava/io/DataInputStream;
    goto :goto_1

    .end local v3    # "in":Ljava/io/DataInputStream;
    .restart local v0    # "authType":I
    .restart local v4    # "in":Ljava/io/DataInputStream;
    :cond_8
    move-object v3, v4

    .end local v4    # "in":Ljava/io/DataInputStream;
    .restart local v3    # "in":Ljava/io/DataInputStream;
    goto/16 :goto_0
.end method

.method loadApConfigurationOldVer()V
    .locals 10

    .prologue
    .line 338
    const-string v7, "WifiApConfigStore"

    const-string v8, "loadApConfigurationOldVer()"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    const/4 v3, 0x0

    .line 341
    .local v3, "in":Ljava/io/DataInputStream;
    :try_start_0
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 342
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    new-instance v4, Ljava/io/DataInputStream;

    new-instance v7, Ljava/io/BufferedInputStream;

    new-instance v8, Ljava/io/FileInputStream;

    sget-object v9, Lcom/android/server/wifi/WifiApConfigStore;->AP_CONFIG_FILE:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v7}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 345
    .end local v3    # "in":Ljava/io/DataInputStream;
    .local v4, "in":Ljava/io/DataInputStream;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .line 346
    .local v6, "version":I
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 348
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v7

    iput-boolean v7, v1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 349
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    iput v7, v1, Landroid/net/wifi/WifiConfiguration;->channel:I

    .line 350
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    iput v7, v1, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    .line 351
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    iput v7, v1, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    .line 352
    iget v7, v1, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    if-nez v7, :cond_0

    .line 353
    sget v7, Lcom/android/server/wifi/WifiApConfigStore;->MAX_CLIENT:I

    iput v7, v1, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    .line 355
    :cond_0
    const-string v7, "0"

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 356
    .local v5, "newConfigNum":I
    const/4 v7, 0x2

    if-ne v5, v7, :cond_4

    .line 357
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    iput v7, v1, Landroid/net/wifi/WifiConfiguration;->vendorIE:I

    .line 358
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    iput v7, v1, Landroid/net/wifi/WifiConfiguration;->apIsolate:I

    .line 365
    :cond_1
    :goto_0
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 366
    .local v0, "authType":I
    const/4 v7, 0x1

    if-ne v0, v7, :cond_5

    .line 367
    iget-object v7, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Ljava/util/BitSet;->set(I)V

    .line 368
    const-string v7, "WifiApConfigStore"

    const-string v8, " conf changed to wpa2 from wpa"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :goto_1
    if-eqz v0, :cond_2

    .line 373
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 376
    :cond_2
    sput-object v1, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    .line 377
    const v7, 0x20019

    sget-object v8, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {p0, v7, v8}, Lcom/android/server/wifi/WifiApConfigStore;->sendMessage(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 382
    if-eqz v4, :cond_7

    .line 384
    :try_start_2
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v3, v4

    .line 388
    .end local v0    # "authType":I
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v4    # "in":Ljava/io/DataInputStream;
    .end local v5    # "newConfigNum":I
    .end local v6    # "version":I
    .restart local v3    # "in":Ljava/io/DataInputStream;
    :cond_3
    :goto_2
    return-void

    .line 359
    .end local v3    # "in":Ljava/io/DataInputStream;
    .restart local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v4    # "in":Ljava/io/DataInputStream;
    .restart local v5    # "newConfigNum":I
    .restart local v6    # "version":I
    :cond_4
    const/4 v7, 0x3

    if-ne v5, v7, :cond_1

    .line 360
    :try_start_3
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    iput v7, v1, Landroid/net/wifi/WifiConfiguration;->vendorIE:I

    .line 361
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    iput v7, v1, Landroid/net/wifi/WifiConfiguration;->apIsolate:I

    .line 362
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    iput v7, v1, Landroid/net/wifi/WifiConfiguration;->wpsStatus:I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 378
    .end local v5    # "newConfigNum":I
    .end local v6    # "version":I
    :catch_0
    move-exception v2

    move-object v3, v4

    .line 379
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v4    # "in":Ljava/io/DataInputStream;
    .local v2, "ignore":Ljava/io/IOException;
    .restart local v3    # "in":Ljava/io/DataInputStream;
    :goto_3
    :try_start_4
    const-string v7, "WifiApConfigStore"

    const-string v8, "loadApConfigurationOldVer() : IOException"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    invoke-direct {p0}, Lcom/android/server/wifi/WifiApConfigStore;->setDefaultApConfiguration()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 382
    if-eqz v3, :cond_3

    .line 384
    :try_start_5
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 385
    :catch_1
    move-exception v7

    goto :goto_2

    .line 370
    .end local v2    # "ignore":Ljava/io/IOException;
    .end local v3    # "in":Ljava/io/DataInputStream;
    .restart local v0    # "authType":I
    .restart local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v4    # "in":Ljava/io/DataInputStream;
    .restart local v5    # "newConfigNum":I
    .restart local v6    # "version":I
    :cond_5
    :try_start_6
    iget-object v7, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v7, v0}, Ljava/util/BitSet;->set(I)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 382
    .end local v0    # "authType":I
    .end local v5    # "newConfigNum":I
    .end local v6    # "version":I
    :catchall_0
    move-exception v7

    move-object v3, v4

    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v4    # "in":Ljava/io/DataInputStream;
    .restart local v3    # "in":Ljava/io/DataInputStream;
    :goto_4
    if-eqz v3, :cond_6

    .line 384
    :try_start_7
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 385
    :cond_6
    :goto_5
    throw v7

    .end local v3    # "in":Ljava/io/DataInputStream;
    .restart local v0    # "authType":I
    .restart local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v4    # "in":Ljava/io/DataInputStream;
    .restart local v5    # "newConfigNum":I
    .restart local v6    # "version":I
    :catch_2
    move-exception v7

    move-object v3, v4

    .end local v4    # "in":Ljava/io/DataInputStream;
    .restart local v3    # "in":Ljava/io/DataInputStream;
    goto :goto_2

    .end local v0    # "authType":I
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v5    # "newConfigNum":I
    .end local v6    # "version":I
    :catch_3
    move-exception v8

    goto :goto_5

    .line 382
    :catchall_1
    move-exception v7

    goto :goto_4

    .line 378
    :catch_4
    move-exception v2

    goto :goto_3

    .end local v3    # "in":Ljava/io/DataInputStream;
    .restart local v0    # "authType":I
    .restart local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v4    # "in":Ljava/io/DataInputStream;
    .restart local v5    # "newConfigNum":I
    .restart local v6    # "version":I
    :cond_7
    move-object v3, v4

    .end local v4    # "in":Ljava/io/DataInputStream;
    .restart local v3    # "in":Ljava/io/DataInputStream;
    goto :goto_2
.end method
