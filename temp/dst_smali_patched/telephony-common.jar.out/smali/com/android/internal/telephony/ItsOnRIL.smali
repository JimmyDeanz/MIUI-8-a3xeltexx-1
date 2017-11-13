.class public Lcom/android/internal/telephony/ItsOnRIL;
.super Lcom/android/internal/telephony/RIL;
.source "ItsOnRIL.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ItsOnRIL$ItsOnRilHandler;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field protected static final EVENT_POLL_CALLS_RESULT:I = 0x1

.field static final LOG_TAG:Ljava/lang/String; = "ItsOnRil"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field mIOPhoneClient:Lcom/itsoninc/android/ItsOnPhoneClient;

.field private final mInstanceId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IILjava/lang/Integer;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preferredNetworkType"    # I
    .param p3, "cdmaSubscription"    # I
    .param p4, "instanceId"    # Ljava/lang/Integer;

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;IILjava/lang/Integer;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Creating ril "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ItsOnRIL;->riljLog(Ljava/lang/String;)V

    if-nez p4, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/android/internal/telephony/ItsOnRIL;->mInstanceId:I

    iget v0, p0, Lcom/android/internal/telephony/ItsOnRIL;->mInstanceId:I

    invoke-static {p1, p0, v0}, Lcom/itsoninc/android/ItsOnPhoneClient;->getInstance(Landroid/content/Context;Lcom/android/internal/telephony/RIL;I)Lcom/itsoninc/android/ItsOnPhoneClient;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/ItsOnRIL;->mIOPhoneClient:Lcom/itsoninc/android/ItsOnPhoneClient;

    new-instance v0, Lcom/android/internal/telephony/ItsOnRIL$ItsOnRilHandler;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ItsOnRIL$ItsOnRilHandler;-><init>(Lcom/android/internal/telephony/ItsOnRIL;)V

    iput-object v0, p0, Lcom/android/internal/telephony/ItsOnRIL;->mHandler:Landroid/os/Handler;

    return-void

    :cond_0
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/ItsOnRIL;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/ItsOnRIL;

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/ItsOnRIL;->mInstanceId:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/ItsOnRIL;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/ItsOnRIL;

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/ItsOnRIL;->getSubId()I

    move-result v0

    return v0
.end method

