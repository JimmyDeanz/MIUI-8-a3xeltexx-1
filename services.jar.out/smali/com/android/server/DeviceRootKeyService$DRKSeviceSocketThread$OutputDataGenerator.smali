.class final Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;
.super Ljava/lang/Object;
.source "DeviceRootKeyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OutputDataGenerator"
.end annotation


# instance fields
.field private mCommandID:S

.field private mErrorCode:S

.field private mRawData:[B

.field private mRawDataSize:I

.field private mVersion:B

.field final synthetic this$1:Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;


# direct methods
.method public constructor <init>(Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 745
    iput-object p1, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->this$1:Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 746
    iput-byte v0, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->mVersion:B

    .line 747
    iput-short v0, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->mCommandID:S

    .line 748
    iput-short v0, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->mErrorCode:S

    .line 749
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->mRawDataSize:I

    .line 750
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->mRawData:[B

    .line 751
    return-void
.end method

.method private toBytes(I)[B
    .locals 2
    .param p1, "in"    # I

    .prologue
    .line 811
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 812
    .local v0, "bb":Ljava/nio/ByteBuffer;
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 813
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 814
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method private toBytes(S)[B
    .locals 2
    .param p1, "in"    # S

    .prologue
    .line 803
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 804
    .local v0, "bb":Ljava/nio/ByteBuffer;
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 805
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 806
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getOutputStreamData()[B
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 783
    iget v4, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->mRawDataSize:I

    add-int/lit8 v4, v4, 0x9

    new-array v3, v4, [B

    .line 784
    .local v3, "result":[B
    iget-short v4, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->mCommandID:S

    invoke-direct {p0, v4}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->toBytes(S)[B

    move-result-object v0

    .line 785
    .local v0, "commandID":[B
    iget-short v4, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->mErrorCode:S

    invoke-direct {p0, v4}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->toBytes(S)[B

    move-result-object v1

    .line 786
    .local v1, "errorCode":[B
    iget v4, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->mRawDataSize:I

    invoke-direct {p0, v4}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->toBytes(I)[B

    move-result-object v2

    .line 788
    .local v2, "rawDataSize":[B
    iget-byte v4, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->mVersion:B

    aput-byte v4, v3, v7

    .line 789
    const/4 v4, 0x1

    array-length v5, v0

    invoke-static {v0, v7, v3, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 790
    const/4 v4, 0x3

    array-length v5, v1

    invoke-static {v1, v7, v3, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 791
    const/4 v4, 0x5

    array-length v5, v2

    invoke-static {v2, v7, v3, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 793
    iget v4, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->mRawDataSize:I

    if-lez v4, :cond_0

    .line 794
    iget-object v4, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->mRawData:[B

    const/16 v5, 0x9

    iget v6, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->mRawDataSize:I

    invoke-static {v4, v7, v3, v5, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 796
    :cond_0
    const-string v4, "DeviceRootKeyServiceSocket"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sending data size  : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    return-object v3
.end method

.method public setCommandID(S)V
    .locals 0
    .param p1, "commandID"    # S

    .prologue
    .line 760
    iput-short p1, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->mCommandID:S

    .line 761
    return-void
.end method

.method public setErrorCode(S)V
    .locals 0
    .param p1, "errorCode"    # S

    .prologue
    .line 765
    iput-short p1, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->mErrorCode:S

    .line 766
    return-void
.end method

.method public setRawData(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 770
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->mRawData:[B

    .line 771
    iget-object v0, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->mRawData:[B

    array-length v0, v0

    iput v0, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->mRawDataSize:I

    .line 772
    return-void
.end method

.method public setRawData([B)V
    .locals 3
    .param p1, "in"    # [B

    .prologue
    const/4 v2, 0x0

    .line 776
    array-length v0, p1

    iput v0, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->mRawDataSize:I

    .line 777
    iget v0, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->mRawDataSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->mRawData:[B

    .line 778
    iget-object v0, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->mRawData:[B

    iget v1, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->mRawDataSize:I

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 779
    return-void
.end method

.method public setVersion(B)V
    .locals 0
    .param p1, "version"    # B

    .prologue
    .line 755
    iput-byte p1, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$OutputDataGenerator;->mVersion:B

    .line 756
    return-void
.end method
