.class public Lcom/android/server/wifi/util/InformationElementUtil$RoamingConsortium;
.super Ljava/lang/Object;
.source "InformationElementUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/util/InformationElementUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RoamingConsortium"
.end annotation


# instance fields
.field public anqpOICount:I

.field public roamingConsortiums:[J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/util/InformationElementUtil$RoamingConsortium;->anqpOICount:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/util/InformationElementUtil$RoamingConsortium;->roamingConsortiums:[J

    return-void
.end method


# virtual methods
.method public from(Landroid/net/wifi/ScanResult$InformationElement;)V
    .locals 13
    .param p1, "ie"    # Landroid/net/wifi/ScanResult$InformationElement;

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    iget v6, p1, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    const/16 v7, 0x6f

    if-eq v6, v7, :cond_0

    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Element id is not ROAMING_CONSORTIUM, : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_0
    iget-object v6, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    sget-object v7, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .local v0, "data":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    iput v6, p0, Lcom/android/server/wifi/util/InformationElementUtil$RoamingConsortium;->anqpOICount:I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    and-int/lit16 v1, v6, 0xff

    .local v1, "oi12Length":I
    and-int/lit8 v2, v1, 0xf

    .local v2, "oi1Length":I
    ushr-int/lit8 v6, v1, 0x4

    and-int/lit8 v3, v6, 0xf

    .local v3, "oi2Length":I
    iget-object v6, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    array-length v6, v6

    add-int/lit8 v6, v6, -0x2

    sub-int/2addr v6, v2

    sub-int v4, v6, v3

    .local v4, "oi3Length":I
    const/4 v5, 0x0

    .local v5, "oiCount":I
    if-lez v2, :cond_1

    const/4 v5, 0x1

    if-lez v3, :cond_1

    add-int/lit8 v5, v5, 0x1

    if-lez v4, :cond_1

    add-int/lit8 v5, v5, 0x1

    :cond_1
    new-array v6, v5, [J

    iput-object v6, p0, Lcom/android/server/wifi/util/InformationElementUtil$RoamingConsortium;->roamingConsortiums:[J

    if-lez v2, :cond_2

    iget-object v6, p0, Lcom/android/server/wifi/util/InformationElementUtil$RoamingConsortium;->roamingConsortiums:[J

    array-length v6, v6

    if-lez v6, :cond_2

    iget-object v6, p0, Lcom/android/server/wifi/util/InformationElementUtil$RoamingConsortium;->roamingConsortiums:[J

    sget-object v7, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, v7, v2}, Lcom/android/server/wifi/anqp/Constants;->getInteger(Ljava/nio/ByteBuffer;Ljava/nio/ByteOrder;I)J

    move-result-wide v8

    aput-wide v8, v6, v10

    :cond_2
    if-lez v3, :cond_3

    iget-object v6, p0, Lcom/android/server/wifi/util/InformationElementUtil$RoamingConsortium;->roamingConsortiums:[J

    array-length v6, v6

    if-le v6, v11, :cond_3

    iget-object v6, p0, Lcom/android/server/wifi/util/InformationElementUtil$RoamingConsortium;->roamingConsortiums:[J

    sget-object v7, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, v7, v3}, Lcom/android/server/wifi/anqp/Constants;->getInteger(Ljava/nio/ByteBuffer;Ljava/nio/ByteOrder;I)J

    move-result-wide v8

    aput-wide v8, v6, v11

    :cond_3
    if-lez v4, :cond_4

    iget-object v6, p0, Lcom/android/server/wifi/util/InformationElementUtil$RoamingConsortium;->roamingConsortiums:[J

    array-length v6, v6

    if-le v6, v12, :cond_4

    iget-object v6, p0, Lcom/android/server/wifi/util/InformationElementUtil$RoamingConsortium;->roamingConsortiums:[J

    sget-object v7, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, v7, v4}, Lcom/android/server/wifi/anqp/Constants;->getInteger(Ljava/nio/ByteBuffer;Ljava/nio/ByteOrder;I)J

    move-result-wide v8

    aput-wide v8, v6, v12

    :cond_4
    return-void
.end method
