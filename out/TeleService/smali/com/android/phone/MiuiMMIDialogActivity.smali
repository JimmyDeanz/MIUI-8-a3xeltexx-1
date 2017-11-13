.class public Lcom/android/phone/MiuiMMIDialogActivity;
.super Landroid/app/Activity;
.source "MiuiMMIDialogActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mHandler:Landroid/os/Handler;

.field private mMMIDialog:Landroid/app/Dialog;

.field private mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/android/phone/MiuiMMIDialogActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/MiuiMMIDialogActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 36
    iput-object v0, p0, Lcom/android/phone/MiuiMMIDialogActivity;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 37
    iput-object v0, p0, Lcom/android/phone/MiuiMMIDialogActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/MiuiMMIDialogActivity;Lcom/android/internal/telephony/MmiCode;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/MiuiMMIDialogActivity;
    .param p1, "x1"    # Lcom/android/internal/telephony/MmiCode;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/android/phone/MiuiMMIDialogActivity;->onMMIComplete(Lcom/android/internal/telephony/MmiCode;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/MiuiMMIDialogActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/MiuiMMIDialogActivity;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/phone/MiuiMMIDialogActivity;->onMMICancel()V

    return-void
.end method

.method private dismissDialogsAndFinish()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 149
    iget-object v0, p0, Lcom/android/phone/MiuiMMIDialogActivity;->mMMIDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/android/phone/MiuiMMIDialogActivity;->mMMIDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 151
    iput-object v2, p0, Lcom/android/phone/MiuiMMIDialogActivity;->mMMIDialog:Landroid/app/Dialog;

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/android/phone/MiuiMMIDialogActivity;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 154
    iget-object v0, p0, Lcom/android/phone/MiuiMMIDialogActivity;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/MiuiMMIDialogActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForMmiComplete(Landroid/os/Handler;)V

    .line 155
    iput-object v2, p0, Lcom/android/phone/MiuiMMIDialogActivity;->mHandler:Landroid/os/Handler;

    .line 157
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/MiuiMMIDialogActivity;->finish()V

    .line 158
    return-void
.end method

.method private onMMICancel()V
    .locals 2

    .prologue
    .line 130
    sget-object v0, Lcom/android/phone/MiuiMMIDialogActivity;->TAG:Ljava/lang/String;

    const-string v1, "onMMICancel()..."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v0, p0, Lcom/android/phone/MiuiMMIDialogActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->cancelMmiCode(Lcom/android/internal/telephony/Phone;)Z

    .line 144
    sget-object v0, Lcom/android/phone/MiuiMMIDialogActivity;->TAG:Ljava/lang/String;

    const-string v1, "onMMICancel: finishing InCallScreen..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-direct {p0}, Lcom/android/phone/MiuiMMIDialogActivity;->dismissDialogsAndFinish()V

    .line 146
    return-void
.end method

.method private onMMIComplete(Lcom/android/internal/telephony/MmiCode;)V
    .locals 3
    .param p1, "mmiCode"    # Lcom/android/internal/telephony/MmiCode;

    .prologue
    const/4 v2, 0x0

    .line 114
    iget-object v1, p0, Lcom/android/phone/MiuiMMIDialogActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 115
    .local v0, "phoneType":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 116
    iget-object v1, p0, Lcom/android/phone/MiuiMMIDialogActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v1, p0, p1, v2, v2}, Lcom/android/phone/PhoneUtils;->displayMMIComplete(Lcom/android/internal/telephony/Phone;Landroid/content/Context;Lcom/android/internal/telephony/MmiCode;Landroid/os/Message;Landroid/app/AlertDialog;)V

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Lcom/android/internal/telephony/MmiCode;->getState()Lcom/android/internal/telephony/MmiCode$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    if-eq v1, v2, :cond_0

    .line 119
    sget-object v1, Lcom/android/phone/MiuiMMIDialogActivity;->TAG:Ljava/lang/String;

    const-string v2, "Got MMI_COMPLETE, finishing dialog activity..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-direct {p0}, Lcom/android/phone/MiuiMMIDialogActivity;->dismissDialogsAndFinish()V

    goto :goto_0
