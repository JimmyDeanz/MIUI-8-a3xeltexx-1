.class public Lcom/samsung/cpp/CPPPolicyHandler;
.super Ljava/lang/Object;
.source "CPPPolicyHandler.java"


# static fields
.field public static final CP_MODE_SEND_CELL_DB:I = 0x2

.field public static final CP_MODE_SEND_POLICY_UPDATE:I = 0x3

.field public static final DEFAULT_CHN_SERVER_URL:Ljava/lang/String; = "https://cn-prod-celltw.secb2b.com.cn/"

.field public static final DEFAULT_CHN_WIFI_SERVER_URL:Ljava/lang/String; = "https://cn-prod-wifi-celltw.secb2b.com.cn/"

.field public static final DEFAULT_SERVER_URL:Ljava/lang/String; = "https://prod-celltw.secb2b.com/"

.field public static final DEFAULT_VERSION:Ljava/lang/String; = "19700102-00:00"

.field public static final DEFAULT_WIFI_SERVER_URL:Ljava/lang/String; = "https://prod-celltw.secb2b.com/"

.field public static final RAT_TYPE_CDMA1X:I = 0x8

.field public static final RAT_TYPE_GSM:I = 0x4

.field public static final RAT_TYPE_LTE:I = 0x1

.field public static final RAT_TYPE_TDSCDMA:I = 0x10

.field public static final RAT_TYPE_WCDMA:I = 0x2

.field public static final RAT_TYPE_WIFI:I = 0x20

.field private static final TAG:Ljava/lang/String; = "CPPPolicyHandler"

.field private static final defaultTimeToNextPolicyUpdateInDay:I = 0x1e

.field public static mInvalidPolicyID:Z

.field private static mapCurrentPolicy:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mapCurrentPolicyList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mapDefaultPolicy:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mapPolicyToCp:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private dirNamePolicy:Ljava/lang/String;

.field private fileNameToCurrentPolicy:Ljava/lang/String;

.field private fileNameToCurrentPolicyList:Ljava/lang/String;

.field private fileNameToDefaultPolicy:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field public mCurrentPolicyFileExists:Z

.field mDirObserver:Landroid/os/FileObserver;

.field private mHandler:Landroid/os/Handler;

.field mMobileTotalCount:I

.field mSizeofMemory:I

.field mWifiTotalCount:I

