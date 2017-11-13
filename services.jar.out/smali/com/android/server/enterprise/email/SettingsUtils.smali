.class public Lcom/android/server/enterprise/email/SettingsUtils;
.super Ljava/lang/Object;
.source "SettingsUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/email/SettingsUtils$PasswordIntentFieldName;
    }
.end annotation


# static fields
.field private static final ACCOUNTCB_CONTENT_URI:Landroid/net/Uri;

.field private static ACCOUNTS_DB:Ljava/lang/String; = null

.field private static final ACCOUNTS_DBNAME:Ljava/lang/String; = "accounts.db"

.field private static final ACCOUNT_CONTENT_URI:Landroid/net/Uri;

.field static final ACTION_EAS_INTENT:Ljava/lang/String; = "com.android.email.EXCHANGE_INTENT"

.field static final ACTION_EAS_INTENT_NEWEMAIL:Ljava/lang/String; = "com.samsung.android.emailsync.EXCHANGE_INTENT"

.field static final ACTION_EMAIL_CREATE_ACCOUNT_FROM_MDM:Ljava/lang/String; = "edm.intent.action.internal.CREATE_EMAILACCOUNT"

.field static final ACTION_EMAIL_DELETE_ACCOUNT_FROM_MDM:Ljava/lang/String; = "edm.intent.action.internal.DELETE_EMAILACCOUNT"

.field static final ACTION_EMAIL_DELETE_NOT_VALIDATED_ACCOUNT_FROM_MDM:Ljava/lang/String; = "edm.intent.action.internal.DELETE_NOT_VALIDATED_EMAILACCOUNT"

.field static final ACTION_EMAIL_DEVICEID_RESULT:Ljava/lang/String; = "android.intent.action.enterprise.GET_DEVICEID"

.field static final ACTION_EMAIL_DEVICEID_RESULT_NEWEMAIL:Ljava/lang/String; = "edm.intent.action.internal.GET_DEVICEID_RESULT"

.field static final ACTION_EMAIL_ENABLE_MSG_COMPOSE:Ljava/lang/String; = "com.android.email.ENABLE_MESSAGECOMPOSE"

.field static final ACTION_EMAIL_ENABLE_MSG_COMPOSE_NEWEMAIL:Ljava/lang/String; = "com.samsung.android.email.ENABLE_MESSAGECOMPOSE"

.field static final ACTION_EMAIL_GET_DEVICEID:Ljava/lang/String; = "com.android.email.GET_DEVICEID"

.field static final ACTION_EMAIL_GET_DEVICEID_NEWEMAIL:Ljava/lang/String; = "com.samsung.android.email.GET_DEVICEID"

.field static final ACTION_EMAIL_INSTALL_CERT:Ljava/lang/String; = "com.android.email.INSTALL_CERTIFICATE"

.field static final ACTION_EMAIL_INSTALL_CERT_NEWEMAIL:Ljava/lang/String; = "com.samsung.android.email.INSTALL_CERTIFICATE"

.field static final ACTION_EMAIL_RENAME_CERTIFICATE:Ljava/lang/String; = "com.android.email.RENAME_CERTIFICATE"

.field static final ACTION_EMAIL_RENAME_CERTIFICATE_NEWEMAIL:Ljava/lang/String; = "com.samsung.android.email.RENAME_CERTIFICATE"

.field static final ACTION_REQUEST_EMAILACCOUNT_PASSWORD:Ljava/lang/String; = "edm.intent.action.internal.REQUEST_EMAILACCOUNT_PASSWORD"

.field static final ACTION_RESULT_EMAILACCOUNT_PASSWORD:Ljava/lang/String; = "edm.intent.action.internal.RESULT_EMAILACCOUNT_PASSWORD"

.field static final ACTION_SET_EMAILACCOUNT_PASSWORD:Ljava/lang/String; = "edm.intent.action.internal.SET_EMAILACCOUNT_PASSWORD"

.field public static final EAS_PKG_NAME:Ljava/lang/String; = "com.android.exchange"

.field public static final EMAIL_PKG_NAME:Ljava/lang/String; = "com.android.email"

.field static final EMAIL_PROVIDER_PERMISSION:Ljava/lang/String; = "com.android.email.permission.ACCESS_PROVIDER"

.field private static final HOST_AUTH_CONTENT_URI:Landroid/net/Uri;

.field static final MDM_EMAIL_PERMISSION:Ljava/lang/String; = "android.permission.sec.MDM_EMAIL"

.field public static final NEW_EMAIL_PKG_NAME:Ljava/lang/String; = "com.samsung.android.email.provider"

.field private static final POLICIES_CONTENT_URI:Landroid/net/Uri;

.field private static final SYSTEM_DIR:Ljava/lang/String; = "/data/system/users/"

.field private static final TAG:Ljava/lang/String; = "SettingsUtils"

.field private static adminPkg:Ljava/lang/String;

.field private static currentUserID:I

.field private static emails:Landroid/content/Context;

.field private static mServerPassword:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static preCallingUid:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 126
    const-string/jumbo v0, "content://com.android.email.provider/account"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/email/SettingsUtils;->ACCOUNT_CONTENT_URI:Landroid/net/Uri;

    .line 128
    const-string/jumbo v0, "content://com.android.email.provider/hostauth"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/email/SettingsUtils;->HOST_AUTH_CONTENT_URI:Landroid/net/Uri;

    .line 130
    const-string/jumbo v0, "content://com.android.email.provider/policies"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/email/SettingsUtils;->POLICIES_CONTENT_URI:Landroid/net/Uri;

    .line 134
    const-string/jumbo v0, "content://com.android.email.provider/accountcb"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/email/SettingsUtils;->ACCOUNTCB_CONTENT_URI:Landroid/net/Uri;

    .line 139
    sput-object v1, Lcom/android/server/enterprise/email/SettingsUtils;->ACCOUNTS_DB:Ljava/lang/String;

    .line 140
    sput-object v1, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    .line 141
    sput v2, Lcom/android/server/enterprise/email/SettingsUtils;->currentUserID:I

    .line 142
    sput-object v1, Lcom/android/server/enterprise/email/SettingsUtils;->adminPkg:Ljava/lang/String;

    .line 143
    sput v2, Lcom/android/server/enterprise/email/SettingsUtils;->preCallingUid:I

    .line 1595
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/email/SettingsUtils;->mServerPassword:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1516
    return-void
.end method

