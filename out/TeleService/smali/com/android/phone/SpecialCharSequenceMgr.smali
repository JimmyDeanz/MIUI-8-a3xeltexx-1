.class public Lcom/android/phone/SpecialCharSequenceMgr;
.super Ljava/lang/Object;
.source "SpecialCharSequenceMgr.java"


# direct methods
.method private static handleAdnEntry(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 174
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/PhoneGlobals;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 193
    :cond_0
    :goto_0
    return v3

    .line 178
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 179
    .local v2, "len":I
    if-le v2, v4, :cond_0

    const/4 v5, 0x5

    if-ge v2, v5, :cond_0

    const-string v5, "#"

    invoke-virtual {p1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 181
    const/4 v5, 0x0

    add-int/lit8 v6, v2, -0x1

    :try_start_0
    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 182
    .local v0, "index":I
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.PICK"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 184
    .local v1, "intent":Landroid/content/Intent;
    const-string v5, "com.android.phone"

    const-string v6, "com.android.phone.SimContacts"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    const/high16 v5, 0x10000000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 187
    const-string v5, "index"

    invoke-virtual {v1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 188
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/phone/PhoneGlobals;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    .line 190
    goto :goto_0

    .line 191
    .end local v0    # "index":I
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method static handleChars(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/phone/SpecialCharSequenceMgr;->handleChars(Landroid/content/Context;Ljava/lang/String;Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method static handleChars(Landroid/content/Context;Ljava/lang/String;Landroid/app/Activity;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "pukInputActivity"    # Landroid/app/Activity;

    .prologue
    .line 105
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "dialString":Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/android/phone/SpecialCharSequenceMgr;->handleIMEIDisplay(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0, v0}, Lcom/android/phone/SpecialCharSequenceMgr;->handleRegulatoryInfoDisplay(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0, v0, p2}, Lcom/android/phone/SpecialCharSequenceMgr;->handlePinEntry(Landroid/content/Context;Ljava/lang/String;Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0, v0}, Lcom/android/phone/SpecialCharSequenceMgr;->handleAdnEntry(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0, v0}, Lcom/android/phone/SpecialCharSequenceMgr;->handleSecretCode(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 112
    :cond_0
    const/4 v1, 0x1

    .line 115
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static handleCharsForLockedDevice(Landroid/content/Context;Ljava/lang/String;Landroid/app/Activity;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "pukInputActivity"    # Landroid/app/Activity;

    .prologue
    .line 130
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, "dialString":Ljava/lang/String;
    invoke-static {p0, v0, p2}, Lcom/android/phone/SpecialCharSequenceMgr;->handlePinEntry(Landroid/content/Context;Ljava/lang/String;Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    const/4 v1, 0x1

    .line 142
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static handleIMEIDisplay(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 222
    const-string v0, "*#06#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    invoke-static {p0}, Lcom/android/phone/SpecialCharSequenceMgr;->showDeviceIdPanel(Landroid/content/Context;)V

    .line 224
    const/4 v0, 0x1

    .line 227
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static handlePinEntry(Landroid/content/Context;Ljava/lang/String;Landroid/app/Activity;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "pukInputActivity"    # Landroid/app/Activity;

    .prologue
    .line 201
    const-string v3, "**04"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "**05"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    const-string v3, "#"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 203
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    .line 204
    .local v0, "app":Lcom/android/phone/PhoneGlobals;
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 205
    .local v2, "phone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/Phone;->handlePinMmi(Ljava/lang/String;)Z

    move-result v1

    .line 212
    .local v1, "isMMIHandled":Z
    if-eqz v1, :cond_1

    const-string v3, "**05"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 213
    invoke-virtual {v0, p2}, Lcom/android/phone/PhoneGlobals;->setPukEntryActivity(Landroid/app/Activity;)V

    .line 217
    .end local v0    # "app":Lcom/android/phone/PhoneGlobals;
    .end local v1    # "isMMIHandled":Z
    .end local v2    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_1
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static handleRegulatoryInfoDisplay(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 248
    const-string v2, "*#07#"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 249
    const-string v2, "handleRegulatoryInfoDisplay() sending intent to settings app"

    invoke-static {v2}, Lcom/android/phone/SpecialCharSequenceMgr;->log(Ljava/lang/String;)V

    .line 250
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.SHOW_REGULATORY_INFO"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 252
    .local v1, "showRegInfoIntent":Landroid/content/Intent;
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    :goto_0
    const/4 v2, 0x1

    .line 258
    .end local v1    # "showRegInfoIntent":Landroid/content/Intent;
    :goto_1
    return v2

    .line 253
    .restart local v1    # "showRegInfoIntent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 254
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "PhoneApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startActivity() failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 258
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .end local v1    # "showRegInfoIntent":Landroid/content/Intent;
    :cond_0
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static handleSecretCode(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 156
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 157
    .local v1, "len":I
    const/16 v2, 0x8

    if-le v1, v2, :cond_0

    const-string v2, "*#*#"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "#*#*"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 158
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.provider.Telephony.SECRET_CODE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "android_secret_code://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x4

    add-int/lit8 v5, v1, -0x4

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 160
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 161
    const/4 v2, 0x1

    .line 164
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 262
    const-string v0, "PhoneApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SpecialCharSequenceMgr] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    return-void
.end method

.method private static showDeviceIdPanel(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 233
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 234
    .local v3, "phone":Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyCapabilities;->getDeviceIdLabel(Lcom/android/internal/telephony/Phone;)I

    move-result v2

    .line 235
    .local v2, "labelId":I
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 237
    .local v1, "deviceId":Ljava/lang/String;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0800c3

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 243
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d7

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 244
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 245
    return-void
.end method
