.class public Lcom/android/phone/settings/UPLMNEditor;
.super Lmiui/preference/PreferenceActivity;
.source "UPLMNEditor.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/text/TextWatcher;


# instance fields
.field private mAirplaneModeOn:Z

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mNWIDDialog:Landroid/app/AlertDialog;

.field private mNWIDPref:Landroid/preference/Preference;

.field private mNWIDPrefListener:Landroid/content/DialogInterface$OnClickListener;

.field private mNWIDText:Landroid/widget/EditText;

.field private mNWMPref:Landroid/preference/ListPreference;

.field private mNoSet:Ljava/lang/String;

.field private mOperatorNumeric:Ljava/lang/String;

.field private mPRIpref:Landroid/preference/EditTextPreference;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSlotId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Lmiui/preference/PreferenceActivity;-><init>()V

    .line 86
    iput-object v1, p0, Lcom/android/phone/settings/UPLMNEditor;->mNWIDPref:Landroid/preference/Preference;

    .line 88
    iput-object v1, p0, Lcom/android/phone/settings/UPLMNEditor;->mPRIpref:Landroid/preference/EditTextPreference;

    .line 90
    iput-object v1, p0, Lcom/android/phone/settings/UPLMNEditor;->mNWMPref:Landroid/preference/ListPreference;

    .line 95
    iput-object v1, p0, Lcom/android/phone/settings/UPLMNEditor;->mNoSet:Ljava/lang/String;

    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/settings/UPLMNEditor;->mAirplaneModeOn:Z

    .line 111
    iput-object v1, p0, Lcom/android/phone/settings/UPLMNEditor;->mNWIDDialog:Landroid/app/AlertDialog;

    .line 112
    iput-object v1, p0, Lcom/android/phone/settings/UPLMNEditor;->mOperatorNumeric:Ljava/lang/String;

    .line 115
    new-instance v0, Lcom/android/phone/settings/UPLMNEditor$1;

    invoke-direct {v0, p0}, Lcom/android/phone/settings/UPLMNEditor$1;-><init>(Lcom/android/phone/settings/UPLMNEditor;)V

    iput-object v0, p0, Lcom/android/phone/settings/UPLMNEditor;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 126
    new-instance v0, Lcom/android/phone/settings/UPLMNEditor$2;

    invoke-direct {v0, p0}, Lcom/android/phone/settings/UPLMNEditor$2;-><init>(Lcom/android/phone/settings/UPLMNEditor;)V

    iput-object v0, p0, Lcom/android/phone/settings/UPLMNEditor;->mNWIDPrefListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$002(Lcom/android/phone/settings/UPLMNEditor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/UPLMNEditor;
    .param p1, "x1"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/android/phone/settings/UPLMNEditor;->mAirplaneModeOn:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/phone/settings/UPLMNEditor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/UPLMNEditor;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/phone/settings/UPLMNEditor;->setScreenEnabled()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/settings/UPLMNEditor;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/UPLMNEditor;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/phone/settings/UPLMNEditor;->mNWIDText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/settings/UPLMNEditor;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/UPLMNEditor;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/phone/settings/UPLMNEditor;->genText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/settings/UPLMNEditor;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/UPLMNEditor;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/phone/settings/UPLMNEditor;->mNWIDPref:Landroid/preference/Preference;

    return-object v0
.end method

.method public static convertApMode2EF(I)I
    .locals 2
    .param p0, "mode"    # I

    .prologue
    .line 322
    const/4 v0, 0x0

    .line 323
    .local v0, "result":I
    const/4 v1, 0x3

    if-ne p0, v1, :cond_0

    .line 324
    const/16 v0, 0xd

    .line 332
    :goto_0
    return v0

    .line 325
    :cond_0
    const/4 v1, 0x2

    if-ne p0, v1, :cond_1

    .line 326
    const/16 v0, 0x8

    goto :goto_0

    .line 327
    :cond_1
    const/4 v1, 0x1

    if-ne p0, v1, :cond_2

    .line 328
    const/4 v0, 0x4

    goto :goto_0

    .line 330
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static convertEFMode2Ap(I)I
    .locals 2
    .param p0, "mode"    # I

    .prologue
    .line 308
    const/4 v0, 0x0

    .line 309
    .local v0, "result":I
    const/16 v1, 0xd

    if-ne p0, v1, :cond_0

    .line 310
    const/4 v0, 0x3

    .line 318
    :goto_0
    return v0

    .line 311
    :cond_0
    const/4 v1, 0x4

    if-ne p0, v1, :cond_1

    .line 312
    const/4 v0, 0x1

    goto :goto_0

    .line 313
    :cond_1
    const/16 v1, 0x8

    if-ne p0, v1, :cond_2

    .line 314
    const/4 v0, 0x2

    goto :goto_0

    .line 316
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private displayNetworkInfo(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    .line 336
    const-string v4, "slot_id"

    invoke-virtual {p1, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/phone/settings/UPLMNEditor;->mSlotId:I

    .line 338
    const-string v4, "uplmn_code"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 339
    .local v1, "number":Ljava/lang/String;
    iput-object v1, p0, Lcom/android/phone/settings/UPLMNEditor;->mOperatorNumeric:Ljava/lang/String;

    .line 340
    iget-object v4, p0, Lcom/android/phone/settings/UPLMNEditor;->mNWIDPref:Landroid/preference/Preference;

    invoke-direct {p0, v1}, Lcom/android/phone/settings/UPLMNEditor;->genText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 342
    const-string v4, "uplmn_priority"

    invoke-virtual {p1, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 343
    .local v2, "priority":I
    iget-object v4, p0, Lcom/android/phone/settings/UPLMNEditor;->mPRIpref:Landroid/preference/EditTextPreference;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 344
    iget-object v4, p0, Lcom/android/phone/settings/UPLMNEditor;->mPRIpref:Landroid/preference/EditTextPreference;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 345
    const-string v4, "uplmn_service"

    invoke-virtual {p1, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 347
    .local v0, "act":I
    const-string v4, "UPLMNEditor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "act = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    invoke-static {v0}, Lcom/android/phone/settings/UPLMNEditor;->convertEFMode2Ap(I)I

    move-result v0

    .line 350
    if-ltz v0, :cond_0

    const/4 v4, 0x3

    if-le v0, v4, :cond_1

    .line 351
    :cond_0
    const/4 v0, 0x0

    .line 354
    :cond_1
    const-string v3, ""

    .line 355
    .local v3, "summary":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/phone/settings/UPLMNEditor;->mNWMPref:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/android/phone/settings/UPLMNEditor;->mOperatorNumeric:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/android/phone/settings/UPLMNEditor;->getNetWorkModeString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 356
    iget-object v4, p0, Lcom/android/phone/settings/UPLMNEditor;->mOperatorNumeric:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/android/phone/settings/UPLMNEditor;->getNetWorkModeString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v3, v4, v0

    .line 357
    iget-object v4, p0, Lcom/android/phone/settings/UPLMNEditor;->mNWMPref:Landroid/preference/ListPreference;

    invoke-virtual {v4, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 358
    iget-object v4, p0, Lcom/android/phone/settings/UPLMNEditor;->mNWMPref:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 359
    return-void
.end method

.method private genNWInfoToIntent(Landroid/content/Intent;I)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resultCode"    # I

    .prologue
    const/4 v5, 0x0

    .line 267
    iget-object v3, p0, Lcom/android/phone/settings/UPLMNEditor;->mNWIDPref:Landroid/preference/Preference;

    invoke-virtual {v3}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/settings/UPLMNEditor;->mNoSet:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/phone/settings/UPLMNEditor;->mNWIDPref:Landroid/preference/Preference;

    invoke-virtual {v4}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 268
    :cond_0
    const v3, 0x7f08038f

    invoke-virtual {p0, v3}, Lcom/android/phone/settings/UPLMNEditor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 300
    :goto_0
    return-void

    .line 273
    :cond_1
    const-string v3, "uplmn_code"

    iget-object v4, p0, Lcom/android/phone/settings/UPLMNEditor;->mNWIDPref:Landroid/preference/Preference;

    invoke-virtual {v4}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 274
    const/4 v1, 0x0

    .line 275
    .local v1, "priority":I
    invoke-virtual {p0}, Lcom/android/phone/settings/UPLMNEditor;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "uplmn_size"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 277
    .local v2, "size":I
    :try_start_0
    iget-object v3, p0, Lcom/android/phone/settings/UPLMNEditor;->mPRIpref:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 281
    :goto_1
    invoke-virtual {p0}, Lcom/android/phone/settings/UPLMNEditor;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "uplmn_add"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 282
    if-le v1, v2, :cond_2

    .line 283
    move v1, v2

    .line 290
    :cond_2
    :goto_2
    const-string v3, "uplmn_priority"

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 292
    :try_start_1
    const-string v3, "uplmn_service"

    iget-object v4, p0, Lcom/android/phone/settings/UPLMNEditor;->mNWMPref:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Lcom/android/phone/settings/UPLMNEditor;->convertApMode2EF(I)I

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 298
    :goto_3
    invoke-virtual {p0, p2, p1}, Lcom/android/phone/settings/UPLMNEditor;->setResult(ILandroid/content/Intent;)V

    .line 299
    invoke-virtual {p0}, Lcom/android/phone/settings/UPLMNEditor;->finish()V

    goto :goto_0

    .line 278
    :catch_0
    move-exception v0

    .line 279
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v3, "UPLMNEditor"

    const-string v4, "parse value of basband error."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 286
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_3
    if-lt v1, v2, :cond_2

    .line 287
    add-int/lit8 v1, v2, -0x1

    goto :goto_2

    .line 294
    :catch_1
    move-exception v0

    .line 295
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    const-string v3, "uplmn_service"

    invoke-static {v5}, Lcom/android/phone/settings/UPLMNEditor;->convertApMode2EF(I)I

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_3
.end method

.method private genText(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 362
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 363
    :cond_0
    iget-object p1, p0, Lcom/android/phone/settings/UPLMNEditor;->mNoSet:Ljava/lang/String;

    .line 365
    .end local p1    # "value":Ljava/lang/String;
    :cond_1
    return-object p1
.end method

.method private setRemovedNWInfo()V
    .locals 2

    .prologue
    .line 303
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/settings/UserPLMNListPreference;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 304
    .local v0, "intent":Landroid/content/Intent;
    const/16 v1, 0x66

    invoke-direct {p0, v0, v1}, Lcom/android/phone/settings/UPLMNEditor;->genNWInfoToIntent(Landroid/content/Intent;I)V

    .line 305
    return-void
.end method

.method private setSavedNWInfo()V
    .locals 2

    .prologue
    .line 262
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/settings/UserPLMNListPreference;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 263
    .local v0, "intent":Landroid/content/Intent;
    const/16 v1, 0x65

    invoke-direct {p0, v0, v1}, Lcom/android/phone/settings/UPLMNEditor;->genNWInfoToIntent(Landroid/content/Intent;I)V

    .line 264
    return-void
.end method

.method private setScreenEnabled()V
    .locals 2

    .prologue
    .line 382
    invoke-virtual {p0}, Lcom/android/phone/settings/UPLMNEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/phone/settings/UPLMNEditor;->mAirplaneModeOn:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 383
    invoke-virtual {p0}, Lcom/android/phone/settings/UPLMNEditor;->invalidateOptionsMenu()V

    .line 384
    return-void

    .line 382
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 431
    invoke-virtual {p0}, Lcom/android/phone/settings/UPLMNEditor;->buttonEnabled()V

    .line 432
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 427
    return-void
.end method

.method public buttonEnabled()V
    .locals 4

    .prologue
    .line 370
    iget-object v2, p0, Lcom/android/phone/settings/UPLMNEditor;->mNWIDText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .line 371
    .local v0, "len":I
    const/4 v1, 0x1

    .line 372
    .local v1, "state":Z
    const/4 v2, 0x5

    if-lt v0, v2, :cond_0

    const/4 v2, 0x6

    if-le v0, v2, :cond_1

    .line 373
    :cond_0
    const/4 v1, 0x0

    .line 375
    :cond_1
    iget-object v2, p0, Lcom/android/phone/settings/UPLMNEditor;->mNWIDDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_2

    .line 376
    iget-object v2, p0, Lcom/android/phone/settings/UPLMNEditor;->mNWIDDialog:Landroid/app/AlertDialog;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 379
    :cond_2
    return-void
.end method

.method public getNetWorkModeString(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p1, "operatorNumeric"    # Ljava/lang/String;

    .prologue
    const v4, 0x7f07003a

    .line 184
    const/4 v0, 0x0

    .line 186
    .local v0, "networkMode":[Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 187
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/settings/UPLMNEditor;->mSlotId:I

    invoke-virtual {v1, v2}, Lmiui/telephony/TelephonyManager;->getSimOperatorForSlot(I)Ljava/lang/String;

    move-result-object p1

    .line 191
    :cond_0
    invoke-static {p1}, Lmiui/telephony/ServiceProviderUtils;->isChinaMobile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 192
    invoke-virtual {p0}, Lcom/android/phone/settings/UPLMNEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070039

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 204
    :goto_0
    return-object v0

    .line 194
    :cond_1
    invoke-static {p1}, Lmiui/telephony/ServiceProviderUtils;->isChinaUnicom(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 195
    invoke-virtual {p0}, Lcom/android/phone/settings/UPLMNEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 198
    :cond_2
    const-string v1, "UPLMNEditor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNetWorkModeString: operatorNumeric is unavailable, operatorNumeric = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", return default strings."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-virtual {p0}, Lcom/android/phone/settings/UPLMNEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 138
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 139
    const v0, 0x7f06003a

    invoke-virtual {p0, v0}, Lcom/android/phone/settings/UPLMNEditor;->addPreferencesFromResource(I)V

    .line 140
    invoke-virtual {p0}, Lcom/android/phone/settings/UPLMNEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080269

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/settings/UPLMNEditor;->mNoSet:Ljava/lang/String;

    .line 142
    const-string v0, "network_id_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/settings/UPLMNEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/settings/UPLMNEditor;->mNWIDPref:Landroid/preference/Preference;

    .line 143
    const-string v0, "priority_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/settings/UPLMNEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/phone/settings/UPLMNEditor;->mPRIpref:Landroid/preference/EditTextPreference;

    .line 144
    const-string v0, "network_mode_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/settings/UPLMNEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/phone/settings/UPLMNEditor;->mNWMPref:Landroid/preference/ListPreference;

    .line 146
    iget-object v0, p0, Lcom/android/phone/settings/UPLMNEditor;->mPRIpref:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 147
    iget-object v0, p0, Lcom/android/phone/settings/UPLMNEditor;->mNWMPref:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 149
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/phone/settings/UPLMNEditor;->mIntentFilter:Landroid/content/IntentFilter;

    .line 150
    iget-object v0, p0, Lcom/android/phone/settings/UPLMNEditor;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/phone/settings/UPLMNEditor;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/settings/UPLMNEditor;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 151
    invoke-static {p0}, Lcom/android/phone/MiuiPhoneUtils;->setActionBar(Landroid/app/Activity;)V

    .line 152
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .param p1, "id"    # I

    .prologue
    const/4 v0, 0x0

    .line 399
    if-nez p1, :cond_1

    .line 400
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/phone/settings/UPLMNEditor;->mNWIDText:Landroid/widget/EditText;

    .line 401
    iget-object v1, p0, Lcom/android/phone/settings/UPLMNEditor;->mNoSet:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/phone/settings/UPLMNEditor;->mNWIDPref:Landroid/preference/Preference;

    invoke-virtual {v2}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 402
    iget-object v1, p0, Lcom/android/phone/settings/UPLMNEditor;->mNWIDText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/phone/settings/UPLMNEditor;->mNWIDPref:Landroid/preference/Preference;

    invoke-virtual {v2}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 404
    :cond_0
    iget-object v1, p0, Lcom/android/phone/settings/UPLMNEditor;->mNWIDText:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 405
    iget-object v1, p0, Lcom/android/phone/settings/UPLMNEditor;->mNWIDText:Landroid/widget/EditText;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 406
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/phone/settings/UPLMNEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08038a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/settings/UPLMNEditor;->mNWIDText:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/settings/UPLMNEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/internal/R$string;->ok:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/settings/UPLMNEditor;->mNWIDPrefListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/settings/UPLMNEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/internal/R$string;->cancel:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/settings/UPLMNEditor;->mNWIDDialog:Landroid/app/AlertDialog;

    .line 417
    iget-object v0, p0, Lcom/android/phone/settings/UPLMNEditor;->mNWIDDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 419
    iget-object v0, p0, Lcom/android/phone/settings/UPLMNEditor;->mNWIDDialog:Landroid/app/AlertDialog;

    .line 421
    :cond_1
    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 209
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 210
    invoke-virtual {p0}, Lcom/android/phone/settings/UPLMNEditor;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "uplmn_add"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 211
    sget v0, Lcom/android/internal/R$string;->delete:I

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    sget v1, Lmiui/R$drawable;->action_button_delete_light:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 215
    :cond_0
    const/4 v0, 0x2

    const v1, 0x7f0801d8

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    sget v1, Lmiui/R$drawable;->action_button_save_light:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 218
    const/4 v0, 0x3

    sget v1, Lcom/android/internal/R$string;->cancel:I

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    sget v1, Lmiui/R$drawable;->action_button_discard_light:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 221
    return v3
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 165
    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onDestroy()V

    .line 166
    iget-object v0, p0, Lcom/android/phone/settings/UPLMNEditor;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/phone/settings/UPLMNEditor;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 167
    return-void
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 5
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 226
    invoke-super {p0, p1, p2}, Lmiui/preference/PreferenceActivity;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 227
    iget-object v1, p0, Lcom/android/phone/settings/UPLMNEditor;->mNoSet:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/phone/settings/UPLMNEditor;->mNWIDPref:Landroid/preference/Preference;

    invoke-virtual {v4}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/settings/UPLMNEditor;->mNoSet:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/phone/settings/UPLMNEditor;->mPRIpref:Landroid/preference/EditTextPreference;

    invoke-virtual {v4}, Landroid/preference/EditTextPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    move v0, v2

    .line 229
    .local v0, "isEmpty":Z
    :goto_0
    if-eqz p2, :cond_2

    .line 230
    iget-boolean v1, p0, Lcom/android/phone/settings/UPLMNEditor;->mAirplaneModeOn:Z

    if-nez v1, :cond_4

    move v1, v2

    :goto_1
    invoke-interface {p2, v3, v1}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 231
    invoke-virtual {p0}, Lcom/android/phone/settings/UPLMNEditor;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v4, "uplmn_add"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 232
    invoke-interface {p2, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-boolean v4, p0, Lcom/android/phone/settings/UPLMNEditor;->mAirplaneModeOn:Z

    if-nez v4, :cond_1

    if-nez v0, :cond_1

    move v3, v2

    :cond_1
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 237
    :cond_2
    :goto_2
    return v2

    .end local v0    # "isEmpty":Z
    :cond_3
    move v0, v3

    .line 227
    goto :goto_0

    .restart local v0    # "isEmpty":Z
    :cond_4
    move v1, v3

    .line 230
    goto :goto_1

    .line 234
    :cond_5
    invoke-interface {p2, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-boolean v4, p0, Lcom/android/phone/settings/UPLMNEditor;->mAirplaneModeOn:Z

    if-nez v4, :cond_6

    if-nez v0, :cond_6

    move v3, v2

    :cond_6
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 242
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 258
    :goto_0
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_1
    return v0

    .line 244
    :sswitch_0
    invoke-direct {p0}, Lcom/android/phone/settings/UPLMNEditor;->setSavedNWInfo()V

    goto :goto_0

    .line 247
    :sswitch_1
    invoke-direct {p0}, Lcom/android/phone/settings/UPLMNEditor;->setRemovedNWInfo()V

    goto :goto_0

    .line 250
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/phone/settings/UPLMNEditor;->finish()V

    goto :goto_1

    .line 253
    :sswitch_3
    invoke-virtual {p0}, Lcom/android/phone/settings/UPLMNEditor;->finish()V

    goto :goto_1

    .line 242
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
        0x3 -> :sswitch_2
        0x102002c -> :sswitch_3
    .end sparse-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 170
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 171
    .local v2, "value":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/settings/UPLMNEditor;->mPRIpref:Landroid/preference/EditTextPreference;

    if-ne p1, v3, :cond_1

    .line 172
    iget-object v3, p0, Lcom/android/phone/settings/UPLMNEditor;->mPRIpref:Landroid/preference/EditTextPreference;

    invoke-direct {p0, v2}, Lcom/android/phone/settings/UPLMNEditor;->genText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 180
    :cond_0
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 173
    :cond_1
    iget-object v3, p0, Lcom/android/phone/settings/UPLMNEditor;->mNWMPref:Landroid/preference/ListPreference;

    if-ne p1, v3, :cond_0

    .line 174
    iget-object v3, p0, Lcom/android/phone/settings/UPLMNEditor;->mNWMPref:Landroid/preference/ListPreference;

    invoke-virtual {v3, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 175
    const-string v1, ""

    .line 176
    .local v1, "summary":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 177
    .local v0, "index":I
    iget-object v3, p0, Lcom/android/phone/settings/UPLMNEditor;->mOperatorNumeric:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/phone/settings/UPLMNEditor;->getNetWorkModeString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v1, v3, v0

    .line 178
    iget-object v3, p0, Lcom/android/phone/settings/UPLMNEditor;->mNWMPref:Landroid/preference/ListPreference;

    invoke-virtual {v3, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v1, 0x0

    .line 389
    iget-object v0, p0, Lcom/android/phone/settings/UPLMNEditor;->mNWIDPref:Landroid/preference/Preference;

    if-ne p2, v0, :cond_0

    .line 390
    invoke-virtual {p0, v1}, Lcom/android/phone/settings/UPLMNEditor;->removeDialog(I)V

    .line 391
    invoke-virtual {p0, v1}, Lcom/android/phone/settings/UPLMNEditor;->showDialog(I)V

    .line 392
    invoke-virtual {p0}, Lcom/android/phone/settings/UPLMNEditor;->buttonEnabled()V

    .line 394
    :cond_0
    invoke-super {p0, p1, p2}, Lmiui/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 155
    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onResume()V

    .line 156
    invoke-virtual {p0}, Lcom/android/phone/settings/UPLMNEditor;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/settings/UPLMNEditor;->displayNetworkInfo(Landroid/content/Intent;)V

    .line 157
    invoke-virtual {p0}, Lcom/android/phone/settings/UPLMNEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/phone/settings/UPLMNEditor;->mAirplaneModeOn:Z

    .line 160
    invoke-direct {p0}, Lcom/android/phone/settings/UPLMNEditor;->setScreenEnabled()V

    .line 161
    return-void

    .line 157
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 436
    return-void
.end method
