.class Lcom/android/internal/app/IrisEnrollActivity$4;
.super Ljava/lang/Object;
.source "IrisEnrollActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/IrisEnrollActivity;->bindIrisService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/IrisEnrollActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/IrisEnrollActivity;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/internal/app/IrisEnrollActivity$4;->this$0:Lcom/android/internal/app/IrisEnrollActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/IrisEnrollActivity$4;->this$0:Lcom/android/internal/app/IrisEnrollActivity;

    invoke-static {p2}, Lcom/samsung/android/camera/iris/IIrisService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/camera/iris/IIrisService;

    move-result-object v1

    # setter for: Lcom/android/internal/app/IrisEnrollActivity;->mIrisService:Lcom/samsung/android/camera/iris/IIrisService;
    invoke-static {v0, v1}, Lcom/android/internal/app/IrisEnrollActivity;->access$102(Lcom/android/internal/app/IrisEnrollActivity;Lcom/samsung/android/camera/iris/IIrisService;)Lcom/samsung/android/camera/iris/IIrisService;

    iget-object v0, p0, Lcom/android/internal/app/IrisEnrollActivity$4;->this$0:Lcom/android/internal/app/IrisEnrollActivity;

    const/4 v1, 0x1

    # setter for: Lcom/android/internal/app/IrisEnrollActivity;->mIsServiceBind:Z
    invoke-static {v0, v1}, Lcom/android/internal/app/IrisEnrollActivity;->access$202(Lcom/android/internal/app/IrisEnrollActivity;Z)Z

    # getter for: Lcom/android/internal/app/IrisEnrollActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/app/IrisEnrollActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceConnected: name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Service="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/app/IrisEnrollActivity$4;->this$0:Lcom/android/internal/app/IrisEnrollActivity;

    # invokes: Lcom/android/internal/app/IrisEnrollActivity;->enrollIrisWithView()V
    invoke-static {v0}, Lcom/android/internal/app/IrisEnrollActivity;->access$300(Lcom/android/internal/app/IrisEnrollActivity;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/IrisEnrollActivity$4;->this$0:Lcom/android/internal/app/IrisEnrollActivity;

    const/4 v1, 0x0

    # setter for: Lcom/android/internal/app/IrisEnrollActivity;->mIsServiceBind:Z
    invoke-static {v0, v1}, Lcom/android/internal/app/IrisEnrollActivity;->access$202(Lcom/android/internal/app/IrisEnrollActivity;Z)Z

    return-void
.end method
