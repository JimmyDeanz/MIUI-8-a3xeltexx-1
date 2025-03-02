.class public Lcom/sec/epdg/ipc/EpdgNetIpcMessage;
.super Lcom/sec/epdg/ipc/EpdgIpcMessage;
.source "EpdgNetIpcMessage.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "[NETIPCMESSAGE]"

.field private static final NET_EPDG_HANDOVER_THRESHOLD_LENGTH:I = 0x7

.field private static final NET_HANDOVER_LENGTH:I = 0x4

.field private static final NET_REGIST_LENGTH:I = 0xd


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/sec/epdg/ipc/EpdgIpcMessage;-><init>()V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0
    .param p1, "mainCmd"    # I
    .param p2, "subCmd"    # I
    .param p3, "cmdType"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/epdg/ipc/EpdgIpcMessage;-><init>(III)V

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0
    .param p1, "data"    # [B
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/sec/epdg/ipc/EpdgIpcMessage;-><init>([BI)V

    return-void
.end method


# virtual methods
.method public decodeHandoverResult()Lcom/sec/epdg/ipc/EpdgNetHandoverInfo;
    .locals 13

    .prologue
    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v10, p0, Lcom/sec/epdg/ipc/EpdgNetIpcMessage;->mIpcBody:[B

    invoke-direct {v1, v10}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .local v1, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .local v3, "dis":Ljava/io/DataInputStream;
    const/4 v6, 0x0

    .local v6, "netHandoverInfo":Lcom/sec/epdg/ipc/EpdgNetHandoverInfo;
    :try_start_0
    const-string v10, "[NETIPCMESSAGE]"

    const-string v11, "decodeHandoverResult"

    invoke-static {v10, v11}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    .local v2, "cause":I
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v9

    .local v9, "state":I
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    .local v0, "act":I
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v8

    .local v8, "pdnType":I
    new-instance v7, Lcom/sec/epdg/ipc/EpdgNetHandoverInfo;

    invoke-direct {v7, v9, v0, v8, v2}, Lcom/sec/epdg/ipc/EpdgNetHandoverInfo;-><init>(IIII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v6    # "netHandoverInfo":Lcom/sec/epdg/ipc/EpdgNetHandoverInfo;
    .local v7, "netHandoverInfo":Lcom/sec/epdg/ipc/EpdgNetHandoverInfo;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v6, v7

    .end local v0    # "act":I
    .end local v2    # "cause":I
    .end local v7    # "netHandoverInfo":Lcom/sec/epdg/ipc/EpdgNetHandoverInfo;
    .end local v8    # "pdnType":I
    .end local v9    # "state":I
    .restart local v6    # "netHandoverInfo":Lcom/sec/epdg/ipc/EpdgNetHandoverInfo;
    :goto_0
    return-object v6

    .end local v6    # "netHandoverInfo":Lcom/sec/epdg/ipc/EpdgNetHandoverInfo;
    .restart local v0    # "act":I
    .restart local v2    # "cause":I
    .restart local v7    # "netHandoverInfo":Lcom/sec/epdg/ipc/EpdgNetHandoverInfo;
    .restart local v8    # "pdnType":I
    .restart local v9    # "state":I
    :catch_0
    move-exception v4

    .local v4, "e":Ljava/io/IOException;
    const-string v10, "[NETIPCMESSAGE]"

    const-string v11, "decodeHandoverResult: IOException while closing stream"

    invoke-static {v10, v11}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    move-object v6, v7

    .end local v7    # "netHandoverInfo":Lcom/sec/epdg/ipc/EpdgNetHandoverInfo;
    .restart local v6    # "netHandoverInfo":Lcom/sec/epdg/ipc/EpdgNetHandoverInfo;
    goto :goto_0

    .end local v0    # "act":I
    .end local v2    # "cause":I
    .end local v4    # "e":Ljava/io/IOException;
    .end local v8    # "pdnType":I
    .end local v9    # "state":I
    :catch_1
    move-exception v5

    .local v5, "ex":Ljava/io/IOException;
    :try_start_2
    const-string v10, "[NETIPCMESSAGE]"

    const-string v11, "decodeHandoverResult: IOException "

    invoke-static {v10, v11}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception v4

    .restart local v4    # "e":Ljava/io/IOException;
    const-string v10, "[NETIPCMESSAGE]"

    const-string v11, "decodeHandoverResult: IOException while closing stream"

    invoke-static {v10, v11}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    :try_start_4
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :goto_1
    throw v10

    :catch_3
    move-exception v4

    .restart local v4    # "e":Ljava/io/IOException;
    const-string v11, "[NETIPCMESSAGE]"

    const-string v12, "decodeHandoverResult: IOException while closing stream"

    invoke-static {v11, v12}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public decodeNetRegQuery()Lcom/sec/epdg/ipc/EpdgNetReg;
    .locals 9

    .prologue
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v6, p0, Lcom/sec/epdg/ipc/EpdgNetIpcMessage;->mIpcBody:[B

    invoke-direct {v0, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .local v1, "dis":Ljava/io/DataInputStream;
    const/4 v4, 0x0

    .local v4, "netRegInfo":Lcom/sec/epdg/ipc/EpdgNetReg;
    :try_start_0
    const-string v6, "[NETIPCMESSAGE]"

    const-string v7, "Creating EpdgNetReg"

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcom/sec/epdg/ipc/EpdgNetReg;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v6

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    invoke-direct {v5, v6, v7}, Lcom/sec/epdg/ipc/EpdgNetReg;-><init>(BB)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v4    # "netRegInfo":Lcom/sec/epdg/ipc/EpdgNetReg;
    .local v5, "netRegInfo":Lcom/sec/epdg/ipc/EpdgNetReg;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v4, v5

    .end local v5    # "netRegInfo":Lcom/sec/epdg/ipc/EpdgNetReg;
    .restart local v4    # "netRegInfo":Lcom/sec/epdg/ipc/EpdgNetReg;
    :goto_0
    return-object v4

    .end local v4    # "netRegInfo":Lcom/sec/epdg/ipc/EpdgNetReg;
    .restart local v5    # "netRegInfo":Lcom/sec/epdg/ipc/EpdgNetReg;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    const-string v6, "[NETIPCMESSAGE]"

    const-string v7, "decodeNetRegQuery closing stream: IOException "

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v4, v5

    .end local v5    # "netRegInfo":Lcom/sec/epdg/ipc/EpdgNetReg;
    .restart local v4    # "netRegInfo":Lcom/sec/epdg/ipc/EpdgNetReg;
    goto :goto_0

    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .local v3, "ex":Ljava/io/IOException;
    :try_start_2
    const-string v6, "[NETIPCMESSAGE]"

    const-string v7, "decodeNetRegQuery: IOException "

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    const-string v6, "[NETIPCMESSAGE]"

    const-string v7, "decodeNetRegQuery closing stream: IOException "

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :try_start_4
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :goto_1
    throw v6

    :catch_3
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    const-string v7, "[NETIPCMESSAGE]"

    const-string v8, "decodeNetRegQuery closing stream: IOException "

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public encodeEpdgHoThreshold(IIIIIII)Z
    .locals 4
    .param p1, "state"    # I
    .param p2, "roveInLte"    # I
    .param p3, "roveOutLte"    # I
    .param p4, "roveIn3g"    # I
    .param p5, "roveOut3g"    # I
    .param p6, "roveIn2g"    # I
    .param p7, "roveOut2g"    # I

    .prologue
    const/4 v3, 0x1

    const-string v1, "[NETIPCMESSAGE]"

    const-string v2, "encodeNetRegist"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x7

    new-array v0, v1, [B

    .local v0, "data":[B
    const/4 v1, 0x0

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    int-to-byte v1, p2

    aput-byte v1, v0, v3

    const/4 v1, 0x2

    int-to-byte v2, p3

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    int-to-byte v2, p4

    aput-byte v2, v0, v1

    const/4 v1, 0x4

    int-to-byte v2, p5

    aput-byte v2, v0, v1

    const/4 v1, 0x5

    int-to-byte v2, p6

    aput-byte v2, v0, v1

    const/4 v1, 0x6

    int-to-byte v2, p7

    aput-byte v2, v0, v1

    iput-object v0, p0, Lcom/sec/epdg/ipc/EpdgNetIpcMessage;->mIpcBody:[B

    return v3
.end method

.method public encodeNetDataHandoverInfo(IIII)Z
    .locals 4
    .param p1, "cause"    # I
    .param p2, "state"    # I
    .param p3, "act"    # I
    .param p4, "pdntype"    # I

    .prologue
    const/4 v3, 0x1

    const-string v1, "[NETIPCMESSAGE]"

    const-string v2, "encodeNetDataHandoverInfo"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x4

    new-array v0, v1, [B

    .local v0, "data":[B
    const/4 v1, 0x0

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    int-to-byte v1, p2

    aput-byte v1, v0, v3

    const/4 v1, 0x2

    int-to-byte v2, p3

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    int-to-byte v2, p4

    aput-byte v2, v0, v1

    iput-object v0, p0, Lcom/sec/epdg/ipc/EpdgNetIpcMessage;->mIpcBody:[B

    return v3
.end method

.method public encodeNetRegist(II)Z
    .locals 4
    .param p1, "act"    # I
    .param p2, "reg_status"    # I

    .prologue
    const/4 v3, 0x1

    const-string v1, "[NETIPCMESSAGE]"

    const-string v2, "encodeNetRegist"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xd

    new-array v0, v1, [B

    .local v0, "data":[B
    const/4 v1, 0x0

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    aput-byte v1, v0, v3

    const/4 v1, 0x2

    int-to-byte v2, p2

    aput-byte v2, v0, v1

    iput-object v0, p0, Lcom/sec/epdg/ipc/EpdgNetIpcMessage;->mIpcBody:[B

    return v3
.end method
