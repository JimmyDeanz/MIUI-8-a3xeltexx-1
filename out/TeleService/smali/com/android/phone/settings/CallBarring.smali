.class public Lcom/android/phone/settings/CallBarring;
.super Lcom/android/phone/settings/TimeConsumingPreferenceActivity;
.source "CallBarring.java"

# interfaces
.implements Lcom/android/phone/settings/CallBarringInterface;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mCallAllOutButton:Lcom/android/phone/settings/CallBarringBasePreference;

.field private mCallCancel:Lcom/android/phone/settings/CallBarringResetPreference;

.field private mCallChangePassword:Landroid/preference/PreferenceScreen;

.field private mCallInButton:Lcom/android/phone/settings/CallBarringBasePreference;

.field private mCallInButton2:Lcom/android/phone/settings/CallBarringBasePreference;

.field private mCallInternationalOutButton:Lcom/android/phone/settings/CallBarringBasePreference;

.field private mCallInternationalOutButton2:Lcom/android/phone/settings/CallBarringBasePreference;

.field private mErrorState:I

.field private mFirstResume:Z

.field private mHasShowOpenMobileDataDialog:Z

.field private mInitIndex:I

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mPreferences:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSlotId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/android/phone/settings/CallBarring;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/settings/CallBarring;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Lcom/android/phone/settings/TimeConsumingPreferenceActivity;-><init>()V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/settings/CallBarring;->mPreferences:Ljava/util/ArrayList;

    .line 63
    iput v1, p0, Lcom/android/phone/settings/CallBarring;->mInitIndex:I

    .line 64
    iput v1, p0, Lcom/android/phone/settings/CallBarring;->mErrorState:I

    .line 65
    iput-boolean v1, p0, Lcom/android/phone/settings/CallBarring;->mHasShowOpenMobileDataDialog:Z

    .line 68
    iput v1, p0, Lcom/android/phone/settings/CallBarring;->mSlotId:I

    .line 75
    new-instance v0, Lcom/android/phone/settings/CallBarring$1;

    invoke-direct {v0, p0}, Lcom/android/phone/settings/CallBarring$1;-><init>(Lcom/android/phone/settings/CallBarring;)V

    iput-object v0, p0, Lcom/android/phone/settings/CallBarring;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/settings/CallBarring;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/CallBarring;

    .prologue
    .line 40
    iget v0, p0, Lcom/android/phone/settings/CallBarring;->mSlotId:I

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/android/phone/settings/CallBarring;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method private doGetCallState(Landroid/preference/Preference;)V
    .locals 1
    .param p1, "p"    # Landroid/preference/Preference;

    .prologue
    .line 293
    instance-of v0, p1, Lcom/android/phone/settings/CallBarringBasePreference;

    if-eqz v0, :cond_0

    .line 294
    check-cast p1, Lcom/android/phone/settings/CallBarringBasePreference;

    .end local p1    # "p":Landroid/preference/Preference;
    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/android/phone/settings/CallBarringBasePreference;->init(Lcom/android/phone/settings/TimeConsumingPreferenceListener;Z)V

    .line 296
    :cond_0
    return-void
.end method

