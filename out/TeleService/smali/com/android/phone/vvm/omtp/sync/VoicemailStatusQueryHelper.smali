.class public Lcom/android/phone/vvm/omtp/sync/VoicemailStatusQueryHelper;
.super Ljava/lang/Object;
.source "VoicemailStatusQueryHelper.java"


# static fields
.field static final PROJECTION:[Ljava/lang/String;


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mSourceUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 31
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "configuration_state"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "notification_channel_state"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "source_package"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/vvm/omtp/sync/VoicemailStatusQueryHelper;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/phone/vvm/omtp/sync/VoicemailStatusQueryHelper;->mContext:Landroid/content/Context;

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/vvm/omtp/sync/VoicemailStatusQueryHelper;->mContentResolver:Landroid/content/ContentResolver;

    .line 50
    iget-object v0, p0, Lcom/android/phone/vvm/omtp/sync/VoicemailStatusQueryHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/VoicemailContract$Status;->buildSourceUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/vvm/omtp/sync/VoicemailStatusQueryHelper;->mSourceUri:Landroid/net/Uri;

    .line 51
    return-void
.end method

.method private isFieldEqualTo(Landroid/telecom/PhoneAccountHandle;II)Z
    .locals 11
    .param p1, "phoneAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "columnIndex"    # I
    .param p3, "value"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 86
    const/4 v6, 0x0

    .line 87
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz p1, :cond_0

    .line 88
    invoke-virtual {p1}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v7

    .line 89
    .local v7, "phoneAccountComponentName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v8

    .line 90
    .local v8, "phoneAccountId":Ljava/lang/String;
    if-eqz v7, :cond_0

    if-nez v8, :cond_1

    .line 111
    .end local v7    # "phoneAccountComponentName":Ljava/lang/String;
    .end local v8    # "phoneAccountId":Ljava/lang/String;
    :cond_0
    :goto_0
    return v10

    .line 94
    .restart local v7    # "phoneAccountComponentName":Ljava/lang/String;
    .restart local v8    # "phoneAccountId":Ljava/lang/String;
    :cond_1
    :try_start_0
    const-string v3, "phone_account_component_name=? AND phone_account_id=? AND source_package=?"

    .line 97
    .local v3, "whereClause":Ljava/lang/String;
    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v7, v4, v0

    const/4 v0, 0x1

    aput-object v8, v4, v0

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/phone/vvm/omtp/sync/VoicemailStatusQueryHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 99
    .local v4, "whereArgs":[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/phone/vvm/omtp/sync/VoicemailStatusQueryHelper;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/phone/vvm/omtp/sync/VoicemailStatusQueryHelper;->mSourceUri:Landroid/net/Uri;

    sget-object v2, Lcom/android/phone/vvm/omtp/sync/VoicemailStatusQueryHelper;->PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 101
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 102
    invoke-interface {v6, p2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-ne v0, p3, :cond_3

    move v0, v9

    .line 106
    :goto_1
    if-eqz v6, :cond_2

    .line 107
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move v10, v0

    goto :goto_0

    :cond_3
    move v0, v10

    .line 102
    goto :goto_1

    .line 106
    :cond_4
    if-eqz v6, :cond_0

    .line 107
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 106
    .end local v3    # "whereClause":Ljava/lang/String;
    .end local v4    # "whereArgs":[Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 107
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method


# virtual methods
.method public isNotificationsChannelActive(Landroid/telecom/PhoneAccountHandle;)Z
    .locals 2
    .param p1, "phoneAccount"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    .line 72
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/phone/vvm/omtp/sync/VoicemailStatusQueryHelper;->isFieldEqualTo(Landroid/telecom/PhoneAccountHandle;II)Z

    move-result v0

    return v0
.end method

.method public isVoicemailSourceConfigured(Landroid/telecom/PhoneAccountHandle;)Z
    .locals 2
    .param p1, "phoneAccount"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    .line 62
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/phone/vvm/omtp/sync/VoicemailStatusQueryHelper;->isFieldEqualTo(Landroid/telecom/PhoneAccountHandle;II)Z

    move-result v0

    return v0
.end method
