.class public Lcom/android/phone/MobileNetworkSettings;
.super Landroid/preference/PreferenceActivity;
.source "MobileNetworkSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/MobileNetworkSettings$5;,
        Lcom/android/phone/MobileNetworkSettings$MyHandler;,
        Lcom/android/phone/MobileNetworkSettings$TabState;,
        Lcom/android/phone/MobileNetworkSettings$PhoneChangeReceiver;
    }
.end annotation


# static fields
.field static final preferredNetworkMode:I


# instance fields
.field private mActiveSubInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mButton4glte:Landroid/preference/SwitchPreference;

.field private mButtonDataRoam:Landroid/preference/SwitchPreference;

.field private mButtonEnabledNetworks:Landroid/preference/ListPreference;

.field private mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

.field mCdmaOptions:Lcom/android/phone/CdmaOptions;

.field private mClickedPreference:Landroid/preference/Preference;

.field private mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

.field mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

.field private mHandler:Lcom/android/phone/MobileNetworkSettings$MyHandler;

.field private mIsGlobalCdma:Z

.field private mLteDataServicePref:Landroid/preference/Preference;

.field private mOkClicked:Z

.field private final mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private final mPhoneChangeReceiver:Landroid/content/BroadcastReceiver;

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mShow4GForLTE:Z

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mTabHost:Landroid/widget/TabHost;

.field private mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

.field private mUm:Landroid/os/UserManager;

.field private mUnavailable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 101
    sget v0, Lcom/android/internal/telephony/Phone;->PREFERRED_NT_MODE:I

    sput v0, Lcom/android/phone/MobileNetworkSettings;->preferredNetworkMode:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 77
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 137
    new-instance v0, Lcom/android/phone/MobileNetworkSettings$1;

    invoke-direct {v0, p0}, Lcom/android/phone/MobileNetworkSettings$1;-><init>(Lcom/android/phone/MobileNetworkSettings;)V

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 154
    new-instance v0, Lcom/android/phone/MobileNetworkSettings$PhoneChangeReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/MobileNetworkSettings$PhoneChangeReceiver;-><init>(Lcom/android/phone/MobileNetworkSettings;Lcom/android/phone/MobileNetworkSettings$1;)V

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPhoneChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 258
    new-instance v0, Lcom/android/phone/MobileNetworkSettings$2;

    invoke-direct {v0, p0}, Lcom/android/phone/MobileNetworkSettings$2;-><init>(Lcom/android/phone/MobileNetworkSettings;)V

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 381
    new-instance v0, Lcom/android/phone/MobileNetworkSettings$3;

    invoke-direct {v0, p0}, Lcom/android/phone/MobileNetworkSettings$3;-><init>(Lcom/android/phone/MobileNetworkSettings;)V

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    .line 405
    new-instance v0, Lcom/android/phone/MobileNetworkSettings$4;

    invoke-direct {v0, p0}, Lcom/android/phone/MobileNetworkSettings$4;-><init>(Lcom/android/phone/MobileNetworkSettings;)V

    iput-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    .line 882
    return-void
.end method

.method private UpdateEnabledNetworksValueAndSummary(I)V
    .locals 7
    .param p1, "NetworkMode"    # I

    .prologue
    const v1, 0x7f0801ad

    const v6, 0x7f0801b2

    const/16 v5, 0xa

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1020
    packed-switch p1, :pswitch_data_0

    .line 1107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Network Mode ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "). Ignore."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1108
    .local v0, "errMsg":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/phone/MobileNetworkSettings;->loge(Ljava/lang/String;)V

    .line 1109
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonEnabledNetworks:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1111
    .end local v0    # "errMsg":Ljava/lang/String;
    :goto_0
    return-void

    .line 1024
    :pswitch_0
    iget-boolean v1, p0, Lcom/android/phone/MobileNetworkSettings;->mIsGlobalCdma:Z

    if-nez v1, :cond_0

    .line 1025
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonEnabledNetworks:Landroid/preference/ListPreference;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1027
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonEnabledNetworks:Landroid/preference/ListPreference;

    const v2, 0x7f0801af

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    .line 1029
    :cond_0
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonEnabledNetworks:Landroid/preference/ListPreference;

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1031
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonEnabledNetworks:Landroid/preference/ListPreference;

    invoke-virtual {v1, v6}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    .line 1035
    :pswitch_1
    iget-boolean v1, p0, Lcom/android/phone/MobileNetworkSettings;->mIsGlobalCdma:Z

    if-nez v1, :cond_1

    .line 1036
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonEnabledNetworks:Landroid/preference/ListPreference;

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1038
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonEnabledNetworks:Landroid/preference/ListPreference;

    const v2, 0x7f0801b0

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    .line 1040
    :cond_1
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonEnabledNetworks:Landroid/preference/ListPreference;

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1042
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonEnabledNetworks:Landroid/preference/ListPreference;

    invoke-virtual {v1, v6}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    .line 1046
    :pswitch_2
    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->isWorldMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1047
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonEnabledNetworks:Landroid/preference/ListPreference;

    const v2, 0x7f08014e

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 1049
    invoke-direct {p0, v3}, Lcom/android/phone/MobileNetworkSettings;->controlCdmaOptions(Z)V

    .line 1050
    invoke-direct {p0, v4}, Lcom/android/phone/MobileNetworkSettings;->controlGsmOptions(Z)V

    goto :goto_0

    .line 1055
    :cond_2
    :pswitch_3
    iget-boolean v2, p0, Lcom/android/phone/MobileNetworkSettings;->mIsGlobalCdma:Z

    if-nez v2, :cond_4

    .line 1056
    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonEnabledNetworks:Landroid/preference/ListPreference;

    const/16 v3, 0x9

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1058
    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonEnabledNetworks:Landroid/preference/ListPreference;

    iget-boolean v3, p0, Lcom/android/phone/MobileNetworkSettings;->mShow4GForLTE:Z

    if-ne v3, v4, :cond_3

    const v1, 0x7f0801ae

    :cond_3
    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    .line 1061
    :cond_4
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonEnabledNetworks:Landroid/preference/ListPreference;

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1063
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonEnabledNetworks:Landroid/preference/ListPreference;

    invoke-virtual {v1, v6}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_0

    .line 1067
    :pswitch_4
    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->isWorldMode()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1068
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonEnabledNetworks:Landroid/preference/ListPreference;

    const v2, 0x7f08014f

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 1070
    invoke-direct {p0, v4}, Lcom/android/phone/MobileNetworkSettings;->controlCdmaOptions(Z)V

    .line 1071
    invoke-direct {p0, v3}, Lcom/android/phone/MobileNetworkSettings;->controlGsmOptions(Z)V

    goto/16 :goto_0

    .line 1073
    :cond_5
    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonEnabledNetworks:Landroid/preference/ListPreference;

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1075
    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonEnabledNetworks:Landroid/preference/ListPreference;

    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_0

    .line 1081
    :pswitch_5
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonEnabledNetworks:Landroid/preference/ListPreference;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1083
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonEnabledNetworks:Landroid/preference/ListPreference;

    const v2, 0x7f0801af

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_0

    .line 1086
    :pswitch_6
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonEnabledNetworks:Landroid/preference/ListPreference;

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1088
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonEnabledNetworks:Landroid/preference/ListPreference;

    const v2, 0x7f0801b1

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_0

    .line 1091
    :pswitch_7
    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->isWorldMode()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1092
    invoke-direct {p0, v4}, Lcom/android/phone/MobileNetworkSettings;->controlCdmaOptions(Z)V

    .line 1093
    invoke-direct {p0, v3}, Lcom/android/phone/MobileNetworkSettings;->controlGsmOptions(Z)V

    .line 1095
    :cond_6
    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonEnabledNetworks:Landroid/preference/ListPreference;

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1097
    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_7

    iget-boolean v2, p0, Lcom/android/phone/MobileNetworkSettings;->mIsGlobalCdma:Z

    if-nez v2, :cond_7

    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->isWorldMode()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1100
    :cond_7
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonEnabledNetworks:Landroid/preference/ListPreference;

    invoke-virtual {v1, v6}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_0

    .line 1102
    :cond_8
    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonEnabledNetworks:Landroid/preference/ListPreference;

    iget-boolean v3, p0, Lcom/android/phone/MobileNetworkSettings;->mShow4GForLTE:Z

    if-ne v3, v4, :cond_9

    const v1, 0x7f0801ae

    :cond_9
    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_0

    .line 1020
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_2
        :pswitch_7
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private UpdatePreferredNetworkModeSummary(I)V
    .locals 4
    .param p1, "NetworkMode"    # I

    .prologue
    const v3, 0x7f08014c

    const v2, 0x7f080149

    .line 944
    packed-switch p1, :pswitch_data_0

    .line 1014
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setSummary(I)V

    .line 1017
    :goto_0
    return-void

    .line 946
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f080140

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    .line 950
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f080141

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    .line 954
    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f080142

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    .line 958
    :pswitch_3
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f080143

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    .line 962
    :pswitch_4
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLteOnCdmaMode()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    .line 969
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f080145

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    .line 964
    :pswitch_5
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f080144

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    .line 975
    :pswitch_6
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f080146

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    .line 979
    :pswitch_7
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f080147

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    .line 983
    :pswitch_8
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    .line 987
    :pswitch_9
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f08014a

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    .line 991
    :pswitch_a
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f08014b

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    .line 995
    :pswitch_b
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/MobileNetworkSettings;->mIsGlobalCdma:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->isWorldMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 998
    :cond_0
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_0

    .line 1001
    :cond_1
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_0

    .line 1006
    :pswitch_c
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f080148

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_0

    .line 1010
    :pswitch_d
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const v1, 0x7f08014d

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    goto/16 :goto_0

    .line 944
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_c
        :pswitch_a
        :pswitch_9
        :pswitch_b
        :pswitch_8
        :pswitch_d
    .end packed-switch

    .line 962
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-static {p0}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/MobileNetworkSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/MobileNetworkSettings;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->hasActiveSubscriptions()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/phone/MobileNetworkSettings;)Landroid/preference/ListPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/MobileNetworkSettings;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonEnabledNetworks:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/phone/MobileNetworkSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/MobileNetworkSettings;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->updatePreferredNetworkUIFromDb()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/MobileNetworkSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/MobileNetworkSettings;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->updateBody()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/MobileNetworkSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/MobileNetworkSettings;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->initializeSubscriptions()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/MobileNetworkSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/MobileNetworkSettings;
    .param p1, "x1"    # I

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/android/phone/MobileNetworkSettings;->updatePhone(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/MobileNetworkSettings;)Landroid/widget/TabHost;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/MobileNetworkSettings;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mTabHost:Landroid/widget/TabHost;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/MobileNetworkSettings;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/MobileNetworkSettings;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/phone/MobileNetworkSettings;)Landroid/preference/ListPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/MobileNetworkSettings;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    return-object v0
.end method