.method private initial()V
    .locals 3

    .prologue
    .line 266
    iget v1, p0, Lcom/android/phone/settings/CallBarring;->mSlotId:I

    invoke-static {v1}, Lcom/android/phone/MiuiPhoneUtils;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 268
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    iget-object v1, p0, Lcom/android/phone/settings/CallBarring;->mCallAllOutButton:Lcom/android/phone/settings/CallBarringBasePreference;

    const-string v2, "AO"

    invoke-virtual {v1, v2}, Lcom/android/phone/settings/CallBarringBasePreference;->setmFacility(Ljava/lang/String;)V

    .line 269
    iget-object v1, p0, Lcom/android/phone/settings/CallBarring;->mCallAllOutButton:Lcom/android/phone/settings/CallBarringBasePreference;

    const v2, 0x7f08035d

    invoke-virtual {v1, v2}, Lcom/android/phone/settings/CallBarringBasePreference;->setmTitle(I)V

    .line 270
    iget-object v1, p0, Lcom/android/phone/settings/CallBarring;->mCallAllOutButton:Lcom/android/phone/settings/CallBarringBasePreference;

    invoke-virtual {v1, v0}, Lcom/android/phone/settings/CallBarringBasePreference;->setPhoneInstance(Lcom/android/internal/telephony/Phone;)V

    .line 272
    iget-object v1, p0, Lcom/android/phone/settings/CallBarring;->mCallInternationalOutButton:Lcom/android/phone/settings/CallBarringBasePreference;

    const-string v2, "OI"

    invoke-virtual {v1, v2}, Lcom/android/phone/settings/CallBarringBasePreference;->setmFacility(Ljava/lang/String;)V

    .line 273
    iget-object v1, p0, Lcom/android/phone/settings/CallBarring;->mCallInternationalOutButton:Lcom/android/phone/settings/CallBarringBasePreference;

    const v2, 0x7f08035e

    invoke-virtual {v1, v2}, Lcom/android/phone/settings/CallBarringBasePreference;->setmTitle(I)V

    .line 274
    iget-object v1, p0, Lcom/android/phone/settings/CallBarring;->mCallInternationalOutButton:Lcom/android/phone/settings/CallBarringBasePreference;

    invoke-virtual {v1, v0}, Lcom/android/phone/settings/CallBarringBasePreference;->setPhoneInstance(Lcom/android/internal/telephony/Phone;)V

    .line 276
    iget-object v1, p0, Lcom/android/phone/settings/CallBarring;->mCallInternationalOutButton2:Lcom/android/phone/settings/CallBarringBasePreference;

    const-string v2, "OX"

    invoke-virtual {v1, v2}, Lcom/android/phone/settings/CallBarringBasePreference;->setmFacility(Ljava/lang/String;)V

    .line 277
    iget-object v1, p0, Lcom/android/phone/settings/CallBarring;->mCallInternationalOutButton2:Lcom/android/phone/settings/CallBarringBasePreference;

    const v2, 0x7f08035f

    invoke-virtual {v1, v2}, Lcom/android/phone/settings/CallBarringBasePreference;->setmTitle(I)V

    .line 278
    iget-object v1, p0, Lcom/android/phone/settings/CallBarring;->mCallInternationalOutButton2:Lcom/android/phone/settings/CallBarringBasePreference;

    invoke-virtual {v1, v0}, Lcom/android/phone/settings/CallBarringBasePreference;->setPhoneInstance(Lcom/android/internal/telephony/Phone;)V

    .line 280
    iget-object v1, p0, Lcom/android/phone/settings/CallBarring;->mCallInButton:Lcom/android/phone/settings/CallBarringBasePreference;

    const-string v2, "AI"

    invoke-virtual {v1, v2}, Lcom/android/phone/settings/CallBarringBasePreference;->setmFacility(Ljava/lang/String;)V

    .line 281
    iget-object v1, p0, Lcom/android/phone/settings/CallBarring;->mCallInButton:Lcom/android/phone/settings/CallBarringBasePreference;

    const v2, 0x7f080360

    invoke-virtual {v1, v2}, Lcom/android/phone/settings/CallBarringBasePreference;->setmTitle(I)V

    .line 282
    iget-object v1, p0, Lcom/android/phone/settings/CallBarring;->mCallInButton:Lcom/android/phone/settings/CallBarringBasePreference;

    invoke-virtual {v1, v0}, Lcom/android/phone/settings/CallBarringBasePreference;->setPhoneInstance(Lcom/android/internal/telephony/Phone;)V

    .line 284
    iget-object v1, p0, Lcom/android/phone/settings/CallBarring;->mCallInButton2:Lcom/android/phone/settings/CallBarringBasePreference;

    const-string v2, "IR"

    invoke-virtual {v1, v2}, Lcom/android/phone/settings/CallBarringBasePreference;->setmFacility(Ljava/lang/String;)V

    .line 285
    iget-object v1, p0, Lcom/android/phone/settings/CallBarring;->mCallInButton2:Lcom/android/phone/settings/CallBarringBasePreference;

    const v2, 0x7f080361

    invoke-virtual {v1, v2}, Lcom/android/phone/settings/CallBarringBasePreference;->setmTitle(I)V

    .line 286
    iget-object v1, p0, Lcom/android/phone/settings/CallBarring;->mCallInButton2:Lcom/android/phone/settings/CallBarringBasePreference;

    invoke-virtual {v1, v0}, Lcom/android/phone/settings/CallBarringBasePreference;->setPhoneInstance(Lcom/android/internal/telephony/Phone;)V

    .line 288
    iget-object v1, p0, Lcom/android/phone/settings/CallBarring;->mCallCancel:Lcom/android/phone/settings/CallBarringResetPreference;

    invoke-virtual {v1, p0}, Lcom/android/phone/settings/CallBarringResetPreference;->setListener(Lcom/android/phone/settings/TimeConsumingPreferenceListener;)V

    .line 289
    iget-object v1, p0, Lcom/android/phone/settings/CallBarring;->mCallCancel:Lcom/android/phone/settings/CallBarringResetPreference;

    invoke-virtual {v1, v0}, Lcom/android/phone/settings/CallBarringResetPreference;->setPhoneInstance(Lcom/android/internal/telephony/Phone;)V

    .line 290
    return-void
