.class public Lcom/android/phone/settings/CallBarringResetPreference;
.super Landroid/preference/Preference;
.source "CallBarringResetPreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/settings/CallBarringResetPreference$MyHandler;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mCallBarringInterface:Lcom/android/phone/settings/CallBarringInterface;

.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/android/phone/settings/CallBarringResetPreference$MyHandler;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mServiceClass:I

.field private mTcpListener:Lcom/android/phone/settings/TimeConsumingPreferenceListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/android/phone/settings/CallBarringResetPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/settings/CallBarringResetPreference;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    iput-object v1, p0, Lcom/android/phone/settings/CallBarringResetPreference;->mCallBarringInterface:Lcom/android/phone/settings/CallBarringInterface;

    .line 45
    new-instance v0, Lcom/android/phone/settings/CallBarringResetPreference$MyHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/settings/CallBarringResetPreference$MyHandler;-><init>(Lcom/android/phone/settings/CallBarringResetPreference;Lcom/android/phone/settings/CallBarringResetPreference$1;)V

    iput-object v0, p0, Lcom/android/phone/settings/CallBarringResetPreference;->mHandler:Lcom/android/phone/settings/CallBarringResetPreference$MyHandler;

    .line 49
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/settings/CallBarringResetPreference;->mServiceClass:I

    .line 53
    invoke-direct {p0, p1}, Lcom/android/phone/settings/CallBarringResetPreference;->init(Landroid/content/Context;)V

    .line 54
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/phone/MiuiPhoneUtils;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/settings/CallBarringResetPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 55
    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/settings/CallBarringResetPreference;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/CallBarringResetPreference;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/phone/settings/CallBarringResetPreference;->validatePassword(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/phone/settings/CallBarringResetPreference;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/CallBarringResetPreference;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/phone/settings/CallBarringResetPreference;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/settings/CallBarringResetPreference;)Lcom/android/phone/settings/CallBarringInterface;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/CallBarringResetPreference;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/phone/settings/CallBarringResetPreference;->mCallBarringInterface:Lcom/android/phone/settings/CallBarringInterface;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/settings/CallBarringResetPreference;)Lcom/android/phone/settings/TimeConsumingPreferenceListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/CallBarringResetPreference;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/phone/settings/CallBarringResetPreference;->mTcpListener:Lcom/android/phone/settings/TimeConsumingPreferenceListener;

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/phone/settings/CallBarringResetPreference;->mContext:Landroid/content/Context;

    .line 126
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/settings/CallBarringResetPreference;->setEnabled(Z)V

    .line 127
    invoke-virtual {p0, p0}, Lcom/android/phone/settings/CallBarringResetPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 128
    return-void
.end method

.method private setCallState(ZLjava/lang/String;)V
    .locals 5
    .param p1, "enable"    # Z
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 139
    iget-object v1, p0, Lcom/android/phone/settings/CallBarringResetPreference;->mHandler:Lcom/android/phone/settings/CallBarringResetPreference$MyHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v4, v3, v3, v2}, Lcom/android/phone/settings/CallBarringResetPreference$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 143
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/settings/CallBarringResetPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 144
    iget-object v1, p0, Lcom/android/phone/settings/CallBarringResetPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    const-string v2, "AB"

    invoke-static {v1, v2, p1, p2, v0}, Lcom/android/phone/PhoneAdapter;->setCallBarringOption(Lcom/android/internal/telephony/Phone;Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;)V

    .line 147
    :cond_0
    iget-object v1, p0, Lcom/android/phone/settings/CallBarringResetPreference;->mTcpListener:Lcom/android/phone/settings/TimeConsumingPreferenceListener;

    if-eqz v1, :cond_1

    .line 148
    iget-object v1, p0, Lcom/android/phone/settings/CallBarringResetPreference;->mTcpListener:Lcom/android/phone/settings/TimeConsumingPreferenceListener;

    invoke-interface {v1, p0, v3}, Lcom/android/phone/settings/TimeConsumingPreferenceListener;->onStarted(Landroid/preference/Preference;Z)V

    .line 150
    :cond_1
    return-void
.end method

.method private validatePassword(Ljava/lang/String;)Z
    .locals 2
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 121
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
.method public doPreferenceClick(Ljava/lang/String;)V
    .locals 9
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 75
    invoke-virtual {p0}, Lcom/android/phone/settings/CallBarringResetPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 76
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const v6, 0x7f040006

    invoke-virtual {v3, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 78
    .local v4, "textEntryView":Landroid/view/View;
    const v6, 0x7f0e0012

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 79
    .local v1, "content":Landroid/widget/TextView;
    iget-object v6, p0, Lcom/android/phone/settings/CallBarringResetPreference;->mContext:Landroid/content/Context;

    const v7, 0x7f08036d

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/settings/CallBarringResetPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 83
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 84
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 85
    const v6, 0x7f0800c0

    invoke-virtual {v0, v6, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 86
    const v6, 0x7f0800c3

    new-instance v7, Lcom/android/phone/settings/CallBarringResetPreference$1;

    invoke-direct {v7, p0, v4, p1}, Lcom/android/phone/settings/CallBarringResetPreference$1;-><init>(Lcom/android/phone/settings/CallBarringResetPreference;Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 110
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 112
    .local v2, "dlg":Landroid/app/AlertDialog;
    if-eqz v2, :cond_0

    .line 113
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    .line 114
    .local v5, "window":Landroid/view/Window;
    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 115
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 117
    .end local v5    # "window":Landroid/view/Window;
    :cond_0
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/phone/settings/CallBarringResetPreference;->mContext:Landroid/content/Context;

    const v1, 0x7f080362

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/settings/CallBarringResetPreference;->doPreferenceClick(Ljava/lang/String;)V

    .line 71
    const/4 v0, 0x1

    return v0
.end method

.method public setCallBarringInterface(Lcom/android/phone/settings/CallBarringInterface;)V
    .locals 0
    .param p1, "i"    # Lcom/android/phone/settings/CallBarringInterface;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/phone/settings/CallBarringResetPreference;->mCallBarringInterface:Lcom/android/phone/settings/CallBarringInterface;

    .line 63
    return-void
.end method

.method public setCallState(Ljava/lang/String;)V
    .locals 1
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 131
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/phone/settings/CallBarringResetPreference;->setCallState(ZLjava/lang/String;)V

    .line 132
    return-void
.end method

.method public setListener(Lcom/android/phone/settings/TimeConsumingPreferenceListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/phone/settings/TimeConsumingPreferenceListener;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/phone/settings/CallBarringResetPreference;->mTcpListener:Lcom/android/phone/settings/TimeConsumingPreferenceListener;

    .line 59
    return-void
.end method

.method public setPhoneInstance(Lcom/android/internal/telephony/Phone;)V
    .locals 0
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/phone/settings/CallBarringResetPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 67
    return-void
.end method
