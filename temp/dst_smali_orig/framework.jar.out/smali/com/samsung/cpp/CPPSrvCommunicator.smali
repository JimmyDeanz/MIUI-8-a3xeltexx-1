.class public Lcom/samsung/cpp/CPPSrvCommunicator;
.super Ljava/lang/Object;
.source "CPPSrvCommunicator.java"


# static fields
.field public static final CELLDB_REQUEST_MAX_COUNT:I = 0x3

.field public static final COMM_TYPE_GET_POLICY:I = 0x15f90

.field public static final COMM_TYPE_POST_REQ_CELLDB:I = 0x4e20

.field public static final COMM_TYPE_POST_REQ_WIFI_LOC:I = 0x7530

.field public static final FAIL_IO_EXCEPTION:I = 0x5

.field public static final FAIL_NO_SEVER_URL:I = 0x6

.field public static final HTTP_RESPONSE_CODE:Ljava/lang/String; = "http_response_code"

.field public static final HTTP_RESPONSE_MSG:Ljava/lang/String; = "http_response_msg"

.field public static final MODE:Ljava/lang/String; = "mode"

.field public static final POLICYID_UPDATE_REQUIRED:I = 0x4

.field public static final REQ_BODY:Ljava/lang/String; = "body"

.field public static final REQ_ID:Ljava/lang/String; = "req_id"

.field public static final RESULT_CODE:Ljava/lang/String; = "result_code"

.field public static final RESULT_MSG:Ljava/lang/String; = "result_msg"

.field public static final RESULT_SIZE:Ljava/lang/String; = "size"