.end method

.method private setPreferenceNotSupported(Landroid/preference/Preference;)V
    .locals 3
    .param p1, "p"    # Landroid/preference/Preference;

    .prologue
    .line 165
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 166
    invoke-virtual {p1}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f08045b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, "summary":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 168
    return-void
.end method

.method private startUpdate()V
    .locals 3

    .prologue
    .line 251
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/phone/settings/CallBarring;->mInitIndex:I

    .line 252
    iget-object v1, p0, Lcom/android/phone/settings/CallBarring;->mPreferences:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/phone/settings/CallBarring;->mInitIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    .line 253
    .local v0, "p":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 254
    invoke-direct {p0, v0}, Lcom/android/phone/settings/CallBarring;->doGetCallState(Landroid/preference/Preference;)V

    .line 256
    :cond_0
    return-void
.end method


# virtual methods
.method public doCancelAllState()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 329
    iget-object v1, p0, Lcom/android/phone/settings/CallBarring;->mCallAllOutButton:Lcom/android/phone/settings/CallBarringBasePreference;

    invoke-virtual {v1}, Lcom/android/phone/settings/CallBarringBasePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080365

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 330
    .local v0, "summary":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/phone/settings/CallBarring;->mCallAllOutButton:Lcom/android/phone/settings/CallBarringBasePreference;

    invoke-virtual {v1, v0}, Lcom/android/phone/settings/CallBarringBasePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 331
    iget-object v1, p0, Lcom/android/phone/settings/CallBarring;->mCallAllOutButton:Lcom/android/phone/settings/CallBarringBasePreference;

    invoke-virtual {v1, v3}, Lcom/android/phone/settings/CallBarringBasePreference;->setChecked(Z)V

    .line 332
    iget-object v1, p0, Lcom/android/phone/settings/CallBarring;->mCallInternationalOutButton:Lcom/android/phone/settings/CallBarringBasePreference;

    invoke-virtual {v1, v0}, Lcom/android/phone/settings/CallBarringBasePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 333
    iget-object v1, p0, Lcom/android/phone/settings/CallBarring;->mCallInternationalOutButton:Lcom/android/phone/settings/CallBarringBasePreference;

    invoke-virtual {v1, v3}, Lcom/android/phone/settings/CallBarringBasePreference;->setChecked(Z)V

    .line 334
    iget-object v1, p0, Lcom/android/phone/settings/CallBarring;->mCallInternationalOutButton2:Lcom/android/phone/settings/CallBarringBasePreference;

    invoke-virtual {v1, v0}, Lcom/android/phone/settings/CallBarringBasePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 335
    iget-object v1, p0, Lcom/android/phone/settings/CallBarring;->mCallInternationalOutButton2:Lcom/android/phone/settings/CallBarringBasePreference;

    invoke-virtual {v1, v3}, Lcom/android/phone/settings/CallBarringBasePreference;->setChecked(Z)V

    .line 336
    iget-object v1, p0, Lcom/android/phone/settings/CallBarring;->mCallInButton:Lcom/android/phone/settings/CallBarringBasePreference;

    invoke-virtual {v1, v0}, Lcom/android/phone/settings/CallBarringBasePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 337
    iget-object v1, p0, Lcom/android/phone/settings/CallBarring;->mCallInButton:Lcom/android/phone/settings/CallBarringBasePreference;

    invoke-virtual {v1, v3}, Lcom/android/phone/settings/CallBarringBasePreference;->setChecked(Z)V

    .line 338
    iget-object v1, p0, Lcom/android/phone/settings/CallBarring;->mCallInButton2:Lcom/android/phone/settings/CallBarringBasePreference;

    invoke-virtual {v1, v0}, Lcom/android/phone/settings/CallBarringBasePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 339
    iget-object v1, p0, Lcom/android/phone/settings/CallBarring;->mCallInButton2:Lcom/android/phone/settings/CallBarringBasePreference;

    invoke-virtual {v1, v3}, Lcom/android/phone/settings/CallBarringBasePreference;->setChecked(Z)V

    .line 340
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x1

    .line 101
    invoke-super {p0, p1}, Lcom/android/phone/settings/TimeConsumingPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 103
    invoke-static {p0}, Lcom/android/phone/settings/SimPickerPreference;->showSimPicker(Landroid/app/Activity;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/settings/CallBarring;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v6

    invoke-virtual {v6}, Lmiui/telephony/SubscriptionManager;->getDefaultSlotId()I

    move-result v6

    invoke-static {v5, v6}, Lmiui/telephony/SubscriptionManager;->getSlotIdExtra(Landroid/content/Intent;I)I

    move-result v5

    iput v5, p0, Lcom/android/phone/settings/CallBarring;->mSlotId:I

    .line 109
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    .line 111
    .local v1, "app":Lcom/android/phone/PhoneGlobals;
    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/phone/settings/CallBarring;->mIntentFilter:Landroid/content/IntentFilter;

    .line 112
    iget-object v5, p0, Lcom/android/phone/settings/CallBarring;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v6, p0, Lcom/android/phone/settings/CallBarring;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v5, v6}, Lcom/android/phone/settings/CallBarring;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 114
    const v5, 0x7f060005

    invoke-virtual {p0, v5}, Lcom/android/phone/settings/CallBarring;->addPreferencesFromResource(I)V

    .line 116
    invoke-virtual {p0}, Lcom/android/phone/settings/CallBarring;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 117
    .local v4, "prefSet":Landroid/preference/PreferenceScreen;
    const-string v5, "all_outing_key"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/phone/settings/CallBarringBasePreference;

    iput-object v5, p0, Lcom/android/phone/settings/CallBarring;->mCallAllOutButton:Lcom/android/phone/settings/CallBarringBasePreference;

    .line 119
    const-string v5, "all_outing_international_key"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/phone/settings/CallBarringBasePreference;

    iput-object v5, p0, Lcom/android/phone/settings/CallBarring;->mCallInternationalOutButton:Lcom/android/phone/settings/CallBarringBasePreference;

    .line 121
    const-string v5, "all_outing_except_key"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/phone/settings/CallBarringBasePreference;

    iput-object v5, p0, Lcom/android/phone/settings/CallBarring;->mCallInternationalOutButton2:Lcom/android/phone/settings/CallBarringBasePreference;

    .line 123
    const-string v5, "all_incoming_key"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/phone/settings/CallBarringBasePreference;

    iput-object v5, p0, Lcom/android/phone/settings/CallBarring;->mCallInButton:Lcom/android/phone/settings/CallBarringBasePreference;

    .line 125
    const-string v5, "all_incoming_except_key"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/phone/settings/CallBarringBasePreference;

    iput-object v5, p0, Lcom/android/phone/settings/CallBarring;->mCallInButton2:Lcom/android/phone/settings/CallBarringBasePreference;

    .line 128
    const-string v5, "deactivate_all_key"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/phone/settings/CallBarringResetPreference;

    iput-object v5, p0, Lcom/android/phone/settings/CallBarring;->mCallCancel:Lcom/android/phone/settings/CallBarringResetPreference;

    .line 130
    const-string v5, "change_password_key"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    iput-object v5, p0, Lcom/android/phone/settings/CallBarring;->mCallChangePassword:Landroid/preference/PreferenceScreen;

    .line 132
    invoke-direct {p0}, Lcom/android/phone/settings/CallBarring;->initial()V

    .line 133
    iget-object v5, p0, Lcom/android/phone/settings/CallBarring;->mPreferences:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/phone/settings/CallBarring;->mCallAllOutButton:Lcom/android/phone/settings/CallBarringBasePreference;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    iget-object v5, p0, Lcom/android/phone/settings/CallBarring;->mPreferences:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/phone/settings/CallBarring;->mCallInternationalOutButton:Lcom/android/phone/settings/CallBarringBasePreference;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    iget-object v5, p0, Lcom/android/phone/settings/CallBarring;->mPreferences:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/phone/settings/CallBarring;->mCallInternationalOutButton2:Lcom/android/phone/settings/CallBarringBasePreference;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    iget-object v5, p0, Lcom/android/phone/settings/CallBarring;->mPreferences:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/phone/settings/CallBarring;->mCallInButton:Lcom/android/phone/settings/CallBarringBasePreference;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    iget-object v5, p0, Lcom/android/phone/settings/CallBarring;->mPreferences:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/phone/settings/CallBarring;->mCallInButton2:Lcom/android/phone/settings/CallBarringBasePreference;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    iget-object v5, p0, Lcom/android/phone/settings/CallBarring;->mCallAllOutButton:Lcom/android/phone/settings/CallBarringBasePreference;

    invoke-virtual {v5, p0}, Lcom/android/phone/settings/CallBarringBasePreference;->setRefreshInterface(Lcom/android/phone/settings/CallBarringInterface;)V

    .line 140
    iget-object v5, p0, Lcom/android/phone/settings/CallBarring;->mCallInternationalOutButton:Lcom/android/phone/settings/CallBarringBasePreference;

    invoke-virtual {v5, p0}, Lcom/android/phone/settings/CallBarringBasePreference;->setRefreshInterface(Lcom/android/phone/settings/CallBarringInterface;)V

    .line 141
    iget-object v5, p0, Lcom/android/phone/settings/CallBarring;->mCallInternationalOutButton2:Lcom/android/phone/settings/CallBarringBasePreference;

    invoke-virtual {v5, p0}, Lcom/android/phone/settings/CallBarringBasePreference;->setRefreshInterface(Lcom/android/phone/settings/CallBarringInterface;)V

    .line 142
    iget-object v5, p0, Lcom/android/phone/settings/CallBarring;->mCallInButton:Lcom/android/phone/settings/CallBarringBasePreference;

    invoke-virtual {v5, p0}, Lcom/android/phone/settings/CallBarringBasePreference;->setRefreshInterface(Lcom/android/phone/settings/CallBarringInterface;)V

    .line 143
    iget-object v5, p0, Lcom/android/phone/settings/CallBarring;->mCallInButton2:Lcom/android/phone/settings/CallBarringBasePreference;

    invoke-virtual {v5, p0}, Lcom/android/phone/settings/CallBarringBasePreference;->setRefreshInterface(Lcom/android/phone/settings/CallBarringInterface;)V

    .line 144
    iget-object v5, p0, Lcom/android/phone/settings/CallBarring;->mCallCancel:Lcom/android/phone/settings/CallBarringResetPreference;

    invoke-virtual {v5, p0}, Lcom/android/phone/settings/CallBarringResetPreference;->setCallBarringInterface(Lcom/android/phone/settings/CallBarringInterface;)V

    .line 147
    iget v5, p0, Lcom/android/phone/settings/CallBarring;->mSlotId:I

    invoke-static {v5}, Lcom/android/phone/MiuiPhoneUtils;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    .line 148
    iget-object v5, p0, Lcom/android/phone/settings/CallBarring;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/Preference;

    .line 149
    .local v3, "p":Landroid/preference/Preference;
    invoke-direct {p0, v3}, Lcom/android/phone/settings/CallBarring;->setPreferenceNotSupported(Landroid/preference/Preference;)V

    goto :goto_1

    .line 151
    .end local v3    # "p":Landroid/preference/Preference;
    :cond_2
    iget-object v5, p0, Lcom/android/phone/settings/CallBarring;->mCallCancel:Lcom/android/phone/settings/CallBarringResetPreference;

    invoke-direct {p0, v5}, Lcom/android/phone/settings/CallBarring;->setPreferenceNotSupported(Landroid/preference/Preference;)V

    .line 152
    iget-object v5, p0, Lcom/android/phone/settings/CallBarring;->mCallChangePassword:Landroid/preference/PreferenceScreen;

    invoke-direct {p0, v5}, Lcom/android/phone/settings/CallBarring;->setPreferenceNotSupported(Landroid/preference/Preference;)V

    goto/16 :goto_0

    .line 156
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_3
    iput-boolean v7, p0, Lcom/android/phone/settings/CallBarring;->mFirstResume:Z

    .line 158
    invoke-virtual {p0}, Lcom/android/phone/settings/CallBarring;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    .line 159
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    goto/16 :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 6
    .param p1, "id"    # I

    .prologue
    const v5, 0x7f080123

    .line 172
    const/16 v4, 0x2bc

    if-eq p1, v4, :cond_0

    const/16 v4, 0x320

    if-ne p1, v4, :cond_1

    .line 173
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 176
    .local v0, "b":Landroid/app/AlertDialog$Builder;
    const v3, 0x7f08011b

    .line 178
    .local v3, "titleId":I
    sparse-switch p1, :sswitch_data_0

    .line 188
    const v2, 0x7f080120

    .line 189
    .local v2, "msgId":I
    iget-object v4, p0, Lcom/android/phone/settings/CallBarring;->mDismissAndFinish:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v5, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 193
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/phone/settings/CallBarring;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 194
    invoke-virtual {p0, v2}, Lcom/android/phone/settings/CallBarring;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 195
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 196
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 199
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 204
    .end local v0    # "b":Landroid/app/AlertDialog$Builder;
    .end local v1    # "dialog":Landroid/app/AlertDialog;
    .end local v2    # "msgId":I
    .end local v3    # "titleId":I
    :goto_1
    return-object v1

    .line 180
    .restart local v0    # "b":Landroid/app/AlertDialog$Builder;
    .restart local v3    # "titleId":I
    :sswitch_0
    sget v2, Lcom/android/internal/R$string;->passwordIncorrect:I

    .line 181
    .restart local v2    # "msgId":I
    iget-object v4, p0, Lcom/android/phone/settings/CallBarring;->mDismiss:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v5, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 184
    .end local v2    # "msgId":I
    :sswitch_1
    const v2, 0x7f080388

    .line 185
    .restart local v2    # "msgId":I
    iget-object v4, p0, Lcom/android/phone/settings/CallBarring;->mDismiss:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v5, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 204
    .end local v0    # "b":Landroid/app/AlertDialog$Builder;
    .end local v2    # "msgId":I
    .end local v3    # "titleId":I
    :cond_1
    invoke-super {p0, p1}, Lcom/android/phone/settings/TimeConsumingPreferenceActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    goto :goto_1

    .line 178
    nop

    :sswitch_data_0
    .sparse-switch
        0x2bc -> :sswitch_0
        0x320 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 391
    invoke-super {p0}, Lcom/android/phone/settings/TimeConsumingPreferenceActivity;->onDestroy()V

    .line 393
    iget-object v0, p0, Lcom/android/phone/settings/CallBarring;->mIntentFilter:Landroid/content/IntentFilter;

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/android/phone/settings/CallBarring;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/phone/settings/CallBarring;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 396
    :cond_0
    return-void
