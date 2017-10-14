.class public Lcom/android/server/wifi/util/InformationElementUtil$TrafficIndicationMap;
.super Ljava/lang/Object;
.source "InformationElementUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/util/InformationElementUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TrafficIndicationMap"
.end annotation


# static fields
.field private static final MAX_TIM_LENGTH:I = 0xfe


# instance fields
.field public mBitmapControl:I

.field public mDtimCount:I

.field public mDtimPeriod:I

.field public mLength:I

.field private mValid:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/android/server/wifi/util/InformationElementUtil$TrafficIndicationMap;->mValid:Z

    iput v0, p0, Lcom/android/server/wifi/util/InformationElementUtil$TrafficIndicationMap;->mLength:I

    iput v1, p0, Lcom/android/server/wifi/util/InformationElementUtil$TrafficIndicationMap;->mDtimCount:I

    iput v1, p0, Lcom/android/server/wifi/util/InformationElementUtil$TrafficIndicationMap;->mDtimPeriod:I

    iput v0, p0, Lcom/android/server/wifi/util/InformationElementUtil$TrafficIndicationMap;->mBitmapControl:I

    return-void
.end method


# virtual methods
.method public from(Landroid/net/wifi/ScanResult$InformationElement;)V
    .locals 4
    .param p1, "ie"    # Landroid/net/wifi/ScanResult$InformationElement;

    .prologue
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/wifi/util/InformationElementUtil$TrafficIndicationMap;->mValid:Z

    if-eqz p1, :cond_0

    iget-object v2, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    if-nez v2, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v2, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    array-length v2, v2

    iput v2, p0, Lcom/android/server/wifi/util/InformationElementUtil$TrafficIndicationMap;->mLength:I

    iget-object v2, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .local v0, "data":Ljava/nio/ByteBuffer;
    :try_start_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lcom/android/server/wifi/util/InformationElementUtil$TrafficIndicationMap;->mDtimCount:I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lcom/android/server/wifi/util/InformationElementUtil$TrafficIndicationMap;->mDtimPeriod:I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lcom/android/server/wifi/util/InformationElementUtil$TrafficIndicationMap;->mBitmapControl:I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    iget v2, p0, Lcom/android/server/wifi/util/InformationElementUtil$TrafficIndicationMap;->mLength:I

    const/16 v3, 0xfe

    if-gt v2, v3, :cond_2

    iget v2, p0, Lcom/android/server/wifi/util/InformationElementUtil$TrafficIndicationMap;->mDtimPeriod:I

    if-lez v2, :cond_2

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/wifi/util/InformationElementUtil$TrafficIndicationMap;->mValid:Z

    :cond_2
    return-void

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/nio/BufferUnderflowException;
    return-void
.end method

.method public isValid()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/wifi/util/InformationElementUtil$TrafficIndicationMap;->mValid:Z

    return v0
.end method