.method private extractCdmaPdu(Landroid/os/Parcel;)[B
    .locals 8
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v7, 0x200

    invoke-direct {v1, v7}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .local v3, "dos":Ljava/io/DataOutputStream;
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v7

    invoke-virtual {v3, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/io/DataOutputStream;->write(I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/io/DataOutputStream;->write(I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/io/DataOutputStream;->write(I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/io/DataOutputStream;->write(I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .local v0, "address_nbr_of_digits":I
    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->write(I)V

    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v0, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v7

    invoke-virtual {v3, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/io/DataOutputStream;->write(I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v7

    invoke-virtual {v3, v7}, Ljava/io/DataOutputStream;->write(I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v6

    .local v6, "subaddr_nbr_of_digits":I
    invoke-virtual {v3, v6}, Ljava/io/DataOutputStream;->write(I)V

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v6, :cond_1

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v7

    invoke-virtual {v3, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, "bearerDataLength":I
    invoke-virtual {v3, v2}, Ljava/io/DataOutputStream;->write(I)V

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v2, :cond_2

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v7

    invoke-virtual {v3, v7}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .end local v0    # "address_nbr_of_digits":I
    .end local v2    # "bearerDataLength":I
    .end local v5    # "i":I
    .end local v6    # "subaddr_nbr_of_digits":I
    :catch_0
    move-exception v4

    .local v4, "e":Ljava/io/IOException;
    const-string v7, "Failed to convert SMS PDU"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/ItsOnRIL;->riljLog(Ljava/lang/String;)V

    .end local v4    # "e":Ljava/io/IOException;
    :cond_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    return-object v7
.end method

.method private findFromList(I)Lcom/android/internal/telephony/RILRequest;
    .locals 2
    .param p1, "serial"    # I

    .prologue
    iget-object v1, p0, Lcom/android/internal/telephony/ItsOnRIL;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/ItsOnRIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RILRequest;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getSubId()I
    .locals 2

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/ItsOnRIL;->mInstanceId:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method


# virtual methods
.method protected processSolicited(Landroid/os/Parcel;)Lcom/android/internal/telephony/RILRequest;
    .locals 13
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v8

    .local v8, "pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .local v11, "serial":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .local v7, "error":I
    invoke-direct {p0, v11}, Lcom/android/internal/telephony/ItsOnRIL;->findFromList(I)Lcom/android/internal/telephony/RILRequest;

    move-result-object v10

    .local v10, "rr":Lcom/android/internal/telephony/RILRequest;
    if-nez v10, :cond_0

    const-string v0, "ItsOnRil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected solicited response! sn: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v8}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-super {p0, p1}, Lcom/android/internal/telephony/RIL;->processSolicited(Landroid/os/Parcel;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processSolicited "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, v10, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/ItsOnRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ItsOnRIL;->riljLog(Ljava/lang/String;)V

    if-nez v7, :cond_4

    iget v0, v10, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    sparse-switch v0, :sswitch_data_0

    :cond_1
    :goto_1
    invoke-virtual {p1, v8}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-super {p0, p1}, Lcom/android/internal/telephony/RIL;->processSolicited(Landroid/os/Parcel;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    goto :goto_0

    :sswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/ItsOnRIL;->mIOPhoneClient:Lcom/itsoninc/android/ItsOnPhoneClient;

    iget v3, v10, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    iget v4, p0, Lcom/android/internal/telephony/ItsOnRIL;->mInstanceId:I

    invoke-direct {p0}, Lcom/android/internal/telephony/ItsOnRIL;->getSubId()I

    move-result v5

    invoke-virtual {v0, v3, v4, v5}, Lcom/itsoninc/android/ItsOnPhoneClient;->sendSMSSuccess(III)V

    goto :goto_1

    :sswitch_1
    iget-object v0, v10, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    .local v6, "cp":Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    const/4 v2, 0x0

    .local v2, "apn":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "iface":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->getApnContext()Lcom/android/internal/telephony/dataconnection/ApnContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnSetting()Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->getApnContext()Lcom/android/internal/telephony/dataconnection/ApnContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnSetting()Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->getApnContext()Lcom/android/internal/telephony/dataconnection/ApnContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnSetting()Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    :cond_2
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ItsOnRIL;->responseSetupDataCall(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    .local v9, "result":Lcom/android/internal/telephony/dataconnection/DataCallResponse;
    iget-object v0, v9, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->ifname:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, v9, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->ifname:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v1, v9, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->ifname:Ljava/lang/String;

    :cond_3
    if-eqz v2, :cond_1

    iget v0, v9, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->status:I

    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "New session apn "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " iface "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " type "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->getApnContext()Lcom/android/internal/telephony/dataconnection/ApnContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ItsOnRIL;->riljLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/ItsOnRIL;->mIOPhoneClient:Lcom/itsoninc/android/ItsOnPhoneClient;

    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->getApnContext()Lcom/android/internal/telephony/dataconnection/ApnContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/ItsOnRIL;->mInstanceId:I

    invoke-direct {p0}, Lcom/android/internal/telephony/ItsOnRIL;->getSubId()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/itsoninc/android/ItsOnPhoneClient;->onNewDataSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .end local v9    # "result":Lcom/android/internal/telephony/dataconnection/DataCallResponse;
    :catch_0
    move-exception v12

    .local v12, "t":Ljava/lang/Throwable;
    const-string v0, "ERROR: fail to parse call state "

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ItsOnRIL;->riljLog(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ERROR: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ItsOnRIL;->riljLog(Ljava/lang/String;)V

    goto/16 :goto_1

    .end local v1    # "iface":Ljava/lang/String;
    .end local v2    # "apn":Ljava/lang/String;
    .end local v6    # "cp":Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    .end local v12    # "t":Ljava/lang/Throwable;
    :cond_4
    iget v0, v10, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    sparse-switch v0, :sswitch_data_1

    goto/16 :goto_1

    :sswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/ItsOnRIL;->mIOPhoneClient:Lcom/itsoninc/android/ItsOnPhoneClient;

    iget v3, v10, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    iget v4, p0, Lcom/android/internal/telephony/ItsOnRIL;->mInstanceId:I

    invoke-direct {p0}, Lcom/android/internal/telephony/ItsOnRIL;->getSubId()I

    move-result v5

    invoke-virtual {v0, v3, v4, v5}, Lcom/itsoninc/android/ItsOnPhoneClient;->sendSMSError(III)V

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0x19 -> :sswitch_0
        0x1a -> :sswitch_0
        0x1b -> :sswitch_1
        0x57 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x19 -> :sswitch_2
        0x1a -> :sswitch_2
        0x57 -> :sswitch_2
    .end sparse-switch
.end method

.method protected processUnsolicited(Landroid/os/Parcel;)V
    .locals 13
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    .local v5, "pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, "response":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "processUnsolicited "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v6}, Lcom/android/internal/telephony/ItsOnRIL;->responseToString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/ItsOnRIL;->riljLog(Ljava/lang/String;)V

    sparse-switch v6, :sswitch_data_0

    :cond_0
    :goto_0
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-super {p0, p1}, Lcom/android/internal/telephony/RIL;->processUnsolicited(Landroid/os/Parcel;)V

    :goto_1
    return-void

    :sswitch_0
    const/4 v9, 0x2

    new-array v0, v9, [Ljava/lang/String;

    .local v0, "a":[Ljava/lang/String;
    const/4 v9, 0x1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v0, v9

    invoke-static {v0}, Landroid/telephony/SmsMessage;->newFromCMT([Ljava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v8

    .local v8, "sms":Landroid/telephony/SmsMessage;
    iget-object v9, p0, Lcom/android/internal/telephony/ItsOnRIL;->mIOPhoneClient:Lcom/itsoninc/android/ItsOnPhoneClient;

    iget v10, p0, Lcom/android/internal/telephony/ItsOnRIL;->mInstanceId:I

    invoke-direct {p0}, Lcom/android/internal/telephony/ItsOnRIL;->getSubId()I

    move-result v11

    invoke-virtual {v9, v8, v10, v11}, Lcom/itsoninc/android/ItsOnPhoneClient;->authorizeIncomingSMS(Landroid/telephony/SmsMessage;II)Z

    move-result v9

    if-nez v9, :cond_0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {p0, v9, v10, v11}, Lcom/android/internal/telephony/ItsOnRIL;->acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V

    goto :goto_1

    .end local v0    # "a":[Ljava/lang/String;
    .end local v8    # "sms":Landroid/telephony/SmsMessage;
    :sswitch_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .local v4, "nitzTime":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .local v2, "nitzReceiveTime":J
    iget-object v9, p0, Lcom/android/internal/telephony/ItsOnRIL;->mIOPhoneClient:Lcom/itsoninc/android/ItsOnPhoneClient;

    invoke-virtual {v9, v4, v2, v3}, Lcom/itsoninc/android/ItsOnPhoneClient;->nitzTimeReceived(Ljava/lang/String;J)V

    goto :goto_0

    .end local v2    # "nitzReceiveTime":J
    .end local v4    # "nitzTime":Ljava/lang/String;
    :sswitch_2
    invoke-static {p1}, Landroid/telephony/SmsMessage;->newFromParcel(Landroid/os/Parcel;)Landroid/telephony/SmsMessage;

    move-result-object v8

    .restart local v8    # "sms":Landroid/telephony/SmsMessage;
    iget-object v9, v8, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    iget-object v9, v9, Lcom/android/internal/telephony/SmsMessageBase;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    new-instance v10, Ljava/lang/String;

    iget-object v11, v8, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    iget-object v11, v11, Lcom/android/internal/telephony/SmsMessageBase;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    iget-object v11, v11, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    invoke-direct {v10, v11}, Ljava/lang/String;-><init>([B)V

    iput-object v10, v9, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/internal/telephony/ItsOnRIL;->mIOPhoneClient:Lcom/itsoninc/android/ItsOnPhoneClient;

    iget v10, p0, Lcom/android/internal/telephony/ItsOnRIL;->mInstanceId:I

    invoke-direct {p0}, Lcom/android/internal/telephony/ItsOnRIL;->getSubId()I

    move-result v11

    invoke-virtual {v9, v8, v10, v11}, Lcom/itsoninc/android/ItsOnPhoneClient;->authorizeIncomingSMS(Landroid/telephony/SmsMessage;II)Z

    move-result v9

    if-nez v9, :cond_0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {p0, v9, v10, v11}, Lcom/android/internal/telephony/ItsOnRIL;->acknowledgeLastIncomingCdmaSms(ZILandroid/os/Message;)V

    goto :goto_1

    .end local v8    # "sms":Landroid/telephony/SmsMessage;
    :sswitch_3
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ItsOnRIL;->responseCdmaCallWaiting(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;

    .local v1, "cwNot":Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;
    iget-object v9, p0, Lcom/android/internal/telephony/ItsOnRIL;->mIOPhoneClient:Lcom/itsoninc/android/ItsOnPhoneClient;

    iget-object v10, v1, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->number:Ljava/lang/String;

    iget v11, p0, Lcom/android/internal/telephony/ItsOnRIL;->mInstanceId:I

    invoke-direct {p0}, Lcom/android/internal/telephony/ItsOnRIL;->getSubId()I

    move-result v12

    invoke-virtual {v9, v10, v11, v12}, Lcom/itsoninc/android/ItsOnPhoneClient;->callWaiting(Ljava/lang/String;II)Z

    move-result v9

    if-nez v9, :cond_0

    goto :goto_1

    .end local v1    # "cwNot":Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;
    :sswitch_4
    iget v9, p0, Lcom/android/internal/telephony/ItsOnRIL;->mPhoneType:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_0

    iget-object v9, p0, Lcom/android/internal/telephony/ItsOnRIL;->mHandler:Landroid/os/Handler;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/internal/telephony/ItsOnRIL;->mHandler:Landroid/os/Handler;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .local v7, "result":Landroid/os/Message;
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/ItsOnRIL;->getCurrentCalls(Landroid/os/Message;)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3eb -> :sswitch_0
        0x3f0 -> :sswitch_1
        0x3fa -> :sswitch_4
        0x3fc -> :sswitch_2
        0x401 -> :sswitch_3
    .end sparse-switch
.end method

.method protected responseCallList(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 4
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const-string v1, "Processing response call list"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ItsOnRIL;->riljLog(Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/android/internal/telephony/RIL;->responseCallList(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .local v0, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/DriverCall;>;"
    iget v1, p0, Lcom/android/internal/telephony/ItsOnRIL;->mPhoneType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/ItsOnRIL;->mIOPhoneClient:Lcom/itsoninc/android/ItsOnPhoneClient;

    iget v2, p0, Lcom/android/internal/telephony/ItsOnRIL;->mInstanceId:I

    invoke-direct {p0}, Lcom/android/internal/telephony/ItsOnRIL;->getSubId()I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/itsoninc/android/ItsOnPhoneClient;->trackCdmaCalls(Ljava/util/List;II)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/ItsOnRIL;->mIOPhoneClient:Lcom/itsoninc/android/ItsOnPhoneClient;

    iget v2, p0, Lcom/android/internal/telephony/ItsOnRIL;->mInstanceId:I

    invoke-direct {p0}, Lcom/android/internal/telephony/ItsOnRIL;->getSubId()I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/itsoninc/android/ItsOnPhoneClient;->trackCalls(Ljava/util/List;II)V

    goto :goto_0
.end method

.method protected riljLog(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    return-void
.end method

.method protected send(Lcom/android/internal/telephony/RILRequest;)V
    .locals 10
    .param p1, "rr"    # Lcom/android/internal/telephony/RILRequest;

    .prologue
    const/4 v9, 0x0

    const/16 v5, 0x8

    const/4 v8, 0x2

    iget-object v4, p1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    .local v3, "pos":I
    iget v4, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_0
    iget-object v4, p1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-super {p0, p1}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    :goto_1
    return-void

    :sswitch_0
    iget v4, p0, Lcom/android/internal/telephony/ItsOnRIL;->mPhoneType:I

    if-ne v4, v8, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/ItsOnRIL;->mIOPhoneClient:Lcom/itsoninc/android/ItsOnPhoneClient;

    iget v5, p0, Lcom/android/internal/telephony/ItsOnRIL;->mInstanceId:I

    invoke-direct {p0}, Lcom/android/internal/telephony/ItsOnRIL;->getSubId()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/itsoninc/android/ItsOnPhoneClient;->acceptCall(II)V

    goto :goto_0

    :sswitch_1
    iget-object v4, p1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    iget-object v4, p1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    iget-object v4, p1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    iget-object v4, p1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .local v1, "pdu":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    .local v2, "pduBytes":[B
    iget-object v4, p0, Lcom/android/internal/telephony/ItsOnRIL;->mIOPhoneClient:Lcom/itsoninc/android/ItsOnPhoneClient;

    iget v5, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    iget v6, p0, Lcom/android/internal/telephony/ItsOnRIL;->mInstanceId:I

    invoke-direct {p0}, Lcom/android/internal/telephony/ItsOnRIL;->getSubId()I

    move-result v7

    invoke-virtual {v4, v2, v5, v6, v7}, Lcom/itsoninc/android/ItsOnPhoneClient;->authorizeOutgoingSMS([BIII)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p1, v8, v9}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->release()V

    goto :goto_1

    .end local v1    # "pdu":Ljava/lang/String;
    .end local v2    # "pduBytes":[B
    :sswitch_2
    iget-object v4, p1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    iget-object v4, p1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/ItsOnRIL;->extractCdmaPdu(Landroid/os/Parcel;)[B

    move-result-object v2

    .restart local v2    # "pduBytes":[B
    iget-object v4, p0, Lcom/android/internal/telephony/ItsOnRIL;->mIOPhoneClient:Lcom/itsoninc/android/ItsOnPhoneClient;

    iget v5, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    iget v6, p0, Lcom/android/internal/telephony/ItsOnRIL;->mInstanceId:I

    invoke-direct {p0}, Lcom/android/internal/telephony/ItsOnRIL;->getSubId()I

    move-result v7

    invoke-virtual {v4, v2, v5, v6, v7}, Lcom/itsoninc/android/ItsOnPhoneClient;->authorizeOutgoingSMS([BIII)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p1, v8, v9}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->release()V

    goto :goto_1

    .end local v2    # "pduBytes":[B
    :sswitch_3
    iget-object v4, p1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    iget-object v4, p1, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .local v0, "featureCode":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/ItsOnRIL;->mIOPhoneClient:Lcom/itsoninc/android/ItsOnPhoneClient;

    iget v5, p0, Lcom/android/internal/telephony/ItsOnRIL;->mInstanceId:I

    invoke-direct {p0}, Lcom/android/internal/telephony/ItsOnRIL;->getSubId()I

    move-result v6

    invoke-virtual {v4, v0, v5, v6}, Lcom/itsoninc/android/ItsOnPhoneClient;->flash(Ljava/lang/String;II)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p1, v8, v9}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->release()V

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x19 -> :sswitch_1
        0x1a -> :sswitch_1
        0x28 -> :sswitch_0
        0x54 -> :sswitch_3
        0x57 -> :sswitch_2
    .end sparse-switch
.end method
