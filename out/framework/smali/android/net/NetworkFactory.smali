.class public Landroid/net/NetworkFactory;
.super Landroid/os/Handler;
.source "NetworkFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/NetworkFactory$NetworkRequestInfo;
    }
.end annotation


# static fields
.field private static final BASE:I = 0x83000

.field public static final CMD_CANCEL_REQUEST:I = 0x83001

.field public static final CMD_REQUEST_NETWORK:I = 0x83000

.field private static final CMD_SET_FILTER:I = 0x83003

.field private static final CMD_SET_SCORE:I = 0x83002

.field private static final DBG:Z = true

.field private static final VDBG:Z = true


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private mCapabilityFilter:Landroid/net/NetworkCapabilities;

.field private mConfigNetworkTypeCapability:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mMessenger:Landroid/os/Messenger;

.field private final mNetworkRequests:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/net/NetworkFactory$NetworkRequestInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mRefCount:I

.field private mScore:I


# direct methods
.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkCapabilities;)V
    .locals 2
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "logTag"    # Ljava/lang/String;
    .param p4, "filter"    # Landroid/net/NetworkCapabilities;

    .prologue
    .line 124
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 111
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/net/NetworkFactory;->mNetworkRequests:Landroid/util/SparseArray;

    .line 117
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/NetworkFactory;->mRefCount:I

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/NetworkFactory;->mMessenger:Landroid/os/Messenger;

    .line 120
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_ConfigNetworkTypeCapability"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkFactory;->mConfigNetworkTypeCapability:Ljava/lang/String;

    .line 125
    iput-object p3, p0, Landroid/net/NetworkFactory;->LOG_TAG:Ljava/lang/String;

    .line 126
    iput-object p2, p0, Landroid/net/NetworkFactory;->mContext:Landroid/content/Context;

    .line 127
    iput-object p4, p0, Landroid/net/NetworkFactory;->mCapabilityFilter:Landroid/net/NetworkCapabilities;

    .line 128
    return-void
.end method

