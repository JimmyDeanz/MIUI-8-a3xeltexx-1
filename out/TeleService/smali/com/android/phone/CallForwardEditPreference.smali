.class public Lcom/android/phone/CallForwardEditPreference;
.super Lcom/android/phone/EditPhoneNumberPreference;
.source "CallForwardEditPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallForwardEditPreference$1;,
        Lcom/android/phone/CallForwardEditPreference$MyHandler;
    }
.end annotation


# static fields
.field private static final SRC_TAGS:[Ljava/lang/String;


# instance fields
.field callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

.field private mButtonClicked:I

.field private mHandler:Lcom/android/phone/CallForwardEditPreference$MyHandler;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mServiceClass:I

.field private mSummaryOnTemplate:Ljava/lang/CharSequence;

.field private mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

.field reason:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 29
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "{0}"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/CallForwardEditPreference;->SRC_TAGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallForwardEditPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/phone/EditPhoneNumberPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    new-instance v1, Lcom/android/phone/CallForwardEditPreference$MyHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/phone/CallForwardEditPreference$MyHandler;-><init>(Lcom/android/phone/CallForwardEditPreference;Lcom/android/phone/CallForwardEditPreference$1;)V

    iput-object v1, p0, Lcom/android/phone/CallForwardEditPreference;->mHandler:Lcom/android/phone/CallForwardEditPreference$MyHandler;

    .line 49
    invoke-virtual {p0}, Lcom/android/phone/CallForwardEditPreference;->getSummaryOn()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CallForwardEditPreference;->mSummaryOnTemplate:Ljava/lang/CharSequence;

    .line 51
    sget-object v1, Lcom/android/phone/R$styleable;->CallForwardEditPreference:[I

    const v2, 0x7f0c0011

    invoke-virtual {p1, p2, v1, v3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 53
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/phone/CallForwardEditPreference;->mServiceClass:I

    .line 55
    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/phone/CallForwardEditPreference;->reason:I

    .line 57
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 60
    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/CallForwardEditPreference;)Lcom/android/phone/TimeConsumingPreferenceListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/CallForwardEditPreference;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/CallForwardEditPreference;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/CallForwardEditPreference;

    .prologue
    .line 25
    iget v0, p0, Lcom/android/phone/CallForwardEditPreference;->mServiceClass:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/phone/CallForwardEditPreference;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/CallForwardEditPreference;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/phone/CallForwardEditPreference;->updateSummaryText()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/CallForwardEditPreference;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/CallForwardEditPreference;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method private updateSummaryText()V
    .locals 6

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/android/phone/CallForwardEditPreference;->isToggled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 155
    invoke-virtual {p0}, Lcom/android/phone/CallForwardEditPreference;->getRawPhoneNumber()Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "number":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 158
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v4

    sget-object v5, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    invoke-virtual {v4, v0, v5}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;

    move-result-object v3

    .line 160
    .local v3, "wrappedNumber":Ljava/lang/String;
    const/4 v4, 0x1

    new-array v2, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 161
    .local v2, "values":[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/phone/CallForwardEditPreference;->mSummaryOnTemplate:Ljava/lang/CharSequence;

    sget-object v5, Lcom/android/phone/CallForwardEditPreference;->SRC_TAGS:[Ljava/lang/String;

    invoke-static {v4, v5, v2}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 165
    .end local v2    # "values":[Ljava/lang/String;
    .end local v3    # "wrappedNumber":Ljava/lang/String;
    .local v1, "summaryOn":Ljava/lang/CharSequence;
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/phone/CallForwardEditPreference;->setSummaryOn(Ljava/lang/CharSequence;)Lcom/android/phone/EditPhoneNumberPreference;

    .line 168
    .end local v0    # "number":Ljava/lang/String;
    .end local v1    # "summaryOn":Ljava/lang/CharSequence;
    :cond_0
    return-void

    .line 163
    .restart local v0    # "number":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/CallForwardEditPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f080107

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "summaryOn":Ljava/lang/CharSequence;
    goto :goto_0
.end method


# virtual methods
.method handleCallForwardResult(Lcom/android/internal/telephony/CallForwardInfo;)V
    .locals 2
    .param p1, "cf"    # Lcom/android/internal/telephony/CallForwardInfo;

    .prologue
    const/4 v0, 0x1

    .line 145
    iput-object p1, p0, Lcom/android/phone/CallForwardEditPreference;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    .line 148
    iget-object v1, p0, Lcom/android/phone/CallForwardEditPreference;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget v1, v1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-ne v1, v0, :cond_0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/phone/CallForwardEditPreference;->setToggled(Z)Lcom/android/phone/EditPhoneNumberPreference;

    .line 149
    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget-object v0, v0, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/phone/CallForwardEditPreference;->setPhoneNumber(Ljava/lang/String;)Lcom/android/phone/EditPhoneNumberPreference;

    .line 150
    return-void

    .line 148
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 85
    const/4 v0, -0x2

    iput v0, p0, Lcom/android/phone/CallForwardEditPreference;->mButtonClicked:I

    .line 86
    invoke-super {p0, p1}, Lcom/android/phone/EditPhoneNumberPreference;->onBindDialogView(Landroid/view/View;)V

    .line 87
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 91
    invoke-super {p0, p1, p2}, Lcom/android/phone/EditPhoneNumberPreference;->onClick(Landroid/content/DialogInterface;I)V

    .line 92
    iput p2, p0, Lcom/android/phone/CallForwardEditPreference;->mButtonClicked:I

    .line 93
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 8
    .param p1, "positiveResult"    # Z

    .prologue
    const/4 v0, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 97
    invoke-super {p0, p1}, Lcom/android/phone/EditPhoneNumberPreference;->onDialogClosed(Z)V

    .line 103
    iget v2, p0, Lcom/android/phone/CallForwardEditPreference;->mButtonClicked:I

    const/4 v5, -0x2

    if-eq v2, v5, :cond_1

    .line 104
    invoke-virtual {p0}, Lcom/android/phone/CallForwardEditPreference;->isToggled()Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, p0, Lcom/android/phone/CallForwardEditPreference;->mButtonClicked:I

    const/4 v5, -0x1

    if-ne v2, v5, :cond_2

    :cond_0
    move v1, v0

    .line 107
    .local v1, "action":I
    :goto_0
    iget v2, p0, Lcom/android/phone/CallForwardEditPreference;->reason:I

    const/4 v5, 0x2

    if-eq v2, v5, :cond_3

    move v4, v6

    .line 108
    .local v4, "time":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/phone/CallForwardEditPreference;->getPhoneNumber()Ljava/lang/String;

    move-result-object v3

    .line 112
    .local v3, "number":Ljava/lang/String;
    if-ne v1, v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget v0, v0, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-ne v0, v7, :cond_4

    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget-object v0, v0, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 142
    .end local v1    # "action":I
    .end local v3    # "number":Ljava/lang/String;
    .end local v4    # "time":I
    :cond_1
    :goto_2
    return-void

    :cond_2
    move v1, v6

    .line 104
    goto :goto_0

    .line 107
    .restart local v1    # "action":I
    :cond_3
    const/16 v4, 0x14

    goto :goto_1

    .line 125
    .restart local v3    # "number":Ljava/lang/String;
    .restart local v4    # "time":I
    :cond_4
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/phone/CallForwardEditPreference;->setSummaryOn(Ljava/lang/CharSequence;)Lcom/android/phone/EditPhoneNumberPreference;

    .line 129
    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    iget v2, p0, Lcom/android/phone/CallForwardEditPreference;->reason:I

    iget-object v5, p0, Lcom/android/phone/CallForwardEditPreference;->mHandler:Lcom/android/phone/CallForwardEditPreference$MyHandler;

    invoke-virtual {v5, v7, v1, v7}, Lcom/android/phone/CallForwardEditPreference$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    .line 137
    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    if-eqz v0, :cond_1

    .line 138
    iget-object v0, p0, Lcom/android/phone/CallForwardEditPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    invoke-interface {v0, p0, v6}, Lcom/android/phone/TimeConsumingPreferenceListener;->onStarted(Landroid/preference/Preference;Z)V

    goto :goto_2
.end method
