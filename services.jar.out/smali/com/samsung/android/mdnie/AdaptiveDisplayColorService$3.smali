.class Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$3;
.super Ljava/lang/Object;
.source "AdaptiveDisplayColorService.java"

# interfaces
.implements Landroid/hardware/scontext/SContextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;


# direct methods
.method constructor <init>(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)V
    .locals 0

    .prologue
    .line 683
    iput-object p1, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$3;->this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSContextChanged(Landroid/hardware/scontext/SContextEvent;)V
    .locals 9
    .param p1, "event"    # Landroid/hardware/scontext/SContextEvent;

    .prologue
    const/4 v8, 0x2

    .line 685
    iget-object v1, p1, Landroid/hardware/scontext/SContextEvent;->scontext:Landroid/hardware/scontext/SContext;

    .line 686
    .local v1, "scontext":Landroid/hardware/scontext/SContext;
    invoke-virtual {v1}, Landroid/hardware/scontext/SContext;->getType()I

    move-result v4

    const/16 v5, 0x2c

    if-ne v4, v5, :cond_0

    .line 687
    invoke-virtual {p1}, Landroid/hardware/scontext/SContextEvent;->getEnvironmentAdaptiveDisplayContext()Landroid/hardware/scontext/SContextEnvironmentAdaptiveDisplay;

    move-result-object v0

    .line 688
    .local v0, "environmentAdaptiveDisplay":Landroid/hardware/scontext/SContextEnvironmentAdaptiveDisplay;
    iget-object v4, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$3;->this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    invoke-virtual {v0}, Landroid/hardware/scontext/SContextEnvironmentAdaptiveDisplay;->getRed()F

    move-result v5

    # setter for: Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mAvgR:F
    invoke-static {v4, v5}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->access$2102(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;F)F

    .line 689
    iget-object v4, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$3;->this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    invoke-virtual {v0}, Landroid/hardware/scontext/SContextEnvironmentAdaptiveDisplay;->getGreen()F

    move-result v5

    # setter for: Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mAvgG:F
    invoke-static {v4, v5}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->access$2202(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;F)F

    .line 690
    iget-object v4, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$3;->this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    invoke-virtual {v0}, Landroid/hardware/scontext/SContextEnvironmentAdaptiveDisplay;->getBlue()F

    move-result v5

    # setter for: Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mAvgB:F
    invoke-static {v4, v5}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->access$2302(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;F)F

    .line 691
    iget-object v4, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$3;->this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    invoke-virtual {v0}, Landroid/hardware/scontext/SContextEnvironmentAdaptiveDisplay;->getLux()J

    move-result-wide v6

    # setter for: Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mSumLux:J
    invoke-static {v4, v6, v7}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->access$2402(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;J)J

    .line 692
    iget-object v4, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$3;->this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    invoke-virtual {v0}, Landroid/hardware/scontext/SContextEnvironmentAdaptiveDisplay;->getCCT()I

    move-result v5

    # setter for: Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mSumCCT:I
    invoke-static {v4, v5}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->access$2502(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;I)I

    .line 693
    iget-object v4, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$3;->this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    const/4 v5, 0x1

    # setter for: Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mCountSensorValue:I
    invoke-static {v4, v5}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->access$2602(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;I)I

    .line 695
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 696
    .local v2, "time":J
    iget-object v4, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$3;->this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    # getter for: Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;
    invoke-static {v4}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->access$700(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    .line 697
    iget-object v4, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$3;->this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    # getter for: Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;
    invoke-static {v4}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->access$700(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;

    move-result-object v4

    invoke-virtual {v4, v8, v2, v3}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 699
    .end local v0    # "environmentAdaptiveDisplay":Landroid/hardware/scontext/SContextEnvironmentAdaptiveDisplay;
    .end local v2    # "time":J
    :cond_0
    return-void
.end method
