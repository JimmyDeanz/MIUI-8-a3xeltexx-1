.class Lcom/samsung/android/server/wifi/SoftApStateMachine$1;
.super Landroid/content/BroadcastReceiver;
.source "SoftApStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/SoftApStateMachine;-><init>(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SoftApStateMachine;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$1;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const-string v2, "availableArray"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .local v1, "available":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, "activeArray"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .local v0, "active":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$1;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    const v3, 0x2001d

    new-instance v4, Lcom/samsung/android/server/wifi/SoftApStateMachine$TetherStateChange;

    iget-object v5, p0, Lcom/samsung/android/server/wifi/SoftApStateMachine$1;->this$0:Lcom/samsung/android/server/wifi/SoftApStateMachine;

    invoke-direct {v4, v5, v1, v0}, Lcom/samsung/android/server/wifi/SoftApStateMachine$TetherStateChange;-><init>(Lcom/samsung/android/server/wifi/SoftApStateMachine;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/server/wifi/SoftApStateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method
