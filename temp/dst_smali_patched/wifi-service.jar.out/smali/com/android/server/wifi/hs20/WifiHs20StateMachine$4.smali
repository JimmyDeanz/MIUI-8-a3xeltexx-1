.class Lcom/android/server/wifi/hs20/WifiHs20StateMachine$4;
.super Ljava/util/TimerTask;
.source "WifiHs20StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->startTimerNew(JII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

.field final synthetic val$id:I

.field final synthetic val$method:I


# direct methods
.method constructor <init>(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;II)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$4;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iput p2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$4;->val$id:I

    iput p3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$4;->val$method:I

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$4;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$4;->val$id:I

    # invokes: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->isPolicyUpdate(I)Z
    invoke-static {v0, v1}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$1400(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$4;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$4;->val$id:I

    iget v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$4;->val$method:I

    # invokes: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->sendPolicyUpdateMessage(II)V
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$1500(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;II)V

    :cond_0
    return-void
.end method
