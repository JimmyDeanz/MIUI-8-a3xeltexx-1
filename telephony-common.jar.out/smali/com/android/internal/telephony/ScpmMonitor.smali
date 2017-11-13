.class public Lcom/android/internal/telephony/ScpmMonitor;
.super Landroid/os/Handler;
.source "ScpmMonitor.java"


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.samsung.android.sm.policy"

.field private static final AUTHORITY_URI:Landroid/net/Uri;

.field private static final EVENT_RADIO_AVAILABLE:I = 0x63

.field private static final EVENT_SET_MCCBAND_DONE:I = 0x0

.field private static final EVENT_SET_REL11NW_DONE:I = 0x1

.field private static final FilePath:Ljava/lang/String; = "/data/misc/radio/"

.field private static final ITEMS:[Ljava/lang/String;

.field private static final ITEMS_UPDATE_INTENT:[Ljava/lang/String;

.field private static final ITEMS_VERSION_PROPERTY:[Ljava/lang/String;

.field private static final ITEM_PROJECTION:[Ljava/lang/String;

.field private static final ITEM_TABLE:Ljava/lang/String; = "policy_item"

.field private static final ITEM_URI:Landroid/net/Uri;

.field static final LOG_TAG:Ljava/lang/String; = "ScpmMonitor"

.field private static final MCCBAND_ITEM:Ljava/lang/String; = "mccbanddb"

.field private static final MCCBAND_UPDATE_INTENT:Ljava/lang/String; = "sec.app.policy.UPDATE.mccbanddb"

.field private static final MCCBAND_VERSION_PROPERTY:Ljava/lang/String; = "persist.ril.scpm.mccband.ver"

.field private static final ORDERBY:Ljava/lang/String; = "category"

.field private static final POLICY_VERSION_IDX:I = 0x1

.field private static final REL11NW_ITEM:Ljava/lang/String; = "rel11nw"

.field private static final REL11NW_UPDATE_INTENT:Ljava/lang/String; = "sec.app.policy.UPDATE.rel11nw"

.field private static final REL11NW_VERSION_PROPERTY:Ljava/lang/String; = "persist.ril.scpm.rel11nw.ver"

.field private static final VERION_URI:Landroid/net/Uri;

.field private static final VERSION_PROJECTION:[Ljava/lang/String;

.field private static final VERSION_TABLE:Ljava/lang/String; = "policy_list"

.field private static sScpmMonitor:Lcom/android/internal/telephony/ScpmMonitor;

.field private static final setCpReset:[B

.field private static final setItems:[[B

.field private static final setMccBand:[B

.field private static final setRel11Nw:[B


# instance fields
.field private mCi:[Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mDbSetCount:I

.field private mNeedCpDbUpdate:Z

.field private mNewMccBandVersion:Ljava/lang/String;

.field private mNewRel11NwVersion:Ljava/lang/String;

.field private mPhone:[Lcom/android/internal/telephony/Phone;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x5

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 47
    const-string v0, "content://com.samsung.android.sm.policy"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/ScpmMonitor;->AUTHORITY_URI:Landroid/net/Uri;

    .line 51
    sget-object v0, Lcom/android/internal/telephony/ScpmMonitor;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "policy_list"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/ScpmMonitor;->VERION_URI:Landroid/net/Uri;

    .line 52
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "policyName"

    aput-object v1, v0, v3

    const-string v1, "policyVersion"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/internal/telephony/ScpmMonitor;->VERSION_PROJECTION:[Ljava/lang/String;

    .line 55
    sget-object v0, Lcom/android/internal/telephony/ScpmMonitor;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "policy_item"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/ScpmMonitor;->ITEM_URI:Landroid/net/Uri;

    .line 56
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "data1"

    aput-object v1, v0, v3

    const-string v1, "data2"

    aput-object v1, v0, v4

    const-string v1, "data3"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "data4"

    aput-object v2, v0, v1

    const-string v1, "data5"

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/internal/telephony/ScpmMonitor;->ITEM_PROJECTION:[Ljava/lang/String;

    .line 59
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "mccbanddb"

    aput-object v1, v0, v3

    const-string v1, "rel11nw"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/internal/telephony/ScpmMonitor;->ITEMS:[Ljava/lang/String;

    .line 63
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "sec.app.policy.UPDATE.mccbanddb"

    aput-object v1, v0, v3

    const-string v1, "sec.app.policy.UPDATE.rel11nw"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/internal/telephony/ScpmMonitor;->ITEMS_UPDATE_INTENT:[Ljava/lang/String;

    .line 69
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "persist.ril.scpm.mccband.ver"

    aput-object v1, v0, v3

    const-string v1, "persist.ril.scpm.rel11nw.ver"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/internal/telephony/ScpmMonitor;->ITEMS_VERSION_PROPERTY:[Ljava/lang/String;

    .line 75
    new-array v0, v5, [[B

    new-array v1, v6, [B

    fill-array-data v1, :array_0

    aput-object v1, v0, v3

    new-array v1, v6, [B

    fill-array-data v1, :array_1

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/internal/telephony/ScpmMonitor;->setItems:[[B

    .line 78
    new-array v0, v6, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/internal/telephony/ScpmMonitor;->setMccBand:[B

    .line 79
    new-array v0, v6, [B

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/internal/telephony/ScpmMonitor;->setRel11Nw:[B

    .line 81
    new-array v0, v7, [B

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/internal/telephony/ScpmMonitor;->setCpReset:[B

    return-void

    .line 75
    :array_0
    .array-data 1
        0x11t
        0x76t
        0x0t
        0x5t
        0x1t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x11t
        0x76t
        0x0t
        0x5t
        0x2t
    .end array-data

    .line 78
    nop

    :array_2
    .array-data 1
        0x11t
        0x76t
        0x0t
        0x5t
        0x1t
    .end array-data

    .line 79
    nop

    :array_3
    .array-data 1
        0x11t
        0x76t
        0x0t
        0x5t
        0x2t
    .end array-data

    .line 81
    nop

    :array_4
    .array-data 1
        0x11t
        0x67t
        0x0t
        0x4t
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneProxy"    # [Lcom/android/internal/telephony/Phone;
    .param p3, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    const/4 v2, 0x0

    .line 145
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 94
    iput-object v2, p0, Lcom/android/internal/telephony/ScpmMonitor;->mNewMccBandVersion:Ljava/lang/String;

    .line 95
    iput-object v2, p0, Lcom/android/internal/telephony/ScpmMonitor;->mNewRel11NwVersion:Ljava/lang/String;

    .line 97
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/telephony/ScpmMonitor;->mDbSetCount:I

    .line 98
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/telephony/ScpmMonitor;->mNeedCpDbUpdate:Z

    .line 100
    new-instance v2, Lcom/android/internal/telephony/ScpmMonitor$1;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/ScpmMonitor$1;-><init>(Lcom/android/internal/telephony/ScpmMonitor;)V

    iput-object v2, p0, Lcom/android/internal/telephony/ScpmMonitor;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 146
    const-string v2, "Constructor - Enter"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ScpmMonitor;->logd(Ljava/lang/String;)V

    .line 148
    iput-object p3, p0, Lcom/android/internal/telephony/ScpmMonitor;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    .line 149
    iput-object p2, p0, Lcom/android/internal/telephony/ScpmMonitor;->mPhone:[Lcom/android/internal/telephony/Phone;

    .line 150
    iput-object p1, p0, Lcom/android/internal/telephony/ScpmMonitor;->mContext:Landroid/content/Context;

    .line 152
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/ScpmMonitor;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 153
    iget-object v2, p0, Lcom/android/internal/telephony/ScpmMonitor;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v1

    const/16 v3, 0x63

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, p0, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 152
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 156
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 157
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "sec.app.policy.UPDATE.mccbanddb"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 158
    const-string v2, "sec.app.policy.UPDATE.rel11nw"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 159
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 161
    iget-object v2, p0, Lcom/android/internal/telephony/ScpmMonitor;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/ScpmMonitor;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 163
    const-string v2, "Constructor - Exit"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ScpmMonitor;->logd(Ljava/lang/String;)V

    .line 164
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/ScpmMonitor;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/ScpmMonitor;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ScpmMonitor;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/ScpmMonitor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/ScpmMonitor;

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/android/internal/telephony/ScpmMonitor;->mNeedCpDbUpdate:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/ScpmMonitor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/ScpmMonitor;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/android/internal/telephony/ScpmMonitor;->mNeedCpDbUpdate:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/ScpmMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/ScpmMonitor;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/internal/telephony/ScpmMonitor;->updateItems()V

    return-void
.end method

.method public static getInstance()Lcom/android/internal/telephony/ScpmMonitor;
    .locals 2

    .prologue
    .line 138
    sget-object v0, Lcom/android/internal/telephony/ScpmMonitor;->sScpmMonitor:Lcom/android/internal/telephony/ScpmMonitor;

    if-nez v0, :cond_0

    .line 139
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ScpmMonitor.getInstance called before make()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/ScpmMonitor;->sScpmMonitor:Lcom/android/internal/telephony/ScpmMonitor;

    return-object v0
.end method

.method private getScpmData(Ljava/lang/String;)Z
    .locals 17
    .param p1, "dbName"    # Ljava/lang/String;

    .prologue
    .line 291
    const-string v2, "getScpmData()"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/ScpmMonitor;->logd(Ljava/lang/String;)V

    .line 293
    const/4 v1, 0x0

    .line 294
    .local v1, "resolver":Landroid/content/ContentResolver;
    const/4 v7, 0x0

    .line 295
    .local v7, "cur":Landroid/database/Cursor;
    const/4 v15, 0x0

    .line 297
    .local v15, "sb":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ScpmMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 299
    :try_start_0
    sget-object v2, Lcom/android/internal/telephony/ScpmMonitor;->ITEM_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/ScpmMonitor;->ITEM_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "category"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 302
    if-eqz v7, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_5

    .line 303
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cur : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "cur.getCount() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/ScpmMonitor;->logd(Ljava/lang/String;)V

    .line 304
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    .end local v15    # "sb":Ljava/lang/StringBuilder;
    .local v16, "sb":Ljava/lang/StringBuilder;
    :goto_0
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 306
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    const/4 v2, 0x5

    if-ge v12, v2, :cond_0

    .line 307
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v7, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 309
    :cond_0
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/ScpmMonitor;->logd(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    goto :goto_0

    .line 312
    .end local v12    # "i":I
    :catch_0
    move-exception v8

    move-object/from16 v15, v16

    .line 313
    .end local v16    # "sb":Ljava/lang/StringBuilder;
    .local v8, "e":Ljava/lang/Exception;
    .restart local v15    # "sb":Ljava/lang/StringBuilder;
    :goto_2
    :try_start_2
    const-string v2, "err Get Data"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/ScpmMonitor;->loge(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 315
    if-eqz v7, :cond_1

    .line 316
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 317
    const/4 v7, 0x0

    .line 321
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_3
    if-eqz v15, :cond_2

    const-string v2, ""

    invoke-virtual {v15, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 322
    :cond_2
    const/4 v2, 0x0

    .line 356
    :cond_3
    :goto_4
    return v2

    .end local v15    # "sb":Ljava/lang/StringBuilder;
    .restart local v16    # "sb":Ljava/lang/StringBuilder;
    :cond_4
    move-object/from16 v15, v16

    .line 315
    .end local v16    # "sb":Ljava/lang/StringBuilder;
    .restart local v15    # "sb":Ljava/lang/StringBuilder;
    :cond_5
    if-eqz v7, :cond_1

    .line 316
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 317
    const/4 v7, 0x0

    goto :goto_3

    .line 315
    :catchall_0
    move-exception v2

    :goto_5
    if-eqz v7, :cond_6

    .line 316
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 317
    const/4 v7, 0x0

    :cond_6
    throw v2

    .line 325
    :cond_7
    const-string v2, "Write to file"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/ScpmMonitor;->logd(Ljava/lang/String;)V

    .line 326
    const/4 v13, 0x0

    .line 327
    .local v13, "out":Ljava/io/FileWriter;
    const/4 v9, 0x0

    .line 328
    .local v9, "file":Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/misc/radio/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 330
    .local v11, "filepath":Ljava/lang/String;
    :try_start_3
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 331
    .end local v9    # "file":Ljava/io/File;
    .local v10, "file":Ljava/io/File;
    :try_start_4
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 332
    const-string v2, "file.delete()"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/ScpmMonitor;->logd(Ljava/lang/String;)V

    .line 333
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 335
    :cond_8
    invoke-virtual {v10}, Ljava/io/File;->createNewFile()Z

    .line 337
    new-instance v14, Ljava/io/FileWriter;

    invoke-direct {v14, v11}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 338
    .end local v13    # "out":Ljava/io/FileWriter;
    .local v14, "out":Ljava/io/FileWriter;
    if-eqz v15, :cond_9

    .line 339
    :try_start_5
    const-string v2, "out.write(sb.toString())"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/ScpmMonitor;->logd(Ljava/lang/String;)V

    .line 340
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 346
    :cond_9
    if-eqz v14, :cond_a

    .line 348
    :try_start_6
    invoke-virtual {v14}, Ljava/io/FileWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 356
    :cond_a
    const/4 v2, 0x1

    goto :goto_4

    .line 349
    :catch_1
    move-exception v8

    .line 350
    .local v8, "e":Ljava/io/IOException;
    const-string v2, "err close file"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/ScpmMonitor;->loge(Ljava/lang/String;)V

    .line 351
    const/4 v2, 0x0

    goto :goto_4

    .line 342
    .end local v8    # "e":Ljava/io/IOException;
    .end local v10    # "file":Ljava/io/File;
    .end local v14    # "out":Ljava/io/FileWriter;
    .restart local v9    # "file":Ljava/io/File;
    .restart local v13    # "out":Ljava/io/FileWriter;
    :catch_2
    move-exception v8

    .line 343
    .local v8, "e":Ljava/lang/Exception;
    :goto_6
    :try_start_7
    const-string v2, "err create file"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/ScpmMonitor;->loge(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 344
    const/4 v2, 0x0

    .line 346
    if-eqz v13, :cond_3

    .line 348
    :try_start_8
    invoke-virtual {v13}, Ljava/io/FileWriter;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_4

    .line 349
    :catch_3
    move-exception v8

    .line 350
    .local v8, "e":Ljava/io/IOException;
    const-string v2, "err close file"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/ScpmMonitor;->loge(Ljava/lang/String;)V

    .line 351
    const/4 v2, 0x0

    goto/16 :goto_4

    .line 346
    .end local v8    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v2

    :goto_7
    if-eqz v13, :cond_b

    .line 348
    :try_start_9
    invoke-virtual {v13}, Ljava/io/FileWriter;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 351
    :cond_b
    throw v2

    .line 349
    :catch_4
    move-exception v8

    .line 350
    .restart local v8    # "e":Ljava/io/IOException;
    const-string v2, "err close file"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/ScpmMonitor;->loge(Ljava/lang/String;)V

    .line 351
    const/4 v2, 0x0

    goto/16 :goto_4

    .line 346
    .end local v8    # "e":Ljava/io/IOException;
    .end local v9    # "file":Ljava/io/File;
    .restart local v10    # "file":Ljava/io/File;
    :catchall_2
    move-exception v2

    move-object v9, v10

    .end local v10    # "file":Ljava/io/File;
    .restart local v9    # "file":Ljava/io/File;
    goto :goto_7

    .end local v9    # "file":Ljava/io/File;
    .end local v13    # "out":Ljava/io/FileWriter;
    .restart local v10    # "file":Ljava/io/File;
    .restart local v14    # "out":Ljava/io/FileWriter;
    :catchall_3
    move-exception v2

    move-object v9, v10

    .end local v10    # "file":Ljava/io/File;
    .restart local v9    # "file":Ljava/io/File;
    move-object v13, v14

    .end local v14    # "out":Ljava/io/FileWriter;
    .restart local v13    # "out":Ljava/io/FileWriter;
    goto :goto_7

    .line 342
    .end local v9    # "file":Ljava/io/File;
    .restart local v10    # "file":Ljava/io/File;
    :catch_5
    move-exception v8

    move-object v9, v10

    .end local v10    # "file":Ljava/io/File;
    .restart local v9    # "file":Ljava/io/File;
    goto :goto_6

    .end local v9    # "file":Ljava/io/File;
    .end local v13    # "out":Ljava/io/FileWriter;
    .restart local v10    # "file":Ljava/io/File;
    .restart local v14    # "out":Ljava/io/FileWriter;
    :catch_6
    move-exception v8

    move-object v9, v10

    .end local v10    # "file":Ljava/io/File;
    .restart local v9    # "file":Ljava/io/File;
    move-object v13, v14

    .end local v14    # "out":Ljava/io/FileWriter;
    .restart local v13    # "out":Ljava/io/FileWriter;
    goto :goto_6

    .line 315
    .end local v9    # "file":Ljava/io/File;
    .end local v11    # "filepath":Ljava/lang/String;
    .end local v13    # "out":Ljava/io/FileWriter;
    .end local v15    # "sb":Ljava/lang/StringBuilder;
    .restart local v16    # "sb":Ljava/lang/StringBuilder;
    :catchall_4
    move-exception v2

    move-object/from16 v15, v16

    .end local v16    # "sb":Ljava/lang/StringBuilder;
    .restart local v15    # "sb":Ljava/lang/StringBuilder;
    goto/16 :goto_5

    .line 312
    :catch_7
    move-exception v8

    goto/16 :goto_2
.end method

.method private getScpmDataVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "dbName"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 246
    const-string v2, "getScpmDataVersion()"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ScpmMonitor;->logd(Ljava/lang/String;)V

    .line 248
    const/4 v0, 0x0

    .line 249
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 250
    .local v6, "cur":Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 252
    .local v7, "dbVersion":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/telephony/ScpmMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.samsung.android.sm.policy"

    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 255
    .local v9, "isSCPMClientExist":Z
    :goto_0
    if-nez v9, :cond_1

    .line 256
    const-string v1, "SCPMClient is not exist"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ScpmMonitor;->loge(Ljava/lang/String;)V

    .line 257
    const-string v1, "0"

    .line 287
    :goto_1
    return-object v1

    .end local v9    # "isSCPMClientExist":Z
    :cond_0
    move v9, v1

    .line 252
    goto :goto_0

    .line 260
    .restart local v9    # "isSCPMClientExist":Z
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/ScpmMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 263
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/ScpmMonitor;->VERION_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/internal/telephony/ScpmMonitor;->VERSION_PROJECTION:[Ljava/lang/String;

    const-string v3, "policyName=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 266
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 267
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cur : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cur.getCount() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ScpmMonitor;->logd(Ljava/lang/String;)V

    .line 268
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 269
    const/4 v1, 0x1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 270
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ScpmMonitor;->logd(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    :cond_2
    if-eqz v6, :cond_3

    .line 277
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 278
    const/4 v6, 0x0

    .line 282
    :cond_3
    :goto_2
    if-eqz v7, :cond_4

    const-string v1, ""

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 283
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "There is no "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ScpmMonitor;->logd(Ljava/lang/String;)V

    .line 284
    const-string v1, "0"

    goto/16 :goto_1

    .line 273
    :catch_0
    move-exception v8

    .line 274
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v1, "err Get DB version"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ScpmMonitor;->loge(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 276
    if-eqz v6, :cond_3

    .line 277
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 278
    const/4 v6, 0x0

    goto :goto_2

    .line 276
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_5

    .line 277
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 278
    const/4 v6, 0x0

    :cond_5
    throw v1

    :cond_6
    move-object v1, v7

    .line 287
    goto/16 :goto_1
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 360
    const-string v0, "ScpmMonitor"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 364
    const-string v0, "ScpmMonitor"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    return-void
.end method

.method public static make(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/ScpmMonitor;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneProxy"    # [Lcom/android/internal/telephony/Phone;
    .param p2, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 129
    sget-object v0, Lcom/android/internal/telephony/ScpmMonitor;->sScpmMonitor:Lcom/android/internal/telephony/ScpmMonitor;

    if-nez v0, :cond_0

    .line 130
    new-instance v0, Lcom/android/internal/telephony/ScpmMonitor;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/telephony/ScpmMonitor;-><init>(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;[Lcom/android/internal/telephony/CommandsInterface;)V

    sput-object v0, Lcom/android/internal/telephony/ScpmMonitor;->sScpmMonitor:Lcom/android/internal/telephony/ScpmMonitor;

    .line 134
    sget-object v0, Lcom/android/internal/telephony/ScpmMonitor;->sScpmMonitor:Lcom/android/internal/telephony/ScpmMonitor;

    return-object v0

    .line 132
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ScpmMonitor.make() should only be called once"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private processRadioAvailable(Landroid/os/AsyncResult;I)V
    .locals 2
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "phoneId"    # I

    .prologue
    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processRadioAvailable on phoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ScpmMonitor;->logd(Ljava/lang/String;)V

    .line 207
    return-void
.end method

.method private setMccBand()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 236
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {p0, v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 237
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/ScpmMonitor;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v2

    sget-object v2, Lcom/android/internal/telephony/ScpmMonitor;->setMccBand:[B

    invoke-interface {v1, v2, v0}, Lcom/android/internal/telephony/CommandsInterface;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 238
    return-void
.end method

.method private setRel11Nw()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 241
    const/4 v1, 0x1

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {p0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 242
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/ScpmMonitor;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v3

    sget-object v2, Lcom/android/internal/telephony/ScpmMonitor;->setRel11Nw:[B

    invoke-interface {v1, v2, v0}, Lcom/android/internal/telephony/CommandsInterface;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 243
    return-void
.end method

.method private updateItems()V
    .locals 3

    .prologue
    .line 210
    const-string v1, "updateItems()"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ScpmMonitor;->logd(Ljava/lang/String;)V

    .line 212
    const/4 v0, 0x0

    .line 214
    .local v0, "oldVersion":Ljava/lang/String;
    const-string v1, "persist.ril.scpm.mccband.ver"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 215
    const-string v1, "mccbanddb"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ScpmMonitor;->getScpmDataVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/ScpmMonitor;->mNewMccBandVersion:Ljava/lang/String;

    .line 216
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateItems() oldVersion : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mNewMccBandVersion : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/ScpmMonitor;->mNewMccBandVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ScpmMonitor;->logd(Ljava/lang/String;)V

    .line 218
    iget-object v1, p0, Lcom/android/internal/telephony/ScpmMonitor;->mNewMccBandVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "mccbanddb"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ScpmMonitor;->getScpmData(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 219
    iget v1, p0, Lcom/android/internal/telephony/ScpmMonitor;->mDbSetCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/ScpmMonitor;->mDbSetCount:I

    .line 220
    const-string v1, "persist.ril.scpm.mccband.ver"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    invoke-direct {p0}, Lcom/android/internal/telephony/ScpmMonitor;->setMccBand()V

    .line 224
    :cond_0
    const-string v1, "persist.ril.scpm.rel11nw.ver"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 225
    const-string v1, "rel11nw"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ScpmMonitor;->getScpmDataVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/ScpmMonitor;->mNewRel11NwVersion:Ljava/lang/String;

    .line 226
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateItems() oldVersion : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mNewRel11NwVersion : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/ScpmMonitor;->mNewRel11NwVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ScpmMonitor;->logd(Ljava/lang/String;)V

    .line 228
    iget-object v1, p0, Lcom/android/internal/telephony/ScpmMonitor;->mNewRel11NwVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "rel11nw"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ScpmMonitor;->getScpmData(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 229
    const-string v1, "persist.ril.scpm.rel11nw.ver"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    iget v1, p0, Lcom/android/internal/telephony/ScpmMonitor;->mDbSetCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/ScpmMonitor;->mDbSetCount:I

    .line 231
    invoke-direct {p0}, Lcom/android/internal/telephony/ScpmMonitor;->setRel11Nw()V

    .line 233
    :cond_1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 168
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 169
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 171
    .local v1, "phoneId":Ljava/lang/Integer;
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 173
    :sswitch_0
    const-string v2, "EVENT_RADIO_AVAILABLE"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ScpmMonitor;->logd(Ljava/lang/String;)V

    .line 174
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/ScpmMonitor;->processRadioAvailable(Landroid/os/AsyncResult;I)V

    goto :goto_0

    .line 178
    :sswitch_1
    const-string v2, "SUCCESS!! EVENT_SET_MCCBAND"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ScpmMonitor;->logd(Ljava/lang/String;)V

    .line 179
    const-string v2, "persist.ril.scpm.mccband.ver"

    iget-object v3, p0, Lcom/android/internal/telephony/ScpmMonitor;->mNewMccBandVersion:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iput-object v5, p0, Lcom/android/internal/telephony/ScpmMonitor;->mNewMccBandVersion:Ljava/lang/String;

    .line 182
    iget v2, p0, Lcom/android/internal/telephony/ScpmMonitor;->mDbSetCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/internal/telephony/ScpmMonitor;->mDbSetCount:I

    .line 183
    iget v2, p0, Lcom/android/internal/telephony/ScpmMonitor;->mDbSetCount:I

    if-nez v2, :cond_0

    .line 184
    iput-boolean v4, p0, Lcom/android/internal/telephony/ScpmMonitor;->mNeedCpDbUpdate:Z

    goto :goto_0

    .line 189
    :sswitch_2
    const-string v2, "SUCCESS!! EVENT_SET_REL11NW"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ScpmMonitor;->logd(Ljava/lang/String;)V

    .line 190
    const-string v2, "persist.ril.scpm.rel11nw.ver"

    iget-object v3, p0, Lcom/android/internal/telephony/ScpmMonitor;->mNewRel11NwVersion:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iput-object v5, p0, Lcom/android/internal/telephony/ScpmMonitor;->mNewRel11NwVersion:Ljava/lang/String;

    .line 193
    iget v2, p0, Lcom/android/internal/telephony/ScpmMonitor;->mDbSetCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/internal/telephony/ScpmMonitor;->mDbSetCount:I

    .line 194
    iget v2, p0, Lcom/android/internal/telephony/ScpmMonitor;->mDbSetCount:I

    if-nez v2, :cond_0

    .line 195
    iput-boolean v4, p0, Lcom/android/internal/telephony/ScpmMonitor;->mNeedCpDbUpdate:Z

    goto :goto_0

    .line 171
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0x63 -> :sswitch_0
    .end sparse-switch
.end method
