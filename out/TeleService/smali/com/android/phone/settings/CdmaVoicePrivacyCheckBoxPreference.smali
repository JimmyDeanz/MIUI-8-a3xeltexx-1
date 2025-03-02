.class public Lcom/android/phone/settings/CdmaVoicePrivacyCheckBoxPreference;
.super Lcom/android/phone/settings/CheckBoxTitleIconPreference;
.source "CdmaVoicePrivacyCheckBoxPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/settings/CdmaVoicePrivacyCheckBoxPreference$1;,
        Lcom/android/phone/settings/CdmaVoicePrivacyCheckBoxPreference$MyHandler;
    }
.end annotation


# instance fields
.field private final DBG:Z

.field private mHandler:Lcom/android/phone/settings/CdmaVoicePrivacyCheckBoxPreference$MyHandler;

.field phone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/settings/CdmaVoicePrivacyCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 47
    const v0, 0x101008f

    invoke-direct {p0, p1, p2, v0}, Lcom/android/phone/settings/CdmaVoicePrivacyCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/settings/CheckBoxTitleIconPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/settings/CdmaVoicePrivacyCheckBoxPreference;->DBG:Z

    .line 35
    new-instance v0, Lcom/android/phone/settings/CdmaVoicePrivacyCheckBoxPreference$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/settings/CdmaVoicePrivacyCheckBoxPreference$MyHandler;-><init>(Lcom/android/phone/settings/CdmaVoicePrivacyCheckBoxPreference;Lcom/android/phone/settings/CdmaVoicePrivacyCheckBoxPreference$1;)V

    iput-object v0, p0, Lcom/android/phone/settings/CdmaVoicePrivacyCheckBoxPreference;->mHandler:Lcom/android/phone/settings/CdmaVoicePrivacyCheckBoxPreference$MyHandler;

    .line 39
    return-void
.end method


# virtual methods
.method public init(Lcom/android/internal/telephony/Phone;)V
    .locals 3
    .param p1, "p"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/phone/settings/CdmaVoicePrivacyCheckBoxPreference;->phone:Lcom/android/internal/telephony/Phone;

    .line 43
    iget-object v0, p0, Lcom/android/phone/settings/CdmaVoicePrivacyCheckBoxPreference;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/settings/CdmaVoicePrivacyCheckBoxPreference;->mHandler:Lcom/android/phone/settings/CdmaVoicePrivacyCheckBoxPreference$MyHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/phone/settings/CdmaVoicePrivacyCheckBoxPreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getEnhancedVoicePrivacy(Landroid/os/Message;)V

    .line 44
    return-void
.end method

.method protected onClick()V
    .locals 4

    .prologue
    .line 57
    invoke-super {p0}, Lcom/android/phone/settings/CheckBoxTitleIconPreference;->onClick()V

    .line 59
    iget-object v0, p0, Lcom/android/phone/settings/CdmaVoicePrivacyCheckBoxPreference;->phone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/android/phone/settings/CdmaVoicePrivacyCheckBoxPreference;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/phone/settings/CdmaVoicePrivacyCheckBoxPreference;->isChecked()Z

    move-result v1

    iget-object v2, p0, Lcom/android/phone/settings/CdmaVoicePrivacyCheckBoxPreference;->mHandler:Lcom/android/phone/settings/CdmaVoicePrivacyCheckBoxPreference$MyHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/phone/settings/CdmaVoicePrivacyCheckBoxPreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/Phone;->enableEnhancedVoicePrivacy(ZLandroid/os/Message;)V

    .line 63
    :cond_0
    return-void
.end method