.method private evalRequest(Landroid/net/NetworkFactory$NetworkRequestInfo;)V
    .locals 6
    .param p1, "n"    # Landroid/net/NetworkFactory$NetworkRequestInfo;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 255
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "evalRequest evalRequest  = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/net/NetworkFactory$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " n.requested= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p1, Landroid/net/NetworkFactory$NetworkRequestInfo;->requested:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/net/NetworkFactory;->log(Ljava/lang/String;)V

    .line 256
    const-string v2, "evalRequest"

    invoke-virtual {p0, v2}, Landroid/net/NetworkFactory;->log(Ljava/lang/String;)V

    .line 257
    iget-object v2, p0, Landroid/net/NetworkFactory;->mConfigNetworkTypeCapability:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroid/net/NetworkFactory;->mConfigNetworkTypeCapability:Ljava/lang/String;

    const-string v3, "SPR-CDM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0}, Landroid/net/NetworkFactory;->isCdmaRat()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 258
    iget-boolean v2, p1, Landroid/net/NetworkFactory$NetworkRequestInfo;->requested:Z

    if-nez v2, :cond_2

    iget v2, p1, Landroid/net/NetworkFactory$NetworkRequestInfo;->score:I

    iget v3, p0, Landroid/net/NetworkFactory;->mScore:I

    if-ge v2, v3, :cond_0

    iget-object v2, p1, Landroid/net/NetworkFactory$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget-object v2, v2, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    iget-object v3, p0, Landroid/net/NetworkFactory;->mCapabilityFilter:Landroid/net/NetworkCapabilities;

    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->satisfiedByNetworkCapabilities(Landroid/net/NetworkCapabilities;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    iget-object v2, p1, Landroid/net/NetworkFactory$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v2, v2, Landroid/net/NetworkRequest;->legacyType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    :cond_1
    iget-object v2, p1, Landroid/net/NetworkFactory$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v3, p1, Landroid/net/NetworkFactory$NetworkRequestInfo;->score:I

    invoke-virtual {p0, v2, v3}, Landroid/net/NetworkFactory;->acceptRequest(Landroid/net/NetworkRequest;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 260
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CdmaRat evalRequest NetworkRequestInfo n.requested"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p1, Landroid/net/NetworkFactory$NetworkRequestInfo;->requested:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/net/NetworkFactory;->log(Ljava/lang/String;)V

    .line 261
    const-string v2, "  needNetworkFor"

    invoke-virtual {p0, v2}, Landroid/net/NetworkFactory;->log(Ljava/lang/String;)V

    .line 262
    iget-object v2, p1, Landroid/net/NetworkFactory$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v3, p1, Landroid/net/NetworkFactory$NetworkRequestInfo;->score:I

    invoke-virtual {p0, v2, v3}, Landroid/net/NetworkFactory;->needNetworkFor(Landroid/net/NetworkRequest;I)V

    .line 263
    iput-boolean v5, p1, Landroid/net/NetworkFactory$NetworkRequestInfo;->requested:Z

    .line 314
    :goto_0
    return-void

    .line 264
    :cond_2
    iget-boolean v2, p1, Landroid/net/NetworkFactory$NetworkRequestInfo;->requested:Z

    if-ne v2, v5, :cond_4

    iget v2, p1, Landroid/net/NetworkFactory$NetworkRequestInfo;->score:I

    iget v3, p0, Landroid/net/NetworkFactory;->mScore:I

    if-gt v2, v3, :cond_3

    iget-object v2, p1, Landroid/net/NetworkFactory$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget-object v2, v2, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    iget-object v3, p0, Landroid/net/NetworkFactory;->mCapabilityFilter:Landroid/net/NetworkCapabilities;

    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->satisfiedByNetworkCapabilities(Landroid/net/NetworkCapabilities;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p1, Landroid/net/NetworkFactory$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v3, p1, Landroid/net/NetworkFactory$NetworkRequestInfo;->score:I

    invoke-virtual {p0, v2, v3}, Landroid/net/NetworkFactory;->acceptRequest(Landroid/net/NetworkRequest;I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 267
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CdmaRat evalRequest NetworkRequestInfo n.requested"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p1, Landroid/net/NetworkFactory$NetworkRequestInfo;->requested:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/net/NetworkFactory;->log(Ljava/lang/String;)V

    .line 268
    const-string v2, "  releaseNetworkFor"

    invoke-virtual {p0, v2}, Landroid/net/NetworkFactory;->log(Ljava/lang/String;)V

    .line 269
    iget-object v2, p1, Landroid/net/NetworkFactory$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {p0, v2}, Landroid/net/NetworkFactory;->releaseNetworkFor(Landroid/net/NetworkRequest;)V

    .line 270
    iput-boolean v4, p1, Landroid/net/NetworkFactory$NetworkRequestInfo;->requested:Z

    goto :goto_0

    .line 272
    :cond_4
    const-string v2, "  done"

    invoke-virtual {p0, v2}, Landroid/net/NetworkFactory;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 276
    :cond_5
    iget-boolean v2, p1, Landroid/net/NetworkFactory$NetworkRequestInfo;->requested:Z

    if-nez v2, :cond_6

    iget v2, p1, Landroid/net/NetworkFactory$NetworkRequestInfo;->score:I

    iget v3, p0, Landroid/net/NetworkFactory;->mScore:I

    if-gt v2, v3, :cond_6

    iget-object v2, p1, Landroid/net/NetworkFactory$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget-object v2, v2, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    iget-object v3, p0, Landroid/net/NetworkFactory;->mCapabilityFilter:Landroid/net/NetworkCapabilities;

    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->satisfiedByNetworkCapabilities(Landroid/net/NetworkCapabilities;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p1, Landroid/net/NetworkFactory$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v3, p1, Landroid/net/NetworkFactory$NetworkRequestInfo;->score:I

    invoke-virtual {p0, v2, v3}, Landroid/net/NetworkFactory;->acceptRequest(Landroid/net/NetworkRequest;I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 278
    const-string v2, "  needNetworkFor"

    invoke-virtual {p0, v2}, Landroid/net/NetworkFactory;->log(Ljava/lang/String;)V

    .line 279
    iget-object v2, p1, Landroid/net/NetworkFactory$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v3, p1, Landroid/net/NetworkFactory$NetworkRequestInfo;->score:I

    invoke-virtual {p0, v2, v3}, Landroid/net/NetworkFactory;->needNetworkFor(Landroid/net/NetworkRequest;I)V

    .line 280
    iput-boolean v5, p1, Landroid/net/NetworkFactory$NetworkRequestInfo;->requested:Z

    goto :goto_0

    .line 281
    :cond_6
    iget-boolean v2, p1, Landroid/net/NetworkFactory$NetworkRequestInfo;->requested:Z

    if-ne v2, v5, :cond_a

    iget v2, p1, Landroid/net/NetworkFactory$NetworkRequestInfo;->score:I

    iget v3, p0, Landroid/net/NetworkFactory;->mScore:I

    if-gt v2, v3, :cond_7

    iget-object v2, p1, Landroid/net/NetworkFactory$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget-object v2, v2, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    iget-object v3, p0, Landroid/net/NetworkFactory;->mCapabilityFilter:Landroid/net/NetworkCapabilities;

    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->satisfiedByNetworkCapabilities(Landroid/net/NetworkCapabilities;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p1, Landroid/net/NetworkFactory$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v3, p1, Landroid/net/NetworkFactory$NetworkRequestInfo;->score:I

    invoke-virtual {p0, v2, v3}, Landroid/net/NetworkFactory;->acceptRequest(Landroid/net/NetworkRequest;I)Z

    move-result v2

    if-nez v2, :cond_a

    .line 285
    :cond_7
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_KeepMobileDataEvenWifiOn"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Landroid/net/NetworkFactory;->mCapabilityFilter:Landroid/net/NetworkCapabilities;

    invoke-virtual {v2}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    move-result-object v2

    array-length v2, v2

    if-lez v2, :cond_9

    iget-object v2, p0, Landroid/net/NetworkFactory;->mCapabilityFilter:Landroid/net/NetworkCapabilities;

    invoke-virtual {v2, v4}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p1, Landroid/net/NetworkFactory$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v2, v2, Landroid/net/NetworkRequest;->legacyType:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_9

    .line 289
    const-string v2, "connectivity"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v0

    .line 292
    .local v0, "connSvc":Landroid/net/IConnectivityManager;
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getActiveLinkProperties Interface : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Landroid/net/IConnectivityManager;->getActiveLinkProperties()Landroid/net/LinkProperties;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/net/NetworkFactory;->log(Ljava/lang/String;)V

    .line 293
    const-string v2, "bt-pan"

    invoke-interface {v0}, Landroid/net/IConnectivityManager;->getActiveLinkProperties()Landroid/net/LinkProperties;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 294
    const-string v2, "  releaseNetworkFor, BT is connected"

    invoke-virtual {p0, v2}, Landroid/net/NetworkFactory;->log(Ljava/lang/String;)V

    .line 295
    iget-object v2, p1, Landroid/net/NetworkFactory$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {p0, v2}, Landroid/net/NetworkFactory;->releaseNetworkFor(Landroid/net/NetworkRequest;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    :goto_1
    iput-boolean v4, p1, Landroid/net/NetworkFactory$NetworkRequestInfo;->requested:Z

    goto/16 :goto_0

    .line 297
    :cond_8
    :try_start_1
    const-string v2, "evalRequest >> cellular skip releasing from wifi connected"

    invoke-virtual {p0, v2}, Landroid/net/NetworkFactory;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 299
    :catch_0
    move-exception v1

    .line 300
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/net/NetworkFactory;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 306
    .end local v0    # "connSvc":Landroid/net/IConnectivityManager;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_9
    const-string v2, "  releaseNetworkFor"

    invoke-virtual {p0, v2}, Landroid/net/NetworkFactory;->log(Ljava/lang/String;)V

    .line 307
    iget-object v2, p1, Landroid/net/NetworkFactory$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {p0, v2}, Landroid/net/NetworkFactory;->releaseNetworkFor(Landroid/net/NetworkRequest;)V

    .line 308
    iput-boolean v4, p1, Landroid/net/NetworkFactory$NetworkRequestInfo;->requested:Z

    goto/16 :goto_0

    .line 311
    :cond_a
    const-string v2, "  done"

    invoke-virtual {p0, v2}, Landroid/net/NetworkFactory;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private evalRequests()V
    .locals 3

    .prologue
    .line 317
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid/net/NetworkFactory;->mNetworkRequests:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 318
    iget-object v2, p0, Landroid/net/NetworkFactory;->mNetworkRequests:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkFactory$NetworkRequestInfo;

    .line 320
    .local v1, "n":Landroid/net/NetworkFactory$NetworkRequestInfo;
    invoke-direct {p0, v1}, Landroid/net/NetworkFactory;->evalRequest(Landroid/net/NetworkFactory$NetworkRequestInfo;)V

    .line 317
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 322
    .end local v1    # "n":Landroid/net/NetworkFactory$NetworkRequestInfo;
    :cond_0
    return-void
.end method

.method private handleSetFilter(Landroid/net/NetworkCapabilities;)V
    .locals 0
    .param p1, "netCap"    # Landroid/net/NetworkCapabilities;

    .prologue
    .line 216
    iput-object p1, p0, Landroid/net/NetworkFactory;->mCapabilityFilter:Landroid/net/NetworkCapabilities;

    .line 217
    invoke-direct {p0}, Landroid/net/NetworkFactory;->evalRequests()V

    .line 218
    return-void
.end method

.method private handleSetScore(I)V
    .locals 0
    .param p1, "score"    # I

    .prologue
    .line 211
    iput p1, p0, Landroid/net/NetworkFactory;->mScore:I

    .line 212
    invoke-direct {p0}, Landroid/net/NetworkFactory;->evalRequests()V

    .line 213
    return-void
.end method

.method private isCdmaRat()Z
    .locals 3

    .prologue
    .line 244
    const-string/jumbo v1, "gsm.network.type"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, "networktype":Ljava/lang/String;
    const-string v1, "CDMA-IS95A"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CDMA-IS95B"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "1xRTT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "EvDo-rev.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "EvDo-rev.A"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "EvDo-rev.B"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 247
    :cond_0
    const/4 v1, 0x1

    .line 250
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public acceptRequest(Landroid/net/NetworkRequest;I)Z
    .locals 1
    .param p1, "request"    # Landroid/net/NetworkRequest;
    .param p2, "score"    # I

    .prologue
    .line 240
    const/4 v0, 0x1

    return v0
.end method

.method public addNetworkRequest(Landroid/net/NetworkRequest;I)V
    .locals 2
    .param p1, "networkRequest"    # Landroid/net/NetworkRequest;
    .param p2, "score"    # I

    .prologue
    .line 339
    const v0, 0x83000

    new-instance v1, Landroid/net/NetworkFactory$NetworkRequestInfo;

    invoke-direct {v1, p0, p1, p2}, Landroid/net/NetworkFactory$NetworkRequestInfo;-><init>(Landroid/net/NetworkFactory;Landroid/net/NetworkRequest;I)V

    invoke-virtual {p0, v0, v1}, Landroid/net/NetworkFactory;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/NetworkFactory;->sendMessage(Landroid/os/Message;)Z

    .line 341
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 365
    new-instance v1, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v2, "  "

    invoke-direct {v1, p2, v2}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 366
    .local v1, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    invoke-virtual {p0}, Landroid/net/NetworkFactory;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 367
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 368
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid/net/NetworkFactory;->mNetworkRequests:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 369
    iget-object v2, p0, Landroid/net/NetworkFactory;->mNetworkRequests:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 368
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 371
    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 372
    return-void
.end method

.method protected getRequestCount()I
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Landroid/net/NetworkFactory;->mNetworkRequests:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method protected handleAddRequest(Landroid/net/NetworkRequest;I)V
    .locals 3
    .param p1, "request"    # Landroid/net/NetworkRequest;
    .param p2, "score"    # I

    .prologue
    .line 187
    iget-object v1, p0, Landroid/net/NetworkFactory;->mNetworkRequests:Landroid/util/SparseArray;

    iget v2, p1, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkFactory$NetworkRequestInfo;

    .line 188
    .local v0, "n":Landroid/net/NetworkFactory$NetworkRequestInfo;
    if-nez v0, :cond_0

    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "got request "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with score "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/net/NetworkFactory;->log(Ljava/lang/String;)V

    .line 190
    new-instance v0, Landroid/net/NetworkFactory$NetworkRequestInfo;

    .end local v0    # "n":Landroid/net/NetworkFactory$NetworkRequestInfo;
    invoke-direct {v0, p0, p1, p2}, Landroid/net/NetworkFactory$NetworkRequestInfo;-><init>(Landroid/net/NetworkFactory;Landroid/net/NetworkRequest;I)V

    .line 191
    .restart local v0    # "n":Landroid/net/NetworkFactory$NetworkRequestInfo;
    iget-object v1, p0, Landroid/net/NetworkFactory;->mNetworkRequests:Landroid/util/SparseArray;

    iget-object v2, v0, Landroid/net/NetworkFactory$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v2, v2, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 196
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  my score="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/NetworkFactory;->mScore:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", my filter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/NetworkFactory;->mCapabilityFilter:Landroid/net/NetworkCapabilities;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/net/NetworkFactory;->log(Ljava/lang/String;)V

    .line 198
    invoke-direct {p0, v0}, Landroid/net/NetworkFactory;->evalRequest(Landroid/net/NetworkFactory$NetworkRequestInfo;)V

    .line 199
    return-void

    .line 193
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "new score "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for exisiting request "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/net/NetworkFactory;->log(Ljava/lang/String;)V

    .line 194
    iput p2, v0, Landroid/net/NetworkFactory$NetworkRequestInfo;->score:I

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 148
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 166
    :goto_0
    return-void

    .line 150
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/NetworkRequest;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0, v1}, Landroid/net/NetworkFactory;->handleAddRequest(Landroid/net/NetworkRequest;I)V

    goto :goto_0

    .line 154
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/NetworkRequest;

    invoke-virtual {p0, v0}, Landroid/net/NetworkFactory;->handleRemoveRequest(Landroid/net/NetworkRequest;)V

    goto :goto_0

    .line 158
    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Landroid/net/NetworkFactory;->handleSetScore(I)V

    goto :goto_0

    .line 162
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/NetworkCapabilities;

    invoke-direct {p0, v0}, Landroid/net/NetworkFactory;->handleSetFilter(Landroid/net/NetworkCapabilities;)V

    goto :goto_0

    .line 148
    :pswitch_data_0
    .packed-switch 0x83000
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected handleRemoveRequest(Landroid/net/NetworkRequest;)V
    .locals 3
    .param p1, "request"    # Landroid/net/NetworkRequest;

    .prologue
    .line 203
    iget-object v1, p0, Landroid/net/NetworkFactory;->mNetworkRequests:Landroid/util/SparseArray;

    iget v2, p1, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkFactory$NetworkRequestInfo;

    .line 204
    .local v0, "n":Landroid/net/NetworkFactory$NetworkRequestInfo;
    if-eqz v0, :cond_0

    .line 205
    iget-object v1, p0, Landroid/net/NetworkFactory;->mNetworkRequests:Landroid/util/SparseArray;

    iget v2, p1, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 206
    iget-boolean v1, v0, Landroid/net/NetworkFactory$NetworkRequestInfo;->requested:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/net/NetworkFactory$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {p0, v1}, Landroid/net/NetworkFactory;->releaseNetworkFor(Landroid/net/NetworkRequest;)V

    .line 208
    :cond_0
    return-void
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 361
    iget-object v0, p0, Landroid/net/NetworkFactory;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    return-void
.end method

.method protected needNetworkFor(Landroid/net/NetworkRequest;I)V
    .locals 2
    .param p1, "networkRequest"    # Landroid/net/NetworkRequest;
    .param p2, "score"    # I

    .prologue
    .line 330
    iget v0, p0, Landroid/net/NetworkFactory;->mRefCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/NetworkFactory;->mRefCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/net/NetworkFactory;->startNetwork()V

    .line 331
    :cond_0
    return-void
.end method

.method public register()V
    .locals 3

    .prologue
    .line 131
    const-string v0, "Registering NetworkFactory"

    invoke-virtual {p0, v0}, Landroid/net/NetworkFactory;->log(Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Landroid/net/NetworkFactory;->mMessenger:Landroid/os/Messenger;

    if-nez v0, :cond_0

    .line 133
    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/net/NetworkFactory;->mMessenger:Landroid/os/Messenger;

    .line 134
    iget-object v0, p0, Landroid/net/NetworkFactory;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/net/NetworkFactory;->mMessenger:Landroid/os/Messenger;

    iget-object v2, p0, Landroid/net/NetworkFactory;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->registerNetworkFactory(Landroid/os/Messenger;Ljava/lang/String;)V

    .line 136
    :cond_0
    return-void
.end method

.method protected releaseNetworkFor(Landroid/net/NetworkRequest;)V
    .locals 1
    .param p1, "networkRequest"    # Landroid/net/NetworkRequest;

    .prologue
    .line 334
    iget v0, p0, Landroid/net/NetworkFactory;->mRefCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/net/NetworkFactory;->mRefCount:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/net/NetworkFactory;->stopNetwork()V

    .line 335
    :cond_0
    return-void
.end method

.method public removeNetworkRequest(Landroid/net/NetworkRequest;)V
    .locals 1
    .param p1, "networkRequest"    # Landroid/net/NetworkRequest;

    .prologue
    .line 344
    const v0, 0x83001

    invoke-virtual {p0, v0, p1}, Landroid/net/NetworkFactory;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/NetworkFactory;->sendMessage(Landroid/os/Message;)Z

    .line 345
    return-void
.end method

.method public setCapabilityFilter(Landroid/net/NetworkCapabilities;)V
    .locals 2
    .param p1, "netCap"    # Landroid/net/NetworkCapabilities;

    .prologue
    .line 352
    const v0, 0x83003

    new-instance v1, Landroid/net/NetworkCapabilities;

    invoke-direct {v1, p1}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    invoke-virtual {p0, v0, v1}, Landroid/net/NetworkFactory;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/NetworkFactory;->sendMessage(Landroid/os/Message;)Z

    .line 353
    return-void
.end method

.method public setScoreFilter(I)V
    .locals 2
    .param p1, "score"    # I

    .prologue
    .line 348
    const v0, 0x83002

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/net/NetworkFactory;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/NetworkFactory;->sendMessage(Landroid/os/Message;)Z

    .line 349
    return-void
.end method

.method protected startNetwork()V
    .locals 0

    .prologue
    .line 325
    return-void
.end method

.method protected stopNetwork()V
    .locals 0

    .prologue
    .line 326
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 376
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "{"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/net/NetworkFactory;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - ScoreFilter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/NetworkFactory;->mScore:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Filter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/NetworkFactory;->mCapabilityFilter:Landroid/net/NetworkCapabilities;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", requests="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/NetworkFactory;->mNetworkRequests:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", refCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/NetworkFactory;->mRefCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 380
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public unregister()V
    .locals 2

    .prologue
    .line 139
    const-string v0, "Unregistering NetworkFactory"

    invoke-virtual {p0, v0}, Landroid/net/NetworkFactory;->log(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Landroid/net/NetworkFactory;->mMessenger:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Landroid/net/NetworkFactory;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/net/NetworkFactory;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkFactory(Landroid/os/Messenger;)V

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/NetworkFactory;->mMessenger:Landroid/os/Messenger;

    .line 144
    :cond_0
    return-void
.end method
