.class public Lcom/android/server/wifi/hs20/WifiHs20Timer;
.super Ljava/lang/Object;
.source "WifiHs20Timer.java"


# instance fields
.field public cred_id:I

.field public hs20_timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20Timer;->hs20_timer:Ljava/util/Timer;

    .line 14
    iput p1, p0, Lcom/android/server/wifi/hs20/WifiHs20Timer;->cred_id:I

    .line 15
    return-void
.end method
