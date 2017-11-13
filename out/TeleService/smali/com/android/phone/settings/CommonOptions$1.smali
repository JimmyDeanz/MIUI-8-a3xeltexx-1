.class Lcom/android/phone/settings/CommonOptions$1;
.super Landroid/content/BroadcastReceiver;
.source "CommonOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/settings/CommonOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/settings/CommonOptions;


# direct methods
.method constructor <init>(Lcom/android/phone/settings/CommonOptions;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/phone/settings/CommonOptions$1;->this$0:Lcom/android/phone/settings/CommonOptions;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 90
    if-eqz p2, :cond_0

    .line 91
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "action":Ljava/lang/String;
    sget v3, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    invoke-static {p2, v3}, Lmiui/telephony/SubscriptionManager;->getSlotIdExtra(Landroid/content/Intent;I)I

    move-result v1

    .line 94
    .local v1, "slotId":I
    iget-object v3, p0, Lcom/android/phone/settings/CommonOptions$1;->this$0:Lcom/android/phone/settings/CommonOptions;

    iget v3, v3, Lcom/android/phone/settings/CommonOptions;->mSlotId:I

    if-eq v1, v3, :cond_1

    .line 95
    # getter for: Lcom/android/phone/settings/CommonOptions;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/settings/CommonOptions;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mSimStateReceiver: slotId from intent is invalid, not equals mSlotId."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "slotId":I
    :cond_0
    :goto_0
    return-void

    .line 100
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v1    # "slotId":I
    :cond_1
    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 101
    const-string v3, "ss"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 103
    .local v2, "state":Ljava/lang/String;
    const-string v3, "ABSENT"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 104
    iget-object v3, p0, Lcom/android/phone/settings/CommonOptions$1;->this$0:Lcom/android/phone/settings/CommonOptions;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/phone/settings/CommonOptions;->setOptionEnabled(Z)V

    goto :goto_0

    .line 105
    :cond_2
    const-string v3, "LOADED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/settings/CommonOptions$1;->this$0:Lcom/android/phone/settings/CommonOptions;

    invoke-virtual {v3}, Lcom/android/phone/settings/CommonOptions;->isIccCardActivate()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 107
    iget-object v3, p0, Lcom/android/phone/settings/CommonOptions$1;->this$0:Lcom/android/phone/settings/CommonOptions;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/phone/settings/CommonOptions;->setOptionEnabled(Z)V

    goto :goto_0
.end method
