.class final Lcom/sec/epdg/handover/EpdgImsListener60$3;
.super Ljava/lang/Object;
.source "EpdgImsListener60.java"

# interfaces
.implements Lcom/sec/ims/ImsManager$ConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/handover/EpdgImsListener60;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 3

    .prologue
    .line 196
    const-string v0, "[EpdgImsListener]"

    const-string/jumbo v1, "onConnected: "

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    # getter for: Lcom/sec/epdg/handover/EpdgImsListener60;->mePdgHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/sec/epdg/handover/EpdgImsListener60;->access$600()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sec/epdg/handover/EpdgImsListener60$ImsManagerConnected;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sec/epdg/handover/EpdgImsListener60$ImsManagerConnected;-><init>(Lcom/sec/epdg/handover/EpdgImsListener60$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 198
    return-void
.end method

.method public onDisconnected()V
    .locals 2

    .prologue
    .line 201
    const-string v0, "[EpdgImsListener]"

    const-string/jumbo v1, "onDisconnected: "

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    return-void
.end method
