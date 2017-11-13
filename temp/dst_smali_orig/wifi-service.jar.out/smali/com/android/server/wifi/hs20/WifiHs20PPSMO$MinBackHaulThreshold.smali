.class public Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;
.super Ljava/lang/Object;
.source "WifiHs20PPSMO.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MinBackHaulThreshold"
.end annotation


# instance fields
.field public dlBandWidth:I

.field public minBackHaulThresholdID:Ljava/lang/String;

.field public networkType:Ljava/lang/String;

.field public ulBandWidth:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
