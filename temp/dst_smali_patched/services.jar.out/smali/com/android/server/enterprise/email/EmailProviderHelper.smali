.class public Lcom/android/server/enterprise/email/EmailProviderHelper;
.super Ljava/lang/Object;
.source "EmailProviderHelper.java"


# static fields
.field private static final EMAIL_CONTENT_URI:Ljava/lang/String; = "content://com.samsung.android.email.mdm.provider"

.field public static final FAIL_SET_ACCOUNT_OBJECT:J = -0x1L

.field private static final LDAP_CONTENT_URI:Ljava/lang/String; = "content://com.samsung.android.email.ldap.provider"

.field private static final TAG:Ljava/lang/String; = "EmailProviderHelperService"

.field private static final TAG_MAP_ACCOUNT:Ljava/lang/String; = "A"

.field private static mAccountObjectMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/email/EmailProviderHelper;->mAccountObjectMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createEmailContentProviderCursor(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 12
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "protection"    # [Ljava/lang/String;
    .param p4, "selection"    # Ljava/lang/String;
    .param p5, "selectionArgs"    # [Ljava/lang/String;
    .param p6, "sortOrder"    # Ljava/lang/String;

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .local v9, "userID":I
    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .local v6, "containerId":I
    const/4 v7, 0x0

    .local v7, "emails":Landroid/content/Context;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .local v10, "psToken":J
    :try_start_0
    invoke-static {v6, p0}, Lcom/android/server/enterprise/email/SettingsUtils;->isPersona(ILandroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v6}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v7

    :goto_1
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p2

    move-object v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-static {v9}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, v9}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    goto :goto_1

    :catch_0
    move-exception v8

    .local v8, "ex":Ljava/lang/Exception;
    :try_start_2
    const-string v0, "EmailProviderHelperService"

    const-string v1, "createEmailContentProviderCursor() : Failed, Exception occurs. "

    invoke-static {v0, v1, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v0, 0x0

    goto :goto_0

    .end local v8    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private static createID()J
    .locals 4

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "accId":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    const-wide/16 v2, -0x1

    mul-long/2addr v0, v2

    :cond_0
    return-wide v0
.end method

.method public static deleteLDAPAccount(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;J)Z
    .locals 10
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "ctxInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J

    .prologue
    const/4 v9, 0x0

    .local v9, "ret":Z
    const/4 v7, 0x0

    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getLDAPContentUri()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "deleteLDAPAccount"

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lcom/android/server/enterprise/email/EmailProviderHelper;->createEmailContentProviderCursor(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "deleteLDAPAccount"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    const-string v0, "EmailProviderHelperService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteLDAPAccount() : ret = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_1
    return v9

    :cond_1
    :try_start_1
    const-string v0, "EmailProviderHelperService"

    const-string v1, "deleteLDAPAccount() : cannot get cursor from EmailProvider."

    invoke-static {v0, v1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v9, 0x0

    goto :goto_0

    :catch_0
    move-exception v8

    .local v8, "ex":Ljava/lang/Exception;
    :try_start_2
    const-string v0, "EmailProviderHelperService"

    const-string v1, "deleteLDAPAccount() : Failed, Exception occurs. "

    invoke-static {v0, v1, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v9, 0x0

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v8    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public static getAccountId(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)J
    .locals 21
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "ctxInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "arg1"    # Ljava/lang/String;
    .param p3, "arg2"    # Ljava/lang/String;
    .param p4, "arg3"    # Ljava/lang/String;
    .param p5, "isEAS"    # Z

    .prologue
    const-wide/16 v14, -0x1

    .local v14, "ret":J
    invoke-static/range {p2 .. p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static/range {p3 .. p3}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    :cond_0
    const-string v18, "EmailProviderHelperService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "getAccountId() : faild with Invalid input parameters. arg1 = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " , arg2 = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " , arg3 = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-wide/from16 v16, v14

    .end local v14    # "ret":J
    .local v16, "ret":J
    :goto_0
    return-wide v16

    .end local v16    # "ret":J
    .restart local v14    # "ret":J
    :cond_1
    if-eqz p5, :cond_5

    move-object/from16 v6, p2

    .local v6, "easDomain":Ljava/lang/String;
    move-object/from16 v7, p3

    .local v7, "easUser":Ljava/lang/String;
    if-nez v6, :cond_3

    move-object v2, v7

    .local v2, "User":Ljava/lang/String;
    :goto_1
    move-object/from16 v4, p4

    .local v4, "activeSyncHost":Ljava/lang/String;
    invoke-static/range {p0 .. p1}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getAllEnterpriseExchangeAccount(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;)[Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object v3

    .local v3, "acctList":[Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    if-eqz v3, :cond_2

    move-object v5, v3

    .local v5, "arr$":[Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    array-length v9, v5

    .local v9, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_2
    if-ge v8, v9, :cond_2

    aget-object v11, v5, v8

    .local v11, "mAccount":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    if-eqz v11, :cond_4

    iget-object v0, v11, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mEmailAddress:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_4

    iget-object v0, v11, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mEasUser:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    iget-object v0, v11, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mEmailAddress:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_4

    iget-wide v14, v11, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mId:J

    .end local v2    # "User":Ljava/lang/String;
    .end local v3    # "acctList":[Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    .end local v4    # "activeSyncHost":Ljava/lang/String;
    .end local v5    # "arr$":[Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    .end local v6    # "easDomain":Ljava/lang/String;
    .end local v7    # "easUser":Ljava/lang/String;
    .end local v8    # "i$":I
    .end local v9    # "len$":I
    .end local v11    # "mAccount":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    :cond_2
    :goto_3
    move-wide/from16 v16, v14

    .end local v14    # "ret":J
    .restart local v16    # "ret":J
    goto :goto_0

    .end local v16    # "ret":J
    .restart local v6    # "easDomain":Ljava/lang/String;
    .restart local v7    # "easUser":Ljava/lang/String;
    .restart local v14    # "ret":J
    :cond_3
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\\"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .restart local v2    # "User":Ljava/lang/String;
    .restart local v3    # "acctList":[Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    .restart local v4    # "activeSyncHost":Ljava/lang/String;
    .restart local v5    # "arr$":[Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    .restart local v8    # "i$":I
    .restart local v9    # "len$":I
    .restart local v11    # "mAccount":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .end local v2    # "User":Ljava/lang/String;
    .end local v3    # "acctList":[Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    .end local v4    # "activeSyncHost":Ljava/lang/String;
    .end local v5    # "arr$":[Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    .end local v6    # "easDomain":Ljava/lang/String;
    .end local v7    # "easUser":Ljava/lang/String;
    .end local v8    # "i$":I
    .end local v9    # "len$":I
    .end local v11    # "mAccount":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    :cond_5
    if-eqz p2, :cond_9

    move-object/from16 v10, p2

    .local v10, "login":Ljava/lang/String;
    move-object/from16 v13, p3

    .local v13, "serverAddress":Ljava/lang/String;
    move-object/from16 v12, p4

    .local v12, "protocol":Ljava/lang/String;
    invoke-static/range {p0 .. p1}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getAllEnterpriseEmailAccount(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;)[Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    move-result-object v3

    .local v3, "acctList":[Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    if-eqz v3, :cond_2

    move-object v5, v3

    .local v5, "arr$":[Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    array-length v9, v5

    .restart local v9    # "len$":I
    const/4 v8, 0x0

    .restart local v8    # "i$":I
    :goto_4
    if-ge v8, v9, :cond_2

    aget-object v11, v5, v8

    .local v11, "mAccount":Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    if-eqz v11, :cond_8

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    iget-object v0, v11, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mInComingUserName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    iget-object v0, v11, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mInComingServerAddress:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    iget-object v0, v11, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mInComingProtocol:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_7

    :cond_6
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    iget-object v0, v11, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mOutgoingUserName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    iget-object v0, v11, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mOutgoingServerAddress:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    iget-object v0, v11, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mOutgoingProtocol:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    :cond_7
    iget-wide v14, v11, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mId:J

    goto/16 :goto_3

    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .end local v3    # "acctList":[Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    .end local v5    # "arr$":[Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    .end local v8    # "i$":I
    .end local v9    # "len$":I
    .end local v10    # "login":Ljava/lang/String;
    .end local v11    # "mAccount":Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    .end local v12    # "protocol":Ljava/lang/String;
    .end local v13    # "serverAddress":Ljava/lang/String;
    :cond_9
    const-string v18, "EmailProviderHelperService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "getAccountId() : [EMAIL] faild with Invalid input parameters. arg1 = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " , arg2 = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " , arg3 = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method private static getAllAccountIDS(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;)[J
    .locals 13
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "ctxInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v12, 0x0

    .local v12, "ret":[J
    const/4 v8, 0x0

    .local v8, "cursor":Landroid/database/Cursor;
    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountContentUri(I)Landroid/net/Uri;

    move-result-object v2

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lcom/android/server/enterprise/email/EmailProviderHelper;->createEmailContentProviderCursor(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .local v7, "count":I
    const/4 v10, 0x0

    .local v10, "idx":I
    new-array v12, v7, [J

    move v11, v10

    .end local v10    # "idx":I
    .local v11, "idx":I
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v10, v11, 0x1

    .end local v11    # "idx":I
    .restart local v10    # "idx":I
    const-string v0, "_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    aput-wide v0, v12, v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v11, v10

    .end local v10    # "idx":I
    .restart local v11    # "idx":I
    goto :goto_0

    .end local v7    # "count":I
    .end local v11    # "idx":I
    :cond_0
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_1
    return-object v12

    :catch_0
    move-exception v9

    .local v9, "ex":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "EmailProviderHelperService"

    const-string v1, "getAllAccountIDS() : Failed, Exception occurs. "

    invoke-static {v0, v1, v9}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v12, 0x0

    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v9    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public static getAllEnterpriseEmailAccount(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;)[Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    .locals 13
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "ctxInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v10, 0x0

    .local v10, "ret":[Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .local v11, "templist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/sec/enterprise/email/EnterpriseEmailAccount;>;"
    invoke-static {p0, p1}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getAllAccountIDS(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;)[J

    move-result-object v2

    .local v2, "accIds":[J
    if-eqz v2, :cond_1

    move-object v4, v2

    .local v4, "arr$":[J
    array-length v8, v4

    .local v8, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v8, :cond_1

    aget-wide v0, v4, v5

    .local v0, "Id":J
    invoke-static {p0, p1, v0, v1}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseEmailAccount(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    move-result-object v9

    .local v9, "mAccount":Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    if-eqz v9, :cond_0

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .end local v0    # "Id":J
    .end local v4    # "arr$":[J
    .end local v5    # "i$":I
    .end local v8    # "len$":I
    .end local v9    # "mAccount":Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    :cond_1
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_2

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    new-array v10, v12, [Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    const/4 v6, 0x0

    .local v6, "idx":I
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    .local v3, "account":Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "idx":I
    .local v7, "idx":I
    aput-object v3, v10, v6

    move v6, v7

    .end local v7    # "idx":I
    .restart local v6    # "idx":I
    goto :goto_1

    .end local v3    # "account":Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "idx":I
    :cond_2
    return-object v10
.end method

.method public static getAllEnterpriseExchangeAccount(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;)[Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    .locals 13
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "ctxInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v10, 0x0

    .local v10, "ret":[Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .local v11, "templist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/sec/enterprise/email/EnterpriseExchangeAccount;>;"
    invoke-static {p0, p1}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getAllAccountIDS(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;)[J

    move-result-object v2

    .local v2, "accIds":[J
    if-eqz v2, :cond_1

    move-object v4, v2

    .local v4, "arr$":[J
    array-length v8, v4

    .local v8, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v8, :cond_1

    aget-wide v0, v4, v5

    .local v0, "Id":J
    invoke-static {p0, p1, v0, v1}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseExchangeAccount(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object v9

    .local v9, "mAccount":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    if-eqz v9, :cond_0

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .end local v0    # "Id":J
    .end local v4    # "arr$":[J
    .end local v5    # "i$":I
    .end local v8    # "len$":I
    .end local v9    # "mAccount":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    :cond_1
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_2

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    new-array v10, v12, [Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    const/4 v6, 0x0

    .local v6, "idx":I
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    .local v3, "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "idx":I
    .local v7, "idx":I
    aput-object v3, v10, v6

    move v6, v7

    .end local v7    # "idx":I
    .restart local v6    # "idx":I
    goto :goto_1

    .end local v3    # "account":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "idx":I
    :cond_2
    return-object v10
.end method

.method public static getAllLDAPAccount(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 12
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "ctxInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/sec/enterprise/email/EnterpriseLDAPAccount;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .local v10, "ret":Ljava/util/List;, "Ljava/util/List<Landroid/sec/enterprise/email/EnterpriseLDAPAccount;>;"
    const/4 v7, 0x0

    .local v7, "bundle_ldap":Landroid/os/Bundle;
    const/4 v8, 0x0

    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getLDAPContentUri()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "getAllLDAPAccounts"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lcom/android/server/enterprise/email/EmailProviderHelper;->createEmailContentProviderCursor(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    if-eqz v7, :cond_2

    const-string v0, "email.ldap.all.account"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    if-nez v10, :cond_0

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v10    # "ret":Ljava/util/List;, "Ljava/util/List<Landroid/sec/enterprise/email/EnterpriseLDAPAccount;>;"
    .local v11, "ret":Ljava/util/List;, "Ljava/util/List<Landroid/sec/enterprise/email/EnterpriseLDAPAccount;>;"
    move-object v10, v11

    .end local v11    # "ret":Ljava/util/List;, "Ljava/util/List<Landroid/sec/enterprise/email/EnterpriseLDAPAccount;>;"
    .restart local v10    # "ret":Ljava/util/List;, "Ljava/util/List<Landroid/sec/enterprise/email/EnterpriseLDAPAccount;>;"
    :cond_0
    :goto_0
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_1
    return-object v10

    :cond_2
    :try_start_1
    const-string v0, "EmailProviderHelperService"

    const-string v1, "getAllLDAPAccount() : Fail to get Data from Email. "

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v9

    .local v9, "ex":Ljava/lang/Exception;
    :try_start_2
    const-string v0, "EmailProviderHelperService"

    const-string v1, "getAllLDAPAccount() : Failed, Exception occurs. "

    invoke-static {v0, v1, v9}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v10, 0x0

    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v9    # "ex":Ljava/lang/Exception;
    :cond_3
    :try_start_3
    const-string v0, "EmailProviderHelperService"

    const-string v1, "getAllLDAPAccount() : cannot get cursor from EmailProvider."

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public static getEmailAccountObject(Landroid/app/enterprise/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    .locals 5
    .param p0, "ctxInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p1, "Id"    # J

    .prologue
    sget-object v1, Lcom/android/server/enterprise/email/EmailProviderHelper;->mAccountObjectMap:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "A"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .local v0, "result":Ljava/lang/Object;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/enterprise/email/EmailProviderHelper;->mAccountObjectMap:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "A"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    .end local v0    # "result":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "result":Ljava/lang/Object;
    :cond_0
    const-string v1, "EmailProviderHelperService"

    const-string v2, "getEmailAccountObject() : failed. "

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getEmailContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    const-string v0, "content://com.samsung.android.email.mdm.provider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getEnterpriseEmailAccount(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    .locals 16
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "ctxInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J

    .prologue
    const/4 v13, 0x0

    .local v13, "ret":Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    const/4 v10, 0x0

    .local v10, "cursor":Landroid/database/Cursor;
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-gtz v2, :cond_0

    const-string v2, "EmailProviderHelperService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getEnterpriseEmailAccount() : Failed, invalid account Id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p2

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v14, v13

    .end local v13    # "ret":Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    .local v14, "ret":Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    :goto_0
    return-object v14

    .end local v14    # "ret":Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    .restart local v13    # "ret":Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEmailContentUri()Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "getAccountInfo"

    const/4 v2, 0x1

    new-array v7, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v2

    const/4 v8, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-static/range {v2 .. v8}, Lcom/android/server/enterprise/email/EmailProviderHelper;->createEmailContentProviderCursor(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-eqz v10, :cond_4

    invoke-interface {v10}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    .local v9, "bundle_email":Landroid/os/Bundle;
    if-eqz v9, :cond_3

    const-string v2, "email.account"

    invoke-virtual {v9, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v12

    .local v12, "parcel":Landroid/os/Parcelable;
    if-eqz v12, :cond_1

    instance-of v2, v12, Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    if-eqz v2, :cond_1

    move-object v0, v12

    check-cast v0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    move-object v13, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v9    # "bundle_email":Landroid/os/Bundle;
    .end local v12    # "parcel":Landroid/os/Parcelable;
    :cond_1
    :goto_1
    if-eqz v10, :cond_2

    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_2
    if-nez v13, :cond_6

    const-string v2, "EmailProviderHelperService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getEnterpriseEmailAccount() : Failed, accId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p2

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    move-object v14, v13

    .end local v13    # "ret":Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    .restart local v14    # "ret":Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    goto :goto_0

    .end local v14    # "ret":Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    .restart local v9    # "bundle_email":Landroid/os/Bundle;
    .restart local v13    # "ret":Landroid/sec/enterprise/email/EnterpriseEmailAccount;
    :cond_3
    :try_start_1
    const-string v2, "EmailProviderHelperService"

    const-string v3, "getEnterpriseEmailAccount() : Fail to get Data from Email. "

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .end local v9    # "bundle_email":Landroid/os/Bundle;
    :catch_0
    move-exception v11

    .local v11, "ex":Ljava/lang/Exception;
    :try_start_2
    const-string v2, "EmailProviderHelperService"

    const-string v3, "getEnterpriseEmailAccount() : Failed, Exception occurs. "

    invoke-static {v2, v3, v11}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v13, 0x0

    if-eqz v10, :cond_2

    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .end local v11    # "ex":Ljava/lang/Exception;
    :cond_4
    :try_start_3
    const-string v2, "EmailProviderHelperService"

    const-string v3, "getEnterpriseEmailAccount() : cannot get cursor from EmailProvider."

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    if-eqz v10, :cond_5

    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v2

    :cond_6
    const-string v2, "EmailProviderHelperService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getEnterpriseEmailAccount() : successfully get Data from Email, accId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p2

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public static getEnterpriseExchangeAccount(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    .locals 16
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "ctxInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J

    .prologue
    const/4 v13, 0x0

    .local v13, "ret":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    const/4 v10, 0x0

    .local v10, "cursor":Landroid/database/Cursor;
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-gtz v2, :cond_0

    const-string v2, "EmailProviderHelperService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getEnterpriseExchangeAccount() : Failed, invalid account Id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p2

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v14, v13

    .end local v13    # "ret":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    .local v14, "ret":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    :goto_0
    return-object v14

    .end local v14    # "ret":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    .restart local v13    # "ret":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEmailContentUri()Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "getAccountInfo"

    const/4 v2, 0x1

    new-array v7, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v2

    const/4 v8, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-static/range {v2 .. v8}, Lcom/android/server/enterprise/email/EmailProviderHelper;->createEmailContentProviderCursor(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-eqz v10, :cond_4

    invoke-interface {v10}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    .local v9, "bundle_email":Landroid/os/Bundle;
    if-eqz v9, :cond_3

    const-string v2, "eas.account"

    invoke-virtual {v9, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v12

    .local v12, "parcel":Landroid/os/Parcelable;
    if-eqz v12, :cond_1

    instance-of v2, v12, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    if-eqz v2, :cond_1

    move-object v0, v12

    check-cast v0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-object v13, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v9    # "bundle_email":Landroid/os/Bundle;
    .end local v12    # "parcel":Landroid/os/Parcelable;
    :cond_1
    :goto_1
    if-eqz v10, :cond_2

    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_2
    if-nez v13, :cond_6

    const-string v2, "EmailProviderHelperService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getEnterpriseExchangeAccount() : Failed, accId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p2

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    move-object v14, v13

    .end local v13    # "ret":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    .restart local v14    # "ret":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    goto :goto_0

    .end local v14    # "ret":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    .restart local v9    # "bundle_email":Landroid/os/Bundle;
    .restart local v13    # "ret":Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    :cond_3
    :try_start_1
    const-string v2, "EmailProviderHelperService"

    const-string v3, "getEnterpriseExchangeAccount() : Fail to get Data from Email. "

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .end local v9    # "bundle_email":Landroid/os/Bundle;
    :catch_0
    move-exception v11

    .local v11, "ex":Ljava/lang/Exception;
    :try_start_2
    const-string v2, "EmailProviderHelperService"

    const-string v3, "getEnterpriseExchangeAccount() : Failed, Exception occurs. "

    invoke-static {v2, v3, v11}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v13, 0x0

    if-eqz v10, :cond_2

    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .end local v11    # "ex":Ljava/lang/Exception;
    :cond_4
    :try_start_3
    const-string v2, "EmailProviderHelperService"

    const-string v3, "getEnterpriseExchangeAccount() : cannot get cursor from EmailProvider."

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    if-eqz v10, :cond_5

    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v2

    :cond_6
    const-string v2, "EmailProviderHelperService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getEnterpriseExchangeAccount() : successfully get Data from Email. accId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p2

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public static getEnterpriseLDAPAccount(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseLDAPAccount;
    .locals 14
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "ctxInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "accId"    # J

    .prologue
    const/4 v12, 0x0

    .local v12, "ret":Landroid/sec/enterprise/email/EnterpriseLDAPAccount;
    const/4 v9, 0x0

    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getLDAPContentUri()Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "getLDAPAccount"

    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v1

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v7}, Lcom/android/server/enterprise/email/EmailProviderHelper;->createEmailContentProviderCursor(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-interface {v9}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    .local v8, "bundle_ldap":Landroid/os/Bundle;
    if-eqz v8, :cond_2

    const-string v1, "email.ldap.account"

    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v11

    .local v11, "parcel":Landroid/os/Parcelable;
    if-eqz v11, :cond_0

    instance-of v1, v11, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;

    if-eqz v1, :cond_0

    move-object v0, v11

    check-cast v0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;

    move-object v12, v0

    const-string v1, "EmailProviderHelperService"

    const-string v2, "getEnterpriseLDAPAccount() : successfully get Data from Email. "

    invoke-static {v1, v2}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v8    # "bundle_ldap":Landroid/os/Bundle;
    .end local v11    # "parcel":Landroid/os/Parcelable;
    :cond_0
    :goto_0
    if-eqz v9, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_1
    return-object v12

    .restart local v8    # "bundle_ldap":Landroid/os/Bundle;
    :cond_2
    :try_start_1
    const-string v1, "EmailProviderHelperService"

    const-string v2, "getEnterpriseLDAPAccount() : Fail to get Data from Email. "

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v8    # "bundle_ldap":Landroid/os/Bundle;
    :catch_0
    move-exception v10

    .local v10, "ex":Ljava/lang/Exception;
    :try_start_2
    const-string v1, "EmailProviderHelperService"

    const-string v2, "getEnterpriseExchangeAccount() : Failed, Exception occurs. "

    invoke-static {v1, v2, v10}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v12, 0x0

    if-eqz v9, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v10    # "ex":Ljava/lang/Exception;
    :cond_3
    :try_start_3
    const-string v1, "EmailProviderHelperService"

    const-string v2, "getEnterpriseLDAPAccount() : cannot get cursor from EmailProvider."

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    if-eqz v9, :cond_4

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1
.end method

.method public static getExchangeAccountObject(Landroid/app/enterprise/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;
    .locals 5
    .param p0, "ctxInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p1, "Id"    # J

    .prologue
    sget-object v1, Lcom/android/server/enterprise/email/EmailProviderHelper;->mAccountObjectMap:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "A"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .local v0, "result":Ljava/lang/Object;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/enterprise/email/EmailProviderHelper;->mAccountObjectMap:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "A"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    .end local v0    # "result":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "result":Ljava/lang/Object;
    :cond_0
    const-string v1, "EmailProviderHelperService"

    const-string v2, "getExchangeAccountObject() : failed. "

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getLDAPContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    const-string v0, "content://com.samsung.android.email.ldap.provider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static setEnterpriseEmailAccountObject(Landroid/app/enterprise/ContextInfo;Landroid/sec/enterprise/email/EnterpriseEmailAccount;)J
    .locals 5
    .param p0, "ctxInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p1, "obj"    # Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    .prologue
    if-nez p1, :cond_0

    const-string v2, "EmailProviderHelperService"

    const-string v3, "setEnterpriseEmailAccountObject() : failed with invalid object. "

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Lcom/android/server/enterprise/email/EmailProviderHelper;->createID()J

    move-result-wide v0

    .local v0, "Id":J
    sget-object v2, Lcom/android/server/enterprise/email/EmailProviderHelper;->mAccountObjectMap:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "A"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static setEnterpriseExchangeAccountObject(Landroid/app/enterprise/ContextInfo;Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)J
    .locals 5
    .param p0, "ctxInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p1, "obj"    # Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    .prologue
    if-nez p1, :cond_0

    const-string v2, "EmailProviderHelperService"

    const-string v3, "setEnterpriseExchangeAccountObject() : failed with invalid object. "

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Lcom/android/server/enterprise/email/EmailProviderHelper;->createID()J

    move-result-wide v0

    .local v0, "Id":J
    sget-object v2, Lcom/android/server/enterprise/email/EmailProviderHelper;->mAccountObjectMap:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "A"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static updateEnterpriseEmailAccount(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;Landroid/sec/enterprise/email/EnterpriseEmailAccount;)Z
    .locals 12
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "ctxInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "account"    # Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    .prologue
    const/4 v9, 0x0

    .local v9, "ret":Z
    invoke-static {p1, p2}, Lcom/android/server/enterprise/email/EmailProviderHelper;->setEnterpriseEmailAccountObject(Landroid/app/enterprise/ContextInfo;Landroid/sec/enterprise/email/EnterpriseEmailAccount;)J

    move-result-wide v10

    .local v10, "keyId":J
    const/4 v7, 0x0

    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEmailContentUri()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "updateEmailAccount"

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v0, 0x1

    iget-object v1, p2, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mInComingProtocol:Ljava/lang/String;

    aput-object v1, v5, v0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lcom/android/server/enterprise/email/EmailProviderHelper;->createEmailContentProviderCursor(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "updateEmailAccount"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    :goto_0
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_1
    const-string v0, "EmailProviderHelperService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateEnterpriseEmailAccount() : ret = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v9

    :cond_1
    :try_start_1
    const-string v0, "EmailProviderHelperService"

    const-string v1, "updateEnterpriseEmailAccount() : cannot get cursor from EmailProvider."

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v8

    .local v8, "ex":Ljava/lang/Exception;
    :try_start_2
    const-string v0, "EmailProviderHelperService"

    const-string v1, "updateEnterpriseEmailAccount() : Failed, Exception occurs. "

    invoke-static {v0, v1, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v9, 0x0

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v8    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public static updateEnterpriseExchangeAccount(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)Z
    .locals 12
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "ctxInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "account"    # Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    .prologue
    const/4 v9, 0x0

    .local v9, "ret":Z
    invoke-static {p1, p2}, Lcom/android/server/enterprise/email/EmailProviderHelper;->setEnterpriseExchangeAccountObject(Landroid/app/enterprise/ContextInfo;Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)J

    move-result-wide v10

    .local v10, "keyId":J
    const/4 v7, 0x0

    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEmailContentUri()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "updateEmailAccount"

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v0, 0x1

    const-string v1, "eas"

    aput-object v1, v5, v0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lcom/android/server/enterprise/email/EmailProviderHelper;->createEmailContentProviderCursor(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "updateEmailAccount"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    :goto_0
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_1
    const-string v0, "EmailProviderHelperService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateEnterpriseExchangeAccount() : ret = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v9

    :cond_1
    :try_start_1
    const-string v0, "EmailProviderHelperService"

    const-string v1, "updateEnterpriseExchangeAccount() : cannot get cursor from EmailProvider."

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v8

    .local v8, "ex":Ljava/lang/Exception;
    :try_start_2
    const-string v0, "EmailProviderHelperService"

    const-string v1, "updateEnterpriseExchangeAccount() : Failed, Exception occurs. "

    invoke-static {v0, v1, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v9, 0x0

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v8    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method
