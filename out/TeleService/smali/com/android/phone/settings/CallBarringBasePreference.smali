.class public Lcom/android/phone/settings/CallBarringBasePreference;
.super Landroid/preference/CheckBoxPreference;
.source "CallBarringBasePreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/settings/CallBarringBasePreference$MyHandler;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mCallBarringInterface:Lcom/android/phone/settings/CallBarringInterface;

.field private mContext:Landroid/content/Context;

.field private mCurrentClickState:Z

.field private mFacility:Ljava/lang/String;

.field private mHandler:Lcom/android/phone/settings/CallBarringBasePreference$MyHandler;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mResult:Z

.field private mServiceClass:I

.field private mTcpListener:Lcom/android/phone/settings/TimeConsumingPreferenceListener;

.field private mTitle:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/android/phone/settings/CallBarringBasePreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/settings/CallBarringBasePreference;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 59
    invoke-direct {p0, p1, p2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    new-instance v0, Lcom/android/phone/settings/CallBarringBasePreference$MyHandler;

    invoke-direct {v0, p0, v2}, Lcom/android/phone/settings/CallBarringBasePreference$MyHandler;-><init>(Lcom/android/phone/settings/CallBarringBasePreference;Lcom/android/phone/settings/CallBarringBasePreference$1;)V

    iput-object v0, p0, Lcom/android/phone/settings/CallBarringBasePreference;->mHandler:Lcom/android/phone/settings/CallBarringBasePreference$MyHandler;

    .line 46
    iput-object v2, p0, Lcom/android/phone/settings/CallBarringBasePreference;->mContext:Landroid/content/Context;

    .line 50
    iput-boolean v1, p0, Lcom/android/phone/settings/CallBarringBasePreference;->mCurrentClickState:Z

    .line 52
    iput-object v2, p0, Lcom/android/phone/settings/CallBarringBasePreference;->mCallBarringInterface:Lcom/android/phone/settings/CallBarringInterface;

    .line 54
    iput-boolean v3, p0, Lcom/android/phone/settings/CallBarringBasePreference;->mResult:Z

    .line 56
    iput v3, p0, Lcom/android/phone/settings/CallBarringBasePreference;->mServiceClass:I

    .line 60
    invoke-virtual {p0, v1}, Lcom/android/phone/settings/CallBarringBasePreference;->setEnabled(Z)V

    .line 61
    iput-object p1, p0, Lcom/android/phone/settings/CallBarringBasePreference;->mContext:Landroid/content/Context;

    .line 62
    invoke-static {v1}, Lcom/android/phone/MiuiPhoneUtils;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/settings/CallBarringBasePreference;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 63
    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/settings/CallBarringBasePreference;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/CallBarringBasePreference;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/phone/settings/CallBarringBasePreference;->validatePassword(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/android/phone/settings/CallBarringBasePreference;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/phone/settings/CallBarringBasePreference;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/CallBarringBasePreference;

    .prologue
    .line 38
    iget v0, p0, Lcom/android/phone/settings/CallBarringBasePreference;->mServiceClass:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/phone/settings/CallBarringBasePreference;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/CallBarringBasePreference;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/phone/settings/CallBarringBasePreference;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/settings/CallBarringBasePreference;)Lcom/android/phone/settings/TimeConsumingPreferenceListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/CallBarringBasePreference;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/phone/settings/CallBarringBasePreference;->mTcpListener:Lcom/android/phone/settings/TimeConsumingPreferenceListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/settings/CallBarringBasePreference;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/CallBarringBasePreference;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/phone/settings/CallBarringBasePreference;->mFacility:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/settings/CallBarringBasePreference;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/CallBarringBasePreference;

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/android/phone/settings/CallBarringBasePreference;->mCurrentClickState:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/phone/settings/CallBarringBasePreference;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/CallBarringBasePreference;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/settings/CallBarringBasePreference;->setCallState(Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/phone/settings/CallBarringBasePreference;)Lcom/android/phone/settings/CallBarringInterface;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/CallBarringBasePreference;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/phone/settings/CallBarringBasePreference;->mCallBarringInterface:Lcom/android/phone/settings/CallBarringInterface;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/settings/CallBarringBasePreference;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/CallBarringBasePreference;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/settings/CallBarringBasePreference;->getCallState(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$902(Lcom/android/phone/settings/CallBarringBasePreference;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/CallBarringBasePreference;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/android/phone/settings/CallBarringBasePreference;->mResult:Z

    return p1
.end method

.method private doPreferenceClick(Ljava/lang/String;)V
    .locals 9
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 109
    invoke-virtual {p0}, Lcom/android/phone/settings/CallBarringBasePreference;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 110
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const v6, 0x7f040006

    invoke-virtual {v3, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 112
    .local v4, "textEntryView":Landroid/view/View;
    const v6, 0x7f0e0012

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 113
    .local v1, "content":Landroid/widget/TextView;
    iget-object v6, p0, Lcom/android/phone/settings/CallBarringBasePreference;->mContext:Landroid/content/Context;

    const v7, 0x7f08036d

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/settings/CallBarringBasePreference;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 117
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 118
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 119
    const v6, 0x7f0800c0

    invoke-virtual {v0, v6, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 120
    const v6, 0x7f0800c3

    new-instance v7, Lcom/android/phone/settings/CallBarringBasePreference$1;

    invoke-direct {v7, p0, v4, p1}, Lcom/android/phone/settings/CallBarringBasePreference$1;-><init>(Lcom/android/phone/settings/CallBarringBasePreference;Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 149
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 151
    .local v2, "dlg":Landroid/app/AlertDialog;
    if-eqz v2, :cond_0

    .line 152
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    .line 153
    .local v5, "window":Landroid/view/Window;
    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 154
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 157
    .end local v5    # "window":Landroid/view/Window;
    :cond_0
    return-void
.end method

.method private getCallState(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "reason"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 169
    if-eqz p3, :cond_2

    .line 170
    invoke-direct {p0, p1}, Lcom/android/phone/settings/CallBarringBasePreference;->isCallBarringFacilityNotSupported(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 171
    iput-boolean v4, p0, Lcom/android/phone/settings/CallBarringBasePreference;->mResult:Z

    .line 172
    iget-object v2, p0, Lcom/android/phone/settings/CallBarringBasePreference;->mTcpListener:Lcom/android/phone/settings/TimeConsumingPreferenceListener;

    invoke-interface {v2, p0, v4}, Lcom/android/phone/settings/TimeConsumingPreferenceListener;->onFinished(Landroid/preference/Preference;Z)V

    .line 173
    invoke-virtual {p0, v3}, Lcom/android/phone/settings/CallBarringBasePreference;->setEnabled(Z)V

    .line 174
    iget-object v2, p0, Lcom/android/phone/settings/CallBarringBasePreference;->mContext:Landroid/content/Context;

    const v3, 0x7f08045b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 175
    .local v1, "summary":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/phone/settings/CallBarringBasePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 187
    .end local v1    # "summary":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    iget-object v2, p0, Lcom/android/phone/settings/CallBarringBasePreference;->mHandler:Lcom/android/phone/settings/CallBarringBasePreference$MyHandler;

    invoke-virtual {v2, v3, v3, v3, v5}, Lcom/android/phone/settings/CallBarringBasePreference$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 184
    .local v0, "m":Landroid/os/Message;
    :goto_1
    iget-object v2, p0, Lcom/android/phone/settings/CallBarringBasePreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 185
    iget-object v2, p0, Lcom/android/phone/settings/CallBarringBasePreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v2, p1, p2, v0}, Lcom/android/phone/PhoneAdapter;->getCallBarringOption(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 181
    .end local v0    # "m":Landroid/os/Message;
    :cond_2
    iget-object v2, p0, Lcom/android/phone/settings/CallBarringBasePreference;->mHandler:Lcom/android/phone/settings/CallBarringBasePreference$MyHandler;

    invoke-virtual {v2, v3, v3, v4, v5}, Lcom/android/phone/settings/CallBarringBasePreference$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .restart local v0    # "m":Landroid/os/Message;
    goto :goto_1
.end method

.method private isCallBarringFacilityNotSupported(Ljava/lang/String;)Z
    .locals 3
    .param p1, "facility"    # Ljava/lang/String;

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/phone/settings/CallBarringBasePreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/android/phone/MiuiPhoneUtils;->isCmccSim(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/settings/CallBarringBasePreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/android/phone/MiuiPhoneUtils;->isSSOperatedByUt(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AI"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "IR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    sget-object v0, Lcom/android/phone/settings/CallBarringBasePreference;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCallBarringFacilitySupportedInVoLTE facility="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    const/4 v0, 0x1

    .line 195
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setCallState(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 5
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "enable"    # Z
    .param p3, "password"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 204
    iget-object v1, p0, Lcom/android/phone/settings/CallBarringBasePreference;->mHandler:Lcom/android/phone/settings/CallBarringBasePreference$MyHandler;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v4, v2, v4, v3}, Lcom/android/phone/settings/CallBarringBasePreference$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 208
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/settings/CallBarringBasePreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 209
    iget-object v1, p0, Lcom/android/phone/settings/CallBarringBasePreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v1, p1, p2, p3, v0}, Lcom/android/phone/PhoneAdapter;->setCallBarringOption(Lcom/android/internal/telephony/Phone;Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;)V

    .line 211
    :cond_0
    return-void
.end method

.method private validatePassword(Ljava/lang/String;)Z
    .locals 2
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 226
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method init(Lcom/android/phone/settings/TimeConsumingPreferenceListener;Z)V
    .locals 3
    .param p1, "listener"    # Lcom/android/phone/settings/TimeConsumingPreferenceListener;
    .param p2, "skipReading"    # Z

    .prologue
    const/4 v2, 0x1

    .line 214
    invoke-virtual {p0, p0}, Lcom/android/phone/settings/CallBarringBasePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 215
    iput-object p1, p0, Lcom/android/phone/settings/CallBarringBasePreference;->mTcpListener:Lcom/android/phone/settings/TimeConsumingPreferenceListener;

    .line 216
    if-nez p2, :cond_1

    .line 217
    iget-object v0, p0, Lcom/android/phone/settings/CallBarringBasePreference;->mTcpListener:Lcom/android/phone/settings/TimeConsumingPreferenceListener;

    if-eqz v0, :cond_0

    .line 218
    sget-object v0, Lcom/android/phone/settings/CallBarringBasePreference;->LOG_TAG:Ljava/lang/String;

    const-string v1, "init() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v0, p0, Lcom/android/phone/settings/CallBarringBasePreference;->mTcpListener:Lcom/android/phone/settings/TimeConsumingPreferenceListener;

    invoke-interface {v0, p0, v2}, Lcom/android/phone/settings/TimeConsumingPreferenceListener;->onStarted(Landroid/preference/Preference;Z)V

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/android/phone/settings/CallBarringBasePreference;->mFacility:Ljava/lang/String;

    const-string v1, ""

    invoke-direct {p0, v0, v1, v2}, Lcom/android/phone/settings/CallBarringBasePreference;->getCallState(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 223
    :cond_1
    return-void
.end method

.method public isSuccess()Z
    .locals 1

    .prologue
    .line 350
    iget-boolean v0, p0, Lcom/android/phone/settings/CallBarringBasePreference;->mResult:Z

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 84
    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->onBindView(Landroid/view/View;)V

    .line 86
    sget v1, Lcom/android/internal/R$id;->title:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 87
    .local v0, "titleView":Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 88
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "titleView":Landroid/view/View;
    const-string v1, "MIDDLE"

    invoke-static {v1}, Landroid/text/TextUtils$TruncateAt;->valueOf(Ljava/lang/String;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 90
    :cond_0
    return-void
.end method

.method protected onClick()V
    .locals 1

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/android/phone/settings/CallBarringBasePreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/phone/settings/CallBarringBasePreference;->mCurrentClickState:Z

    .line 80
    return-void

    .line 79
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/phone/settings/CallBarringBasePreference;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/phone/settings/CallBarringBasePreference;->mTitle:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/settings/CallBarringBasePreference;->doPreferenceClick(Ljava/lang/String;)V

    .line 94
    const/4 v0, 0x1

    return v0
.end method

.method public setPhoneInstance(Lcom/android/internal/telephony/Phone;)V
    .locals 0
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/phone/settings/CallBarringBasePreference;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 99
    return-void
.end method

.method public setRefreshInterface(Lcom/android/phone/settings/CallBarringInterface;)V
    .locals 0
    .param p1, "i"    # Lcom/android/phone/settings/CallBarringInterface;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/phone/settings/CallBarringBasePreference;->mCallBarringInterface:Lcom/android/phone/settings/CallBarringInterface;

    .line 67
    return-void
.end method

.method public setmFacility(Ljava/lang/String;)V
    .locals 0
    .param p1, "facility"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/phone/settings/CallBarringBasePreference;->mFacility:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setmTitle(I)V
    .locals 0
    .param p1, "title"    # I

    .prologue
    .line 70
    iput p1, p0, Lcom/android/phone/settings/CallBarringBasePreference;->mTitle:I

    .line 71
    return-void
.end method
