.class public Lcom/android/phone/settings/TtyModeListPreference;
.super Landroid/preference/ListPreference;
.source "TtyModeListPreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/android/phone/settings/TtyModeListPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/settings/TtyModeListPreference;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method private updatePreferredTtyModeSummary(I)V
    .locals 4
    .param p1, "TtyMode"    # I

    .prologue
    const/4 v3, 0x0

    .line 90
    invoke-virtual {p0}, Lcom/android/phone/settings/TtyModeListPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070021

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "txts":[Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 99
    invoke-virtual {p0, v3}, Lcom/android/phone/settings/TtyModeListPreference;->setEnabled(Z)V

    .line 100
    aget-object v1, v0, v3

    invoke-virtual {p0, v1}, Lcom/android/phone/settings/TtyModeListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 103
    :goto_0
    return-void

    .line 96
    :pswitch_0
    aget-object v1, v0, p1

    invoke-virtual {p0, v1}, Lcom/android/phone/settings/TtyModeListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 91
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public init()V
    .locals 4

    .prologue
    .line 42
    invoke-virtual {p0, p0}, Lcom/android/phone/settings/TtyModeListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 44
    invoke-virtual {p0}, Lcom/android/phone/settings/TtyModeListPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "preferred_tty_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 47
    .local v0, "settingsTtyMode":I
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/phone/settings/TtyModeListPreference;->setValue(Ljava/lang/String;)V

    .line 48
    invoke-direct {p0, v0}, Lcom/android/phone/settings/TtyModeListPreference;->updatePreferredTtyModeSummary(I)V

    .line 49
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    .line 53
    if-ne p1, p0, :cond_0

    .line 55
    check-cast p2, Ljava/lang/String;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 56
    .local v0, "buttonTtyMode":I
    invoke-virtual {p0}, Lcom/android/phone/settings/TtyModeListPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_tty_mode"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 63
    .local v1, "settingsTtyMode":I
    if-eq v0, v1, :cond_0

    .line 64
    packed-switch v0, :pswitch_data_0

    .line 75
    const/4 v0, 0x0

    .line 78
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/phone/settings/TtyModeListPreference;->setValue(Ljava/lang/String;)V

    .line 79
    invoke-direct {p0, v0}, Lcom/android/phone/settings/TtyModeListPreference;->updatePreferredTtyModeSummary(I)V

    .line 80
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.telecom.action.TTY_PREFERRED_MODE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 82
    .local v2, "ttyModeChanged":Landroid/content/Intent;
    const-string v3, "android.telecom.intent.extra.TTY_PREFERRED"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 83
    invoke-virtual {p0}, Lcom/android/phone/settings/TtyModeListPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 86
    .end local v0    # "buttonTtyMode":I
    .end local v1    # "settingsTtyMode":I
    .end local v2    # "ttyModeChanged":Landroid/content/Intent;
    :cond_0
    const/4 v3, 0x1

    return v3

    .line 69
    .restart local v0    # "buttonTtyMode":I
    .restart local v1    # "settingsTtyMode":I
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/phone/settings/TtyModeListPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_tty_mode"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 64
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
