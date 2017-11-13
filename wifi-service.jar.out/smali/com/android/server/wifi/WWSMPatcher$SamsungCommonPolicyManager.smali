.class Lcom/android/server/wifi/WWSMPatcher$SamsungCommonPolicyManager;
.super Ljava/lang/Object;
.source "WWSMPatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WWSMPatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SamsungCommonPolicyManager"
.end annotation


# static fields
.field private static final SCPM_AUTHORITY:Ljava/lang/String; = "com.samsung.android.sm.policy"

.field public static final SCPM_BROADCAST_MESSAGE:Ljava/lang/String; = "sec.app.policy.UPDATE.wwsmpatcher"

.field public static final SCPM_LOCAL_FILE_PATH:Ljava/lang/String; = "/data/misc/wifi/.scpm_wwsmpatch"

.field private static final SCPM_POLICY_NAME:Ljava/lang/String; = "wwsmpatcher"

.field private static final SCPM_READ_PERMISSION:Ljava/lang/String; = "com.samsung.permission.READ_SEC_COMMON_POLICY"

.field private static final SCPM_URI_POLICY:Ljava/lang/String; = "content://com.samsung.android.sm.policy/policy_item/policy_list"

.field private static final SCPM_URI_WWSMPATCHER_TABLE:Ljava/lang/String; = "content://com.samsung.android.sm.policy/policy_item/wwsmpatcher"

.field private static final TAG:Ljava/lang/String; = "WWSMPatcher/SCPM"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLoadedHashMapFromDB:Ljava/util/HashMap;
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

.field private mLoadedHashMapFromFile:Ljava/util/HashMap;
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

.field private mLoadedStringFromDB:Ljava/lang/String;

.field private mLoadedStringFromFile:Ljava/lang/String;

.field private mPolicyVersion:J

.field final synthetic this$0:Lcom/android/server/wifi/WWSMPatcher;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/WWSMPatcher;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 374
    iput-object p1, p0, Lcom/android/server/wifi/WWSMPatcher$SamsungCommonPolicyManager;->this$0:Lcom/android/server/wifi/WWSMPatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 375
    iput-object p2, p0, Lcom/android/server/wifi/WWSMPatcher$SamsungCommonPolicyManager;->mContext:Landroid/content/Context;

    .line 376
    return-void
.end method

