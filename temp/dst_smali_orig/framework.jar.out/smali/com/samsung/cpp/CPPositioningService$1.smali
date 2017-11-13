.class Lcom/samsung/cpp/CPPositioningService$1;
.super Landroid/os/Handler;
.source "CPPositioningService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/cpp/CPPositioningService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/cpp/CPPositioningService;


# direct methods
.method constructor <init>(Lcom/samsung/cpp/CPPositioningService;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/samsung/cpp/CPPositioningService$1;->this$0:Lcom/samsung/cpp/CPPositioningService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    const-string v4, "CPPositioningService"

    const-string v5, "Invalid Message"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/cpp/ICPPLocationListener;

    .local v1, "tempCppLocListener":Lcom/samsung/cpp/ICPPLocationListener;
    const-string v4, "CPPositioningService"

    const-string v5, "MSG_REQUEST_ANDROID_LOCATION_UPDATE"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "CPPositioningService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "requestLocationUpdates Interval : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Provider(0-GPS, 1-google NLP) : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " listener : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/cpp/CPPositioningService$1;->this$0:Lcom/samsung/cpp/CPPositioningService;

    # getter for: Lcom/samsung/cpp/CPPositioningService;->mAndroidLocProvider:Lcom/samsung/cpp/CPPAndroidLocProvider;
    invoke-static {v4}, Lcom/samsung/cpp/CPPositioningService;->access$000(Lcom/samsung/cpp/CPPositioningService;)Lcom/samsung/cpp/CPPAndroidLocProvider;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    iget v6, p1, Landroid/os/Message;->arg2:I

    const-string v7, ""

    invoke-virtual {v4, v5, v6, v1, v7}, Lcom/samsung/cpp/CPPAndroidLocProvider;->requestLocationUpdates(IILcom/samsung/cpp/ICPPLocationListener;Ljava/lang/String;)V

    goto :goto_0

    .end local v1    # "tempCppLocListener":Lcom/samsung/cpp/ICPPLocationListener;
    :pswitch_1
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/samsung/cpp/ICPPLocationListener;

    .local v3, "tempStopCppLocListener":Lcom/samsung/cpp/ICPPLocationListener;
    const-string v4, "CPPositioningService"

    const-string v5, "MSG_STOP_ANDROID_LOCATION_UPDATE"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "CPPositioningService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "stopLocationUpdates listener : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/cpp/CPPositioningService$1;->this$0:Lcom/samsung/cpp/CPPositioningService;

    # getter for: Lcom/samsung/cpp/CPPositioningService;->mAndroidLocProvider:Lcom/samsung/cpp/CPPAndroidLocProvider;
    invoke-static {v4}, Lcom/samsung/cpp/CPPositioningService;->access$000(Lcom/samsung/cpp/CPPositioningService;)Lcom/samsung/cpp/CPPAndroidLocProvider;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/samsung/cpp/CPPAndroidLocProvider;->stopLocationUpdates(Lcom/samsung/cpp/ICPPLocationListener;)V

    goto :goto_0

    .end local v3    # "tempStopCppLocListener":Lcom/samsung/cpp/ICPPLocationListener;
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/cpp/CPPositioningService$RequestLocationInput;

    .local v0, "input":Lcom/samsung/cpp/CPPositioningService$RequestLocationInput;
    const-string v4, "CPPositioningService"

    const-string v5, "MSG_REQUEST_CP_LOCATION_UPDATE"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/cpp/CPPositioningService$1;->this$0:Lcom/samsung/cpp/CPPositioningService;

    # getter for: Lcom/samsung/cpp/CPPositioningService;->mCpLocationProvider:Lcom/samsung/cpp/CPPProvider;
    invoke-static {v4}, Lcom/samsung/cpp/CPPositioningService;->access$100(Lcom/samsung/cpp/CPPositioningService;)Lcom/samsung/cpp/CPPProvider;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/samsung/cpp/CPPProvider;->requestCPLocationUpdates(Lcom/samsung/cpp/CPPositioningService$RequestLocationInput;)V

    goto/16 :goto_0

    .end local v0    # "input":Lcom/samsung/cpp/CPPositioningService$RequestLocationInput;
    :pswitch_3
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/samsung/cpp/ICPPLocationListener;

    .local v2, "tempStopCpLocListener":Lcom/samsung/cpp/ICPPLocationListener;
    const-string v4, "CPPositioningService"

    const-string v5, "MSG_STOP_CP_LOCATION_UPDATE"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "CPPositioningService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "requestLocationUpdates listener : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/cpp/CPPositioningService$1;->this$0:Lcom/samsung/cpp/CPPositioningService;

    # getter for: Lcom/samsung/cpp/CPPositioningService;->mCpLocationProvider:Lcom/samsung/cpp/CPPProvider;
    invoke-static {v4}, Lcom/samsung/cpp/CPPositioningService;->access$100(Lcom/samsung/cpp/CPPositioningService;)Lcom/samsung/cpp/CPPProvider;

    move-result-object v5

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/samsung/cpp/ICPPLocationListener;

    invoke-virtual {v5, v4}, Lcom/samsung/cpp/CPPProvider;->stopCPLocationUpdates(Lcom/samsung/cpp/ICPPLocationListener;)V

    goto/16 :goto_0

    .end local v2    # "tempStopCpLocListener":Lcom/samsung/cpp/ICPPLocationListener;
    :pswitch_4
    const-string v4, "CPPositioningService"

    const-string v5, "MSG_REGISTER_CP_GEO_FENCE_UPDATE"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/cpp/CPPositioningService$1;->this$0:Lcom/samsung/cpp/CPPositioningService;

    # getter for: Lcom/samsung/cpp/CPPositioningService;->mCpLocationProvider:Lcom/samsung/cpp/CPPProvider;
    invoke-static {v4}, Lcom/samsung/cpp/CPPositioningService;->access$100(Lcom/samsung/cpp/CPPositioningService;)Lcom/samsung/cpp/CPPProvider;

    move-result-object v5

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/samsung/cpp/CPPositioningService$RequestCPGeoFenceRegister;

    invoke-virtual {v5, v4}, Lcom/samsung/cpp/CPPProvider;->registerCPGeoFence(Lcom/samsung/cpp/CPPositioningService$RequestCPGeoFenceRegister;)V

    goto/16 :goto_0

    :pswitch_5
    const-string v4, "CPPositioningService"

    const-string v5, "MSG_DEREGISTER_CP_GEO_FENCE_UPDATE"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/cpp/CPPositioningService$1;->this$0:Lcom/samsung/cpp/CPPositioningService;

    # getter for: Lcom/samsung/cpp/CPPositioningService;->mCpLocationProvider:Lcom/samsung/cpp/CPPProvider;
    invoke-static {v4}, Lcom/samsung/cpp/CPPositioningService;->access$100(Lcom/samsung/cpp/CPPositioningService;)Lcom/samsung/cpp/CPPProvider;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Lcom/samsung/cpp/CPPProvider;->deRegisterCPGeoFence(I)V

    goto/16 :goto_0

    :pswitch_6
    const-string v4, "CPPositioningService"

    const-string v5, "MSG_REGISTER_ANDROID_GEO_FENCE_UPDATE"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_7
    const-string v4, "CPPositioningService"

    const-string v5, "MSG_DEREGISTER_ANDROID_GEO_FENCE_UPDATE"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
