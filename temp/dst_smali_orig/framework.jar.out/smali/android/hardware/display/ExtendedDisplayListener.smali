.class public Landroid/hardware/display/ExtendedDisplayListener;
.super Ljava/lang/Object;
.source "ExtendedDisplayListener.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ExtendedDisplayListener"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBridgeStatusChanged(I)V
    .locals 2
    .param p1, "status"    # I

    .prologue
    const-string v0, "ExtendedDisplayListener"

    const-string v1, "onBridgeStatusChanged is called as default! do nothing!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onConnectionStatusChanged(I)V
    .locals 2
    .param p1, "status"    # I

    .prologue
    const-string v0, "ExtendedDisplayListener"

    const-string v1, "onConnectionStatusChanged is called as default! do nothing!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDLNAConnectionStatusChanged(Z)V
    .locals 2
    .param p1, "connected"    # Z

    .prologue
    const-string v0, "ExtendedDisplayListener"

    const-string v1, "onDLNAConnectionStatusChanged is called as default! do nothing!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onQoSLevelChanged(I)V
    .locals 2
    .param p1, "level"    # I

    .prologue
    const-string v0, "ExtendedDisplayListener"

    const-string v1, "onQoSLevelChanged is called as default! do nothing!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onScreenSharingStatusChanged(I)V
    .locals 2
    .param p1, "status"    # I

    .prologue
    const-string v0, "ExtendedDisplayListener"

    const-string v1, "onScreenSharingStatusChanged is called as default! do nothing!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
