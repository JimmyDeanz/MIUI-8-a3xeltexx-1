.class Lcom/samsung/android/server/wifi/WifiScanController$NLPScanSettings;
.super Ljava/lang/Object;
.source "WifiScanController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/WifiScanController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NLPScanSettings"
.end annotation


# instance fields
.field public mScanDelayMillis:J

.field public mScanType:I


# direct methods
.method public constructor <init>(IJ)V
    .locals 2
    .param p1, "scanType"    # I
    .param p2, "scanDelay"    # J

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/WifiScanController$NLPScanSettings;->mScanDelayMillis:J

    iput p1, p0, Lcom/samsung/android/server/wifi/WifiScanController$NLPScanSettings;->mScanType:I

    iput-wide p2, p0, Lcom/samsung/android/server/wifi/WifiScanController$NLPScanSettings;->mScanDelayMillis:J

    return-void
.end method
