.class public Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;
.super Ljava/lang/Object;
.source "WifiHs20PPSMO.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PolicyUpdate"
.end annotation


# instance fields
.field public other:Ljava/lang/String;

.field public passwordUsernameobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;

.field public restriction:Ljava/lang/String;

.field public trustrootObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;

.field public updateInterval:J

.field public updateMethod:Ljava/lang/String;

.field public uri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
