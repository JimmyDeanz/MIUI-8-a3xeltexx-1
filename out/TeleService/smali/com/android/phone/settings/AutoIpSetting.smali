.class public Lcom/android/phone/settings/AutoIpSetting;
.super Lmiui/preference/PreferenceActivity;
.source "AutoIpSetting.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private mAddZeroPrefix:Landroid/preference/CheckBoxPreference;

.field private mAutoIpEnable:Landroid/preference/CheckBoxPreference;

.field private mAutoIpExceptions:Landroid/preference/Preference;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mSubscription:I

.field private mSupportLocalNumbers:Landroid/preference/CheckBoxPreference;

.field private mTextCurrentAreaCode:Landroid/preference/EditTextPreference;

.field private mTextIpPrefix:Landroid/preference/EditTextPreference;

.field private mTextIpPrefixMSim:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lmiui/preference/PreferenceActivity;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/settings/AutoIpSetting;->mSubscription:I

    .line 134
    new-instance v0, Lcom/android/phone/settings/AutoIpSetting$2;

    invoke-direct {v0, p0}, Lcom/android/phone/settings/AutoIpSetting$2;-><init>(Lcom/android/phone/settings/AutoIpSetting;)V

    iput-object v0, p0, Lcom/android/phone/settings/AutoIpSetting;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/settings/AutoIpSetting;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/AutoIpSetting;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/phone/settings/AutoIpSetting;->mAutoIpEnable:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/settings/AutoIpSetting;)Landroid/preference/EditTextPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/AutoIpSetting;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/phone/settings/AutoIpSetting;->mTextCurrentAreaCode:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/settings/AutoIpSetting;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/AutoIpSetting;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/phone/settings/AutoIpSetting;->updateTextIpPrefix()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/settings/AutoIpSetting;Landroid/preference/Preference;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/AutoIpSetting;
    .param p1, "x1"    # Landroid/preference/Preference;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/phone/settings/AutoIpSetting;->simulatePreferenceClick(Landroid/preference/Preference;)V

    return-void
.end method

