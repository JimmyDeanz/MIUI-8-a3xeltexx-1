.class public Lcom/android/phone/settings/CLIRListPreference;
.super Landroid/preference/ListPreference;
.source "CLIRListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/settings/CLIRListPreference$1;,
        Lcom/android/phone/settings/CLIRListPreference$MyHandler;
    }
.end annotation


# instance fields
.field private final DBG:Z

.field clirArray:[I

.field private final mHandler:Lcom/android/phone/settings/CLIRListPreference$MyHandler;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mTcpListener:Lcom/android/phone/settings/TimeConsumingPreferenceListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/settings/CLIRListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/settings/CLIRListPreference;->DBG:Z

    .line 26
    new-instance v0, Lcom/android/phone/settings/CLIRListPreference$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/settings/CLIRListPreference$MyHandler;-><init>(Lcom/android/phone/settings/CLIRListPreference;Lcom/android/phone/settings/CLIRListPreference$1;)V

    iput-object v0, p0, Lcom/android/phone/settings/CLIRListPreference;->mHandler:Lcom/android/phone/settings/CLIRListPreference$MyHandler;

    .line 34
    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/settings/CLIRListPreference;)Lcom/android/phone/settings/CLIRListPreference$MyHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/CLIRListPreference;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/phone/settings/CLIRListPreference;->mHandler:Lcom/android/phone/settings/CLIRListPreference$MyHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/settings/CLIRListPreference;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/CLIRListPreference;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/phone/settings/CLIRListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/settings/CLIRListPreference;)Lcom/android/phone/settings/TimeConsumingPreferenceListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/CLIRListPreference;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/phone/settings/CLIRListPreference;->mTcpListener:Lcom/android/phone/settings/TimeConsumingPreferenceListener;

    return-object v0
.end method


# virtual methods
.method handleGetCLIRResult([I)V
    .locals 7
    .param p1, "tmpClirArray"    # [I

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 68
    iput-object p1, p0, Lcom/android/phone/settings/CLIRListPreference;->clirArray:[I

    .line 69
    aget v5, p1, v4

    if-eq v5, v4, :cond_0

    aget v5, p1, v4

    const/4 v6, 0x3

    if-eq v5, v6, :cond_0

    aget v5, p1, v4

    const/4 v6, 0x4

    if-ne v5, v6, :cond_1

    :cond_0
    move v0, v4

    .line 71
    .local v0, "enabled":Z
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/phone/settings/CLIRListPreference;->setEnabled(Z)V

    .line 74
    const/4 v2, 0x0

    .line 75
    .local v2, "value":I
    aget v4, p1, v4

    packed-switch v4, :pswitch_data_0

    .line 95
    :pswitch_0
    const/4 v2, 0x0

    .line 98
    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/phone/settings/CLIRListPreference;->setValueIndex(I)V

    .line 101
    const v1, 0x7f0800fc

    .line 102
    .local v1, "summary":I
    packed-switch v2, :pswitch_data_1

    .line 113
    :goto_2
    invoke-virtual {p0, v1}, Lcom/android/phone/settings/CLIRListPreference;->setSummary(I)V

    .line 114
    return-void

    .end local v0    # "enabled":Z
    .end local v1    # "summary":I
    .end local v2    # "value":I
    :cond_1
    move v0, v3

    .line 69
    goto :goto_0

    .line 79
    .restart local v0    # "enabled":Z
    .restart local v2    # "value":I
    :pswitch_1
    aget v3, p1, v3

    packed-switch v3, :pswitch_data_2

    .line 88
    const/4 v2, 0x0

    .line 89
    goto :goto_1

    .line 81
    :pswitch_2
    const/4 v2, 0x1

    .line 82
    goto :goto_1

    .line 84
    :pswitch_3
    const/4 v2, 0x2

    .line 85
    goto :goto_1

    .line 104
    .restart local v1    # "summary":I
    :pswitch_4
    const v1, 0x7f0800fb

    .line 105
    goto :goto_2

    .line 107
    :pswitch_5
    const v1, 0x7f0800fa

    .line 108
    goto :goto_2

    .line 110
    :pswitch_6
    const v1, 0x7f0800fc

    goto :goto_2

    .line 75
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 102
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    .line 79
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public init(Lcom/android/phone/settings/TimeConsumingPreferenceListener;ZI)V
    .locals 4
    .param p1, "listener"    # Lcom/android/phone/settings/TimeConsumingPreferenceListener;
    .param p2, "skipReading"    # Z
    .param p3, "subscription"    # I

    .prologue
    const/4 v3, 0x0

    .line 54
    const-string v0, "CLIRListPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CLIRListPreference init, subscription :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-static {p3}, Lcom/android/phone/MiuiPhoneUtils;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/settings/CLIRListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 57
    iput-object p1, p0, Lcom/android/phone/settings/CLIRListPreference;->mTcpListener:Lcom/android/phone/settings/TimeConsumingPreferenceListener;

    .line 58
    if-nez p2, :cond_0

    .line 59
    iget-object v0, p0, Lcom/android/phone/settings/CLIRListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/settings/CLIRListPreference;->mHandler:Lcom/android/phone/settings/CLIRListPreference$MyHandler;

    invoke-virtual {v1, v3, v3, v3}, Lcom/android/phone/settings/CLIRListPreference$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getOutgoingCallerIdDisplay(Landroid/os/Message;)V

    .line 61
    iget-object v0, p0, Lcom/android/phone/settings/CLIRListPreference;->mTcpListener:Lcom/android/phone/settings/TimeConsumingPreferenceListener;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/android/phone/settings/CLIRListPreference;->mTcpListener:Lcom/android/phone/settings/TimeConsumingPreferenceListener;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lcom/android/phone/settings/TimeConsumingPreferenceListener;->onStarted(Landroid/preference/Preference;Z)V

    .line 65
    :cond_0
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 4
    .param p1, "positiveResult"    # Z

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onDialogClosed(Z)V

    .line 44
    iget-object v0, p0, Lcom/android/phone/settings/CLIRListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/phone/settings/CLIRListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/phone/settings/CLIRListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/android/phone/settings/CLIRListPreference;->mHandler:Lcom/android/phone/settings/CLIRListPreference$MyHandler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/phone/settings/CLIRListPreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/Phone;->setOutgoingCallerIdDisplay(ILandroid/os/Message;)V

    .line 46
    iget-object v0, p0, Lcom/android/phone/settings/CLIRListPreference;->mTcpListener:Lcom/android/phone/settings/TimeConsumingPreferenceListener;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/android/phone/settings/CLIRListPreference;->mTcpListener:Lcom/android/phone/settings/TimeConsumingPreferenceListener;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/android/phone/settings/TimeConsumingPreferenceListener;->onStarted(Landroid/preference/Preference;Z)V

    .line 49
    :cond_0
    return-void
.end method
