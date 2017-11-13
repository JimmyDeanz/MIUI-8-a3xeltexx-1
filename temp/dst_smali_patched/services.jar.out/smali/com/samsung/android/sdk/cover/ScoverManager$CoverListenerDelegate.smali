.class Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;
.super Lcom/samsung/android/cover/ICoverManagerCallback$Stub;
.source "ScoverManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/cover/ScoverManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CoverListenerDelegate"
.end annotation


# instance fields
.field final hasAttachFieldVersion:I

.field final hasModelFieldVersion:I

.field private mHandler:Landroid/os/Handler;

.field private final mListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

.field final synthetic this$0:Lcom/samsung/android/sdk/cover/ScoverManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/cover/ScoverManager;Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;Landroid/os/Handler;)V
    .locals 2
    .param p2, "listener"    # Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    iput-object p1, p0, Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;->this$0:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-direct {p0}, Lcom/samsung/android/cover/ICoverManagerCallback$Stub;-><init>()V

    const/high16 v1, 0x1010000

    iput v1, p0, Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;->hasAttachFieldVersion:I

    const/high16 v1, 0x1020000

    iput v1, p0, Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;->hasModelFieldVersion:I

    iput-object p2, p0, Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;->mListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    if-nez p3, :cond_0

    # getter for: Lcom/samsung/android/sdk/cover/ScoverManager;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/samsung/android/sdk/cover/ScoverManager;->access$000(Lcom/samsung/android/sdk/cover/ScoverManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, "looper":Landroid/os/Looper;
    :goto_0
    new-instance v1, Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate$1;-><init>(Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;Landroid/os/Looper;Lcom/samsung/android/sdk/cover/ScoverManager;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;->mHandler:Landroid/os/Handler;

    return-void

    .end local v0    # "looper":Landroid/os/Looper;
    :cond_0
    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;)Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;->mListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    return-object v0
.end method


# virtual methods
.method public coverCallback(Lcom/samsung/android/cover/CoverState;)V
    .locals 2
    .param p1, "state"    # Lcom/samsung/android/cover/CoverState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public getListener()Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;->mListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    return-object v0
.end method

.method public getListenerInfo()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;->mListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
