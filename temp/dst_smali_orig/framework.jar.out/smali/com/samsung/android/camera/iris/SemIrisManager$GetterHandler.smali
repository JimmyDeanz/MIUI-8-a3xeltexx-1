.class Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;
.super Landroid/os/Handler;
.source "SemIrisManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/iris/SemIrisManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GetterHandler"
.end annotation


# static fields
.field private static final IMAGE_GETTER_CALLBACK:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/samsung/android/camera/iris/SemIrisManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/camera/iris/SemIrisManager;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;->this$0:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public postDelayedGetterCallback(Ljava/lang/Runnable;J)V
    .locals 2
    .param p1, "callback"    # Ljava/lang/Runnable;
    .param p2, "delay"    # J

    .prologue
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0, p2, p3}, Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public postGetterCallback(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "callback"    # Ljava/lang/Runnable;

    .prologue
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;->postDelayedGetterCallback(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public removeAllGetterCallbacks()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;->removeMessages(I)V

    return-void
.end method