.method private buildTabSpec(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 413
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    return-object v0
.end method

.method private controlCdmaOptions(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 1212
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 1213
    .local v0, "prefSet":Landroid/preference/PreferenceScreen;
    if-nez v0, :cond_1

    .line 1225
    :cond_0
    :goto_0
    return-void

    .line 1216
    :cond_1
    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    if-nez v2, :cond_2

    .line 1217
    new-instance v2, Lcom/android/phone/CdmaOptions;

    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v2, p0, v0, v3}, Lcom/android/phone/CdmaOptions;-><init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;Lcom/android/internal/telephony/Phone;)V

    iput-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    .line 1219
    :cond_2
    const-string v2, "cdma_system_select_key"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/phone/CdmaSystemSelectListPreference;

    .line 1222
    .local v1, "systemSelect":Lcom/android/phone/CdmaSystemSelectListPreference;
    if-eqz v1, :cond_0

    .line 1223
    invoke-virtual {v1, p1}, Lcom/android/phone/CdmaSystemSelectListPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private controlGsmOptions(Z)V
    .locals 6
    .param p1, "enable"    # Z

    .prologue
    .line 1186
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 1187
    .local v3, "prefSet":Landroid/preference/PreferenceScreen;
    if-nez v3, :cond_1

    .line 1209
    :cond_0
    :goto_0
    return-void

    .line 1191
    :cond_1
    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    if-nez v4, :cond_2

    .line 1192
    new-instance v4, Lcom/android/phone/GsmUmtsOptions;

    iget-object v5, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v5

    invoke-direct {v4, p0, v3, v5}, Lcom/android/phone/GsmUmtsOptions;-><init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;I)V

    iput-object v4, p0, Lcom/android/phone/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    .line 1194
    :cond_2
    const-string v4, "button_apn_key"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    .line 1196
    .local v0, "apnExpand":Landroid/preference/PreferenceScreen;
    const-string v4, "button_carrier_sel_key"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    .line 1198
    .local v2, "operatorSelectionExpand":Landroid/preference/PreferenceScreen;
    const-string v4, "carrier_settings_key"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    .line 1200
    .local v1, "carrierSettings":Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_4

    .line 1201
    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->isWorldMode()Z

    move-result v4

    if-nez v4, :cond_3

    if-eqz p1, :cond_6

    :cond_3
    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 1203
    :cond_4
    if-eqz v2, :cond_5

    .line 1204
    invoke-virtual {v2, p1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 1206
    :cond_5
    if-eqz v1, :cond_0

    .line 1207
    invoke-virtual {v3, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 1201
    :cond_6
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private hasActiveSubscriptions()Z
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mActiveSubInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initializeSubscriptions()V
    .locals 11

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 268
    const/4 v0, 0x0

    .line 269
    .local v0, "currentTab":I
    const-string v7, "initializeSubscriptions:+"

    invoke-static {v7}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    .line 273
    iget-object v7, p0, Lcom/android/phone/MobileNetworkSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v7}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v3

    .line 274
    .local v3, "sil":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    invoke-direct {p0, v3}, Lcom/android/phone/MobileNetworkSettings;->isUpdateTabsNeeded(Ljava/util/List;)Lcom/android/phone/MobileNetworkSettings$TabState;

    move-result-object v5

    .line 277
    .local v5, "state":Lcom/android/phone/MobileNetworkSettings$TabState;
    iget-object v7, p0, Lcom/android/phone/MobileNetworkSettings;->mActiveSubInfos:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 278
    if-eqz v3, :cond_0

    .line 279
    iget-object v7, p0, Lcom/android/phone/MobileNetworkSettings;->mActiveSubInfos:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 281
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    const/4 v10, 0x1

    if-ne v7, v10, :cond_0

    .line 282
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v7}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v0

    .line 286
    :cond_0
    sget-object v7, Lcom/android/phone/MobileNetworkSettings$5;->$SwitchMap$com$android$phone$MobileNetworkSettings$TabState:[I

    invoke-virtual {v5}, Lcom/android/phone/MobileNetworkSettings$TabState;->ordinal()I

    move-result v10

    aget v7, v7, v10

    packed-switch v7, :pswitch_data_0

    .line 341
    :cond_1
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/phone/MobileNetworkSettings;->updatePhone(I)V

    .line 342
    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->updateBody()V

    .line 343
    const-string v7, "initializeSubscriptions:-"

    invoke-static {v7}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    .line 344
    return-void

    .line 288
    :pswitch_0
    const-string v7, "initializeSubscriptions: UPDATE"

    invoke-static {v7}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    .line 289
    iget-object v7, p0, Lcom/android/phone/MobileNetworkSettings;->mTabHost:Landroid/widget/TabHost;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/phone/MobileNetworkSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v7}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v0

    .line 291
    :goto_1
    sget v7, Lcom/android/internal/R$layout;->common_tab_settings:I

    invoke-virtual {p0, v7}, Lcom/android/phone/MobileNetworkSettings;->setContentView(I)V

    .line 293
    const v7, 0x1020012

    invoke-virtual {p0, v7}, Lcom/android/phone/MobileNetworkSettings;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TabHost;

    iput-object v7, p0, Lcom/android/phone/MobileNetworkSettings;->mTabHost:Landroid/widget/TabHost;

    .line 294
    iget-object v7, p0, Lcom/android/phone/MobileNetworkSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v7}, Landroid/widget/TabHost;->setup()V

    .line 300
    iget-object v7, p0, Lcom/android/phone/MobileNetworkSettings;->mActiveSubInfos:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 301
    .local v2, "siIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/telephony/SubscriptionInfo;>;"
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/SubscriptionInfo;

    move-object v1, v7

    .line 302
    .local v1, "si":Landroid/telephony/SubscriptionInfo;
    :goto_2
    const/4 v4, 0x0

    .local v4, "simSlotIndex":I
    :goto_3
    iget-object v7, p0, Lcom/android/phone/MobileNetworkSettings;->mActiveSubInfos:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_6

    .line 304
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v7

    if-ne v7, v4, :cond_5

    .line 306
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 307
    .local v6, "tabName":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/SubscriptionInfo;

    move-object v1, v7

    .line 313
    :goto_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "initializeSubscriptions: tab="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " name="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    .line 316
    iget-object v7, p0, Lcom/android/phone/MobileNetworkSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8, v6}, Lcom/android/phone/MobileNetworkSettings;->buildTabSpec(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 302
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .end local v1    # "si":Landroid/telephony/SubscriptionInfo;
    .end local v2    # "siIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/telephony/SubscriptionInfo;>;"
    .end local v4    # "simSlotIndex":I
    .end local v6    # "tabName":Ljava/lang/String;
    :cond_2
    move v0, v8

    .line 289
    goto :goto_1

    .restart local v2    # "siIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/telephony/SubscriptionInfo;>;"
    :cond_3
    move-object v1, v9

    .line 301
    goto :goto_2

    .restart local v1    # "si":Landroid/telephony/SubscriptionInfo;
    .restart local v4    # "simSlotIndex":I
    .restart local v6    # "tabName":Ljava/lang/String;
    :cond_4
    move-object v1, v9

    .line 307
    goto :goto_4

    .line 310
    .end local v6    # "tabName":Ljava/lang/String;
    :cond_5
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0800b9

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "tabName":Ljava/lang/String;
    goto :goto_4

    .line 319
    .end local v6    # "tabName":Ljava/lang/String;
    :cond_6
    iget-object v7, p0, Lcom/android/phone/MobileNetworkSettings;->mTabHost:Landroid/widget/TabHost;

    iget-object v8, p0, Lcom/android/phone/MobileNetworkSettings;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    invoke-virtual {v7, v8}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 320
    iget-object v7, p0, Lcom/android/phone/MobileNetworkSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v7, v0}, Landroid/widget/TabHost;->setCurrentTab(I)V

    goto/16 :goto_0

    .line 324
    .end local v1    # "si":Landroid/telephony/SubscriptionInfo;
    .end local v2    # "siIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/telephony/SubscriptionInfo;>;"
    .end local v4    # "simSlotIndex":I
    :pswitch_1
    const-string v7, "initializeSubscriptions: NO_TABS"

    invoke-static {v7}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    .line 326
    iget-object v7, p0, Lcom/android/phone/MobileNetworkSettings;->mTabHost:Landroid/widget/TabHost;

    if-eqz v7, :cond_7

    .line 327
    iget-object v7, p0, Lcom/android/phone/MobileNetworkSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v7}, Landroid/widget/TabHost;->clearAllTabs()V

    .line 328
    iput-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mTabHost:Landroid/widget/TabHost;

    .line 330
    :cond_7
    sget v7, Lcom/android/internal/R$layout;->common_tab_settings:I

    invoke-virtual {p0, v7}, Lcom/android/phone/MobileNetworkSettings;->setContentView(I)V

    goto/16 :goto_0

    .line 334
    :pswitch_2
    const-string v7, "initializeSubscriptions: DO_NOTHING"

    invoke-static {v7}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    .line 335
    iget-object v7, p0, Lcom/android/phone/MobileNetworkSettings;->mTabHost:Landroid/widget/TabHost;

    if-eqz v7, :cond_1

    .line 336
    iget-object v7, p0, Lcom/android/phone/MobileNetworkSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v7}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v0

    goto/16 :goto_0

    .line 286
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private isUpdateTabsNeeded(Ljava/util/List;)Lcom/android/phone/MobileNetworkSettings$TabState;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;)",
            "Lcom/android/phone/MobileNetworkSettings$TabState;"
        }
    .end annotation

    .prologue
    .local p1, "newSil":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    const/4 v6, 0x2

    .line 350
    sget-object v4, Lcom/android/phone/MobileNetworkSettings$TabState;->DO_NOTHING:Lcom/android/phone/MobileNetworkSettings$TabState;

    .line 351
    .local v4, "state":Lcom/android/phone/MobileNetworkSettings$TabState;
    if-nez p1, :cond_1

    .line 352
    iget-object v5, p0, Lcom/android/phone/MobileNetworkSettings;->mActiveSubInfos:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lt v5, v6, :cond_0

    .line 353
    const-string v5, "isUpdateTabsNeeded: NO_TABS, size unknown and was tabbed"

    invoke-static {v5}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    .line 354
    sget-object v4, Lcom/android/phone/MobileNetworkSettings$TabState;->NO_TABS:Lcom/android/phone/MobileNetworkSettings$TabState;

    .line 374
    :cond_0
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isUpdateTabsNeeded:- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " newSil.size()="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    :goto_1
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mActiveSubInfos.size()="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mActiveSubInfos:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    .line 378
    return-object v4

    .line 356
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v5, v6, :cond_2

    iget-object v5, p0, Lcom/android/phone/MobileNetworkSettings;->mActiveSubInfos:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lt v5, v6, :cond_2

    .line 357
    const-string v5, "isUpdateTabsNeeded: NO_TABS, size went to small"

    invoke-static {v5}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    .line 358
    sget-object v4, Lcom/android/phone/MobileNetworkSettings$TabState;->NO_TABS:Lcom/android/phone/MobileNetworkSettings$TabState;

    goto :goto_0

    .line 359
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-lt v5, v6, :cond_3

    iget-object v5, p0, Lcom/android/phone/MobileNetworkSettings;->mActiveSubInfos:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v5, v6, :cond_3

    .line 360
    const-string v5, "isUpdateTabsNeeded: UPDATE, size changed"

    invoke-static {v5}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    .line 361
    sget-object v4, Lcom/android/phone/MobileNetworkSettings$TabState;->UPDATE:Lcom/android/phone/MobileNetworkSettings$TabState;

    goto :goto_0

    .line 362
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-lt v5, v6, :cond_0

    .line 363
    iget-object v5, p0, Lcom/android/phone/MobileNetworkSettings;->mActiveSubInfos:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 364
    .local v3, "siIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/telephony/SubscriptionInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 365
    .local v2, "newSi":Landroid/telephony/SubscriptionInfo;
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    .line 366
    .local v0, "curSi":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 367
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isUpdateTabsNeeded: UPDATE, new name="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    .line 368
    sget-object v4, Lcom/android/phone/MobileNetworkSettings$TabState;->UPDATE:Lcom/android/phone/MobileNetworkSettings$TabState;

    .line 369
    goto/16 :goto_0

    .line 374
    .end local v0    # "curSi":Landroid/telephony/SubscriptionInfo;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "newSi":Landroid/telephony/SubscriptionInfo;
    .end local v3    # "siIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/telephony/SubscriptionInfo;>;"
    :cond_5
    const/4 v5, 0x0

    goto/16 :goto_1
