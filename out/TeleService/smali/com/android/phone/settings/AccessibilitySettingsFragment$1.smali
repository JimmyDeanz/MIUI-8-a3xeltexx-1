.class Lcom/android/phone/settings/AccessibilitySettingsFragment$1;
.super Landroid/telephony/PhoneStateListener;
.source "AccessibilitySettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/settings/AccessibilitySettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/settings/AccessibilitySettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/phone/settings/AccessibilitySettingsFragment;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/phone/settings/AccessibilitySettingsFragment$1;->this$0:Lcom/android/phone/settings/AccessibilitySettingsFragment;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    .line 55
    iget-object v1, p0, Lcom/android/phone/settings/AccessibilitySettingsFragment$1;->this$0:Lcom/android/phone/settings/AccessibilitySettingsFragment;

    invoke-virtual {v1}, Lcom/android/phone/settings/AccessibilitySettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "button_tty_mode_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 56
    .local v0, "pref":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 57
    if-nez p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 59
    :cond_0
    return-void

    .line 57
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
