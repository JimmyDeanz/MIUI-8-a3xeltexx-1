.class public Lcom/android/server/wifi/WWSMPatcher;
.super Landroid/os/Handler;
.source "WWSMPatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WWSMPatcher$Util;,
        Lcom/android/server/wifi/WWSMPatcher$SamsungCommonPolicyManager;
    }
.end annotation


# static fields
.field private static final BASE:I = 0x213e8

.field private static final DBG:Z

.field private static final EVENT_BOOT_COMPLETED:I = 0x1

.field private static final EVENT_SCPM_DB_UPDATED:I = 0x2

.field public static final QC_UNAVAILABLE:I = 0x1

.field public static final REQUEST_UPDATE_MHD_PARAMETERS:I = 0x213ea

.field public static final REQUEST_UPDATE_QC_PARAMETERS:I = 0x213e9

.field public static final REQUEST_UPDATE_SMARTCM_PARAMETERS:I = 0x213eb

.field private static final TAG:Ljava/lang/String; = "WWSMPatcher"

.field private static final WWSM_PATCH_MHD_FW_VERSION:I = 0x1

.field private static WWSM_PATCH_MHD_VERSION:I = 0x0

.field private static final WWSM_PATCH_SNS_FW_VERSION:I = 0x1

.field private static final WWSM_PATCH_SNS_UNAVAILABLE:I = 0x1

.field private static WWSM_PATCH_SNS_VERSION:I