.end method

.method private isWorldMode()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 1162
    const/4 v3, 0x0

    .line 1163
    .local v3, "worldModeOn":Z
    const-string v4, "phone"

    invoke-virtual {p0, v4}, Lcom/android/phone/MobileNetworkSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 1164
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080281

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1166
    .local v1, "configString":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1167
    const-string v4, ";"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1170
    .local v0, "configArray":[Ljava/lang/String;
    if-eqz v0, :cond_2

    array-length v4, v0

    if-ne v4, v6, :cond_0

    const/4 v4, 0x0

    aget-object v4, v0, v4

    const-string v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    array-length v4, v0

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    aget-object v4, v0, v6

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz v2, :cond_2

    aget-object v4, v0, v6

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getGroupIdLevel1()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1174
    :cond_1
    const/4 v3, 0x1

    .line 1179
    .end local v0    # "configArray":[Ljava/lang/String;
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isWorldMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    .line 1182
    return v3
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 1133
    const-string v0, "NetworkSettings"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 1137
    const-string v0, "NetworkSettings"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    return-void
.end method

.method private updateBody()V
    .locals 26

    .prologue
    .line 524
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/MobileNetworkSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    .line 525
    .local v7, "context":Landroid/content/Context;
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/MobileNetworkSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    .line 526
    .local v17, "prefSet":Landroid/preference/PreferenceScreen;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/android/internal/telephony/Phone;->getLteOnCdmaMode()I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_c

    const/4 v10, 0x1

    .line 527
    .local v10, "isLteOnCdma":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v14

    .line 530
    .local v14, "phoneSubId":I
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "updateBody: isLteOnCdma="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " phoneSubId="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    .line 533
    if-eqz v17, :cond_0

    .line 534
    invoke-virtual/range {v17 .. v17}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 535
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/SwitchPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 536
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MobileNetworkSettings;->mButtonEnabledNetworks:Landroid/preference/ListPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MobileNetworkSettings;->mButton4glte:Landroid/preference/SwitchPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 541
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "preferred_network_mode"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    sget v25, Lcom/android/phone/MobileNetworkSettings;->preferredNetworkMode:I

    invoke-static/range {v23 .. v25}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v21

    .line 546
    .local v21, "settingsNetworkMode":I
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Lcom/android/phone/PhoneGlobals;->getCarrierConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v6

    .line 548
    .local v6, "carrierConfig":Landroid/os/PersistableBundle;
    if-eqz v10, :cond_d

    const-string v23, "show_cdma_choices_bool"

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_d

    const/16 v23, 0x1

    :goto_1
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/MobileNetworkSettings;->mIsGlobalCdma:Z

    .line 550
    const-string v23, "hide_carrier_network_settings_bool"

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_e

    .line 551
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 552
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MobileNetworkSettings;->mButtonEnabledNetworks:Landroid/preference/ListPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 553
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MobileNetworkSettings;->mLteDataServicePref:Landroid/preference/Preference;

    move-object/from16 v23, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 656
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/MobileNetworkSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string v24, "setup_prepaid_data_service_url"

    invoke-static/range {v23 .. v24}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    .line 659
    .local v13, "missingDataServiceUrl":Z
    if-eqz v10, :cond_1

    if-eqz v13, :cond_1c

    .line 660
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MobileNetworkSettings;->mLteDataServicePref:Landroid/preference/Preference;

    move-object/from16 v23, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 666
    :goto_3
    invoke-static/range {p0 .. p0}, Lcom/android/ims/ImsManager;->isVolteEnabledByPlatform(Landroid/content/Context;)Z

    move-result v23

    if-eqz v23, :cond_2

    invoke-static/range {p0 .. p0}, Lcom/android/ims/ImsManager;->isVolteProvisionedOnDevice(Landroid/content/Context;)Z

    move-result v23

    if-nez v23, :cond_3

    .line 668
    :cond_2
    const-string v23, "enhanced_4g_lte"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    .line 669
    .local v16, "pref":Landroid/preference/Preference;
    if-eqz v16, :cond_3

    .line 670
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 674
    .end local v16    # "pref":Landroid/preference/Preference;
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/MobileNetworkSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    .line 675
    .local v4, "actionBar":Landroid/app/ActionBar;
    if-eqz v4, :cond_4

    .line 677
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 680
    :cond_4
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v23

    if-eqz v23, :cond_1d

    const/4 v11, 0x1

    .line 682
    .local v11, "isSecondaryUser":Z
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/MobileNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    sget v24, Lcom/android/internal/R$bool;->config_cellBroadcastAppLinks:I

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    .line 684
    .local v9, "isCellBroadcastAppLinkEnabled":Z
    if-nez v11, :cond_5

    if-eqz v9, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MobileNetworkSettings;->mUm:Landroid/os/UserManager;

    move-object/from16 v23, v0

    const-string v24, "no_config_cell_broadcasts"

    invoke-virtual/range {v23 .. v24}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_6

    .line 686
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/MobileNetworkSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    .line 687
    .local v19, "root":Landroid/preference/PreferenceScreen;
    const-string v23, "cell_broadcast_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/phone/MobileNetworkSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    .line 688
    .local v18, "ps":Landroid/preference/Preference;
    if-eqz v18, :cond_6

    .line 689
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 694
    .end local v18    # "ps":Landroid/preference/Preference;
    .end local v19    # "root":Landroid/preference/PreferenceScreen;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/SwitchPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/android/internal/telephony/Phone;->getDataRoamingEnabled()Z

    move-result v24

    invoke-virtual/range {v23 .. v24}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 695
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MobileNetworkSettings;->mButtonEnabledNetworks:Landroid/preference/ListPreference;

    move-object/from16 v23, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 696
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    move-object/from16 v23, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 697
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/phone/MobileNetworkSettings;->UpdatePreferredNetworkModeSummary(I)V

    .line 698
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/phone/MobileNetworkSettings;->UpdateEnabledNetworksValueAndSummary(I)V

    .line 700
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MobileNetworkSettings;->mHandler:Lcom/android/phone/MobileNetworkSettings$MyHandler;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lcom/android/phone/MobileNetworkSettings$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v24

    move-object/from16 v0, v23

    move/from16 v1, v21

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 712
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/MobileNetworkSettings;->hasActiveSubscriptions()Z

    move-result v8

    .line 713
    .local v8, "hasActiveSubscriptions":Z
    const-string v23, "phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/phone/MobileNetworkSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/telephony/TelephonyManager;

    .line 715
    .local v22, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual/range {v22 .. v22}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v23

    if-nez v23, :cond_1e

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/MobileNetworkSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/android/ims/ImsManager;->isNonTtyOrTtyOnVolteEnabled(Landroid/content/Context;)Z

    move-result v23

    if-eqz v23, :cond_1e

    const/4 v5, 0x1

    .line 717
    .local v5, "canChange4glte":Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/SwitchPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 718
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 719
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MobileNetworkSettings;->mButtonEnabledNetworks:Landroid/preference/ListPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 720
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MobileNetworkSettings;->mButton4glte:Landroid/preference/SwitchPreference;

    move-object/from16 v24, v0

    if-eqz v8, :cond_1f

    if-eqz v5, :cond_1f

    const/16 v23, 0x1

    :goto_6
    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 721
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MobileNetworkSettings;->mLteDataServicePref:Landroid/preference/Preference;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 723
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/MobileNetworkSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    .line 724
    .restart local v19    # "root":Landroid/preference/PreferenceScreen;
    const-string v23, "cell_broadcast_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/phone/MobileNetworkSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    .line 725
    .restart local v18    # "ps":Landroid/preference/Preference;
    if-eqz v18, :cond_7

    .line 726
    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 728
    :cond_7
    const-string v23, "button_apn_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/phone/MobileNetworkSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    .line 729
    if-eqz v18, :cond_8

    .line 730
    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 732
    :cond_8
    const-string v23, "button_carrier_sel_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/phone/MobileNetworkSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    .line 733
    if-eqz v18, :cond_9

    .line 734
    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 736
    :cond_9
    const-string v23, "carrier_settings_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/phone/MobileNetworkSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    .line 737
    if-eqz v18, :cond_a

    .line 738
    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 740
    :cond_a
    const-string v23, "cdma_system_select_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/phone/MobileNetworkSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    .line 741
    if-eqz v18, :cond_b

    .line 742
    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 744
    :cond_b
    return-void

    .line 526
    .end local v4    # "actionBar":Landroid/app/ActionBar;
    .end local v5    # "canChange4glte":Z
    .end local v6    # "carrierConfig":Landroid/os/PersistableBundle;
    .end local v8    # "hasActiveSubscriptions":Z
    .end local v9    # "isCellBroadcastAppLinkEnabled":Z
    .end local v10    # "isLteOnCdma":Z
    .end local v11    # "isSecondaryUser":Z
    .end local v13    # "missingDataServiceUrl":Z
    .end local v14    # "phoneSubId":I
    .end local v18    # "ps":Landroid/preference/Preference;
    .end local v19    # "root":Landroid/preference/PreferenceScreen;
    .end local v21    # "settingsNetworkMode":I
    .end local v22    # "tm":Landroid/telephony/TelephonyManager;
    :cond_c
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 548
    .restart local v6    # "carrierConfig":Landroid/os/PersistableBundle;
    .restart local v10    # "isLteOnCdma":Z
    .restart local v14    # "phoneSubId":I
    .restart local v21    # "settingsNetworkMode":I
    :cond_d
    const/16 v23, 0x0

    goto/16 :goto_1

    .line 554
    :cond_e
    const-string v23, "world_phone_bool"

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_f

    .line 555
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MobileNetworkSettings;->mButtonEnabledNetworks:Landroid/preference/ListPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 558
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 560
    new-instance v23, Lcom/android/phone/CdmaOptions;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/android/phone/CdmaOptions;-><init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;Lcom/android/internal/telephony/Phone;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/MobileNetworkSettings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    .line 561
    new-instance v23, Lcom/android/phone/GsmUmtsOptions;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2, v14}, Lcom/android/phone/GsmUmtsOptions;-><init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;I)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    goto/16 :goto_2

    .line 563
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 564
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v15

    .line 565
    .local v15, "phoneType":I
    const/16 v23, 0x2

    move/from16 v0, v23

    if-ne v15, v0, :cond_14

    .line 566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "lte_service_forced"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    invoke-static/range {v23 .. v25}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    .line 571
    .local v12, "lteForced":I
    if-eqz v10, :cond_10

    .line 572
    if-nez v12, :cond_13

    .line 573
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MobileNetworkSettings;->mButtonEnabledNetworks:Landroid/preference/ListPreference;

    move-object/from16 v23, v0

    const v24, 0x7f070017

    invoke-virtual/range {v23 .. v24}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 575
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MobileNetworkSettings;->mButtonEnabledNetworks:Landroid/preference/ListPreference;

    move-object/from16 v23, v0

    const v24, 0x7f070018

    invoke-virtual/range {v23 .. v24}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 605
    :cond_10
    :goto_7
    new-instance v23, Lcom/android/phone/CdmaOptions;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/android/phone/CdmaOptions;-><init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;Lcom/android/internal/telephony/Phone;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/MobileNetworkSettings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    .line 608
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/MobileNetworkSettings;->isWorldMode()Z

    move-result v23

    if-eqz v23, :cond_11

    .line 609
    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    .line 646
    .end local v12    # "lteForced":I
    :cond_11
    :goto_8
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/MobileNetworkSettings;->isWorldMode()Z

    move-result v23

    if-eqz v23, :cond_12

    .line 647
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MobileNetworkSettings;->mButtonEnabledNetworks:Landroid/preference/ListPreference;

    move-object/from16 v23, v0

    const v24, 0x7f070005

    invoke-virtual/range {v23 .. v24}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 649
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MobileNetworkSettings;->mButtonEnabledNetworks:Landroid/preference/ListPreference;

    move-object/from16 v23, v0

    const v24, 0x7f070006

    invoke-virtual/range {v23 .. v24}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 652
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MobileNetworkSettings;->mButtonEnabledNetworks:Landroid/preference/ListPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 653
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "settingsNetworkMode: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 578
    .restart local v12    # "lteForced":I
    :cond_13
    packed-switch v21, :pswitch_data_0

    .line 597
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MobileNetworkSettings;->mButtonEnabledNetworks:Landroid/preference/ListPreference;

    move-object/from16 v23, v0

    const v24, 0x7f070017

    invoke-virtual/range {v23 .. v24}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 599
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MobileNetworkSettings;->mButtonEnabledNetworks:Landroid/preference/ListPreference;

    move-object/from16 v23, v0

    const v24, 0x7f070018

    invoke-virtual/range {v23 .. v24}, Landroid/preference/ListPreference;->setEntryValues(I)V

    goto/16 :goto_7

    .line 582
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MobileNetworkSettings;->mButtonEnabledNetworks:Landroid/preference/ListPreference;

    move-object/from16 v23, v0

    const v24, 0x7f070019

    invoke-virtual/range {v23 .. v24}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 584
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MobileNetworkSettings;->mButtonEnabledNetworks:Landroid/preference/ListPreference;

    move-object/from16 v23, v0

    const v24, 0x7f07001a

    invoke-virtual/range {v23 .. v24}, Landroid/preference/ListPreference;->setEntryValues(I)V

    goto/16 :goto_7

    .line 591
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MobileNetworkSettings;->mButtonEnabledNetworks:Landroid/preference/ListPreference;

    move-object/from16 v23, v0

    const v24, 0x7f07001b

    invoke-virtual/range {v23 .. v24}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 593
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MobileNetworkSettings;->mButtonEnabledNetworks:Landroid/preference/ListPreference;

    move-object/from16 v23, v0

    const v24, 0x7f07001c

    invoke-virtual/range {v23 .. v24}, Landroid/preference/ListPreference;->setEntryValues(I)V

    goto/16 :goto_7

    .line 611
    .end local v12    # "lteForced":I
    :cond_14
    const/16 v23, 0x1

    move/from16 v0, v23

    if-ne v15, v0, :cond_1b

    .line 612
    const-string v23, "prefer_2g_bool"

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_15

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/MobileNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0d0011

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v23

    if-nez v23, :cond_15

    .line 614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MobileNetworkSettings;->mButtonEnabledNetworks:Landroid/preference/ListPreference;

    move-object/from16 v23, v0

    const v24, 0x7f070012

    invoke-virtual/range {v23 .. v24}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 616
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MobileNetworkSettings;->mButtonEnabledNetworks:Landroid/preference/ListPreference;

    move-object/from16 v23, v0

    const v24, 0x7f070013

    invoke-virtual/range {v23 .. v24}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 642
    :goto_9
    new-instance v23, Lcom/android/phone/GsmUmtsOptions;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2, v14}, Lcom/android/phone/GsmUmtsOptions;-><init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;I)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    goto/16 :goto_8

    .line 618
    :cond_15
    const-string v23, "prefer_2g_bool"

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_17

    .line 619
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/MobileNetworkSettings;->mShow4GForLTE:Z

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_16

    const v20, 0x7f07000e

    .line 622
    .local v20, "select":I
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MobileNetworkSettings;->mButtonEnabledNetworks:Landroid/preference/ListPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 623
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MobileNetworkSettings;->mButtonEnabledNetworks:Landroid/preference/ListPreference;

    move-object/from16 v23, v0

    const v24, 0x7f07000f

    invoke-virtual/range {v23 .. v24}, Landroid/preference/ListPreference;->setEntryValues(I)V

    goto :goto_9

    .line 619
    .end local v20    # "select":I
    :cond_16
    const v20, 0x7f07000d

    goto :goto_a

    .line 625
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/MobileNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0d0011

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v23

    if-nez v23, :cond_18

    .line 626
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MobileNetworkSettings;->mButtonEnabledNetworks:Landroid/preference/ListPreference;

    move-object/from16 v23, v0

    const v24, 0x7f070010

    invoke-virtual/range {v23 .. v24}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 628
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MobileNetworkSettings;->mButtonEnabledNetworks:Landroid/preference/ListPreference;

    move-object/from16 v23, v0

    const v24, 0x7f070011

    invoke-virtual/range {v23 .. v24}, Landroid/preference/ListPreference;->setEntryValues(I)V

    goto :goto_9

    .line 630
    :cond_18
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/MobileNetworkSettings;->mIsGlobalCdma:Z

    move/from16 v23, v0

    if-eqz v23, :cond_19

    .line 631
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MobileNetworkSettings;->mButtonEnabledNetworks:Landroid/preference/ListPreference;

    move-object/from16 v23, v0

    const v24, 0x7f070017

    invoke-virtual/range {v23 .. v24}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 633
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MobileNetworkSettings;->mButtonEnabledNetworks:Landroid/preference/ListPreference;

    move-object/from16 v23, v0

    const v24, 0x7f070018

    invoke-virtual/range {v23 .. v24}, Landroid/preference/ListPreference;->setEntryValues(I)V

    goto/16 :goto_9

    .line 636
    :cond_19
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/MobileNetworkSettings;->mShow4GForLTE:Z

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1a

    const v20, 0x7f070015

    .line 638
    .restart local v20    # "select":I
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MobileNetworkSettings;->mButtonEnabledNetworks:Landroid/preference/ListPreference;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 639
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/MobileNetworkSettings;->mButtonEnabledNetworks:Landroid/preference/ListPreference;

    move-object/from16 v23, v0

    const v24, 0x7f070016

    invoke-virtual/range {v23 .. v24}, Landroid/preference/ListPreference;->setEntryValues(I)V

    goto/16 :goto_9

    .line 636
    .end local v20    # "select":I
    :cond_1a
    const v20, 0x7f070014

    goto :goto_b

    .line 644
    :cond_1b
    new-instance v23, Ljava/lang/IllegalStateException;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Unexpected phone type: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 662
    .end local v15    # "phoneType":I
    .restart local v13    # "missingDataServiceUrl":Z
    :cond_1c
    const-string v23, "NetworkSettings"

    const-string v24, "keep ltePref"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 680
    .restart local v4    # "actionBar":Landroid/app/ActionBar;
    :cond_1d
    const/4 v11, 0x0

    goto/16 :goto_4

    .line 715
    .restart local v8    # "hasActiveSubscriptions":Z
    .restart local v9    # "isCellBroadcastAppLinkEnabled":Z
    .restart local v11    # "isSecondaryUser":Z
    .restart local v22    # "tm":Landroid/telephony/TelephonyManager;
    :cond_1e
    const/4 v5, 0x0

    goto/16 :goto_5

    .line 720
    .restart local v5    # "canChange4glte":Z
    :cond_1f
    const/16 v23, 0x0

    goto/16 :goto_6

    .line 578
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private updatePhone(I)V
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    .line 392
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v1, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    .line 394
    .local v0, "sir":Landroid/telephony/SubscriptionInfo;
    if-eqz v0, :cond_0

    .line 395
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 398
    :cond_0
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    if-nez v1, :cond_1

    .line 400
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 402
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatePhone:- slotId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sir="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    .line 403
    return-void
