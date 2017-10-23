.class Lcom/sec/epdg/EpdgService$24;
.super Ljava/lang/Object;
.source "EpdgService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/epdg/EpdgService;


# direct methods
.method constructor <init>(Lcom/sec/epdg/EpdgService;)V
    .locals 0

    .prologue
    .line 5082
    iput-object p1, p0, Lcom/sec/epdg/EpdgService$24;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 5085
    const/4 v0, 0x0

    # invokes: Lcom/sec/epdg/EpdgService;->setIsWifiRssiInPollingZone(Z)V
    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->access$10200(Z)V

    .line 5093
    iget-object v0, p0, Lcom/sec/epdg/EpdgService$24;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->isEpdgAvailabilityRecommended()Z
    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->access$10300(Lcom/sec/epdg/EpdgService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5094
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->setIsEpdgAvailable(Z)V

    .line 5096
    :cond_0
    # invokes: Lcom/sec/epdg/EpdgService;->stopWifiRssiIntentDelayTimerIfRequired()V
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$6800()V

    .line 5097
    return-void
.end method
