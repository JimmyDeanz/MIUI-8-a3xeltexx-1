.class Landroid/app/ActivityOptions$2;
.super Landroid/os/IRemoteCallback$Stub;
.source "ActivityOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ActivityOptions;->setOnTransitionStartedListener(Landroid/os/Handler;Landroid/app/ActivityOptions$OnTransitionStartedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/ActivityOptions;

.field final synthetic val$finalListener:Landroid/app/ActivityOptions$OnTransitionStartedListener;

.field final synthetic val$h:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/app/ActivityOptions;Landroid/os/Handler;Landroid/app/ActivityOptions$OnTransitionStartedListener;)V
    .locals 0

    .prologue
    .line 309
    iput-object p1, p0, Landroid/app/ActivityOptions$2;->this$0:Landroid/app/ActivityOptions;

    iput-object p2, p0, Landroid/app/ActivityOptions$2;->val$h:Landroid/os/Handler;

    iput-object p3, p0, Landroid/app/ActivityOptions$2;->val$finalListener:Landroid/app/ActivityOptions$OnTransitionStartedListener;

    invoke-direct {p0}, Landroid/os/IRemoteCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public sendResult(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "data"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 311
    iget-object v0, p0, Landroid/app/ActivityOptions$2;->val$h:Landroid/os/Handler;

    new-instance v1, Landroid/app/ActivityOptions$2$1;

    invoke-direct {v1, p0}, Landroid/app/ActivityOptions$2$1;-><init>(Landroid/app/ActivityOptions$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 316
    return-void
.end method
