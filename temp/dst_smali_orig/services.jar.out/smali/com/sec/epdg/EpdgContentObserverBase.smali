.class public abstract Lcom/sec/epdg/EpdgContentObserverBase;
.super Landroid/database/ContentObserver;
.source "EpdgContentObserverBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/epdg/EpdgContentObserverBase$EpdgBroadcastRunnable;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgServiceHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sec/epdg/EpdgContentObserverBase$EpdgBroadcastRunnable;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/epdg/EpdgContentObserverBase$EpdgBroadcastRunnable;-><init>(Lcom/sec/epdg/EpdgContentObserverBase;ZLandroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public abstract onChangeSlowPath(ZLandroid/net/Uri;)V
.end method
