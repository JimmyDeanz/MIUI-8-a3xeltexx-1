.class public final Landroid/bluetooth/le/ScanSettings$Builder;
.super Ljava/lang/Object;
.source "ScanSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/le/ScanSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mCallbackType:I

.field private mCustomScanHighRssiFilterValue:I

.field private mCustomScanInterval:I

.field private mCustomScanLowRssiFilterValue:I

.field private mCustomScanWindow:I

.field private mMatchMode:I

.field private mNumOfMatchesPerFilter:I

.field private mReportDelayMillis:J

.field private mScanMode:I

.field private mScanResultType:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/16 v3, -0x80

    const/4 v2, 0x0

    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 286
    iput v2, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mScanMode:I

    .line 287
    iput v4, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mCallbackType:I

    .line 288
    iput v2, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mScanResultType:I

    .line 289
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mReportDelayMillis:J

    .line 290
    iput v4, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mMatchMode:I

    .line 291
    const/4 v0, 0x3

    iput v0, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mNumOfMatchesPerFilter:I

    .line 292
    iput v2, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mCustomScanInterval:I

    .line 293
    iput v2, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mCustomScanWindow:I

    .line 294
    iput v3, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mCustomScanHighRssiFilterValue:I

    .line 295
    iput v3, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mCustomScanLowRssiFilterValue:I

    return-void
.end method

.method private isValidCallbackType(I)Z
    .locals 2
    .param p1, "callbackType"    # I

    .prologue
    const/4 v0, 0x1

    .line 329
    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 334
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v1, 0x6

    if-eq p1, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public build()Landroid/bluetooth/le/ScanSettings;
    .locals 13

    .prologue
    .line 433
    new-instance v0, Landroid/bluetooth/le/ScanSettings;

    iget v1, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mScanMode:I

    iget v2, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mCallbackType:I

    iget v3, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mScanResultType:I

    iget-wide v4, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mReportDelayMillis:J

    iget v6, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mMatchMode:I

    iget v7, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mNumOfMatchesPerFilter:I

    iget v8, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mCustomScanInterval:I

    iget v9, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mCustomScanWindow:I

    iget v10, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mCustomScanHighRssiFilterValue:I

    iget v11, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mCustomScanLowRssiFilterValue:I

    const/4 v12, 0x0

    invoke-direct/range {v0 .. v12}, Landroid/bluetooth/le/ScanSettings;-><init>(IIIJIIIIIILandroid/bluetooth/le/ScanSettings$1;)V

    return-object v0
.end method

.method public setCallbackType(I)Landroid/bluetooth/le/ScanSettings$Builder;
    .locals 3
    .param p1, "callbackType"    # I

    .prologue
    .line 320
    invoke-direct {p0, p1}, Landroid/bluetooth/le/ScanSettings$Builder;->isValidCallbackType(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 321
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid callback type - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 323
    :cond_0
    iput p1, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mCallbackType:I

    .line 324
    return-object p0
.end method

.method public setCustomScanParams(II)Landroid/bluetooth/le/ScanSettings$Builder;
    .locals 0
    .param p1, "scanInterval"    # I
    .param p2, "scanWindow"    # I

    .prologue
    .line 412
    iput p1, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mCustomScanInterval:I

    .line 413
    iput p2, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mCustomScanWindow:I

    .line 414
    return-object p0
.end method

.method public setCustomScanRssiFilterValue(II)Landroid/bluetooth/le/ScanSettings$Builder;
    .locals 0
    .param p1, "highRssiThreshold"    # I
    .param p2, "lowRssiThreshold"    # I

    .prologue
    .line 424
    iput p1, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mCustomScanHighRssiFilterValue:I

    .line 425
    iput p2, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mCustomScanLowRssiFilterValue:I

    .line 426
    return-object p0
.end method

.method public setMatchMode(I)Landroid/bluetooth/le/ScanSettings$Builder;
    .locals 3
    .param p1, "matchMode"    # I

    .prologue
    .line 400
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/16 v0, 0x65

    if-le p1, v0, :cond_1

    .line 402
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid matchMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 404
    :cond_1
    iput p1, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mMatchMode:I

    .line 405
    return-object p0
.end method

.method public setNumOfMatches(I)Landroid/bluetooth/le/ScanSettings$Builder;
    .locals 3
    .param p1, "numOfMatches"    # I

    .prologue
    .line 383
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x3

    if-le p1, v0, :cond_1

    .line 385
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid numOfMatches "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 387
    :cond_1
    iput p1, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mNumOfMatchesPerFilter:I

    .line 388
    return-object p0
.end method

.method public setReportDelay(J)Landroid/bluetooth/le/ScanSettings$Builder;
    .locals 3
    .param p1, "reportDelayMillis"    # J

    .prologue
    .line 366
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 367
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "reportDelay must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 369
    :cond_0
    iput-wide p1, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mReportDelayMillis:J

    .line 370
    return-object p0
.end method

.method public setScanMode(I)Landroid/bluetooth/le/ScanSettings$Builder;
    .locals 3
    .param p1, "scanMode"    # I

    .prologue
    .line 305
    const/4 v0, -0x1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x2

    if-le p1, v0, :cond_1

    const/16 v0, 0x64

    if-eq p1, v0, :cond_1

    .line 306
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid scan mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 308
    :cond_1
    iput p1, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mScanMode:I

    .line 309
    return-object p0
.end method

.method public setScanResultType(I)Landroid/bluetooth/le/ScanSettings$Builder;
    .locals 3
    .param p1, "scanResultType"    # I

    .prologue
    .line 348
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    .line 350
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid scanResultType - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 353
    :cond_1
    iput p1, p0, Landroid/bluetooth/le/ScanSettings$Builder;->mScanResultType:I

    .line 354
    return-object p0
.end method
