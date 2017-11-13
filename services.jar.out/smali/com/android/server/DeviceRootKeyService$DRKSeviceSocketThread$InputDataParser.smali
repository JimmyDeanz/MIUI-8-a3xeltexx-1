.class final Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;
.super Ljava/lang/Object;
.source "DeviceRootKeyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InputDataParser"
.end annotation


# instance fields
.field private mCommandID:S

.field private mEnableTlv:Z

.field private mKeyType:I

.field private mRawData:[B

.field private mServiceName:Ljava/lang/String;

.field private mTlvTag:I

.field private mTlvValue:[B

.field private mVersion:B

.field final synthetic this$1:Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;


# direct methods
.method public constructor <init>(Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 577
    iput-object p1, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->this$1:Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 578
    iput-byte v0, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mVersion:B

    .line 579
    iput-short v0, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mCommandID:S

    .line 580
    iput v0, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mKeyType:I

    .line 581
    iput v0, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mTlvTag:I

    .line 582
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mEnableTlv:Z

    .line 583
    iput-object v1, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mServiceName:Ljava/lang/String;

    .line 584
    iput-object v1, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mTlvValue:[B

    .line 585
    iput-object v1, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mRawData:[B

    .line 586
    return-void
.end method

.method private ByteArrayToInt([B)I
    .locals 4
    .param p1, "in"    # [B

    .prologue
    const/4 v3, 0x4

    const/4 v1, 0x0

    .line 723
    array-length v2, p1

    if-ge v2, v3, :cond_0

    .line 729
    :goto_0
    return v1

    .line 726
    :cond_0
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 727
    .local v0, "bb":Ljava/nio/ByteBuffer;
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 728
    invoke-virtual {v0, p1, v1, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 729
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    goto :goto_0
.end method

.method private ByteArrayToShort([B)S
    .locals 4
    .param p1, "in"    # [B

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x0

    .line 712
    array-length v2, p1

    if-ge v2, v3, :cond_0

    .line 718
    :goto_0
    return v1

    .line 715
    :cond_0
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 716
    .local v0, "bb":Ljava/nio/ByteBuffer;
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 717
    invoke-virtual {v0, p1, v1, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 718
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public ParserData([B)Z
    .locals 12
    .param p1, "in"    # [B

    .prologue
    const/4 v11, 0x3

    const/16 v10, 0xc

    const/4 v9, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 630
    const/4 v6, 0x2

    new-array v1, v6, [B

    .line 631
    .local v1, "shortTemp":[B
    new-array v0, v9, [B

    .line 634
    .local v0, "intTemp":[B
    array-length v6, p1

    if-ge v6, v10, :cond_0

    .line 706
    :goto_0
    return v4

    .line 638
    :cond_0
    aget-byte v6, p1, v4

    iput-byte v6, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mVersion:B

    .line 641
    const/4 v6, 0x2

    invoke-static {p1, v5, v1, v4, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 642
    invoke-direct {p0, v1}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->ByteArrayToShort([B)S

    move-result v6

    iput-short v6, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mCommandID:S

    .line 644
    const-string v6, "DeviceRootKeyServiceSocket"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Version : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-byte v8, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mVersion:B

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", CommandID : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-short v8, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mCommandID:S

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    iget-short v6, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mCommandID:S

    packed-switch v6, :pswitch_data_0

    goto :goto_0

    .line 651
    :pswitch_0
    invoke-static {p1, v11, v0, v4, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 652
    invoke-direct {p0, v0}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->ByteArrayToInt([B)I

    move-result v4

    iput v4, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mKeyType:I

    move v4, v5

    .line 653
    goto :goto_0

    .line 657
    :pswitch_1
    const/4 v6, 0x7

    aget-byte v6, p1, v6

    if-ne v6, v5, :cond_1

    .line 658
    iput-boolean v5, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mEnableTlv:Z

    .line 663
    :goto_1
    invoke-static {p1, v11, v0, v4, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 664
    invoke-direct {p0, v0}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->ByteArrayToInt([B)I

    move-result v6

    iput v6, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mKeyType:I

    .line 667
    const/16 v6, 0x8

    invoke-static {p1, v6, v0, v4, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 668
    invoke-direct {p0, v0}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->ByteArrayToInt([B)I

    move-result v2

    .line 671
    .local v2, "strSize":I
    new-array v3, v2, [B

    .line 672
    .local v3, "stringTemp":[B
    invoke-static {p1, v10, v3, v4, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 673
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    iput-object v4, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mServiceName:Ljava/lang/String;

    move v4, v5

    .line 674
    goto :goto_0

    .line 660
    .end local v2    # "strSize":I
    .end local v3    # "stringTemp":[B
    :cond_1
    iput-boolean v4, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mEnableTlv:Z

    goto :goto_1

    :pswitch_2
    move v4, v5

    .line 679
    goto :goto_0

    .line 683
    :pswitch_3
    invoke-static {p1, v11, v0, v4, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 684
    invoke-direct {p0, v0}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->ByteArrayToInt([B)I

    move-result v6

    iput v6, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mTlvTag:I

    .line 687
    const/16 v6, 0x8

    invoke-static {p1, v6, v0, v4, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 688
    invoke-direct {p0, v0}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->ByteArrayToInt([B)I

    move-result v2

    .line 691
    .restart local v2    # "strSize":I
    new-array v6, v2, [B

    iput-object v6, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mTlvValue:[B

    .line 692
    iget-object v6, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mTlvValue:[B

    invoke-static {p1, v10, v6, v4, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    move v4, v5

    .line 693
    goto/16 :goto_0

    .line 697
    .end local v2    # "strSize":I
    :pswitch_4
    const/16 v6, 0x8

    invoke-static {p1, v6, v0, v4, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 698
    invoke-direct {p0, v0}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->ByteArrayToInt([B)I

    move-result v2

    .line 701
    .restart local v2    # "strSize":I
    new-array v6, v2, [B

    iput-object v6, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mRawData:[B

    .line 702
    iget-object v6, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mRawData:[B

    invoke-static {p1, v10, v6, v4, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    move v4, v5

    .line 703
    goto/16 :goto_0

    .line 646
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getCommandId()S
    .locals 1

    .prologue
    .line 595
    iget-short v0, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mCommandID:S

    return v0
.end method

.method public getEnableTlv()Z
    .locals 1

    .prologue
    .line 610
    iget-boolean v0, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mEnableTlv:Z

    return v0
.end method

.method public getKeyType()I
    .locals 1

    .prologue
    .line 600
    iget v0, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mKeyType:I

    return v0
.end method

.method public getRawData()[B
    .locals 1

    .prologue
    .line 625
    iget-object v0, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mRawData:[B

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 615
    iget-object v0, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mServiceName:Ljava/lang/String;

    return-object v0
.end method

.method public getTlvTag()I
    .locals 1

    .prologue
    .line 605
    iget v0, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mTlvTag:I

    return v0
.end method

.method public getTlvValue()[B
    .locals 1

    .prologue
    .line 620
    iget-object v0, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mTlvValue:[B

    return-object v0
.end method

.method public getVersion()B
    .locals 1

    .prologue
    .line 590
    iget-byte v0, p0, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread$InputDataParser;->mVersion:B

    return v0
.end method