.field public plmn:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "/data/system/"

    iput-object v0, p0, Lcom/samsung/cpp/CPPPolicyHandler;->dirNamePolicy:Ljava/lang/String;

    const-string v0, "/data/system/fileDefaultPolicy"

    iput-object v0, p0, Lcom/samsung/cpp/CPPPolicyHandler;->fileNameToDefaultPolicy:Ljava/lang/String;

    const-string v0, "/data/system/fileCurrentPolicy"

    iput-object v0, p0, Lcom/samsung/cpp/CPPPolicyHandler;->fileNameToCurrentPolicy:Ljava/lang/String;

    const-string v0, "/data/system/fileCurrentPolicyList"

    iput-object v0, p0, Lcom/samsung/cpp/CPPPolicyHandler;->fileNameToCurrentPolicyList:Ljava/lang/String;

    new-instance v0, Lcom/samsung/cpp/CPPPolicyHandler$1;

    iget-object v1, p0, Lcom/samsung/cpp/CPPPolicyHandler;->dirNamePolicy:Ljava/lang/String;

    const/16 v2, 0x108

    invoke-direct {v0, p0, v1, v2}, Lcom/samsung/cpp/CPPPolicyHandler$1;-><init>(Lcom/samsung/cpp/CPPPolicyHandler;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/samsung/cpp/CPPPolicyHandler;->mDirObserver:Landroid/os/FileObserver;

    const-string v0, "CPPPolicyHandler"

    const-string v1, "CPPPolicyHandler constructor. "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/cpp/CPPPolicyHandler;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/cpp/CPPPolicyHandler;->mHandler:Landroid/os/Handler;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/cpp/CPPPolicyHandler;->mapPolicyToCp:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/cpp/CPPPolicyHandler;->mapDefaultPolicy:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/cpp/CPPPolicyHandler;->mapCurrentPolicy:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/cpp/CPPPolicyHandler;->mapCurrentPolicyList:Ljava/util/HashMap;

    sput-boolean v3, Lcom/samsung/cpp/CPPPolicyHandler;->mInvalidPolicyID:Z

    iput v3, p0, Lcom/samsung/cpp/CPPPolicyHandler;->mMobileTotalCount:I

    iput v3, p0, Lcom/samsung/cpp/CPPPolicyHandler;->mWifiTotalCount:I

    iput v3, p0, Lcom/samsung/cpp/CPPPolicyHandler;->mSizeofMemory:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/cpp/CPPPolicyHandler;->plmn:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/cpp/CPPPolicyHandler;->mDirObserver:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/cpp/CPPPolicyHandler;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/cpp/CPPPolicyHandler;

    .prologue
    iget-object v0, p0, Lcom/samsung/cpp/CPPPolicyHandler;->dirNamePolicy:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/cpp/CPPPolicyHandler;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/cpp/CPPPolicyHandler;

    .prologue
    iget-object v0, p0, Lcom/samsung/cpp/CPPPolicyHandler;->fileNameToCurrentPolicy:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/cpp/CPPPolicyHandler;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/cpp/CPPPolicyHandler;

    .prologue
    iget-object v0, p0, Lcom/samsung/cpp/CPPPolicyHandler;->fileNameToCurrentPolicyList:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/cpp/CPPPolicyHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/cpp/CPPPolicyHandler;

    .prologue
    invoke-direct {p0}, Lcom/samsung/cpp/CPPPolicyHandler;->setPolicy()V

    return-void
.end method

.method public static getCurrentMccMnc(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x3

    const-string v3, "CPPPolicyHandler"

    const-string v4, "getCurrentMccMnc : get current registered operator\'s plmn"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-static {p0}, Lcom/samsung/cpp/CPPPolicyHandler;->getCurrentNetworkOperator(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .local v0, "plmn":Ljava/lang/String;
    if-nez v0, :cond_1

    const-string v3, "CPPPolicyHandler"

    const-string v4, "getCurrentMccMnc: plmn is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    const-string v3, "CPPPolicyHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCurrentMccMnc : TelephonyManager.getNetworkOperator() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / length("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x5

    if-lt v3, v4, :cond_0

    const-string v2, "&mcc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&mnc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "CPPPolicyHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCurrentMccMnc : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getCurrentNetworkOperator(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .local v0, "plmn":Ljava/lang/String;
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .local v1, "telManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x5

    if-lt v2, v3, :cond_0

    .end local v0    # "plmn":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "plmn":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getCurrentPolicyMccMnc()Ljava/lang/String;
    .locals 6

    .prologue
    const-string v2, ""

    .local v2, "output":Ljava/lang/String;
    :try_start_0
    sget-object v3, Lcom/samsung/cpp/CPPPolicyHandler;->mapCurrentPolicy:Ljava/util/HashMap;

    const-string v4, "updatedPolicyMccMnc"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    const-string v3, "CPPPolicyHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cur pol mccmnc "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "output":Ljava/lang/String;
    :goto_0
    return-object v2

    .restart local v2    # "output":Ljava/lang/String;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v3, "CPPPolicyHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCurrentPolicyMccMnc : NullPointerException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    goto :goto_0
.end method

.method public static getPolicyServerURL(I)Ljava/lang/String;
    .locals 5
    .param p0, "type"    # I

    .prologue
    const-string v2, "CPPPolicyHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " getPolicyServerURL - type : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, ""

    .local v1, "serverURL":Ljava/lang/String;
    sget-object v2, Lcom/samsung/cpp/CPPPolicyHandler;->mapCurrentPolicy:Ljava/util/HashMap;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/samsung/cpp/CPPPolicyHandler;->mapCurrentPolicy:Ljava/util/HashMap;

    const-string v3, "primaryServerAddress"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "CPPPolicyHandler"

    const-string v3, "get primaryServerAddress"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/samsung/cpp/CPPPolicyHandler;->mapCurrentPolicy:Ljava/util/HashMap;

    const-string v3, "primaryServerAddress"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "serverURL":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .restart local v1    # "serverURL":Ljava/lang/String;
    :cond_0
    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/samsung/cpp/CPPPolicyHandler;->mapCurrentPolicy:Ljava/util/HashMap;

    const-string v3, "secondaryServerAddress"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "CPPPolicyHandler"

    const-string v3, "get secondaryServerAddress (not used)"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/samsung/cpp/CPPPolicyHandler;->mapCurrentPolicy:Ljava/util/HashMap;

    const-string v3, "secondaryServerAddress"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "serverURL":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .restart local v1    # "serverURL":Ljava/lang/String;
    :cond_1
    const-string v2, "CPPPolicyHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " getPolicyServerURL. serverURL : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    const-string v2, "CPPPolicyHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " getPolicyServerURL. invalid url format (not start"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with HTTP, not end with / --> delete serverURL : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, ""
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v2, "CPPPolicyHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPolicyServerURL. Null Pointer Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getUtc()J
    .locals 4

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private initialisePolicyFiles()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const-string v1, "CPPPolicyHandler"

    const-string v2, "initialisePolicyFiles : setDefaultPolicy + sendMessage(MSG_UPDATE_POLICY)/initialisePolicyFiles"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v3}, Lcom/samsung/cpp/CPPPolicyHandler;->setDefaultPolicy(Z)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .local v0, "reqMsg":Landroid/os/Message;
    const/4 v1, 0x7

    iput v1, v0, Landroid/os/Message;->what:I

    iput v3, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/samsung/cpp/CPPPolicyHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private isDefaultPolicyChanged()Z
    .locals 9

    .prologue
    const/4 v6, 0x1

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyyMMdd-HH:mm"

    invoke-direct {v0, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .local v0, "dateFormat":Ljava/text/SimpleDateFormat;
    const/4 v4, 0x0

    .local v4, "result":Z
    :try_start_0
    const-string v5, "19700102-00:00"

    invoke-virtual {v0, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    .local v3, "newVersion":Ljava/util/Date;
    sget-object v5, Lcom/samsung/cpp/CPPPolicyHandler;->mapDefaultPolicy:Ljava/util/HashMap;

    const-string v7, "defaultVersion"

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .local v2, "existedApVersion":Ljava/util/Date;
    const-string v5, "CPPPolicyHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isDefaultPolicyChanged : { existed_version : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", default_version : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " }"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3, v2}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :goto_0
    const-string v5, "CPPPolicyHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isDefaultPolicyChanged : result : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1

    move v5, v4

    .end local v2    # "existedApVersion":Ljava/util/Date;
    .end local v3    # "newVersion":Ljava/util/Date;
    :goto_1
    return v5

    .restart local v2    # "existedApVersion":Ljava/util/Date;
    .restart local v3    # "newVersion":Ljava/util/Date;
    :pswitch_0
    const/4 v4, 0x1

    goto :goto_0

    .end local v2    # "existedApVersion":Ljava/util/Date;
    .end local v3    # "newVersion":Ljava/util/Date;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v5, "CPPPolicyHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isDefaultPolicyChanged : NullPointerException = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    goto :goto_1

    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .local v1, "e":Ljava/text/ParseException;
    const-string v5, "CPPPolicyHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isDefaultPolicyChanged : ParseException = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private retrievePolicy(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 11
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .local p2, "_map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v8, "CPPPolicyHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "retrievePolicy. filename :  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, p2

    .local v7, "retrievedMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, "fis":Ljava/io/FileInputStream;
    const/4 v5, 0x0

    .local v5, "ois":Ljava/io/ObjectInputStream;
    if-eqz p1, :cond_2

    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .local v4, "fis":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v6, Ljava/io/ObjectInputStream;

    invoke-direct {v6, v4}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v5    # "ois":Ljava/io/ObjectInputStream;
    .local v6, "ois":Ljava/io/ObjectInputStream;
    :try_start_2
    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/util/HashMap;

    move-object v7, v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v4, :cond_0

    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    :cond_0
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_1
    move-object v5, v6

    .end local v6    # "ois":Ljava/io/ObjectInputStream;
    .restart local v5    # "ois":Ljava/io/ObjectInputStream;
    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :cond_2
    :goto_0
    move-object p2, v7

    .end local p2    # "_map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    :goto_1
    return-object p2

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "ois":Ljava/io/ObjectInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "ois":Ljava/io/ObjectInputStream;
    .restart local p2    # "_map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v5, v6

    .end local v6    # "ois":Ljava/io/ObjectInputStream;
    .restart local v5    # "ois":Ljava/io/ObjectInputStream;
    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_0

    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .local v2, "ex":Ljava/lang/Exception;
    :goto_2
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v3, :cond_4

    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    :cond_4
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    :catch_2
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    :goto_3
    if-eqz v3, :cond_5

    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    :cond_5
    if-eqz v5, :cond_6

    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_6
    :goto_4
    throw v8

    :catch_3
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v8

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "ois":Ljava/io/ObjectInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "ois":Ljava/io/ObjectInputStream;
    :catchall_2
    move-exception v8

    move-object v5, v6

    .end local v6    # "ois":Ljava/io/ObjectInputStream;
    .restart local v5    # "ois":Ljava/io/ObjectInputStream;
    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catch_4
    move-exception v2

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_2

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "ois":Ljava/io/ObjectInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "ois":Ljava/io/ObjectInputStream;
    :catch_5
    move-exception v2

    move-object v5, v6

    .end local v6    # "ois":Ljava/io/ObjectInputStream;
    .restart local v5    # "ois":Ljava/io/ObjectInputStream;
    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method private savePolicy(Ljava/lang/String;Ljava/util/Map;)V
    .locals 7
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "mapToSave":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "CPPPolicyHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "savePolicy : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    const-string v4, "CPPPolicyHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "savePolicy : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .local v3, "oos":Ljava/io/ObjectOutputStream;
    invoke-virtual {v3, p2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :cond_1
    :goto_0
    return-void

    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "oos":Ljava/io/ObjectOutputStream;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "oos":Ljava/io/ObjectOutputStream;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    const-string v4, "CPPPolicyHandler"

    const-string v5, "FileNotFoundException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/samsung/cpp/CPPPolicyHandler;->setDefaultPolicy(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_5
    const-string v4, "CPPPolicyHandler"

    const-string v5, "IOException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/samsung/cpp/CPPPolicyHandler;->setDefaultPolicy(Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v1, :cond_1

    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_3
    if-eqz v1, :cond_2

    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    :cond_2
    :goto_4
    throw v4

    :catch_5
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_6
    move-exception v0

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_7
    move-exception v0

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method private setPolicy()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const-string v1, "CPPPolicyHandler"

    const-string v2, "setPolicy() "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/samsung/cpp/CPPPolicyHandler;->fileNameToDefaultPolicy:Ljava/lang/String;

    sget-object v2, Lcom/samsung/cpp/CPPPolicyHandler;->mapDefaultPolicy:Ljava/util/HashMap;

    invoke-direct {p0, v1, v2}, Lcom/samsung/cpp/CPPPolicyHandler;->retrievePolicy(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v1

    sput-object v1, Lcom/samsung/cpp/CPPPolicyHandler;->mapDefaultPolicy:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/samsung/cpp/CPPPolicyHandler;->fileNameToCurrentPolicy:Ljava/lang/String;

    sget-object v2, Lcom/samsung/cpp/CPPPolicyHandler;->mapCurrentPolicy:Ljava/util/HashMap;

    invoke-direct {p0, v1, v2}, Lcom/samsung/cpp/CPPPolicyHandler;->retrievePolicy(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v1

    sput-object v1, Lcom/samsung/cpp/CPPPolicyHandler;->mapCurrentPolicy:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/cpp/CPPPolicyHandler;->mapCurrentPolicy:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/cpp/CPPPolicyHandler;->mapCurrentPolicy:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v1, "CPPPolicyHandler"

    const-string v2, "No Policy files"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v3}, Lcom/samsung/cpp/CPPPolicyHandler;->setDefaultPolicy(Z)V

    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :cond_1
    :goto_0
    return-void

    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/samsung/cpp/CPPPolicyHandler;->isDefaultPolicyChanged()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/samsung/cpp/CPPPolicyHandler;->setDefaultPolicy(Z)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_1
    move-exception v0

    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const-string v1, "CPPPolicyHandler"

    const-string v2, "No Class files"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v3}, Lcom/samsung/cpp/CPPPolicyHandler;->setDefaultPolicy(Z)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    const-string v1, "CPPPolicyHandler"

    const-string v2, "IO Exception"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v3}, Lcom/samsung/cpp/CPPPolicyHandler;->setDefaultPolicy(Z)V

    goto :goto_0
.end method

.method private setPolicyList()V
    .locals 3

    .prologue
    const-string v1, "CPPPolicyHandler"

    const-string v2, "setPolicyList() "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/samsung/cpp/CPPPolicyHandler;->fileNameToCurrentPolicyList:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/samsung/cpp/CPPPolicyHandler;->isPolicyFileExist(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/cpp/CPPPolicyHandler;->fileNameToCurrentPolicyList:Ljava/lang/String;

    sget-object v2, Lcom/samsung/cpp/CPPPolicyHandler;->mapCurrentPolicyList:Ljava/util/HashMap;

    invoke-direct {p0, v1, v2}, Lcom/samsung/cpp/CPPPolicyHandler;->savePolicy(Ljava/lang/String;Ljava/util/Map;)V

    :goto_0
    sget-object v1, Lcom/samsung/cpp/CPPPolicyHandler;->mapCurrentPolicyList:Ljava/util/HashMap;

    if-nez v1, :cond_2

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v1, "CPPPolicyHandler"

    const-string v2, "setPolicyList : FileNotFoundException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :cond_0
    :goto_1
    return-void

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/samsung/cpp/CPPPolicyHandler;->fileNameToCurrentPolicyList:Ljava/lang/String;

    sget-object v2, Lcom/samsung/cpp/CPPPolicyHandler;->mapCurrentPolicyList:Ljava/util/HashMap;

    invoke-direct {p0, v1, v2}, Lcom/samsung/cpp/CPPPolicyHandler;->retrievePolicy(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v1

    sput-object v1, Lcom/samsung/cpp/CPPPolicyHandler;->mapCurrentPolicyList:Ljava/util/HashMap;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_1
    move-exception v0

    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const-string v1, "CPPPolicyHandler"

    const-string v2, "setPolicyList : ClassNotFoundException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :cond_2
    :try_start_2
    sget-object v1, Lcom/samsung/cpp/CPPPolicyHandler;->mapCurrentPolicyList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/cpp/CPPPolicyHandler;->mCurrentPolicyFileExists:Z
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v1, :cond_0

    goto :goto_1

    :catch_2
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    const-string v1, "CPPPolicyHandler"

    const-string v2, "setPolicyList : IOException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public getPLMN()Ljava/lang/String;
    .locals 3

    .prologue
    const-string v0, "CPPPolicyHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPLMN  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/cpp/CPPPolicyHandler;->plmn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/cpp/CPPPolicyHandler;->plmn:Ljava/lang/String;

    return-object v0
.end method

.method public getPLMN(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "body"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .local v0, "temp":Ljava/lang/String;
    if-eqz p1, :cond_0

    const-string v1, "&mcc="

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "&mnc="

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v1, "CPPPolicyHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPLMN("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getPolicyExpirationDate()Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v5, 0x0

    .local v5, "expiredDate":Ljava/lang/String;
    const-string v7, "CPPPolicyHandler"

    const-string v8, "getPolicyExpirationDate()"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-boolean v7, p0, Lcom/samsung/cpp/CPPPolicyHandler;->mCurrentPolicyFileExists:Z

    if-eqz v7, :cond_0

    sget-object v7, Lcom/samsung/cpp/CPPPolicyHandler;->mapCurrentPolicy:Ljava/util/HashMap;

    if-eqz v7, :cond_0

    sget-object v7, Lcom/samsung/cpp/CPPPolicyHandler;->mapCurrentPolicy:Ljava/util/HashMap;

    const-string v8, "dateForNextPolicyUpdate"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    :cond_0
    if-nez v5, :cond_1

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyyMMddHHmm"

    invoke-direct {v3, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .local v3, "dateFormat":Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {p0}, Lcom/samsung/cpp/CPPPolicyHandler;->getPolicyRetryPeriod()I

    move-result v7

    int-to-long v10, v7

    add-long/2addr v8, v10

    invoke-direct {v2, v8, v9}, Ljava/util/Date;-><init>(J)V

    .local v2, "date":Ljava/util/Date;
    invoke-virtual {v3, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .end local v2    # "date":Ljava/util/Date;
    .end local v3    # "dateFormat":Ljava/text/SimpleDateFormat;
    :cond_1
    const-string v7, "CPPPolicyHandler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getPolicyExpirationDate : expired Date = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v5

    .end local v5    # "expiredDate":Ljava/lang/String;
    .local v6, "expiredDate":Ljava/lang/String;
    :goto_0
    return-object v6

    .end local v6    # "expiredDate":Ljava/lang/String;
    .restart local v5    # "expiredDate":Ljava/lang/String;
    :catch_0
    move-exception v4

    .local v4, "e":Ljava/lang/NullPointerException;
    const-string v7, "CPPPolicyHandler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getPolicyExpirationDate : NullPointerException = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v5

    .end local v5    # "expiredDate":Ljava/lang/String;
    .restart local v6    # "expiredDate":Ljava/lang/String;
    goto :goto_0
.end method

.method public getPolicyId()Ljava/lang/Long;
    .locals 12

    .prologue
    const-wide/16 v10, -0x1

    const/4 v3, 0x0

    .local v3, "temp":Ljava/lang/String;
    const-wide/16 v4, -0x1

    .local v4, "policyItem":J
    const-string v6, "CPPPolicyHandler"

    const-string v7, "getPolicyId()"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    sget-object v6, Lcom/samsung/cpp/CPPPolicyHandler;->mapCurrentPolicy:Ljava/util/HashMap;

    const-string v7, "policyId"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    if-eqz v3, :cond_0

    const-string v6, ""

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-wide v4

    :cond_0
    const-string v6, "CPPPolicyHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "policyId : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    :goto_0
    return-object v6

    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/NullPointerException;
    const-string v6, "CPPPolicyHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getPolicyId. NullPointerException : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    goto :goto_0

    .end local v2    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v2

    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string v6, "CPPPolicyHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getPolicyId. NumberFormatException : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    goto :goto_0

    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :catch_2
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "CPPPolicyHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getPolicyId. Exception : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    goto :goto_0
.end method

.method public getPolicyId(Ljava/lang/String;)Ljava/lang/Long;
    .locals 12
    .param p1, "plmn"    # Ljava/lang/String;

    .prologue
    const-wide/16 v10, -0x1

    const/4 v3, 0x0

    .local v3, "temp":Ljava/lang/String;
    const-wide/16 v4, -0x1

    .local v4, "policyItem":J
    const-string v6, "CPPPolicyHandler"

    const-string v7, "getPolicyId(plmn)"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    sget-object v6, Lcom/samsung/cpp/CPPPolicyHandler;->mapCurrentPolicyList:Ljava/util/HashMap;

    if-eqz v6, :cond_0

    sget-object v6, Lcom/samsung/cpp/CPPPolicyHandler;->mapCurrentPolicyList:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object v6, Lcom/samsung/cpp/CPPPolicyHandler;->mapCurrentPolicyList:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    if-eqz v3, :cond_0

    const-string v6, ""

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-wide v4

    :cond_0
    const-string v6, "CPPPolicyHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "policyId : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    :goto_0
    return-object v6

    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/NullPointerException;
    const-string v6, "CPPPolicyHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getPolicyId. NullPointerException : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    goto :goto_0

    .end local v2    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v2

    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string v6, "CPPPolicyHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getPolicyId. NumberFormatException : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    goto :goto_0

    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :catch_2
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "CPPPolicyHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getPolicyId. Exception : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    goto :goto_0
.end method

.method public getPolicyRetryPeriod()I
    .locals 8

    .prologue
    const v2, 0x5265c00

    .local v2, "period":I
    const/4 v4, 0x0

    .local v4, "temp":Ljava/lang/String;
    const-string v5, "CPPPolicyHandler"

    const-string v6, "getPolicyRetryPeriod"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    sget-object v5, Lcom/samsung/cpp/CPPPolicyHandler;->mapDefaultPolicy:Ljava/util/HashMap;

    if-eqz v5, :cond_0

    sget-object v5, Lcom/samsung/cpp/CPPPolicyHandler;->mapDefaultPolicy:Ljava/util/HashMap;

    const-string v6, "retryPeriod"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    if-eqz v4, :cond_0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x3c

    mul-int/lit8 v5, v5, 0x3c

    mul-int/lit16 v2, v5, 0x3e8

    :cond_0
    iget-boolean v5, p0, Lcom/samsung/cpp/CPPPolicyHandler;->mCurrentPolicyFileExists:Z

    if-eqz v5, :cond_1

    sget-object v5, Lcom/samsung/cpp/CPPPolicyHandler;->mapCurrentPolicy:Ljava/util/HashMap;

    if-eqz v5, :cond_1

    sget-object v5, Lcom/samsung/cpp/CPPPolicyHandler;->mapCurrentPolicy:Ljava/util/HashMap;

    const-string v6, "retryPeriod"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    if-eqz v4, :cond_1

    const-string v5, "CPPPolicyHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Retry Period (from CurrentPolicy) : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x3c

    mul-int/lit8 v5, v5, 0x3c

    mul-int/lit16 v2, v5, 0x3e8

    :cond_1
    const-string v5, "CPPPolicyHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Retry Period : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move v3, v2

    .end local v2    # "period":I
    .local v3, "period":I
    :goto_0
    return v3

    .end local v3    # "period":I
    .restart local v2    # "period":I
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v5, "CPPPolicyHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getPolicyRetryPeriod : NullPointerException. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .end local v2    # "period":I
    .restart local v3    # "period":I
    goto :goto_0

    .end local v1    # "e":Ljava/lang/NullPointerException;
    .end local v3    # "period":I
    .restart local v2    # "period":I
    :catch_1
    move-exception v1

    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v5, "CPPPolicyHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getPolicyRetryPeriod : NumberFormatException. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .end local v2    # "period":I
    .restart local v3    # "period":I
    goto :goto_0
.end method

.method public getPolicyTtAct()I
    .locals 8

    .prologue
    const/4 v5, -0x1

    const/4 v3, 0x0

    .local v3, "temp":Ljava/lang/String;
    const/4 v2, -0x1

    .local v2, "policyItem":I
    const-string v4, "CPPPolicyHandler"

    const-string v6, "getPolicyTtAct()"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    sget-object v4, Lcom/samsung/cpp/CPPPolicyHandler;->mapCurrentPolicy:Ljava/util/HashMap;

    const-string v6, "ttAct"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    if-eqz v3, :cond_0

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v2

    :cond_0
    const-string v4, "CPPPolicyHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ttAct : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v2

    :goto_0
    return v4

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v4, "CPPPolicyHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getPolicyTtAct. Null Pointer Exception : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    goto :goto_0

    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v4, "CPPPolicyHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getPolicyTtAct. Null Pointer Exception : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    goto :goto_0

    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :catch_2
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "CPPPolicyHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getPolicyTtAct. Exception : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    goto :goto_0
.end method

.method public getPolicyVersion()Ljava/lang/String;
    .locals 7

    .prologue
    const-string v2, ""

    .local v2, "policyItem":Ljava/lang/String;
    const-string v4, "CPPPolicyHandler"

    const-string v5, "getPolicyVersion "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    sget-object v4, Lcom/samsung/cpp/CPPPolicyHandler;->mapCurrentPolicy:Ljava/util/HashMap;

    const-string v5, "version"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "CPPPolicyHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Version : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v2

    .end local v2    # "policyItem":Ljava/lang/String;
    .local v3, "policyItem":Ljava/lang/String;
    :goto_0
    return-object v3

    .end local v3    # "policyItem":Ljava/lang/String;
    .restart local v2    # "policyItem":Ljava/lang/String;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v4, "CPPPolicyHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPolicyVersion.Null Pointer Exception : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v2

    .end local v2    # "policyItem":Ljava/lang/String;
    .restart local v3    # "policyItem":Ljava/lang/String;
    goto :goto_0
.end method

.method public getTTJSONObject()Lorg/json/JSONObject;
    .locals 5

    .prologue
    :try_start_0
    sget-object v3, Lcom/samsung/cpp/CPPPolicyHandler;->mapCurrentPolicy:Ljava/util/HashMap;

    const-string v4, "json"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .local v1, "jsonString":Ljava/lang/String;
    sget-object v3, Lcom/samsung/cpp/CPPPolicyHandler;->mapCurrentPolicy:Ljava/util/HashMap;

    const-string v4, "updatedPolicyMccMnc"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .local v2, "policyPlmn":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lcom/samsung/cpp/CPPPolicyHandler;->getTTJSONObject(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .end local v1    # "jsonString":Ljava/lang/String;
    .end local v2    # "policyPlmn":Ljava/lang/String;
    :goto_0
    return-object v3

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v3, "CPPPolicyHandler"

    const-string v4, "getTTJSONObject : NullPointerException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getTTJSONObject(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 12
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "policyPlmn"    # Ljava/lang/String;

    .prologue
    const-string v9, "CPPPolicyHandler"

    const-string v10, "getTTJSONObject"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .local v2, "jsonTT":Lorg/json/JSONObject;
    const/4 v9, 0x3

    new-array v8, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "policyId"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "ttAct"

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string v10, "ttItems"

    aput-object v10, v8, v9

    .local v8, "refField":[Ljava/lang/String;
    :try_start_0
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v10, "value"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .local v4, "jsonValue":Lorg/json/JSONObject;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v4, v8}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONObject;[Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .end local v2    # "jsonTT":Lorg/json/JSONObject;
    .local v3, "jsonTT":Lorg/json/JSONObject;
    :try_start_1
    invoke-virtual {p0, p2}, Lcom/samsung/cpp/CPPPolicyHandler;->getPLMN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .local v7, "plmn":Ljava/lang/String;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x5

    if-lt v9, v10, :cond_0

    const/4 v9, 0x0

    const/4 v10, 0x3

    invoke-virtual {v7, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .local v5, "mcc":Ljava/lang/String;
    const/4 v9, 0x3

    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .local v6, "mnc":Ljava/lang/String;
    const-string v9, "mcc"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v9, "mnc"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .end local v5    # "mcc":Ljava/lang/String;
    .end local v6    # "mnc":Ljava/lang/String;
    :cond_0
    const-string v9, "utcTime"

    invoke-direct {p0}, Lcom/samsung/cpp/CPPPolicyHandler;->getUtc()J

    move-result-wide v10

    invoke-virtual {v3, v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v9, "CPPPolicyHandler"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getTTJSONObject : TT policy items\' only = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object v2, v3

    .end local v3    # "jsonTT":Lorg/json/JSONObject;
    .end local v4    # "jsonValue":Lorg/json/JSONObject;
    .end local v7    # "plmn":Ljava/lang/String;
    .restart local v2    # "jsonTT":Lorg/json/JSONObject;
    :goto_0
    return-object v3

    :catch_0
    move-exception v1

    .local v1, "jsonE":Lorg/json/JSONException;
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v3, 0x0

    goto :goto_0

    .end local v1    # "jsonE":Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v3, 0x0

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "jsonTT":Lorg/json/JSONObject;
    .restart local v3    # "jsonTT":Lorg/json/JSONObject;
    .restart local v4    # "jsonValue":Lorg/json/JSONObject;
    :catch_2
    move-exception v0

    move-object v2, v3

    .end local v3    # "jsonTT":Lorg/json/JSONObject;
    .restart local v2    # "jsonTT":Lorg/json/JSONObject;
    goto :goto_2

    .end local v2    # "jsonTT":Lorg/json/JSONObject;
    .restart local v3    # "jsonTT":Lorg/json/JSONObject;
    :catch_3
    move-exception v1

    move-object v2, v3

    .end local v3    # "jsonTT":Lorg/json/JSONObject;
    .restart local v2    # "jsonTT":Lorg/json/JSONObject;
    goto :goto_1
.end method

.method public init()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/samsung/cpp/CPPPolicyHandler;->fileNameToDefaultPolicy:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/cpp/CPPPolicyHandler;->isPolicyFileExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/cpp/CPPPolicyHandler;->fileNameToCurrentPolicy:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/cpp/CPPPolicyHandler;->isPolicyFileExist(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/cpp/CPPPolicyHandler;->mCurrentPolicyFileExists:Z

    const-string v0, "CPPPolicyHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init : Policy downloading is needed. (mCurrentPolicyFileExists = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/cpp/CPPPolicyHandler;->mCurrentPolicyFileExists:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/cpp/CPPPolicyHandler;->initialisePolicyFiles()V

    :goto_0
    invoke-direct {p0}, Lcom/samsung/cpp/CPPPolicyHandler;->setPolicyList()V

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/cpp/CPPPolicyHandler;->mCurrentPolicyFileExists:Z

    const-string v0, "CPPPolicyHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init : Policies exist. (mCurrentPolicyFileExists = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/cpp/CPPPolicyHandler;->mCurrentPolicyFileExists:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/cpp/CPPPolicyHandler;->setPolicy()V

    goto :goto_0
.end method

.method public isPolicyExpiration()Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    new-instance v3, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v3, v6, v7}, Ljava/util/Date;-><init>(J)V

    .local v3, "nowDate":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyyMMddHHmm"

    invoke-direct {v1, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .local v1, "dateFormat":Ljava/text/SimpleDateFormat;
    const-string v5, "CPPPolicyHandler"

    const-string v6, "isPolicyExpiration "

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-boolean v5, p0, Lcom/samsung/cpp/CPPPolicyHandler;->mCurrentPolicyFileExists:Z

    if-eqz v5, :cond_0

    sget-object v5, Lcom/samsung/cpp/CPPPolicyHandler;->mapCurrentPolicy:Ljava/util/HashMap;

    if-eqz v5, :cond_0

    sget-object v5, Lcom/samsung/cpp/CPPPolicyHandler;->mapCurrentPolicy:Ljava/util/HashMap;

    const-string v6, "dateForNextPolicyUpdate"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/samsung/cpp/CPPPolicyHandler;->mapCurrentPolicy:Ljava/util/HashMap;

    const-string v6, "dateForNextPolicyUpdate"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .local v0, "dateForNextPolicyUpdateDate":Ljava/util/Date;
    :goto_0
    const-string v5, "CPPPolicyHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isPolicyExpiration : dateForNextPolicyUpdate { policyFile indicates = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", CurrentTime = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "}"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3, v0}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    const/4 v4, 0x0

    .local v4, "result":Z
    :goto_1
    const-string v5, "CPPPolicyHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isPolicyExpiration : result = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "dateForNextPolicyUpdateDate":Ljava/util/Date;
    :goto_2
    return v4

    .end local v4    # "result":Z
    :cond_0
    sget-object v5, Lcom/samsung/cpp/CPPPolicyHandler;->mapDefaultPolicy:Ljava/util/HashMap;

    const-string v6, "dateForNextPolicyUpdate"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .restart local v0    # "dateForNextPolicyUpdateDate":Ljava/util/Date;
    goto :goto_0

    :pswitch_0
    const/4 v4, 0x1

    .restart local v4    # "result":Z
    goto :goto_1

    .end local v4    # "result":Z
    :pswitch_1
    const/4 v4, 0x0

    .restart local v4    # "result":Z
    goto :goto_1

    .end local v0    # "dateForNextPolicyUpdateDate":Ljava/util/Date;
    .end local v4    # "result":Z
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/NullPointerException;
    const-string v5, "CPPPolicyHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isPolicyExpiration : NullPointerException = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v3, v8}, Lcom/samsung/cpp/CPPPolicyHandler;->setPolicyExpirationDate(Ljava/util/Date;Z)V

    const/4 v4, 0x1

    .restart local v4    # "result":Z
    goto :goto_2

    .end local v2    # "e":Ljava/lang/NullPointerException;
    .end local v4    # "result":Z
    :catch_1
    move-exception v2

    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string v5, "CPPPolicyHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isPolicyExpiration : NumberFormatException = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v3, v8}, Lcom/samsung/cpp/CPPPolicyHandler;->setPolicyExpirationDate(Ljava/util/Date;Z)V

    const/4 v4, 0x1

    .restart local v4    # "result":Z
    goto :goto_2

    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .end local v4    # "result":Z
    :catch_2
    move-exception v2

    .local v2, "e":Ljava/text/ParseException;
    const-string v5, "CPPPolicyHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isPolicyExpiration : ParseException = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v3, v8}, Lcom/samsung/cpp/CPPPolicyHandler;->setPolicyExpirationDate(Ljava/util/Date;Z)V

    const/4 v4, 0x1

    .restart local v4    # "result":Z
    goto :goto_2

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isPolicyFileExist(Ljava/lang/String;)Z
    .locals 5
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    .local v1, "ret":Z
    const-string v2, "CPPPolicyHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isPolicyFileExist : ( "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ) = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public notifyPolicyUpdate()V
    .locals 2

    .prologue
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .local v0, "reqMsg":Landroid/os/Message;
    const/16 v1, 0x8

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-virtual {p0}, Lcom/samsung/cpp/CPPPolicyHandler;->getPolicyTtAct()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/samsung/cpp/CPPPolicyHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setDefaultPolicy(Z)V
    .locals 6
    .param p1, "fullReset"    # Z

    .prologue
    const-string v3, "CPPPolicyHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setDefaultPolicy : fullReset ( "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " )"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/samsung/cpp/CPPPolicyHandler;->mapDefaultPolicy:Ljava/util/HashMap;

    const-string v4, "neighborCellInfo"

    const-string v5, "0"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/samsung/cpp/CPPPolicyHandler;->mapDefaultPolicy:Ljava/util/HashMap;

    const-string v4, "valuableThreshold"

    const-string v5, "0"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/samsung/cpp/CPPPolicyHandler;->mapDefaultPolicy:Ljava/util/HashMap;

    const-string v4, "forcedGPS"

    const-string v5, "0"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/samsung/cpp/CPPPolicyHandler;->mapDefaultPolicy:Ljava/util/HashMap;

    const-string v4, "targetTrackingArea"

    const-string v5, "0"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/samsung/cpp/CPPPolicyHandler;->mapDefaultPolicy:Ljava/util/HashMap;

    const-string v4, "targetCell"

    const-string v5, "0"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/samsung/cpp/CPPPolicyHandler;->mapDefaultPolicy:Ljava/util/HashMap;

    const-string v4, "measurementElement"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/samsung/cpp/CPPPolicyHandler;->mapDefaultPolicy:Ljava/util/HashMap;

    const-string v4, "highMeasureInterval"

    const-string v5, "60"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/samsung/cpp/CPPPolicyHandler;->mapDefaultPolicy:Ljava/util/HashMap;

    const-string v4, "midMeasureInterval"

    const-string v5, "30"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/samsung/cpp/CPPPolicyHandler;->mapDefaultPolicy:Ljava/util/HashMap;

    const-string v4, "lowMeasureInterval"

    const-string v5, "10"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/samsung/cpp/CPPPolicyHandler;->mapDefaultPolicy:Ljava/util/HashMap;

    const-string v4, "gpsAccuracyThreshold"

    const-string v5, "20"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/samsung/cpp/CPPPolicyHandler;->mapDefaultPolicy:Ljava/util/HashMap;

    const-string v4, "samplingRAT"

    const-string v5, "31"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/samsung/cpp/CPPPolicyHandler;->mapDefaultPolicy:Ljava/util/HashMap;

    const-string v4, "cellInfo"

    const-string v5, "0"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_0

    sget-object v3, Lcom/samsung/cpp/CPPPolicyHandler;->mapDefaultPolicy:Ljava/util/HashMap;

    const-string v4, "defaultVersion"

    const-string v5, "19700102-00:00"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/samsung/cpp/CPPPolicyHandler;->mapDefaultPolicy:Ljava/util/HashMap;

    const-string v4, "version"

    const-string v5, "19700102-00:00"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/samsung/cpp/CPPPolicyHandler;->mapDefaultPolicy:Ljava/util/HashMap;

    const-string v4, "nextPolicyUpdate"

    const/16 v5, 0x1e

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMddHHmm"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .local v1, "dateFormat":Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    .local v2, "nowDate":Ljava/util/Date;
    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .local v0, "dateForNextPolicyUpdate":Ljava/lang/String;
    sget-object v3, Lcom/samsung/cpp/CPPPolicyHandler;->mapDefaultPolicy:Ljava/util/HashMap;

    const-string v4, "dateForNextPolicyUpdate"

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/samsung/cpp/CPPPolicyHandler;->mapDefaultPolicy:Ljava/util/HashMap;

    const-string v4, "dbCollection"

    const-string v5, "1"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/samsung/cpp/CPPPolicyHandler;->mapDefaultPolicy:Ljava/util/HashMap;

    const-string v4, "reportInterval"

    const-string v5, "24"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/samsung/cpp/CPPPolicyHandler;->mapDefaultPolicy:Ljava/util/HashMap;

    const-string v4, "sizeOfMemory"

    const-string v5, "10"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_1

    sget-object v3, Lcom/samsung/cpp/CPPPolicyHandler;->mapDefaultPolicy:Ljava/util/HashMap;

    const-string v4, "primaryServerAddress"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/samsung/cpp/CPPPolicyHandler;->mapDefaultPolicy:Ljava/util/HashMap;

    const-string v4, "secondaryServerAddress"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    sget-object v3, Lcom/samsung/cpp/CPPPolicyHandler;->mapDefaultPolicy:Ljava/util/HashMap;

    const-string v4, "reportingRAT"

    const-string v5, "0"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/samsung/cpp/CPPPolicyHandler;->mapDefaultPolicy:Ljava/util/HashMap;

    const-string v4, "retryPeriod"

    const-string v5, "24"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/samsung/cpp/CPPPolicyHandler;->fileNameToDefaultPolicy:Ljava/lang/String;

    sget-object v4, Lcom/samsung/cpp/CPPPolicyHandler;->mapDefaultPolicy:Ljava/util/HashMap;

    invoke-direct {p0, v3, v4}, Lcom/samsung/cpp/CPPPolicyHandler;->savePolicy(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public setPLMN(II)Ljava/lang/String;
    .locals 4
    .param p1, "mcc"    # I
    .param p2, "mnc"    # I

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "&mcc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "&mnc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-int/lit8 v1, p2, 0xa

    if-nez v1, :cond_0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/cpp/CPPPolicyHandler;->plmn:Ljava/lang/String;

    const-string v1, "CPPPolicyHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPLMN = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/cpp/CPPPolicyHandler;->plmn:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/cpp/CPPPolicyHandler;->plmn:Ljava/lang/String;

    return-object v1
.end method

.method public setPolicyExpirationDate(Ljava/util/Date;Z)V
    .locals 5
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "erasePolicy"    # Z

    .prologue
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMddHHmm"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .local v0, "dateFormat":Ljava/text/SimpleDateFormat;
    const-string v2, "CPPPolicyHandler"

    const-string v3, "setPolicyExpirationDate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/samsung/cpp/CPPPolicyHandler;->setDefaultPolicy(Z)V

    :cond_0
    iget-boolean v2, p0, Lcom/samsung/cpp/CPPPolicyHandler;->mCurrentPolicyFileExists:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/samsung/cpp/CPPPolicyHandler;->mapCurrentPolicy:Ljava/util/HashMap;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/samsung/cpp/CPPPolicyHandler;->mapCurrentPolicy:Ljava/util/HashMap;

    const-string v3, "dateForNextPolicyUpdate"

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/cpp/CPPPolicyHandler;->fileNameToCurrentPolicy:Ljava/lang/String;

    sget-object v3, Lcom/samsung/cpp/CPPPolicyHandler;->mapCurrentPolicy:Ljava/util/HashMap;

    invoke-direct {p0, v2, v3}, Lcom/samsung/cpp/CPPPolicyHandler;->savePolicy(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    const-string v2, "CPPPolicyHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Renew Expiration Date : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v2, "CPPPolicyHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setPolicyExpirationDate.Null Pointer Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setPolicyVersion(Ljava/lang/String;)V
    .locals 3
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    const-string v0, "CPPPolicyHandler"

    const-string v1, "setPolicyVersion "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/cpp/CPPPolicyHandler;->mCurrentPolicyFileExists:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/cpp/CPPPolicyHandler;->mapCurrentPolicy:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/cpp/CPPPolicyHandler;->mapCurrentPolicy:Ljava/util/HashMap;

    const-string v1, "version"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/cpp/CPPPolicyHandler;->fileNameToCurrentPolicy:Ljava/lang/String;

    sget-object v1, Lcom/samsung/cpp/CPPPolicyHandler;->mapCurrentPolicy:Ljava/util/HashMap;

    invoke-direct {p0, v0, v1}, Lcom/samsung/cpp/CPPPolicyHandler;->savePolicy(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    const-string v0, "CPPPolicyHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Version : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updatePolicy(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 18
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;

    .prologue
    const-string v15, "CPPPolicyHandler"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "updatePolicy : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    .local v14, "setFieldToCp":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    .local v13, "setFieldToAp":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v15, 0x5

    new-array v8, v15, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "policyId"

    aput-object v16, v8, v15

    const/4 v15, 0x1

    const-string v16, "ttAct"

    aput-object v16, v8, v15

    const/4 v15, 0x2

    const-string v16, "ttItems"

    aput-object v16, v8, v15

    const/4 v15, 0x3

    const-string v16, "ttID"

    aput-object v16, v8, v15

    const/4 v15, 0x4

    const-string v16, "ttVal"

    aput-object v16, v8, v15

    .local v8, "fieldToCp":[Ljava/lang/String;
    invoke-static {v14, v8}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    const/16 v15, 0x1a

    new-array v7, v15, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "version"

    aput-object v16, v7, v15

    const/4 v15, 0x1

    const-string v16, "nextPolicyUpdate"

    aput-object v16, v7, v15

    const/4 v15, 0x2

    const-string v16, "dbCollection"

    aput-object v16, v7, v15

    const/4 v15, 0x3

    const-string v16, "neighborCellInfo"

    aput-object v16, v7, v15

    const/4 v15, 0x4

    const-string v16, "reportInterval"

    aput-object v16, v7, v15

    const/4 v15, 0x5

    const-string v16, "valuableThreshold"

    aput-object v16, v7, v15

    const/4 v15, 0x6

    const-string v16, "sizeOfMemory"

    aput-object v16, v7, v15

    const/4 v15, 0x7

    const-string v16, "primaryServerAddress"

    aput-object v16, v7, v15

    const/16 v15, 0x8

    const-string v16, "secondaryServerAddress"

    aput-object v16, v7, v15

    const/16 v15, 0x9

    const-string v16, "forcedGPS"

    aput-object v16, v7, v15

    const/16 v15, 0xa

    const-string v16, "targetTrackingArea"

    aput-object v16, v7, v15

    const/16 v15, 0xb

    const-string v16, "targetCell"

    aput-object v16, v7, v15

    const/16 v15, 0xc

    const-string v16, "measurementElement"

    aput-object v16, v7, v15

    const/16 v15, 0xd

    const-string v16, "highMeasureInterval"

    aput-object v16, v7, v15

    const/16 v15, 0xe

    const-string v16, "midMeasureInterval"

    aput-object v16, v7, v15

    const/16 v15, 0xf

    const-string v16, "lowMeasureInterval"

    aput-object v16, v7, v15

    const/16 v15, 0x10

    const-string v16, "gpsAccuracyThreshold"

    aput-object v16, v7, v15

    const/16 v15, 0x11

    const-string v16, "samplingRAT"

    aput-object v16, v7, v15

    const/16 v15, 0x12

    const-string v16, "reportingRAT"

    aput-object v16, v7, v15

    const/16 v15, 0x13

    const-string v16, "retryPeriod"

    aput-object v16, v7, v15

    const/16 v15, 0x14

    const-string v16, "cellInfo"

    aput-object v16, v7, v15

    const/16 v15, 0x15

    const-string v16, "policyId"

    aput-object v16, v7, v15

    const/16 v15, 0x16

    const-string v16, "ttAct"

    aput-object v16, v7, v15

    const/16 v15, 0x17

    const-string v16, "ttItems"

    aput-object v16, v7, v15

    const/16 v15, 0x18

    const-string v16, "ttID"

    aput-object v16, v7, v15

    const/16 v15, 0x19

    const-string v16, "ttVal"

    aput-object v16, v7, v15

    .local v7, "fieldToAp":[Ljava/lang/String;
    invoke-static {v13, v7}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    new-instance v10, Lorg/json/JSONObject;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .local v10, "jsonFullPolicy":Lorg/json/JSONObject;
    new-instance v11, Lorg/json/JSONObject;

    const-string v15, "value"

    invoke-virtual {v10, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v11, v15}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .local v11, "jsonValue":Lorg/json/JSONObject;
    invoke-virtual {v11}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "iterFieldInJsonValue":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .local v6, "field":Ljava/lang/String;
    invoke-interface {v14, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    sget-object v15, Lcom/samsung/cpp/CPPPolicyHandler;->mapPolicyToCp:Ljava/util/HashMap;

    invoke-virtual {v11, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v15, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-interface {v13, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    sget-object v15, Lcom/samsung/cpp/CPPPolicyHandler;->mapCurrentPolicy:Ljava/util/HashMap;

    invoke-virtual {v11, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v15, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v15, "policyId"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/samsung/cpp/CPPPolicyHandler;->getPLMN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .local v12, "plmn":Ljava/lang/String;
    if-eqz v12, :cond_0

    sget-object v15, Lcom/samsung/cpp/CPPPolicyHandler;->mapCurrentPolicyList:Ljava/util/HashMap;

    const-string v16, "policyId"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v15, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/cpp/CPPPolicyHandler;->fileNameToCurrentPolicyList:Ljava/lang/String;

    sget-object v16, Lcom/samsung/cpp/CPPPolicyHandler;->mapCurrentPolicyList:Ljava/util/HashMap;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/samsung/cpp/CPPPolicyHandler;->savePolicy(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v6    # "field":Ljava/lang/String;
    .end local v7    # "fieldToAp":[Ljava/lang/String;
    .end local v8    # "fieldToCp":[Ljava/lang/String;
    .end local v9    # "iterFieldInJsonValue":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v10    # "jsonFullPolicy":Lorg/json/JSONObject;
    .end local v11    # "jsonValue":Lorg/json/JSONObject;
    .end local v12    # "plmn":Ljava/lang/String;
    .end local v13    # "setFieldToAp":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v14    # "setFieldToCp":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catch_0
    move-exception v5

    .local v5, "e":Lorg/json/JSONException;
    invoke-virtual {v5}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v15, 0x0

    .end local v5    # "e":Lorg/json/JSONException;
    :goto_1
    return v15

    .restart local v7    # "fieldToAp":[Ljava/lang/String;
    .restart local v8    # "fieldToCp":[Ljava/lang/String;
    .restart local v9    # "iterFieldInJsonValue":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v10    # "jsonFullPolicy":Lorg/json/JSONObject;
    .restart local v11    # "jsonValue":Lorg/json/JSONObject;
    .restart local v13    # "setFieldToAp":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v14    # "setFieldToCp":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    :try_start_1
    sget-object v15, Lcom/samsung/cpp/CPPPolicyHandler;->mapCurrentPolicy:Ljava/util/HashMap;

    const-string v16, "updatedPolicyMccMnc"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v15, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v15, Lcom/samsung/cpp/CPPPolicyHandler;->mapCurrentPolicy:Ljava/util/HashMap;

    const-string v16, "json"

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v15, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v15, "yyyyMMddHHmm"

    invoke-direct {v4, v15}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .local v4, "dateFormat":Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .local v2, "c":Ljava/util/Calendar;
    const/4 v15, 0x5

    const-string v16, "nextPolicyUpdate"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .local v3, "dateForNextPolicyUpdate":Ljava/lang/String;
    sget-object v15, Lcom/samsung/cpp/CPPPolicyHandler;->mapCurrentPolicy:Ljava/util/HashMap;

    const-string v16, "dateForNextPolicyUpdate"

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/cpp/CPPPolicyHandler;->fileNameToCurrentPolicy:Ljava/lang/String;

    sget-object v16, Lcom/samsung/cpp/CPPPolicyHandler;->mapCurrentPolicy:Ljava/util/HashMap;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/samsung/cpp/CPPPolicyHandler;->savePolicy(Ljava/lang/String;Ljava/util/Map;)V

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/samsung/cpp/CPPPolicyHandler;->mCurrentPolicyFileExists:Z

    if-nez v15, :cond_3

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/samsung/cpp/CPPPolicyHandler;->mCurrentPolicyFileExists:Z

    :cond_3
    sget-boolean v15, Lcom/samsung/cpp/CPPPolicyHandler;->mInvalidPolicyID:Z

    if-eqz v15, :cond_4

    const/4 v15, 0x0

    sput-boolean v15, Lcom/samsung/cpp/CPPPolicyHandler;->mInvalidPolicyID:Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_4
    const/4 v15, 0x1

    goto :goto_1
.end method
