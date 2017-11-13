.class Lcom/samsung/cpp/CPPositioningManager$LocListenerTransport$1;
.super Landroid/os/Handler;
.source "CPPositioningManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/cpp/CPPositioningManager$LocListenerTransport;-><init>(Lcom/samsung/cpp/CPPositioningManager;Lcom/samsung/cpp/CPPLocationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/cpp/CPPositioningManager$LocListenerTransport;

.field final synthetic val$this$0:Lcom/samsung/cpp/CPPositioningManager;


# direct methods
.method constructor <init>(Lcom/samsung/cpp/CPPositioningManager$LocListenerTransport;Lcom/samsung/cpp/CPPositioningManager;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/samsung/cpp/CPPositioningManager$LocListenerTransport$1;->this$1:Lcom/samsung/cpp/CPPositioningManager$LocListenerTransport;

    iput-object p2, p0, Lcom/samsung/cpp/CPPositioningManager$LocListenerTransport$1;->val$this$0:Lcom/samsung/cpp/CPPositioningManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget-object v0, p0, Lcom/samsung/cpp/CPPositioningManager$LocListenerTransport$1;->this$1:Lcom/samsung/cpp/CPPositioningManager$LocListenerTransport;

    # invokes: Lcom/samsung/cpp/CPPositioningManager$LocListenerTransport;->_handleMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/samsung/cpp/CPPositioningManager$LocListenerTransport;->access$000(Lcom/samsung/cpp/CPPositioningManager$LocListenerTransport;Landroid/os/Message;)V

    return-void
.end method
