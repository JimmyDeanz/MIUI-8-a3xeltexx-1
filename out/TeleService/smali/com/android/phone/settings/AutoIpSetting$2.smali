.class Lcom/android/phone/settings/AutoIpSetting$2;
.super Landroid/content/BroadcastReceiver;
.source "AutoIpSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/settings/AutoIpSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/settings/AutoIpSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/settings/AutoIpSetting;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/phone/settings/AutoIpSetting$2;->this$0:Lcom/android/phone/settings/AutoIpSetting;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 137
    const-string v0, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/android/phone/settings/AutoIpSetting$2;->this$0:Lcom/android/phone/settings/AutoIpSetting;

    # invokes: Lcom/android/phone/settings/AutoIpSetting;->updateTextIpPrefix()V
    invoke-static {v0}, Lcom/android/phone/settings/AutoIpSetting;->access$200(Lcom/android/phone/settings/AutoIpSetting;)V

    .line 140
    :cond_0
    return-void
.end method
