.class Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;
.super Landroid/os/Handler;
.source "SmartFaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/smartface/SmartFaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field private mManager:Lcom/samsung/android/smartface/SmartFaceManager;

.field final synthetic this$0:Lcom/samsung/android/smartface/SmartFaceManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/smartface/SmartFaceManager;Lcom/samsung/android/smartface/SmartFaceManager;Landroid/os/Looper;)V
    .locals 1
    .param p2, "manager"    # Lcom/samsung/android/smartface/SmartFaceManager;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 596
    iput-object p1, p0, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;->this$0:Lcom/samsung/android/smartface/SmartFaceManager;

    .line 597
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 594
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;->mManager:Lcom/samsung/android/smartface/SmartFaceManager;

    .line 599
    iput-object p2, p0, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;->mManager:Lcom/samsung/android/smartface/SmartFaceManager;

    .line 600
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 604
    iget-object v0, p0, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;->this$0:Lcom/samsung/android/smartface/SmartFaceManager;

    # getter for: Lcom/samsung/android/smartface/SmartFaceManager;->mListener:Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;
    invoke-static {v0}, Lcom/samsung/android/smartface/SmartFaceManager;->access$500(Lcom/samsung/android/smartface/SmartFaceManager;)Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 606
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 629
    :goto_0
    return-void

    .line 609
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;->this$0:Lcom/samsung/android/smartface/SmartFaceManager;

    # getter for: Lcom/samsung/android/smartface/SmartFaceManager;->mListener:Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;
    invoke-static {v0}, Lcom/samsung/android/smartface/SmartFaceManager;->access$500(Lcom/samsung/android/smartface/SmartFaceManager;)Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/smartface/FaceInfo;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v0, v2}, Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;->onInfo(Lcom/samsung/android/smartface/FaceInfo;I)V

    goto :goto_0

    .line 612
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;->this$0:Lcom/samsung/android/smartface/SmartFaceManager;

    # getter for: Lcom/samsung/android/smartface/SmartFaceManager;->mListener:Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;
    invoke-static {v0}, Lcom/samsung/android/smartface/SmartFaceManager;->access$500(Lcom/samsung/android/smartface/SmartFaceManager;)Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener2;

    if-eqz v0, :cond_0

    .line 613
    iget-object v0, p0, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;->this$0:Lcom/samsung/android/smartface/SmartFaceManager;

    # getter for: Lcom/samsung/android/smartface/SmartFaceManager;->mListener:Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;
    invoke-static {v0}, Lcom/samsung/android/smartface/SmartFaceManager;->access$500(Lcom/samsung/android/smartface/SmartFaceManager;)Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener2;

    iget-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;->mManager:Lcom/samsung/android/smartface/SmartFaceManager;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener2;->onRegistered(Lcom/samsung/android/smartface/SmartFaceManager;I)V

    goto :goto_0

    .line 615
    :cond_0
    const-string v0, "SmartFaceManager"

    const-string v1, "Listener does not implements SmartFaceInfoListener2"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 618
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;->this$0:Lcom/samsung/android/smartface/SmartFaceManager;

    # getter for: Lcom/samsung/android/smartface/SmartFaceManager;->mListener:Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;
    invoke-static {v0}, Lcom/samsung/android/smartface/SmartFaceManager;->access$500(Lcom/samsung/android/smartface/SmartFaceManager;)Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener2;

    if-eqz v0, :cond_1

    .line 619
    iget-object v0, p0, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;->this$0:Lcom/samsung/android/smartface/SmartFaceManager;

    # getter for: Lcom/samsung/android/smartface/SmartFaceManager;->mListener:Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;
    invoke-static {v0}, Lcom/samsung/android/smartface/SmartFaceManager;->access$500(Lcom/samsung/android/smartface/SmartFaceManager;)Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener2;

    iget-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;->mManager:Lcom/samsung/android/smartface/SmartFaceManager;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener2;->onUnregistered(Lcom/samsung/android/smartface/SmartFaceManager;I)V

    goto :goto_0

    .line 621
    :cond_1
    const-string v0, "SmartFaceManager"

    const-string v1, "Listener does not implements SmartFaceInfoListener2"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 627
    :cond_2
    const-string v0, "SmartFaceManager"

    const-string v1, "Listener is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 606
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