.method public static addIpPrefix(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .param p2, "slotId"    # I

    .prologue
    .line 298
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v3

    invoke-virtual {v3, p2}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result v3

    int-to-long v4, v3

    .line 299
    .local v4, "simId":J
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {p0, p2}, Lmiui/telephony/PhoneNumberUtils;->getDefaultIpBySim(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6, v4, v5}, Landroid/provider/MiuiSettings$Telephony;->getAutoIpPrefix(Landroid/content/ContentResolver;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    .line 301
    .local v0, "ipPrefix":Ljava/lang/String;
    move-object v1, p1

    .line 302
    .local v1, "number":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 303
    invoke-static {p1}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/CharSequence;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v2

    .line 305
    .local v2, "pn":Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 306
    const-string v3, "+86"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 307
    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 313
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 314
    invoke-virtual {v2}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->recycle()V

    .line 317
    .end local v2    # "pn":Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    :cond_0
    return-object v1

    .line 308
    .restart local v2    # "pn":Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    :cond_1
    const-string v3, "0086"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 309
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 311
    :cond_2
    const-string v3, "+"

    const-string v6, "00"

    invoke-virtual {v1, v3, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private alertToInputCurrentAreaCode()V
    .locals 3

    .prologue
    .line 213
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f08031c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f08031d

    new-instance v2, Lcom/android/phone/settings/AutoIpSetting$3;

    invoke-direct {v2, p0}, Lcom/android/phone/settings/AutoIpSetting$3;-><init>(Lcom/android/phone/settings/AutoIpSetting;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 222
    return-void
.end method

.method private closeAreaCodeDialog()V
    .locals 2

    .prologue
    .line 238
    iget-object v1, p0, Lcom/android/phone/settings/AutoIpSetting;->mTextCurrentAreaCode:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 239
    .local v0, "dialog":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 240
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 242
    :cond_0
    return-void
.end method

.method public static formatNumberWithIp(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "slotId"    # I

    .prologue
    .line 334
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-static {v11}, Landroid/provider/MiuiSettings$Telephony;->getCurrentAeraCode(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    .line 335
    .local v4, "currentAreaCode":Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v14, 0x2

    if-ge v11, v14, :cond_1

    :cond_0
    move-object/from16 v9, p1

    .line 393
    .end local p1    # "number":Ljava/lang/String;
    .local v9, "number":Ljava/lang/String;
    :goto_0
    return-object v9

    .line 341
    .end local v9    # "number":Ljava/lang/String;
    .restart local p1    # "number":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v11

    move/from16 v0, p2

    invoke-virtual {v11, v0}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result v11

    int-to-long v12, v11

    .line 342
    .local v12, "simId":J
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v1}, Lmiui/telephony/PhoneNumberUtils;->getDefaultIpBySim(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14, v12, v13}, Landroid/provider/MiuiSettings$Telephony;->getAutoIpPrefix(Landroid/content/ContentResolver;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v6

    .line 344
    .local v6, "ipPrefix":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_2

    move-object/from16 v9, p1

    .line 345
    .end local p1    # "number":Ljava/lang/String;
    .restart local v9    # "number":Ljava/lang/String;
    goto :goto_0

    .line 347
    .end local v9    # "number":Ljava/lang/String;
    .restart local p1    # "number":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    move-object/from16 v9, p1

    .line 349
    .end local p1    # "number":Ljava/lang/String;
    .restart local v9    # "number":Ljava/lang/String;
    goto :goto_0

    .line 352
    .end local v9    # "number":Ljava/lang/String;
    .restart local p1    # "number":Ljava/lang/String;
    :cond_3
    invoke-static/range {p1 .. p1}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/CharSequence;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v10

    .line 353
    .local v10, "pn":Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    invoke-virtual {v10}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getPrefix()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_7

    invoke-virtual {v10}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getPrefix()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_7

    .line 354
    invoke-virtual {v10}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getCountryCode()Ljava/lang/String;

    move-result-object v3

    .line 355
    .local v3, "countryCode":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getLocationAreaCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 356
    .local v2, "areaCode":Ljava/lang/String;
    const-string v11, "0"

    invoke-virtual {v4, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8

    const/4 v11, 0x1

    invoke-virtual {v4, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 359
    .local v5, "id":Ljava/lang/String;
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-static {v11}, Landroid/provider/MiuiSettings$Telephony;->isAutoAddZeroPrefix(Landroid/content/ContentResolver;)Z

    move-result v7

    .line 361
    .local v7, "isAddZeroPrefixEnabled":Z
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-static {v11}, Landroid/provider/MiuiSettings$Telephony;->isAutoIpSupportLocalNum(Landroid/content/ContentResolver;)Z

    move-result v8

    .line 365
    .local v8, "isSupportLocalNumbers":Z
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    if-nez v8, :cond_5

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    :cond_4
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_7

    const-string v11, "86"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    .line 367
    :cond_5
    const-string v11, "+86"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 369
    invoke-virtual {v10}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getAreaCode()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-gtz v11, :cond_6

    invoke-virtual {v10}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->isNormalMobileNumber()Z

    move-result v11

    if-eqz v11, :cond_9

    if-eqz v7, :cond_9

    .line 370
    :cond_6
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v14, "0"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v14, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 391
    .end local v2    # "areaCode":Ljava/lang/String;
    .end local v3    # "countryCode":Ljava/lang/String;
    .end local v5    # "id":Ljava/lang/String;
    .end local v7    # "isAddZeroPrefixEnabled":Z
    .end local v8    # "isSupportLocalNumbers":Z
    :cond_7
    :goto_2
    invoke-virtual {v10}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->recycle()V

    move-object/from16 v9, p1

    .line 393
    .end local p1    # "number":Ljava/lang/String;
    .restart local v9    # "number":Ljava/lang/String;
    goto/16 :goto_0

    .end local v9    # "number":Ljava/lang/String;
    .restart local v2    # "areaCode":Ljava/lang/String;
    .restart local v3    # "countryCode":Ljava/lang/String;
    .restart local p1    # "number":Ljava/lang/String;
    :cond_8
    move-object v5, v4

    .line 356
    goto :goto_1

    .line 372
    .restart local v5    # "id":Ljava/lang/String;
    .restart local v7    # "isAddZeroPrefixEnabled":Z
    .restart local v8    # "isSupportLocalNumbers":Z
    :cond_9
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v14, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 374
    :cond_a
    const-string v11, "0086"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 376
    invoke-virtual {v10}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getAreaCode()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-gtz v11, :cond_b

    invoke-virtual {v10}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->isNormalMobileNumber()Z

    move-result v11

    if-eqz v11, :cond_c

    if-eqz v7, :cond_c

    .line 377
    :cond_b
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v14, "0"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v14, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 379
    :cond_c
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v14, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 382
    :cond_d
    invoke-virtual {v10}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->isNormalMobileNumber()Z

    move-result v11

    if-eqz v11, :cond_e

    if-eqz v7, :cond_e

    .line 383
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v14, "0"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_2

    .line 386
    :cond_e
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v14, "+"

    const-string v15, "00"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_2
.end method

.method public static handleIpCall(Landroid/net/Uri;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/os/Bundle;)Landroid/net/Uri;
    .locals 5
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 275
    const-string v3, "tel"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 294
    :cond_0
    :goto_0
    return-object p0

    .line 278
    :cond_1
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    .line 279
    .local v2, "slotId":I
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lmiui/telephony/TelephonyManager;->getSimOperatorForSlot(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmiui/telephony/PhoneNumberUtils;->isChineseOperator(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 281
    move-object v1, p2

    .line 282
    .local v1, "dialNumber":Ljava/lang/String;
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 283
    .local v0, "context":Landroid/content/Context;
    const-string v3, "com.android.phone.IS_IPCALL"

    const/4 v4, 0x0

    invoke-virtual {p3, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 284
    invoke-static {v0, v1, v2}, Lcom/android/phone/settings/AutoIpSetting;->addIpPrefix(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 286
    :cond_2
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3}, Landroid/provider/MiuiSettings$Telephony;->isAutoIpEnable(Landroid/content/ContentResolver;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v0, v1}, Lcom/android/phone/settings/AutoIpExceptionSetting;->contains(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 288
    invoke-static {v0, v1, v2}, Lcom/android/phone/settings/AutoIpSetting;->formatNumberWithIp(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 290
    :cond_3
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 291
    const-string v3, "tel"

    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    goto :goto_0
.end method

.method private simulatePreferenceClick(Landroid/preference/Preference;)V
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/android/phone/settings/AutoIpSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    .line 228
    .local v6, "adapter":Landroid/widget/ListAdapter;
    const/4 v3, 0x0

    .local v3, "idx":I
    :goto_0
    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-ge v3, v0, :cond_0

    .line 229
    invoke-interface {v6, v3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_1

    .line 230
    invoke-virtual {p0}, Lcom/android/phone/settings/AutoIpSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/settings/AutoIpSetting;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v6, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/preference/PreferenceScreen;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 235
    :cond_0
    return-void

    .line 228
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private updateTextIpPrefix()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 245
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Lmiui/telephony/TelephonyManager;->getIccCardCount()I

    move-result v0

    .line 246
    .local v0, "count":I
    packed-switch v0, :pswitch_data_0

    .line 272
    :goto_0
    return-void

    .line 248
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/phone/settings/AutoIpSetting;->finish()V

    goto :goto_0

    .line 251
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/phone/settings/AutoIpSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v8, p0, Lcom/android/phone/settings/AutoIpSetting;->mTextIpPrefixMSim:Landroid/preference/Preference;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 253
    invoke-static {}, Lcom/android/phone/MiuiPhoneUtils;->isMultiSimEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 254
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v7

    invoke-virtual {v7}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoList()Ljava/util/List;

    move-result-object v2

    .line 255
    .local v2, "infos":Ljava/util/List;, "Ljava/util/List<Lmiui/telephony/SubscriptionInfo;>;"
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiui/telephony/SubscriptionInfo;

    .line 256
    .local v6, "simInfoRecord":Lmiui/telephony/SubscriptionInfo;
    invoke-virtual {v6}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v7

    iput v7, p0, Lcom/android/phone/settings/AutoIpSetting;->mSubscription:I

    .line 257
    invoke-virtual {v6}, Lmiui/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v7

    int-to-long v4, v7

    .line 262
    .end local v2    # "infos":Ljava/util/List;, "Ljava/util/List<Lmiui/telephony/SubscriptionInfo;>;"
    .end local v6    # "simInfoRecord":Lmiui/telephony/SubscriptionInfo;
    .local v4, "simId":J
    :goto_1
    iget v7, p0, Lcom/android/phone/settings/AutoIpSetting;->mSubscription:I

    invoke-static {p0, v7}, Lmiui/telephony/PhoneNumberUtils;->getDefaultIpBySim(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 263
    .local v1, "defaultIpPrefix":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/phone/settings/AutoIpSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v7, v1, v4, v5}, Landroid/provider/MiuiSettings$Telephony;->getAutoIpPrefix(Landroid/content/ContentResolver;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    .line 264
    .local v3, "ipPrefix":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/phone/settings/AutoIpSetting;->mTextIpPrefix:Landroid/preference/EditTextPreference;

    invoke-virtual {v7, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 265
    iget-object v7, p0, Lcom/android/phone/settings/AutoIpSetting;->mTextIpPrefix:Landroid/preference/EditTextPreference;

    invoke-virtual {v7}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 266
    iget-object v7, p0, Lcom/android/phone/settings/AutoIpSetting;->mTextIpPrefix:Landroid/preference/EditTextPreference;

    const v8, 0x7f080310

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v3, v9, v10

    invoke-virtual {p0, v8, v9}, Lcom/android/phone/settings/AutoIpSetting;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 259
    .end local v1    # "defaultIpPrefix":Ljava/lang/String;
    .end local v3    # "ipPrefix":Ljava/lang/String;
    .end local v4    # "simId":J
    :cond_0
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v7

    invoke-virtual {v7}, Lmiui/telephony/SubscriptionManager;->getDefaultSlotId()I

    move-result v7

    iput v7, p0, Lcom/android/phone/settings/AutoIpSetting;->mSubscription:I

    .line 260
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v7

    iget v8, p0, Lcom/android/phone/settings/AutoIpSetting;->mSubscription:I

    invoke-virtual {v7, v8}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result v7

    int-to-long v4, v7

    .restart local v4    # "simId":J
    goto :goto_1

    .line 269
    .end local v4    # "simId":J
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/phone/settings/AutoIpSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v8, p0, Lcom/android/phone/settings/AutoIpSetting;->mTextIpPrefix:Landroid/preference/EditTextPreference;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 246
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 145
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 147
    const v4, 0x7f060003

    invoke-virtual {p0, v4}, Lcom/android/phone/settings/AutoIpSetting;->addPreferencesFromResource(I)V

    .line 149
    const-string v4, "button_autoip"

    invoke-virtual {p0, v4}, Lcom/android/phone/settings/AutoIpSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/phone/settings/AutoIpSetting;->mAutoIpEnable:Landroid/preference/CheckBoxPreference;

    .line 150
    iget-object v4, p0, Lcom/android/phone/settings/AutoIpSetting;->mAutoIpEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/phone/settings/AutoIpSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5}, Landroid/provider/MiuiSettings$Telephony;->isAutoIpEnable(Landroid/content/ContentResolver;)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 151
    iget-object v4, p0, Lcom/android/phone/settings/AutoIpSetting;->mAutoIpEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 153
    const-string v4, "button_text_autoip_prefix"

    invoke-virtual {p0, v4}, Lcom/android/phone/settings/AutoIpSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/EditTextPreference;

    iput-object v4, p0, Lcom/android/phone/settings/AutoIpSetting;->mTextIpPrefix:Landroid/preference/EditTextPreference;

    .line 154
    iget-object v4, p0, Lcom/android/phone/settings/AutoIpSetting;->mTextIpPrefix:Landroid/preference/EditTextPreference;

    invoke-virtual {v4, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 155
    iget-object v4, p0, Lcom/android/phone/settings/AutoIpSetting;->mTextIpPrefix:Landroid/preference/EditTextPreference;

    invoke-virtual {v4, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 157
    const-string v4, "button_text_ip_prefix_msim"

    invoke-virtual {p0, v4}, Lcom/android/phone/settings/AutoIpSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/settings/AutoIpSetting;->mTextIpPrefixMSim:Landroid/preference/Preference;

    .line 159
    const-string v4, "button_text_autoip_current_areacode"

    invoke-virtual {p0, v4}, Lcom/android/phone/settings/AutoIpSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/EditTextPreference;

    iput-object v4, p0, Lcom/android/phone/settings/AutoIpSetting;->mTextCurrentAreaCode:Landroid/preference/EditTextPreference;

    .line 160
    iget-object v4, p0, Lcom/android/phone/settings/AutoIpSetting;->mTextCurrentAreaCode:Landroid/preference/EditTextPreference;

    invoke-virtual {v4, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 161
    iget-object v4, p0, Lcom/android/phone/settings/AutoIpSetting;->mTextCurrentAreaCode:Landroid/preference/EditTextPreference;

    invoke-virtual {v4, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 163
    const-string v4, "button_autoip_add_zero_prefix"

    invoke-virtual {p0, v4}, Lcom/android/phone/settings/AutoIpSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/phone/settings/AutoIpSetting;->mAddZeroPrefix:Landroid/preference/CheckBoxPreference;

    .line 164
    invoke-virtual {p0}, Lcom/android/phone/settings/AutoIpSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4}, Landroid/provider/MiuiSettings$Telephony;->isAutoAddZeroPrefix(Landroid/content/ContentResolver;)Z

    move-result v2

    .line 165
    .local v2, "isAddZeroPrefixEnabled":Z
    iget-object v4, p0, Lcom/android/phone/settings/AutoIpSetting;->mAddZeroPrefix:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 166
    iget-object v4, p0, Lcom/android/phone/settings/AutoIpSetting;->mAddZeroPrefix:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 168
    const-string v4, "button_autoip_support_local_numbers"

    invoke-virtual {p0, v4}, Lcom/android/phone/settings/AutoIpSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/phone/settings/AutoIpSetting;->mSupportLocalNumbers:Landroid/preference/CheckBoxPreference;

    .line 169
    invoke-virtual {p0}, Lcom/android/phone/settings/AutoIpSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4}, Landroid/provider/MiuiSettings$Telephony;->isAutoIpSupportLocalNum(Landroid/content/ContentResolver;)Z

    move-result v3

    .line 170
    .local v3, "isSupportLocalNumbers":Z
    iget-object v4, p0, Lcom/android/phone/settings/AutoIpSetting;->mSupportLocalNumbers:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 171
    iget-object v4, p0, Lcom/android/phone/settings/AutoIpSetting;->mSupportLocalNumbers:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 173
    const-string v4, "button_autoip_exceptions"

    invoke-virtual {p0, v4}, Lcom/android/phone/settings/AutoIpSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/settings/AutoIpSetting;->mAutoIpExceptions:Landroid/preference/Preference;

    .line 174
    invoke-virtual {p0}, Lcom/android/phone/settings/AutoIpSetting;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    .line 175
    .local v0, "bar":Lmiui/app/ActionBar;
    if-eqz v0, :cond_0

    .line 176
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lmiui/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 178
    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-direct {v1, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 179
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    iget-object v4, p0, Lcom/android/phone/settings/AutoIpSetting;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v1}, Lcom/android/phone/settings/AutoIpSetting;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 180
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 198
    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onDestroy()V

    .line 199
    iget-object v0, p0, Lcom/android/phone/settings/AutoIpSetting;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/phone/settings/AutoIpSetting;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 200
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 204
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 205
    .local v0, "itemId":I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 206
    invoke-virtual {p0}, Lcom/android/phone/settings/AutoIpSetting;->finish()V

    .line 207
    const/4 v1, 0x1

    .line 209
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 10
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 72
    iget-object v3, p0, Lcom/android/phone/settings/AutoIpSetting;->mTextIpPrefix:Landroid/preference/EditTextPreference;

    if-ne p1, v3, :cond_2

    move-object v2, p2

    .line 73
    check-cast v2, Ljava/lang/String;

    .line 74
    .local v2, "ipPrefix":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 75
    iget v3, p0, Lcom/android/phone/settings/AutoIpSetting;->mSubscription:I

    invoke-static {p0, v3}, Lmiui/telephony/PhoneNumberUtils;->getDefaultIpBySim(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 77
    :cond_0
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v3

    iget v6, p0, Lcom/android/phone/settings/AutoIpSetting;->mSubscription:I

    invoke-virtual {v3, v6}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result v3

    int-to-long v4, v3

    .line 78
    .local v4, "simId":J
    invoke-virtual {p0}, Lcom/android/phone/settings/AutoIpSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v2, v4, v5}, Landroid/provider/MiuiSettings$Telephony;->setAutoIpPrefix(Landroid/content/ContentResolver;Ljava/lang/String;J)V

    .line 79
    iget-object v3, p0, Lcom/android/phone/settings/AutoIpSetting;->mTextIpPrefix:Landroid/preference/EditTextPreference;

    const v6, 0x7f080310

    new-array v7, v8, [Ljava/lang/Object;

    aput-object v2, v7, v9

    invoke-virtual {p0, v6, v7}, Lcom/android/phone/settings/AutoIpSetting;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 106
    .end local v2    # "ipPrefix":Ljava/lang/String;
    .end local v4    # "simId":J
    .end local p2    # "objValue":Ljava/lang/Object;
    :cond_1
    :goto_0
    return v8

    .line 80
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_2
    iget-object v3, p0, Lcom/android/phone/settings/AutoIpSetting;->mAutoIpEnable:Landroid/preference/CheckBoxPreference;

    if-ne p1, v3, :cond_4

    .line 81
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 82
    .local v1, "flag":Z
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/phone/settings/AutoIpSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3}, Landroid/provider/MiuiSettings$Telephony;->getCurrentAeraCode(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 83
    iget-object v3, p0, Lcom/android/phone/settings/AutoIpSetting;->mAutoIpEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 84
    iget-object v3, p0, Lcom/android/phone/settings/AutoIpSetting;->mTextCurrentAreaCode:Landroid/preference/EditTextPreference;

    invoke-direct {p0, v3}, Lcom/android/phone/settings/AutoIpSetting;->simulatePreferenceClick(Landroid/preference/Preference;)V

    goto :goto_0

    .line 86
    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/settings/AutoIpSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v1}, Landroid/provider/MiuiSettings$Telephony;->setAutoIpEnable(Landroid/content/ContentResolver;Z)V

    .line 87
    invoke-direct {p0}, Lcom/android/phone/settings/AutoIpSetting;->closeAreaCodeDialog()V

    goto :goto_0

    .line 89
    .end local v1    # "flag":Z
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_4
    iget-object v3, p0, Lcom/android/phone/settings/AutoIpSetting;->mTextCurrentAreaCode:Landroid/preference/EditTextPreference;

    if-ne p1, v3, :cond_6

    move-object v0, p2

    .line 90
    check-cast v0, Ljava/lang/String;

    .line 91
    .local v0, "currentAreaCode":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/phone/settings/AutoIpSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v0}, Landroid/provider/MiuiSettings$Telephony;->setCurrentAeraCode(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 92
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 93
    invoke-direct {p0}, Lcom/android/phone/settings/AutoIpSetting;->alertToInputCurrentAreaCode()V

    .line 94
    invoke-virtual {p0}, Lcom/android/phone/settings/AutoIpSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v9}, Landroid/provider/MiuiSettings$Telephony;->setAutoIpEnable(Landroid/content/ContentResolver;Z)V

    goto :goto_0

    .line 96
    :cond_5
    iget-object v3, p0, Lcom/android/phone/settings/AutoIpSetting;->mTextCurrentAreaCode:Landroid/preference/EditTextPreference;

    const v6, 0x7f080311

    new-array v7, v8, [Ljava/lang/Object;

    aput-object v0, v7, v9

    invoke-virtual {p0, v6, v7}, Lcom/android/phone/settings/AutoIpSetting;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 97
    invoke-virtual {p0}, Lcom/android/phone/settings/AutoIpSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v8}, Landroid/provider/MiuiSettings$Telephony;->setAutoIpEnable(Landroid/content/ContentResolver;Z)V

    goto :goto_0

    .line 99
    .end local v0    # "currentAreaCode":Ljava/lang/String;
    :cond_6
    iget-object v3, p0, Lcom/android/phone/settings/AutoIpSetting;->mAddZeroPrefix:Landroid/preference/CheckBoxPreference;

    if-ne p1, v3, :cond_7

    .line 100
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 101
    .restart local v1    # "flag":Z
    invoke-virtual {p0}, Lcom/android/phone/settings/AutoIpSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v1}, Landroid/provider/MiuiSettings$Telephony;->setAutoAddZeroPrefixEnable(Landroid/content/ContentResolver;Z)V

    goto :goto_0

    .line 102
    .end local v1    # "flag":Z
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_7
    iget-object v3, p0, Lcom/android/phone/settings/AutoIpSetting;->mSupportLocalNumbers:Landroid/preference/CheckBoxPreference;

    if-ne p1, v3, :cond_1

    .line 103
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 104
    .restart local v1    # "flag":Z
    invoke-virtual {p0}, Lcom/android/phone/settings/AutoIpSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v1}, Landroid/provider/MiuiSettings$Telephony;->setAutoIpSupportLocalNumEnable(Landroid/content/ContentResolver;Z)V

    goto/16 :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 398
    iget-object v1, p0, Lcom/android/phone/settings/AutoIpSetting;->mTextIpPrefix:Landroid/preference/EditTextPreference;

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/settings/AutoIpSetting;->mTextCurrentAreaCode:Landroid/preference/EditTextPreference;

    if-ne p1, v1, :cond_1

    .line 399
    :cond_0
    check-cast p1, Landroid/preference/EditTextPreference;

    .end local p1    # "preference":Landroid/preference/Preference;
    invoke-virtual {p1}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    .line 400
    .local v0, "et":Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 402
    .end local v0    # "et":Landroid/widget/EditText;
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v4, 0x0

    .line 111
    invoke-super {p0, p1, p2}, Lmiui/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    .line 112
    .local v2, "preferenceClick":Z
    iget-object v3, p0, Lcom/android/phone/settings/AutoIpSetting;->mTextCurrentAreaCode:Landroid/preference/EditTextPreference;

    if-ne p2, v3, :cond_0

    .line 113
    iget-object v3, p0, Lcom/android/phone/settings/AutoIpSetting;->mTextCurrentAreaCode:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    .line 114
    .local v1, "popupDialog":Landroid/app/Dialog;
    instance-of v3, v1, Landroid/app/AlertDialog;

    if-eqz v3, :cond_0

    move-object v0, v1

    .line 115
    check-cast v0, Landroid/app/AlertDialog;

    .line 116
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 117
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 118
    const/4 v3, -0x2

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    new-instance v4, Lcom/android/phone/settings/AutoIpSetting$1;

    invoke-direct {v4, p0, v0}, Lcom/android/phone/settings/AutoIpSetting$1;-><init>(Lcom/android/phone/settings/AutoIpSetting;Landroid/app/AlertDialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    .end local v0    # "alertDialog":Landroid/app/AlertDialog;
    .end local v1    # "popupDialog":Landroid/app/Dialog;
    :cond_0
    return v2
.end method

.method protected onResume()V
    .locals 5

    .prologue
    .line 184
    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onResume()V

    .line 185
    invoke-direct {p0}, Lcom/android/phone/settings/AutoIpSetting;->updateTextIpPrefix()V

    .line 186
    invoke-virtual {p0}, Lcom/android/phone/settings/AutoIpSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/MiuiSettings$Telephony;->getCurrentAeraCode(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, "currentAreaCode":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 188
    iget-object v1, p0, Lcom/android/phone/settings/AutoIpSetting;->mTextCurrentAreaCode:Landroid/preference/EditTextPreference;

    const v2, 0x7f080315

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setSummary(I)V

    .line 193
    :goto_0
    iget-object v1, p0, Lcom/android/phone/settings/AutoIpSetting;->mAutoIpExceptions:Landroid/preference/Preference;

    invoke-static {p0}, Lcom/android/phone/settings/AutoIpExceptionSetting;->getSummary(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 194
    return-void

    .line 190
    :cond_0
    iget-object v1, p0, Lcom/android/phone/settings/AutoIpSetting;->mTextCurrentAreaCode:Landroid/preference/EditTextPreference;

    const v2, 0x7f080311

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/phone/settings/AutoIpSetting;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v1, p0, Lcom/android/phone/settings/AutoIpSetting;->mTextCurrentAreaCode:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v0}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method
