.class Lcom/samsung/android/service/gesture/GestureManager$2;
.super Ljava/lang/Object;
.source "GestureManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/service/gesture/GestureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/service/gesture/GestureManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/service/gesture/GestureManager;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/samsung/android/service/gesture/GestureManager$2;->this$0:Lcom/samsung/android/service/gesture/GestureManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    const-string v0, "GestureManager"

    const-string v1, "onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/service/gesture/GestureManager$2;->this$0:Lcom/samsung/android/service/gesture/GestureManager;

    invoke-static {p2}, Lcom/samsung/android/service/gesture/IGestureService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/service/gesture/IGestureService;

    move-result-object v1

    # setter for: Lcom/samsung/android/service/gesture/GestureManager;->mService:Lcom/samsung/android/service/gesture/IGestureService;
    invoke-static {v0, v1}, Lcom/samsung/android/service/gesture/GestureManager;->access$102(Lcom/samsung/android/service/gesture/GestureManager;Lcom/samsung/android/service/gesture/IGestureService;)Lcom/samsung/android/service/gesture/IGestureService;

    iget-object v0, p0, Lcom/samsung/android/service/gesture/GestureManager$2;->this$0:Lcom/samsung/android/service/gesture/GestureManager;

    const/4 v1, 0x1

    # setter for: Lcom/samsung/android/service/gesture/GestureManager;->mBound:Z
    invoke-static {v0, v1}, Lcom/samsung/android/service/gesture/GestureManager;->access$202(Lcom/samsung/android/service/gesture/GestureManager;Z)Z

    iget-object v0, p0, Lcom/samsung/android/service/gesture/GestureManager$2;->this$0:Lcom/samsung/android/service/gesture/GestureManager;

    # getter for: Lcom/samsung/android/service/gesture/GestureManager;->mConnectionListener:Lcom/samsung/android/service/gesture/GestureManager$ServiceConnectionListener;
    invoke-static {v0}, Lcom/samsung/android/service/gesture/GestureManager;->access$300(Lcom/samsung/android/service/gesture/GestureManager;)Lcom/samsung/android/service/gesture/GestureManager$ServiceConnectionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/service/gesture/GestureManager$ServiceConnectionListener;->onServiceConnected()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    const-string v0, "GestureManager"

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/service/gesture/GestureManager$2;->this$0:Lcom/samsung/android/service/gesture/GestureManager;

    const/4 v1, 0x0

    # setter for: Lcom/samsung/android/service/gesture/GestureManager;->mBound:Z
    invoke-static {v0, v1}, Lcom/samsung/android/service/gesture/GestureManager;->access$202(Lcom/samsung/android/service/gesture/GestureManager;Z)Z

    iget-object v0, p0, Lcom/samsung/android/service/gesture/GestureManager$2;->this$0:Lcom/samsung/android/service/gesture/GestureManager;

    # getter for: Lcom/samsung/android/service/gesture/GestureManager;->mConnectionListener:Lcom/samsung/android/service/gesture/GestureManager$ServiceConnectionListener;
    invoke-static {v0}, Lcom/samsung/android/service/gesture/GestureManager;->access$300(Lcom/samsung/android/service/gesture/GestureManager;)Lcom/samsung/android/service/gesture/GestureManager$ServiceConnectionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/service/gesture/GestureManager$ServiceConnectionListener;->onServiceDisconnected()V

    return-void
.end method
