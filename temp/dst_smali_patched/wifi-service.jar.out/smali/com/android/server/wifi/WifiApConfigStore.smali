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

    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    sget v0, Landroid/net/wifi/WifiApCust;->mDefaultMaxClientNum:I

    sput v0, Lcom/android/server/wifi/WifiApConfigStore;->MAX_CLIENT:I

    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    sget-object v0, Landroid/net/wifi/WifiApCust;->mMHSCustomer:Ljava/lang/String;

    sput-object v0, Lcom/android/server/wifi/WifiApConfigStore;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    sget-object v0, Landroid/net/wifi/WifiApCust;->mDefaultPassword:Ljava/lang/String;

    sput-object v0, Lcom/android/server/wifi/WifiApConfigStore;->defaultPassword:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "target"    # Landroid/os/Handler;

    .prologue
    const-string v6, "WifiApConfigStore"

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Wifi_DefaultSsidNPwd"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/wifi/WifiApConfigStore;->mDefaultSsidPwd:Ljava/lang/String;

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Wifi_UseDefaultSecurityAs"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/wifi/WifiApConfigStore;->mDefaultSecurity:Ljava/lang/String;

    new-instance v6, Lcom/android/server/wifi/WifiApConfigStore$DefaultState;

    invoke-direct {v6, p0}, Lcom/android/server/wifi/WifiApConfigStore$DefaultState;-><init>(Lcom/android/server/wifi/WifiApConfigStore;)V

    iput-object v6, p0, Lcom/android/server/wifi/WifiApConfigStore;->mDefaultState:Lcom/android/internal/util/State;

    new-instance v6, Lcom/android/server/wifi/WifiApConfigStore$InactiveState;

    invoke-direct {v6, p0}, Lcom/android/server/wifi/WifiApConfigStore$InactiveState;-><init>(Lcom/android/server/wifi/WifiApConfigStore;)V

    iput-object v6, p0, Lcom/android/server/wifi/WifiApConfigStore;->mInactiveState:Lcom/android/internal/util/State;

    new-instance v6, Lcom/android/server/wifi/WifiApConfigStore$ActiveState;

    invoke-direct {v6, p0}, Lcom/android/server/wifi/WifiApConfigStore$ActiveState;-><init>(Lcom/android/server/wifi/WifiApConfigStore;)V

    iput-object v6, p0, Lcom/android/server/wifi/WifiApConfigStore;->mActiveState:Lcom/android/internal/util/State;

    new-instance v6, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v6}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v6, p0, Lcom/android/server/wifi/WifiApConfigStore;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/server/wifi/WifiApConfigStore;->allowed2GChannel:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/server/wifi/WifiApConfigStore;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/wifi/WifiApConfigStore;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v6}, Lcom/android/server/wifi/WifiApConfigStore;->addState(Lcom/android/internal/util/State;)V

    iget-object v6, p0, Lcom/android/server/wifi/WifiApConfigStore;->mInactiveState:Lcom/android/internal/util/State;

    iget-object v7, p0, Lcom/android/server/wifi/WifiApConfigStore;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v6, v7}, Lcom/android/server/wifi/WifiApConfigStore;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v6, p0, Lcom/android/server/wifi/WifiApConfigStore;->mActiveState:Lcom/android/internal/util/State;

    iget-object v7, p0, Lcom/android/server/wifi/WifiApConfigStore;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v6, v7}, Lcom/android/server/wifi/WifiApConfigStore;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v6, p0, Lcom/android/server/wifi/WifiApConfigStore;->mInactiveState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v6}, Lcom/android/server/wifi/WifiApConfigStore;->setInitialState(Lcom/android/internal/util/State;)V

    iget-object v6, p0, Lcom/android/server/wifi/WifiApConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x104001f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

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

    if-eqz v0, :cond_0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/server/wifi/WifiApConfigStore;->allowed2GChannel:Ljava/util/ArrayList;

    const-string v6, ","

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

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

    .local v5, "tmp":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/wifi/WifiApConfigStore;->allowed2GChannel:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

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
    sget-object v0, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method static synthetic access$002(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    sput-object p0, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/server/wifi/WifiApConfigStore;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiApConfigStore;

    .prologue
    invoke-direct {p0}, Lcom/android/server/wifi/WifiApConfigStore;->reGenerateAndWriteConfiguration()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/wifi/WifiApConfigStore;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiApConfigStore;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiApConfigStore;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/wifi/WifiApConfigStore;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiApConfigStore;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiApConfigStore;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/wifi/WifiApConfigStore;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiApConfigStore;

    .prologue
    invoke-direct {p0}, Lcom/android/server/wifi/WifiApConfigStore;->generateDefaultSSID()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/wifi/WifiApConfigStore;)Lcom/android/internal/util/AsyncChannel;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiApConfigStore;

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/WifiApConfigStore;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/wifi/WifiApConfigStore;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiApConfigStore;

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/WifiApConfigStore;->mActiveState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/wifi/WifiApConfigStore;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiApConfigStore;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiApConfigStore;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/wifi/WifiApConfigStore;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiApConfigStore;

    .prologue
    invoke-direct {p0}, Lcom/android/server/wifi/WifiApConfigStore;->setDefaultApConfiguration()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/wifi/WifiApConfigStore;Landroid/net/wifi/WifiConfiguration;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiApConfigStore;
    .param p1, "x1"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiApConfigStore;->writeApConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/wifi/WifiApConfigStore;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiApConfigStore;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiApConfigStore;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/wifi/WifiApConfigStore;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiApConfigStore;

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/WifiApConfigStore;->mInactiveState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method private generateDefaultSSID()V
    .locals 20

    .prologue
    const-string v16, "WifiApConfigStore"

    const-string v17, "generateDefaultSSID.."

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    .local v10, "number":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiApConfigStore;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const-string v17, "phone"

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/telephony/TelephonyManager;

    .local v14, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-eqz v14, :cond_0

    invoke-virtual {v14}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v10

    :cond_0
    if-nez v10, :cond_1

    const-string v10, ""

    :cond_1
    const-string v15, ""

    .local v15, "tempSSID":Ljava/lang/String;
    const-string v4, ""

    .local v4, "defaultSsid":Ljava/lang/String;
    const-string v3, ""

    .local v3, "defaultNumber":Ljava/lang/String;
    const-string v16, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiApConfigStore;->mDefaultSsidPwd:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiApConfigStore;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const v17, 0x10403b1

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    :goto_0
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v16

    const/16 v17, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_5

    invoke-virtual {v10}, Ljava/lang/String;->toCharArray()[C

    move-result-object v16

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v17

    add-int/lit8 v17, v17, -0x4

    const/16 v18, 0x4

    invoke-static/range {v16 .. v18}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v6

    .local v6, "last4digitNum":Ljava/lang/String;
    invoke-virtual {v15, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v3, v6

    .end local v6    # "last4digitNum":Ljava/lang/String;
    :goto_1
    new-instance v2, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v2}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .local v2, "config":Landroid/net/wifi/WifiConfiguration;
    sput-object v2, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    sget-object v16, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v0, v16

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    sget-object v16, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput-boolean v0, v1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

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

    :cond_2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v11

    .local v11, "randomUUID":Ljava/lang/String;
    const-string v16, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiApConfigStore;->mDefaultSsidPwd:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_6

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

    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiApConfigStore;->mDefaultSecurity:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string v17, "WPA2/PSK"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_9

    sget-object v16, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v16, v0

    const/16 v17, 0x4

    invoke-virtual/range {v16 .. v17}, Ljava/util/BitSet;->set(I)V

    .end local v11    # "randomUUID":Ljava/lang/String;
    :goto_3
    const-string v16, "WifiApConfigStore"

    const-string v17, "Calling writeApConfiguration"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v16, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiApConfigStore;->writeApConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    return-void

    .end local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WifiApConfigStore;->mDefaultSsidPwd:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string v17, ","

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .local v9, "mSplitSsid":[Ljava/lang/String;
    const/16 v16, 0x0

    aget-object v15, v9, v16

    goto/16 :goto_0

    .end local v9    # "mSplitSsid":[Ljava/lang/String;
    :cond_5
    new-instance v12, Ljava/util/Random;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-direct {v12, v0, v1}, Ljava/util/Random;-><init>(J)V

    .local v12, "rnd":Ljava/util/Random;
    const/16 v16, 0x2327

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v16

    move/from16 v0, v16

    add-int/lit16 v13, v0, 0x3e8

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

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

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

    .local v8, "mSplitPwd":[Ljava/lang/String;
    array-length v0, v8

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_7

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

    :cond_7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .local v7, "mPwd":Ljava/lang/StringBuilder;
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_4
    array-length v0, v8

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v5, v0, :cond_3

    const-string v16, "LAST4DIGIT"

    aget-object v17, v8, v5

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_8

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5
    sget-object v16, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_8
    aget-object v16, v8, v5

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

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

    .end local v11    # "randomUUID":Ljava/lang/String;
    :cond_a
    sget-object v16, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    const-string v17, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

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
    iget-object v3, p0, Lcom/android/server/wifi/WifiApConfigStore;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .local v2, "telephony":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

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

    :cond_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, "len":I
    if-nez p1, :cond_1

    .end local v0    # "imei":Ljava/lang/String;
    .end local v1    # "len":I
    :goto_0
    return-object v0

    .restart local v0    # "imei":Ljava/lang/String;
    .restart local v1    # "len":I
    :cond_1
    if-lt v1, p1, :cond_3

    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0, v4, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    goto :goto_0

    .end local v1    # "len":I
    :cond_2
    const-string v3, "WifiApConfigStore"

    const-string v4, "Fail to get IMEI"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getLastIMEI(I)Ljava/lang/String;
    .locals 5
    .param p1, "digit"    # I

    .prologue
    iget-object v3, p0, Lcom/android/server/wifi/WifiApConfigStore;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .local v2, "telephony":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

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

    :cond_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, "len":I
    if-nez p1, :cond_1

    .end local v0    # "imei":Ljava/lang/String;
    .end local v1    # "len":I
    :goto_0
    return-object v0

    .restart local v0    # "imei":Ljava/lang/String;
    .restart local v1    # "len":I
    :cond_1
    if-lt v1, p1, :cond_3

    new-instance v3, Ljava/lang/String;

    sub-int v4, v1, p1

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    goto :goto_0

    .end local v1    # "len":I
    :cond_2
    const-string v3, "WifiApConfigStore"

    const-string v4, "Fail to get IMEI"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getMacAddressLast2Digits()Ljava/lang/String;
    .locals 5

    .prologue
    invoke-static {}, Landroid/net/wifi/WifiInfo;->getMacAddressFromFile()Ljava/lang/String;

    move-result-object v1

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

    :cond_0
    if-eqz v1, :cond_1

    const-string v3, ":"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "temp":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, "len":I
    new-instance v3, Ljava/lang/String;

    add-int/lit8 v4, v0, -0x2

    invoke-virtual {v2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .end local v0    # "len":I
    .end local v2    # "temp":Ljava/lang/String;
    :goto_0
    return-object v3

    :cond_1
    const-string v3, "WifiApConfigStore"

    const-string v4, "MAC read fail"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto :goto_0
.end method

.method private getMacAddressLast3Digits()Ljava/lang/String;
    .locals 5

    .prologue
    invoke-static {}, Landroid/net/wifi/WifiInfo;->getMacAddressFromFile()Ljava/lang/String;

    move-result-object v1

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

    :cond_0
    if-eqz v1, :cond_1

    const-string v3, ":"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "temp":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, "len":I
    new-instance v3, Ljava/lang/String;

    add-int/lit8 v4, v0, -0x3

    invoke-virtual {v2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .end local v0    # "len":I
    .end local v2    # "temp":Ljava/lang/String;
    :goto_0
    return-object v3

    :cond_1
    const-string v3, "WifiApConfigStore"

    const-string v4, "MAC read fail"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto :goto_0
.end method

.method private getMacAddressLast4Digits()Ljava/lang/String;
    .locals 5

    .prologue
    invoke-static {}, Landroid/net/wifi/WifiInfo;->getMacAddressFromFile()Ljava/lang/String;

    move-result-object v1

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

    :cond_0
    if-eqz v1, :cond_1

    const-string v3, ":"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "temp":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, "len":I
    new-instance v3, Ljava/lang/String;

    add-int/lit8 v4, v0, -0x4

    invoke-virtual {v2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .end local v0    # "len":I
    .end local v2    # "temp":Ljava/lang/String;
    :goto_0
    return-object v3

    :cond_1
    const-string v3, "WifiApConfigStore"

    const-string v4, "MAC read fail"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto :goto_0
.end method

.method private getModelName()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x8

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .local v1, "name":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, "len":I
    if-le v0, v4, :cond_0

    const-string v2, "SAMSUNG-"

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method private getRandom12Chars()Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

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
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

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
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

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
    new-instance v0, Ljava/lang/String;

    const-string v5, "abcdefghijklmnopqrstuvwxyz"

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .local v0, "alphabet":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, "len":I
    const-wide/16 v6, 0x0

    cmp-long v5, p2, v6

    if-nez v5, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p2

    :cond_0
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3, p2, p3}, Ljava/util/Random;-><init>(J)V

    .local v3, "random":Ljava/util/Random;
    const-string v4, ""

    .local v4, "result":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_1

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

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

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

    if-nez p1, :cond_0

    const-string v4, ""

    :goto_0
    return-object v4

    :cond_0
    const-wide/16 v4, 0x0

    cmp-long v4, p2, v4

    if-nez v4, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p2

    :cond_1
    cmp-long v4, p2, v6

    if-nez v4, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    add-long p2, v4, v6

    :cond_2
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3, p2, p3}, Ljava/util/Random;-><init>(J)V

    .local v3, "random":Ljava/util/Random;
    const/16 v2, 0xa

    .local v2, "maxValue":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    if-ge v1, p1, :cond_3

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%%0%dd"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

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
    new-instance v4, Ljava/lang/String;

    const-string v5, "!@#$/^&*()"

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .local v4, "sym":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, "len":I
    const-wide/16 v6, 0x0

    cmp-long v5, p2, v6

    if-nez v5, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p2

    :cond_0
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2, p2, p3}, Ljava/util/Random;-><init>(J)V

    .local v2, "random":Ljava/util/Random;
    const-string v3, ""

    .local v3, "result":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_1

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

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

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

    iget-object v5, p0, Lcom/android/server/wifi/WifiApConfigStore;->mContext:Landroid/content/Context;

    const-string v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .local v2, "telephony":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

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

    :cond_0
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

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

    .end local v0    # "len":I
    .end local v1    # "min":Ljava/lang/String;
    :cond_2
    :goto_0
    return-object v1

    .restart local v0    # "len":I
    .restart local v1    # "min":Ljava/lang/String;
    :cond_3
    if-eqz p1, :cond_2

    if-lt v0, p1, :cond_5

    new-instance v3, Ljava/lang/String;

    sub-int v4, v0, p1

    invoke-virtual {v1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    goto :goto_0

    .end local v0    # "len":I
    :cond_4
    const-string v3, "WifiApConfigStore"

    const-string v5, "Fail to get MSISDN"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move-object v1, v4

    goto :goto_0
.end method

.method public static makeWifiApConfigStore(Landroid/content/Context;Landroid/os/Handler;)Lcom/android/server/wifi/WifiApConfigStore;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "target"    # Landroid/os/Handler;

    .prologue
    sget-boolean v1, Lcom/android/server/wifi/WifiApConfigStore;->DBG:Z

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    const-string v1, "makeWifiApConfigStore()"

    invoke-static {v1}, Landroid/net/wifi/WifiApCust;->logToFile(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lcom/android/server/wifi/WifiApConfigStore;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wifi/WifiApConfigStore;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .local v0, "s":Lcom/android/server/wifi/WifiApConfigStore;
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiApConfigStore;->start()V

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

    :cond_0
    const-string v5, "SamsungDefault"

    sget-object v6, Lcom/android/server/wifi/WifiApConfigStore;->defaultPassword:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

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

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    const-string v5, "Random12Chars"

    sget-object v6, Lcom/android/server/wifi/WifiApConfigStore;->defaultPassword:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-direct {p0}, Lcom/android/server/wifi/WifiApConfigStore;->getRandom12Chars()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v5, "Random8Chars"

    sget-object v6, Lcom/android/server/wifi/WifiApConfigStore;->defaultPassword:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-direct {p0}, Lcom/android/server/wifi/WifiApConfigStore;->getRandom8Chars()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    const-string v5, "Min10Digits"

    sget-object v6, Lcom/android/server/wifi/WifiApConfigStore;->defaultPassword:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-direct {p0, v10, p1}, Lcom/android/server/wifi/WifiApConfigStore;->getTelephonyNumber(IZ)Ljava/lang/String;

    move-result-object v4

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

    :cond_5
    if-eqz v4, :cond_7

    const-string v5, ""

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "0"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_6
    const/16 v5, 0xa

    invoke-direct {p0, v5, v8, v9}, Lcom/android/server/wifi/WifiApConfigStore;->getRandomDigits(IJ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_7
    move-object v0, v4

    goto :goto_0

    .end local v4    # "telephonyNumber":Ljava/lang/String;
    :cond_8
    const-string v5, "ModelWith4RandomDigits"

    sget-object v6, Lcom/android/server/wifi/WifiApConfigStore;->defaultPassword:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

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

    :cond_9
    const-string v5, "IMEI5With5RandomDigits"

    sget-object v6, Lcom/android/server/wifi/WifiApConfigStore;->defaultPassword:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-direct {p0, v11}, Lcom/android/server/wifi/WifiApConfigStore;->getIMEI(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "imei":Ljava/lang/String;
    if-eqz v0, :cond_a

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

    :cond_a
    const-string v5, "WifiApConfigStore"

    const-string v6, "Not generate default password : because imei is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto/16 :goto_0

    .end local v0    # "imei":Ljava/lang/String;
    :cond_b
    const-string v5, "IMEILast8Digits"

    sget-object v6, Lcom/android/server/wifi/WifiApConfigStore;->defaultPassword:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    const/16 v5, 0x8

    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiApConfigStore;->getLastIMEI(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "imei":Ljava/lang/String;
    if-nez v0, :cond_1

    const-string v5, "WifiApConfigStore"

    const-string v6, "Not generate default password : because imei is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "XXXXXXXX"

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

    .end local v0    # "imei":Ljava/lang/String;
    :cond_c
    const-string v5, "VZWRandomRule"

    sget-object v6, Lcom/android/server/wifi/WifiApConfigStore;->defaultPassword:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-direct {p0, v10, p1}, Lcom/android/server/wifi/WifiApConfigStore;->getTelephonyNumber(IZ)Ljava/lang/String;

    move-result-object v1

    .local v1, "mdn":Ljava/lang/String;
    if-eqz v1, :cond_d

    const-string v5, ""

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

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

    .end local v2    # "seed":J
    :cond_d
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .restart local v2    # "seed":J
    goto :goto_1

    .end local v1    # "mdn":Ljava/lang/String;
    .end local v2    # "seed":J
    :cond_e
    const-string v5, "UserDefined"

    sget-object v6, Lcom/android/server/wifi/WifiApConfigStore;->defaultPassword:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    const-string v0, "\tUSER#DEFINED#PWD#\n"

    goto/16 :goto_0

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
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .local v7, "ssid":Ljava/lang/StringBuilder;
    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    sget-object v1, Landroid/net/wifi/WifiApCust;->mDefaultSSID:Ljava/lang/String;

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

    :cond_0
    const-string v9, ","

    invoke-virtual {v1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "customSSID":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v9, v0

    if-ge v2, v9, :cond_18

    const-string v9, "Default"

    aget-object v10, v0, v2

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/server/wifi/WifiApConfigStore;->mContext:Landroid/content/Context;

    const v10, 0x10403b1

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v9, "ModelName"

    aget-object v10, v0, v2

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-direct {p0}, Lcom/android/server/wifi/WifiApConfigStore;->getModelName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string v9, "Random4Digits"

    aget-object v10, v0, v2

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v9, 0x4

    const-wide/16 v10, 0x0

    invoke-direct {p0, v9, v10, v11}, Lcom/android/server/wifi/WifiApConfigStore;->getRandomDigits(IJ)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    const-string v9, "Mac4Digits"

    aget-object v10, v0, v2

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-direct {p0}, Lcom/android/server/wifi/WifiApConfigStore;->getMacAddressLast4Digits()Ljava/lang/String;

    move-result-object v4

    .local v4, "mac":Ljava/lang/String;
    if-eqz v4, :cond_4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    if-eqz p2, :cond_6

    .end local v4    # "mac":Ljava/lang/String;
    .end local p1    # "errString":Ljava/lang/String;
    :cond_5
    :goto_2
    return-object p1

    .restart local v4    # "mac":Ljava/lang/String;
    .restart local p1    # "errString":Ljava/lang/String;
    :cond_6
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .end local v4    # "mac":Ljava/lang/String;
    :cond_7
    const-string v9, "Mac3Digits"

    aget-object v10, v0, v2

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-direct {p0}, Lcom/android/server/wifi/WifiApConfigStore;->getMacAddressLast3Digits()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "mac":Ljava/lang/String;
    if-eqz v4, :cond_8

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_8
    if-nez p2, :cond_5

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .end local v4    # "mac":Ljava/lang/String;
    :cond_9
    const-string v9, "Mac2Digits"

    aget-object v10, v0, v2

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-direct {p0}, Lcom/android/server/wifi/WifiApConfigStore;->getMacAddressLast2Digits()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "mac":Ljava/lang/String;
    if-eqz v4, :cond_a

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_a
    if-nez p2, :cond_5

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .end local v4    # "mac":Ljava/lang/String;
    :cond_b
    const-string v9, "Min4Digits"

    aget-object v10, v0, v2

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    const/4 v9, 0x4

    const/4 v10, 0x0

    invoke-direct {p0, v9, v10}, Lcom/android/server/wifi/WifiApConfigStore;->getTelephonyNumber(IZ)Ljava/lang/String;

    move-result-object v5

    .local v5, "min":Ljava/lang/String;
    if-eqz v5, :cond_c

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_c
    if-nez p2, :cond_5

    const/4 v9, 0x4

    const-wide/16 v10, 0x0

    invoke-direct {p0, v9, v10, v11}, Lcom/android/server/wifi/WifiApConfigStore;->getRandomDigits(IJ)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .end local v5    # "min":Ljava/lang/String;
    :cond_d
    const-string v9, "Min2Digits"

    aget-object v10, v0, v2

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-direct {p0, v9, v10}, Lcom/android/server/wifi/WifiApConfigStore;->getTelephonyNumber(IZ)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "min":Ljava/lang/String;
    if-eqz v5, :cond_e

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_e
    if-nez p2, :cond_5

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .end local v5    # "min":Ljava/lang/String;
    :cond_f
    const-string v9, "IMEILast2Digits"

    aget-object v10, v0, v2

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    const/4 v9, 0x2

    invoke-direct {p0, v9}, Lcom/android/server/wifi/WifiApConfigStore;->getLastIMEI(I)Ljava/lang/String;

    move-result-object v3

    .local v3, "imei":Ljava/lang/String;
    if-eqz v3, :cond_10

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_10
    if-nez p2, :cond_5

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .end local v3    # "imei":Ljava/lang/String;
    :cond_11
    const-string v9, "IMEILast4Digits"

    aget-object v10, v0, v2

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13

    const/4 v9, 0x4

    invoke-direct {p0, v9}, Lcom/android/server/wifi/WifiApConfigStore;->getLastIMEI(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "imei":Ljava/lang/String;
    if-eqz v3, :cond_12

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_12
    if-nez p2, :cond_5

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .end local v3    # "imei":Ljava/lang/String;
    :cond_13
    const-string v9, "Space"

    aget-object v10, v0, v2

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_14

    const-string v9, " "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_14
    const-string v9, "BrandName"

    aget-object v10, v0, v2

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_16

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v9

    const-string v10, "SEC_FLOATING_FEATURE_SETTINGS_CONFIG_BRAND_NAME"

    invoke-virtual {v9, v10}, Lcom/samsung/android/feature/FloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .local v8, "temp":Ljava/lang/String;
    const-string v9, ""

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_15

    const-string v9, "brand"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_15
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .end local v8    # "temp":Ljava/lang/String;
    :cond_16
    const-string v9, "ChameleonSSID"

    aget-object v10, v0, v2

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_17

    const-string v9, "WifiApConfigStore"

    const-string v10, "updateHotspotS"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "WifiApConfigStore"

    const-string v10, "ChameleonSSID is null -> ModelName is used."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/wifi/WifiApConfigStore;->getModelName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_17
    aget-object v9, v0, v2

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

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

    :cond_19
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    const/16 v10, 0x20

    if-le v9, v10, :cond_1a

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .local v6, "modifiedSsid":Ljava/lang/String;
    const/4 v9, 0x0

    const/16 v10, 0x20

    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_2

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

    const-string v2, "WifiApConfigStore"

    const-string v3, "Re-Generate SSID"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "XXXX"

    invoke-direct {p0, v2, v4}, Lcom/android/server/wifi/WifiApConfigStore;->parseSecProductFeatureSsid(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .local v0, "defaultSSID":Ljava/lang/String;
    sget-object v2, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    iput-object v0, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    sget-object v2, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2}, Ljava/util/BitSet;->cardinality()I

    move-result v2

    if-lt v2, v5, :cond_0

    const-string v2, "WifiApConfigStore"

    const-string v3, "KeyManagement.cardinality() >= 1 => clear"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2}, Ljava/util/BitSet;->clear()V

    :cond_0
    const-string v2, "None"

    sget-object v3, Lcom/android/server/wifi/WifiApConfigStore;->defaultPassword:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    :goto_0
    const-string v2, "XXXX"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiApConfigStore;->writeApConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    :cond_1
    return-void

    :cond_2
    sget-object v2, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v6}, Ljava/util/BitSet;->set(I)V

    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiApConfigStore;->parseSecProductFeaturePassword(Z)Ljava/lang/String;

    move-result-object v1

    .local v1, "password":Ljava/lang/String;
    if-nez v1, :cond_3

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

    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    const-string v2, "setDefaultApConfiguration()"

    invoke-static {v2}, Landroid/net/wifi/WifiApCust;->logToFile(Ljava/lang/String;)V

    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Wifi_UseRandom4digitCombinationAsSSID"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, ""

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    :goto_0
    const-string v2, "None"

    sget-object v3, Lcom/android/server/wifi/WifiApConfigStore;->defaultPassword:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    :goto_1
    iput-boolean v4, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    iput v4, v0, Landroid/net/wifi/WifiConfiguration;->channel:I

    const-string v2, "SPRINT"

    sget-object v3, Lcom/android/server/wifi/WifiApConfigStore;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x8

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    :goto_2
    iput v5, v0, Landroid/net/wifi/WifiConfiguration;->wpsStatus:I

    iput v5, v0, Landroid/net/wifi/WifiConfiguration;->txPowerMode:I

    const v2, 0x20019

    invoke-virtual {p0, v2, v0}, Lcom/android/server/wifi/WifiApConfigStore;->sendMessage(ILjava/lang/Object;)V

    return-void

    :cond_0
    const-string v2, "\t#ERROR#SSID#\n"

    invoke-direct {p0, v2, v5}, Lcom/android/server/wifi/WifiApConfigStore;->parseSecProductFeatureSsid(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiApConfigStore;->parseSecProductFeaturePassword(Z)Ljava/lang/String;

    move-result-object v1

    .local v1, "password":Ljava/lang/String;
    if-nez v1, :cond_2

    const-string v2, "\t#ERROR#SSID#\n"

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    const-string v2, "UserDefined"

    sget-object v3, Lcom/android/server/wifi/WifiApConfigStore;->defaultPassword:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "\tUSER#DEFINED#PWD#\n"

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_1

    :cond_3
    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_1

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
    if-nez p1, :cond_1

    sget-boolean v4, Lcom/android/server/wifi/WifiApConfigStore;->DBG:Z

    if-eqz v4, :cond_0

    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    const-string v4, "WifiApConfigStore writeApConfiguration() config is null."

    invoke-static {v4}, Landroid/net/wifi/WifiApCust;->logToFile(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v4, Lcom/android/server/wifi/WifiApConfigStore;->DBG:Z

    if-eqz v4, :cond_2

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

    :cond_2
    const/4 v2, 0x0

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

    .end local v2    # "out":Ljava/io/DataOutputStream;
    .local v3, "out":Ljava/io/DataOutputStream;
    if-eqz v3, :cond_4

    const/4 v4, 0x3

    :try_start_1
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    :cond_3
    iget-boolean v4, p1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->channel:I

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->vendorIE:I

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->apIsolate:I

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->wpsStatus:I

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->txPowerMode:I

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getAuthType()I

    move-result v0

    .local v0, "authType":I
    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    if-eqz v0, :cond_4

    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v4, :cond_4

    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v0    # "authType":I
    :cond_4
    if-eqz v3, :cond_6

    :try_start_2
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v2, v3

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

    :catch_1
    move-exception v1

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

    if-eqz v2, :cond_0

    :try_start_4
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v4

    goto/16 :goto_0

    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_2
    if-eqz v2, :cond_5

    :try_start_5
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_5
    :goto_3
    throw v4

    :catch_3
    move-exception v5

    goto :goto_3

    .end local v2    # "out":Ljava/io/DataOutputStream;
    .restart local v3    # "out":Ljava/io/DataOutputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "out":Ljava/io/DataOutputStream;
    .restart local v2    # "out":Ljava/io/DataOutputStream;
    goto :goto_2

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
    new-instance v0, Landroid/os/Messenger;

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiApConfigStore;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method public getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 3

    .prologue
    sget-object v0, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    const-string v0, "\t#ERROR#SSID#\n"

    sget-object v1, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/wifi/WifiApConfigStore;->reGenerateAndWriteConfiguration()V

    :cond_0
    :goto_0
    sget-boolean v0, Lcom/android/server/wifi/WifiApConfigStore;->DBG:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    if-nez v0, :cond_3

    const-string v0, "WifiApConfigStore"

    const-string v1, "getWifiApConfiguration return null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    sget-object v0, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0

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

    invoke-direct {p0}, Lcom/android/server/wifi/WifiApConfigStore;->reGenerateAndWriteConfiguration()V

    goto :goto_0

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

    invoke-direct {p0}, Lcom/android/server/wifi/WifiApConfigStore;->generateDefaultSSID()V

    goto :goto_0

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

    :cond_4
    sget-object v0, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    if-nez v0, :cond_5

    const-string v0, "WifiApConfigStore"

    const-string v1, "getWifiApConfiguration return null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

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

    const-string v0, ""

    .local v0, "preCustomer":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/wifi/WifiApConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_ap_customer"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

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

    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/android/server/wifi/WifiApConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_ap_customer"

    sget-object v4, Lcom/android/server/wifi/WifiApConfigStore;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    :goto_0
    return v1

    :cond_1
    sget-object v2, Lcom/android/server/wifi/WifiApConfigStore;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/wifi/WifiApConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_ap_customer"

    sget-object v4, Lcom/android/server/wifi/WifiApConfigStore;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_2
    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    const-string v1, " diff, changed  return true"

    invoke-static {v1}, Landroid/net/wifi/WifiApCust;->logToFile(Ljava/lang/String;)V

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

    iget-object v1, p0, Lcom/android/server/wifi/WifiApConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_ap_customer"

    sget-object v3, Lcom/android/server/wifi/WifiApConfigStore;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public loadApConfiguration()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v3, 0x0

    .local v3, "in":Ljava/io/DataInputStream;
    const/4 v5, 0x3

    .local v5, "version":I
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiApConfigStore;->isCustomerChanged()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-direct {p0}, Lcom/android/server/wifi/WifiApConfigStore;->setDefaultApConfiguration()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

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

    .end local v3    # "in":Ljava/io/DataInputStream;
    .local v4, "in":Ljava/io/DataInputStream;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v6

    iput-boolean v6, v1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    iput v6, v1, Landroid/net/wifi/WifiConfiguration;->channel:I

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    iput v6, v1, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    iput v6, v1, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    iget v6, v1, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    if-nez v6, :cond_2

    sget v6, Lcom/android/server/wifi/WifiApConfigStore;->MAX_CLIENT:I

    iput v6, v1, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    :cond_2
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    iput v6, v1, Landroid/net/wifi/WifiConfiguration;->vendorIE:I

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    iput v6, v1, Landroid/net/wifi/WifiConfiguration;->apIsolate:I

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    iput v6, v1, Landroid/net/wifi/WifiConfiguration;->wpsStatus:I

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    iput v6, v1, Landroid/net/wifi/WifiConfiguration;->txPowerMode:I

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .local v0, "authType":I
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v6, v0}, Ljava/util/BitSet;->set(I)V

    if-eqz v0, :cond_3

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    :cond_3
    sput-object v1, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    if-ge v5, v9, :cond_4

    const v6, 0x20019

    sget-object v7, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {p0, v6, v7}, Lcom/android/server/wifi/WifiApConfigStore;->sendMessage(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_4
    if-eqz v4, :cond_8

    :try_start_2
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v3, v4

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

    .end local v0    # "authType":I
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    :catch_1
    move-exception v2

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

    :cond_5
    if-ge v5, v9, :cond_6

    invoke-virtual {p0}, Lcom/android/server/wifi/WifiApConfigStore;->loadApConfigurationOldVer()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    if-eqz v3, :cond_0

    :try_start_4
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v6

    goto/16 :goto_0

    :cond_6
    :try_start_5
    invoke-direct {p0}, Lcom/android/server/wifi/WifiApConfigStore;->setDefaultApConfiguration()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    :goto_3
    if-eqz v3, :cond_7

    :try_start_6
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_7
    :goto_4
    throw v6

    :catch_3
    move-exception v7

    goto :goto_4

    .end local v3    # "in":Ljava/io/DataInputStream;
    .restart local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v4    # "in":Ljava/io/DataInputStream;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "in":Ljava/io/DataInputStream;
    .restart local v3    # "in":Ljava/io/DataInputStream;
    goto :goto_3

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
    const-string v7, "WifiApConfigStore"

    const-string v8, "loadApConfigurationOldVer()"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    .local v3, "in":Ljava/io/DataInputStream;
    :try_start_0
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

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

    .end local v3    # "in":Ljava/io/DataInputStream;
    .local v4, "in":Ljava/io/DataInputStream;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .local v6, "version":I
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v7

    iput-boolean v7, v1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    iput v7, v1, Landroid/net/wifi/WifiConfiguration;->channel:I

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    iput v7, v1, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    iput v7, v1, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    iget v7, v1, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    if-nez v7, :cond_0

    sget v7, Lcom/android/server/wifi/WifiApConfigStore;->MAX_CLIENT:I

    iput v7, v1, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    :cond_0
    const-string v7, "0"

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .local v5, "newConfigNum":I
    const/4 v7, 0x2

    if-ne v5, v7, :cond_4

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    iput v7, v1, Landroid/net/wifi/WifiConfiguration;->vendorIE:I

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    iput v7, v1, Landroid/net/wifi/WifiConfiguration;->apIsolate:I

    :cond_1
    :goto_0
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .local v0, "authType":I
    const/4 v7, 0x1

    if-ne v0, v7, :cond_5

    iget-object v7, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Ljava/util/BitSet;->set(I)V

    const-string v7, "WifiApConfigStore"

    const-string v8, " conf changed to wpa2 from wpa"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    :cond_2
    sput-object v1, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    const v7, 0x20019

    sget-object v8, Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {p0, v7, v8}, Lcom/android/server/wifi/WifiApConfigStore;->sendMessage(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_7

    :try_start_2
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v3, v4

    .end local v0    # "authType":I
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v4    # "in":Ljava/io/DataInputStream;
    .end local v5    # "newConfigNum":I
    .end local v6    # "version":I
    .restart local v3    # "in":Ljava/io/DataInputStream;
    :cond_3
    :goto_2
    return-void

    .end local v3    # "in":Ljava/io/DataInputStream;
    .restart local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v4    # "in":Ljava/io/DataInputStream;
    .restart local v5    # "newConfigNum":I
    .restart local v6    # "version":I
    :cond_4
    const/4 v7, 0x3

    if-ne v5, v7, :cond_1

    :try_start_3
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    iput v7, v1, Landroid/net/wifi/WifiConfiguration;->vendorIE:I

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    iput v7, v1, Landroid/net/wifi/WifiConfiguration;->apIsolate:I

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    iput v7, v1, Landroid/net/wifi/WifiConfiguration;->wpsStatus:I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .end local v5    # "newConfigNum":I
    .end local v6    # "version":I
    :catch_0
    move-exception v2

    move-object v3, v4

    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v4    # "in":Ljava/io/DataInputStream;
    .local v2, "ignore":Ljava/io/IOException;
    .restart local v3    # "in":Ljava/io/DataInputStream;
    :goto_3
    :try_start_4
    const-string v7, "WifiApConfigStore"

    const-string v8, "loadApConfigurationOldVer() : IOException"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/wifi/WifiApConfigStore;->setDefaultApConfiguration()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v3, :cond_3

    :try_start_5
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    :catch_1
    move-exception v7

    goto :goto_2

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

    :try_start_7
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

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

    :catchall_1
    move-exception v7

    goto :goto_4

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
