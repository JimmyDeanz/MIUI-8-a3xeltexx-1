.class Lcom/android/phone/settings/MobileNetworkSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "MobileNetworkSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/settings/MobileNetworkSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/settings/MobileNetworkSettings;


# direct methods
.method constructor <init>(Lcom/android/phone/settings/MobileNetworkSettings;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/android/phone/settings/MobileNetworkSettings$1;->this$0:Lcom/android/phone/settings/MobileNetworkSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 160
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, "action":Ljava/lang/String;
    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 162
    iget-object v3, p0, Lcom/android/phone/settings/MobileNetworkSettings$1;->this$0:Lcom/android/phone/settings/MobileNetworkSettings;

    const-string v4, "state"

    invoke-virtual {p2, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    # setter for: Lcom/android/phone/settings/MobileNetworkSettings;->mIsAirplaneEnabled:Z
    invoke-static {v3, v2}, Lcom/android/phone/settings/MobileNetworkSettings;->access$002(Lcom/android/phone/settings/MobileNetworkSettings;Z)Z

    .line 163
    iget-object v2, p0, Lcom/android/phone/settings/MobileNetworkSettings$1;->this$0:Lcom/android/phone/settings/MobileNetworkSettings;

    invoke-virtual {v2}, Lcom/android/phone/settings/MobileNetworkSettings;->updatePreferenceUI()V

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 165
    const-string v3, "ss"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 166
    .local v1, "state":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/settings/MobileNetworkSettings$1;->this$0:Lcom/android/phone/settings/MobileNetworkSettings;

    const-string v4, "ABSENT"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v2, 0x1

    :cond_2
    # invokes: Lcom/android/phone/settings/MobileNetworkSettings;->setPreferenceScreenEnabled(Z)V
    invoke-static {v3, v2}, Lcom/android/phone/settings/MobileNetworkSettings;->access$100(Lcom/android/phone/settings/MobileNetworkSettings;Z)V

    goto :goto_0
.end method
