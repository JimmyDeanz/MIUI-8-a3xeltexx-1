.class Lcom/android/server/wifi/WifiQualifiedNetworkSelector$CarrierScoreEvaluator;
.super Ljava/lang/Object;
.source "WifiQualifiedNetworkSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiQualifiedNetworkSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CarrierScoreEvaluator"
.end annotation


# instance fields
.field private final mDbg:Z

.field private mHighScore:I

.field private final mLocalLog:Landroid/util/LocalLog;

.field private mScanResultCandidate:Landroid/net/wifi/ScanResult;


# direct methods
.method constructor <init>(Landroid/util/LocalLog;Z)V
    .locals 1
    .param p1, "localLog"    # Landroid/util/LocalLog;
    .param p2, "dbg"    # Z

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, -0x80

    iput v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$CarrierScoreEvaluator;->mHighScore:I

    iput-object p1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$CarrierScoreEvaluator;->mLocalLog:Landroid/util/LocalLog;

    iput-boolean p2, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$CarrierScoreEvaluator;->mDbg:Z

    return-void
.end method

.method private localLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "log"    # Ljava/lang/String;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$CarrierScoreEvaluator;->mDbg:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$CarrierScoreEvaluator;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method evalCarrierCandidate(Landroid/net/wifi/ScanResult;I)V
    .locals 2
    .param p1, "scanResult"    # Landroid/net/wifi/ScanResult;
    .param p2, "score"    # I

    .prologue
    iget v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$CarrierScoreEvaluator;->mHighScore:I

    if-le p2, v0, :cond_0

    iput p2, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$CarrierScoreEvaluator;->mHighScore:I

    iput-object p1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$CarrierScoreEvaluator;->mScanResultCandidate:Landroid/net/wifi/ScanResult;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->-wrap0(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " become the new untrusted carrier network candidate"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$CarrierScoreEvaluator;->localLog(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method getHighScore()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$CarrierScoreEvaluator;->mHighScore:I

    return v0
.end method

.method public getScanResultCandidate()Landroid/net/wifi/ScanResult;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$CarrierScoreEvaluator;->mScanResultCandidate:Landroid/net/wifi/ScanResult;

    return-object v0
.end method
