.class Lcom/sec/epdg/handover/EpdgImsListener60$OnDeRegistered;
.super Lcom/sec/epdg/handover/EpdgImsListener60$ImsRegRunnable;
.source "EpdgImsListener60.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/handover/EpdgImsListener60;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnDeRegistered"
.end annotation


# instance fields
.field private final mErrorCode:I

.field final synthetic this$0:Lcom/sec/epdg/handover/EpdgImsListener60;


# direct methods
.method constructor <init>(Lcom/sec/epdg/handover/EpdgImsListener60;Lcom/sec/ims/ImsRegistration;I)V
    .locals 0
    .param p2, "reg"    # Lcom/sec/ims/ImsRegistration;
    .param p3, "errorCode"    # I

    .prologue
    iput-object p1, p0, Lcom/sec/epdg/handover/EpdgImsListener60$OnDeRegistered;->this$0:Lcom/sec/epdg/handover/EpdgImsListener60;

    invoke-direct {p0, p1, p2}, Lcom/sec/epdg/handover/EpdgImsListener60$ImsRegRunnable;-><init>(Lcom/sec/epdg/handover/EpdgImsListener60;Lcom/sec/ims/ImsRegistration;)V

    iput p3, p0, Lcom/sec/epdg/handover/EpdgImsListener60$OnDeRegistered;->mErrorCode:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const-string v0, "[EpdgImsListener]"

    const-string v1, "onDeregistered: "

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    # getter for: Lcom/sec/epdg/handover/EpdgImsListener60;->mEpdgImsRegStatus:Lcom/sec/epdg/handover/EpdgImsRegStatus;
    invoke-static {}, Lcom/sec/epdg/handover/EpdgImsListener60;->access$1000()Lcom/sec/epdg/handover/EpdgImsRegStatus;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/epdg/handover/EpdgImsListener60$OnDeRegistered;->mReg:Lcom/sec/ims/ImsRegistration;

    iget v2, p0, Lcom/sec/epdg/handover/EpdgImsListener60$OnDeRegistered;->mErrorCode:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/epdg/handover/EpdgImsRegStatus;->onDeRegistered(Lcom/sec/ims/ImsRegistration;I)V

    return-void
.end method