.end method

.method private updatePreferredNetworkUIFromDb()V
    .locals 5

    .prologue
    .line 925
    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    .line 927
    .local v0, "phoneSubId":I
    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "preferred_network_mode"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/android/phone/MobileNetworkSettings;->preferredNetworkMode:I

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 933
    .local v1, "settingsNetworkMode":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatePreferredNetworkUIFromDb: settingsNetworkMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    .line 937
    invoke-direct {p0, v1}, Lcom/android/phone/MobileNetworkSettings;->UpdatePreferredNetworkModeSummary(I)V

    .line 938
    invoke-direct {p0, v1}, Lcom/android/phone/MobileNetworkSettings;->UpdateEnabledNetworksValueAndSummary(I)V

    .line 940
    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 941
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1115
    packed-switch p1, :pswitch_data_0

    .line 1130
    :cond_0
    :goto_0
    return-void

    .line 1117
    :pswitch_0
    const-string v1, "exit_ecm_result"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1119
    .local v0, "isChoiceYes":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1121
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mClickedPreference:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Lcom/android/phone/CdmaOptions;->showDialog(Landroid/preference/Preference;)V

    goto :goto_0

    .line 1115
    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v1, 0x1

    .line 170
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    .line 172
    iput-boolean v1, p0, Lcom/android/phone/MobileNetworkSettings;->mOkClicked:Z

    .line 177
    :goto_0
    return-void

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x0

    .line 419
    const-string v6, "onCreate:+"

    invoke-static {v6}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    .line 420
    const v6, 0x7f0c002f

    invoke-virtual {p0, v6}, Lcom/android/phone/MobileNetworkSettings;->setTheme(I)V

    .line 421
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 423
    new-instance v6, Lcom/android/phone/MobileNetworkSettings$MyHandler;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/android/phone/MobileNetworkSettings$MyHandler;-><init>(Lcom/android/phone/MobileNetworkSettings;Lcom/android/phone/MobileNetworkSettings$1;)V

    iput-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mHandler:Lcom/android/phone/MobileNetworkSettings$MyHandler;

    .line 424
    const-string v6, "user"

    invoke-virtual {p0, v6}, Lcom/android/phone/MobileNetworkSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/UserManager;

    iput-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mUm:Landroid/os/UserManager;

    .line 425
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 427
    iget-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mUm:Landroid/os/UserManager;

    const-string v7, "no_config_mobile_networks"

    invoke-virtual {v6, v7}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 428
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/phone/MobileNetworkSettings;->mUnavailable:Z

    .line 429
    const v6, 0x7f04002b

    invoke-virtual {p0, v6}, Lcom/android/phone/MobileNetworkSettings;->setContentView(I)V

    .line 470
    :goto_0
    return-void

    .line 433
    :cond_0
    const v6, 0x7f060027

    invoke-virtual {p0, v6}, Lcom/android/phone/MobileNetworkSettings;->addPreferencesFromResource(I)V

    .line 435
    const-string v6, "enhanced_4g_lte"

    invoke-virtual {p0, v6}, Lcom/android/phone/MobileNetworkSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/SwitchPreference;

    iput-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mButton4glte:Landroid/preference/SwitchPreference;

    .line 436
    iget-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mButton4glte:Landroid/preference/SwitchPreference;

    invoke-virtual {v6, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 439
    :try_start_0
    const-string v6, "com.android.systemui"

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Lcom/android/phone/MobileNetworkSettings;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 440
    .local v0, "con":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "config_show4GForLTE"

    const-string v8, "bool"

    const-string v9, "com.android.systemui"

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 442
    .local v2, "id":I
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/phone/MobileNetworkSettings;->mShow4GForLTE:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 449
    .end local v0    # "con":Landroid/content/Context;
    .end local v2    # "id":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    .line 451
    .local v5, "prefSet":Landroid/preference/PreferenceScreen;
    const-string v6, "button_roaming_key"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/SwitchPreference;

    iput-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/SwitchPreference;

    .line 452
    const-string v6, "preferred_network_mode_key"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/ListPreference;

    iput-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    .line 454
    const-string v6, "enabled_networks_key"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/ListPreference;

    iput-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonEnabledNetworks:Landroid/preference/ListPreference;

    .line 456
    iget-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/SwitchPreference;

    invoke-virtual {v6, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 458
    const-string v6, "cdma_lte_data_service_key"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mLteDataServicePref:Landroid/preference/Preference;

    .line 461
    iget-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v6}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoCountMax()I

    move-result v4

    .line 462
    .local v4, "max":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mActiveSubInfos:Ljava/util/List;

    .line 464
    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->initializeSubscriptions()V

    .line 466
    new-instance v3, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-direct {v3, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 468
    .local v3, "intentFilter":Landroid/content/IntentFilter;
    iget-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mPhoneChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v6, v3}, Lcom/android/phone/MobileNetworkSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 469
    const-string v6, "onCreate:-"

    invoke-static {v6}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 443
    .end local v3    # "intentFilter":Landroid/content/IntentFilter;
    .end local v4    # "max":I
    .end local v5    # "prefSet":Landroid/preference/PreferenceScreen;
    :catch_0
    move-exception v1

    .line 444
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "NameNotFoundException for show4GFotLTE"

    invoke-static {v6}, Lcom/android/phone/MobileNetworkSettings;->loge(Ljava/lang/String;)V

    .line 445
    iput-boolean v10, p0, Lcom/android/phone/MobileNetworkSettings;->mShow4GForLTE:Z

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 474
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 475
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mPhoneChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/phone/MobileNetworkSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 476
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/SwitchPreference;

    iget-boolean v1, p0, Lcom/android/phone/MobileNetworkSettings;->mOkClicked:Z

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 183
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1142
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 1143
    .local v0, "itemId":I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 1155
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->finish()V

    .line 1156
    const/4 v1, 0x1

    .line 1158
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 748
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 749
    const-string v1, "onPause:+"

    invoke-static {v1}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    .line 751
    invoke-static {p0}, Lcom/android/ims/ImsManager;->isVolteEnabledByPlatform(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/android/ims/ImsManager;->isVolteProvisionedOnDevice(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 753
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/android/phone/MobileNetworkSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 754
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 757
    .end local v0    # "tm":Landroid/telephony/TelephonyManager;
    :cond_0
    iget-object v1, p0, Lcom/android/phone/MobileNetworkSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v1, v2}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 759
    const-string v1, "onPause:-"

    invoke-static {v1}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    .line 760
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 10
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 771
    iget-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v4

    .line 772
    .local v4, "phoneSubId":I
    iget-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    if-ne p1, v6, :cond_1

    .line 775
    iget-object v8, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    move-object v6, p2

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v8, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 777
    check-cast p2, Ljava/lang/String;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 778
    .local v0, "buttonNetworkMode":I
    iget-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "preferred_network_mode"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget v9, Lcom/android/phone/MobileNetworkSettings;->preferredNetworkMode:I

    invoke-static {v6, v8, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 782
    .local v5, "settingsNetworkMode":I
    if-eq v0, v5, :cond_0

    .line 785
    packed-switch v0, :pswitch_data_0

    .line 803
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid Network Mode ("

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ") chosen. Ignore."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/MobileNetworkSettings;->loge(Ljava/lang/String;)V

    .line 879
    .end local v0    # "buttonNetworkMode":I
    .end local v5    # "settingsNetworkMode":I
    :goto_0
    return v7

    .line 800
    .restart local v0    # "buttonNetworkMode":I
    .restart local v5    # "settingsNetworkMode":I
    :pswitch_0
    move v3, v0

    .line 807
    .local v3, "modemNetworkMode":I
    iget-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "preferred_network_mode"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 811
    iget-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v8, p0, Lcom/android/phone/MobileNetworkSettings;->mHandler:Lcom/android/phone/MobileNetworkSettings$MyHandler;

    invoke-virtual {v8, v1}, Lcom/android/phone/MobileNetworkSettings$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-interface {v6, v3, v8}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 877
    .end local v0    # "buttonNetworkMode":I
    .end local v3    # "modemNetworkMode":I
    .end local v5    # "settingsNetworkMode":I
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->updateBody()V

    goto :goto_0

    .line 814
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_1
    iget-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonEnabledNetworks:Landroid/preference/ListPreference;

    if-ne p1, v6, :cond_2

    .line 815
    iget-object v8, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonEnabledNetworks:Landroid/preference/ListPreference;

    move-object v6, p2

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v8, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 817
    check-cast p2, Ljava/lang/String;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 818
    .restart local v0    # "buttonNetworkMode":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "buttonNetworkMode: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    .line 819
    iget-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "preferred_network_mode"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget v9, Lcom/android/phone/MobileNetworkSettings;->preferredNetworkMode:I

    invoke-static {v6, v8, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 823
    .restart local v5    # "settingsNetworkMode":I
    if-eq v0, v5, :cond_0

    .line 826
    packed-switch v0, :pswitch_data_1

    .line 838
    :pswitch_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid Network Mode ("

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ") chosen. Ignore."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/MobileNetworkSettings;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 835
    :pswitch_2
    move v3, v0

    .line 842
    .restart local v3    # "modemNetworkMode":I
    invoke-direct {p0, v0}, Lcom/android/phone/MobileNetworkSettings;->UpdateEnabledNetworksValueAndSummary(I)V

    .line 844
    iget-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "preferred_network_mode"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 848
    iget-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v8, p0, Lcom/android/phone/MobileNetworkSettings;->mHandler:Lcom/android/phone/MobileNetworkSettings$MyHandler;

    invoke-virtual {v8, v1}, Lcom/android/phone/MobileNetworkSettings$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-interface {v6, v3, v8}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto/16 :goto_1

    .line 851
    .end local v0    # "buttonNetworkMode":I
    .end local v3    # "modemNetworkMode":I
    .end local v5    # "settingsNetworkMode":I
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_2
    iget-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mButton4glte:Landroid/preference/SwitchPreference;

    if-ne p1, v6, :cond_4

    move-object v2, p1

    .line 852
    check-cast v2, Landroid/preference/SwitchPreference;

    .line 853
    .local v2, "enhanced4gModePref":Landroid/preference/SwitchPreference;
    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v6

    if-nez v6, :cond_3

    move v1, v7

    .line 854
    .local v1, "enhanced4gMode":Z
    :cond_3
    invoke-virtual {v2, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 855
    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v6

    invoke-static {p0, v6}, Lcom/android/ims/ImsManager;->setEnhanced4gLteModeSetting(Landroid/content/Context;Z)V

    goto/16 :goto_1

    .line 856
    .end local v1    # "enhanced4gMode":Z
    .end local v2    # "enhanced4gModePref":Landroid/preference/SwitchPreference;
    :cond_4
    iget-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/SwitchPreference;

    if-ne p1, v6, :cond_0

    .line 857
    const-string v6, "onPreferenceTreeClick: preference == mButtonDataRoam."

    invoke-static {v6}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    .line 860
    iget-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/SwitchPreference;

    invoke-virtual {v6}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v6

    if-nez v6, :cond_5

    .line 862
    iput-boolean v1, p0, Lcom/android/phone/MobileNetworkSettings;->mOkClicked:Z

    .line 863
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f080158

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v8, 0x7f080159

    invoke-virtual {v6, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v8, 0x1010355

    invoke-virtual {v6, v8}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v8, 0x1040013

    invoke-virtual {v6, v8, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v8, 0x1040009

    invoke-virtual {v6, v8, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_0

    .line 872
    :cond_5
    iget-object v6, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6, v1}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    goto/16 :goto_0

    .line 785
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 826
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 11
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 193
    iget-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    .line 194
    .local v2, "phoneSubId":I
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v9

    const-string v10, "enhanced_4g_lte"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 254
    :cond_0
    :goto_0
    return v7

    .line 196
    :cond_1
    iget-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mGsmUmtsOptions:Lcom/android/phone/GsmUmtsOptions;

    invoke-virtual {v9, p2}, Lcom/android/phone/GsmUmtsOptions;->preferenceTreeClick(Landroid/preference/Preference;)Z

    move-result v9

    if-eq v9, v7, :cond_0

    .line 199
    :cond_2
    iget-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mCdmaOptions:Lcom/android/phone/CdmaOptions;

    invoke-virtual {v9, p2}, Lcom/android/phone/CdmaOptions;->preferenceTreeClick(Landroid/preference/Preference;)Z

    move-result v9

    if-ne v9, v7, :cond_3

    .line 201
    const-string v8, "ril.cdma.inecmmode"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 204
    iput-object p2, p0, Lcom/android/phone/MobileNetworkSettings;->mClickedPreference:Landroid/preference/Preference;

    .line 207
    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    invoke-direct {v8, v9, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/16 v9, 0x11

    invoke-virtual {p0, v8, v9}, Lcom/android/phone/MobileNetworkSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 212
    :cond_3
    iget-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    if-ne p2, v9, :cond_4

    .line 214
    iget-object v8, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "preferred_network_mode"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Lcom/android/phone/MobileNetworkSettings;->preferredNetworkMode:I

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 218
    .local v3, "settingsNetworkMode":I
    iget-object v8, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 220
    .end local v3    # "settingsNetworkMode":I
    :cond_4
    iget-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mLteDataServicePref:Landroid/preference/Preference;

    if-ne p2, v9, :cond_8

    .line 221
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "setup_prepaid_data_service_url"

    invoke-static {v9, v10}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 223
    .local v5, "tmpl":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 224
    const-string v9, "phone"

    invoke-virtual {p0, v9}, Lcom/android/phone/MobileNetworkSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 226
    .local v4, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, "imsi":Ljava/lang/String;
    if-nez v0, :cond_5

    .line 228
    const-string v0, ""

    .line 230
    :cond_5
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 232
    .local v6, "url":Ljava/lang/String;
    :goto_1
    new-instance v1, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v1, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 233
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/android/phone/MobileNetworkSettings;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 230
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v6    # "url":Ljava/lang/String;
    :cond_6
    new-array v9, v7, [Ljava/lang/CharSequence;

    aput-object v0, v9, v8

    invoke-static {v5, v9}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 235
    .end local v0    # "imsi":Ljava/lang/String;
    .end local v4    # "tm":Landroid/telephony/TelephonyManager;
    :cond_7
    const-string v8, "NetworkSettings"

    const-string v9, "Missing SETUP_PREPAID_DATA_SERVICE_URL"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 238
    .end local v5    # "tmpl":Ljava/lang/String;
    :cond_8
    iget-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonEnabledNetworks:Landroid/preference/ListPreference;

    if-ne p2, v9, :cond_9

    .line 239
    iget-object v8, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "preferred_network_mode"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Lcom/android/phone/MobileNetworkSettings;->preferredNetworkMode:I

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 243
    .restart local v3    # "settingsNetworkMode":I
    iget-object v8, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonEnabledNetworks:Landroid/preference/ListPreference;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 245
    .end local v3    # "settingsNetworkMode":I
    :cond_9
    iget-object v9, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/SwitchPreference;

    if-eq p2, v9, :cond_0

    .line 252
    invoke-virtual {p1, v8}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    move v7, v8

    .line 254
    goto/16 :goto_0
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 480
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 481
    const-string v2, "onResume:+"

    invoke-static {v2}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    .line 483
    iget-boolean v2, p0, Lcom/android/phone/MobileNetworkSettings;->mUnavailable:Z

    if-eqz v2, :cond_0

    .line 484
    const-string v2, "onResume:- ignore mUnavailable == false"

    invoke-static {v2}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    .line 517
    :goto_0
    return-void

    .line 490
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 495
    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/SwitchPreference;

    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getDataRoamingEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 497
    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string v3, "preferred_network_mode_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/MobileNetworkSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string v3, "enabled_networks_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 499
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/MobileNetworkSettings;->updatePreferredNetworkUIFromDb()V

    .line 502
    :cond_2
    invoke-static {p0}, Lcom/android/ims/ImsManager;->isVolteEnabledByPlatform(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {p0}, Lcom/android/ims/ImsManager;->isVolteProvisionedOnDevice(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 504
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/android/phone/MobileNetworkSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 505
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x20

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 509
    .end local v1    # "tm":Landroid/telephony/TelephonyManager;
    :cond_3
    invoke-static {p0}, Lcom/android/ims/ImsManager;->isEnhanced4gLteModeSettingEnabledByUser(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {p0}, Lcom/android/ims/ImsManager;->isNonTtyOrTtyOnVolteEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 511
    .local v0, "enh4glteMode":Z
    :goto_1
    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mButton4glte:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 513
    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings;->mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v2, v3}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 515
    const-string v2, "onResume:-"

    invoke-static {v2}, Lcom/android/phone/MobileNetworkSettings;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 509
    .end local v0    # "enh4glteMode":Z
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method
