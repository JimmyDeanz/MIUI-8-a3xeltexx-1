.class Lcom/sec/epdg/handover/EpdgImsListener60$OnRegistered;
.super Lcom/sec/epdg/handover/EpdgImsListener60$ImsRegRunnable;
.source "EpdgImsListener60.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/handover/EpdgImsListener60;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnRegistered"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/epdg/handover/EpdgImsListener60;


# direct methods
.method constructor <init>(Lcom/sec/epdg/handover/EpdgImsListener60;Lcom/sec/ims/ImsRegistration;)V
    .locals 0
    .param p2, "reg"    # Lcom/sec/ims/ImsRegistration;

    .prologue
    .line 378
    iput-object p1, p0, Lcom/sec/epdg/handover/EpdgImsListener60$OnRegistered;->this$0:Lcom/sec/epdg/handover/EpdgImsListener60;

    .line 379
    invoke-direct {p0, p1, p2}, Lcom/sec/epdg/handover/EpdgImsListener60$ImsRegRunnable;-><init>(Lcom/sec/epdg/handover/EpdgImsListener60;Lcom/sec/ims/ImsRegistration;)V

    .line 380
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 383
    const-string v0, "[EpdgImsListener]"

    const-string/jumbo v1, "onRegistered: "

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    # getter for: Lcom/sec/epdg/handover/EpdgImsListener60;->mEpdgImsRegStatus:Lcom/sec/epdg/handover/EpdgImsRegStatus;
    invoke-static {}, Lcom/sec/epdg/handover/EpdgImsListener60;->access$1000()Lcom/sec/epdg/handover/EpdgImsRegStatus;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/epdg/handover/EpdgImsListener60$OnRegistered;->mReg:Lcom/sec/ims/ImsRegistration;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/handover/EpdgImsRegStatus;->onRegistered(Lcom/sec/ims/ImsRegistration;)V

    .line 385
    return-void
.end method
