.class Lcom/android/server/power/PowerManagerService$13;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Landroid/hardware/scontext/SContextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$13;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSContextChanged(Landroid/hardware/scontext/SContextEvent;)V
    .locals 7
    .param p1, "event"    # Landroid/hardware/scontext/SContextEvent;

    .prologue
    const/16 v6, 0x2e

    const/4 v5, 0x0

    iget-object v1, p1, Landroid/hardware/scontext/SContextEvent;->scontext:Landroid/hardware/scontext/SContext;

    .local v1, "scontext":Landroid/hardware/scontext/SContext;
    invoke-virtual {v1}, Landroid/hardware/scontext/SContext;->getType()I

    move-result v3

    if-ne v3, v6, :cond_0

    invoke-virtual {p1}, Landroid/hardware/scontext/SContextEvent;->getWirelessChargingDetectionContext()Landroid/hardware/scontext/SContextWirelessChargingDetection;

    move-result-object v2

    .local v2, "wirelessChargingDetection":Landroid/hardware/scontext/SContextWirelessChargingDetection;
    invoke-virtual {v2}, Landroid/hardware/scontext/SContextWirelessChargingDetection;->getAction()I

    move-result v0

    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .end local v0    # "action":I
    .end local v2    # "wirelessChargingDetection":Landroid/hardware/scontext/SContextWirelessChargingDetection;
    :cond_0
    :goto_0
    return-void

    .restart local v0    # "action":I
    .restart local v2    # "wirelessChargingDetection":Landroid/hardware/scontext/SContextWirelessChargingDetection;
    :pswitch_0
    const-string v3, "PowerManagerService"

    const-string v4, "WirelessChargerSContextListener : No Move"

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$13;->this$0:Lcom/android/server/power/PowerManagerService;

    iput-boolean v5, v3, Lcom/android/server/power/PowerManagerService;->mIsDeviceMoving:Z

    goto :goto_0

    :pswitch_1
    const-string v3, "PowerManagerService"

    const-string v4, "WirelessChargerSContextListener : Move"

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$13;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/server/power/PowerManagerService;->mIsDeviceMoving:Z

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$13;->this$0:Lcom/android/server/power/PowerManagerService;

    iget-boolean v3, v3, Lcom/android/server/power/PowerManagerService;->mIsWirelessChargerSContextRegistered:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$13;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;
    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->access$14900(Lcom/android/server/power/PowerManagerService;)Landroid/os/BatteryManagerInternal;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/os/BatteryManagerInternal;->isPowered(I)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "PowerManagerService"

    const-string v4, "SContextListener : Unregister SContextListener"

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$13;->this$0:Lcom/android/server/power/PowerManagerService;

    iget-object v3, v3, Lcom/android/server/power/PowerManagerService;->mWirelessChargerSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService$13;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mWirelessChargerSContextListener:Landroid/hardware/scontext/SContextListener;
    invoke-static {v4}, Lcom/android/server/power/PowerManagerService;->access$15000(Lcom/android/server/power/PowerManagerService;)Landroid/hardware/scontext/SContextListener;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Landroid/hardware/scontext/SContextManager;->unregisterListener(Landroid/hardware/scontext/SContextListener;I)V

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$13;->this$0:Lcom/android/server/power/PowerManagerService;

    iput-boolean v5, v3, Lcom/android/server/power/PowerManagerService;->mIsWirelessChargerSContextRegistered:Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
