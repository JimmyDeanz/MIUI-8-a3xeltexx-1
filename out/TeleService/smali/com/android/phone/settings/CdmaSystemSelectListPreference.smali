.class public Lcom/android/phone/settings/CdmaSystemSelectListPreference;
.super Landroid/preference/ListPreference;
.source "CdmaSystemSelectListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/settings/CdmaSystemSelectListPreference$1;,
        Lcom/android/phone/settings/CdmaSystemSelectListPreference$MyHandler;
    }
.end annotation


# instance fields
.field private mHandler:Lcom/android/phone/settings/CdmaSystemSelectListPreference$MyHandler;

.field private mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/settings/CdmaSystemSelectListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    new-instance v0, Lcom/android/phone/settings/CdmaSystemSelectListPreference$MyHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/settings/CdmaSystemSelectListPreference$MyHandler;-><init>(Lcom/android/phone/settings/CdmaSystemSelectListPreference;Lcom/android/phone/settings/CdmaSystemSelectListPreference$1;)V

    iput-object v0, p0, Lcom/android/phone/settings/CdmaSystemSelectListPreference;->mHandler:Lcom/android/phone/settings/CdmaSystemSelectListPreference$MyHandler;

    .line 48
    invoke-static {v2}, Lcom/android/phone/MiuiPhoneUtils;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/settings/CdmaSystemSelectListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 49
    new-instance v0, Lcom/android/phone/settings/CdmaSystemSelectListPreference$MyHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/settings/CdmaSystemSelectListPreference$MyHandler;-><init>(Lcom/android/phone/settings/CdmaSystemSelectListPreference;Lcom/android/phone/settings/CdmaSystemSelectListPreference$1;)V

    iput-object v0, p0, Lcom/android/phone/settings/CdmaSystemSelectListPreference;->mHandler:Lcom/android/phone/settings/CdmaSystemSelectListPreference$MyHandler;

    .line 50
    iget-object v0, p0, Lcom/android/phone/settings/CdmaSystemSelectListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/settings/CdmaSystemSelectListPreference;->mHandler:Lcom/android/phone/settings/CdmaSystemSelectListPreference$MyHandler;

    invoke-virtual {v1, v2}, Lcom/android/phone/settings/CdmaSystemSelectListPreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->queryCdmaRoamingPreference(Landroid/os/Message;)V

    .line 52
    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/settings/CdmaSystemSelectListPreference;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/CdmaSystemSelectListPreference;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/phone/settings/CdmaSystemSelectListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method


# virtual methods
.method protected onDialogClosed(Z)V
    .locals 9
    .param p1, "positiveResult"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 70
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onDialogClosed(Z)V

    .line 72
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/settings/CdmaSystemSelectListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 73
    invoke-virtual {p0}, Lcom/android/phone/settings/CdmaSystemSelectListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 74
    .local v0, "buttonCdmaRoamingMode":I
    iget-object v3, p0, Lcom/android/phone/settings/CdmaSystemSelectListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "roaming_settings"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 77
    .local v1, "settingsCdmaRoamingMode":I
    if-eq v0, v1, :cond_0

    .line 79
    packed-switch v0, :pswitch_data_0

    .line 85
    const/4 v2, 0x0

    .line 88
    .local v2, "statusCdmaRoamingMode":I
    :goto_0
    iget-object v3, p0, Lcom/android/phone/settings/CdmaSystemSelectListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "roaming_settings"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 92
    iget-object v3, p0, Lcom/android/phone/settings/CdmaSystemSelectListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v4, p0, Lcom/android/phone/settings/CdmaSystemSelectListPreference;->mHandler:Lcom/android/phone/settings/CdmaSystemSelectListPreference$MyHandler;

    invoke-virtual {v4, v8}, Lcom/android/phone/settings/CdmaSystemSelectListPreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lcom/android/internal/telephony/Phone;->setCdmaRoamingPreference(ILandroid/os/Message;)V

    .line 99
    .end local v0    # "buttonCdmaRoamingMode":I
    .end local v1    # "settingsCdmaRoamingMode":I
    .end local v2    # "statusCdmaRoamingMode":I
    :cond_0
    :goto_1
    return-void

    .line 81
    .restart local v0    # "buttonCdmaRoamingMode":I
    .restart local v1    # "settingsCdmaRoamingMode":I
    :pswitch_0
    const/4 v2, 0x2

    .line 82
    .restart local v2    # "statusCdmaRoamingMode":I
    goto :goto_0

    .line 96
    .end local v0    # "buttonCdmaRoamingMode":I
    .end local v1    # "settingsCdmaRoamingMode":I
    .end local v2    # "statusCdmaRoamingMode":I
    :cond_1
    const-string v3, "CdmaRoamingListPreference"

    const-string v4, "onDialogClosed: positiveResult=%b value=%s -- do nothing"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p0}, Lcom/android/phone/settings/CdmaSystemSelectListPreference;->getValue()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 79
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 60
    const-string v0, "ril.cdma.inecmmode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    :goto_0
    return-void

    .line 64
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->showDialog(Landroid/os/Bundle;)V

    goto :goto_0
.end method
