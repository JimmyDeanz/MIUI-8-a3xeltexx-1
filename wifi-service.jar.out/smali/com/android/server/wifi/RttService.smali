.class public final Lcom/android/server/wifi/RttService;
.super Lcom/android/server/SystemService;
.source "RttService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/RttService$1;,
        Lcom/android/server/wifi/RttService$RttServiceImpl;
    }
.end annotation


# static fields
.field public static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "RttService"


# instance fields
.field mImpl:Lcom/android/server/wifi/RttService$RttServiceImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 493
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 494
    const-string v0, "RttService"

    const-string v1, "Creating rttmanager"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 2
    .param p1, "phase"    # I

    .prologue
    .line 507
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_1

    .line 508
    const-string v0, "RttService"

    const-string v1, "Registering rttmanager"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    iget-object v0, p0, Lcom/android/server/wifi/RttService;->mImpl:Lcom/android/server/wifi/RttService$RttServiceImpl;

    if-nez v0, :cond_0

    .line 510
    new-instance v0, Lcom/android/server/wifi/RttService$RttServiceImpl;

    invoke-virtual {p0}, Lcom/android/server/wifi/RttService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/RttService$RttServiceImpl;-><init>(Lcom/android/server/wifi/RttService;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/wifi/RttService;->mImpl:Lcom/android/server/wifi/RttService$RttServiceImpl;

    .line 512
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/RttService;->mImpl:Lcom/android/server/wifi/RttService$RttServiceImpl;

    invoke-virtual {p0}, Lcom/android/server/wifi/RttService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/RttService$RttServiceImpl;->startService(Landroid/content/Context;)V

    .line 514
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 499
    new-instance v0, Lcom/android/server/wifi/RttService$RttServiceImpl;

    invoke-virtual {p0}, Lcom/android/server/wifi/RttService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/RttService$RttServiceImpl;-><init>(Lcom/android/server/wifi/RttService;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/wifi/RttService;->mImpl:Lcom/android/server/wifi/RttService$RttServiceImpl;

    .line 501
    const-string v0, "RttService"

    const-string v1, "Starting rttmanager"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    const-string v0, "rttmanager"

    iget-object v1, p0, Lcom/android/server/wifi/RttService;->mImpl:Lcom/android/server/wifi/RttService$RttServiceImpl;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/RttService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 503
    return-void
.end method