.end method

.method public onError(Landroid/preference/Preference;I)V
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "error"    # I

    .prologue
    .line 323
    invoke-super {p0, p1, p2}, Lcom/android/phone/settings/TimeConsumingPreferenceActivity;->onError(Landroid/preference/Preference;I)V

    .line 324
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 325
    return-void
.end method

.method public onFinished(Landroid/preference/Preference;Z)V
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "reading"    # Z

    .prologue
    .line 300
    iget v3, p0, Lcom/android/phone/settings/CallBarring;->mInitIndex:I

    iget-object v4, p0, Lcom/android/phone/settings/CallBarring;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/settings/CallBarring;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 301
    iget-object v3, p0, Lcom/android/phone/settings/CallBarring;->mPreferences:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/phone/settings/CallBarring;->mInitIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/settings/CallBarringBasePreference;

    .line 303
    .local v0, "cb":Lcom/android/phone/settings/CallBarringBasePreference;
    invoke-virtual {v0}, Lcom/android/phone/settings/CallBarringBasePreference;->isSuccess()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 304
    iget v3, p0, Lcom/android/phone/settings/CallBarring;->mInitIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/phone/settings/CallBarring;->mInitIndex:I

    .line 309
    iget-object v3, p0, Lcom/android/phone/settings/CallBarring;->mPreferences:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/phone/settings/CallBarring;->mInitIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/Preference;

    .line 310
    .local v2, "p":Landroid/preference/Preference;
    invoke-direct {p0, v2}, Lcom/android/phone/settings/CallBarring;->doGetCallState(Landroid/preference/Preference;)V

    .line 318
    .end local v0    # "cb":Lcom/android/phone/settings/CallBarringBasePreference;
    .end local v2    # "p":Landroid/preference/Preference;
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/phone/settings/TimeConsumingPreferenceActivity;->onFinished(Landroid/preference/Preference;Z)V

    .line 319
    return-void

    .line 312
    .restart local v0    # "cb":Lcom/android/phone/settings/CallBarringBasePreference;
    :cond_1
    iget v1, p0, Lcom/android/phone/settings/CallBarring;->mInitIndex:I

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/phone/settings/CallBarring;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 313
    iget-object v3, p0, Lcom/android/phone/settings/CallBarring;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/Preference;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 312
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 315
    :cond_2
    iget-object v3, p0, Lcom/android/phone/settings/CallBarring;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iput v3, p0, Lcom/android/phone/settings/CallBarring;->mInitIndex:I

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 228
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 229
    .local v0, "itemId":I
    packed-switch v0, :pswitch_data_0

    .line 236
    invoke-super {p0, p1}, Lcom/android/phone/settings/TimeConsumingPreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 231
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/phone/settings/CallBarring;->finish()V

    .line 232
    const/4 v1, 0x1

    goto :goto_0

    .line 229
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 241
    iget-object v1, p0, Lcom/android/phone/settings/CallBarring;->mCallChangePassword:Landroid/preference/PreferenceScreen;

    if-ne p2, v1, :cond_0

    .line 242
    new-instance v0, Lcom/android/phone/settings/CallBarringChangePasswordDialog;

    iget v1, p0, Lcom/android/phone/settings/CallBarring;->mSlotId:I

    invoke-direct {v0, p0, v1}, Lcom/android/phone/settings/CallBarringChangePasswordDialog;-><init>(Landroid/content/Context;I)V

    .line 244
    .local v0, "dialog":Lcom/android/phone/settings/CallBarringChangePasswordDialog;
    invoke-virtual {v0}, Lcom/android/phone/settings/CallBarringChangePasswordDialog;->show()V

    .line 245
    const/4 v1, 0x1

    .line 247
    .end local v0    # "dialog":Lcom/android/phone/settings/CallBarringChangePasswordDialog;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 209
    invoke-super {p0}, Lcom/android/phone/settings/TimeConsumingPreferenceActivity;->onResume()V

    .line 210
    iget-boolean v0, p0, Lcom/android/phone/settings/CallBarring;->mFirstResume:Z

    if-eqz v0, :cond_0

    .line 211
    iget v0, p0, Lcom/android/phone/settings/CallBarring;->mSlotId:I

    invoke-static {v0}, Lcom/android/phone/MiuiPhoneUtils;->shouldShowOpenMobileDataDialog(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 212
    iget-boolean v0, p0, Lcom/android/phone/settings/CallBarring;->mHasShowOpenMobileDataDialog:Z

    if-eqz v0, :cond_1

    .line 213
    invoke-virtual {p0}, Lcom/android/phone/settings/CallBarring;->finish()V

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    invoke-static {}, Lcom/android/phone/MiuiPhoneUtils;->showOpenMobileDataDialog()V

    .line 216
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/settings/CallBarring;->mHasShowOpenMobileDataDialog:Z

    goto :goto_0

    .line 220
    :cond_2
    iput-boolean v1, p0, Lcom/android/phone/settings/CallBarring;->mHasShowOpenMobileDataDialog:Z

    .line 221
    invoke-direct {p0}, Lcom/android/phone/settings/CallBarring;->startUpdate()V

    .line 222
    iput-boolean v1, p0, Lcom/android/phone/settings/CallBarring;->mFirstResume:Z

    goto :goto_0
.end method

.method public resetIndex(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 386
    iput p1, p0, Lcom/android/phone/settings/CallBarring;->mInitIndex:I

    .line 387
    return-void
.end method

.method public setErrorState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 382
    iput p1, p0, Lcom/android/phone/settings/CallBarring;->mErrorState:I

    .line 383
    return-void
.end method
