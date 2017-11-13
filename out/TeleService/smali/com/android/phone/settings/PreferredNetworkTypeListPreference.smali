.class public Lcom/android/phone/settings/PreferredNetworkTypeListPreference;
.super Lmiui/preference/PreferenceActivity;
.source "PreferredNetworkTypeListPreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/settings/PreferredNetworkTypeListPreference$MyHandler;
    }
.end annotation


# instance fields
.field private mCurrentNetworkType:I

.field private mHandler:Lcom/android/phone/settings/PreferredNetworkTypeListPreference$MyHandler;

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/preference/RadioButtonPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mSimStateChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mSlotId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lmiui/preference/PreferenceActivity;-><init>()V

    .line 323
    new-instance v0, Lcom/android/phone/settings/PreferredNetworkTypeListPreference$4;

    invoke-direct {v0, p0}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference$4;-><init>(Lcom/android/phone/settings/PreferredNetworkTypeListPreference;)V

    iput-object v0, p0, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->mSimStateChangeReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/settings/PreferredNetworkTypeListPreference;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/PreferredNetworkTypeListPreference;

    .prologue
    .line 44
    iget v0, p0, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->mCurrentNetworkType:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/phone/settings/PreferredNetworkTypeListPreference;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/PreferredNetworkTypeListPreference;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->mItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/phone/settings/PreferredNetworkTypeListPreference;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/PreferredNetworkTypeListPreference;
    .param p1, "x1"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->mCurrentNetworkType:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/phone/settings/PreferredNetworkTypeListPreference;Landroid/preference/Preference;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/PreferredNetworkTypeListPreference;
    .param p1, "x1"    # Landroid/preference/Preference;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->getAllRadioPreference(Landroid/preference/Preference;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/settings/PreferredNetworkTypeListPreference;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/PreferredNetworkTypeListPreference;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->checkRadioPreference(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/settings/PreferredNetworkTypeListPreference;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/PreferredNetworkTypeListPreference;
    .param p1, "x1"    # I

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->handleClick(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/settings/PreferredNetworkTypeListPreference;)Lcom/android/phone/settings/PreferredNetworkTypeListPreference$MyHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/PreferredNetworkTypeListPreference;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->mHandler:Lcom/android/phone/settings/PreferredNetworkTypeListPreference$MyHandler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/settings/PreferredNetworkTypeListPreference;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/PreferredNetworkTypeListPreference;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/settings/PreferredNetworkTypeListPreference;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/PreferredNetworkTypeListPreference;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->isMtkPlatform()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/phone/settings/PreferredNetworkTypeListPreference;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/PreferredNetworkTypeListPreference;

    .prologue
    .line 44
    iget v0, p0, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->mSlotId:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/phone/settings/PreferredNetworkTypeListPreference;Landroid/preference/PreferenceScreen;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/PreferredNetworkTypeListPreference;
    .param p1, "x1"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->updatePreferredNetworkTypes(Landroid/preference/PreferenceScreen;)V

    return-void
.end method

