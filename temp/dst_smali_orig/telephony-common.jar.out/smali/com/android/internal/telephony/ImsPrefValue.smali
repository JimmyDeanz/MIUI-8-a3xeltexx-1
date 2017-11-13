.class public Lcom/android/internal/telephony/ImsPrefValue;
.super Ljava/lang/Object;
.source "ImsPrefValue.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ImsPrefValue"


# instance fields
.field private mPrefValueTable:[I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/telephony/ImsPrefValue;->mPrefValueTable:[I

    iget-object v0, p0, Lcom/android/internal/telephony/ImsPrefValue;->mPrefValueTable:[I

    aput v2, v0, v2

    iget-object v0, p0, Lcom/android/internal/telephony/ImsPrefValue;->mPrefValueTable:[I

    const/4 v1, 0x1

    aput v2, v0, v1

    iget-object v0, p0, Lcom/android/internal/telephony/ImsPrefValue;->mPrefValueTable:[I

    const/4 v1, 0x2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/android/internal/telephony/ImsPrefValue;->mPrefValueTable:[I

    const/4 v1, 0x3

    aput v2, v0, v1

    iget-object v0, p0, Lcom/android/internal/telephony/ImsPrefValue;->mPrefValueTable:[I

    const/4 v1, 0x4

    aput v2, v0, v1

    iget-object v0, p0, Lcom/android/internal/telephony/ImsPrefValue;->mPrefValueTable:[I

    const/4 v1, 0x5

    aput v2, v0, v1

    iget-object v0, p0, Lcom/android/internal/telephony/ImsPrefValue;->mPrefValueTable:[I

    const/4 v1, 0x6

    aput v2, v0, v1

    iget-object v0, p0, Lcom/android/internal/telephony/ImsPrefValue;->mPrefValueTable:[I

    const/4 v1, 0x7

    aput v2, v0, v1

    iget-object v0, p0, Lcom/android/internal/telephony/ImsPrefValue;->mPrefValueTable:[I

    const/16 v1, 0x8

    aput v2, v0, v1

    iget-object v0, p0, Lcom/android/internal/telephony/ImsPrefValue;->mPrefValueTable:[I

    const/16 v1, 0x9

    aput v2, v0, v1

    iget-object v0, p0, Lcom/android/internal/telephony/ImsPrefValue;->mPrefValueTable:[I

    const/16 v1, 0xa

    aput v2, v0, v1

    iget-object v0, p0, Lcom/android/internal/telephony/ImsPrefValue;->mPrefValueTable:[I

    const/16 v1, 0xb

    aput v2, v0, v1

    iget-object v0, p0, Lcom/android/internal/telephony/ImsPrefValue;->mPrefValueTable:[I

    const/16 v1, 0xc

    aput v2, v0, v1

    return-void
.end method


# virtual methods
.method public isSsCsfbSupported()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/internal/telephony/ImsPrefValue;->mPrefValueTable:[I

    const/16 v2, 0x8

    aget v1, v1, v2

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setImsPrefValue(Landroid/os/AsyncResult;)V
    .locals 6
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_0

    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_0

    :try_start_0
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object v0, v3

    check-cast v0, [I

    move-object v2, v0

    .local v2, "setValue":[I
    iget-object v3, p0, Lcom/android/internal/telephony/ImsPrefValue;->mPrefValueTable:[I

    const/4 v4, 0x0

    const/4 v5, 0x0

    aget v5, v2, v5

    aput v5, v3, v4

    iget-object v3, p0, Lcom/android/internal/telephony/ImsPrefValue;->mPrefValueTable:[I

    const/4 v4, 0x1

    const/4 v5, 0x1

    aget v5, v2, v5

    aput v5, v3, v4

    iget-object v3, p0, Lcom/android/internal/telephony/ImsPrefValue;->mPrefValueTable:[I

    const/4 v4, 0x2

    const/4 v5, 0x2

    aget v5, v2, v5

    aput v5, v3, v4

    iget-object v3, p0, Lcom/android/internal/telephony/ImsPrefValue;->mPrefValueTable:[I

    const/4 v4, 0x3

    const/4 v5, 0x3

    aget v5, v2, v5

    aput v5, v3, v4

    iget-object v3, p0, Lcom/android/internal/telephony/ImsPrefValue;->mPrefValueTable:[I

    const/4 v4, 0x4

    const/4 v5, 0x4

    aget v5, v2, v5

    aput v5, v3, v4

    iget-object v3, p0, Lcom/android/internal/telephony/ImsPrefValue;->mPrefValueTable:[I

    const/4 v4, 0x5

    const/4 v5, 0x5

    aget v5, v2, v5

    aput v5, v3, v4

    iget-object v3, p0, Lcom/android/internal/telephony/ImsPrefValue;->mPrefValueTable:[I

    const/4 v4, 0x6

    const/4 v5, 0x6

    aget v5, v2, v5

    aput v5, v3, v4

    iget-object v3, p0, Lcom/android/internal/telephony/ImsPrefValue;->mPrefValueTable:[I

    const/4 v4, 0x7

    const/4 v5, 0x7

    aget v5, v2, v5

    aput v5, v3, v4

    iget-object v3, p0, Lcom/android/internal/telephony/ImsPrefValue;->mPrefValueTable:[I

    const/16 v4, 0x8

    const/16 v5, 0x8

    aget v5, v2, v5

    aput v5, v3, v4

    iget-object v3, p0, Lcom/android/internal/telephony/ImsPrefValue;->mPrefValueTable:[I

    const/16 v4, 0x9

    const/16 v5, 0x9

    aget v5, v2, v5

    aput v5, v3, v4

    iget-object v3, p0, Lcom/android/internal/telephony/ImsPrefValue;->mPrefValueTable:[I

    const/16 v4, 0xa

    const/16 v5, 0xa

    aget v5, v2, v5

    aput v5, v3, v4

    iget-object v3, p0, Lcom/android/internal/telephony/ImsPrefValue;->mPrefValueTable:[I

    const/16 v4, 0xb

    const/16 v5, 0xb

    aget v5, v2, v5

    aput v5, v3, v4

    iget-object v3, p0, Lcom/android/internal/telephony/ImsPrefValue;->mPrefValueTable:[I

    const/16 v4, 0xc

    const/16 v5, 0xc

    aget v5, v2, v5

    aput v5, v3, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "setValue":[I
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    .local v1, "ex":Ljava/lang/Exception;
    const-string v3, "ImsPrefValue"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ImsPrefValue error :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPrefValueTable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ImsPrefValue;->mPrefValueTable:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ImsPrefValue;->mPrefValueTable:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ImsPrefValue;->mPrefValueTable:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ImsPrefValue;->mPrefValueTable:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ImsPrefValue;->mPrefValueTable:[I

    const/4 v2, 0x4

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ImsPrefValue;->mPrefValueTable:[I

    const/4 v2, 0x5

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ImsPrefValue;->mPrefValueTable:[I

    const/4 v2, 0x6

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ImsPrefValue;->mPrefValueTable:[I

    const/4 v2, 0x7

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ImsPrefValue;->mPrefValueTable:[I

    const/16 v2, 0x8

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ImsPrefValue;->mPrefValueTable:[I

    const/16 v2, 0x9

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ImsPrefValue;->mPrefValueTable:[I

    const/16 v2, 0xb

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ImsPrefValue;->mPrefValueTable:[I

    const/16 v2, 0xc

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
