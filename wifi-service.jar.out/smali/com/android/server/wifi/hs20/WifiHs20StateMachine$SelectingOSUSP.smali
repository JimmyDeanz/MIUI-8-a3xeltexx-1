.class Lcom/android/server/wifi/hs20/WifiHs20StateMachine$SelectingOSUSP;
.super Lcom/android/internal/util/State;
.source "WifiHs20StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SelectingOSUSP"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)V
    .locals 0

    .prologue
    .line 1240
    iput-object p1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$SelectingOSUSP;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 1243
    invoke-super {p0}, Lcom/android/internal/util/State;->enter()V

    .line 1244
    const-string v0, "HS20StateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enter : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$SelectingOSUSP;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1249
    const/4 v0, 0x0

    .line 1250
    .local v0, "bRetVal":Z
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 1267
    :goto_0
    return v0

    .line 1252
    :sswitch_0
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$SelectingOSUSP;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$SelectingOSUSP;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mConnectingOSUSPState:Lcom/android/internal/util/State;
    invoke-static {v2}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$4600(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$4700(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V

    .line 1253
    const/4 v0, 0x1

    .line 1254
    goto :goto_0

    .line 1256
    :sswitch_1
    const-string v1, "HS20StateMachine"

    const-string v2, "CMD_HOTSPOT20_DISABLE "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1257
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$SelectingOSUSP;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$SelectingOSUSP;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mDisablingState:Lcom/android/internal/util/State;
    invoke-static {v2}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$2300(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$4800(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V

    .line 1258
    const/4 v0, 0x1

    .line 1259
    goto :goto_0

    .line 1261
    :sswitch_2
    const-string v1, "HS20StateMachine"

    const-string v2, "CMD_ABORT_PROVISIONING "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$SelectingOSUSP;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    const/4 v2, 0x1

    iput v2, v1, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->statusProvisioning:I

    .line 1263
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$SelectingOSUSP;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$SelectingOSUSP;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mDiscoveringState:Lcom/android/internal/util/State;
    invoke-static {v2}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$2100(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$4900(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V

    .line 1264
    const/4 v0, 0x1

    goto :goto_0

    .line 1250
    nop

    :sswitch_data_0
    .sparse-switch
        0x1b65 -> :sswitch_2
        0x1b6c -> :sswitch_0
        0x1b72 -> :sswitch_1
    .end sparse-switch
.end method