.method private isSCPMClientExist()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 379
    iget-object v1, p0, Lcom/android/server/wifi/WWSMPatcher$SamsungCommonPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.samsung.android.sm.policy"

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method public getHashMapFromDB()Ljava/util/HashMap;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 397
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WWSMPatcher$SamsungCommonPolicyManager;->isSCPMClientExist()Z

    move-result v2

    if-nez v2, :cond_0

    .line 398
    const/4 v2, 0x0

    .line 445
    :goto_0
    return-object v2

    .line 400
    :cond_0
    const/4 v12, 0x0

    .line 401
    .local v12, "cursorPolicy":Landroid/database/Cursor;
    const/4 v11, 0x0

    .line 402
    .local v11, "cursorData":Landroid/database/Cursor;
    const/16 v19, 0x0

    .line 403
    .local v19, "sb":Ljava/lang/StringBuffer;
    const/4 v2, 0x5

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/4 v2, 0x0

    const-string v4, "data1"

    aput-object v4, v17, v2

    const/4 v2, 0x1

    const-string v4, "data2"

    aput-object v4, v17, v2

    const/4 v2, 0x2

    const-string v4, "data3"

    aput-object v4, v17, v2

    const/4 v2, 0x3

    const-string v4, "data4"

    aput-object v4, v17, v2

    const/4 v2, 0x4

    const-string v4, "data5"

    aput-object v4, v17, v2

    .line 405
    .local v17, "projection":[Ljava/lang/String;
    :try_start_0
    const-string v2, "content://com.samsung.android.sm.policy/policy_item/policy_list"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 406
    .local v3, "policyCategory":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WWSMPatcher$SamsungCommonPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 407
    new-instance v20, Ljava/lang/StringBuffer;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuffer;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 408
    .end local v19    # "sb":Ljava/lang/StringBuffer;
    .local v20, "sb":Ljava/lang/StringBuffer;
    :cond_1
    :goto_1
    :try_start_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 409
    const-string v2, "policyName"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 410
    .local v15, "policyName":Ljava/lang/String;
    const-string v2, "policyVersion"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 411
    .local v16, "policyVersion":Ljava/lang/String;
    const-string v2, "wwsmpatcher"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 412
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "policyName="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ";policyVersion="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ";"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 428
    .end local v15    # "policyName":Ljava/lang/String;
    .end local v16    # "policyVersion":Ljava/lang/String;
    :catch_0
    move-exception v13

    move-object/from16 v19, v20

    .line 429
    .end local v3    # "policyCategory":Landroid/net/Uri;
    .end local v20    # "sb":Ljava/lang/StringBuffer;
    .local v13, "e":Ljava/lang/Exception;
    .restart local v19    # "sb":Ljava/lang/StringBuffer;
    :goto_2
    const/16 v19, 0x0

    .line 430
    :try_start_2
    const-string v2, "WWSMPatcher/SCPM"

    const-string v4, "no data"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 432
    if-eqz v11, :cond_2

    .line 433
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 435
    :cond_2
    if-eqz v12, :cond_3

    .line 436
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 440
    .end local v13    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_3
    if-eqz v19, :cond_b

    .line 441
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, ";"

    const-string v6, "\n"

    invoke-virtual {v2, v4, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WWSMPatcher$SamsungCommonPolicyManager;->mLoadedStringFromDB:Ljava/lang/String;

    .line 442
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WWSMPatcher$SamsungCommonPolicyManager;->mLoadedStringFromDB:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/wifi/WWSMPatcher$Util;->getHashMapFromString(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WWSMPatcher$SamsungCommonPolicyManager;->mLoadedHashMapFromDB:Ljava/util/HashMap;

    .line 443
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WWSMPatcher$SamsungCommonPolicyManager;->mLoadedHashMapFromDB:Ljava/util/HashMap;

    goto/16 :goto_0

    .line 416
    .end local v19    # "sb":Ljava/lang/StringBuffer;
    .restart local v3    # "policyCategory":Landroid/net/Uri;
    .restart local v20    # "sb":Ljava/lang/StringBuffer;
    :cond_4
    :try_start_3
    const-string v2, "content://com.samsung.android.sm.policy/policy_item/wwsmpatcher"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 417
    .local v5, "wwsmpatcherCategoryUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WWSMPatcher$SamsungCommonPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 418
    const-string v18, ""

    .line 419
    .local v18, "record":Ljava/lang/String;
    const-string v10, ""

    .line 420
    .local v10, "category":Ljava/lang/String;
    :cond_5
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 421
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_4
    const/4 v2, 0x5

    if-ge v14, v2, :cond_5

    .line 422
    aget-object v2, v17, v14

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 423
    if-eqz v18, :cond_6

    .line 424
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 421
    :cond_6
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 432
    .end local v14    # "i":I
    :cond_7
    if-eqz v11, :cond_8

    .line 433
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 435
    :cond_8
    if-eqz v12, :cond_c

    .line 436
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    move-object/from16 v19, v20

    .end local v20    # "sb":Ljava/lang/StringBuffer;
    .restart local v19    # "sb":Ljava/lang/StringBuffer;
    goto :goto_3

    .line 432
    .end local v3    # "policyCategory":Landroid/net/Uri;
    .end local v5    # "wwsmpatcherCategoryUri":Landroid/net/Uri;
    .end local v10    # "category":Ljava/lang/String;
    .end local v18    # "record":Ljava/lang/String;
    :catchall_0
    move-exception v2

    :goto_5
    if-eqz v11, :cond_9

    .line 433
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 435
    :cond_9
    if-eqz v12, :cond_a

    .line 436
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_a
    throw v2

    .line 445
    :cond_b
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 432
    .end local v19    # "sb":Ljava/lang/StringBuffer;
    .restart local v3    # "policyCategory":Landroid/net/Uri;
    .restart local v20    # "sb":Ljava/lang/StringBuffer;
    :catchall_1
    move-exception v2

    move-object/from16 v19, v20

    .end local v20    # "sb":Ljava/lang/StringBuffer;
    .restart local v19    # "sb":Ljava/lang/StringBuffer;
    goto :goto_5

    .line 428
    .end local v3    # "policyCategory":Landroid/net/Uri;
    :catch_1
    move-exception v13

    goto/16 :goto_2

    .end local v19    # "sb":Ljava/lang/StringBuffer;
    .restart local v3    # "policyCategory":Landroid/net/Uri;
    .restart local v5    # "wwsmpatcherCategoryUri":Landroid/net/Uri;
    .restart local v10    # "category":Ljava/lang/String;
    .restart local v18    # "record":Ljava/lang/String;
    .restart local v20    # "sb":Ljava/lang/StringBuffer;
    :cond_c
    move-object/from16 v19, v20

    .end local v20    # "sb":Ljava/lang/StringBuffer;
    .restart local v19    # "sb":Ljava/lang/StringBuffer;
    goto/16 :goto_3
.end method

.method public getHashMapFromFile()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 391
    const-string v0, "/data/misc/wifi/.scpm_wwsmpatch"

    invoke-static {v0}, Lcom/android/server/wifi/WWSMPatcher$Util;->loadDataFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WWSMPatcher$SamsungCommonPolicyManager;->mLoadedStringFromFile:Ljava/lang/String;

    .line 392
    iget-object v0, p0, Lcom/android/server/wifi/WWSMPatcher$SamsungCommonPolicyManager;->mLoadedStringFromFile:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/wifi/WWSMPatcher$Util;->getHashMapFromString(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WWSMPatcher$SamsungCommonPolicyManager;->mLoadedHashMapFromFile:Ljava/util/HashMap;

    .line 393
    iget-object v0, p0, Lcom/android/server/wifi/WWSMPatcher$SamsungCommonPolicyManager;->mLoadedHashMapFromFile:Ljava/util/HashMap;

    return-object v0
.end method

.method public updateFile()I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 383
    const-string v1, "/data/misc/wifi/.scpm_wwsmpatch"

    iget-object v2, p0, Lcom/android/server/wifi/WWSMPatcher$SamsungCommonPolicyManager;->mLoadedStringFromDB:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/server/wifi/WWSMPatcher$Util;->saveDataToFile(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 384
    const-string v1, "WWSMPatcher/SCPM"

    const-string v2, "sdtf failed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
