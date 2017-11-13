.class Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;
.super Landroid/net/NetworkFactory;
.source "DctController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DctController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TelephonyNetworkFactory"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory$RequestLogger;
    }
.end annotation


# static fields
.field private static final MAX_LOG_LINES_PER_REQUEST:I = 0x32

.field private static final MAX_REQUESTS_LOGGED:I = 0x14


# instance fields
.field private final mPendingReq:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/net/NetworkRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mRequestLogs:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory$RequestLogger;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DctController;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/dataconnection/DctController;Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/Phone;Landroid/net/NetworkCapabilities;)V
    .locals 2
    .param p2, "l"    # Landroid/os/Looper;
    .param p3, "c"    # Landroid/content/Context;
    .param p4, "TAG"    # Ljava/lang/String;
    .param p5, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p6, "nc"    # Landroid/net/NetworkCapabilities;

    .prologue
    .line 1258
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    .line 1259
    invoke-direct {p0, p2, p3, p4, p6}, Landroid/net/NetworkFactory;-><init>(Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkCapabilities;)V

    .line 1239
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mPendingReq:Landroid/util/SparseArray;

    .line 1255
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mRequestLogs:Ljava/util/ArrayDeque;

    .line 1260
    iput-object p5, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetworkCapabilities: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    .line 1262
    return-void
.end method

