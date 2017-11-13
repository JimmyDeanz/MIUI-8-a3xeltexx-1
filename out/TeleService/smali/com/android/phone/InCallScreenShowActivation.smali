.class public Lcom/android/phone/InCallScreenShowActivation;
.super Landroid/app/Activity;
.source "InCallScreenShowActivation.java"


# static fields
.field private static final DBG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/InCallScreenShowActivation;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private isWizardRunning(Landroid/content/Context;)Z
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 195
    new-instance v0, Landroid/content/Intent;

    const-string v7, "android.intent.action.DEVICE_INITIALIZATION_WIZARD"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 196
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/high16 v8, 0x10000

    invoke-virtual {v7, v0, v8}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 198
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "device_provisioned"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_2

    move v2, v5

    .line 200
    .local v2, "provisioned":Z
    :goto_0
    const-string v7, "ro.setupwizard.mode"

    const-string v8, "REQUIRED"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 201
    .local v1, "mode":Ljava/lang/String;
    const-string v7, "REQUIRED"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "OPTIONAL"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_0
    move v4, v5

    .line 202
    .local v4, "runningSetupWizard":Z
    :goto_1
    sget-boolean v7, Lcom/android/phone/InCallScreenShowActivation;->DBG:Z

    if-eqz v7, :cond_1

    .line 203
    const-string v7, "InCallScreenShowActivation"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "resolvInfo = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", provisioned = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", runningSetupWizard = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_1
    if-eqz v3, :cond_4

    if-nez v2, :cond_4

    if-eqz v4, :cond_4

    :goto_2
    return v5

    .end local v1    # "mode":Ljava/lang/String;
    .end local v2    # "provisioned":Z
    .end local v4    # "runningSetupWizard":Z
    :cond_2
    move v2, v6

    .line 198
    goto :goto_0

    .restart local v1    # "mode":Ljava/lang/String;
    .restart local v2    # "provisioned":Z
    :cond_3
    move v4, v6

    .line 201
    goto :goto_1

    .restart local v4    # "runningSetupWizard":Z
    :cond_4
    move v5, v6

    .line 206
    goto :goto_2
.end method