# instance fields
.field private final MAX_DUMPLOG_LINE:I

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mDumpMsg:[Ljava/lang/String;

.field private mDumpMsgIndex:I

.field private mSCPManager:Lcom/android/server/wifi/WWSMPatcher$SamsungCommonPolicyManager;

.field private mWwsmChannel:Lcom/android/internal/util/AsyncChannel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/server/wifi/WWSMPatcher;->DBG:Z

    sget v0, Lcom/android/server/wifi/WifiWatchdogStateMachine;->SNS_VERSION:I

    sput v0, Lcom/android/server/wifi/WWSMPatcher;->WWSM_PATCH_SNS_VERSION:I

    sget v0, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->MHD_VERSION:I

    sput v0, Lcom/android/server/wifi/WWSMPatcher;->WWSM_PATCH_MHD_VERSION:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Landroid/os/Messenger;)V
    .locals 3
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "messenger"    # Landroid/os/Messenger;

    .prologue
    const/16 v2, 0x1e

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput v2, p0, Lcom/android/server/wifi/WWSMPatcher;->MAX_DUMPLOG_LINE:I

    iput-object p2, p0, Lcom/android/server/wifi/WWSMPatcher;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WWSMPatcher;->mWwsmChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v0, p0, Lcom/android/server/wifi/WWSMPatcher;->mWwsmChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, p2, p0, p3}, Lcom/android/internal/util/AsyncChannel;->connectSync(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)I

    new-instance v0, Lcom/android/server/wifi/WWSMPatcher$SamsungCommonPolicyManager;

    iget-object v1, p0, Lcom/android/server/wifi/WWSMPatcher;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/WWSMPatcher$SamsungCommonPolicyManager;-><init>(Lcom/android/server/wifi/WWSMPatcher;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/wifi/WWSMPatcher;->mSCPManager:Lcom/android/server/wifi/WWSMPatcher$SamsungCommonPolicyManager;

    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wifi/WWSMPatcher;->mDumpMsg:[Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/WWSMPatcher;->mDumpMsgIndex:I

    invoke-direct {p0}, Lcom/android/server/wifi/WWSMPatcher;->setupBroadcastReceiver()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/server/wifi/WWSMPatcher;->DBG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/wifi/WWSMPatcher;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WWSMPatcher;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WWSMPatcher;->addDumpMsg(Ljava/lang/String;)V

    return-void
.end method

.method private addDumpMsg(Ljava/lang/String;)V
    .locals 2
    .param p1, "log"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/WWSMPatcher;->mDumpMsg:[Ljava/lang/String;

    iget v1, p0, Lcom/android/server/wifi/WWSMPatcher;->mDumpMsgIndex:I

    aput-object p1, v0, v1

    iget v0, p0, Lcom/android/server/wifi/WWSMPatcher;->mDumpMsgIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wifi/WWSMPatcher;->mDumpMsgIndex:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/WWSMPatcher;->mDumpMsgIndex:I

    :cond_0
    return-void
.end method

.method private applyMHDParameters(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "mhdMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WWSMPatcher;->mWwsmChannel:Lcom/android/internal/util/AsyncChannel;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WWSMPatcher;->mWwsmChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x213ea

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private applyQCParameters(Ljava/util/HashMap;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "snsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v13, 0x0

    const/4 v12, 0x1

    if-eqz p1, :cond_0

    iget-object v10, p0, Lcom/android/server/wifi/WWSMPatcher;->mWwsmChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/server/wifi/WWSMPatcher;->mContext:Landroid/content/Context;

    if-nez v10, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v10, "sns_ver"

    invoke-virtual {p1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10, v13}, Lcom/android/server/wifi/WWSMPatcher$Util;->getIntFromString(Ljava/lang/String;I)I

    move-result v10

    sput v10, Lcom/android/server/wifi/WifiWatchdogStateMachine;->SNS_VERSION:I

    sget v10, Lcom/android/server/wifi/WifiWatchdogStateMachine;->SNS_VERSION:I

    sput v10, Lcom/android/server/wifi/WWSMPatcher;->WWSM_PATCH_SNS_VERSION:I

    const-string v10, "sns_disabled"

    invoke-virtual {p1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const/4 v11, -0x1

    invoke-static {v10, v11}, Lcom/android/server/wifi/WWSMPatcher$Util;->getIntFromString(Ljava/lang/String;I)I

    move-result v7

    .local v7, "snsDisabled":I
    if-ne v7, v12, :cond_4

    invoke-direct {p0, v12, v13}, Lcom/android/server/wifi/WWSMPatcher;->getValue(II)I

    move-result v10

    if-nez v10, :cond_4

    sget v10, Lcom/android/server/wifi/WWSMPatcher;->WWSM_PATCH_SNS_VERSION:I

    invoke-direct {p0, v12, v10}, Lcom/android/server/wifi/WWSMPatcher;->setValue(II)V

    const-string v10, "WWSMPatcher"

    const-string v11, "apply SNSD"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v10, "[SD]"

    invoke-direct {p0, v10}, Lcom/android/server/wifi/WWSMPatcher;->addDumpMsg(Ljava/lang/String;)V

    :cond_2
    :goto_1
    :try_start_0
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "it":Ljava/util/Iterator;
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .local v6, "qcUrlMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[Ljava/lang/String;>;"
    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .local v2, "entry":Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .local v5, "key":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .local v9, "value":Ljava/lang/String;
    if-eqz v5, :cond_3

    if-eqz v9, :cond_3

    const-string v10, "sns_url_"

    invoke-virtual {v5, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    const/16 v10, 0x8

    invoke-virtual {v5, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "country":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_3

    const-string v10, "+"

    invoke-static {v10}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .local v8, "urls":[Ljava/lang/String;
    if-eqz v8, :cond_3

    array-length v10, v8

    if-lez v10, :cond_3

    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    array-length v10, v8

    if-ge v3, v10, :cond_5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "http://"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v8, v3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .end local v0    # "country":Ljava/lang/String;
    .end local v2    # "entry":Ljava/util/Map$Entry;
    .end local v3    # "i":I
    .end local v4    # "it":Ljava/util/Iterator;
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "qcUrlMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[Ljava/lang/String;>;"
    .end local v8    # "urls":[Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/String;
    :cond_4
    if-nez v7, :cond_2

    invoke-direct {p0, v12, v13}, Lcom/android/server/wifi/WWSMPatcher;->getValue(II)I

    move-result v10

    if-eqz v10, :cond_2

    invoke-direct {p0, v12, v13}, Lcom/android/server/wifi/WWSMPatcher;->setValue(II)V

    const-string v10, "WWSMPatcher"

    const-string v11, "apply SNSE"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v10, "[SE]"

    invoke-direct {p0, v10}, Lcom/android/server/wifi/WWSMPatcher;->addDumpMsg(Ljava/lang/String;)V

    goto/16 :goto_1

    .restart local v0    # "country":Ljava/lang/String;
    .restart local v2    # "entry":Ljava/util/Map$Entry;
    .restart local v3    # "i":I
    .restart local v4    # "it":Ljava/util/Iterator;
    .restart local v5    # "key":Ljava/lang/String;
    .restart local v6    # "qcUrlMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[Ljava/lang/String;>;"
    .restart local v8    # "urls":[Ljava/lang/String;
    .restart local v9    # "value":Ljava/lang/String;
    :cond_5
    :try_start_1
    invoke-virtual {v6, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .end local v0    # "country":Ljava/lang/String;
    .end local v2    # "entry":Ljava/util/Map$Entry;
    .end local v3    # "i":I
    .end local v4    # "it":Ljava/util/Iterator;
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "qcUrlMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[Ljava/lang/String;>;"
    .end local v8    # "urls":[Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/String;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v10, "WWSMPatcher"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "err : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v4    # "it":Ljava/util/Iterator;
    .restart local v6    # "qcUrlMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[Ljava/lang/String;>;"
    :cond_6
    if-eqz v6, :cond_0

    :try_start_2
    iget-object v10, p0, Lcom/android/server/wifi/WWSMPatcher;->mWwsmChannel:Lcom/android/internal/util/AsyncChannel;

    const v11, 0x213e9

    invoke-virtual {v10, v11, v6}, Lcom/android/internal/util/AsyncChannel;->sendMessage(ILjava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0
.end method

.method private applySMARTCMParameters(Ljava/lang/String;)V
    .locals 2
    .param p1, "smartCM"    # Ljava/lang/String;

    .prologue
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WWSMPatcher;->mWwsmChannel:Lcom/android/internal/util/AsyncChannel;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WWSMPatcher;->mWwsmChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x213eb

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private checkSCPMParameters()V
    .locals 30

    .prologue
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WWSMPatcher;->mSCPManager:Lcom/android/server/wifi/WWSMPatcher$SamsungCommonPolicyManager;

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WWSMPatcher;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    if-nez v24, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WWSMPatcher;->mSCPManager:Lcom/android/server/wifi/WWSMPatcher$SamsungCommonPolicyManager;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/wifi/WWSMPatcher$SamsungCommonPolicyManager;->getHashMapFromFile()Ljava/util/HashMap;

    move-result-object v10

    .local v10, "fileMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WWSMPatcher;->mSCPManager:Lcom/android/server/wifi/WWSMPatcher$SamsungCommonPolicyManager;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/wifi/WWSMPatcher$SamsungCommonPolicyManager;->getHashMapFromDB()Ljava/util/HashMap;

    move-result-object v7

    .local v7, "dbMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v10, :cond_2

    if-nez v7, :cond_2

    const-string v24, "WWSMPatcher"

    const-string v25, "fndn"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v24, "[F]1"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WWSMPatcher;->addDumpMsg(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v7    # "dbMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10    # "fileMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v8

    .local v8, "e":Ljava/lang/Exception;
    const-string v24, "WWSMPatcher"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "err : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v7    # "dbMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v10    # "fileMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    if-nez v10, :cond_3

    if-eqz v7, :cond_3

    :try_start_1
    const-string v24, "WWSMPatcher"

    const-string v25, "fndnn"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v24, "[F]2"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WWSMPatcher;->addDumpMsg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WWSMPatcher;->mSCPManager:Lcom/android/server/wifi/WWSMPatcher$SamsungCommonPolicyManager;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/wifi/WWSMPatcher$SamsungCommonPolicyManager;->updateFile()I

    move-result v24

    const/16 v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WWSMPatcher;->mSCPManager:Lcom/android/server/wifi/WWSMPatcher$SamsungCommonPolicyManager;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/wifi/WWSMPatcher$SamsungCommonPolicyManager;->getHashMapFromFile()Ljava/util/HashMap;

    move-result-object v10

    if-nez v10, :cond_5

    const-string v24, "WWSMPatcher"

    const-string v25, "fn"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    if-eqz v10, :cond_7

    if-eqz v7, :cond_7

    const-string v25, "WWSMPatcher"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "fnndnn : "

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v24, "policyVersion"

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    const-wide/16 v28, 0x0

    move-object/from16 v0, v24

    move-wide/from16 v1, v28

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WWSMPatcher$Util;->getLongFromString(Ljava/lang/String;J)J

    move-result-wide v28

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v26, " / "

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v24, "policyVersion"

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    const-wide/16 v28, 0x0

    move-object/from16 v0, v24

    move-wide/from16 v1, v28

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WWSMPatcher$Util;->getLongFromString(Ljava/lang/String;J)J

    move-result-wide v28

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v24, "policyVersion"

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    const-wide/16 v26, 0x0

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WWSMPatcher$Util;->getLongFromString(Ljava/lang/String;J)J

    move-result-wide v26

    const-string v24, "policyVersion"

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    const-wide/16 v28, 0x0

    move-object/from16 v0, v24

    move-wide/from16 v1, v28

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WWSMPatcher$Util;->getLongFromString(Ljava/lang/String;J)J

    move-result-wide v24

    cmp-long v24, v26, v24

    if-gez v24, :cond_4

    const-string v24, "[F]3"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WWSMPatcher;->addDumpMsg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WWSMPatcher;->mSCPManager:Lcom/android/server/wifi/WWSMPatcher$SamsungCommonPolicyManager;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/wifi/WWSMPatcher$SamsungCommonPolicyManager;->updateFile()I

    move-result v24

    const/16 v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wifi/WWSMPatcher;->mSCPManager:Lcom/android/server/wifi/WWSMPatcher$SamsungCommonPolicyManager;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/wifi/WWSMPatcher$SamsungCommonPolicyManager;->getHashMapFromFile()Ljava/util/HashMap;

    move-result-object v10

    if-nez v10, :cond_5

    const-string v24, "WWSMPatcher"

    const-string v25, "fn"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    const-string v24, "[F]4"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WWSMPatcher;->addDumpMsg(Ljava/lang/String;)V

    :cond_5
    :goto_1
    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "it":Ljava/util/Iterator;
    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    .local v16, "mhdMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v22, Ljava/util/HashMap;

    invoke-direct/range {v22 .. v22}, Ljava/util/HashMap;-><init>()V

    .local v22, "snsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v19, ""

    .local v19, "smartCM":Ljava/lang/String;
    :cond_6
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_a

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .local v9, "entry":Ljava/util/Map$Entry;
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .local v13, "key":Ljava/lang/String;
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    .local v23, "value":Ljava/lang/String;
    if-eqz v13, :cond_6

    if-eqz v23, :cond_6

    const-string v24, "mhd_"

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_8

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v13, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .end local v9    # "entry":Ljava/util/Map$Entry;
    .end local v12    # "it":Ljava/util/Iterator;
    .end local v13    # "key":Ljava/lang/String;
    .end local v16    # "mhdMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v19    # "smartCM":Ljava/lang/String;
    .end local v22    # "snsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v23    # "value":Ljava/lang/String;
    :cond_7
    const-string v24, "[F]5"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WWSMPatcher;->addDumpMsg(Ljava/lang/String;)V

    const-string v24, "WWSMPatcher"

    const-string v25, "fnndn"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .restart local v9    # "entry":Ljava/util/Map$Entry;
    .restart local v12    # "it":Ljava/util/Iterator;
    .restart local v13    # "key":Ljava/lang/String;
    .restart local v16    # "mhdMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v19    # "smartCM":Ljava/lang/String;
    .restart local v22    # "snsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v23    # "value":Ljava/lang/String;
    :cond_8
    const-string v24, "sns_"

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_9

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v13, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_9
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "\n"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    goto :goto_2

    .end local v9    # "entry":Ljava/util/Map$Entry;
    .end local v13    # "key":Ljava/lang/String;
    .end local v23    # "value":Ljava/lang/String;
    :cond_a
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "/wwsmpatcher.test"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .local v6, "WWSMPATCHER_TEST_PATH":Ljava/lang/String;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "/go_scpm"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .local v4, "SCPM_TEST_PATH":Ljava/lang/String;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "/go_scpm/url_stg_scpm"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .local v5, "SCPM_TEST_PATH2":Ljava/lang/String;
    new-instance v24, Ljava/io/File;

    move-object/from16 v0, v24

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->exists()Z

    move-result v24

    if-eqz v24, :cond_b

    new-instance v24, Ljava/io/File;

    move-object/from16 v0, v24

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->exists()Z

    move-result v24

    if-eqz v24, :cond_b

    new-instance v24, Ljava/io/File;

    move-object/from16 v0, v24

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->exists()Z

    move-result v24

    if-nez v24, :cond_c

    :cond_b
    new-instance v24, Ljava/io/File;

    move-object/from16 v0, v24

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->exists()Z

    move-result v24

    if-nez v24, :cond_f

    new-instance v24, Ljava/io/File;

    move-object/from16 v0, v24

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->exists()Z

    move-result v24

    if-nez v24, :cond_f

    new-instance v24, Ljava/io/File;

    move-object/from16 v0, v24

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->exists()Z

    move-result v24

    if-nez v24, :cond_f

    :cond_c
    const/4 v11, 0x1

    .local v11, "isValid":Z
    :goto_3
    if-eqz v11, :cond_10

    const-string v24, "[V]"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WWSMPatcher;->addDumpMsg(Ljava/lang/String;)V

    :goto_4
    if-eqz v11, :cond_0

    sget v24, Lcom/android/server/wifi/WifiWatchdogStateMachine;->SNS_VERSION:I

    sput v24, Lcom/android/server/wifi/WWSMPatcher;->WWSM_PATCH_SNS_VERSION:I

    sget v24, Lcom/android/server/wifi/WifiMaliciousHotspotDetector;->MHD_VERSION:I

    sput v24, Lcom/android/server/wifi/WWSMPatcher;->WWSM_PATCH_MHD_VERSION:I

    const-string v24, "mhd_fw_ver"

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    const/16 v25, 0x0

    invoke-static/range {v24 .. v25}, Lcom/android/server/wifi/WWSMPatcher$Util;->getIntFromString(Ljava/lang/String;I)I

    move-result v14

    .local v14, "mhdFileFwVersion":I
    const-string v24, "mhd_ver"

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    const/16 v25, 0x0

    invoke-static/range {v24 .. v25}, Lcom/android/server/wifi/WWSMPatcher$Util;->getIntFromString(Ljava/lang/String;I)I

    move-result v15

    .local v15, "mhdFileVersion":I
    const-string v24, "sns_fw_ver"

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    const/16 v25, 0x0

    invoke-static/range {v24 .. v25}, Lcom/android/server/wifi/WWSMPatcher$Util;->getIntFromString(Ljava/lang/String;I)I

    move-result v20

    .local v20, "snsFileFwVersion":I
    const-string v24, "sns_ver"

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    const/16 v25, 0x0

    invoke-static/range {v24 .. v25}, Lcom/android/server/wifi/WWSMPatcher$Util;->getIntFromString(Ljava/lang/String;I)I

    move-result v21

    .local v21, "snsFileVersion":I
    const-string v24, "scm_fw_ver"

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    const/16 v25, 0x0

    invoke-static/range {v24 .. v25}, Lcom/android/server/wifi/WWSMPatcher$Util;->getIntFromString(Ljava/lang/String;I)I

    move-result v17

    .local v17, "scmFileFwVersion":I
    const-string v24, "scm_ver"

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    const/16 v25, 0x0

    invoke-static/range {v24 .. v25}, Lcom/android/server/wifi/WWSMPatcher$Util;->getIntFromString(Ljava/lang/String;I)I

    move-result v18

    .local v18, "scmFileVersion":I
    const-string v24, "WWSMPatcher"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "mhdv "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "/"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v24, "WWSMPatcher"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "snsv "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "/"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[M]1/"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "/"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    sget v25, Lcom/android/server/wifi/WWSMPatcher;->WWSM_PATCH_MHD_VERSION:I

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "/"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "[S]"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "/"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "/"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    sget v25, Lcom/android/server/wifi/WWSMPatcher;->WWSM_PATCH_SNS_VERSION:I

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "/"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "[C]"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "/"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ","

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WWSMPatcher;->addDumpMsg(Ljava/lang/String;)V

    const/16 v24, 0x1

    move/from16 v0, v24

    if-ne v0, v14, :cond_d

    sget v24, Lcom/android/server/wifi/WWSMPatcher;->WWSM_PATCH_MHD_VERSION:I

    move/from16 v0, v24

    if-ge v0, v15, :cond_d

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WWSMPatcher;->applyMHDParameters(Ljava/util/HashMap;)V

    :cond_d
    const/16 v24, 0x1

    move/from16 v0, v24

    move/from16 v1, v20

    if-ne v0, v1, :cond_11

    sget v24, Lcom/android/server/wifi/WWSMPatcher;->WWSM_PATCH_SNS_VERSION:I

    move/from16 v0, v24

    move/from16 v1, v21

    if-ge v0, v1, :cond_11

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WWSMPatcher;->applyQCParameters(Ljava/util/HashMap;)V

    :cond_e
    :goto_5
    const/16 v24, 0x1

    move/from16 v0, v24

    move/from16 v1, v17

    if-ne v0, v1, :cond_0

    sget v24, Lcom/android/server/wifi/WWSMPatcher;->WWSM_PATCH_SNS_VERSION:I

    move/from16 v0, v24

    move/from16 v1, v18

    if-ge v0, v1, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WWSMPatcher;->applySMARTCMParameters(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v11    # "isValid":Z
    .end local v14    # "mhdFileFwVersion":I
    .end local v15    # "mhdFileVersion":I
    .end local v17    # "scmFileFwVersion":I
    .end local v18    # "scmFileVersion":I
    .end local v20    # "snsFileFwVersion":I
    .end local v21    # "snsFileVersion":I
    :cond_f
    const/4 v11, 0x0

    goto/16 :goto_3

    .restart local v11    # "isValid":Z
    :cond_10
    const-string v24, "[NV]"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WWSMPatcher;->addDumpMsg(Ljava/lang/String;)V

    goto/16 :goto_4

    .restart local v14    # "mhdFileFwVersion":I
    .restart local v15    # "mhdFileVersion":I
    .restart local v17    # "scmFileFwVersion":I
    .restart local v18    # "scmFileVersion":I
    .restart local v20    # "snsFileFwVersion":I
    .restart local v21    # "snsFileVersion":I
    :cond_11
    const/16 v24, 0x1

    move/from16 v0, v24

    move/from16 v1, v20

    if-ge v0, v1, :cond_e

    const/16 v24, 0x1

    sget v25, Lcom/android/server/wifi/WWSMPatcher;->WWSM_PATCH_SNS_VERSION:I

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/WWSMPatcher;->setValue(II)V

    const-string v24, "[LFV]"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/server/wifi/WWSMPatcher;->addDumpMsg(Ljava/lang/String;)V

    const-string v24, "WWSMPatcher"

    const-string v25, "apply LSNSFV"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5
.end method

.method private getValue(II)I
    .locals 2
    .param p1, "type"    # I
    .param p2, "defaultValue"    # I

    .prologue
    const/4 v0, 0x0

    .local v0, "field":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    :goto_0
    if-nez v0, :cond_0

    const/4 v1, -0x1

    :goto_1
    return v1

    :pswitch_0
    const-string v0, "wifi_wwsm_patch_remove_sns_menu_from_settings"

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WWSMPatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0, p2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private initSettingsDB()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/WWSMPatcher;->getValue(II)I

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/android/server/wifi/WWSMPatcher;->WWSM_PATCH_SNS_VERSION:I

    invoke-direct {p0, v2, v0}, Lcom/android/server/wifi/WWSMPatcher;->getValue(II)I

    move-result v0

    sget v1, Lcom/android/server/wifi/WWSMPatcher;->WWSM_PATCH_SNS_VERSION:I

    if-ge v0, v1, :cond_2

    :cond_0
    sget-boolean v0, Lcom/android/server/wifi/WWSMPatcher;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "WWSMPatcher"

    const-string v1, "init db"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v0, "[IDB]"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WWSMPatcher;->addDumpMsg(Ljava/lang/String;)V

    invoke-direct {p0, v2, v3}, Lcom/android/server/wifi/WWSMPatcher;->setValue(II)V

    :cond_2
    return-void
.end method

.method private notifyMessage(ZI)V
    .locals 4
    .param p1, "show"    # Z
    .param p2, "titleType"    # I

    .prologue
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.android.net.wifi.SHOW_NOTI_MESSAGE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "info_type"

    const/16 v3, 0x12

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "visible"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "titleType"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-boolean v2, Lcom/android/server/wifi/WWSMPatcher;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "WWSMPatcher"

    const-string v3, "notify"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WWSMPatcher;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v2, "WWSMPatcher"

    const-string v3, "err notify"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setValue(II)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "value"    # I

    .prologue
    const/4 v0, 0x0

    .local v0, "field":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    :goto_0
    if-nez v0, :cond_0

    :goto_1
    return-void

    :pswitch_0
    const-string v0, "wifi_wwsm_patch_remove_sns_menu_from_settings"

    goto :goto_0

    :cond_0
    sget-boolean v1, Lcom/android/server/wifi/WWSMPatcher;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "WWSMPatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set t/v : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WWSMPatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private setupBroadcastReceiver()V
    .locals 3

    .prologue
    new-instance v1, Lcom/android/server/wifi/WWSMPatcher$1;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/WWSMPatcher$1;-><init>(Lcom/android/server/wifi/WWSMPatcher;)V

    iput-object v1, p0, Lcom/android/server/wifi/WWSMPatcher;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "sec.app.policy.UPDATE.wwsmpatcher"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wifi/WWSMPatcher;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/wifi/WWSMPatcher;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public getDumpMsg()Ljava/lang/String;
    .locals 8

    .prologue
    const-string v1, ""

    .local v1, "dumpmsg":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/wifi/WWSMPatcher;->mDumpMsg:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .local v4, "str":Ljava/lang/String;
    if-eqz v4, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v4    # "str":Ljava/lang/String;
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "[SU]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, -0x1

    invoke-direct {p0, v6, v7}, Lcom/android/server/wifi/WWSMPatcher;->getValue(II)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget v0, p1, Landroid/os/Message;->what:I

    .local v0, "what":I
    sget-boolean v1, Lcom/android/server/wifi/WWSMPatcher;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "WWSMPatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "recv : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    packed-switch v0, :pswitch_data_0

    const-string v1, "WWSMPatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not handled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/wifi/WWSMPatcher;->initSettingsDB()V

    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/wifi/WWSMPatcher;->checkSCPMParameters()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