.method private addLogger(Landroid/net/NetworkRequest;)Landroid/util/LocalLog;
    .locals 7
    .param p1, "request"    # Landroid/net/NetworkRequest;

    .prologue
    .line 1277
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mRequestLogs:Ljava/util/ArrayDeque;

    monitor-enter v5

    .line 1278
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mRequestLogs:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory$RequestLogger;

    .line 1279
    .local v3, "r":Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory$RequestLogger;
    iget-object v4, v3, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory$RequestLogger;->request:Landroid/net/NetworkRequest;

    iget v4, v4, Landroid/net/NetworkRequest;->requestId:I

    iget v6, p1, Landroid/net/NetworkRequest;->requestId:I

    if-ne v4, v6, :cond_0

    .line 1280
    iget-object v1, v3, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory$RequestLogger;->log:Landroid/util/LocalLog;

    monitor-exit v5

    .line 1289
    .end local v3    # "r":Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory$RequestLogger;
    :goto_0
    return-object v1

    .line 1283
    :cond_1
    new-instance v1, Landroid/util/LocalLog;

    const/16 v4, 0x32

    invoke-direct {v1, v4}, Landroid/util/LocalLog;-><init>(I)V

    .line 1284
    .local v1, "l":Landroid/util/LocalLog;
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory$RequestLogger;

    invoke-direct {v2, p0, p1, v1}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory$RequestLogger;-><init>(Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;Landroid/net/NetworkRequest;Landroid/util/LocalLog;)V

    .line 1285
    .local v2, "logger":Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory$RequestLogger;
    :goto_1
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mRequestLogs:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->size()I

    move-result v4

    const/16 v6, 0x14

    if-lt v4, v6, :cond_2

    .line 1286
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mRequestLogs:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    goto :goto_1

    .line 1290
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "l":Landroid/util/LocalLog;
    .end local v2    # "logger":Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory$RequestLogger;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 1288
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "l":Landroid/util/LocalLog;
    .restart local v2    # "logger":Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory$RequestLogger;
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mRequestLogs:Ljava/util/ArrayDeque;

    invoke-virtual {v4, v2}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 1289
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1445
    invoke-super {p0, p1, p2, p3}, Landroid/net/NetworkFactory;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1446
    new-instance v2, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v5, "  "

    invoke-direct {v2, p2, v5}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1447
    .local v2, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1448
    const-string v5, "Pending Requests:"

    invoke-virtual {v2, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1449
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1450
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mPendingReq:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 1451
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mPendingReq:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkRequest;

    .line 1452
    .local v4, "request":Landroid/net/NetworkRequest;
    invoke-virtual {v2, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 1450
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1454
    .end local v4    # "request":Landroid/net/NetworkRequest;
    :cond_0
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1456
    const-string v5, "Request History:"

    invoke-virtual {v2, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1457
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1458
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mRequestLogs:Ljava/util/ArrayDeque;

    monitor-enter v6

    .line 1459
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mRequestLogs:Ljava/util/ArrayDeque;

    invoke-virtual {v5}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory$RequestLogger;

    .line 1460
    .local v3, "r":Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory$RequestLogger;
    iget-object v5, v3, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory$RequestLogger;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v2, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 1461
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1462
    iget-object v5, v3, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory$RequestLogger;->log:Landroid/util/LocalLog;

    invoke-virtual {v5, p1, v2, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1463
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    goto :goto_1

    .line 1465
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "r":Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory$RequestLogger;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1466
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1467
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1468
    return-void
.end method

.method public evalPendingRequest()V
    .locals 5

    .prologue
    .line 1431
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "evalPendingRequest, pending request size is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mPendingReq:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    .line 1432
    const/4 v1, 0x0

    .line 1433
    .local v1, "key":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mPendingReq:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 1434
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mPendingReq:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 1435
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mPendingReq:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkRequest;

    .line 1436
    .local v2, "request":Landroid/net/NetworkRequest;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "evalPendingRequest: request = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    .line 1438
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mPendingReq:Landroid/util/SparseArray;

    iget v4, v2, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 1439
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->needNetworkFor(Landroid/net/NetworkRequest;I)V

    .line 1433
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1441
    .end local v2    # "request":Landroid/net/NetworkRequest;
    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1295
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1302
    invoke-super {p0, p1}, Landroid/net/NetworkFactory;->handleMessage(Landroid/os/Message;)V

    .line 1305
    :goto_0
    return-void

    .line 1297
    :pswitch_0
    invoke-super {p0, p1}, Landroid/net/NetworkFactory;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 1295
    nop

    :pswitch_data_0
    .packed-switch 0x83001
        :pswitch_0
    .end packed-switch
.end method

.method protected handleRemoveRequest(Landroid/net/NetworkRequest;)V
    .locals 2
    .param p1, "request"    # Landroid/net/NetworkRequest;

    .prologue
    .line 1309
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # getter for: Lcom/android/internal/telephony/dataconnection/DctController;->mRequestInfos:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DctController;->access$1200(Lcom/android/internal/telephony/dataconnection/DctController;)Ljava/util/HashMap;

    move-result-object v0

    iget v1, p1, Landroid/net/NetworkRequest;->requestId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mPendingReq:Landroid/util/SparseArray;

    iget v1, p1, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1310
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleRemoveRequest() mRequestInfos has key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    .line 1311
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->releaseNetworkFor(Landroid/net/NetworkRequest;)V

    .line 1313
    :cond_1
    return-void
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1427
    const-string v0, "DctController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[TNF "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1428
    return-void
.end method

.method protected needNetworkFor(Landroid/net/NetworkRequest;I)V
    .locals 9
    .param p1, "networkRequest"    # Landroid/net/NetworkRequest;
    .param p2, "score"    # I

    .prologue
    .line 1319
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cellular needs Network for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    .line 1321
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->addLogger(Landroid/net/NetworkRequest;)Landroid/util/LocalLog;

    move-result-object v3

    .line 1323
    .local v3, "l":Landroid/util/LocalLog;
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v7

    invoke-static {v7}, Landroid/telephony/SubscriptionManager;->isUsableSubIdValue(I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1324
    const-string v6, "SubId not useable, pending request."

    .line 1325
    .local v6, "str":Ljava/lang/String;
    const-string v7, "SubId not useable, pending request."

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    .line 1326
    const-string v7, "SubId not useable, pending request."

    invoke-virtual {v3, v7}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1327
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mPendingReq:Landroid/util/SparseArray;

    iget v8, p1, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v7, v8, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1373
    .end local v6    # "str":Ljava/lang/String;
    :goto_0
    return-void

    .line 1331
    :cond_0
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # invokes: Lcom/android/internal/telephony/dataconnection/DctController;->getRequestPhoneId(Landroid/net/NetworkRequest;)I
    invoke-static {v7, p1}, Lcom/android/internal/telephony/dataconnection/DctController;->access$1300(Lcom/android/internal/telephony/dataconnection/DctController;Landroid/net/NetworkRequest;)I

    move-result v7

    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v8

    if-ne v7, v8, :cond_6

    .line 1332
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v7, Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v7, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .line 1333
    .local v1, "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # invokes: Lcom/android/internal/telephony/dataconnection/DctController;->apnForNetworkRequest(Landroid/net/NetworkRequest;)Ljava/lang/String;
    invoke-static {v7, p1}, Lcom/android/internal/telephony/dataconnection/DctController;->access$1400(Lcom/android/internal/telephony/dataconnection/DctController;Landroid/net/NetworkRequest;)Ljava/lang/String;

    move-result-object v0

    .line 1335
    .local v0, "apn":Ljava/lang/String;
    const-string v7, "SPR"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1336
    const-string v7, "dun"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1337
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isApnTypeAvailable(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1338
    iget-object v7, v1, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAllApnSettings:Ljava/util/ArrayList;

    if-eqz v7, :cond_1

    iget-object v7, v1, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mAllApnSettings:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1339
    new-instance v2, Landroid/content/Intent;

    const-string v7, "com.samsung.android.intent.action.TETHERING_DENIED"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1340
    .local v2, "intent":Landroid/content/Intent;
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # getter for: Lcom/android/internal/telephony/dataconnection/DctController;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/internal/telephony/dataconnection/DctController;->access$800(Lcom/android/internal/telephony/dataconnection/DctController;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1343
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_1
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isDataAllowed()Z

    move-result v7

    if-nez v7, :cond_2

    .line 1344
    new-instance v2, Landroid/content/Intent;

    const-string v7, "com.samsung.android.intent.action.TETHERING_FAILED"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1345
    .restart local v2    # "intent":Landroid/content/Intent;
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # getter for: Lcom/android/internal/telephony/dataconnection/DctController;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/internal/telephony/dataconnection/DctController;->access$800(Lcom/android/internal/telephony/dataconnection/DctController;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1350
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_2
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isApnSupported(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1352
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # getter for: Lcom/android/internal/telephony/dataconnection/DctController;->mPhoneNum:I
    invoke-static {v7}, Lcom/android/internal/telephony/dataconnection/DctController;->access$1500(Lcom/android/internal/telephony/dataconnection/DctController;)I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_4

    const-string v7, "mms"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "mms2"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1353
    :cond_3
    iget-object v7, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v7}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Ljava/lang/String;

    move-result-object v5

    .line 1354
    .local v5, "specifier":Ljava/lang/String;
    if-eqz v5, :cond_4

    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 1355
    iget-object v7, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v7}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1356
    .local v4, "mmsSubId":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "needNetowkrFor, mmsSubId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", networkRequest ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    .line 1357
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # invokes: Lcom/android/internal/telephony/dataconnection/DctController;->setDataSubIdForMMS(I)V
    invoke-static {v7, v4}, Lcom/android/internal/telephony/dataconnection/DctController;->access$1600(Lcom/android/internal/telephony/dataconnection/DctController;I)V

    .line 1361
    .end local v4    # "mmsSubId":I
    .end local v5    # "specifier":Ljava/lang/String;
    :cond_4
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getApnPriority(Ljava/lang/String;)I

    move-result v8

    # invokes: Lcom/android/internal/telephony/dataconnection/DctController;->requestNetwork(Landroid/net/NetworkRequest;ILandroid/util/LocalLog;)I
    invoke-static {v7, p1, v8, v3}, Lcom/android/internal/telephony/dataconnection/DctController;->access$1700(Lcom/android/internal/telephony/dataconnection/DctController;Landroid/net/NetworkRequest;ILandroid/util/LocalLog;)I

    goto/16 :goto_0

    .line 1363
    :cond_5
    const-string v6, "Unsupported APN"

    .line 1364
    .restart local v6    # "str":Ljava/lang/String;
    const-string v7, "Unsupported APN"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    .line 1365
    const-string v7, "Unsupported APN"

    invoke-virtual {v3, v7}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1368
    .end local v0    # "apn":Ljava/lang/String;
    .end local v1    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    .end local v6    # "str":Ljava/lang/String;
    :cond_6
    const-string v6, "Request not send, put to pending"

    .line 1369
    .restart local v6    # "str":Ljava/lang/String;
    const-string v7, "Request not send, put to pending"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    .line 1370
    const-string v7, "Request not send, put to pending"

    invoke-virtual {v3, v7}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1371
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mPendingReq:Landroid/util/SparseArray;

    iget v8, p1, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v7, v8, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_0
.end method

.method protected releaseNetworkFor(Landroid/net/NetworkRequest;)V
    .locals 10
    .param p1, "networkRequest"    # Landroid/net/NetworkRequest;

    .prologue
    const/4 v9, -0x1

    .line 1377
    const-string v6, "Cellular releasing Network for "

    .line 1378
    .local v6, "str":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    .line 1379
    iget v7, p1, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {p0, v7, v6}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->requestLog(ILjava/lang/String;)Landroid/util/LocalLog;

    move-result-object v3

    .line 1381
    .local v3, "l":Landroid/util/LocalLog;
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v7

    invoke-static {v7}, Landroid/telephony/SubscriptionManager;->isUsableSubIdValue(I)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1382
    const-string v6, "Sub Info has not been ready, remove request."

    .line 1383
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    .line 1384
    if-eqz v3, :cond_0

    invoke-virtual {v3, v6}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1385
    :cond_0
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mPendingReq:Landroid/util/SparseArray;

    iget v8, p1, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->remove(I)V

    .line 1423
    :cond_1
    :goto_0
    return-void

    .line 1389
    :cond_2
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # invokes: Lcom/android/internal/telephony/dataconnection/DctController;->getRequestPhoneId(Landroid/net/NetworkRequest;)I
    invoke-static {v7, p1}, Lcom/android/internal/telephony/dataconnection/DctController;->access$1300(Lcom/android/internal/telephony/dataconnection/DctController;Landroid/net/NetworkRequest;)I

    move-result v7

    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v8

    if-ne v7, v8, :cond_6

    .line 1390
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v7, Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v7, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .line 1391
    .local v2, "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # invokes: Lcom/android/internal/telephony/dataconnection/DctController;->apnForNetworkRequest(Landroid/net/NetworkRequest;)Ljava/lang/String;
    invoke-static {v7, p1}, Lcom/android/internal/telephony/dataconnection/DctController;->access$1400(Lcom/android/internal/telephony/dataconnection/DctController;Landroid/net/NetworkRequest;)Ljava/lang/String;

    move-result-object v0

    .line 1392
    .local v0, "apn":Ljava/lang/String;
    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isApnSupported(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1394
    const-string v7, "ril.datacross.slotid"

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1395
    .local v1, "crossPhoneId":I
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # getter for: Lcom/android/internal/telephony/dataconnection/DctController;->mPhoneNum:I
    invoke-static {v7}, Lcom/android/internal/telephony/dataconnection/DctController;->access$1500(Lcom/android/internal/telephony/dataconnection/DctController;)I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_4

    if-eq v1, v9, :cond_4

    const-string v7, "mms"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "mms2"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1397
    :cond_3
    iget-object v7, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v7}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 1398
    .local v5, "mmsSubId":I
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # getter for: Lcom/android/internal/telephony/dataconnection/DctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;
    invoke-static {v7}, Lcom/android/internal/telephony/dataconnection/DctController;->access$500(Lcom/android/internal/telephony/dataconnection/DctController;)Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v4

    .line 1399
    .local v4, "mmsSlotId":I
    if-ne v4, v1, :cond_4

    .line 1400
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "releaseNetowkrFor, mmsSlotId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", networkRequest ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    .line 1401
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # getter for: Lcom/android/internal/telephony/dataconnection/DctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;
    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DctController;->access$500(Lcom/android/internal/telephony/dataconnection/DctController;)Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v8

    # invokes: Lcom/android/internal/telephony/dataconnection/DctController;->setDataSubIdForMMS(I)V
    invoke-static {v7, v8}, Lcom/android/internal/telephony/dataconnection/DctController;->access$1600(Lcom/android/internal/telephony/dataconnection/DctController;I)V

    .line 1406
    .end local v4    # "mmsSlotId":I
    .end local v5    # "mmsSubId":I
    :cond_4
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # invokes: Lcom/android/internal/telephony/dataconnection/DctController;->releaseNetwork(Landroid/net/NetworkRequest;)I
    invoke-static {v7, p1}, Lcom/android/internal/telephony/dataconnection/DctController;->access$1800(Lcom/android/internal/telephony/dataconnection/DctController;Landroid/net/NetworkRequest;)I

    .line 1407
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mPendingReq:Landroid/util/SparseArray;

    iget v8, p1, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 1408
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "requestId("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") is needed to remove from pending requests"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    .line 1409
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mPendingReq:Landroid/util/SparseArray;

    iget v8, p1, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->remove(I)V

    goto/16 :goto_0

    .line 1412
    .end local v1    # "crossPhoneId":I
    :cond_5
    const-string v6, "Unsupported APN"

    .line 1413
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    .line 1414
    if-eqz v3, :cond_1

    invoke-virtual {v3, v6}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1418
    .end local v0    # "apn":Ljava/lang/String;
    .end local v2    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    :cond_6
    const-string v6, "Request not released"

    .line 1419
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    .line 1420
    if-eqz v3, :cond_7

    invoke-virtual {v3, v6}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1421
    :cond_7
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mPendingReq:Landroid/util/SparseArray;

    iget v8, p1, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->remove(I)V

    goto/16 :goto_0
.end method

.method public requestLog(ILjava/lang/String;)Landroid/util/LocalLog;
    .locals 4
    .param p1, "requestId"    # I
    .param p2, "l"    # Ljava/lang/String;

    .prologue
    .line 1265
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mRequestLogs:Ljava/util/ArrayDeque;

    monitor-enter v3

    .line 1266
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->mRequestLogs:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory$RequestLogger;

    .line 1267
    .local v1, "r":Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory$RequestLogger;
    iget-object v2, v1, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory$RequestLogger;->request:Landroid/net/NetworkRequest;

    iget v2, v2, Landroid/net/NetworkRequest;->requestId:I

    if-ne v2, p1, :cond_0

    .line 1268
    iget-object v2, v1, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory$RequestLogger;->log:Landroid/util/LocalLog;

    invoke-virtual {v2, p2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1269
    iget-object v2, v1, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory$RequestLogger;->log:Landroid/util/LocalLog;

    monitor-exit v3

    .line 1273
    .end local v1    # "r":Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory$RequestLogger;
    :goto_0
    return-object v2

    .line 1272
    :cond_1
    monitor-exit v3

    .line 1273
    const/4 v2, 0x0

    goto :goto_0

    .line 1272
    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
