.class public Lcom/android/phone/MMIDialogActivity;
.super Landroid/app/Activity;
.source "MMIDialogActivity.java"


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
    .line 39
    const-class v0, Lcom/android/phone/MMIDialogActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/MMIDialogActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 45
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getCallManager()Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MMIDialogActivity;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 46
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MMIDialogActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/MMIDialogActivity;Lcom/android/internal/telephony/MmiCode;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/MMIDialogActivity;
    .param p1, "x1"    # Lcom/android/internal/telephony/MmiCode;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/phone/MMIDialogActivity;->onMMIComplete(Lcom/android/internal/telephony/MmiCode;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/MMIDialogActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/MMIDialogActivity;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/phone/MMIDialogActivity;->onMMICancel()V

    return-void
.end method

.method private dismissDialogsAndFinish()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 142
    iget-object v0, p0, Lcom/android/phone/MMIDialogActivity;->mMMIDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/android/phone/MMIDialogActivity;->mMMIDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 144
    iput-object v2, p0, Lcom/android/phone/MMIDialogActivity;->mMMIDialog:Landroid/app/Dialog;

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/android/phone/MMIDialogActivity;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/android/phone/MMIDialogActivity;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/MMIDialogActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForMmiComplete(Landroid/os/Handler;)V

    .line 148
    iput-object v2, p0, Lcom/android/phone/MMIDialogActivity;->mHandler:Landroid/os/Handler;

    .line 150
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/MMIDialogActivity;->finish()V

    .line 151
    return-void
.end method

.method private onMMICancel()V
    .locals 2

    .prologue
    .line 123
    sget-object v0, Lcom/android/phone/MMIDialogActivity;->TAG:Ljava/lang/String;

    const-string v1, "onMMICancel()..."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v0, p0, Lcom/android/phone/MMIDialogActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->cancelMmiCode(Lcom/android/internal/telephony/Phone;)Z

    .line 137
    sget-object v0, Lcom/android/phone/MMIDialogActivity;->TAG:Ljava/lang/String;

    const-string v1, "onMMICancel: finishing InCallScreen..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-direct {p0}, Lcom/android/phone/MMIDialogActivity;->dismissDialogsAndFinish()V

    .line 139
    return-void
.end method

.method private onMMIComplete(Lcom/android/internal/telephony/MmiCode;)V
    .locals 3
    .param p1, "mmiCode"    # Lcom/android/internal/telephony/MmiCode;

    .prologue
    const/4 v2, 0x0

    .line 106
    iget-object v1, p0, Lcom/android/phone/MMIDialogActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 107
    .local v0, "phoneType":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 108
    iget-object v1, p0, Lcom/android/phone/MMIDialogActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v1, p0, p1, v2, v2}, Lcom/android/phone/PhoneUtils;->displayMMIComplete(Lcom/android/internal/telephony/Phone;Landroid/content/Context;Lcom/android/internal/telephony/MmiCode;Landroid/os/Message;Landroid/app/AlertDialog;)V

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 110
    invoke-interface {p1}, Lcom/android/internal/telephony/MmiCode;->getState()Lcom/android/internal/telephony/MmiCode$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    if-eq v1, v2, :cond_0

    .line 111
    sget-object v1, Lcom/android/phone/MMIDialogActivity;->TAG:Ljava/lang/String;

    const-string v2, "Got MMI_COMPLETE, finishing dialog activity..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-direct {p0}, Lcom/android/phone/MMIDialogActivity;->dismissDialogsAndFinish()V

    goto :goto_0
.end method

.method private showMMIDialog()V
    .locals 5

    .prologue
    .line 87
    iget-object v3, p0, Lcom/android/phone/MMIDialogActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPendingMmiCodes()Ljava/util/List;

    move-result-object v0

    .line 88
    .local v0, "codes":Ljava/util/List;, "Ljava/util/List<+Lcom/android/internal/telephony/MmiCode;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 89
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/MmiCode;

    .line 90
    .local v2, "mmiCode":Lcom/android/internal/telephony/MmiCode;
    iget-object v3, p0, Lcom/android/phone/MMIDialogActivity;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x35

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 91
    .local v1, "message":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/phone/MMIDialogActivity;->mMMIDialog:Landroid/app/Dialog;

    invoke-static {p0, v2, v1, v3}, Lcom/android/phone/PhoneUtils;->displayMMIInitiate(Landroid/content/Context;Lcom/android/internal/telephony/MmiCode;Landroid/os/Message;Landroid/app/Dialog;)Landroid/app/Dialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/MMIDialogActivity;->mMMIDialog:Landroid/app/Dialog;

    .line 95
    .end local v1    # "message":Landroid/os/Message;
    .end local v2    # "mmiCode":Lcom/android/internal/telephony/MmiCode;
    :goto_0
    return-void

    .line 93
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/MMIDialogActivity;->finish()V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    new-instance v0, Lcom/android/phone/MMIDialogActivity$1;

    invoke-direct {v0, p0}, Lcom/android/phone/MMIDialogActivity$1;-><init>(Lcom/android/phone/MMIDialogActivity;)V

    iput-object v0, p0, Lcom/android/phone/MMIDialogActivity;->mHandler:Landroid/os/Handler;

    .line 65
    iget-object v0, p0, Lcom/android/phone/MMIDialogActivity;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/MMIDialogActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x34

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 66
    iget-object v0, p0, Lcom/android/phone/MMIDialogActivity;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v1, :cond_0

    .line 67
    const v0, 0x7f080226

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 69
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/MMIDialogActivity;->showMMIDialog()V

    .line 70
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 74
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 76
    iget-object v0, p0, Lcom/android/phone/MMIDialogActivity;->mMMIDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/android/phone/MMIDialogActivity;->mMMIDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 78
    iput-object v2, p0, Lcom/android/phone/MMIDialogActivity;->mMMIDialog:Landroid/app/Dialog;

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/android/phone/MMIDialogActivity;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p0, Lcom/android/phone/MMIDialogActivity;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/MMIDialogActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForMmiComplete(Landroid/os/Handler;)V

    .line 82
    iput-object v2, p0, Lcom/android/phone/MMIDialogActivity;->mHandler:Landroid/os/Handler;

    .line 84
    :cond_1
    return-void
.end method
