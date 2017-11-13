.class Lcom/android/phone/utils/SimCardStatMonitor$TelephonyBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SimCardStatMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/utils/SimCardStatMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TelephonyBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/utils/SimCardStatMonitor;


# direct methods
.method private constructor <init>(Lcom/android/phone/utils/SimCardStatMonitor;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/phone/utils/SimCardStatMonitor$TelephonyBroadcastReceiver;->this$0:Lcom/android/phone/utils/SimCardStatMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/utils/SimCardStatMonitor;Lcom/android/phone/utils/SimCardStatMonitor$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/phone/utils/SimCardStatMonitor;
    .param p2, "x1"    # Lcom/android/phone/utils/SimCardStatMonitor$1;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/phone/utils/SimCardStatMonitor$TelephonyBroadcastReceiver;-><init>(Lcom/android/phone/utils/SimCardStatMonitor;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x2

    .line 61
    if-nez p2, :cond_1

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    const-string v1, "android.intent.action.ACTION_DEFAULT_VOICE_SUBSCRIPTION_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    iget-object v1, p0, Lcom/android/phone/utils/SimCardStatMonitor$TelephonyBroadcastReceiver;->this$0:Lcom/android/phone/utils/SimCardStatMonitor;

    invoke-virtual {v1, v3}, Lcom/android/phone/utils/SimCardStatMonitor;->removeMessages(I)V

    .line 67
    iget-object v1, p0, Lcom/android/phone/utils/SimCardStatMonitor$TelephonyBroadcastReceiver;->this$0:Lcom/android/phone/utils/SimCardStatMonitor;

    invoke-virtual {v1, v3}, Lcom/android/phone/utils/SimCardStatMonitor;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 68
    .local v0, "msg":Landroid/os/Message;
    const-string v1, "subscription"

    sget v2, Lmiui/telephony/SubscriptionManager;->DEFAULT_SUBSCRIPTION_ID:I

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 70
    iget-object v1, p0, Lcom/android/phone/utils/SimCardStatMonitor$TelephonyBroadcastReceiver;->this$0:Lcom/android/phone/utils/SimCardStatMonitor;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/phone/utils/SimCardStatMonitor;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method
