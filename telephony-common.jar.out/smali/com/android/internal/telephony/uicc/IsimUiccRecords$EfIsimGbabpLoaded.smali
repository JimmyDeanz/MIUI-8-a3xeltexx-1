.class Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimGbabpLoaded;
.super Ljava/lang/Object;
.source "IsimUiccRecords.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccRecords$IccRecordLoaded;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/IsimUiccRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EfIsimGbabpLoaded"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/uicc/IsimUiccRecords;)V
    .locals 0

    .prologue
    .line 404
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimGbabpLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/uicc/IsimUiccRecords;Lcom/android/internal/telephony/uicc/IsimUiccRecords$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/uicc/IsimUiccRecords;
    .param p2, "x1"    # Lcom/android/internal/telephony/uicc/IsimUiccRecords$1;

    .prologue
    .line 404
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimGbabpLoaded;-><init>(Lcom/android/internal/telephony/uicc/IsimUiccRecords;)V

    return-void
.end method


# virtual methods
.method public getEfName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 406
    const-string v0, "EF_ISIM_GBABP"

    return-object v0
.end method

.method public onRecordLoaded(Landroid/os/AsyncResult;)V
    .locals 10
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v9, 0x0

    .line 409
    iget-object v6, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [B

    move-object v1, v6

    check-cast v1, [B

    .line 412
    .local v1, "data":[B
    :try_start_0
    iget-object v6, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [B

    move-object v0, v6

    check-cast v0, [B

    move-object v1, v0

    .line 413
    const/4 v3, 0x0

    .line 414
    .local v3, "i":I
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .local v4, "i":I
    aget-byte v5, v1, v3

    .line 416
    .local v5, "l":I
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimGbabpLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    new-array v7, v5, [B

    # setter for: Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mRand:[B
    invoke-static {v6, v7}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->access$1602(Lcom/android/internal/telephony/uicc/IsimUiccRecords;[B)[B

    .line 417
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimGbabpLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    # getter for: Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mRand:[B
    invoke-static {v6}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->access$1600(Lcom/android/internal/telephony/uicc/IsimUiccRecords;)[B

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v1, v4, v6, v7, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 419
    add-int/lit8 v3, v5, 0x1

    .line 420
    .end local v4    # "i":I
    .restart local v3    # "i":I
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    aget-byte v5, v1, v3

    .line 421
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimGbabpLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    new-instance v7, Ljava/lang/String;

    const-string v8, "UTF-8"

    invoke-direct {v7, v1, v4, v5, v8}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    # setter for: Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mBtid:Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->access$1702(Lcom/android/internal/telephony/uicc/IsimUiccRecords;Ljava/lang/String;)Ljava/lang/String;

    .line 423
    add-int v3, v4, v5

    .line 424
    .end local v4    # "i":I
    .restart local v3    # "i":I
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    aget-byte v5, v1, v3

    .line 425
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimGbabpLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    new-instance v7, Ljava/lang/String;

    const-string v8, "UTF-8"

    invoke-direct {v7, v1, v4, v5, v8}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    # setter for: Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mKeyLifetime:Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->access$1802(Lcom/android/internal/telephony/uicc/IsimUiccRecords;Ljava/lang/String;)Ljava/lang/String;

    .line 427
    sget-boolean v6, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    if-eqz v6, :cond_0

    .line 428
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimGbabpLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    const-string v7, "mRand=**"

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->log(Ljava/lang/String;)V

    .line 429
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimGbabpLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    const-string v7, "mBtid=**"

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->log(Ljava/lang/String;)V

    .line 430
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimGbabpLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    const-string v7, "mKeyLifetime=**"

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->log(Ljava/lang/String;)V

    .line 442
    .end local v4    # "i":I
    .end local v5    # "l":I
    :goto_0
    return-void

    .line 432
    .restart local v4    # "i":I
    .restart local v5    # "l":I
    :cond_0
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimGbabpLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mRand="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimGbabpLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    # getter for: Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mRand:[B
    invoke-static {v8}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->access$1600(Lcom/android/internal/telephony/uicc/IsimUiccRecords;)[B

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->log(Ljava/lang/String;)V

    .line 433
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimGbabpLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mBtid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimGbabpLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    # getter for: Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mBtid:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->access$1700(Lcom/android/internal/telephony/uicc/IsimUiccRecords;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->log(Ljava/lang/String;)V

    .line 434
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimGbabpLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mKeyLifetime="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimGbabpLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    # getter for: Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mKeyLifetime:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->access$1800(Lcom/android/internal/telephony/uicc/IsimUiccRecords;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 436
    .end local v4    # "i":I
    .end local v5    # "l":I
    :catch_0
    move-exception v2

    .line 437
    .local v2, "e":Ljava/lang/Exception;
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimGbabpLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to parse GBABP contents: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->log(Ljava/lang/String;)V

    .line 438
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimGbabpLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    # setter for: Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mRand:[B
    invoke-static {v6, v9}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->access$1602(Lcom/android/internal/telephony/uicc/IsimUiccRecords;[B)[B

    .line 439
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimGbabpLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    # setter for: Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mBtid:Ljava/lang/String;
    invoke-static {v6, v9}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->access$1702(Lcom/android/internal/telephony/uicc/IsimUiccRecords;Ljava/lang/String;)Ljava/lang/String;

    .line 440
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimGbabpLoaded;->this$0:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    # setter for: Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mKeyLifetime:Ljava/lang/String;
    invoke-static {v6, v9}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->access$1802(Lcom/android/internal/telephony/uicc/IsimUiccRecords;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0
.end method
