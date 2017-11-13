.class Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DisabledState;
.super Lcom/android/internal/util/State;
.source "WifiHs20StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/hs20/WifiHs20StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DisabledState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)V
    .locals 0

    .prologue
    .line 1065
    iput-object p1, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DisabledState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 1068
    invoke-super {p0}, Lcom/android/internal/util/State;->enter()V

    .line 1069
    const-string v0, "HS20StateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enter : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DisabledState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1074
    const/4 v0, 0x0

    .line 1075
    .local v0, "bRetVal":Z
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 1108
    :goto_0
    return v0

    .line 1077
    :sswitch_0
    const-string v2, "HS20StateMachine"

    const-string v3, "CMD_HOTSPOT20_ENABLE : "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DisabledState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DisabledState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mDiscoveringState:Lcom/android/internal/util/State;
    invoke-static {v3}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$2100(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Lcom/android/internal/util/State;

    move-result-object v3

    # invokes: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$3000(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V

    .line 1079
    const/4 v0, 0x1

    .line 1080
    goto :goto_0

    .line 1082
    :sswitch_1
    const-string v2, "HS20StateMachine"

    const-string v3, "CMD_SELECT_OSU"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DisabledState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DisabledState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mSelectingOSUSPState:Lcom/android/internal/util/State;
    invoke-static {v3}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$3100(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Lcom/android/internal/util/State;

    move-result-object v3

    # invokes: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$3200(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V

    .line 1084
    const/4 v0, 0x1

    .line 1085
    goto :goto_0

    .line 1088
    :sswitch_2
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DisabledState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->CERTIFICATIION_ADDED_DELAY:I
    invoke-static {v2}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$300(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1092
    :goto_1
    const-string v2, "HS20StateMachine"

    const-string v3, "CMD_START_REMEDIATION"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DisabledState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20StateMachine$DisabledState;->this$0:Lcom/android/server/wifi/hs20/WifiHs20StateMachine;

    # getter for: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->mEstablishingTLSState:Lcom/android/internal/util/State;
    invoke-static {v3}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$2500(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;)Lcom/android/internal/util/State;

    move-result-object v3

    # invokes: Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/hs20/WifiHs20StateMachine;->access$3300(Lcom/android/server/wifi/hs20/WifiHs20StateMachine;Lcom/android/internal/util/IState;)V

    .line 1094
    const/4 v0, 0x1

    .line 1095
    goto :goto_0

    .line 1089
    :catch_0
    move-exception v1

    .line 1090
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 1075
    :sswitch_data_0
    .sparse-switch
        0x1b5a -> :sswitch_2
        0x1b6b -> :sswitch_1
        0x1b71 -> :sswitch_0
    .end sparse-switch
.end method
