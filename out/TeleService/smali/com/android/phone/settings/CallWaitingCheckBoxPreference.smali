.class public Lcom/android/phone/settings/CallWaitingCheckBoxPreference;
.super Landroid/preference/CheckBoxPreference;
.source "CallWaitingCheckBoxPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/settings/CallWaitingCheckBoxPreference$MyHandler;
    }
.end annotation


# instance fields
.field private final DBG:Z

.field private isOpen:Z

.field private final mHandler:Lcom/android/phone/settings/CallWaitingCheckBoxPreference$MyHandler;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mTcpListener:Lcom/android/phone/settings/TimeConsumingPreferenceListener;

.field public openComfirm:Landroid/app/Dialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/settings/CallWaitingCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 38
    const v0, 0x101008f

    invoke-direct {p0, p1, p2, v0}, Lcom/android/phone/settings/CallWaitingCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    iput-boolean v2, p0, Lcom/android/phone/settings/CallWaitingCheckBoxPreference;->DBG:Z

    .line 27
    new-instance v0, Lcom/android/phone/settings/CallWaitingCheckBoxPreference$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/settings/CallWaitingCheckBoxPreference$MyHandler;-><init>(Lcom/android/phone/settings/CallWaitingCheckBoxPreference;Lcom/android/phone/settings/CallWaitingCheckBoxPreference$1;)V

    iput-object v0, p0, Lcom/android/phone/settings/CallWaitingCheckBoxPreference;->mHandler:Lcom/android/phone/settings/CallWaitingCheckBoxPreference$MyHandler;

    .line 31
    iput-boolean v2, p0, Lcom/android/phone/settings/CallWaitingCheckBoxPreference;->isOpen:Z

    .line 35
    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/settings/CallWaitingCheckBoxPreference;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/CallWaitingCheckBoxPreference;

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/android/phone/settings/CallWaitingCheckBoxPreference;->isOpen:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/phone/settings/CallWaitingCheckBoxPreference;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/CallWaitingCheckBoxPreference;
    .param p1, "x1"    # Z

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/android/phone/settings/CallWaitingCheckBoxPreference;->isOpen:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/phone/settings/CallWaitingCheckBoxPreference;)Lcom/android/phone/settings/CallWaitingCheckBoxPreference$MyHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/CallWaitingCheckBoxPreference;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/phone/settings/CallWaitingCheckBoxPreference;->mHandler:Lcom/android/phone/settings/CallWaitingCheckBoxPreference$MyHandler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/settings/CallWaitingCheckBoxPreference;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/CallWaitingCheckBoxPreference;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/phone/settings/CallWaitingCheckBoxPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/settings/CallWaitingCheckBoxPreference;)Lcom/android/phone/settings/TimeConsumingPreferenceListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/CallWaitingCheckBoxPreference;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/phone/settings/CallWaitingCheckBoxPreference;->mTcpListener:Lcom/android/phone/settings/TimeConsumingPreferenceListener;

    return-object v0
.end method


# virtual methods
.method public init(Lcom/android/phone/settings/TimeConsumingPreferenceListener;ZI)V
    .locals 3
    .param p1, "listener"    # Lcom/android/phone/settings/TimeConsumingPreferenceListener;
    .param p2, "skipReading"    # Z
    .param p3, "subscription"    # I

    .prologue
    const/4 v2, 0x0

    .line 50
    invoke-static {p3}, Lcom/android/phone/MiuiPhoneUtils;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/settings/CallWaitingCheckBoxPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 52
    iput-object p1, p0, Lcom/android/phone/settings/CallWaitingCheckBoxPreference;->mTcpListener:Lcom/android/phone/settings/TimeConsumingPreferenceListener;

    .line 54
    if-nez p2, :cond_0

    .line 55
    iget-object v0, p0, Lcom/android/phone/settings/CallWaitingCheckBoxPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/settings/CallWaitingCheckBoxPreference;->mHandler:Lcom/android/phone/settings/CallWaitingCheckBoxPreference$MyHandler;

    invoke-virtual {v1, v2, v2, v2}, Lcom/android/phone/settings/CallWaitingCheckBoxPreference$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getCallWaiting(Landroid/os/Message;)V

    .line 57
    iget-object v0, p0, Lcom/android/phone/settings/CallWaitingCheckBoxPreference;->mTcpListener:Lcom/android/phone/settings/TimeConsumingPreferenceListener;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/android/phone/settings/CallWaitingCheckBoxPreference;->mTcpListener:Lcom/android/phone/settings/TimeConsumingPreferenceListener;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lcom/android/phone/settings/TimeConsumingPreferenceListener;->onStarted(Landroid/preference/Preference;Z)V

    .line 61
    :cond_0
    return-void
.end method

.method protected onClick()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 65
    invoke-super {p0}, Landroid/preference/CheckBoxPreference;->onClick()V

    .line 67
    invoke-virtual {p0}, Lcom/android/phone/settings/CallWaitingCheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 68
    iput-boolean v3, p0, Lcom/android/phone/settings/CallWaitingCheckBoxPreference;->isOpen:Z

    .line 69
    iget-object v0, p0, Lcom/android/phone/settings/CallWaitingCheckBoxPreference;->openComfirm:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/settings/CallWaitingCheckBoxPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0803ec

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0803ed

    new-instance v2, Lcom/android/phone/settings/CallWaitingCheckBoxPreference$1;

    invoke-direct {v2, p0}, Lcom/android/phone/settings/CallWaitingCheckBoxPreference$1;-><init>(Lcom/android/phone/settings/CallWaitingCheckBoxPreference;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0802d4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/settings/CallWaitingCheckBoxPreference;->openComfirm:Landroid/app/Dialog;

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/android/phone/settings/CallWaitingCheckBoxPreference;->openComfirm:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 89
    iget-object v0, p0, Lcom/android/phone/settings/CallWaitingCheckBoxPreference;->openComfirm:Landroid/app/Dialog;

    new-instance v1, Lcom/android/phone/settings/CallWaitingCheckBoxPreference$2;

    invoke-direct {v1, p0}, Lcom/android/phone/settings/CallWaitingCheckBoxPreference$2;-><init>(Lcom/android/phone/settings/CallWaitingCheckBoxPreference;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 105
    :cond_1
    :goto_0
    return-void

    .line 99
    :cond_2
    iget-object v0, p0, Lcom/android/phone/settings/CallWaitingCheckBoxPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/settings/CallWaitingCheckBoxPreference;->mHandler:Lcom/android/phone/settings/CallWaitingCheckBoxPreference$MyHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/phone/settings/CallWaitingCheckBoxPreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/android/internal/telephony/Phone;->setCallWaiting(ZLandroid/os/Message;)V

    .line 101
    iget-object v0, p0, Lcom/android/phone/settings/CallWaitingCheckBoxPreference;->mTcpListener:Lcom/android/phone/settings/TimeConsumingPreferenceListener;

    if-eqz v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/android/phone/settings/CallWaitingCheckBoxPreference;->mTcpListener:Lcom/android/phone/settings/TimeConsumingPreferenceListener;

    invoke-interface {v0, p0, v3}, Lcom/android/phone/settings/TimeConsumingPreferenceListener;->onStarted(Landroid/preference/Preference;Z)V

    goto :goto_0
.end method
