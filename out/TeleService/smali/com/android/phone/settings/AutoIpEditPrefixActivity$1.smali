.class Lcom/android/phone/settings/AutoIpEditPrefixActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "AutoIpEditPrefixActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/settings/AutoIpEditPrefixActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/settings/AutoIpEditPrefixActivity;


# direct methods
.method constructor <init>(Lcom/android/phone/settings/AutoIpEditPrefixActivity;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/android/phone/settings/AutoIpEditPrefixActivity$1;->this$0:Lcom/android/phone/settings/AutoIpEditPrefixActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 33
    const-string v1, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 34
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/telephony/TelephonyManager;->getIccCardCount()I

    move-result v0

    .line 35
    .local v0, "count":I
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 36
    iget-object v1, p0, Lcom/android/phone/settings/AutoIpEditPrefixActivity$1;->this$0:Lcom/android/phone/settings/AutoIpEditPrefixActivity;

    invoke-virtual {v1}, Lcom/android/phone/settings/AutoIpEditPrefixActivity;->finish()V

    .line 41
    .end local v0    # "count":I
    :cond_0
    :goto_0
    return-void

    .line 38
    .restart local v0    # "count":I
    :cond_1
    iget-object v1, p0, Lcom/android/phone/settings/AutoIpEditPrefixActivity$1;->this$0:Lcom/android/phone/settings/AutoIpEditPrefixActivity;

    # invokes: Lcom/android/phone/settings/AutoIpEditPrefixActivity;->updateSimDisplayName()V
    invoke-static {v1}, Lcom/android/phone/settings/AutoIpEditPrefixActivity;->access$000(Lcom/android/phone/settings/AutoIpEditPrefixActivity;)V

    goto :goto_0
.end method
