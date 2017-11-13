.class Lcom/android/phone/MiuiPhoneApp$MiuiPhoneAppBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MiuiPhoneApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MiuiPhoneApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MiuiPhoneAppBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MiuiPhoneApp;


# direct methods
.method private constructor <init>(Lcom/android/phone/MiuiPhoneApp;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/phone/MiuiPhoneApp$MiuiPhoneAppBroadcastReceiver;->this$0:Lcom/android/phone/MiuiPhoneApp;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/MiuiPhoneApp;Lcom/android/phone/MiuiPhoneApp$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/phone/MiuiPhoneApp;
    .param p2, "x1"    # Lcom/android/phone/MiuiPhoneApp$1;

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/phone/MiuiPhoneApp$MiuiPhoneAppBroadcastReceiver;-><init>(Lcom/android/phone/MiuiPhoneApp;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 84
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "action":Ljava/lang/String;
    const-string v2, "miui.intent.action.MIUI_REGION_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 86
    const-string v2, "MiuiPhoneApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Region change to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "region"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const-string v2, "HK"

    const-string v3, "region"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "TW"

    const-string v3, "region"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "ID"

    const-string v3, "region"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "SG"

    const-string v3, "region"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 91
    :cond_0
    invoke-static {p1, v6}, Lcom/android/services/telephony/ims/ImsAdapter;->setEnhanced4gLteModeSetting(Landroid/content/Context;Z)V

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "volte_feature_disabled"

    invoke-static {v2, v3, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 106
    :cond_1
    :goto_0
    return-void

    .line 95
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "volte_vt_enabled"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 98
    .local v1, "enabled":I
    if-eq v1, v5, :cond_3

    if-nez v1, :cond_4

    .line 99
    :cond_3
    invoke-static {p1, v7}, Lcom/android/services/telephony/ims/ImsAdapter;->setEnhanced4gLteModeSetting(Landroid/content/Context;Z)V

    .line 101
    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "volte_feature_disabled"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method