.method static declared-synchronized addorUpdateAccount(Landroid/app/enterprise/ContextInfo;Lcom/android/server/enterprise/email/AccountMetaData;ZLandroid/content/Context;)J
    .locals 25
    .param p0, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p1, "accInfo"    # Lcom/android/server/enterprise/email/AccountMetaData;
    .param p2, "isInsertOP"    # Z
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 313
    const-class v23, Lcom/android/server/enterprise/email/SettingsUtils;

    monitor-enter v23

    const-wide/16 v14, -0x1

    .line 314
    .local v14, "accountId":J
    :try_start_0
    const-string v10, "SettingsUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "addorUpdateAccount : Processing account "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-eqz p2, :cond_6

    const-string/jumbo v5, "creation"

    :goto_0
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, " request for EmailId: "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, " (AccountType is : "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    iget-boolean v5, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    if-eqz v5, :cond_7

    const-string v5, "Eas"

    :goto_1
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, " )"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/secutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    const-wide/16 v18, -0x1

    .line 319
    .local v18, "accountsRowId":J
    const-wide/16 v6, -0x1

    .line 320
    .local v6, "inComingRowId":J
    const-wide/16 v8, -0x1

    .line 321
    .local v8, "outGoingRowId":J
    move-object/from16 v0, p0

    iget v5, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v22

    .line 322
    .local v22, "userID":I
    move-object/from16 v0, p0

    iget v4, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 323
    .local v4, "containerId":I
    sput v22, Lcom/android/server/enterprise/email/SettingsUtils;->currentUserID:I

    .line 324
    const-string v10, "SettingsUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ">>>>>>>>>>>>>>>>>\t\tupdateAccount for  "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    iget-boolean v5, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    if-eqz v5, :cond_8

    const-string v5, "Eas"

    :goto_2
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, "     : user id : "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 326
    if-eqz v22, :cond_a

    .line 327
    :try_start_1
    move/from16 v0, v22

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->isPersona(ILandroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 328
    invoke-static {v4}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x0

    new-instance v11, Landroid/os/UserHandle;

    move/from16 v0, v22

    invoke-direct {v11, v0}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v10, v11}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v5

    sput-object v5, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    .line 329
    const-string v5, "SettingsUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "addorUpdateAccount : USER space   "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v4}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 343
    :goto_3
    :try_start_2
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-boolean v10, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    invoke-static {v10, v4}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountType(ZI)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPassword:Ljava/lang/String;

    sget-object v24, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    move/from16 v0, p2

    move-object/from16 v1, v24

    invoke-static {v5, v10, v11, v0, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->insertAccountsTableRow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)J

    move-result-wide v18

    .line 346
    const-wide/16 v10, -0x1

    cmp-long v5, v10, v18

    if-nez v5, :cond_0

    .line 347
    const-string v5, "SettingsUtils"

    const-string v10, "accountsRowId : -1 .. "

    invoke-static {v5, v10}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    :cond_0
    invoke-static {v4}, Lcom/android/server/enterprise/email/SettingsUtils;->getHostAuthContentUri(I)Landroid/net/Uri;

    move-result-object v20

    .line 351
    .local v20, "hostUri":Landroid/net/Uri;
    const-wide/16 v10, -0x1

    cmp-long v5, v10, v18

    if-eqz v5, :cond_2

    .line 353
    const/4 v5, 0x1

    sget-object v10, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-static {v0, v1, v2, v5, v10}, Lcom/android/server/enterprise/email/SettingsUtils;->insertHostAuthTableRow(Landroid/net/Uri;Lcom/android/server/enterprise/email/AccountMetaData;ZZLandroid/content/Context;)J

    move-result-wide v6

    .line 355
    const-wide/16 v10, -0x1

    cmp-long v5, v10, v6

    if-eqz v5, :cond_1

    .line 356
    const/4 v5, 0x0

    sget-object v10, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-static {v0, v1, v2, v5, v10}, Lcom/android/server/enterprise/email/SettingsUtils;->insertHostAuthTableRow(Landroid/net/Uri;Lcom/android/server/enterprise/email/AccountMetaData;ZZLandroid/content/Context;)J

    move-result-wide v8

    .line 359
    :cond_1
    const-wide/16 v10, -0x1

    cmp-long v5, v10, v6

    if-eqz v5, :cond_2

    const-wide/16 v10, -0x1

    cmp-long v5, v10, v8

    if-eqz v5, :cond_2

    .line 360
    sget-object v11, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    move-object/from16 v5, p1

    move/from16 v10, p2

    invoke-static/range {v4 .. v11}, Lcom/android/server/enterprise/email/SettingsUtils;->insertAccountTableRow(ILcom/android/server/enterprise/email/AccountMetaData;JJZLandroid/content/Context;)J

    move-result-wide v14

    .line 364
    :cond_2
    const-wide/16 v10, -0x1

    cmp-long v5, v10, v14

    if-nez v5, :cond_c

    .line 365
    const-string v10, "SettingsUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "addorUpdateAccount : Account "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-eqz p2, :cond_b

    const-string/jumbo v5, "creation"

    :goto_4
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, " was unsuccessful for EmailId: "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/secutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    if-eqz p2, :cond_5

    .line 371
    const-string v5, "SettingsUtils"

    const-string v10, "addorUpdateAccount : Starting redundant data cleanup... if any...!!!"

    invoke-static {v5, v10}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    const-wide/16 v10, -0x1

    cmp-long v5, v10, v18

    if-eqz v5, :cond_3

    .line 373
    sget-object v5, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    move-wide/from16 v0, v18

    invoke-static {v0, v1, v5}, Lcom/android/server/enterprise/email/SettingsUtils;->deleteAccountsTableRow(JLandroid/content/Context;)Z

    .line 376
    :cond_3
    const-wide/16 v10, -0x1

    cmp-long v5, v10, v6

    if-eqz v5, :cond_4

    .line 377
    sget-object v5, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    move-object/from16 v0, v20

    invoke-static {v0, v6, v7, v5}, Lcom/android/server/enterprise/email/SettingsUtils;->deleteHostAuthTableRow(Landroid/net/Uri;JLandroid/content/Context;)Z

    .line 380
    :cond_4
    const-wide/16 v10, -0x1

    cmp-long v5, v10, v8

    if-eqz v5, :cond_5

    .line 381
    sget-object v5, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    move-object/from16 v0, v20

    invoke-static {v0, v8, v9, v5}, Lcom/android/server/enterprise/email/SettingsUtils;->deleteHostAuthTableRow(Landroid/net/Uri;JLandroid/content/Context;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_5
    :goto_5
    move-wide/from16 v16, v14

    .line 416
    .end local v14    # "accountId":J
    .end local v20    # "hostUri":Landroid/net/Uri;
    .local v16, "accountId":J
    :goto_6
    monitor-exit v23

    return-wide v16

    .line 314
    .end local v4    # "containerId":I
    .end local v6    # "inComingRowId":J
    .end local v8    # "outGoingRowId":J
    .end local v16    # "accountId":J
    .end local v18    # "accountsRowId":J
    .end local v22    # "userID":I
    .restart local v14    # "accountId":J
    :cond_6
    :try_start_3
    const-string/jumbo v5, "updation"

    goto/16 :goto_0

    :cond_7
    const-string v5, "Non-Eas"

    goto/16 :goto_1

    .line 324
    .restart local v4    # "containerId":I
    .restart local v6    # "inComingRowId":J
    .restart local v8    # "outGoingRowId":J
    .restart local v18    # "accountsRowId":J
    .restart local v22    # "userID":I
    :cond_8
    const-string v5, "Non-Eas"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2

    .line 331
    :cond_9
    :try_start_4
    move-object/from16 v0, p0

    iget v5, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v5}, Lcom/android/server/enterprise/email/SettingsUtils;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x0

    new-instance v11, Landroid/os/UserHandle;

    move/from16 v0, v22

    invoke-direct {v11, v0}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v10, v11}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v5

    sput-object v5, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    .line 332
    const-string v5, "SettingsUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "addorUpdateAccount : USER space   "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget v11, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v11}, Lcom/android/server/enterprise/email/SettingsUtils;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_3

    .line 338
    :catch_0
    move-exception v13

    .line 339
    .local v13, "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-wide/from16 v16, v14

    .line 340
    .end local v14    # "accountId":J
    .restart local v16    # "accountId":J
    goto :goto_6

    .line 336
    .end local v13    # "e":Ljava/lang/Exception;
    .end local v16    # "accountId":J
    .restart local v14    # "accountId":J
    :cond_a
    :try_start_6
    sput-object p3, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_3

    .line 313
    .end local v4    # "containerId":I
    .end local v6    # "inComingRowId":J
    .end local v8    # "outGoingRowId":J
    .end local v18    # "accountsRowId":J
    .end local v22    # "userID":I
    :catchall_0
    move-exception v5

    monitor-exit v23

    throw v5

    .line 365
    .restart local v4    # "containerId":I
    .restart local v6    # "inComingRowId":J
    .restart local v8    # "outGoingRowId":J
    .restart local v18    # "accountsRowId":J
    .restart local v20    # "hostUri":Landroid/net/Uri;
    .restart local v22    # "userID":I
    :cond_b
    :try_start_7
    const-string/jumbo v5, "updation"

    goto/16 :goto_4

    .line 385
    :cond_c
    if-eqz p2, :cond_d

    .line 386
    const/16 v21, 0x0

    .line 387
    .local v21, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->isSupportNewEmail()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 388
    new-instance v21, Landroid/content/Intent;

    .end local v21    # "intent":Landroid/content/Intent;
    const-string v5, "com.samsung.android.email.ENABLE_MESSAGECOMPOSE"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedAction(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 395
    .restart local v21    # "intent":Landroid/content/Intent;
    :goto_7
    new-instance v5, Landroid/os/UserHandle;

    move/from16 v0, v22

    invoke-direct {v5, v0}, Landroid/os/UserHandle;-><init>(I)V

    const-string v10, "android.permission.sec.MDM_EMAIL"

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v5, v10}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 397
    new-instance v12, Landroid/accounts/Account;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-boolean v10, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    invoke-static {v10, v4}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountType(ZI)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v12, v5, v10}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    .local v12, "account":Landroid/accounts/Account;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ".provider"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x1

    move/from16 v0, v22

    invoke-static {v12, v5, v10, v0}, Landroid/content/ContentResolver;->setSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;ZI)V

    .line 406
    move-object/from16 v0, p1

    iget-boolean v5, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mIsDefault:Z

    if-eqz v5, :cond_d

    .line 407
    sget-object v5, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15, v5}, Lcom/android/server/enterprise/email/SettingsUtils;->setAsDefaultAccount(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Z

    .line 410
    .end local v12    # "account":Landroid/accounts/Account;
    .end local v21    # "intent":Landroid/content/Intent;
    :cond_d
    const-string v10, "SettingsUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "addorUpdateAccount : Account "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-eqz p2, :cond_f

    const-string/jumbo v5, "created"

    :goto_8
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, " successfully for EmailId: "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, " ( "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-eqz p2, :cond_10

    const-string v5, "Generated"

    :goto_9
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, "  AccountId : "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, " )"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/secutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 392
    .restart local v21    # "intent":Landroid/content/Intent;
    :cond_e
    new-instance v21, Landroid/content/Intent;

    .end local v21    # "intent":Landroid/content/Intent;
    const-string v5, "com.android.email.ENABLE_MESSAGECOMPOSE"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/email/SettingsUtils;->getContainerizedAction(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v21    # "intent":Landroid/content/Intent;
    goto/16 :goto_7

    .line 410
    .end local v21    # "intent":Landroid/content/Intent;
    :cond_f
    const-string/jumbo v5, "updated"

    goto :goto_8

    :cond_10
    const-string v5, "Updated"
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_9
.end method

.method public static createIDforAccount()J
    .locals 6

    .prologue
    .line 1625
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1626
    .local v0, "accId":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    const-wide/16 v2, -0x1

    const-wide/16 v4, 0x1

    sub-long v4, v0, v4

    mul-long v0, v2, v4

    .line 1627
    :cond_0
    const-string v2, "SettingsUtils"

    const-string v3, ">>>>  createIDforAccount   <<<<"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1628
    const-string v2, "SettingsUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">>>>  createIDforAccount   <<<<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1629
    return-wide v0
.end method

.method static declared-synchronized deleteAccount(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Z
    .locals 21
    .param p0, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p1, "accountId"    # J
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 797
    const-class v20, Lcom/android/server/enterprise/email/SettingsUtils;

    monitor-enter v20

    const/16 v18, 0x0

    .line 798
    .local v18, "rowCount":I
    const-wide/16 v6, 0x1

    cmp-long v6, v6, p1

    if-lez v6, :cond_0

    .line 799
    :try_start_0
    const-string v6, "SettingsUtils"

    const-string/jumbo v7, "deleteAccount : accountId is invalid"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 800
    const/4 v6, 0x0

    .line 872
    :goto_0
    monitor-exit v20

    return v6

    .line 802
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget v6, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v19

    .line 803
    .local v19, "userID":I
    move-object/from16 v0, p0

    iget v15, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 804
    .local v15, "containerId":I
    sput v19, Lcom/android/server/enterprise/email/SettingsUtils;->currentUserID:I

    .line 805
    const/4 v2, 0x0

    .line 806
    .local v2, "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    const/16 v17, 0x0

    .line 807
    .local v17, "found":Z
    invoke-static {v15}, Lcom/android/server/enterprise/email/SettingsUtils;->getHostAuthContentUri(I)Landroid/net/Uri;

    move-result-object v3

    .line 808
    .local v3, "hostUri":Landroid/net/Uri;
    invoke-static {v15}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountContentUri(I)Landroid/net/Uri;

    move-result-object v4

    .line 809
    .local v4, "acctUri":Landroid/net/Uri;
    invoke-static {v15}, Lcom/android/server/enterprise/email/SettingsUtils;->getPoliciesContentUri(I)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    .line 811
    .local v5, "policiesUri":Landroid/net/Uri;
    if-eqz v19, :cond_4

    .line 812
    :try_start_2
    move/from16 v0, v19

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->isPersona(ILandroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 813
    invoke-static {v15}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-instance v8, Landroid/os/UserHandle;

    move/from16 v0, v19

    invoke-direct {v8, v0}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v6, v7, v8}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v6

    sput-object v6, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    .line 814
    const-string v6, "SettingsUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "deleteAccount : USER space   "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v15}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 828
    :goto_1
    :try_start_3
    sget-object v8, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    const/4 v9, 0x0

    move-wide/from16 v6, p1

    move-object/from16 v10, p0

    invoke-static/range {v3 .. v10}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccount(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;JLandroid/content/Context;ZLandroid/app/enterprise/ContextInfo;)Lcom/android/server/enterprise/email/AccountMetaData;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v2

    .line 829
    if-eqz v2, :cond_2

    .line 834
    :cond_1
    :try_start_4
    iget-object v6, v2, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    iget-boolean v7, v2, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    invoke-static {v7, v15}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountType(ZI)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    invoke-static {v6, v7, v8}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountsDBRowId(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)J

    move-result-wide v6

    sget-object v8, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    invoke-static {v6, v7, v8}, Lcom/android/server/enterprise/email/SettingsUtils;->deleteAccountsTableRow(JLandroid/content/Context;)Z

    .line 838
    iget-wide v6, v2, Lcom/android/server/enterprise/email/AccountMetaData;->mHostAuthKeyRecv:J

    sget-object v8, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    invoke-static {v3, v6, v7, v8}, Lcom/android/server/enterprise/email/SettingsUtils;->deleteHostAuthTableRow(Landroid/net/Uri;JLandroid/content/Context;)Z

    .line 840
    iget-wide v6, v2, Lcom/android/server/enterprise/email/AccountMetaData;->mHostAuthKeySend:J

    sget-object v8, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    invoke-static {v3, v6, v7, v8}, Lcom/android/server/enterprise/email/SettingsUtils;->deleteHostAuthTableRow(Landroid/net/Uri;JLandroid/content/Context;)Z

    .line 843
    iget v6, v2, Lcom/android/server/enterprise/email/AccountMetaData;->mId:I

    int-to-long v6, v6

    sget-object v8, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    invoke-static {v15, v6, v7, v8}, Lcom/android/server/enterprise/email/SettingsUtils;->deleteAccountTableRow(IJLandroid/content/Context;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v17

    .line 848
    :goto_2
    add-int/lit8 v18, v18, 0x1

    .line 850
    if-eqz v17, :cond_7

    .line 851
    :try_start_5
    iget-boolean v6, v2, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    if-eqz v6, :cond_5

    .line 852
    iget-object v8, v2, Lcom/android/server/enterprise/email/AccountMetaData;->mEasDomain:Ljava/lang/String;

    iget-object v9, v2, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    iget-object v10, v2, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerAddress:Ljava/lang/String;

    iget-object v11, v2, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingProtocol:Ljava/lang/String;

    const/4 v12, 0x1

    sget-object v13, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    move-object v6, v3

    move-object v7, v4

    move-object/from16 v14, p0

    invoke-static/range {v6 .. v14}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountIdInternal(Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;Landroid/app/enterprise/ContextInfo;)J
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-wide p1

    .line 860
    :goto_3
    const-wide/16 v6, -0x1

    cmp-long v6, v6, p1

    if-nez v6, :cond_6

    .line 872
    :cond_2
    :goto_4
    if-lez v18, :cond_8

    const/4 v6, 0x1

    goto/16 :goto_0

    .line 816
    :cond_3
    :try_start_6
    move-object/from16 v0, p0

    iget v6, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v6}, Lcom/android/server/enterprise/email/SettingsUtils;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-instance v8, Landroid/os/UserHandle;

    move/from16 v0, v19

    invoke-direct {v8, v0}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v6, v7, v8}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v6

    sput-object v6, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    .line 817
    const-string v6, "SettingsUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "deleteAccount : USER space   "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget v8, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v8}, Lcom/android/server/enterprise/email/SettingsUtils;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1

    .line 823
    :catch_0
    move-exception v16

    .line 824
    .local v16, "e":Ljava/lang/Exception;
    :try_start_7
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 825
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 821
    .end local v16    # "e":Ljava/lang/Exception;
    :cond_4
    :try_start_8
    sput-object p3, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_1

    .line 797
    .end local v2    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    .end local v3    # "hostUri":Landroid/net/Uri;
    .end local v4    # "acctUri":Landroid/net/Uri;
    .end local v5    # "policiesUri":Landroid/net/Uri;
    .end local v15    # "containerId":I
    .end local v17    # "found":Z
    .end local v19    # "userID":I
    :catchall_0
    move-exception v6

    monitor-exit v20

    throw v6

    .line 845
    .restart local v2    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    .restart local v3    # "hostUri":Landroid/net/Uri;
    .restart local v4    # "acctUri":Landroid/net/Uri;
    .restart local v5    # "policiesUri":Landroid/net/Uri;
    .restart local v15    # "containerId":I
    .restart local v17    # "found":Z
    .restart local v19    # "userID":I
    :catch_1
    move-exception v16

    .line 846
    .restart local v16    # "e":Ljava/lang/Exception;
    :try_start_9
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_2

    .line 869
    .end local v16    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v16

    .line 870
    .restart local v16    # "e":Ljava/lang/Exception;
    :try_start_a
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_4

    .line 856
    .end local v16    # "e":Ljava/lang/Exception;
    :cond_5
    const/4 v8, 0x0

    :try_start_b
    iget-object v9, v2, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    iget-object v10, v2, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerAddress:Ljava/lang/String;

    iget-object v11, v2, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingProtocol:Ljava/lang/String;

    const/4 v12, 0x0

    sget-object v13, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    move-object v6, v3

    move-object v7, v4

    move-object/from16 v14, p0

    invoke-static/range {v6 .. v14}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountIdInternal(Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;Landroid/app/enterprise/ContextInfo;)J

    move-result-wide p1

    goto :goto_3

    .line 862
    :cond_6
    sget-object v8, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    const/4 v9, 0x0

    move-wide/from16 v6, p1

    move-object/from16 v10, p0

    invoke-static/range {v3 .. v10}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccount(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;JLandroid/content/Context;ZLandroid/app/enterprise/ContextInfo;)Lcom/android/server/enterprise/email/AccountMetaData;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-result-object v2

    .line 863
    if-eqz v2, :cond_2

    .line 867
    :cond_7
    if-nez v17, :cond_1

    goto :goto_4

    .line 872
    :cond_8
    const/4 v6, 0x0

    goto/16 :goto_0
.end method

.method static deleteAccountTableRow(IJLandroid/content/Context;)Z
    .locals 7
    .param p0, "containerId"    # I
    .param p1, "rowId"    # J
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 904
    const/4 v1, -0x1

    .line 905
    .local v1, "rowCount":I
    const-wide/16 v4, 0x1

    cmp-long v4, v4, p1

    if-lez v4, :cond_1

    .line 906
    const-string v4, "SettingsUtils"

    const-string/jumbo v5, "deleteAccountTableRow : rowId is invalid"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 916
    :cond_0
    :goto_0
    return v3

    .line 910
    :cond_1
    :try_start_0
    invoke-static {p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountContentUri(I)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 911
    .local v2, "uri":Landroid/net/Uri;
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v2, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 912
    const-string v4, "SettingsUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "deleteAccountTableRow : deleted rowCount from Account : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 916
    .end local v2    # "uri":Landroid/net/Uri;
    :goto_1
    if-lez v1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    .line 913
    :catch_0
    move-exception v0

    .line 914
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private static deleteAccountsTableRow(JLandroid/content/Context;)Z
    .locals 10
    .param p0, "rowId"    # J
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    .line 516
    const/4 v0, 0x0

    .line 517
    .local v0, "accountsDB":Landroid/database/sqlite/SQLiteDatabase;
    const-wide/16 v6, 0x1

    cmp-long v6, v6, p0

    if-lez v6, :cond_1

    .line 518
    const-string v4, "SettingsUtils"

    const-string/jumbo v5, "deleteAccountsTableRow : rowId is invalid"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    :cond_0
    :goto_0
    return v3

    .line 523
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->makeDBpath()V

    .line 524
    sget-object v6, Lcom/android/server/enterprise/email/SettingsUtils;->ACCOUNTS_DB:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 527
    const-string v6, "accounts"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v0, v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 528
    .local v2, "rowCount":I
    if-lez v2, :cond_4

    .line 529
    :goto_1
    const-string v6, "SettingsUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "deleteAccountsTableRow - deleted row Id : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 535
    if-eqz v0, :cond_2

    .line 536
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 538
    :cond_2
    cmp-long v6, p0, v4

    if-eqz v6, :cond_3

    .line 540
    sget v6, Lcom/android/server/enterprise/email/SettingsUtils;->currentUserID:I

    invoke-static {v6}, Lcom/android/server/enterprise/adapterlayer/UtilsAdapter;->updateAccountManagerCache(I)V

    .line 543
    .end local v2    # "rowCount":I
    :cond_3
    :goto_2
    cmp-long v4, v4, p0

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    .restart local v2    # "rowCount":I
    :cond_4
    move-wide p0, v4

    .line 528
    goto :goto_1

    .line 531
    .end local v2    # "rowCount":I
    :catch_0
    move-exception v1

    .line 532
    .local v1, "e":Ljava/lang/Exception;
    const-wide/16 p0, -0x1

    .line 533
    :try_start_1
    const-string v6, "SettingsUtils"

    const-string/jumbo v7, "deleteAccountsTableRow() : failed. "

    invoke-static {v6, v7, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 535
    if-eqz v0, :cond_5

    .line 536
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 538
    :cond_5
    cmp-long v6, p0, v4

    if-eqz v6, :cond_3

    .line 540
    sget v6, Lcom/android/server/enterprise/email/SettingsUtils;->currentUserID:I

    invoke-static {v6}, Lcom/android/server/enterprise/adapterlayer/UtilsAdapter;->updateAccountManagerCache(I)V

    goto :goto_2

    .line 535
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_6

    .line 536
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 538
    :cond_6
    cmp-long v4, p0, v4

    if-eqz v4, :cond_7

    .line 540
    sget v4, Lcom/android/server/enterprise/email/SettingsUtils;->currentUserID:I

    invoke-static {v4}, Lcom/android/server/enterprise/adapterlayer/UtilsAdapter;->updateAccountManagerCache(I)V

    :cond_7
    throw v3
.end method

.method private static deleteHostAuthTableRow(Landroid/net/Uri;JLandroid/content/Context;)Z
    .locals 7
    .param p0, "hostUri"    # Landroid/net/Uri;
    .param p1, "rowId"    # J
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 882
    const/4 v1, -0x1

    .line 883
    .local v1, "rowCount":I
    const-wide/16 v4, 0x1

    cmp-long v4, v4, p1

    if-lez v4, :cond_1

    .line 884
    const-string v4, "SettingsUtils"

    const-string/jumbo v5, "deleteHostAuthTableRow : rowId is invalid"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 894
    :cond_0
    :goto_0
    return v3

    .line 888
    :cond_1
    :try_start_0
    invoke-static {p0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 889
    .local v2, "uri":Landroid/net/Uri;
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v2, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 890
    const-string v4, "SettingsUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "deleteHostAuthTableRow : deleted rowCount from HostAuth : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 894
    .end local v2    # "uri":Landroid/net/Uri;
    :goto_1
    if-lez v1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    .line 891
    :catch_0
    move-exception v0

    .line 892
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private static getAccount(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;JLandroid/content/Context;ZLandroid/app/enterprise/ContextInfo;)Lcom/android/server/enterprise/email/AccountMetaData;
    .locals 33
    .param p0, "hostUri"    # Landroid/net/Uri;
    .param p1, "acctUri"    # Landroid/net/Uri;
    .param p2, "policiesUri"    # Landroid/net/Uri;
    .param p3, "accountId"    # J
    .param p5, "context"    # Landroid/content/Context;
    .param p6, "passwordRequired"    # Z
    .param p7, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1060
    const/16 v19, 0x0

    .line 1061
    .local v19, "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    const/16 v20, 0x0

    .line 1062
    .local v20, "c":Landroid/database/Cursor;
    const/16 v21, 0x0

    .line 1064
    .local v21, "c2":Landroid/database/Cursor;
    const-wide/16 v6, 0x0

    cmp-long v6, p3, v6

    if-gtz v6, :cond_0

    .line 1065
    const-string v6, "SettingsUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getEASAccounts fail : invalid account Id"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, p3

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v12, v19

    .line 1200
    .end local v19    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    :goto_0
    return-object v19

    .line 1069
    .restart local v19    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    :cond_0
    invoke-static/range {p7 .. p7}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v32

    .line 1070
    .local v32, "userID":I
    move-object/from16 v0, p7

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    move/from16 v22, v0

    .line 1071
    .local v22, "containerId":I
    const-string v6, "SettingsUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getEASAccounts() :    "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v32

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1072
    const/16 v6, 0x17

    new-array v8, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_id"

    aput-object v7, v8, v6

    const/4 v6, 0x1

    const-string/jumbo v7, "displayName"

    aput-object v7, v8, v6

    const/4 v6, 0x2

    const-string/jumbo v7, "emailAddress"

    aput-object v7, v8, v6

    const/4 v6, 0x3

    const-string/jumbo v7, "syncLookback"

    aput-object v7, v8, v6

    const/4 v6, 0x4

    const-string/jumbo v7, "syncInterval"

    aput-object v7, v8, v6

    const/4 v6, 0x5

    const-string/jumbo v7, "peakDays"

    aput-object v7, v8, v6

    const/4 v6, 0x6

    const-string/jumbo v7, "peakStartMinute"

    aput-object v7, v8, v6

    const/4 v6, 0x7

    const-string/jumbo v7, "peakEndMinute"

    aput-object v7, v8, v6

    const/16 v6, 0x8

    const-string/jumbo v7, "peakSchedule"

    aput-object v7, v8, v6

    const/16 v6, 0x9

    const-string/jumbo v7, "offPeakSchedule"

    aput-object v7, v8, v6

    const/16 v6, 0xa

    const-string/jumbo v7, "roamingSchedule"

    aput-object v7, v8, v6

    const/16 v6, 0xb

    const-string/jumbo v7, "hostAuthKeyRecv"

    aput-object v7, v8, v6

    const/16 v6, 0xc

    const-string/jumbo v7, "hostAuthKeySend"

    aput-object v7, v8, v6

    const/16 v6, 0xd

    const-string/jumbo v7, "flags"

    aput-object v7, v8, v6

    const/16 v6, 0xe

    const-string/jumbo v7, "isDefault"

    aput-object v7, v8, v6

    const/16 v6, 0xf

    const-string v7, "compatibilityUuid"

    aput-object v7, v8, v6

    const/16 v6, 0x10

    const-string/jumbo v7, "senderName"

    aput-object v7, v8, v6

    const/16 v6, 0x11

    const-string/jumbo v7, "ringtoneUri"

    aput-object v7, v8, v6

    const/16 v6, 0x12

    const-string/jumbo v7, "protocolVersion"

    aput-object v7, v8, v6

    const/16 v6, 0x13

    const-string/jumbo v7, "signature"

    aput-object v7, v8, v6

    const/16 v6, 0x14

    const-string v7, "calendarSyncLookback"

    aput-object v7, v8, v6

    const/16 v6, 0x15

    const-string/jumbo v7, "emailsize"

    aput-object v7, v8, v6

    const/16 v6, 0x16

    const-string/jumbo v7, "roamingemailsize"

    aput-object v7, v8, v6

    .line 1085
    .local v8, "ID_PROJECTION":[Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v30

    .line 1087
    .local v30, "token":J
    if-eqz v32, :cond_5

    .line 1088
    :try_start_0
    move/from16 v0, v32

    move-object/from16 v1, p5

    invoke-static {v0, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->isPersona(ILandroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1089
    invoke-static/range {v22 .. v22}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-instance v9, Landroid/os/UserHandle;

    move/from16 v0, v32

    invoke-direct {v9, v0}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, p5

    invoke-virtual {v0, v6, v7, v9}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v6

    sput-object v6, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    .line 1090
    const-string v6, "SettingsUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getAccountDetails for Persona : USER space   "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static/range {v22 .. v22}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1106
    :goto_1
    :try_start_1
    sget-object v6, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_id = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, p3

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v7, p1

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 1108
    if-eqz v20, :cond_6

    .line 1109
    const-string v6, "SettingsUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getAccount row count : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1113
    :goto_2
    if-eqz v20, :cond_15

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_15

    .line 1114
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1115
    new-instance v12, Lcom/android/server/enterprise/email/AccountMetaData;

    invoke-direct {v12}, Lcom/android/server/enterprise/email/AccountMetaData;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1116
    .end local v19    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    .local v12, "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    :try_start_2
    const-string v6, "_id"

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v12, Lcom/android/server/enterprise/email/AccountMetaData;->mId:I

    .line 1117
    const-string/jumbo v6, "displayName"

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v12, Lcom/android/server/enterprise/email/AccountMetaData;->mDisplayName:Ljava/lang/String;

    .line 1118
    const-string/jumbo v6, "emailAddress"

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v12, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    .line 1119
    const-string/jumbo v6, "syncLookback"

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v12, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncLookback:I

    .line 1120
    const-string/jumbo v6, "syncInterval"

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v12, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncInterval:I

    .line 1121
    const-string/jumbo v6, "peakDays"

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v12, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakDays:I

    .line 1122
    const-string/jumbo v6, "peakStartMinute"

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v12, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakStartMinute:I

    .line 1123
    const-string/jumbo v6, "peakEndMinute"

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v12, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakEndMinute:I

    .line 1124
    const-string/jumbo v6, "peakSchedule"

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v12, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakSyncSchedule:I

    .line 1125
    const-string/jumbo v6, "offPeakSchedule"

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v12, Lcom/android/server/enterprise/email/AccountMetaData;->mOffPeakSyncSchedule:I

    .line 1127
    const-string/jumbo v6, "roamingSchedule"

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v12, Lcom/android/server/enterprise/email/AccountMetaData;->mRoamingSyncSchedule:I

    .line 1129
    const-string/jumbo v6, "hostAuthKeyRecv"

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v12, Lcom/android/server/enterprise/email/AccountMetaData;->mHostAuthKeyRecv:J

    .line 1131
    const-string/jumbo v6, "hostAuthKeySend"

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v12, Lcom/android/server/enterprise/email/AccountMetaData;->mHostAuthKeySend:J

    .line 1133
    const-string/jumbo v6, "flags"

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v12, Lcom/android/server/enterprise/email/AccountMetaData;->mFlags:I

    .line 1134
    const/4 v6, 0x2

    iget v7, v12, Lcom/android/server/enterprise/email/AccountMetaData;->mFlags:I

    and-int/lit8 v7, v7, 0x2

    if-ne v6, v7, :cond_9

    const/4 v6, 0x1

    :goto_3
    iput-boolean v6, v12, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailNotificationVibrateAlways:Z

    .line 1135
    const/16 v6, 0x40

    iget v7, v12, Lcom/android/server/enterprise/email/AccountMetaData;->mFlags:I

    and-int/lit8 v7, v7, 0x40

    if-ne v6, v7, :cond_a

    const/4 v6, 0x1

    :goto_4
    iput-boolean v6, v12, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailNotificationVibrateWhenSilent:Z

    .line 1136
    const-string/jumbo v6, "isDefault"

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_b

    const/4 v6, 0x1

    :goto_5
    iput-boolean v6, v12, Lcom/android/server/enterprise/email/AccountMetaData;->mIsDefault:Z

    .line 1137
    const-string v6, "compatibilityUuid"

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v12, Lcom/android/server/enterprise/email/AccountMetaData;->mCompatibilityUuid:Ljava/lang/String;

    .line 1139
    const-string/jumbo v6, "senderName"

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v12, Lcom/android/server/enterprise/email/AccountMetaData;->mSenderName:Ljava/lang/String;

    .line 1140
    const-string/jumbo v6, "ringtoneUri"

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v12, Lcom/android/server/enterprise/email/AccountMetaData;->mRingtoneUri:Ljava/lang/String;

    .line 1141
    const-string/jumbo v6, "protocolVersion"

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v12, Lcom/android/server/enterprise/email/AccountMetaData;->mProtocolVersion:Ljava/lang/String;

    .line 1143
    const-string/jumbo v6, "signature"

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v12, Lcom/android/server/enterprise/email/AccountMetaData;->mSignature:Ljava/lang/String;

    .line 1144
    const-string v6, "calendarSyncLookback"

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v12, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncCalendarAge:I

    .line 1145
    const-string/jumbo v6, "emailsize"

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v12, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailBodyTruncationSize:I

    .line 1146
    const-string/jumbo v6, "roamingemailsize"

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v12, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailRoamingBodyTruncationSize:I

    .line 1149
    iget-wide v10, v12, Lcom/android/server/enterprise/email/AccountMetaData;->mHostAuthKeyRecv:J

    const/4 v13, 0x1

    sget-object v14, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    move-object/from16 v9, p0

    invoke-static/range {v9 .. v14}, Lcom/android/server/enterprise/email/SettingsUtils;->loadHostAuth(Landroid/net/Uri;JLcom/android/server/enterprise/email/AccountMetaData;ZLandroid/content/Context;)Z

    move-result v28

    .line 1150
    .local v28, "ret1":Z
    iget-wide v10, v12, Lcom/android/server/enterprise/email/AccountMetaData;->mHostAuthKeySend:J

    const/4 v13, 0x0

    sget-object v14, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    move-object/from16 v9, p0

    invoke-static/range {v9 .. v14}, Lcom/android/server/enterprise/email/SettingsUtils;->loadHostAuth(Landroid/net/Uri;JLcom/android/server/enterprise/email/AccountMetaData;ZLandroid/content/Context;)Z

    move-result v29

    .line 1152
    .local v29, "ret2":Z
    if-eqz v28, :cond_1

    if-nez v29, :cond_c

    .line 1153
    :cond_1
    const/4 v12, 0x0

    .line 1154
    const-string v6, "SettingsUtils"

    const-string/jumbo v7, "getAccountIds : null "

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1193
    if-eqz v20, :cond_2

    .line 1194
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 1195
    :cond_2
    if-eqz v21, :cond_3

    .line 1196
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object/from16 v19, v12

    .end local v12    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    .restart local v19    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    goto/16 :goto_0

    .line 1092
    .end local v28    # "ret1":Z
    .end local v29    # "ret2":Z
    :cond_4
    :try_start_3
    move-object/from16 v0, p7

    iget v6, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v6}, Lcom/android/server/enterprise/email/SettingsUtils;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-instance v9, Landroid/os/UserHandle;

    move/from16 v0, v32

    invoke-direct {v9, v0}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, p5

    invoke-virtual {v0, v6, v7, v9}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v6

    sput-object v6, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    .line 1093
    const-string v6, "SettingsUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getAccountDetails : USER space   "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p7

    iget v9, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v9}, Lcom/android/server/enterprise/email/SettingsUtils;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    .line 1100
    :catch_0
    move-exception v23

    .line 1101
    .local v23, "e":Ljava/lang/Exception;
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Exception;->printStackTrace()V

    move-object/from16 v12, v19

    .line 1102
    .end local v19    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    .restart local v12    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    goto/16 :goto_0

    .line 1097
    .end local v12    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    .end local v23    # "e":Ljava/lang/Exception;
    .restart local v19    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    :cond_5
    :try_start_4
    sput-object p5, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_1

    .line 1111
    :cond_6
    :try_start_5
    const-string v6, "SettingsUtils"

    const-string/jumbo v7, "getAccount row count : Email cursor is invalid"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_2

    .line 1190
    :catch_1
    move-exception v23

    move-object/from16 v12, v19

    .line 1191
    .end local v19    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    .restart local v12    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    .restart local v23    # "e":Ljava/lang/Exception;
    :goto_6
    :try_start_6
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1193
    if-eqz v20, :cond_7

    .line 1194
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 1195
    :cond_7
    if-eqz v21, :cond_8

    .line 1196
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 1199
    .end local v23    # "e":Ljava/lang/Exception;
    :cond_8
    :goto_7
    invoke-static/range {v30 .. v31}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object/from16 v19, v12

    .line 1200
    .end local v12    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    .restart local v19    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    goto/16 :goto_0

    .line 1134
    .end local v19    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    .restart local v12    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    :cond_9
    const/4 v6, 0x0

    goto/16 :goto_3

    .line 1135
    :cond_a
    const/4 v6, 0x0

    goto/16 :goto_4

    .line 1136
    :cond_b
    const/4 v6, 0x0

    goto/16 :goto_5

    .line 1158
    .restart local v28    # "ret1":Z
    .restart local v29    # "ret2":Z
    :cond_c
    if-eqz p6, :cond_d

    .line 1159
    :try_start_7
    move/from16 v0, v22

    move-wide/from16 v1, p3

    move-object/from16 v3, p5

    move/from16 v4, v32

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/email/SettingsUtils;->getPassword(IJLandroid/content/Context;I)[Ljava/lang/String;

    move-result-object v26

    .line 1160
    .local v26, "pwds":[Ljava/lang/String;
    const/4 v6, 0x0

    aget-object v6, v26, v6

    iput-object v6, v12, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPassword:Ljava/lang/String;

    .line 1161
    const/4 v6, 0x1

    aget-object v6, v26, v6

    iput-object v6, v12, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPassword:Ljava/lang/String;

    .line 1164
    .end local v26    # "pwds":[Ljava/lang/String;
    :cond_d
    const/4 v6, 0x0

    iput-boolean v6, v12, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    .line 1165
    iget-object v6, v12, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingProtocol:Ljava/lang/String;

    const-string/jumbo v7, "eas"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 1166
    iget-object v6, v12, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/server/enterprise/email/SettingsUtils;->getEasDomainAndUserFromLogin(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    .line 1167
    .local v27, "ret":[Ljava/lang/String;
    const/4 v6, 0x1

    iput-boolean v6, v12, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    .line 1168
    const/4 v6, 0x0

    aget-object v6, v27, v6

    iput-object v6, v12, Lcom/android/server/enterprise/email/AccountMetaData;->mEasDomain:Ljava/lang/String;

    .line 1169
    const/4 v6, 0x1

    aget-object v6, v27, v6

    iput-object v6, v12, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    .line 1170
    const/4 v6, 0x1

    aget-object v6, v27, v6

    iput-object v6, v12, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerLogin:Ljava/lang/String;

    .line 1172
    .end local v27    # "ret":[Ljava/lang/String;
    :cond_e
    const/4 v6, 0x1

    iput-boolean v6, v12, Lcom/android/server/enterprise/email/AccountMetaData;->mAllowHTMLEmail:Z

    .line 1173
    const/4 v6, 0x5

    new-array v15, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_id"

    aput-object v7, v15, v6

    const/4 v6, 0x1

    const-string/jumbo v7, "name"

    aput-object v7, v15, v6

    const/4 v6, 0x2

    const-string/jumbo v7, "type"

    aput-object v7, v15, v6

    const/4 v6, 0x3

    const-string/jumbo v7, "value"

    aput-object v7, v15, v6

    const/4 v6, 0x4

    const-string v7, "account_id"

    aput-object v7, v15, v6

    .line 1175
    .local v15, "POLICIES_PROJECTION":[Ljava/lang/String;
    sget-object v6, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "account_id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p3

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v14, p2

    invoke-virtual/range {v13 .. v18}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v21

    .line 1176
    if-eqz v21, :cond_11

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_11

    .line 1177
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_11

    .line 1179
    :cond_f
    const-string/jumbo v6, "value"

    move-object/from16 v0, v21

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v21

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 1180
    .local v25, "policyvalue":Ljava/lang/String;
    const-string/jumbo v6, "name"

    move-object/from16 v0, v21

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v21

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 1181
    .local v24, "policyname":Ljava/lang/String;
    if-eqz v24, :cond_10

    if-eqz v25, :cond_10

    .line 1182
    const-string v6, "AllowHTMLEmail"

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 1183
    const-string/jumbo v6, "true"

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, v12, Lcom/android/server/enterprise/email/AccountMetaData;->mAllowHTMLEmail:Z

    .line 1186
    :cond_10
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result v6

    if-nez v6, :cond_f

    .line 1193
    .end local v15    # "POLICIES_PROJECTION":[Ljava/lang/String;
    .end local v24    # "policyname":Ljava/lang/String;
    .end local v25    # "policyvalue":Ljava/lang/String;
    .end local v28    # "ret1":Z
    .end local v29    # "ret2":Z
    :cond_11
    :goto_8
    if-eqz v20, :cond_12

    .line 1194
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 1195
    :cond_12
    if-eqz v21, :cond_8

    .line 1196
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    goto/16 :goto_7

    .line 1193
    .end local v12    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    .restart local v19    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    :catchall_0
    move-exception v6

    move-object/from16 v12, v19

    .end local v19    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    .restart local v12    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    :goto_9
    if-eqz v20, :cond_13

    .line 1194
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 1195
    :cond_13
    if-eqz v21, :cond_14

    .line 1196
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    :cond_14
    throw v6

    .line 1193
    :catchall_1
    move-exception v6

    goto :goto_9

    .line 1190
    :catch_2
    move-exception v23

    goto/16 :goto_6

    .end local v12    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    .restart local v19    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    :cond_15
    move-object/from16 v12, v19

    .end local v19    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    .restart local v12    # "ac":Lcom/android/server/enterprise/email/AccountMetaData;
    goto :goto_8
.end method

.method private static getAccountCBContentUri(I)Landroid/net/Uri;
    .locals 2
    .param p0, "containerId"    # I

    .prologue
    .line 1503
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->isSupportNewEmail()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1505
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/accountcb"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1511
    :goto_0
    return-object v0

    .line 1508
    :cond_0
    if-nez p0, :cond_1

    .line 1509
    sget-object v0, Lcom/android/server/enterprise/email/SettingsUtils;->ACCOUNTCB_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 1511
    :cond_1
    const-string/jumbo v0, "content://com.android.email.provider/accountcb"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public static getAccountContentUri(I)Landroid/net/Uri;
    .locals 2
    .param p0, "containerId"    # I

    .prologue
    .line 1468
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->isSupportNewEmail()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1470
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/account"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1476
    :goto_0
    return-object v0

    .line 1472
    :cond_0
    if-gtz p0, :cond_1

    .line 1473
    const-string v0, "SettingsUtils"

    const-string/jumbo v1, "getAccountContentUri"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1474
    sget-object v0, Lcom/android/server/enterprise/email/SettingsUtils;->ACCOUNT_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 1476
    :cond_1
    const-string/jumbo v0, "content://com.android.email.provider/account"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method static declared-synchronized getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Lcom/android/server/enterprise/email/AccountMetaData;
    .locals 11
    .param p0, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p1, "accountId"    # J
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 1041
    const-class v9, Lcom/android/server/enterprise/email/SettingsUtils;

    monitor-enter v9

    :try_start_0
    iget v0, p0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 1042
    .local v0, "containerId":I
    invoke-static {v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getHostAuthContentUri(I)Landroid/net/Uri;

    move-result-object v1

    .line 1043
    .local v1, "hostUri":Landroid/net/Uri;
    invoke-static {v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountContentUri(I)Landroid/net/Uri;

    move-result-object v2

    .line 1044
    .local v2, "acctUri":Landroid/net/Uri;
    invoke-static {v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getPoliciesContentUri(I)Landroid/net/Uri;

    move-result-object v3

    .line 1045
    .local v3, "policiesUri":Landroid/net/Uri;
    const/4 v7, 0x0

    move-wide v4, p1

    move-object v6, p3

    move-object v8, p0

    invoke-static/range {v1 .. v8}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccount(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;JLandroid/content/Context;ZLandroid/app/enterprise/ContextInfo;)Lcom/android/server/enterprise/email/AccountMetaData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    monitor-exit v9

    return-object v4

    .line 1041
    .end local v0    # "containerId":I
    .end local v1    # "hostUri":Landroid/net/Uri;
    .end local v2    # "acctUri":Landroid/net/Uri;
    .end local v3    # "policiesUri":Landroid/net/Uri;
    :catchall_0
    move-exception v4

    monitor-exit v9

    throw v4
.end method

.method static declared-synchronized getAccountDetails(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;Z)Lcom/android/server/enterprise/email/AccountMetaData;
    .locals 11
    .param p0, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p1, "accountId"    # J
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "passwordRequired"    # Z

    .prologue
    .line 1050
    const-class v9, Lcom/android/server/enterprise/email/SettingsUtils;

    monitor-enter v9

    :try_start_0
    iget v0, p0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 1051
    .local v0, "containerId":I
    const-string v4, "SettingsUtils"

    const-string/jumbo v5, "getAccountDetails() :  with P"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1052
    invoke-static {v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getHostAuthContentUri(I)Landroid/net/Uri;

    move-result-object v1

    .line 1053
    .local v1, "hostUri":Landroid/net/Uri;
    invoke-static {v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountContentUri(I)Landroid/net/Uri;

    move-result-object v2

    .line 1054
    .local v2, "acctUri":Landroid/net/Uri;
    invoke-static {v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getPoliciesContentUri(I)Landroid/net/Uri;

    move-result-object v3

    .local v3, "policiesUri":Landroid/net/Uri;
    move-wide v4, p1

    move-object v6, p3

    move v7, p4

    move-object v8, p0

    .line 1055
    invoke-static/range {v1 .. v8}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccount(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;JLandroid/content/Context;ZLandroid/app/enterprise/ContextInfo;)Lcom/android/server/enterprise/email/AccountMetaData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    monitor-exit v9

    return-object v4

    .line 1050
    .end local v0    # "containerId":I
    .end local v1    # "hostUri":Landroid/net/Uri;
    .end local v2    # "acctUri":Landroid/net/Uri;
    .end local v3    # "policiesUri":Landroid/net/Uri;
    :catchall_0
    move-exception v4

    monitor-exit v9

    throw v4
.end method

.method public static getAccountFromEnterpriseEmailAccount(Landroid/sec/enterprise/email/EnterpriseEmailAccount;)Landroid/app/enterprise/Account;
    .locals 10
    .param p0, "info"    # Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    .prologue
    const-wide/16 v8, -0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 1782
    const-string v2, "SettingsUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getAccountFromEnterpriseEmailAccount() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1783
    const/4 v0, 0x0

    .line 1784
    .local v0, "acc":Landroid/app/enterprise/Account;
    if-nez p0, :cond_0

    move-object v1, v0

    .line 1835
    .end local v0    # "acc":Landroid/app/enterprise/Account;
    .local v1, "acc":Landroid/app/enterprise/Account;
    :goto_0
    return-object v1

    .line 1787
    .end local v1    # "acc":Landroid/app/enterprise/Account;
    .restart local v0    # "acc":Landroid/app/enterprise/Account;
    :cond_0
    new-instance v0, Landroid/app/enterprise/Account;

    .end local v0    # "acc":Landroid/app/enterprise/Account;
    invoke-direct {v0}, Landroid/app/enterprise/Account;-><init>()V

    .line 1788
    .restart local v0    # "acc":Landroid/app/enterprise/Account;
    iget-wide v2, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mId:J

    long-to-int v2, v2

    iput v2, v0, Landroid/app/enterprise/Account;->mId:I

    .line 1789
    iget-object v2, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mDisplayName:Ljava/lang/String;

    iput-object v2, v0, Landroid/app/enterprise/Account;->mDisplayName:Ljava/lang/String;

    .line 1790
    iget-object v2, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mEmailAddress:Ljava/lang/String;

    iput-object v2, v0, Landroid/app/enterprise/Account;->mEmailAddress:Ljava/lang/String;

    .line 1791
    const-string v2, "0"

    iput-object v2, v0, Landroid/app/enterprise/Account;->mSyncKey:Ljava/lang/String;

    .line 1792
    iget v2, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mSyncLookback:I

    iput v2, v0, Landroid/app/enterprise/Account;->mSyncLookback:I

    .line 1793
    iget v2, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mSyncInterval:I

    iput v2, v0, Landroid/app/enterprise/Account;->mSyncInterval:I

    .line 1794
    iput-wide v8, v0, Landroid/app/enterprise/Account;->mHostAuthKeyRecv:J

    .line 1795
    iput-wide v8, v0, Landroid/app/enterprise/Account;->mHostAuthKeySend:J

    .line 1796
    iput v6, v0, Landroid/app/enterprise/Account;->mFlags:I

    .line 1797
    iget-boolean v2, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mIsDefault:Z

    iput-boolean v2, v0, Landroid/app/enterprise/Account;->mIsDefault:Z

    .line 1798
    iput-object v5, v0, Landroid/app/enterprise/Account;->mCompatibilityUuid:Ljava/lang/String;

    .line 1799
    iget-object v2, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mSenderName:Ljava/lang/String;

    iput-object v2, v0, Landroid/app/enterprise/Account;->mSenderName:Ljava/lang/String;

    .line 1800
    iput-object v5, v0, Landroid/app/enterprise/Account;->mRingtoneUri:Ljava/lang/String;

    .line 1801
    iput-object v5, v0, Landroid/app/enterprise/Account;->mProtocolVersion:Ljava/lang/String;

    .line 1802
    iput-object v5, v0, Landroid/app/enterprise/Account;->mSecuritySyncKey:Ljava/lang/String;

    .line 1803
    iget-object v2, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mSignature:Ljava/lang/String;

    iput-object v2, v0, Landroid/app/enterprise/Account;->mSignature:Ljava/lang/String;

    .line 1804
    iget-boolean v2, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mEmailNotificationVibrateAlways:Z

    iput-boolean v2, v0, Landroid/app/enterprise/Account;->mEmailNotificationVibrateAlways:Z

    .line 1805
    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/app/enterprise/Account;->mEmailNotificationVibrateWhenSilent:Z

    .line 1807
    new-instance v2, Landroid/app/enterprise/HostAuth;

    invoke-direct {v2}, Landroid/app/enterprise/HostAuth;-><init>()V

    iput-object v2, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    .line 1808
    iget-object v2, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iput v6, v2, Landroid/app/enterprise/HostAuth;->mId:I

    .line 1809
    iget-object v2, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iget-object v3, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mInComingProtocol:Ljava/lang/String;

    iput-object v3, v2, Landroid/app/enterprise/HostAuth;->mProtocol:Ljava/lang/String;

    .line 1810
    iget-object v2, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iget-object v3, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mInComingServerAddress:Ljava/lang/String;

    iput-object v3, v2, Landroid/app/enterprise/HostAuth;->mAddress:Ljava/lang/String;

    .line 1811
    iget-object v2, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iget v3, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mInComingServerPort:I

    iput v3, v2, Landroid/app/enterprise/HostAuth;->mPort:I

    .line 1812
    iget-object v2, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iput v6, v2, Landroid/app/enterprise/HostAuth;->mFlags:I

    .line 1813
    iget-object v2, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iget-object v3, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mInComingUserName:Ljava/lang/String;

    iput-object v3, v2, Landroid/app/enterprise/HostAuth;->mLogin:Ljava/lang/String;

    .line 1814
    iget-object v2, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iget-object v3, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mInComingPassword:Ljava/lang/String;

    iput-object v3, v2, Landroid/app/enterprise/HostAuth;->mPassword:Ljava/lang/String;

    .line 1815
    iget-object v2, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iput-object v5, v2, Landroid/app/enterprise/HostAuth;->mDomain:Ljava/lang/String;

    .line 1816
    iget-object v2, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iput-wide v8, v2, Landroid/app/enterprise/HostAuth;->mAccountKey:J

    .line 1817
    iget-object v2, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iget-boolean v3, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mInComingUseSSL:Z

    iput-boolean v3, v2, Landroid/app/enterprise/HostAuth;->mUseSSL:Z

    .line 1818
    iget-object v2, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iget-boolean v3, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mInComingUseTLS:Z

    iput-boolean v3, v2, Landroid/app/enterprise/HostAuth;->mUseTLS:Z

    .line 1819
    iget-object v2, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iget-boolean v3, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mInComingAcceptAllCertificates:Z

    iput-boolean v3, v2, Landroid/app/enterprise/HostAuth;->mAcceptAllCertificates:Z

    .line 1821
    new-instance v2, Landroid/app/enterprise/HostAuth;

    invoke-direct {v2}, Landroid/app/enterprise/HostAuth;-><init>()V

    iput-object v2, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    .line 1822
    iget-object v2, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iput v6, v2, Landroid/app/enterprise/HostAuth;->mId:I

    .line 1823
    iget-object v2, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iget-object v3, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mOutgoingProtocol:Ljava/lang/String;

    iput-object v3, v2, Landroid/app/enterprise/HostAuth;->mProtocol:Ljava/lang/String;

    .line 1824
    iget-object v2, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iget-object v3, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mOutgoingServerAddress:Ljava/lang/String;

    iput-object v3, v2, Landroid/app/enterprise/HostAuth;->mAddress:Ljava/lang/String;

    .line 1825
    iget-object v2, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iget v3, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mOutgoingServerPort:I

    iput v3, v2, Landroid/app/enterprise/HostAuth;->mPort:I

    .line 1826
    iget-object v2, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iput v6, v2, Landroid/app/enterprise/HostAuth;->mFlags:I

    .line 1827
    iget-object v2, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iget-object v3, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mOutgoingUserName:Ljava/lang/String;

    iput-object v3, v2, Landroid/app/enterprise/HostAuth;->mLogin:Ljava/lang/String;

    .line 1828
    iget-object v2, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iget-object v3, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mOutgoingPassword:Ljava/lang/String;

    iput-object v3, v2, Landroid/app/enterprise/HostAuth;->mPassword:Ljava/lang/String;

    .line 1829
    iget-object v2, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iput-object v5, v2, Landroid/app/enterprise/HostAuth;->mDomain:Ljava/lang/String;

    .line 1830
    iget-object v2, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iput-wide v8, v2, Landroid/app/enterprise/HostAuth;->mAccountKey:J

    .line 1831
    iget-object v2, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iget-boolean v3, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mOutgoingUseSSL:Z

    iput-boolean v3, v2, Landroid/app/enterprise/HostAuth;->mUseSSL:Z

    .line 1832
    iget-object v2, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iget-boolean v3, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mOutgoingUseTLS:Z

    iput-boolean v3, v2, Landroid/app/enterprise/HostAuth;->mUseTLS:Z

    .line 1833
    iget-object v2, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iget-boolean v3, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mOutgoingAcceptAllCertificates:Z

    iput-boolean v3, v2, Landroid/app/enterprise/HostAuth;->mAcceptAllCertificates:Z

    move-object v1, v0

    .line 1835
    .end local v0    # "acc":Landroid/app/enterprise/Account;
    .restart local v1    # "acc":Landroid/app/enterprise/Account;
    goto/16 :goto_0
.end method

.method public static getAccountFromEnterpriseExchangeAccount(Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)Landroid/app/enterprise/Account;
    .locals 10
    .param p0, "info"    # Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    .prologue
    const/4 v7, 0x0

    const-wide/16 v8, -0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 1840
    const-string v2, "SettingsUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getAccountFromEnterpriseExchangeAccount() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1841
    const/4 v0, 0x0

    .line 1842
    .local v0, "acc":Landroid/app/enterprise/Account;
    if-nez p0, :cond_0

    move-object v1, v0

    .line 1906
    .end local v0    # "acc":Landroid/app/enterprise/Account;
    .local v1, "acc":Landroid/app/enterprise/Account;
    :goto_0
    return-object v1

    .line 1845
    .end local v1    # "acc":Landroid/app/enterprise/Account;
    .restart local v0    # "acc":Landroid/app/enterprise/Account;
    :cond_0
    new-instance v0, Landroid/app/enterprise/Account;

    .end local v0    # "acc":Landroid/app/enterprise/Account;
    invoke-direct {v0}, Landroid/app/enterprise/Account;-><init>()V

    .line 1846
    .restart local v0    # "acc":Landroid/app/enterprise/Account;
    iget-wide v2, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mId:J

    long-to-int v2, v2

    iput v2, v0, Landroid/app/enterprise/Account;->mId:I

    .line 1847
    iget-object v2, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mDisplayName:Ljava/lang/String;

    iput-object v2, v0, Landroid/app/enterprise/Account;->mDisplayName:Ljava/lang/String;

    .line 1848
    iget-object v2, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mEmailAddress:Ljava/lang/String;

    iput-object v2, v0, Landroid/app/enterprise/Account;->mEmailAddress:Ljava/lang/String;

    .line 1849
    const-string v2, "0"

    iput-object v2, v0, Landroid/app/enterprise/Account;->mSyncKey:Ljava/lang/String;

    .line 1850
    iget v2, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncLookback:I

    iput v2, v0, Landroid/app/enterprise/Account;->mSyncLookback:I

    .line 1851
    iget v2, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncInterval:I

    iput v2, v0, Landroid/app/enterprise/Account;->mSyncInterval:I

    .line 1852
    iput-wide v8, v0, Landroid/app/enterprise/Account;->mHostAuthKeyRecv:J

    .line 1853
    iput-wide v8, v0, Landroid/app/enterprise/Account;->mHostAuthKeySend:J

    .line 1854
    iput v5, v0, Landroid/app/enterprise/Account;->mFlags:I

    .line 1855
    iget-boolean v2, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mIsDefault:Z

    iput-boolean v2, v0, Landroid/app/enterprise/Account;->mIsDefault:Z

    .line 1856
    iput-object v6, v0, Landroid/app/enterprise/Account;->mCompatibilityUuid:Ljava/lang/String;

    .line 1857
    iget-object v2, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSenderName:Ljava/lang/String;

    iput-object v2, v0, Landroid/app/enterprise/Account;->mSenderName:Ljava/lang/String;

    .line 1858
    iput-object v6, v0, Landroid/app/enterprise/Account;->mRingtoneUri:Ljava/lang/String;

    .line 1859
    iget-object v2, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mProtocolVersion:Ljava/lang/String;

    iput-object v2, v0, Landroid/app/enterprise/Account;->mProtocolVersion:Ljava/lang/String;

    .line 1860
    iput-object v6, v0, Landroid/app/enterprise/Account;->mSecuritySyncKey:Ljava/lang/String;

    .line 1861
    iget-object v2, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSignature:Ljava/lang/String;

    iput-object v2, v0, Landroid/app/enterprise/Account;->mSignature:Ljava/lang/String;

    .line 1862
    iget v2, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mPeakDays:I

    iput v2, v0, Landroid/app/enterprise/Account;->mPeakDays:I

    .line 1863
    iget v2, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mPeakStartMinute:I

    iput v2, v0, Landroid/app/enterprise/Account;->mPeakStartMinute:I

    .line 1864
    iget v2, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mPeakEndMinute:I

    iput v2, v0, Landroid/app/enterprise/Account;->mPeakEndMinute:I

    .line 1865
    iget v2, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mPeakSyncSchedule:I

    iput v2, v0, Landroid/app/enterprise/Account;->mPeakSyncSchedule:I

    .line 1866
    iget v2, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mOffPeakSyncSchedule:I

    iput v2, v0, Landroid/app/enterprise/Account;->mOffPeakSyncSchedule:I

    .line 1867
    iget v2, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mRoamingSyncSchedule:I

    iput v2, v0, Landroid/app/enterprise/Account;->mRoamingSyncSchedule:I

    .line 1868
    iget v2, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncCalendarAge:I

    iput v2, v0, Landroid/app/enterprise/Account;->mSyncCalendarAge:I

    .line 1869
    iget v2, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mEmailBodyTruncationSize:I

    iput v2, v0, Landroid/app/enterprise/Account;->mEmailBodyTruncationSize:I

    .line 1870
    iget v2, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mEmailRoamingBodyTruncationSize:I

    iput v2, v0, Landroid/app/enterprise/Account;->mEmailRoamingBodyTruncationSize:I

    .line 1871
    iget-boolean v2, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncContacts:Z

    iput-boolean v2, v0, Landroid/app/enterprise/Account;->mSyncContacts:Z

    .line 1872
    iget-boolean v2, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncCalendar:Z

    iput-boolean v2, v0, Landroid/app/enterprise/Account;->mSyncCalendar:Z

    .line 1873
    iget-boolean v2, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncTasks:Z

    iput-boolean v2, v0, Landroid/app/enterprise/Account;->mSyncTasks:Z

    .line 1874
    iget-boolean v2, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncNotes:Z

    iput-boolean v2, v0, Landroid/app/enterprise/Account;->mSyncNotes:Z

    .line 1875
    iget-boolean v2, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mEmailNotificationVibrateAlways:Z

    iput-boolean v2, v0, Landroid/app/enterprise/Account;->mEmailNotificationVibrateAlways:Z

    .line 1876
    iput-boolean v7, v0, Landroid/app/enterprise/Account;->mEmailNotificationVibrateWhenSilent:Z

    .line 1878
    new-instance v2, Landroid/app/enterprise/HostAuth;

    invoke-direct {v2}, Landroid/app/enterprise/HostAuth;-><init>()V

    iput-object v2, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    .line 1879
    iget-object v2, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iput v5, v2, Landroid/app/enterprise/HostAuth;->mId:I

    .line 1880
    iget-object v2, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    const-string/jumbo v3, "eas"

    iput-object v3, v2, Landroid/app/enterprise/HostAuth;->mProtocol:Ljava/lang/String;

    .line 1881
    iget-object v2, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iget-object v3, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mServerAddress:Ljava/lang/String;

    iput-object v3, v2, Landroid/app/enterprise/HostAuth;->mAddress:Ljava/lang/String;

    .line 1882
    iget-object v2, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iput v7, v2, Landroid/app/enterprise/HostAuth;->mPort:I

    .line 1883
    iget-object v2, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iput v5, v2, Landroid/app/enterprise/HostAuth;->mFlags:I

    .line 1884
    iget-object v2, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iget-object v3, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mEasUser:Ljava/lang/String;

    iput-object v3, v2, Landroid/app/enterprise/HostAuth;->mLogin:Ljava/lang/String;

    .line 1885
    iget-object v2, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iget-object v3, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mPassword:Ljava/lang/String;

    iput-object v3, v2, Landroid/app/enterprise/HostAuth;->mPassword:Ljava/lang/String;

    .line 1886
    iget-object v2, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iput-object v6, v2, Landroid/app/enterprise/HostAuth;->mDomain:Ljava/lang/String;

    .line 1887
    iget-object v2, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iput-wide v8, v2, Landroid/app/enterprise/HostAuth;->mAccountKey:J

    .line 1888
    iget-object v2, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iget-boolean v3, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mUseSSL:Z

    iput-boolean v3, v2, Landroid/app/enterprise/HostAuth;->mUseSSL:Z

    .line 1889
    iget-object v2, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iget-boolean v3, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mUseTLS:Z

    iput-boolean v3, v2, Landroid/app/enterprise/HostAuth;->mUseTLS:Z

    .line 1890
    iget-object v2, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iget-boolean v3, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mAcceptAllCertificates:Z

    iput-boolean v3, v2, Landroid/app/enterprise/HostAuth;->mAcceptAllCertificates:Z

    .line 1892
    new-instance v2, Landroid/app/enterprise/HostAuth;

    invoke-direct {v2}, Landroid/app/enterprise/HostAuth;-><init>()V

    iput-object v2, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    .line 1893
    iget-object v2, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iput v5, v2, Landroid/app/enterprise/HostAuth;->mId:I

    .line 1894
    iget-object v2, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    const-string/jumbo v3, "eas"

    iput-object v3, v2, Landroid/app/enterprise/HostAuth;->mProtocol:Ljava/lang/String;

    .line 1895
    iget-object v2, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iget-object v3, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mServerAddress:Ljava/lang/String;

    iput-object v3, v2, Landroid/app/enterprise/HostAuth;->mAddress:Ljava/lang/String;

    .line 1896
    iget-object v2, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iput v7, v2, Landroid/app/enterprise/HostAuth;->mPort:I

    .line 1897
    iget-object v2, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iput v5, v2, Landroid/app/enterprise/HostAuth;->mFlags:I

    .line 1898
    iget-object v2, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iget-object v3, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mEasUser:Ljava/lang/String;

    iput-object v3, v2, Landroid/app/enterprise/HostAuth;->mLogin:Ljava/lang/String;

    .line 1899
    iget-object v2, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iget-object v3, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mPassword:Ljava/lang/String;

    iput-object v3, v2, Landroid/app/enterprise/HostAuth;->mPassword:Ljava/lang/String;

    .line 1900
    iget-object v2, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iput-object v6, v2, Landroid/app/enterprise/HostAuth;->mDomain:Ljava/lang/String;

    .line 1901
    iget-object v2, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iput-wide v8, v2, Landroid/app/enterprise/HostAuth;->mAccountKey:J

    .line 1902
    iget-object v2, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iget-boolean v3, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mUseSSL:Z

    iput-boolean v3, v2, Landroid/app/enterprise/HostAuth;->mUseSSL:Z

    .line 1903
    iget-object v2, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iget-boolean v3, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mUseTLS:Z

    iput-boolean v3, v2, Landroid/app/enterprise/HostAuth;->mUseTLS:Z

    .line 1904
    iget-object v2, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iget-boolean v3, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mAcceptAllCertificates:Z

    iput-boolean v3, v2, Landroid/app/enterprise/HostAuth;->mAcceptAllCertificates:Z

    move-object v1, v0

    .line 1906
    .end local v0    # "acc":Landroid/app/enterprise/Account;
    .restart local v1    # "acc":Landroid/app/enterprise/Account;
    goto/16 :goto_0
.end method

.method static declared-synchronized getAccountId(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)J
    .locals 11
    .param p0, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p1, "easDomain"    # Ljava/lang/String;
    .param p2, "user"    # Ljava/lang/String;
    .param p3, "serverAddress"    # Ljava/lang/String;
    .param p4, "protocol"    # Ljava/lang/String;
    .param p5, "isEas"    # Z
    .param p6, "context"    # Landroid/content/Context;

    .prologue
    .line 929
    const-class v10, Lcom/android/server/enterprise/email/SettingsUtils;

    monitor-enter v10

    :try_start_0
    iget v9, p0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 930
    .local v9, "containerId":I
    invoke-static {v9}, Lcom/android/server/enterprise/email/SettingsUtils;->getHostAuthContentUri(I)Landroid/net/Uri;

    move-result-object v0

    .line 931
    .local v0, "hostUri":Landroid/net/Uri;
    invoke-static {v9}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountContentUri(I)Landroid/net/Uri;

    move-result-object v1

    .line 933
    .local v1, "acctUri":Landroid/net/Uri;
    const-string v2, "SettingsUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getAccountId : USER space    UserHandle.myUserId() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object v8, p0

    .line 934
    invoke-static/range {v0 .. v8}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountIdInternal(Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;Landroid/app/enterprise/ContextInfo;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    monitor-exit v10

    return-wide v2

    .line 929
    .end local v0    # "hostUri":Landroid/net/Uri;
    .end local v1    # "acctUri":Landroid/net/Uri;
    .end local v9    # "containerId":I
    :catchall_0
    move-exception v2

    monitor-exit v10

    throw v2
.end method

.method private static getAccountIdInternal(Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;Landroid/app/enterprise/ContextInfo;)J
    .locals 20
    .param p0, "hostUri"    # Landroid/net/Uri;
    .param p1, "acctUri"    # Landroid/net/Uri;
    .param p2, "easDomain"    # Ljava/lang/String;
    .param p3, "user"    # Ljava/lang/String;
    .param p4, "serverAddress"    # Ljava/lang/String;
    .param p5, "protocol"    # Ljava/lang/String;
    .param p6, "isEas"    # Z
    .param p7, "context"    # Landroid/content/Context;
    .param p8, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 940
    const-wide/16 v8, -0x1

    .line 941
    .local v8, "accountId":J
    const/4 v12, 0x0

    .line 943
    .local v12, "c":Landroid/database/Cursor;
    invoke-static/range {p2 .. p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 944
    invoke-static/range {p3 .. p3}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 945
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 946
    invoke-static/range {p5 .. p5}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    .line 948
    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    if-nez p5, :cond_1

    .line 949
    :cond_0
    const-string v2, "SettingsUtils"

    const-string/jumbo v3, "getAccountId : Error :: Invalid input parameters."

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v10, v8

    .line 1030
    .end local v8    # "accountId":J
    .local v10, "accountId":J
    :goto_0
    return-wide v10

    .line 952
    .end local v10    # "accountId":J
    .restart local v8    # "accountId":J
    :cond_1
    if-eqz p6, :cond_2

    if-eqz p2, :cond_2

    .line 953
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\\"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 955
    :cond_2
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v4, v2

    .line 959
    .local v4, "ID_PROJECTION":[Ljava/lang/String;
    const/4 v2, 0x3

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p5, v6, v2

    const/4 v2, 0x1

    aput-object p4, v6, v2

    const/4 v2, 0x2

    aput-object p3, v6, v2

    .line 963
    .local v6, "selectionArgs":[Ljava/lang/String;
    move-object/from16 v0, p8

    iget v13, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 964
    .local v13, "callingUID":I
    invoke-static/range {p8 .. p8}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v15

    .line 965
    .local v15, "userID":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    .line 966
    .local v18, "token":J
    const-wide/16 v16, -0x1

    .line 968
    .local v16, "hostAuthId":J
    if-eqz v15, :cond_8

    .line 969
    :try_start_0
    move-object/from16 v0, p7

    invoke-static {v15, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->isPersona(ILandroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 970
    move-object/from16 v0, p8

    iget v2, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-static {v2}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, v15}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, p7

    invoke-virtual {v0, v2, v3, v5}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v2

    sput-object v2, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    .line 971
    const-string v2, "SettingsUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getAccountIdInternal : USER space   "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p8

    iget v5, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-static {v5}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 986
    :goto_1
    :try_start_1
    sget-object v2, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "protocol=? AND address=? AND login=? "

    const/4 v7, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 991
    const-string v2, "SettingsUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getAccountId for HOST_AUTH row count : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 992
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 993
    const-string v2, "_id"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v0, v2

    move-wide/from16 v16, v0

    .line 994
    const-string v2, "SettingsUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " getAccountIdInternal : hostAuthId "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 999
    :cond_3
    if-eqz v12, :cond_4

    .line 1000
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1002
    :cond_4
    :goto_2
    const/4 v12, 0x0

    .line 1004
    const-wide/16 v2, -0x1

    cmp-long v2, v2, v16

    if-eqz v2, :cond_6

    .line 1005
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    .end local v4    # "ID_PROJECTION":[Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v4, v2

    .line 1008
    .restart local v4    # "ID_PROJECTION":[Ljava/lang/String;
    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/String;

    .end local v6    # "selectionArgs":[Ljava/lang/String;
    const/4 v2, 0x0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    const/4 v2, 0x1

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    .line 1012
    .restart local v6    # "selectionArgs":[Ljava/lang/String;
    :try_start_2
    sget-object v2, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "hostAuthKeyRecv=? OR hostAuthKeySend=? "

    const/4 v7, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 1017
    const-string v2, "SettingsUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getAccountId for ACCOUNT row count : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1018
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1019
    const-string v2, "_id"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v8, v2

    .line 1020
    const-string v2, "SettingsUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " getAccountIdInternal : ACCOUNT "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1025
    :cond_5
    if-eqz v12, :cond_6

    .line 1026
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1029
    :cond_6
    :goto_3
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-wide v10, v8

    .line 1030
    .end local v8    # "accountId":J
    .restart local v10    # "accountId":J
    goto/16 :goto_0

    .line 973
    .end local v10    # "accountId":J
    .restart local v8    # "accountId":J
    :cond_7
    :try_start_3
    move-object/from16 v0, p8

    iget v2, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v2}, Lcom/android/server/enterprise/email/SettingsUtils;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, v15}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, p7

    invoke-virtual {v0, v2, v3, v5}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v2

    sput-object v2, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    .line 974
    const-string v2, "SettingsUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getAccountIdInternal : USER space   "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p8

    iget v5, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v5}, Lcom/android/server/enterprise/email/SettingsUtils;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    .line 981
    :catch_0
    move-exception v14

    .line 982
    .local v14, "e":Ljava/lang/Exception;
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    move-wide v10, v8

    .line 983
    .end local v8    # "accountId":J
    .restart local v10    # "accountId":J
    goto/16 :goto_0

    .line 979
    .end local v10    # "accountId":J
    .end local v14    # "e":Ljava/lang/Exception;
    .restart local v8    # "accountId":J
    :cond_8
    :try_start_4
    sput-object p7, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_1

    .line 996
    :catch_1
    move-exception v14

    .line 997
    .restart local v14    # "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 999
    if-eqz v12, :cond_4

    .line 1000
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    .line 999
    .end local v14    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v12, :cond_9

    .line 1000
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v2

    .line 1022
    :catch_2
    move-exception v14

    .line 1023
    .restart local v14    # "e":Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1025
    if-eqz v12, :cond_6

    .line 1026
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 1025
    .end local v14    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v2

    if-eqz v12, :cond_a

    .line 1026
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_a
    throw v2
.end method

.method static declared-synchronized getAccountIds(Landroid/app/enterprise/ContextInfo;Landroid/content/Context;)[J
    .locals 20
    .param p0, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1204
    const-class v19, Lcom/android/server/enterprise/email/SettingsUtils;

    monitor-enter v19

    const/4 v14, 0x0

    .line 1205
    .local v14, "ret":[J
    const/4 v8, 0x0

    .line 1206
    .local v8, "c":Landroid/database/Cursor;
    const/4 v2, 0x1

    :try_start_0
    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v4, v2

    .line 1210
    .local v4, "ID_PROJECTION":[Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v18

    .line 1211
    .local v18, "userID":I
    move-object/from16 v0, p0

    iget v9, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 1212
    .local v9, "containerId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v16

    .line 1215
    .local v16, "token":J
    if-eqz v18, :cond_1

    .line 1216
    :try_start_1
    move/from16 v0, v18

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/email/SettingsUtils;->isPersona(ILandroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1217
    invoke-static {v9}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v5, Landroid/os/UserHandle;

    move/from16 v0, v18

    invoke-direct {v5, v0}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v5}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v2

    sput-object v2, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    .line 1218
    const-string v2, "SettingsUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getAccountIds : USER space   "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v9}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1233
    :goto_0
    :try_start_2
    sget-object v2, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v9}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountContentUri(I)Landroid/net/Uri;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1235
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v10

    .line 1236
    .local v10, "count":I
    const-string v2, "SettingsUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Accounts row count : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1237
    if-lez v10, :cond_2

    .line 1238
    const/4 v12, 0x0

    .line 1239
    .local v12, "i":I
    new-array v14, v10, [J

    move v13, v12

    .line 1240
    .end local v12    # "i":I
    .local v13, "i":I
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1241
    add-int/lit8 v12, v13, 0x1

    .end local v13    # "i":I
    .restart local v12    # "i":I
    const-string v2, "_id"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    aput-wide v2, v14, v13
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move v13, v12

    .end local v12    # "i":I
    .restart local v13    # "i":I
    goto :goto_1

    .line 1220
    .end local v10    # "count":I
    .end local v13    # "i":I
    :cond_0
    :try_start_3
    move-object/from16 v0, p0

    iget v2, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v2}, Lcom/android/server/enterprise/email/SettingsUtils;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v5, Landroid/os/UserHandle;

    move/from16 v0, v18

    invoke-direct {v5, v0}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v5}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v2

    sput-object v2, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    .line 1221
    const-string v2, "SettingsUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getAccountIds : USER space   "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v5, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v5}, Lcom/android/server/enterprise/email/SettingsUtils;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 1228
    :catch_0
    move-exception v11

    .line 1229
    .local v11, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v15, v14

    .line 1252
    .end local v11    # "e":Ljava/lang/Exception;
    .end local v14    # "ret":[J
    .local v15, "ret":[J
    :goto_2
    monitor-exit v19

    return-object v15

    .line 1225
    .end local v15    # "ret":[J
    .restart local v14    # "ret":[J
    :cond_1
    :try_start_5
    sput-object p1, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 1204
    .end local v4    # "ID_PROJECTION":[Ljava/lang/String;
    .end local v9    # "containerId":I
    .end local v16    # "token":J
    .end local v18    # "userID":I
    :catchall_0
    move-exception v2

    monitor-exit v19

    throw v2

    .line 1247
    .restart local v4    # "ID_PROJECTION":[Ljava/lang/String;
    .restart local v9    # "containerId":I
    .restart local v10    # "count":I
    .restart local v16    # "token":J
    .restart local v18    # "userID":I
    :cond_2
    if-eqz v8, :cond_3

    .line 1248
    :try_start_6
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1251
    .end local v10    # "count":I
    :cond_3
    :goto_3
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object v15, v14

    .line 1252
    .end local v14    # "ret":[J
    .restart local v15    # "ret":[J
    goto :goto_2

    .line 1244
    .end local v15    # "ret":[J
    .restart local v14    # "ret":[J
    :catch_1
    move-exception v11

    .line 1245
    .restart local v11    # "e":Ljava/lang/Exception;
    :try_start_7
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1247
    if-eqz v8, :cond_3

    .line 1248
    :try_start_8
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 1247
    .end local v11    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v2

    if-eqz v8, :cond_4

    .line 1248
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
.end method

.method public static getAccountType(ZI)Ljava/lang/String;
    .locals 1
    .param p0, "isEAS"    # Z
    .param p1, "containerId"    # I

    .prologue
    .line 1461
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->isSupportNewEmail()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1462
    if-eqz p0, :cond_0

    const-string v0, "com.samsung.android.exchange"

    .line 1464
    :goto_0
    return-object v0

    .line 1462
    :cond_0
    const-string v0, "com.samsung.android.email"

    goto :goto_0

    .line 1464
    :cond_1
    if-eqz p0, :cond_2

    const-string v0, "com.android.exchange"

    goto :goto_0

    :cond_2
    const-string v0, "com.android.email"

    goto :goto_0
.end method

.method private static getAccountsDBRowId(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)J
    .locals 11
    .param p0, "emailId"    # Ljava/lang/String;
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 547
    const/4 v0, 0x0

    .line 548
    .local v0, "accountsDB":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x0

    .line 549
    .local v1, "cr":Landroid/database/Cursor;
    const-wide/16 v6, -0x1

    .line 550
    .local v6, "rowId":J
    invoke-static {p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 551
    invoke-static {p1}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 553
    if-eqz p0, :cond_b

    .line 556
    :try_start_0
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->makeDBpath()V

    .line 557
    sget-object v5, Lcom/android/server/enterprise/email/SettingsUtils;->ACCOUNTS_DB:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v5, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 559
    const-wide/16 v2, -0x1

    .line 561
    .local v2, "accountsDBRowId":J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SELECT rowid FROM accounts WHERE name = \'"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz p1, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\' AND type = \'"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_0
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "\'"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    invoke-virtual {v0, v5, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 565
    const-string v8, "SettingsUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getAccountsDBRowId - got row count : "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, " for emailAddress : "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz p1, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " AND account type : "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/secutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_1

    .line 569
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 570
    const/4 v5, 0x0

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 571
    if-eqz v1, :cond_0

    .line 572
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 573
    :cond_0
    const/4 v1, 0x0

    .line 575
    :cond_1
    const-wide/16 v8, -0x1

    cmp-long v5, v8, v2

    if-eqz v5, :cond_6

    .line 576
    move-wide v6, v2

    .line 577
    const-string v5, "SettingsUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getAccountsDBRowId - Found row Id : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 588
    :goto_2
    if-eqz v1, :cond_2

    .line 589
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 590
    :cond_2
    if-eqz v0, :cond_3

    .line 591
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 597
    .end local v2    # "accountsDBRowId":J
    :cond_3
    :goto_3
    return-wide v6

    .line 561
    .restart local v2    # "accountsDBRowId":J
    :cond_4
    :try_start_1
    const-string v5, ""

    goto/16 :goto_0

    .line 565
    :cond_5
    const-string v5, ""

    goto :goto_1

    .line 579
    :cond_6
    const-string v8, "SettingsUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getAccountsDBRowId - entry doesn\'t exist for name: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz p1, :cond_8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " AND account type : "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_4
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/secutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 584
    .end local v2    # "accountsDBRowId":J
    :catch_0
    move-exception v4

    .line 585
    .local v4, "e":Ljava/lang/Exception;
    const-wide/16 v6, -0x1

    .line 586
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 588
    if-eqz v1, :cond_7

    .line 589
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 590
    :cond_7
    if-eqz v0, :cond_3

    .line 591
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_3

    .line 579
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v2    # "accountsDBRowId":J
    :cond_8
    :try_start_3
    const-string v5, ""
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    .line 588
    .end local v2    # "accountsDBRowId":J
    :catchall_0
    move-exception v5

    if-eqz v1, :cond_9

    .line 589
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 590
    :cond_9
    if-eqz v0, :cond_a

    .line 591
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_a
    throw v5

    .line 595
    :cond_b
    const-string v5, "SettingsUtils"

    const-string/jumbo v8, "getAccountsDBRowId : Error :: Invalid input parameters."

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method static declared-synchronized getCBAAlias(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Ljava/lang/String;
    .locals 15
    .param p0, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p1, "accountId"    # J
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 1340
    const-class v13, Lcom/android/server/enterprise/email/SettingsUtils;

    monitor-enter v13

    const/4 v8, 0x0

    .line 1341
    .local v8, "alias":Ljava/lang/String;
    const/4 v9, 0x0

    .line 1343
    .local v9, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v12

    .line 1344
    .local v12, "userID":I
    iget v10, p0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 1345
    .local v10, "containerId":I
    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "cbaCertificateAlias"

    aput-object v3, v4, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1350
    .local v4, "ID_PROJECTION":[Ljava/lang/String;
    if-eqz v12, :cond_3

    .line 1351
    :try_start_1
    move-object/from16 v0, p3

    invoke-static {v12, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->isPersona(ILandroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1352
    invoke-static {v10}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, v12}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3, v5}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v2

    sput-object v2, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    .line 1353
    const-string v2, "SettingsUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getCBAAlias : USER space   "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v10}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1362
    :goto_0
    sget-object v2, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v10}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountContentUri(I)Landroid/net/Uri;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1364
    if-eqz v9, :cond_0

    .line 1365
    const-string v2, "SettingsUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getAccount row count : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1366
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 1367
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1368
    const-string v2, "cbaCertificateAlias"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v8

    .line 1374
    :cond_0
    if-eqz v9, :cond_1

    .line 1375
    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1378
    :cond_1
    :goto_1
    monitor-exit v13

    return-object v8

    .line 1355
    :cond_2
    :try_start_3
    iget v2, p0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v2}, Lcom/android/server/enterprise/email/SettingsUtils;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, v12}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3, v5}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v2

    sput-object v2, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    .line 1356
    const-string v2, "SettingsUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getCBAAlias : USER space   "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v5}, Lcom/android/server/enterprise/email/SettingsUtils;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_0

    .line 1371
    :catch_0
    move-exception v11

    .line 1372
    .local v11, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v2, "SettingsUtils"

    const-string/jumbo v3, "getCBAAlias() : failed. "

    invoke-static {v2, v3, v11}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1374
    if-eqz v9, :cond_1

    .line 1375
    :try_start_5
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 1340
    .end local v4    # "ID_PROJECTION":[Ljava/lang/String;
    .end local v10    # "containerId":I
    .end local v11    # "e":Ljava/lang/Exception;
    .end local v12    # "userID":I
    :catchall_0
    move-exception v2

    monitor-exit v13

    throw v2

    .line 1360
    .restart local v4    # "ID_PROJECTION":[Ljava/lang/String;
    .restart local v10    # "containerId":I
    .restart local v12    # "userID":I
    :cond_3
    :try_start_6
    sput-object p3, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_0

    .line 1374
    :catchall_1
    move-exception v2

    if-eqz v9, :cond_4

    .line 1375
    :try_start_7
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method public static getContainerizedAction(ILjava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "containerId"    # I
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 1436
    return-object p1
.end method

.method public static getContainerizedString(ILjava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "containerId"    # I
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 1457
    return-object p1
.end method

.method private static getEasDomainAndUserFromLogin(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .param p0, "login"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1316
    new-array v0, v5, [Ljava/lang/String;

    aput-object v2, v0, v4

    aput-object v2, v0, v3

    .line 1319
    .local v0, "easDomainAndUser":[Ljava/lang/String;
    invoke-static {p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1320
    if-eqz p0, :cond_0

    .line 1321
    const-string v2, "\\"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1322
    const-string v2, "\\"

    invoke-static {v2}, Ljava/util/regex/Matcher;->quoteReplacement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1323
    .local v1, "sp":[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 1324
    array-length v2, v1

    if-ne v5, v2, :cond_1

    .line 1325
    aget-object v2, v1, v4

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    .line 1326
    aget-object v2, v1, v3

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    .line 1335
    .end local v1    # "sp":[Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 1327
    .restart local v1    # "sp":[Ljava/lang/String;
    :cond_1
    array-length v2, v1

    if-ne v3, v2, :cond_0

    .line 1328
    aget-object v2, v1, v4

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    goto :goto_0

    .line 1332
    .end local v1    # "sp":[Ljava/lang/String;
    :cond_2
    aput-object p0, v0, v3

    goto :goto_0
.end method

.method public static getEasPackageName(I)Ljava/lang/String;
    .locals 1
    .param p0, "containerId"    # I

    .prologue
    .line 1451
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->isSupportNewEmail()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1452
    const-string v0, "com.samsung.android.email.provider"

    .line 1453
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "com.android.exchange"

    goto :goto_0
.end method

.method public static getEmailPackageName(I)Ljava/lang/String;
    .locals 1
    .param p0, "containerId"    # I

    .prologue
    .line 1440
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->isSupportNewEmail()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1441
    const-string v0, "com.samsung.android.email.provider"

    .line 1443
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "com.android.email"

    goto :goto_0
.end method

.method public static getHostAuthContentUri(I)Landroid/net/Uri;
    .locals 2
    .param p0, "containerId"    # I

    .prologue
    .line 1480
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->isSupportNewEmail()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/hostauth"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1487
    :goto_0
    return-object v0

    .line 1484
    :cond_0
    if-nez p0, :cond_1

    .line 1485
    sget-object v0, Lcom/android/server/enterprise/email/SettingsUtils;->HOST_AUTH_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 1487
    :cond_1
    const-string/jumbo v0, "content://com.android.email.provider/hostauth"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method private static getHostAuthFlags(IZZZLandroid/content/Context;)I
    .locals 4
    .param p0, "existingFlag"    # I
    .param p1, "useSSL"    # Z
    .param p2, "useTLS"    # Z
    .param p3, "acceptAllCertificates"    # Z
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 440
    move v0, p0

    .line 443
    .local v0, "flag":I
    if-ne v3, p1, :cond_3

    .line 444
    or-int/lit8 v0, v0, 0x1

    .line 449
    :cond_0
    :goto_0
    if-ne v3, p2, :cond_4

    .line 450
    or-int/lit8 v0, v0, 0x2

    .line 455
    :cond_1
    :goto_1
    if-ne v3, p3, :cond_5

    .line 456
    or-int/lit8 v0, v0, 0x8

    .line 460
    :cond_2
    :goto_2
    return v0

    .line 445
    :cond_3
    and-int/lit8 v1, v0, 0x1

    if-ne v3, v1, :cond_0

    .line 446
    xor-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 451
    :cond_4
    const/4 v1, 0x2

    and-int/lit8 v2, v0, 0x2

    if-ne v1, v2, :cond_1

    .line 452
    xor-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 457
    :cond_5
    const/16 v1, 0x8

    and-int/lit8 v2, v0, 0x8

    if-ne v1, v2, :cond_2

    .line 458
    xor-int/lit8 v0, v0, 0x8

    goto :goto_2
.end method

.method public static getLDAPAccountFromEnterpriseLDAPAccount(Landroid/sec/enterprise/email/EnterpriseLDAPAccount;)Landroid/app/enterprise/LDAPAccount;
    .locals 4
    .param p0, "info"    # Landroid/sec/enterprise/email/EnterpriseLDAPAccount;

    .prologue
    .line 1910
    const/4 v0, 0x0

    .line 1911
    .local v0, "acc":Landroid/app/enterprise/LDAPAccount;
    if-nez p0, :cond_0

    .line 1912
    const/4 v1, 0x0

    .line 1923
    :goto_0
    return-object v1

    .line 1913
    :cond_0
    new-instance v0, Landroid/app/enterprise/LDAPAccount;

    .end local v0    # "acc":Landroid/app/enterprise/LDAPAccount;
    invoke-direct {v0}, Landroid/app/enterprise/LDAPAccount;-><init>()V

    .line 1914
    .restart local v0    # "acc":Landroid/app/enterprise/LDAPAccount;
    iget-wide v2, p0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;->mId:J

    iput-wide v2, v0, Landroid/app/enterprise/LDAPAccount;->id:J

    .line 1915
    iget-object v1, p0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;->mUserName:Ljava/lang/String;

    iput-object v1, v0, Landroid/app/enterprise/LDAPAccount;->userName:Ljava/lang/String;

    .line 1916
    iget-object v1, p0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;->mPassword:Ljava/lang/String;

    iput-object v1, v0, Landroid/app/enterprise/LDAPAccount;->password:Ljava/lang/String;

    .line 1917
    iget v1, p0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;->mPort:I

    iput v1, v0, Landroid/app/enterprise/LDAPAccount;->port:I

    .line 1918
    iget-object v1, p0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;->mHost:Ljava/lang/String;

    iput-object v1, v0, Landroid/app/enterprise/LDAPAccount;->host:Ljava/lang/String;

    .line 1919
    iget-boolean v1, p0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;->mUseSSL:Z

    iput-boolean v1, v0, Landroid/app/enterprise/LDAPAccount;->isSSL:Z

    .line 1920
    iget-boolean v1, p0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;->mIsAnonymous:Z

    iput-boolean v1, v0, Landroid/app/enterprise/LDAPAccount;->isAnonymous:Z

    .line 1921
    iget-object v1, p0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;->mBaseDN:Ljava/lang/String;

    iput-object v1, v0, Landroid/app/enterprise/LDAPAccount;->baseDN:Ljava/lang/String;

    .line 1922
    iget v1, p0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;->mTrustAll:I

    iput v1, v0, Landroid/app/enterprise/LDAPAccount;->trustAll:I

    move-object v1, v0

    .line 1923
    goto :goto_0
.end method

.method public static getPackageNameForUid(I)Ljava/lang/String;
    .locals 3
    .param p0, "uid"    # I

    .prologue
    .line 268
    sget v0, Lcom/android/server/enterprise/email/SettingsUtils;->preCallingUid:I

    if-ne p0, v0, :cond_0

    .line 269
    const-string v0, "SettingsUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getPackageNameForUid :   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/enterprise/email/SettingsUtils;->adminPkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    sget-object v0, Lcom/android/server/enterprise/email/SettingsUtils;->adminPkg:Ljava/lang/String;

    .line 272
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static getPassword(IJLandroid/content/Context;I)[Ljava/lang/String;
    .locals 9
    .param p0, "containerId"    # I
    .param p1, "accountId"    # J
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "userID"    # I

    .prologue
    const/4 v4, 0x0

    .line 1527
    new-instance v6, Landroid/os/ConditionVariable;

    invoke-direct {v6}, Landroid/os/ConditionVariable;-><init>()V

    .line 1528
    .local v6, "condition":Landroid/os/ConditionVariable;
    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v0, "edm.intent.action.internal.RESULT_EMAILACCOUNT_PASSWORD"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1529
    .local v3, "filter":Landroid/content/IntentFilter;
    const/4 v0, 0x2

    new-array v8, v0, [Ljava/lang/String;

    .line 1531
    .local v8, "ret":[Ljava/lang/String;
    new-instance v1, Lcom/android/server/enterprise/email/SettingsUtils$1;

    invoke-direct {v1, v8, v6}, Lcom/android/server/enterprise/email/SettingsUtils$1;-><init>([Ljava/lang/String;Landroid/os/ConditionVariable;)V

    .line 1554
    .local v1, "receiver":Landroid/content/BroadcastReceiver;
    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p4}, Landroid/os/UserHandle;-><init>(I)V

    move-object v0, p3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1555
    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v0, "edm.intent.action.internal.REQUEST_EMAILACCOUNT_PASSWORD"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1556
    .local v7, "intent":Landroid/content/Intent;
    const-string v0, "account_id"

    invoke-virtual {v7, v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1557
    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, p4}, Landroid/os/UserHandle;-><init>(I)V

    const-string v2, "android.permission.sec.MDM_EMAIL"

    invoke-virtual {p3, v7, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1560
    const-wide/16 v4, 0x2710

    invoke-virtual {v6, v4, v5}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1561
    const-string v0, "SettingsUtils"

    const-string/jumbo v2, "password obtained"

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1565
    :goto_0
    invoke-virtual {p3, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1567
    return-object v8

    .line 1563
    :cond_0
    const-string v0, "SettingsUtils"

    const-string/jumbo v2, "timeout while obtaining password"

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getPoliciesContentUri(I)Landroid/net/Uri;
    .locals 2
    .param p0, "containerId"    # I

    .prologue
    .line 1491
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->isSupportNewEmail()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1493
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/policies"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1499
    :goto_0
    return-object v0

    .line 1495
    :cond_0
    if-gtz p0, :cond_1

    .line 1496
    const-string v0, "SettingsUtils"

    const-string/jumbo v1, "getPoliciesContentUri"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1497
    sget-object v0, Lcom/android/server/enterprise/email/SettingsUtils;->POLICIES_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 1499
    :cond_1
    const-string/jumbo v0, "content://com.android.email.provider/policies"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method static declared-synchronized getSMIMEAlias(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;Z)Ljava/lang/String;
    .locals 17
    .param p0, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p1, "accountId"    # J
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "isSigning"    # Z

    .prologue
    .line 1384
    const-class v15, Lcom/android/server/enterprise/email/SettingsUtils;

    monitor-enter v15

    const/4 v8, 0x0

    .line 1385
    .local v8, "alias":Ljava/lang/String;
    const/4 v9, 0x0

    .line 1387
    .local v9, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v14

    .line 1388
    .local v14, "userID":I
    move-object/from16 v0, p0

    iget v10, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 1389
    .local v10, "containerId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 1390
    .local v12, "token":J
    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v4, v2

    const/4 v3, 0x1

    if-eqz p4, :cond_2

    const-string/jumbo v2, "smimeOwnSignCertAlias"

    :goto_0
    aput-object v2, v4, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1396
    .local v4, "ID_PROJECTION":[Ljava/lang/String;
    if-eqz v14, :cond_4

    .line 1397
    :try_start_1
    move-object/from16 v0, p3

    invoke-static {v14, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->isPersona(ILandroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1398
    invoke-static {v10}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, v14}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3, v5}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v2

    sput-object v2, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    .line 1400
    const-string v2, "SettingsUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getSMIMEAlias : USER space   "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v10}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1412
    :goto_1
    sget-object v2, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v10}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountContentUri(I)Landroid/net/Uri;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1414
    if-eqz v9, :cond_0

    .line 1415
    const-string v2, "SettingsUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getAccount row count : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1416
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 1417
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1418
    if-eqz p4, :cond_6

    const-string/jumbo v2, "smimeOwnSignCertAlias"

    :goto_2
    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v8

    .line 1426
    :cond_0
    :try_start_2
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1427
    if-eqz v9, :cond_1

    .line 1428
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1431
    :cond_1
    :goto_3
    monitor-exit v15

    return-object v8

    .line 1390
    .end local v4    # "ID_PROJECTION":[Ljava/lang/String;
    :cond_2
    :try_start_3
    const-string/jumbo v2, "smimeOwnCertificateAlias"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 1402
    .restart local v4    # "ID_PROJECTION":[Ljava/lang/String;
    :cond_3
    :try_start_4
    move-object/from16 v0, p0

    iget v2, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v2}, Lcom/android/server/enterprise/email/SettingsUtils;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, v14}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3, v5}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v2

    sput-object v2, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    .line 1404
    const-string v2, "SettingsUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getSMIMEAlias : USER space   "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v5, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v5}, Lcom/android/server/enterprise/email/SettingsUtils;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_1

    .line 1422
    :catch_0
    move-exception v11

    .line 1423
    .local v11, "e":Ljava/lang/Exception;
    :try_start_5
    const-string v2, "SettingsUtils"

    const-string/jumbo v3, "getSMIMEAlias() : failed. "

    invoke-static {v2, v3, v11}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1424
    const/4 v8, 0x0

    .line 1426
    :try_start_6
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1427
    if-eqz v9, :cond_1

    .line 1428
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    .line 1384
    .end local v4    # "ID_PROJECTION":[Ljava/lang/String;
    .end local v10    # "containerId":I
    .end local v11    # "e":Ljava/lang/Exception;
    .end local v12    # "token":J
    .end local v14    # "userID":I
    :catchall_0
    move-exception v2

    monitor-exit v15

    throw v2

    .line 1408
    .restart local v4    # "ID_PROJECTION":[Ljava/lang/String;
    .restart local v10    # "containerId":I
    .restart local v12    # "token":J
    .restart local v14    # "userID":I
    :cond_4
    :try_start_7
    sput-object p3, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    .line 1409
    const-string v2, "SettingsUtils"

    const-string/jumbo v3, "getSMIMEAlias : get Context with no MUM Enviroment."

    invoke-static {v2, v3}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_1

    .line 1426
    :catchall_1
    move-exception v2

    :try_start_8
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1427
    if-eqz v9, :cond_5

    .line 1428
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1418
    :cond_6
    :try_start_9
    const-string/jumbo v2, "smimeOwnCertificateAlias"
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_2
.end method

.method public static getSMIMEModeFromAction(Ljava/lang/String;)I
    .locals 2
    .param p0, "Action"    # Ljava/lang/String;

    .prologue
    .line 1733
    const/4 v0, -0x1

    .line 1734
    .local v0, "ret":I
    if-eqz p0, :cond_0

    .line 1735
    const-string v1, "com.sec.enterprise.email.FORCE_SMIME_CERTIFICATE"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1736
    const/4 v0, 0x1

    .line 1745
    :cond_0
    :goto_0
    return v0

    .line 1738
    :cond_1
    const-string v1, "com.sec.enterprise.email.FORCE_SMIME_CERTIFICATE_FOR_ENCRYPTION"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1739
    const/4 v0, 0x2

    goto :goto_0

    .line 1741
    :cond_2
    const-string v1, "com.sec.enterprise.email.FORCE_SMIME_CERTIFICATE_FOR_SIGNING"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1742
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public static getSecurityPassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "caller"    # Ljava/lang/String;

    .prologue
    .line 1613
    const/4 v2, 0x0

    .line 1615
    .local v2, "password":Ljava/lang/String;
    :try_start_0
    sget-object v3, Lcom/android/server/enterprise/email/SettingsUtils;->mServerPassword:Ljava/util/Map;

    invoke-interface {v3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 1616
    sget-object v3, Lcom/android/server/enterprise/email/SettingsUtils;->mServerPassword:Ljava/util/Map;

    invoke-interface {v3, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1621
    :goto_0
    return-object v2

    .line 1617
    :catch_0
    move-exception v1

    .line 1618
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "SettingsUtils"

    const-string/jumbo v4, "getSecurityPassword() failed"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1619
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getSyncEmailIndexbyMaxTruncationSize(Ljava/lang/String;I)I
    .locals 6
    .param p0, "mProtocolVersion"    # Ljava/lang/String;
    .param p1, "mEmailBodyTruncationSize"    # I

    .prologue
    const/4 v1, 0x3

    const/4 v4, 0x7

    const/4 v2, 0x4

    const/4 v0, 0x2

    const/4 v3, 0x5

    .line 1633
    if-eqz p0, :cond_7

    const-string v5, "2.5"

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 1635
    if-gt p1, v0, :cond_1

    .line 1665
    :cond_0
    :goto_0
    return v0

    .line 1637
    :cond_1
    if-gt p1, v3, :cond_2

    move v0, v1

    .line 1638
    goto :goto_0

    .line 1639
    :cond_2
    const/16 v0, 0xa

    if-gt p1, v0, :cond_3

    move v0, v2

    .line 1640
    goto :goto_0

    .line 1641
    :cond_3
    const/16 v0, 0x14

    if-gt p1, v0, :cond_4

    move v0, v3

    .line 1642
    goto :goto_0

    .line 1643
    :cond_4
    const/16 v0, 0x32

    if-gt p1, v0, :cond_5

    .line 1644
    const/4 v0, 0x6

    goto :goto_0

    .line 1645
    :cond_5
    const/16 v0, 0x64

    if-gt p1, v0, :cond_6

    move v0, v4

    .line 1646
    goto :goto_0

    .line 1648
    :cond_6
    const/16 v0, 0x8

    goto :goto_0

    .line 1650
    :cond_7
    if-gt p1, v2, :cond_8

    .line 1651
    const/4 v0, 0x0

    goto :goto_0

    .line 1652
    :cond_8
    if-gt p1, v3, :cond_9

    .line 1653
    const/4 v0, 0x1

    goto :goto_0

    .line 1654
    :cond_9
    if-le p1, v4, :cond_0

    .line 1656
    const/16 v0, 0xa

    if-gt p1, v0, :cond_a

    move v0, v1

    .line 1657
    goto :goto_0

    .line 1658
    :cond_a
    const/16 v0, 0x14

    if-gt p1, v0, :cond_b

    move v0, v2

    .line 1659
    goto :goto_0

    .line 1660
    :cond_b
    const/16 v0, 0x32

    if-gt p1, v0, :cond_c

    move v0, v3

    .line 1661
    goto :goto_0

    .line 1662
    :cond_c
    const/16 v0, 0x64

    if-gt p1, v0, :cond_d

    .line 1663
    const/4 v0, 0x6

    goto :goto_0

    :cond_d
    move v0, v4

    .line 1665
    goto :goto_0
.end method

.method public static getTruncationSizebySyncEmailIndex(Ljava/lang/String;I)I
    .locals 6
    .param p0, "mProtocolVersion"    # Ljava/lang/String;
    .param p1, "index"    # I

    .prologue
    const/16 v4, 0x32

    const/16 v3, 0x14

    const/16 v2, 0xa

    const/4 v1, 0x5

    const/4 v0, 0x1

    .line 1670
    if-eqz p0, :cond_0

    const-string v5, "2.5"

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1672
    packed-switch p1, :pswitch_data_0

    .line 1691
    const v0, 0x7fffffff

    .line 1714
    :goto_0
    :pswitch_0
    return v0

    .line 1679
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_2
    move v0, v1

    .line 1681
    goto :goto_0

    :pswitch_3
    move v0, v2

    .line 1683
    goto :goto_0

    :pswitch_4
    move v0, v3

    .line 1685
    goto :goto_0

    :pswitch_5
    move v0, v4

    .line 1687
    goto :goto_0

    .line 1689
    :pswitch_6
    const/16 v0, 0x64

    goto :goto_0

    .line 1695
    :cond_0
    packed-switch p1, :pswitch_data_1

    .line 1714
    const v0, 0x7fffffff

    goto :goto_0

    .line 1700
    :pswitch_7
    const/4 v0, 0x4

    goto :goto_0

    :pswitch_8
    move v0, v1

    .line 1702
    goto :goto_0

    .line 1704
    :pswitch_9
    const/4 v0, 0x7

    goto :goto_0

    :pswitch_a
    move v0, v2

    .line 1706
    goto :goto_0

    :pswitch_b
    move v0, v3

    .line 1708
    goto :goto_0

    :pswitch_c
    move v0, v4

    .line 1710
    goto :goto_0

    .line 1712
    :pswitch_d
    const/16 v0, 0x64

    goto :goto_0

    .line 1672
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 1695
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method static getValidStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 260
    if-nez p0, :cond_1

    .line 264
    :cond_0
    :goto_0
    return-object v1

    .line 260
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    move-object v1, p0

    goto :goto_0

    .line 261
    :catch_0
    move-exception v0

    .line 262
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static insertAccountTableRow(ILcom/android/server/enterprise/email/AccountMetaData;JJZLandroid/content/Context;)J
    .locals 16
    .param p0, "containerId"    # I
    .param p1, "accInfo"    # Lcom/android/server/enterprise/email/AccountMetaData;
    .param p2, "hostAuthKeyRecv"    # J
    .param p4, "hostAuthKeySend"    # J
    .param p6, "isInsertOP"    # Z
    .param p7, "context"    # Landroid/content/Context;

    .prologue
    .line 602
    const-wide/16 v8, -0x1

    .line 604
    .local v8, "rowId":J
    const/4 v3, 0x0

    .line 605
    .local v3, "compatibilityUuid":Ljava/lang/String;
    if-eqz p6, :cond_3

    const/4 v10, 0x0

    .line 606
    .local v10, "settingsFlags":I
    :goto_0
    const/4 v6, 0x0

    .line 608
    .local v6, "ringtoneUri":Ljava/lang/String;
    if-eqz p6, :cond_4

    .line 610
    const-string/jumbo v6, "content://settings/system/notification_sound"

    .line 611
    const/4 v10, 0x1

    .line 612
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    .line 619
    :goto_1
    const/4 v13, 0x1

    move-object/from16 v0, p1

    iget-boolean v14, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailNotificationVibrateAlways:Z

    if-ne v13, v14, :cond_5

    .line 620
    or-int/lit8 v10, v10, 0x2

    .line 624
    :cond_0
    :goto_2
    const/4 v13, 0x1

    move-object/from16 v0, p1

    iget-boolean v14, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailNotificationVibrateWhenSilent:Z

    if-ne v13, v14, :cond_6

    .line 625
    or-int/lit8 v10, v10, 0x40

    .line 630
    :cond_1
    :goto_3
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 632
    .local v11, "values":Landroid/content/ContentValues;
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mDisplayName:Ljava/lang/String;

    if-eqz v13, :cond_7

    .line 633
    const-string/jumbo v13, "displayName"

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    :goto_4
    const-string/jumbo v13, "emailAddress"

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    const-string/jumbo v13, "syncLookback"

    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncLookback:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 644
    const-string/jumbo v13, "syncInterval"

    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncInterval:I

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    const-string/jumbo v13, "peakDays"

    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakDays:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 646
    const-string/jumbo v13, "peakStartMinute"

    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakStartMinute:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 647
    const-string/jumbo v13, "peakEndMinute"

    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakEndMinute:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 648
    const-string/jumbo v13, "peakSchedule"

    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mPeakSyncSchedule:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 649
    const-string/jumbo v13, "offPeakSchedule"

    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOffPeakSyncSchedule:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 650
    const-string/jumbo v13, "roamingSchedule"

    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mRoamingSyncSchedule:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 652
    const-string/jumbo v13, "hostAuthKeyRecv"

    move-wide/from16 v0, p2

    long-to-int v14, v0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 653
    const-string/jumbo v13, "hostAuthKeySend"

    move-wide/from16 v0, p4

    long-to-int v14, v0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 654
    const-string/jumbo v13, "flags"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 655
    const-string/jumbo v14, "isDefault"

    if-eqz p6, :cond_8

    const/4 v13, 0x0

    :goto_5
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v14, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 656
    const-string v13, "compatibilityUuid"

    invoke-virtual {v11, v13, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mSenderName:Ljava/lang/String;

    if-eqz v13, :cond_a

    .line 658
    const-string/jumbo v13, "senderName"

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mSenderName:Ljava/lang/String;

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    :goto_6
    const-string/jumbo v13, "ringtoneUri"

    invoke-virtual {v11, v13, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mProtocolVersion:Ljava/lang/String;

    if-eqz v13, :cond_2

    .line 664
    const-string/jumbo v13, "protocolVersion"

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mProtocolVersion:Ljava/lang/String;

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    :cond_2
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mSignature:Ljava/lang/String;

    if-eqz v13, :cond_b

    .line 667
    const-string/jumbo v13, "signature"

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mSignature:Ljava/lang/String;

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    const-string/jumbo v13, "isSignatureEdited"

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 672
    :goto_7
    const-string v13, "calendarSyncLookback"

    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mSyncCalendarAge:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 673
    const-string/jumbo v13, "emailsize"

    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailBodyTruncationSize:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 674
    const-string/jumbo v13, "roamingemailsize"

    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailRoamingBodyTruncationSize:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 676
    invoke-static/range {p0 .. p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountContentUri(I)Landroid/net/Uri;

    move-result-object v2

    .line 678
    .local v2, "acctUri":Landroid/net/Uri;
    if-eqz p6, :cond_c

    .line 679
    :try_start_0
    invoke-virtual/range {p7 .. p7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    invoke-virtual {v13, v2, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    .line 682
    .local v5, "newRowUri":Landroid/net/Uri;
    invoke-static {v5}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v8

    .line 685
    :try_start_1
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 686
    .end local v11    # "values":Landroid/content/ContentValues;
    .local v12, "values":Landroid/content/ContentValues;
    :try_start_2
    const-string v13, "accountKey"

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    const-string/jumbo v13, "sevenAccountKey"

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 688
    const-string/jumbo v13, "timeLimit"

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 689
    const-string/jumbo v13, "sizeLimit"

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 690
    const-string/jumbo v13, "typeMsg"

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 691
    const-string/jumbo v13, "peakTime"

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 692
    const-string/jumbo v13, "offPeakTime"

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 693
    const-string/jumbo v13, "days"

    const-string v14, ""

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    const-string/jumbo v13, "peakStartTime"

    const-string v14, ""

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    const-string/jumbo v13, "peakEndTime"

    const-string v14, ""

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    const-string/jumbo v13, "whileRoaming"

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 697
    const-string v13, "attachmentEnabled"

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 698
    invoke-virtual/range {p7 .. p7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    invoke-static/range {p0 .. p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountCBContentUri(I)Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v13, v14, v12}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v11, v12

    .line 708
    .end local v5    # "newRowUri":Landroid/net/Uri;
    .end local v12    # "values":Landroid/content/ContentValues;
    .restart local v11    # "values":Landroid/content/ContentValues;
    :goto_8
    :try_start_3
    const-string v13, "SettingsUtils"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "insertAccountTableRow row Id : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 714
    :goto_9
    return-wide v8

    .line 605
    .end local v2    # "acctUri":Landroid/net/Uri;
    .end local v6    # "ringtoneUri":Ljava/lang/String;
    .end local v10    # "settingsFlags":I
    .end local v11    # "values":Landroid/content/ContentValues;
    :cond_3
    move-object/from16 v0, p1

    iget v10, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mFlags:I

    goto/16 :goto_0

    .line 615
    .restart local v6    # "ringtoneUri":Ljava/lang/String;
    .restart local v10    # "settingsFlags":I
    :cond_4
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mRingtoneUri:Ljava/lang/String;

    .line 616
    move-object/from16 v0, p1

    iget v10, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mFlags:I

    .line 617
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mCompatibilityUuid:Ljava/lang/String;

    goto/16 :goto_1

    .line 621
    :cond_5
    const/4 v13, 0x2

    and-int/lit8 v14, v10, 0x2

    if-ne v13, v14, :cond_0

    .line 622
    xor-int/lit8 v10, v10, 0x2

    goto/16 :goto_2

    .line 626
    :cond_6
    const/16 v13, 0x40

    and-int/lit8 v14, v10, 0x40

    if-ne v13, v14, :cond_1

    .line 627
    xor-int/lit8 v10, v10, 0x40

    goto/16 :goto_3

    .line 635
    .restart local v11    # "values":Landroid/content/ContentValues;
    :cond_7
    const-string/jumbo v13, "displayName"

    const-string v14, " "

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 655
    :cond_8
    move-object/from16 v0, p1

    iget-boolean v13, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mIsDefault:Z

    if-eqz v13, :cond_9

    const/4 v13, 0x1

    goto/16 :goto_5

    :cond_9
    const/4 v13, 0x0

    goto/16 :goto_5

    .line 660
    :cond_a
    const-string/jumbo v13, "senderName"

    const-string v14, " "

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 670
    :cond_b
    const-string/jumbo v13, "signature"

    const-string v14, " "

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 700
    .restart local v2    # "acctUri":Landroid/net/Uri;
    .restart local v5    # "newRowUri":Landroid/net/Uri;
    :catch_0
    move-exception v4

    .line 701
    .local v4, "e":Ljava/lang/Exception;
    :goto_a
    :try_start_4
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_8

    .line 709
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "newRowUri":Landroid/net/Uri;
    :catch_1
    move-exception v4

    .line 710
    .restart local v4    # "e":Ljava/lang/Exception;
    const-wide/16 v8, -0x1

    .line 711
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9

    .line 704
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_c
    :try_start_5
    invoke-virtual/range {p7 .. p7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "_id = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    iget v15, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mId:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v13, v2, v11, v14, v15}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 706
    .local v7, "rowCount":I
    if-lez v7, :cond_d

    move-object/from16 v0, p1

    iget v13, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mId:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :goto_b
    int-to-long v8, v13

    goto/16 :goto_8

    :cond_d
    const/4 v13, -0x1

    goto :goto_b

    .line 700
    .end local v7    # "rowCount":I
    .end local v11    # "values":Landroid/content/ContentValues;
    .restart local v5    # "newRowUri":Landroid/net/Uri;
    .restart local v12    # "values":Landroid/content/ContentValues;
    :catch_2
    move-exception v4

    move-object v11, v12

    .end local v12    # "values":Landroid/content/ContentValues;
    .restart local v11    # "values":Landroid/content/ContentValues;
    goto :goto_a
.end method

.method private static insertAccountsTableRow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)J
    .locals 14
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "isInsertOP"    # Z
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    .line 472
    const/4 v2, 0x0

    .line 473
    .local v2, "accountsDB":Landroid/database/sqlite/SQLiteDatabase;
    const-wide/16 v8, -0x1

    .line 476
    .local v8, "rowId":J
    :try_start_0
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 477
    .local v7, "values":Landroid/content/ContentValues;
    const-string/jumbo v10, "name"

    invoke-virtual {v7, v10, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    const-string/jumbo v10, "type"

    invoke-virtual {v7, v10, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    if-eqz p2, :cond_0

    .line 480
    const-string/jumbo v10, "password"

    move-object/from16 v0, p2

    invoke-virtual {v7, v10, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    :cond_0
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->makeDBpath()V

    .line 484
    sget-object v10, Lcom/android/server/enterprise/email/SettingsUtils;->ACCOUNTS_DB:Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 486
    if-eqz p3, :cond_4

    .line 487
    const-string v10, "accounts"

    const-string/jumbo v11, "doesn\'t exist at all"

    invoke-virtual {v2, v10, v11, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v8

    .line 488
    const-string v10, "SettingsUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "insertAccountsTableRow  isInsertOP:   "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    :cond_1
    :goto_0
    const-string v10, "SettingsUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "insertAccountsTableRow row Id : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 503
    if-eqz v2, :cond_2

    .line 504
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 506
    :cond_2
    const-wide/16 v10, -0x1

    cmp-long v10, v8, v10

    if-eqz v10, :cond_3

    .line 508
    sget v10, Lcom/android/server/enterprise/email/SettingsUtils;->currentUserID:I

    invoke-static {v10}, Lcom/android/server/enterprise/adapterlayer/UtilsAdapter;->updateAccountManagerCache(I)V

    .line 512
    .end local v7    # "values":Landroid/content/ContentValues;
    :cond_3
    :goto_1
    return-wide v8

    .line 491
    .restart local v7    # "values":Landroid/content/ContentValues;
    :cond_4
    :try_start_1
    move-object/from16 v0, p4

    invoke-static {p0, p1, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountsDBRowId(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)J

    move-result-wide v4

    .line 492
    .local v4, "accountsDBRowId":J
    const-wide/16 v10, -0x1

    cmp-long v10, v10, v4

    if-eqz v10, :cond_1

    .line 493
    const-string v10, "accounts"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "_id = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v2, v10, v7, v11, v12}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    .line 495
    .local v6, "rowCount":I
    if-lez v6, :cond_5

    move-wide v8, v4

    :goto_2
    goto :goto_0

    :cond_5
    const-wide/16 v8, -0x1

    goto :goto_2

    .line 499
    .end local v4    # "accountsDBRowId":J
    .end local v6    # "rowCount":I
    .end local v7    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v3

    .line 500
    .local v3, "e":Ljava/lang/Exception;
    const-wide/16 v8, -0x1

    .line 501
    :try_start_2
    const-string v10, "SettingsUtils"

    const-string/jumbo v11, "insertAccountsTableRow() : failed. "

    invoke-static {v10, v11, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 503
    if-eqz v2, :cond_6

    .line 504
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 506
    :cond_6
    const-wide/16 v10, -0x1

    cmp-long v10, v8, v10

    if-eqz v10, :cond_3

    .line 508
    sget v10, Lcom/android/server/enterprise/email/SettingsUtils;->currentUserID:I

    invoke-static {v10}, Lcom/android/server/enterprise/adapterlayer/UtilsAdapter;->updateAccountManagerCache(I)V

    goto :goto_1

    .line 503
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    if-eqz v2, :cond_7

    .line 504
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 506
    :cond_7
    const-wide/16 v12, -0x1

    cmp-long v11, v8, v12

    if-eqz v11, :cond_8

    .line 508
    sget v11, Lcom/android/server/enterprise/email/SettingsUtils;->currentUserID:I

    invoke-static {v11}, Lcom/android/server/enterprise/adapterlayer/UtilsAdapter;->updateAccountManagerCache(I)V

    :cond_8
    throw v10
.end method

.method private static insertHostAuthTableRow(Landroid/net/Uri;Lcom/android/server/enterprise/email/AccountMetaData;ZZLandroid/content/Context;)J
    .locals 16
    .param p0, "hostUri"    # Landroid/net/Uri;
    .param p1, "accInfo"    # Lcom/android/server/enterprise/email/AccountMetaData;
    .param p2, "isInsertOP"    # Z
    .param p3, "isHostAuthRecv"    # Z
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    .line 719
    const-wide/16 v10, -0x1

    .line 720
    .local v10, "rowId":J
    const/4 v3, 0x0

    .line 721
    .local v3, "flags":I
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 724
    .local v9, "values":Landroid/content/ContentValues;
    if-eqz p3, :cond_5

    .line 725
    if-eqz p2, :cond_4

    const/4 v12, 0x4

    :goto_0
    move-object/from16 v0, p1

    iget-boolean v13, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerUseSSL:Z

    move-object/from16 v0, p1

    iget-boolean v14, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerUseTLS:Z

    move-object/from16 v0, p1

    iget-boolean v15, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerAcceptAllCertificates:Z

    move-object/from16 v0, p4

    invoke-static {v12, v13, v14, v15, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getHostAuthFlags(IZZZLandroid/content/Context;)I

    move-result v3

    .line 734
    :goto_1
    const-string/jumbo v13, "protocol"

    if-eqz p3, :cond_7

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingProtocol:Ljava/lang/String;

    :goto_2
    invoke-virtual {v9, v13, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    const-string v13, "address"

    if-eqz p3, :cond_8

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerAddress:Ljava/lang/String;

    :goto_3
    invoke-virtual {v9, v13, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    const-string/jumbo v13, "port"

    move-object/from16 v0, p1

    iget-boolean v12, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    if-eqz v12, :cond_9

    const/4 v12, 0x0

    :goto_4
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v9, v13, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 740
    const-string/jumbo v12, "flags"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 742
    move-object/from16 v0, p1

    iget-boolean v12, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    if-eqz v12, :cond_c

    .line 743
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mEasDomain:Ljava/lang/String;

    if-eqz v12, :cond_b

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mEasDomain:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\\"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 748
    .local v6, "login":Ljava/lang/String;
    :goto_5
    const-string/jumbo v12, "login"

    invoke-virtual {v9, v12, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    if-eqz p3, :cond_0

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPassword:Ljava/lang/String;

    if-eqz v12, :cond_0

    .line 750
    const-string/jumbo v12, "password"

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPassword:Ljava/lang/String;

    invoke-virtual {v9, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    :cond_0
    if-nez p3, :cond_1

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPassword:Ljava/lang/String;

    if-eqz v12, :cond_1

    .line 753
    const-string/jumbo v12, "password"

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPassword:Ljava/lang/String;

    invoke-virtual {v9, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    :cond_1
    if-eqz p3, :cond_2

    .line 756
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPathPrefix:Ljava/lang/String;

    if-eqz v12, :cond_e

    .line 757
    const-string/jumbo v12, "domain"

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPathPrefix:Ljava/lang/String;

    invoke-virtual {v9, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    :cond_2
    :goto_6
    if-nez p3, :cond_3

    .line 763
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPathPrefix:Ljava/lang/String;

    if-eqz v12, :cond_f

    .line 764
    const-string/jumbo v12, "domain"

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPathPrefix:Ljava/lang/String;

    invoke-virtual {v9, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    :cond_3
    :goto_7
    if-eqz p2, :cond_10

    .line 772
    :try_start_0
    invoke-virtual/range {p4 .. p4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v12, v0, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v7

    .line 773
    .local v7, "newRowUri":Landroid/net/Uri;
    invoke-static {v7}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v10

    .line 781
    .end local v7    # "newRowUri":Landroid/net/Uri;
    :goto_8
    const-string v12, "SettingsUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "insertHostAuthTableRow row Id : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 787
    :goto_9
    return-wide v10

    .line 725
    .end local v6    # "login":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p1

    iget v12, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerFlags:I

    goto/16 :goto_0

    .line 729
    :cond_5
    if-eqz p2, :cond_6

    const/4 v12, 0x4

    :goto_a
    move-object/from16 v0, p1

    iget-boolean v13, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerUseSSL:Z

    move-object/from16 v0, p1

    iget-boolean v14, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerUseTLS:Z

    move-object/from16 v0, p1

    iget-boolean v15, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerAcceptAllCertificates:Z

    move-object/from16 v0, p4

    invoke-static {v12, v13, v14, v15, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getHostAuthFlags(IZZZLandroid/content/Context;)I

    move-result v3

    goto/16 :goto_1

    :cond_6
    move-object/from16 v0, p1

    iget v12, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerFlags:I

    goto :goto_a

    .line 734
    :cond_7
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingProtocol:Ljava/lang/String;

    goto/16 :goto_2

    .line 736
    :cond_8
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerAddress:Ljava/lang/String;

    goto/16 :goto_3

    .line 738
    :cond_9
    if-eqz p3, :cond_a

    move-object/from16 v0, p1

    iget v12, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPort:I

    goto/16 :goto_4

    :cond_a
    move-object/from16 v0, p1

    iget v12, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPort:I

    goto/16 :goto_4

    .line 743
    :cond_b
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    goto/16 :goto_5

    .line 746
    :cond_c
    if-eqz p3, :cond_d

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    .restart local v6    # "login":Ljava/lang/String;
    :goto_b
    goto/16 :goto_5

    .end local v6    # "login":Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerLogin:Ljava/lang/String;

    goto :goto_b

    .line 759
    .restart local v6    # "login":Ljava/lang/String;
    :cond_e
    const-string/jumbo v12, "domain"

    const-string v13, ""

    invoke-virtual {v9, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 766
    :cond_f
    const-string/jumbo v12, "domain"

    const-string v13, ""

    invoke-virtual {v9, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 775
    :cond_10
    if-eqz p3, :cond_11

    :try_start_1
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mHostAuthKeyRecv:J

    .line 777
    .local v4, "existingHostAuthRowId":J
    :goto_c
    invoke-virtual/range {p4 .. p4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "_id = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v12, v0, v9, v13, v14}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 779
    .local v8, "rowCount":I
    if-lez v8, :cond_12

    move-wide v10, v4

    :goto_d
    goto/16 :goto_8

    .line 775
    .end local v4    # "existingHostAuthRowId":J
    .end local v8    # "rowCount":I
    :cond_11
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mHostAuthKeySend:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_c

    .line 779
    .restart local v4    # "existingHostAuthRowId":J
    .restart local v8    # "rowCount":I
    :cond_12
    const-wide/16 v10, -0x1

    goto :goto_d

    .line 782
    .end local v4    # "existingHostAuthRowId":J
    .end local v8    # "rowCount":I
    :catch_0
    move-exception v2

    .line 783
    .local v2, "e":Ljava/lang/Exception;
    const-wide/16 v10, -0x1

    .line 784
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_9
.end method

.method public static isAccountRemovalAllowed(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "emailAddress"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1769
    const/4 v1, 0x1

    .line 1770
    .local v1, "ret":Z
    const-string/jumbo v2, "device_account_policy"

    invoke-static {v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;

    .line 1772
    .local v0, "dap":Lcom/android/server/enterprise/security/DeviceAccountPolicy;
    if-eqz v0, :cond_0

    invoke-static {v3, v3}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountType(ZI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p0, v3}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->isAccountRemovalAllowed(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1775
    const/4 v1, 0x0

    .line 1777
    :cond_0
    return v1
.end method

.method private static isExistingAccount(Landroid/net/Uri;JLandroid/content/Context;)Z
    .locals 11
    .param p0, "acctUri"    # Landroid/net/Uri;
    .param p1, "accountId"    # J
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 146
    new-array v2, v8, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v9

    .line 150
    .local v2, "ID_PROJECTION":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 152
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 154
    if-eqz v6, :cond_1

    .line 155
    const-string v0, "SettingsUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getAccount row count : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_1

    .line 163
    if-eqz v6, :cond_0

    .line 164
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    move v0, v8

    .line 166
    :goto_0
    return v0

    .line 163
    :cond_1
    if-eqz v6, :cond_2

    .line 164
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    move v0, v9

    .line 166
    goto :goto_0

    .line 160
    :catch_0
    move-exception v7

    .line 161
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    if-eqz v6, :cond_2

    .line 164
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 163
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 164
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static isPackageInstalled(Ljava/lang/String;I)Z
    .locals 8
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .prologue
    const/4 v3, 0x0

    .line 1748
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 1749
    .local v2, "pm":Landroid/content/pm/IPackageManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1750
    .local v4, "token":J
    if-eqz v2, :cond_0

    .line 1752
    const/4 v6, 0x0

    :try_start_0
    invoke-interface {v2, p0, v6, p1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1753
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_1

    .line 1754
    const/4 v3, 0x1

    .line 1761
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1764
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    return v3

    .line 1761
    .restart local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 1758
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v0

    .line 1759
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v6, "SettingsUtils"

    const-string v7, "Exception in isPackageInstalled()"

    invoke-static {v6, v7, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1761
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public static isPersona(ILandroid/content/Context;)Z
    .locals 3
    .param p0, "userId"    # I
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 1720
    const/4 v1, 0x0

    .line 1722
    .local v1, "ret":Z
    if-eqz p0, :cond_0

    .line 1723
    const-string/jumbo v2, "persona"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    .line 1724
    .local v0, "pm":Landroid/os/PersonaManager;
    invoke-virtual {v0, p0}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1725
    const/4 v1, 0x1

    .line 1729
    .end local v0    # "pm":Landroid/os/PersonaManager;
    .end local v1    # "ret":Z
    :cond_0
    return v1
.end method

.method public static isSupportNewEmail()Z
    .locals 4

    .prologue
    .line 1446
    const-string v1, "com.samsung.android.email.provider"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/enterprise/email/SettingsUtils;->isPackageInstalled(Ljava/lang/String;I)Z

    move-result v0

    .line 1447
    .local v0, "ret":Z
    const-string v1, "SettingsUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isSupportNewEmail() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1448
    return v0
.end method

.method static isValidEmailAddress(Ljava/lang/String;)Z
    .locals 9
    .param p0, "emailAddress"    # Ljava/lang/String;

    .prologue
    .line 420
    const/4 v3, 0x0

    .line 421
    .local v3, "isValid":Z
    invoke-static {p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 422
    if-eqz p0, :cond_0

    .line 424
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 425
    .local v6, "len":I
    const/16 v7, 0x40

    invoke-virtual {p0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 426
    .local v1, "firstAt":I
    const/16 v7, 0x40

    invoke-virtual {p0, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 427
    .local v4, "lastAt":I
    const/16 v7, 0x2e

    add-int/lit8 v8, v4, 0x1

    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 428
    .local v2, "firstDot":I
    const/16 v7, 0x2e

    invoke-virtual {p0, v7}, Ljava/lang/String;->lastIndexOf(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 429
    .local v5, "lastDot":I
    if-lez v1, :cond_1

    if-ne v1, v4, :cond_1

    add-int/lit8 v7, v4, 0x1

    if-ge v7, v2, :cond_1

    if-gt v2, v5, :cond_1

    add-int/lit8 v7, v6, -0x1

    if-ge v5, v7, :cond_1

    const/4 v3, 0x1

    .line 435
    .end local v1    # "firstAt":I
    .end local v2    # "firstDot":I
    .end local v4    # "lastAt":I
    .end local v5    # "lastDot":I
    .end local v6    # "len":I
    :cond_0
    :goto_0
    return v3

    .line 429
    .restart local v1    # "firstAt":I
    .restart local v2    # "firstDot":I
    .restart local v4    # "lastAt":I
    .restart local v5    # "lastDot":I
    .restart local v6    # "len":I
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 431
    .end local v1    # "firstAt":I
    .end local v2    # "firstDot":I
    .end local v4    # "lastAt":I
    .end local v5    # "lastDot":I
    .end local v6    # "len":I
    :catch_0
    move-exception v0

    .line 432
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static loadHostAuth(Landroid/net/Uri;JLcom/android/server/enterprise/email/AccountMetaData;ZLandroid/content/Context;)Z
    .locals 9
    .param p0, "hostUri"    # Landroid/net/Uri;
    .param p1, "id"    # J
    .param p3, "acc"    # Lcom/android/server/enterprise/email/AccountMetaData;
    .param p4, "isReceive"    # Z
    .param p5, "context"    # Landroid/content/Context;

    .prologue
    .line 1257
    const/4 v8, 0x0

    .line 1258
    .local v8, "ret":Z
    const/4 v6, 0x0

    .line 1260
    .local v6, "c":Landroid/database/Cursor;
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string/jumbo v1, "protocol"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "address"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string/jumbo v1, "port"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string/jumbo v1, "flags"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    const-string/jumbo v1, "login"

    aput-object v1, v2, v0

    const/4 v0, 0x6

    const-string/jumbo v1, "password"

    aput-object v1, v2, v0

    const/4 v0, 0x7

    const-string/jumbo v1, "domain"

    aput-object v1, v2, v0

    .line 1266
    .local v2, "ID_PROJECTION":[Ljava/lang/String;
    :try_start_0
    invoke-virtual {p5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1268
    const-string v0, "SettingsUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "loadHostAuth row count : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1269
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1270
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1271
    if-eqz p4, :cond_5

    .line 1272
    const-string/jumbo v0, "protocol"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingProtocol:Ljava/lang/String;

    .line 1273
    const-string v0, "address"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerAddress:Ljava/lang/String;

    .line 1275
    const-string/jumbo v0, "port"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPort:I

    .line 1276
    const-string/jumbo v0, "flags"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerFlags:I

    .line 1277
    const/4 v0, 0x1

    iget v1, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerFlags:I

    and-int/lit8 v1, v1, 0x1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerUseSSL:Z

    .line 1278
    const/4 v0, 0x2

    iget v1, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerFlags:I

    and-int/lit8 v1, v1, 0x2

    if-ne v0, v1, :cond_3

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerUseTLS:Z

    .line 1279
    const/16 v0, 0x8

    iget v1, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerFlags:I

    and-int/lit8 v1, v1, 0x8

    if-ne v0, v1, :cond_4

    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerAcceptAllCertificates:Z

    .line 1280
    const-string/jumbo v0, "login"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    .line 1282
    const-string/jumbo v0, "password"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPassword:Ljava/lang/String;

    .line 1285
    const-string/jumbo v0, "domain"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerPathPrefix:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1304
    :goto_3
    const/4 v8, 0x1

    .line 1309
    :cond_0
    if-eqz v6, :cond_1

    .line 1310
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1312
    :cond_1
    :goto_4
    return v8

    .line 1277
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1278
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 1279
    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    .line 1288
    :cond_5
    :try_start_1
    const-string/jumbo v0, "protocol"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingProtocol:Ljava/lang/String;

    .line 1289
    const-string v0, "address"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerAddress:Ljava/lang/String;

    .line 1291
    const-string/jumbo v0, "port"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPort:I

    .line 1292
    const-string/jumbo v0, "flags"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerFlags:I

    .line 1293
    const/4 v0, 0x1

    iget v1, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerFlags:I

    and-int/lit8 v1, v1, 0x1

    if-ne v0, v1, :cond_6

    const/4 v0, 0x1

    :goto_5
    iput-boolean v0, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerUseSSL:Z

    .line 1294
    const/4 v0, 0x2

    iget v1, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerFlags:I

    and-int/lit8 v1, v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    iput-boolean v0, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerUseTLS:Z

    .line 1295
    const/16 v0, 0x8

    iget v1, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerFlags:I

    and-int/lit8 v1, v1, 0x8

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    iput-boolean v0, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerAcceptAllCertificates:Z

    .line 1296
    const-string/jumbo v0, "login"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerLogin:Ljava/lang/String;

    .line 1298
    const-string/jumbo v0, "password"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPassword:Ljava/lang/String;

    .line 1301
    const-string/jumbo v0, "domain"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/android/server/enterprise/email/AccountMetaData;->mOutGoingServerPathPrefix:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_3

    .line 1306
    :catch_0
    move-exception v7

    .line 1307
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1309
    if-eqz v6, :cond_1

    .line 1310
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_4

    .line 1293
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_6
    const/4 v0, 0x0

    goto :goto_5

    .line 1294
    :cond_7
    const/4 v0, 0x0

    goto :goto_6

    .line 1295
    :cond_8
    const/4 v0, 0x0

    goto :goto_7

    .line 1309
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_9

    .line 1310
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v0
.end method

.method private static makeDBpath()V
    .locals 3

    .prologue
    .line 465
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/system/users/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/server/enterprise/email/SettingsUtils;->currentUserID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "accounts.db"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/email/SettingsUtils;->ACCOUNTS_DB:Ljava/lang/String;

    .line 466
    const-string v0, "SettingsUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getDBpath   ACCOUNTS_DB  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/enterprise/email/SettingsUtils;->ACCOUNTS_DB:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  user id   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/server/enterprise/email/SettingsUtils;->currentUserID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    return-void
.end method

.method static declared-synchronized sendAccountsChangedBroadcast(ILandroid/content/Context;I)V
    .locals 10
    .param p0, "containerId"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callingUid"    # I

    .prologue
    .line 224
    const-class v6, Lcom/android/server/enterprise/email/SettingsUtils;

    monitor-enter v6

    :try_start_0
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    .line 226
    .local v4, "userID":I
    :try_start_1
    const-string v2, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    .line 227
    .local v2, "LOGIN_ACCOUNTS_CHANGED_ACTION":Ljava/lang/String;
    const/high16 v1, 0x10000000

    .line 228
    .local v1, "FLAG_RECEIVER_REGISTERED_ONLY_BEFORE_BOOT":I
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 229
    .local v0, "ACCOUNTS_CHANGED_INTENT":Landroid/content/Intent;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 230
    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p1, v0, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 232
    if-eqz v4, :cond_1

    .line 233
    :try_start_2
    invoke-static {v4, p1}, Lcom/android/server/enterprise/email/SettingsUtils;->isPersona(ILandroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 234
    invoke-static {p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    new-instance v8, Landroid/os/UserHandle;

    invoke-direct {v8, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p1, v5, v7, v8}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v5

    sput-object v5, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    .line 235
    const-string v5, "SettingsUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "sendAccountsChangedBroadcast : USER space   "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 250
    :goto_0
    :try_start_3
    sget-object v5, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getHostAuthContentUri(I)Landroid/net/Uri;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v5, v7, v8, v9}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 251
    sget-object v5, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountContentUri(I)Landroid/net/Uri;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v5, v7, v8, v9}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 255
    .end local v0    # "ACCOUNTS_CHANGED_INTENT":Landroid/content/Intent;
    .end local v1    # "FLAG_RECEIVER_REGISTERED_ONLY_BEFORE_BOOT":I
    .end local v2    # "LOGIN_ACCOUNTS_CHANGED_ACTION":Ljava/lang/String;
    :goto_1
    :try_start_4
    const-string v5, "SettingsUtils"

    const-string/jumbo v7, "sendAccountsChangedBroadcast()"

    invoke-static {v5, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 256
    :goto_2
    monitor-exit v6

    return-void

    .line 237
    .restart local v0    # "ACCOUNTS_CHANGED_INTENT":Landroid/content/Intent;
    .restart local v1    # "FLAG_RECEIVER_REGISTERED_ONLY_BEFORE_BOOT":I
    .restart local v2    # "LOGIN_ACCOUNTS_CHANGED_ACTION":Ljava/lang/String;
    :cond_0
    :try_start_5
    invoke-static {p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    new-instance v8, Landroid/os/UserHandle;

    invoke-direct {v8, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p1, v5, v7, v8}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v5

    sput-object v5, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    .line 238
    const-string v5, "SettingsUtils"

    const-string/jumbo v7, "sendAccountsChangedBroadcast : USER space"

    invoke-static {v5, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 245
    :catch_0
    move-exception v3

    .line 246
    .local v3, "e":Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 252
    .end local v0    # "ACCOUNTS_CHANGED_INTENT":Landroid/content/Intent;
    .end local v1    # "FLAG_RECEIVER_REGISTERED_ONLY_BEFORE_BOOT":I
    .end local v2    # "LOGIN_ACCOUNTS_CHANGED_ACTION":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 253
    .restart local v3    # "e":Ljava/lang/Exception;
    :try_start_7
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    .line 224
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "userID":I
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 242
    .restart local v0    # "ACCOUNTS_CHANGED_INTENT":Landroid/content/Intent;
    .restart local v1    # "FLAG_RECEIVER_REGISTERED_ONLY_BEFORE_BOOT":I
    .restart local v2    # "LOGIN_ACCOUNTS_CHANGED_ACTION":Ljava/lang/String;
    .restart local v4    # "userID":I
    :cond_1
    :try_start_8
    sput-object p1, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_0
.end method

.method static declared-synchronized setAsDefaultAccount(Landroid/app/enterprise/ContextInfo;JLandroid/content/Context;)Z
    .locals 19
    .param p0, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p1, "accountId"    # J
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 170
    const-class v14, Lcom/android/server/enterprise/email/SettingsUtils;

    monitor-enter v14

    const/4 v6, 0x0

    .line 171
    .local v6, "success":Z
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v10

    .line 172
    .local v10, "userID":I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 173
    .local v3, "containerId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v8

    .line 175
    .local v8, "token":J
    if-eqz v10, :cond_1

    .line 176
    :try_start_1
    move-object/from16 v0, p3

    invoke-static {v10, v0}, Lcom/android/server/enterprise/email/SettingsUtils;->isPersona(ILandroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 177
    invoke-static {v3}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v13

    const/4 v15, 0x0

    new-instance v16, Landroid/os/UserHandle;

    move-object/from16 v0, v16

    invoke-direct {v0, v10}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v13, v15, v1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v13

    sput-object v13, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    .line 178
    const-string v13, "SettingsUtils"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "setAsDefaultAccount for Persona : USER space   "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {v3}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 191
    :goto_0
    const-wide/16 v16, 0x1

    cmp-long v13, v16, p1

    if-lez v13, :cond_2

    .line 192
    :try_start_2
    const-string v13, "SettingsUtils"

    const-string/jumbo v15, "setAsDefaultAccount : accountId is invalid"

    invoke-static {v13, v15}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v7, v6

    .line 220
    .end local v6    # "success":Z
    .local v7, "success":I
    :goto_1
    monitor-exit v14

    return v7

    .line 180
    .end local v7    # "success":I
    .restart local v6    # "success":Z
    :cond_0
    :try_start_3
    move-object/from16 v0, p0

    iget v13, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v13}, Lcom/android/server/enterprise/email/SettingsUtils;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v13

    const/4 v15, 0x0

    new-instance v16, Landroid/os/UserHandle;

    move-object/from16 v0, v16

    invoke-direct {v0, v10}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v13, v15, v1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v13

    sput-object v13, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    .line 181
    const-string v13, "SettingsUtils"

    const-string/jumbo v15, "setAsDefaultAccount : USER space"

    invoke-static {v13, v15}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 187
    :catch_0
    move-exception v5

    .line 188
    .local v5, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move v7, v6

    .line 189
    .restart local v7    # "success":I
    goto :goto_1

    .line 185
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v7    # "success":I
    :cond_1
    :try_start_5
    sput-object p3, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 170
    .end local v3    # "containerId":I
    .end local v8    # "token":J
    .end local v10    # "userID":I
    :catchall_0
    move-exception v13

    monitor-exit v14

    throw v13

    .line 196
    .restart local v3    # "containerId":I
    .restart local v8    # "token":J
    .restart local v10    # "userID":I
    :cond_2
    :try_start_6
    invoke-static {v3}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountContentUri(I)Landroid/net/Uri;

    move-result-object v2

    .line 197
    .local v2, "acctUri":Landroid/net/Uri;
    sget-object v13, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    move-wide/from16 v0, p1

    invoke-static {v2, v0, v1, v13}, Lcom/android/server/enterprise/email/SettingsUtils;->isExistingAccount(Landroid/net/Uri;JLandroid/content/Context;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 198
    const-string v13, "SettingsUtils"

    const-string/jumbo v15, "setAsDefaultAccount : No Such Account"

    invoke-static {v13, v15}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v7, v6

    .line 199
    .restart local v7    # "success":I
    goto :goto_1

    .line 202
    .end local v7    # "success":I
    :cond_3
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 203
    .local v11, "values":Landroid/content/ContentValues;
    const-string/jumbo v13, "isDefault"

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v11, v13, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 206
    :try_start_7
    sget-object v13, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v13, v2, v11, v15, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 207
    .local v4, "count":I
    const-string v13, "SettingsUtils"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "setAsDefaultAccount : row count for resetting the default column : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 210
    .end local v11    # "values":Landroid/content/ContentValues;
    .local v12, "values":Landroid/content/ContentValues;
    :try_start_8
    const-string/jumbo v13, "isDefault"

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v12, v13, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 211
    sget-object v13, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "_id = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-wide/from16 v0, p1

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v13, v2, v12, v15, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 213
    const-string v13, "SettingsUtils"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "setAsDefaultAccount : row count for setting the default column : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 214
    if-lez v4, :cond_4

    const/4 v6, 0x1

    :goto_2
    move-object v11, v12

    .line 219
    .end local v4    # "count":I
    .end local v12    # "values":Landroid/content/ContentValues;
    .restart local v11    # "values":Landroid/content/ContentValues;
    :goto_3
    :try_start_9
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v7, v6

    .line 220
    .restart local v7    # "success":I
    goto/16 :goto_1

    .line 214
    .end local v7    # "success":I
    .end local v11    # "values":Landroid/content/ContentValues;
    .restart local v4    # "count":I
    .restart local v12    # "values":Landroid/content/ContentValues;
    :cond_4
    const/4 v6, 0x0

    goto :goto_2

    .line 215
    .end local v4    # "count":I
    .end local v12    # "values":Landroid/content/ContentValues;
    .restart local v11    # "values":Landroid/content/ContentValues;
    :catch_1
    move-exception v5

    .line 216
    .restart local v5    # "e":Ljava/lang/Exception;
    :goto_4
    const/4 v6, 0x0

    .line 217
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_3

    .line 215
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v11    # "values":Landroid/content/ContentValues;
    .restart local v4    # "count":I
    .restart local v12    # "values":Landroid/content/ContentValues;
    :catch_2
    move-exception v5

    move-object v11, v12

    .end local v12    # "values":Landroid/content/ContentValues;
    .restart local v11    # "values":Landroid/content/ContentValues;
    goto :goto_4
.end method

.method static setPackageNameForUid(ILjava/lang/String;)V
    .locals 3
    .param p0, "uid"    # I
    .param p1, "adminPkgName"    # Ljava/lang/String;

    .prologue
    .line 277
    sput p0, Lcom/android/server/enterprise/email/SettingsUtils;->preCallingUid:I

    .line 278
    sput-object p1, Lcom/android/server/enterprise/email/SettingsUtils;->adminPkg:Ljava/lang/String;

    .line 279
    const-string v0, "SettingsUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPackageNameForUid :   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/enterprise/email/SettingsUtils;->adminPkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    return-void
.end method

.method static setPassword(IJLjava/lang/String;Landroid/content/Context;ZZI)V
    .locals 7
    .param p0, "containerId"    # I
    .param p1, "accountId"    # J
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "isIncomingPassword"    # Z
    .param p6, "isEasAccount"    # Z
    .param p7, "userID"    # I

    .prologue
    .line 1571
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "edm.intent.action.internal.SET_EMAILACCOUNT_PASSWORD"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1572
    .local v3, "intent":Landroid/content/Intent;
    const-string v4, "account_id"

    invoke-virtual {v3, v4, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1573
    const-string v2, ""

    .line 1574
    .local v2, "caller":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->createIDforAccount()J

    move-result-wide v0

    .line 1575
    .local v0, "accID":J
    if-eqz p6, :cond_1

    .line 1577
    if-eqz p5, :cond_0

    .line 1578
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "E#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1588
    :goto_0
    if-eqz p5, :cond_3

    .line 1589
    const-string/jumbo v4, "user_passwd_id"

    invoke-virtual {v3, v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1592
    :goto_1
    invoke-static {v2, p3}, Lcom/android/server/enterprise/email/SettingsUtils;->setSecurityPassword(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1593
    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, p7}, Landroid/os/UserHandle;-><init>(I)V

    const-string v5, "android.permission.sec.MDM_EMAIL"

    invoke-virtual {p4, v3, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1594
    return-void

    .line 1580
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "C#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1583
    :cond_1
    if-eqz p5, :cond_2

    .line 1584
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "I#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1586
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "O#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1591
    :cond_3
    const-string/jumbo v4, "outgoing_user_passwd_id"

    invoke-virtual {v3, v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_1
.end method

.method public static setSecurityPassword(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "caller"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1598
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1599
    :cond_0
    const-string v2, "SettingsUtils"

    const-string/jumbo v3, "setSecurityPassword() failed : invalid parameter"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1609
    :goto_0
    return v1

    .line 1603
    :cond_1
    :try_start_0
    sget-object v2, Lcom/android/server/enterprise/email/SettingsUtils;->mServerPassword:Ljava/util/Map;

    invoke-interface {v2, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1608
    const-string v1, "SettingsUtils"

    const-string/jumbo v2, "setSecurityPassword() success"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1609
    const/4 v1, 0x1

    goto :goto_0

    .line 1604
    :catch_0
    move-exception v0

    .line 1605
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SettingsUtils"

    const-string/jumbo v3, "setSecurityPassword() failed"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
