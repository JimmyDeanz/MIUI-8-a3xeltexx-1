.class Lcom/sec/epdg/EpdgService$ServiceStatusChangedRunnable;
.super Ljava/lang/Object;
.source "EpdgService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceStatusChangedRunnable"
.end annotation


# instance fields
.field private mServiceState:Landroid/telephony/ServiceState;

.field final synthetic this$0:Lcom/sec/epdg/EpdgService;


# direct methods
.method public constructor <init>(Lcom/sec/epdg/EpdgService;Landroid/telephony/ServiceState;)V
    .locals 1
    .param p2, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    .line 5416
    iput-object p1, p0, Lcom/sec/epdg/EpdgService$ServiceStatusChangedRunnable;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5417
    new-instance v0, Landroid/telephony/ServiceState;

    invoke-direct {v0, p2}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService$ServiceStatusChangedRunnable;->mServiceState:Landroid/telephony/ServiceState;

    .line 5418
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 5422
    iget-object v0, p0, Lcom/sec/epdg/EpdgService$ServiceStatusChangedRunnable;->this$0:Lcom/sec/epdg/EpdgService;

    iget-object v1, p0, Lcom/sec/epdg/EpdgService$ServiceStatusChangedRunnable;->mServiceState:Landroid/telephony/ServiceState;

    # invokes: Lcom/sec/epdg/EpdgService;->onServiceStatusChanged(Landroid/telephony/ServiceState;)V
    invoke-static {v0, v1}, Lcom/sec/epdg/EpdgService;->access$11000(Lcom/sec/epdg/EpdgService;Landroid/telephony/ServiceState;)V

    .line 5423
    return-void
.end method