.method private checkRadioPreference(Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 141
    iget-object v2, p0, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/preference/RadioButtonPreference;

    .line 142
    .local v1, "pref":Lmiui/preference/RadioButtonPreference;
    invoke-virtual {v1}, Lmiui/preference/RadioButtonPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lmiui/preference/RadioButtonPreference;->setChecked(Z)V

    goto :goto_0

    .line 144
    .end local v1    # "pref":Lmiui/preference/RadioButtonPreference;
    :cond_0
    return-void
.end method

.method private getAllRadioPreference(Landroid/preference/Preference;)V
    .locals 4
    .param p1, "pref"    # Landroid/preference/Preference;

    .prologue
    .line 127
    if-eqz p1, :cond_0

    .line 128
    instance-of v2, p1, Lmiui/preference/RadioButtonPreference;

    if-eqz v2, :cond_1

    .line 129
    iget-object v3, p0, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->mItems:Ljava/util/ArrayList;

    move-object v2, p1

    check-cast v2, Lmiui/preference/RadioButtonPreference;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    invoke-virtual {p1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 138
    :cond_0
    return-void

    .line 131
    :cond_1
    instance-of v2, p1, Landroid/preference/PreferenceGroup;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 132
    check-cast v1, Landroid/preference/PreferenceGroup;

    .line 133
    .local v1, "pg":Landroid/preference/PreferenceGroup;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 134
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->getAllRadioPreference(Landroid/preference/Preference;)V

    .line 133
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private handleClick(I)V
    .locals 4
    .param p1, "networkType"    # I

    .prologue
    .line 203
    const-string v0, "PreferedNetworkTypeListPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleClick networkType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iput p1, p0, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->mCurrentNetworkType:I

    .line 205
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->checkRadioPreference(Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    iget v1, p0, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->mCurrentNetworkType:I

    iget-object v2, p0, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->mHandler:Lcom/android/phone/settings/PreferredNetworkTypeListPreference$MyHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 208
    return-void
.end method

.method private isH3LTEGlobal()Z
    .locals 2

    .prologue
    .line 350
    sget-boolean v0, Lmiui/os/Build;->IS_HONGMI_THREE_LTE:Z

    if-eqz v0, :cond_0

    const-string v0, "LTEGLOBAL"

    const-string v1, "ro.boot.modem"

    invoke-static {v1}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMtkPlatform()Z
    .locals 2

    .prologue
    .line 354
    const-string v0, "mediatek"

    const-string v1, "vendor"

    invoke-static {v1}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private showEvdoNetworkModes()Z
    .locals 1

    .prologue
    .line 390
    sget-boolean v0, Lmiui/os/Build;->IS_MITHREE_CDMA:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_MIFOUR_CDMA:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_MITWO_CDMA:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showFddlteNetworkModes()Z
    .locals 1

    .prologue
    .line 380
    sget-boolean v0, Lmiui/os/Build;->IS_MIFOUR_LTE_CU:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_MIFOUR_LTE_CT:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_MIFOUR_LTE_INDIA:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_MIFOUR_LTE_SEASA:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_HONGMI_THREE_LTE_CU:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->isH3LTEGlobal()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_HONGMI_TWOX_CU:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_HONGMI_TWOX_CT:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_HONGMI_TWOX_SA:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_HONGMI_TWOX_BR:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_HONGMI_TWOX_IN:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_HONGMI_THREEX_CU:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_HONGMI_THREEX_CT:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showPineconeNetworkModes()Z
    .locals 2

    .prologue
    .line 376
    const-string v0, "song"

    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private showTdlteNetworkModes()Z
    .locals 1

    .prologue
    .line 371
    sget-boolean v0, Lmiui/os/Build;->IS_MIFOUR_LTE_CM:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_HONGMI_THREE_LTE_CM:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/phone/MiuiPhoneUtils;->isHMH2xCmForThreeMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showTdscdmaNetworkModes()Z
    .locals 1

    .prologue
    .line 367
    sget-boolean v0, Lmiui/os/Build;->IS_MITHREE_TDSCDMA:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_MITWO_TDSCDMA:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showWcdmaNetworkModes()Z
    .locals 3

    .prologue
    .line 362
    const-string v0, "WCDMA"

    const-string v1, "persist.radio.modem"

    const-string v2, ""

    invoke-static {v1, v2}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_MIFOUR_CDMA:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_MITHREE_CDMA:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_MITWO:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lmiui/os/Build;->IS_MITWO_TDSCDMA:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updatePreferredNetworkTypes(Landroid/preference/PreferenceScreen;)V
    .locals 3
    .param p1, "prefScreen"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 311
    if-eqz p1, :cond_0

    .line 313
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lmiui/telephony/TelephonyManager;->isDisableLte(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 314
    sget-boolean v1, Lcom/android/phone/NetworkModeManager;->IS_QCOM:Z

    if-eqz v1, :cond_1

    const-string v1, "20"

    invoke-virtual {p0, v1}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 316
    .local v0, "preference4GPrefer":Landroid/preference/Preference;
    :goto_0
    if-eqz v0, :cond_0

    .line 317
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 321
    .end local v0    # "preference4GPrefer":Landroid/preference/Preference;
    :cond_0
    return-void

    .line 314
    :cond_1
    const-string v1, "9"

    invoke-virtual {p0, v1}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x1

    .line 63
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    invoke-virtual {p0}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-static {}, Lmiui/telephony/DefaultSimManager;->getDefaultDataSlotId()I

    move-result v5

    invoke-static {v4, v5}, Lmiui/telephony/SubscriptionManager;->getSlotIdExtra(Landroid/content/Intent;I)I

    move-result v4

    iput v4, p0, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->mSlotId:I

    .line 65
    iget v4, p0, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->mSlotId:I

    invoke-static {v4}, Lcom/android/phone/MiuiPhoneUtils;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 66
    new-instance v4, Lcom/android/phone/settings/PreferredNetworkTypeListPreference$MyHandler;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference$MyHandler;-><init>(Lcom/android/phone/settings/PreferredNetworkTypeListPreference;Lcom/android/phone/settings/PreferredNetworkTypeListPreference$1;)V

    iput-object v4, p0, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->mHandler:Lcom/android/phone/settings/PreferredNetworkTypeListPreference$MyHandler;

    .line 67
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->mItems:Ljava/util/ArrayList;

    .line 68
    iget-object v4, p0, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    .line 69
    .local v2, "phoneType":I
    const-string v4, "PreferedNetworkTypeListPreference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PreferredNetworkTypeListPreference: phoneType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    const/4 v4, 0x2

    if-ne v2, v4, :cond_2

    .line 71
    invoke-direct {p0}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->showEvdoNetworkModes()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 73
    const v4, 0x7f06002c

    invoke-virtual {p0, v4}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->addPreferencesFromResource(I)V

    .line 111
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 112
    invoke-virtual {p0}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 113
    .local v3, "prefScreen":Landroid/preference/PreferenceScreen;
    invoke-direct {p0, v3}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->updatePreferredNetworkTypes(Landroid/preference/PreferenceScreen;)V

    .line 115
    invoke-direct {p0, v3}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->getAllRadioPreference(Landroid/preference/Preference;)V

    .line 117
    new-instance v1, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v1, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 118
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    iget-object v4, p0, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->mSimStateChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v1}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 120
    invoke-virtual {p0}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    .line 121
    .local v0, "bar":Lmiui/app/ActionBar;
    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {v0, v7}, Lmiui/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 124
    :cond_0
    return-void

    .line 76
    .end local v0    # "bar":Lmiui/app/ActionBar;
    .end local v1    # "intentFilter":Landroid/content/IntentFilter;
    .end local v3    # "prefScreen":Landroid/preference/PreferenceScreen;
    :cond_1
    const v4, 0x7f060030

    invoke-virtual {p0, v4}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->addPreferencesFromResource(I)V

    goto :goto_0

    .line 78
    :cond_2
    if-ne v2, v7, :cond_b

    .line 79
    invoke-direct {p0}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->showTdscdmaNetworkModes()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 81
    const v4, 0x7f06002b

    invoke-virtual {p0, v4}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->addPreferencesFromResource(I)V

    goto :goto_0

    .line 82
    :cond_3
    invoke-direct {p0}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->showWcdmaNetworkModes()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 84
    const v4, 0x7f06002a

    invoke-virtual {p0, v4}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->addPreferencesFromResource(I)V

    goto :goto_0

    .line 85
    :cond_4
    invoke-direct {p0}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->showTdlteNetworkModes()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 87
    const v4, 0x7f06002f

    invoke-virtual {p0, v4}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->addPreferencesFromResource(I)V

    goto :goto_0

    .line 88
    :cond_5
    invoke-direct {p0}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->showFddlteNetworkModes()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 90
    const v4, 0x7f060031

    invoke-virtual {p0, v4}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->addPreferencesFromResource(I)V

    goto :goto_0

    .line 91
    :cond_6
    sget-boolean v4, Lmiui/os/Build;->IS_HONGMI_TWOX_LC:Z

    if-eqz v4, :cond_7

    .line 93
    const v4, 0x7f06002d

    invoke-virtual {p0, v4}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->addPreferencesFromResource(I)V

    goto :goto_0

    .line 94
    :cond_7
    invoke-direct {p0}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->showPineconeNetworkModes()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 96
    const v4, 0x7f060034

    invoke-virtual {p0, v4}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->addPreferencesFromResource(I)V

    goto :goto_0

    .line 97
    :cond_8
    invoke-direct {p0}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->isMtkPlatform()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 99
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v4, v5, :cond_9

    .line 100
    const v4, 0x7f060033

    invoke-virtual {p0, v4}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->addPreferencesFromResource(I)V

    goto/16 :goto_0

    .line 102
    :cond_9
    const v4, 0x7f060032

    invoke-virtual {p0, v4}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->addPreferencesFromResource(I)V

    goto/16 :goto_0

    .line 106
    :cond_a
    const v4, 0x7f06002e

    invoke-virtual {p0, v4}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->addPreferencesFromResource(I)V

    goto/16 :goto_0

    .line 109
    :cond_b
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected phone type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 345
    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onDestroy()V

    .line 346
    iget-object v0, p0, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->mSimStateChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 347
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 303
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 304
    .local v0, "itemId":I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 305
    invoke-virtual {p0}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->finish()V

    .line 307
    :cond_0
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 10
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v9, 0x1

    .line 164
    invoke-static {}, Lcom/android/phone/MiuiPhoneUtils;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v5

    .line 165
    .local v5, "phones":[Lcom/android/internal/telephony/Phone;
    move-object v0, v5

    .local v0, "arr$":[Lcom/android/internal/telephony/Phone;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .line 166
    .local v4, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v4, :cond_0

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v6, v7, :cond_0

    .line 167
    const v6, 0x7f0803ee

    invoke-static {p0, v6, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 170
    iget v6, p0, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->mCurrentNetworkType:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->checkRadioPreference(Ljava/lang/String;)V

    .line 199
    .end local v4    # "phone":Lcom/android/internal/telephony/Phone;
    :goto_1
    return v9

    .line 165
    .restart local v4    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 175
    .end local v4    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_1
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 176
    .local v3, "networkType":I
    const/4 v6, 0x2

    if-ne v3, v6, :cond_2

    .line 178
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f0802e8

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f0802f3

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x104000a

    new-instance v8, Lcom/android/phone/settings/PreferredNetworkTypeListPreference$3;

    invoke-direct {v8, p0, v3}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference$3;-><init>(Lcom/android/phone/settings/PreferredNetworkTypeListPreference;I)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const/high16 v7, 0x1040000

    new-instance v8, Lcom/android/phone/settings/PreferredNetworkTypeListPreference$2;

    invoke-direct {v8, p0}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference$2;-><init>(Lcom/android/phone/settings/PreferredNetworkTypeListPreference;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lcom/android/phone/settings/PreferredNetworkTypeListPreference$1;

    invoke-direct {v7, p0}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference$1;-><init>(Lcom/android/phone/settings/PreferredNetworkTypeListPreference;)V

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1

    .line 197
    :cond_2
    invoke-direct {p0, v3}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->handleClick(I)V

    goto :goto_1
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 157
    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onResume()V

    .line 158
    iget-object v0, p0, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/settings/PreferredNetworkTypeListPreference;->mHandler:Lcom/android/phone/settings/PreferredNetworkTypeListPreference$MyHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/phone/settings/PreferredNetworkTypeListPreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 160
    return-void
.end method
