.class public Lcom/android/phone/OtaUtils$CdmaOtaConfigData;
.super Ljava/lang/Object;
.source "OtaUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/OtaUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CdmaOtaConfigData"
.end annotation


# instance fields
.field public otaPlaySuccessFailureTone:I

.field public otaShowActivateFailTimes:I

.field public otaShowActivationScreen:I

.field public otaShowListeningScreen:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1464
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1466
    iput v0, p0, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;->otaShowActivationScreen:I

    .line 1467
    iput v0, p0, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;->otaShowListeningScreen:I

    .line 1468
    iput v0, p0, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;->otaShowActivateFailTimes:I

    .line 1469
    iput v0, p0, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;->otaPlaySuccessFailureTone:I

    .line 1470
    return-void
.end method
