.class Lcom/samsung/android/service/gesture/GestureManager$GestureListenerDelegate$1;
.super Landroid/os/Handler;
.source "GestureManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/service/gesture/GestureManager$GestureListenerDelegate;-><init>(Lcom/samsung/android/service/gesture/GestureManager;Lcom/samsung/android/service/gesture/GestureListener;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/service/gesture/GestureManager$GestureListenerDelegate;

.field final synthetic val$this$0:Lcom/samsung/android/service/gesture/GestureManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/service/gesture/GestureManager$GestureListenerDelegate;Landroid/os/Looper;Lcom/samsung/android/service/gesture/GestureManager;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 457
    iput-object p1, p0, Lcom/samsung/android/service/gesture/GestureManager$GestureListenerDelegate$1;->this$1:Lcom/samsung/android/service/gesture/GestureManager$GestureListenerDelegate;

    iput-object p3, p0, Lcom/samsung/android/service/gesture/GestureManager$GestureListenerDelegate$1;->val$this$0:Lcom/samsung/android/service/gesture/GestureManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 460
    iget-object v1, p0, Lcom/samsung/android/service/gesture/GestureManager$GestureListenerDelegate$1;->this$1:Lcom/samsung/android/service/gesture/GestureManager$GestureListenerDelegate;

    # getter for: Lcom/samsung/android/service/gesture/GestureManager$GestureListenerDelegate;->mListener:Lcom/samsung/android/service/gesture/GestureListener;
    invoke-static {v1}, Lcom/samsung/android/service/gesture/GestureManager$GestureListenerDelegate;->access$500(Lcom/samsung/android/service/gesture/GestureManager$GestureListenerDelegate;)Lcom/samsung/android/service/gesture/GestureListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 461
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/service/gesture/GestureEvent;

    .line 462
    .local v0, "gestureEvent":Lcom/samsung/android/service/gesture/GestureEvent;
    if-eqz v0, :cond_1

    .line 463
    iget-object v1, p0, Lcom/samsung/android/service/gesture/GestureManager$GestureListenerDelegate$1;->this$1:Lcom/samsung/android/service/gesture/GestureManager$GestureListenerDelegate;

    # getter for: Lcom/samsung/android/service/gesture/GestureManager$GestureListenerDelegate;->mListener:Lcom/samsung/android/service/gesture/GestureListener;
    invoke-static {v1}, Lcom/samsung/android/service/gesture/GestureManager$GestureListenerDelegate;->access$500(Lcom/samsung/android/service/gesture/GestureManager$GestureListenerDelegate;)Lcom/samsung/android/service/gesture/GestureListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/samsung/android/service/gesture/GestureListener;->onGestureEvent(Lcom/samsung/android/service/gesture/GestureEvent;)V

    .line 468
    .end local v0    # "gestureEvent":Lcom/samsung/android/service/gesture/GestureEvent;
    :cond_0
    :goto_0
    return-void

    .line 465
    .restart local v0    # "gestureEvent":Lcom/samsung/android/service/gesture/GestureEvent;
    :cond_1
    const-string v1, "GestureManager"

    const-string v2, "gestureEvent : null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
