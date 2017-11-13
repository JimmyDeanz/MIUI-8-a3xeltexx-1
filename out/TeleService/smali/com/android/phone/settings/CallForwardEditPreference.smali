.class public Lcom/android/phone/settings/CallForwardEditPreference;
.super Lcom/android/phone/settings/EditPhoneNumberPreference;
.source "CallForwardEditPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/settings/CallForwardEditPreference$1;,
        Lcom/android/phone/settings/CallForwardEditPreference$MyHandler;
    }
.end annotation


# static fields
.field private static final SRC_TAGS:[Ljava/lang/String;


# instance fields
.field public callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

.field private mButtonClicked:I

.field private mHandler:Lcom/android/phone/settings/CallForwardEditPreference$MyHandler;

.field private mServiceClass:I

.field private mSummaryOnTemplate:Ljava/lang/CharSequence;

.field phone:Lcom/android/internal/telephony/Phone;

.field public reason:I

.field tcpListener:Lcom/android/phone/settings/TimeConsumingPreferenceListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 36
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "{0}"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/settings/CallForwardEditPreference;->SRC_TAGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/settings/CallForwardEditPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/android/phone/settings/EditPhoneNumberPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    new-instance v1, Lcom/android/phone/settings/CallForwardEditPreference$MyHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/phone/settings/CallForwardEditPreference$MyHandler;-><init>(Lcom/android/phone/settings/CallForwardEditPreference;Lcom/android/phone/settings/CallForwardEditPreference$1;)V

    iput-object v1, p0, Lcom/android/phone/settings/CallForwardEditPreference;->mHandler:Lcom/android/phone/settings/CallForwardEditPreference$MyHandler;

    .line 56
    invoke-virtual {p0}, Lcom/android/phone/settings/CallForwardEditPreference;->getSummaryOn()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/settings/CallForwardEditPreference;->mSummaryOnTemplate:Ljava/lang/CharSequence;

    .line 58
    sget-object v1, Lcom/android/phone/R$styleable;->CallForwardEditPreference:[I

    const v2, 0x7f0c0011

    invoke-virtual {p1, p2, v1, v3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 60
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/phone/settings/CallForwardEditPreference;->mServiceClass:I

    .line 62
    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/phone/settings/CallForwardEditPreference;->reason:I

    .line 64
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 67
    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/settings/CallForwardEditPreference;)Lcom/android/phone/settings/CallForwardEditPreference$MyHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/CallForwardEditPreference;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/phone/settings/CallForwardEditPreference;->mHandler:Lcom/android/phone/settings/CallForwardEditPreference$MyHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/settings/CallForwardEditPreference;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/CallForwardEditPreference;

    .prologue
    .line 32
    iget v0, p0, Lcom/android/phone/settings/CallForwardEditPreference;->mButtonClicked:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/phone/settings/CallForwardEditPreference;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/CallForwardEditPreference;

    .prologue
    .line 32
    iget v0, p0, Lcom/android/phone/settings/CallForwardEditPreference;->mServiceClass:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/phone/settings/CallForwardEditPreference;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/CallForwardEditPreference;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/phone/settings/CallForwardEditPreference;->updateSummaryText()V

    return-void
.end method

.method private updateSummaryText()V
    .locals 5

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/android/phone/settings/CallForwardEditPreference;->isToggled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 171
    invoke-virtual {p0}, Lcom/android/phone/settings/CallForwardEditPreference;->getRawPhoneNumber()Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, "number":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 173
    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 174
    .local v2, "values":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/settings/CallForwardEditPreference;->mSummaryOnTemplate:Ljava/lang/CharSequence;

    sget-object v4, Lcom/android/phone/settings/CallForwardEditPreference;->SRC_TAGS:[Ljava/lang/String;

    invoke-static {v3, v4, v2}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 178
    .end local v2    # "values":[Ljava/lang/String;
    .local v1, "summaryOn":Ljava/lang/CharSequence;
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/phone/settings/CallForwardEditPreference;->setSummaryOn(Ljava/lang/CharSequence;)Lcom/android/phone/settings/EditPhoneNumberPreference;

    .line 181
    .end local v0    # "number":Ljava/lang/String;
    .end local v1    # "summaryOn":Ljava/lang/CharSequence;
    :cond_0
    return-void

    .line 176
    .restart local v0    # "number":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/settings/CallForwardEditPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f080107

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "summaryOn":Ljava/lang/CharSequence;
    goto :goto_0
.end method


# virtual methods
.method public handleCallForwardResult(Lcom/android/internal/telephony/CallForwardInfo;)V
    .locals 2
    .param p1, "cf"    # Lcom/android/internal/telephony/CallForwardInfo;

    .prologue
    const/4 v0, 0x1

    .line 160
    iput-object p1, p0, Lcom/android/phone/settings/CallForwardEditPreference;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    .line 163
    iget-object v1, p0, Lcom/android/phone/settings/CallForwardEditPreference;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget v1, v1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-ne v1, v0, :cond_0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/phone/settings/CallForwardEditPreference;->setToggled(Z)Lcom/android/phone/settings/EditPhoneNumberPreference;

    .line 164
    iget-object v0, p0, Lcom/android/phone/settings/CallForwardEditPreference;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget-object v0, v0, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/phone/settings/CallForwardEditPreference;->setPhoneNumber(Ljava/lang/String;)Lcom/android/phone/settings/EditPhoneNumberPreference;

    .line 165
    invoke-direct {p0}, Lcom/android/phone/settings/CallForwardEditPreference;->updateSummaryText()V

    .line 166
    return-void

    .line 163
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleCallForwardResult(Lcom/android/internal/telephony/CallForwardInfo;Z)V
    .locals 0
    .param p1, "cf"    # Lcom/android/internal/telephony/CallForwardInfo;
    .param p2, "enabled"    # Z

    .prologue
    .line 155
    invoke-virtual {p0, p1}, Lcom/android/phone/settings/CallForwardEditPreference;->handleCallForwardResult(Lcom/android/internal/telephony/CallForwardInfo;)V

    .line 156
    invoke-virtual {p0, p2}, Lcom/android/phone/settings/CallForwardEditPreference;->setEnabled(Z)V

    .line 157
    return-void
.end method

.method public init(Lcom/android/phone/settings/TimeConsumingPreferenceListener;ZI)V
    .locals 5
    .param p1, "listener"    # Lcom/android/phone/settings/TimeConsumingPreferenceListener;
    .param p2, "skipReading"    # Z
    .param p3, "subscription"    # I

    .prologue
    const/4 v4, 0x0

    .line 77
    invoke-static {p3}, Lcom/android/phone/MiuiPhoneUtils;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/settings/CallForwardEditPreference;->phone:Lcom/android/internal/telephony/Phone;

    .line 79
    iput-object p1, p0, Lcom/android/phone/settings/CallForwardEditPreference;->tcpListener:Lcom/android/phone/settings/TimeConsumingPreferenceListener;

    .line 80
    if-nez p2, :cond_0

    .line 81
    iget-object v0, p0, Lcom/android/phone/settings/CallForwardEditPreference;->phone:Lcom/android/internal/telephony/Phone;

    iget v1, p0, Lcom/android/phone/settings/CallForwardEditPreference;->reason:I

    iget-object v2, p0, Lcom/android/phone/settings/CallForwardEditPreference;->mHandler:Lcom/android/phone/settings/CallForwardEditPreference$MyHandler;

    const/4 v3, 0x0

    invoke-virtual {v2, v4, v4, v4, v3}, Lcom/android/phone/settings/CallForwardEditPreference$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    .line 86
    iget-object v0, p0, Lcom/android/phone/settings/CallForwardEditPreference;->tcpListener:Lcom/android/phone/settings/TimeConsumingPreferenceListener;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/android/phone/settings/CallForwardEditPreference;->tcpListener:Lcom/android/phone/settings/TimeConsumingPreferenceListener;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lcom/android/phone/settings/TimeConsumingPreferenceListener;->onStarted(Landroid/preference/Preference;Z)V

    .line 90
    :cond_0
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 95
    const/4 v0, -0x2

    iput v0, p0, Lcom/android/phone/settings/CallForwardEditPreference;->mButtonClicked:I

    .line 96
    invoke-super {p0, p1}, Lcom/android/phone/settings/EditPhoneNumberPreference;->onBindDialogView(Landroid/view/View;)V

    .line 97
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 101
    invoke-super {p0, p1, p2}, Lcom/android/phone/settings/EditPhoneNumberPreference;->onClick(Landroid/content/DialogInterface;I)V

    .line 102
    iput p2, p0, Lcom/android/phone/settings/CallForwardEditPreference;->mButtonClicked:I

    .line 103
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 8
    .param p1, "positiveResult"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x3

    .line 107
    invoke-super {p0, p1}, Lcom/android/phone/settings/EditPhoneNumberPreference;->onDialogClosed(Z)V

    .line 113
    iget v0, p0, Lcom/android/phone/settings/CallForwardEditPreference;->mButtonClicked:I

    const/4 v2, -0x2

    if-eq v0, v2, :cond_1

    .line 114
    invoke-virtual {p0}, Lcom/android/phone/settings/CallForwardEditPreference;->isToggled()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/phone/settings/CallForwardEditPreference;->mButtonClicked:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    :cond_0
    move v1, v5

    .line 117
    .local v1, "action":I
    :goto_0
    iget v0, p0, Lcom/android/phone/settings/CallForwardEditPreference;->reason:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    move v4, v6

    .line 118
    .local v4, "time":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/phone/settings/CallForwardEditPreference;->getPhoneNumber()Ljava/lang/String;

    move-result-object v3

    .line 122
    .local v3, "number":Ljava/lang/String;
    if-ne v1, v5, :cond_4

    iget-object v0, p0, Lcom/android/phone/settings/CallForwardEditPreference;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/settings/CallForwardEditPreference;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget v0, v0, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/android/phone/settings/CallForwardEditPreference;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget-object v0, v0, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 152
    .end local v1    # "action":I
    .end local v3    # "number":Ljava/lang/String;
    .end local v4    # "time":I
    :cond_1
    :goto_2
    return-void

    :cond_2
    move v1, v6

    .line 114
    goto :goto_0

    .line 117
    .restart local v1    # "action":I
    :cond_3
    const/16 v4, 0x14

    goto :goto_1

    .line 135
    .restart local v3    # "number":Ljava/lang/String;
    .restart local v4    # "time":I
    :cond_4
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/phone/settings/CallForwardEditPreference;->setSummaryOn(Ljava/lang/CharSequence;)Lcom/android/phone/settings/EditPhoneNumberPreference;

    .line 139
    iget-object v0, p0, Lcom/android/phone/settings/CallForwardEditPreference;->phone:Lcom/android/internal/telephony/Phone;

    iget v2, p0, Lcom/android/phone/settings/CallForwardEditPreference;->reason:I

    iget-object v7, p0, Lcom/android/phone/settings/CallForwardEditPreference;->mHandler:Lcom/android/phone/settings/CallForwardEditPreference$MyHandler;

    invoke-virtual {v7, v5, v1, v5}, Lcom/android/phone/settings/CallForwardEditPreference$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    .line 147
    iget-object v0, p0, Lcom/android/phone/settings/CallForwardEditPreference;->tcpListener:Lcom/android/phone/settings/TimeConsumingPreferenceListener;

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/android/phone/settings/CallForwardEditPreference;->tcpListener:Lcom/android/phone/settings/TimeConsumingPreferenceListener;

    invoke-interface {v0, p0, v6}, Lcom/android/phone/settings/TimeConsumingPreferenceListener;->onStarted(Landroid/preference/Preference;Z)V

    goto :goto_2
.end method
