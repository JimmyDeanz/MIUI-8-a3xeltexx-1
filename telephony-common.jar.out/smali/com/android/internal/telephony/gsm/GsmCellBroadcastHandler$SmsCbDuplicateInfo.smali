.class final Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbDuplicateInfo;
.super Ljava/lang/Object;
.source "GsmCellBroadcastHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SmsCbDuplicateInfo"
.end annotation


# instance fields
.field private final mGeographicalScope:I

.field private final mMessageIdentifier:I

.field private final mPageIndex:I

.field private final mPhoneId:I

.field private final mSerialNumber:I


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/gsm/SmsCbHeader;I)V
    .locals 1
    .param p1, "header"    # Lcom/android/internal/telephony/gsm/SmsCbHeader;
    .param p2, "phoneId"    # I

    .prologue
    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 374
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getServiceCategory()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbDuplicateInfo;->mMessageIdentifier:I

    .line 375
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getGeographicalScope()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbDuplicateInfo;->mGeographicalScope:I

    .line 376
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getSerialNumber()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbDuplicateInfo;->mSerialNumber:I

    .line 377
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getPageIndex()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbDuplicateInfo;->mPageIndex:I

    .line 378
    iput p2, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbDuplicateInfo;->mPhoneId:I

    .line 379
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 388
    instance-of v1, p1, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbDuplicateInfo;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 389
    check-cast v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbDuplicateInfo;

    .line 391
    .local v0, "other":Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbDuplicateInfo;
    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbDuplicateInfo;->mMessageIdentifier:I

    iget v2, v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbDuplicateInfo;->mMessageIdentifier:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbDuplicateInfo;->mGeographicalScope:I

    iget v2, v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbDuplicateInfo;->mGeographicalScope:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbDuplicateInfo;->mSerialNumber:I

    iget v2, v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbDuplicateInfo;->mSerialNumber:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbDuplicateInfo;->mPageIndex:I

    iget v2, v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbDuplicateInfo;->mPageIndex:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbDuplicateInfo;->mPhoneId:I

    iget v2, v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbDuplicateInfo;->mPhoneId:I

    if-ne v1, v2, :cond_0

    .line 396
    const/4 v1, 0x1

    .line 399
    .end local v0    # "other":Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbDuplicateInfo;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 383
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbDuplicateInfo;->mMessageIdentifier:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbDuplicateInfo;->mGeographicalScope:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbDuplicateInfo;->mSerialNumber:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbDuplicateInfo;->mPageIndex:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbDuplicateInfo;->mPhoneId:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SmsCbDuplicateInfo {GS= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbDuplicateInfo;->mGeographicalScope:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", SerialNumber= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbDuplicateInfo;->mSerialNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", MessageIdentifier= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbDuplicateInfo;->mMessageIdentifier:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", PageIndex= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbDuplicateInfo;->mPageIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPhoneId= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbDuplicateInfo;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
