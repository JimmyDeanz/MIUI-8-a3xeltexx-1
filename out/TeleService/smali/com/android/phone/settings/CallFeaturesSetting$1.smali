.class Lcom/android/phone/settings/CallFeaturesSetting$1;
.super Landroid/content/BroadcastReceiver;
.source "CallFeaturesSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/settings/CallFeaturesSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/settings/CallFeaturesSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/settings/CallFeaturesSetting;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/phone/settings/CallFeaturesSetting$1;->this$0:Lcom/android/phone/settings/CallFeaturesSetting;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    .line 123
    if-nez p2, :cond_1

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "action":Ljava/lang/String;
    const/4 v2, 0x0

    .line 128
    .local v2, "refresh":Z
    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 129
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/telephony/TelephonyManager;->getIccCardCount()I

    move-result v1

    .line 130
    .local v1, "iccCardCount":I
    invoke-static {p1}, Lcom/android/phone/MiuiPhoneUtils;->isDcOnlyVirtualSim(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 131
    add-int/lit8 v1, v1, -0x1

    .line 133
    :cond_2
    iget-object v3, p0, Lcom/android/phone/settings/CallFeaturesSetting$1;->this$0:Lcom/android/phone/settings/CallFeaturesSetting;

    # getter for: Lcom/android/phone/settings/CallFeaturesSetting;->mIccCardCount:I
    invoke-static {v3}, Lcom/android/phone/settings/CallFeaturesSetting;->access$000(Lcom/android/phone/settings/CallFeaturesSetting;)I

    move-result v3

    if-eq v1, v3, :cond_3

    .line 134
    iget-object v3, p0, Lcom/android/phone/settings/CallFeaturesSetting$1;->this$0:Lcom/android/phone/settings/CallFeaturesSetting;

    # setter for: Lcom/android/phone/settings/CallFeaturesSetting;->mIccCardCount:I
    invoke-static {v3, v1}, Lcom/android/phone/settings/CallFeaturesSetting;->access$002(Lcom/android/phone/settings/CallFeaturesSetting;I)I

    .line 135
    const/4 v2, 0x1

    .line 145
    .end local v1    # "iccCardCount":I
    :cond_3
    :goto_1
    if-eqz v2, :cond_0

    .line 146
    iget-object v3, p0, Lcom/android/phone/settings/CallFeaturesSetting$1;->this$0:Lcom/android/phone/settings/CallFeaturesSetting;

    iget-object v3, v3, Lcom/android/phone/settings/CallFeaturesSetting;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 147
    iget-object v3, p0, Lcom/android/phone/settings/CallFeaturesSetting$1;->this$0:Lcom/android/phone/settings/CallFeaturesSetting;

    iget-object v3, v3, Lcom/android/phone/settings/CallFeaturesSetting;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v3, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 137
    :cond_4
    const-string v3, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 139
    iget-object v3, p0, Lcom/android/phone/settings/CallFeaturesSetting$1;->this$0:Lcom/android/phone/settings/CallFeaturesSetting;

    # getter for: Lcom/android/phone/settings/CallFeaturesSetting;->mFirstInit:Z
    invoke-static {v3}, Lcom/android/phone/settings/CallFeaturesSetting;->access$100(Lcom/android/phone/settings/CallFeaturesSetting;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 140
    iget-object v3, p0, Lcom/android/phone/settings/CallFeaturesSetting$1;->this$0:Lcom/android/phone/settings/CallFeaturesSetting;

    const/4 v4, 0x0

    # setter for: Lcom/android/phone/settings/CallFeaturesSetting;->mFirstInit:Z
    invoke-static {v3, v4}, Lcom/android/phone/settings/CallFeaturesSetting;->access$102(Lcom/android/phone/settings/CallFeaturesSetting;Z)Z

    goto :goto_1

    .line 142
    :cond_5
    const/4 v2, 0x1

    goto :goto_1
.end method