.field public static final SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CPPSrvCommunicator"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private pin:Lcom/samsung/cpp/CPPPinning;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/cpp/CPPSrvCommunicator;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/samsung/cpp/CPPSrvCommunicator;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/cpp/CPPSrvCommunicator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/cpp/CPPPinning;->getInstance(Landroid/content/Context;)Lcom/samsung/cpp/CPPPinning;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/cpp/CPPSrvCommunicator;->pin:Lcom/samsung/cpp/CPPPinning;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/cpp/CPPSrvCommunicator;)Lcom/samsung/cpp/CPPPinning;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/cpp/CPPSrvCommunicator;

    .prologue
    iget-object v0, p0, Lcom/samsung/cpp/CPPSrvCommunicator;->pin:Lcom/samsung/cpp/CPPPinning;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/cpp/CPPSrvCommunicator;Ljava/lang/String;Ljava/lang/String;IJIIII)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/cpp/CPPSrvCommunicator;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I
    .param p4, "x4"    # J
    .param p6, "x5"    # I
    .param p7, "x6"    # I
    .param p8, "x7"    # I
    .param p9, "x8"    # I

    .prologue
    invoke-direct/range {p0 .. p9}, Lcom/samsung/cpp/CPPSrvCommunicator;->executeRequest(Ljava/lang/String;Ljava/lang/String;IJIIII)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/cpp/CPPSrvCommunicator;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/cpp/CPPSrvCommunicator;

    .prologue
    iget-object v0, p0, Lcom/samsung/cpp/CPPSrvCommunicator;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private executeRequest(Ljava/lang/String;Ljava/lang/String;IJIIII)V
    .locals 12
    .param p1, "body"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "req_id"    # J
    .param p6, "rat"    # I
    .param p7, "mode"    # I
    .param p8, "retryCount"    # I
    .param p9, "dbType"    # I

    .prologue
    new-instance v11, Ljava/lang/Thread;

    new-instance v0, Lcom/samsung/cpp/CPPSrvCommunicator$1;

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move-wide/from16 v4, p4

    move/from16 v6, p6

    move/from16 v7, p8

    move-object v8, p1

    move/from16 v9, p9

    move/from16 v10, p7

    invoke-direct/range {v0 .. v10}, Lcom/samsung/cpp/CPPSrvCommunicator$1;-><init>(Lcom/samsung/cpp/CPPSrvCommunicator;Ljava/lang/String;IJIILjava/lang/String;II)V

    invoke-direct {v11, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .local v11, "thread":Ljava/lang/Thread;
    invoke-virtual {v11}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private getUrlInfo(ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "type"    # I
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    invoke-static {p1}, Lcom/samsung/cpp/CPPPolicyHandler;->getPolicyServerURL(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "fullUrl":Ljava/lang/String;
    if-eqz p2, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x15f90

    if-ne p1, v1, :cond_0

    const-string v1, "&mcc=460"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "https://cn-prod-celltw.secb2b.com.cn/"

    const-string v1, "CPPSrvCommunicator"

    const-string v2, "getUrlInfo() chn default"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    const-string v1, "CPPSrvCommunicator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Final URL : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1
    const-string v0, "https://prod-celltw.secb2b.com/"

    const-string v1, "CPPSrvCommunicator"

    const-string v2, "getUrlInfo() : default"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public sendToSrv(ILjava/lang/String;JIII)V
    .locals 15
    .param p1, "type"    # I
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "req_id"    # J
    .param p5, "rat"    # I
    .param p6, "mode"    # I
    .param p7, "dbType"    # I

    .prologue
    const-string v2, "CPPSrvCommunicator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendToSrv() type : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", req_id : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", mode : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", rat : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p2}, Lcom/samsung/cpp/CPPSrvCommunicator;->getUrlInfo(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, "url":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "CPPSrvCommunicator"

    const-string v3, "sendToSrv() NO URL"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v12

    .local v12, "msg":Landroid/os/Message;
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .local v13, "result":Landroid/os/Bundle;
    const-string v2, "result_code"

    const/4 v3, 0x6

    invoke-virtual {v13, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "result_msg"

    const-string v3, "NO URL"

    invoke-virtual {v13, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "req_id"

    move-wide/from16 v0, p3

    invoke-virtual {v13, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 v2, 0x6

    iput v2, v12, Landroid/os/Message;->what:I

    move/from16 v0, p1

    iput v0, v12, Landroid/os/Message;->arg1:I

    move/from16 v0, p5

    iput v0, v12, Landroid/os/Message;->arg2:I

    invoke-virtual {v12, v13}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/samsung/cpp/CPPSrvCommunicator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v12}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .end local v12    # "msg":Landroid/os/Message;
    .end local v13    # "result":Landroid/os/Bundle;
    :goto_0
    return-void

    :cond_0
    const/4 v10, 0x0

    move-object v2, p0

    move-object/from16 v3, p2

    move/from16 v5, p1

    move-wide/from16 v6, p3

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v11, p7

    invoke-direct/range {v2 .. v11}, Lcom/samsung/cpp/CPPSrvCommunicator;->executeRequest(Ljava/lang/String;Ljava/lang/String;IJIIII)V

    goto :goto_0
.end method

.method public sendToSrvForLoc(IBLjava/lang/String;)V
    .locals 12
    .param p1, "clientId"    # I
    .param p2, "geoMode"    # B
    .param p3, "data"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x6

    const/4 v6, 0x0

    const-string v2, "http://54.191.12.98:8080/api/v1/wifis?_method=POST"

    .local v2, "url":Ljava/lang/String;
    const-string v0, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CPPSrvCommunicator"

    const-string v1, "sendToSrvForLoc() NO URL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v10

    .local v10, "msg":Landroid/os/Message;
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .local v11, "result":Landroid/os/Bundle;
    const-string v0, "result_code"

    invoke-virtual {v11, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "result_msg"

    const-string v1, "NO URL"

    invoke-virtual {v11, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iput v3, v10, Landroid/os/Message;->what:I

    invoke-virtual {v10, v11}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/cpp/CPPSrvCommunicator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .end local v10    # "msg":Landroid/os/Message;
    .end local v11    # "result":Landroid/os/Bundle;
    :goto_0
    return-void

    :cond_0
    const/16 v3, 0x7530

    int-to-long v4, p1

    move-object v0, p0

    move-object v1, p3

    move v7, p2

    move v8, v6

    move v9, v6

    invoke-direct/range {v0 .. v9}, Lcom/samsung/cpp/CPPSrvCommunicator;->executeRequest(Ljava/lang/String;Ljava/lang/String;IJIIII)V

    goto :goto_0
.end method
