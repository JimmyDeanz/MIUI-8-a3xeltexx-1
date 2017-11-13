.class Lcom/android/server/wifi/hs20/WifiHs20StateMachine$3;
.super Ljava/util/TimerTask;
.source "WifiHs20StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->updateSubsciptionTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

.field final synthetic val$credential_id:I


# direct methods
.method constructor <init>(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;I)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$3;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iput p2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$3;->val$credential_id:I

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x1b76

    iput v1, v0, Landroid/os/Message;->what:I

    iget v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$3;->val$credential_id:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$3;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method
