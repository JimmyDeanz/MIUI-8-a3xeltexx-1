.class public Lcom/whitepages/nameid/NameIDBlockingHelper;
.super Ljava/lang/Object;
.source "NameIDBlockingHelper.java"


# static fields
.field private static final NAME_ID_CHECK_TEXT_BLOCK_ACTION:Ljava/lang/String; = "com.whitepages.nameid.action.CHECK_TEXT_BLOCK"

.field public static final NAME_ID_DEFAULT_PACKAGE_NAME:Ljava/lang/String; = "com.whitepages.nameid.tmobile"

.field private static final NAME_ID_MMS_RECEIVER_COMPONENT_NAME:Ljava/lang/String; = "com.whitepages.nameid.tmobile/com.whitepages.nameid.service.MmsReceiver"

.field public static final NAME_ID_MMS_RECEIVER_COMPONENT_NAME_FORMAT:Ljava/lang/String; = "%s/com.whitepages.nameid.service.MmsReceiver"

.field private static final NAME_ID_ORIGINAL_INTENT:Ljava/lang/String; = "NAME_ID_ORIGINAL_INTENT"

.field public static final NAME_ID_PACKAGE_KEY:Ljava/lang/String; = "com.whitepages.nameid.NAME_ID_PACKAGE"

.field private static final NAME_ID_SMS_RECEIVER_COMPONENT_NAME:Ljava/lang/String; = "com.whitepages.nameid.tmobile/com.whitepages.nameid.service.SmsReceiver"

.field public static final NAME_ID_SMS_RECEIVER_COMPONENT_NAME_FORMAT:Ljava/lang/String; = "%s/com.whitepages.nameid.service.SmsReceiver"

.field public static final mEnableWhitePagesConfig:Ljava/lang/String; = "CscFeature_Contact_SupportWhitePages"

.field private static s_options:Landroid/os/Bundle;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getActivePackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "com.whitepages.nameid.NAME_ID_PACKAGE"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "s":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "com.whitepages.nameid.tmobile"

    :cond_0
    return-object v0
.end method

.method public static getLastOptions()Landroid/os/Bundle;
    .locals 2

    .prologue
    sget-object v0, Lcom/whitepages/nameid/NameIDBlockingHelper;->s_options:Landroid/os/Bundle;

    .local v0, "options":Landroid/os/Bundle;
    const/4 v1, 0x0

    sput-object v1, Lcom/whitepages/nameid/NameIDBlockingHelper;->s_options:Landroid/os/Bundle;

    return-object v0
.end method

.method public static getOriginalIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const-string v0, "NAME_ID_ORIGINAL_INTENT"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    return-object v0
.end method

.method public static isNameIDInstalledAndEnabled(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .local v3, "pm":Landroid/content/pm/PackageManager;
    invoke-static {p0}, Lcom/whitepages/nameid/NameIDBlockingHelper;->getActivePackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .local v2, "p":Landroid/content/pm/PackageInfo;
    iget-object v1, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    if-nez v1, :cond_0

    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "p":Landroid/content/pm/PackageInfo;
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    return v4

    .restart local v1    # "info":Landroid/content/pm/ApplicationInfo;
    .restart local v2    # "p":Landroid/content/pm/PackageInfo;
    .restart local v3    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    const-string v5, "NameIDHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "got package info. enabled: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v4, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "p":Landroid/content/pm/PackageInfo;
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "NameIDHelper"

    const-string v6, "error trying to detect package -- we are probably not installed"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static isNameIdAction(Ljava/lang/String;)Z
    .locals 1
    .param p0, "sAction"    # Ljava/lang/String;

    .prologue
    const-string v0, "com.whitepages.nameid.action.CHECK_TEXT_BLOCK"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static wasAborted(I)Z
    .locals 1
    .param p0, "rc"    # I

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static wrapIntent(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 6
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    invoke-static {p0}, Lcom/whitepages/nameid/NameIDBlockingHelper;->isNameIDInstalledAndEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .end local p1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-object p1

    .restart local p1    # "intent":Landroid/content/Intent;
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .local v1, "sAction":Ljava/lang/String;
    sput-object p2, Lcom/whitepages/nameid/NameIDBlockingHelper;->s_options:Landroid/os/Bundle;

    const-string v2, "android.provider.Telephony.WAP_PUSH_DELIVER"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "android.provider.Telephony.SMS_DELIVER"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.whitepages.nameid.action.CHECK_TEXT_BLOCK"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "newIntent":Landroid/content/Intent;
    const-string v2, "android.provider.Telephony.WAP_PUSH_DELIVER"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "%s/com.whitepages.nameid.service.MmsReceiver"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/whitepages/nameid/NameIDBlockingHelper;->getActivePackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :goto_1
    const-string v2, "NAME_ID_ORIGINAL_INTENT"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-object p1, v0

    goto :goto_0

    :cond_3
    const-string v2, "%s/com.whitepages.nameid.service.SmsReceiver"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/whitepages/nameid/NameIDBlockingHelper;->getActivePackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_1
.end method