.method private startHfa()V
    .locals 6

    .prologue
    .line 213
    invoke-direct {p0, p0}, Lcom/android/phone/InCallScreenShowActivation;->isWizardRunning(Landroid/content/Context;)Z

    move-result v1

    .line 216
    .local v1, "isWizardRunning":Z
    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/InCallScreenShowActivation;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0018

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 219
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 221
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/phone/InCallScreenShowActivation;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "otasp_result_code_pending_intent"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    .line 224
    .local v2, "otaResponseIntent":Landroid/app/PendingIntent;
    if-nez v1, :cond_3

    const/4 v3, 0x1

    .line 225
    .local v3, "showUi":Z
    :goto_0
    const/high16 v4, 0x10000000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 227
    if-eqz v2, :cond_1

    .line 228
    const-string v4, "otasp_result_code_pending_intent"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 231
    :cond_1
    const-string v4, "InCallScreenShowActivation"

    const-string v5, "Starting hfa activation activity"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    if-eqz v3, :cond_4

    .line 233
    const-class v4, Lcom/android/phone/HfaActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, p0, v4}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreenShowActivation;->startActivity(Landroid/content/Intent;)V

    .line 241
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v2    # "otaResponseIntent":Landroid/app/PendingIntent;
    .end local v3    # "showUi":Z
    :cond_2
    :goto_1
    const/4 v4, -0x1

    invoke-virtual {p0, v4}, Lcom/android/phone/InCallScreenShowActivation;->setResult(I)V

    .line 242
    return-void

    .line 224
    .restart local v0    # "intent":Landroid/content/Intent;
    .restart local v2    # "otaResponseIntent":Landroid/app/PendingIntent;
    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    .line 236
    .restart local v3    # "showUi":Z
    :cond_4
    const-class v4, Lcom/android/phone/HfaService;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, p0, v4}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreenShowActivation;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 55
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    invoke-virtual {p0}, Lcom/android/phone/InCallScreenShowActivation;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 58
    .local v4, "intent":Landroid/content/Intent;
    sget-boolean v9, Lcom/android/phone/InCallScreenShowActivation;->DBG:Z

    if-eqz v9, :cond_0

    const-string v9, "InCallScreenShowActivation"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onCreate: intent = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_0
    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 60
    .local v3, "extras":Landroid/os/Bundle;
    sget-boolean v9, Lcom/android/phone/InCallScreenShowActivation;->DBG:Z

    if-eqz v9, :cond_1

    if-eqz v3, :cond_1

    .line 61
    const-string v9, "InCallScreenShowActivation"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "      - has extras: size = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Landroid/os/Bundle;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const-string v9, "InCallScreenShowActivation"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "      - extras = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstanceIfPrimary()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    .line 66
    .local v0, "app":Lcom/android/phone/PhoneGlobals;
    if-nez v0, :cond_2

    .line 78
    const-string v9, "InCallScreenShowActivation"

    const-string v10, "Being asked to provision CDMA SIM from secondary user, skipping."

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-virtual {p0, v12}, Lcom/android/phone/InCallScreenShowActivation;->setResult(I)V

    .line 80
    invoke-virtual {p0}, Lcom/android/phone/InCallScreenShowActivation;->finish()V

    .line 181
    :goto_0
    return-void

    .line 84
    :cond_2
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    .line 85
    .local v6, "phone":Lcom/android/internal/telephony/Phone;
    invoke-static {v6}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 86
    const-string v9, "InCallScreenShowActivation"

    const-string v10, "CDMA Provisioning not supported on this device"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-virtual {p0, v12}, Lcom/android/phone/InCallScreenShowActivation;->setResult(I)V

    .line 88
    invoke-virtual {p0}, Lcom/android/phone/InCallScreenShowActivation;->finish()V

    goto :goto_0

    .line 92
    :cond_3
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    const-string v10, "com.android.phone.PERFORM_CDMA_PROVISIONING"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 94
    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getCarrierConfig()Landroid/os/PersistableBundle;

    move-result-object v2

    .line 95
    .local v2, "carrierConfig":Landroid/os/PersistableBundle;
    const-string v9, "use_hfa_for_provisioning_bool"

    invoke-virtual {v2, v9}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 97
    .local v7, "usesHfa":Z
    if-eqz v7, :cond_4

    .line 98
    const-string v9, "InCallScreenShowActivation"

    const-string v10, "Starting Hfa from ACTION_PERFORM_CDMA_PROVISIONING"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-direct {p0}, Lcom/android/phone/InCallScreenShowActivation;->startHfa()V

    .line 100
    invoke-virtual {p0}, Lcom/android/phone/InCallScreenShowActivation;->finish()V

    goto :goto_0

    .line 104
    :cond_4
    const-string v9, "use_otasp_for_provisioning_bool"

    invoke-virtual {v2, v9}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    .line 106
    .local v8, "usesOtasp":Z
    if-eqz v8, :cond_b

    .line 111
    const/4 v5, 0x0

    .line 112
    .local v5, "interactiveMode":Z
    const-string v9, "InCallScreenShowActivation"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ACTION_PERFORM_CDMA_PROVISIONING (interactiveMode = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")..."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const-string v9, "ota_override_interactive_mode"

    invoke-virtual {v4, v9}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    const-string v9, "ro.debuggable"

    invoke-static {v9, v12}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v13, :cond_5

    .line 121
    const-string v9, "ota_override_interactive_mode"

    invoke-virtual {v4, v9, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 123
    const-string v9, "InCallScreenShowActivation"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "==> MANUALLY OVERRIDING interactiveMode to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_5
    iget-object v10, v0, Lcom/android/phone/PhoneGlobals;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    const-string v9, "otasp_result_code_pending_intent"

    invoke-virtual {v4, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroid/app/PendingIntent;

    iput-object v9, v10, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaspResultCodePendingIntent:Landroid/app/PendingIntent;

    .line 137
    if-eqz v5, :cond_7

    .line 143
    sget-boolean v9, Lcom/android/phone/InCallScreenShowActivation;->DBG:Z

    if-eqz v9, :cond_6

    const-string v9, "InCallScreenShowActivation"

    const-string v10, "==> Starting interactive CDMA provisioning..."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_6
    invoke-static {p0}, Lcom/android/phone/OtaUtils;->startInteractiveOtasp(Landroid/content/Context;)V

    .line 151
    invoke-virtual {p0, v13}, Lcom/android/phone/InCallScreenShowActivation;->setResult(I)V

    .line 180
    .end local v2    # "carrierConfig":Landroid/os/PersistableBundle;
    .end local v5    # "interactiveMode":Z
    .end local v7    # "usesHfa":Z
    .end local v8    # "usesOtasp":Z
    :goto_1
    invoke-virtual {p0}, Lcom/android/phone/InCallScreenShowActivation;->finish()V

    goto/16 :goto_0

    .line 158
    .restart local v2    # "carrierConfig":Landroid/os/PersistableBundle;
    .restart local v5    # "interactiveMode":Z
    .restart local v7    # "usesHfa":Z
    .restart local v8    # "usesOtasp":Z
    :cond_7
    sget-boolean v9, Lcom/android/phone/InCallScreenShowActivation;->DBG:Z

    if-eqz v9, :cond_8

    const-string v9, "InCallScreenShowActivation"

    const-string v10, "==> Starting non-interactive CDMA provisioning..."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_8
    invoke-static {p0}, Lcom/android/phone/OtaUtils;->startNonInteractiveOtasp(Landroid/content/Context;)I

    move-result v1

    .line 161
    .local v1, "callStatus":I
    if-nez v1, :cond_a

    .line 162
    sget-boolean v9, Lcom/android/phone/InCallScreenShowActivation;->DBG:Z

    if-eqz v9, :cond_9

    const-string v9, "InCallScreenShowActivation"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  ==> successful result from startNonInteractiveOtasp(): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_9
    const/4 v9, 0x2

    invoke-virtual {p0, v9}, Lcom/android/phone/InCallScreenShowActivation;->setResult(I)V

    goto :goto_1

    .line 167
    :cond_a
    const-string v9, "InCallScreenShowActivation"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failure code from startNonInteractiveOtasp(): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const/4 v9, 0x3

    invoke-virtual {p0, v9}, Lcom/android/phone/InCallScreenShowActivation;->setResult(I)V

    goto :goto_1

    .line 173
    .end local v1    # "callStatus":I
    .end local v5    # "interactiveMode":Z
    :cond_b
    const-string v9, "InCallScreenShowActivation"

    const-string v10, "Skipping activation."

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 176
    .end local v2    # "carrierConfig":Landroid/os/PersistableBundle;
    .end local v7    # "usesHfa":Z
    .end local v8    # "usesOtasp":Z
    :cond_c
    const-string v9, "InCallScreenShowActivation"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unexpected intent action: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-virtual {p0, v12}, Lcom/android/phone/InCallScreenShowActivation;->setResult(I)V

    goto :goto_1
.end method
