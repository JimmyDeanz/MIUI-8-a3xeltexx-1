.class public Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;
.super Ljava/lang/Object;
.source "WifiHs20PPSMO.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SubscriptionParameters"
.end annotation


# instance fields
.field public creationDate:Ljava/lang/String;

.field public expirationDate:Ljava/lang/String;

.field public typeOfSubscription:Ljava/lang/String;

.field public usageLimitobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
