.class final Lcom/android/phone/MiuiLog$2;
.super Landroid/content/BroadcastReceiver;
.source "MiuiLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/MiuiLog;->register()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    .line 40
    const-string v1, "android.provider.Telephony.SECRET_CODE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, "host":Ljava/lang/String;
    const-string v1, "74663"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 43
    sget-boolean v1, Lmiui/telephony/PhoneDebug;->VDBG:Z

    if-eqz v1, :cond_1

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "phone_debug_flag"

    # getter for: Lcom/android/phone/MiuiLog;->VERBOSE_DEBUG_OFF:I
    invoke-static {}, Lcom/android/phone/MiuiLog;->access$000()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 45
    const-string v1, "PhoneApp"

    const-string v2, "Verbose Debug for telephony is closed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    const-string v1, "Debug for telephony is closed."

    invoke-static {p1, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 54
    .end local v0    # "host":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 48
    .restart local v0    # "host":Ljava/lang/String;
    :cond_1
    const-string v1, "PhoneApp"

    const-string v2, "Verbose Debug for telephony is opened"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    const-string v1, "Debug for telephony is opened."

    invoke-static {p1, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "phone_debug_flag"

    # getter for: Lcom/android/phone/MiuiLog;->VERBOSE_DEBUG_ON:I
    invoke-static {}, Lcom/android/phone/MiuiLog;->access$100()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method