.end method

.method private showMMIDialog()V
    .locals 5

    .prologue
    .line 95
    iget-object v3, p0, Lcom/android/phone/MiuiMMIDialogActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPendingMmiCodes()Ljava/util/List;

    move-result-object v0

    .line 96
    .local v0, "codes":Ljava/util/List;, "Ljava/util/List<+Lcom/android/internal/telephony/MmiCode;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 97
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/MmiCode;

    .line 98
    .local v2, "mmiCode":Lcom/android/internal/telephony/MmiCode;
    iget-object v3, p0, Lcom/android/phone/MiuiMMIDialogActivity;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x35

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 99
    .local v1, "message":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/phone/MiuiMMIDialogActivity;->mMMIDialog:Landroid/app/Dialog;

    invoke-static {p0, v2, v1, v3}, Lcom/android/phone/PhoneUtils;->displayMMIInitiate(Landroid/content/Context;Lcom/android/internal/telephony/MmiCode;Landroid/os/Message;Landroid/app/Dialog;)Landroid/app/Dialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/MiuiMMIDialogActivity;->mMMIDialog:Landroid/app/Dialog;

    .line 103
    .end local v1    # "message":Landroid/os/Message;
    .end local v2    # "mmiCode":Lcom/android/internal/telephony/MmiCode;
    :goto_0
    return-void

    .line 101
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/MiuiMMIDialogActivity;->finish()V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 42
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    if-nez v2, :cond_1

    .line 44
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getCallManager()Lcom/android/internal/telephony/CallManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/MiuiMMIDialogActivity;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 45
    invoke-virtual {p0}, Lcom/android/phone/MiuiMMIDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 51
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "subscription"

    const v3, 0x7fffffff

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 52
    .local v0, "id":I
    invoke-static {v0}, Lcom/android/phone/PhoneGlobals;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/MiuiMMIDialogActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 54
    new-instance v2, Lcom/android/phone/MiuiMMIDialogActivity$1;

    invoke-direct {v2, p0}, Lcom/android/phone/MiuiMMIDialogActivity$1;-><init>(Lcom/android/phone/MiuiMMIDialogActivity;)V

    iput-object v2, p0, Lcom/android/phone/MiuiMMIDialogActivity;->mHandler:Landroid/os/Handler;

    .line 69
    iget-object v2, p0, Lcom/android/phone/MiuiMMIDialogActivity;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v3, p0, Lcom/android/phone/MiuiMMIDialogActivity;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x34

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/telephony/CallManager;->registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 70
    iget-object v2, p0, Lcom/android/phone/MiuiMMIDialogActivity;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v2, v3, :cond_0

    .line 71
    const v2, 0x7f080226

    invoke-static {p0, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 73
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/MiuiMMIDialogActivity;->showMMIDialog()V

    .line 78
    .end local v0    # "id":I
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 75
    :cond_1
    const v2, 0x7f0800be

    invoke-static {p0, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 76
    invoke-virtual {p0}, Lcom/android/phone/MiuiMMIDialogActivity;->finish()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 82
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 84
    iget-object v0, p0, Lcom/android/phone/MiuiMMIDialogActivity;->mMMIDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/android/phone/MiuiMMIDialogActivity;->mMMIDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 86
    iput-object v2, p0, Lcom/android/phone/MiuiMMIDialogActivity;->mMMIDialog:Landroid/app/Dialog;

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/android/phone/MiuiMMIDialogActivity;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/android/phone/MiuiMMIDialogActivity;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/MiuiMMIDialogActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForMmiComplete(Landroid/os/Handler;)V

    .line 90
    iput-object v2, p0, Lcom/android/phone/MiuiMMIDialogActivity;->mHandler:Landroid/os/Handler;

    .line 92
    :cond_1
    return-void
.end method
