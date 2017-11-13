.class public Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;
.super Ljava/lang/Object;
.source "WifiHs20PPSMO.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UsernamePassword"
.end annotation


# instance fields
.field public ableToShare:Z

.field public eapMethodobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;

.field public machineManaged:Z

.field public password:[B

.field public softTokenApp:Ljava/lang/String;

.field public username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
