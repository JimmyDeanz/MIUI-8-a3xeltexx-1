.class public Lcom/android/incallui/CallerInfoUtils;
.super Ljava/lang/Object;
.source "CallerInfoUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/android/incallui/CallerInfoUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/CallerInfoUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/android/incallui/CallerInfoUtils;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static buildCallerInfo(Landroid/content/Context;Lcom/android/incallui/Call;)Lcom/android/incallui/CallerInfo;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v5, 0x1

    .line 83
    new-instance v0, Lcom/android/incallui/CallerInfo;

    invoke-direct {v0}, Lcom/android/incallui/CallerInfo;-><init>()V

    .line 87
    .local v0, "info":Lcom/android/incallui/CallerInfo;
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getCnapName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/incallui/CallerInfo;->cnapName:Ljava/lang/String;

    .line 88
    iget-object v3, v0, Lcom/android/incallui/CallerInfo;->cnapName:Ljava/lang/String;

    iput-object v3, v0, Lcom/android/incallui/CallerInfo;->name:Ljava/lang/String;

    .line 89
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getNumberPresentation()I

    move-result v3

    iput v3, v0, Lcom/android/incallui/CallerInfo;->numberPresentation:I

    .line 90
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getCnapNamePresentation()I

    move-result v3

    iput v3, v0, Lcom/android/incallui/CallerInfo;->namePresentation:I

    .line 92
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, "number":Ljava/lang/String;
    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getParentId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/incallui/CallList;->getCallById(Ljava/lang/String;)Lcom/android/incallui/Call;

    move-result-object v3

    invoke-static {v3}, Lcom/android/incallui/CallUtils;->isVtConferenceCall(Lcom/android/incallui/Call;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 96
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getCnapName()Ljava/lang/String;

    move-result-object v1

    .line 98
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 99
    const-string v3, "&"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 100
    .local v2, "numbers":[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v1, v2, v3

    .line 101
    array-length v3, v2

    if-le v3, v5, :cond_1

    .line 102
    aget-object v3, v2, v5

    iput-object v3, v0, Lcom/android/incallui/CallerInfo;->forwardingNumber:Ljava/lang/String;

    .line 106
    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getIsIncoming()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 107
    iget v3, v0, Lcom/android/incallui/CallerInfo;->numberPresentation:I

    invoke-static {p0, v0, v1, v3}, Lcom/android/incallui/CallerInfoUtils;->modifyForSpecialCnapCases(Landroid/content/Context;Lcom/android/incallui/CallerInfo;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 109
    :cond_2
    iput-object v1, v0, Lcom/android/incallui/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 115
    .end local v2    # "numbers":[Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getHandle()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_4

    const-string v3, "voicemail"

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getHandle()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 117
    invoke-virtual {v0, p0}, Lcom/android/incallui/CallerInfo;->markAsVoiceMail(Landroid/content/Context;)Lcom/android/incallui/CallerInfo;

    .line 120
    :cond_4
    return-object v0
.end method

.method public static getCallerInfoForCall(Landroid/content/Context;Lcom/android/incallui/Call;Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;)Lcom/android/incallui/CallerInfo;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "listener"    # Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;

    .prologue
    .line 46
    invoke-static {p0, p1}, Lcom/android/incallui/CallerInfoUtils;->buildCallerInfo(Landroid/content/Context;Lcom/android/incallui/Call;)Lcom/android/incallui/CallerInfo;

    move-result-object v3

    .line 49
    .local v3, "info":Lcom/android/incallui/CallerInfo;
    iget v0, v3, Lcom/android/incallui/CallerInfo;->numberPresentation:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 50
    invoke-static {}, Lcom/android/incallui/util/PermissionGrantHelper;->getInstance()Lcom/android/incallui/util/PermissionGrantHelper;

    move-result-object v1

    .line 51
    .local v1, "permissionGrantHelper":Lcom/android/incallui/util/PermissionGrantHelper;
    const-string v0, "android.permission.READ_CONTACTS"

    invoke-virtual {v1, p0, v0}, Lcom/android/incallui/util/PermissionGrantHelper;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    sget-object v0, Lcom/android/incallui/CallerInfoUtils;->TAG:Ljava/lang/String;

    const-string v2, "==> Actually starting CallerInfoAsyncQuery.startQuery()..."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    const/4 v0, -0x1

    invoke-static {v0, p0, v3, p2, p1}, Lcom/android/incallui/CallerInfoAsyncQuery;->startQuery(ILandroid/content/Context;Lcom/android/incallui/CallerInfo;Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/incallui/CallerInfoAsyncQuery;

    .line 79
    .end local v1    # "permissionGrantHelper":Lcom/android/incallui/util/PermissionGrantHelper;
    :cond_0
    :goto_0
    return-object v3

    .line 56
    .restart local v1    # "permissionGrantHelper":Lcom/android/incallui/util/PermissionGrantHelper;
    :cond_1
    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/android/incallui/CallerInfoUtils$1;

    move-object v2, p0

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/incallui/CallerInfoUtils$1;-><init>(Lcom/android/incallui/util/PermissionGrantHelper;Landroid/content/Context;Lcom/android/incallui/CallerInfo;Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;Lcom/android/incallui/Call;)V

    const-wide/16 v4, 0x7d0

    invoke-virtual {v6, v0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private static isCnapSpecialCaseRestricted(Ljava/lang/String;)Z
    .locals 1
    .param p0, "n"    # Ljava/lang/String;

    .prologue
    .line 178
    const-string v0, "PRIVATE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "P"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "RES"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method private static isCnapSpecialCaseUnknown(Ljava/lang/String;)Z
    .locals 1
    .param p0, "n"    # Ljava/lang/String;

    .prologue
    .line 182
    const-string v0, "UNAVAILABLE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "UNKNOWN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "UNA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "U"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method static modifyForSpecialCnapCases(Landroid/content/Context;Lcom/android/incallui/CallerInfo;Ljava/lang/String;I)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ci"    # Lcom/android/incallui/CallerInfo;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "presentation"    # I

    .prologue
    const v7, 0x7f0c000c

    const/4 v6, 0x3

    const/4 v5, 0x1

    .line 136
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move-object v1, p2

    .line 174
    .end local p2    # "number":Ljava/lang/String;
    .local v1, "number":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 138
    .end local v1    # "number":Ljava/lang/String;
    .restart local p2    # "number":Ljava/lang/String;
    :cond_1
    sget-object v2, Lcom/android/incallui/CallerInfoUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "modifyForSpecialCnapCases: initially, number="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Lcom/android/incallui/CallerInfoUtils;->toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", presentation="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ci "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050006

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, "absentNumberValues":[Ljava/lang/String;
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-ne p3, v5, :cond_2

    .line 149
    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 150
    iput v6, p1, Lcom/android/incallui/CallerInfo;->numberPresentation:I

    .line 158
    :cond_2
    iget v2, p1, Lcom/android/incallui/CallerInfo;->numberPresentation:I

    if-eq v2, v5, :cond_3

    iget v2, p1, Lcom/android/incallui/CallerInfo;->numberPresentation:I

    if-eq v2, p3, :cond_5

    if-ne p3, v5, :cond_5

    .line 162
    :cond_3
    invoke-static {p2}, Lcom/android/incallui/CallerInfoUtils;->isCnapSpecialCaseRestricted(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 163
    const v2, 0x7f0c000d

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 164
    const/4 v2, 0x2

    iput v2, p1, Lcom/android/incallui/CallerInfo;->numberPresentation:I

    .line 169
    :cond_4
    :goto_1
    sget-object v2, Lcom/android/incallui/CallerInfoUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SpecialCnap: number="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Lcom/android/incallui/CallerInfoUtils;->toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; presentation now="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/android/incallui/CallerInfo;->numberPresentation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_5
    sget-object v2, Lcom/android/incallui/CallerInfoUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "modifyForSpecialCnapCases: returning number string="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Lcom/android/incallui/CallerInfoUtils;->toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, p2

    .line 174
    .end local p2    # "number":Ljava/lang/String;
    .restart local v1    # "number":Ljava/lang/String;
    goto/16 :goto_0

    .line 165
    .end local v1    # "number":Ljava/lang/String;
    .restart local p2    # "number":Ljava/lang/String;
    :cond_6
    invoke-static {p2}, Lcom/android/incallui/CallerInfoUtils;->isCnapSpecialCaseUnknown(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 166
    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 167
    iput v6, p1, Lcom/android/incallui/CallerInfo;->numberPresentation:I

    goto :goto_1
.end method

.method static toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 187
    if-nez p0, :cond_0

    .line 188
    const-string v3, ""

    .line 208
    :goto_0
    return-object v3

    .line 199
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 200
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 201
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 202
    .local v1, "c":C
    const/16 v3, 0x2d

    if-eq v1, v3, :cond_1

    const/16 v3, 0x40

    if-eq v1, v3, :cond_1

    const/16 v3, 0x2e

    if-eq v1, v3, :cond_1

    const/16 v3, 0x26

    if-ne v1, v3, :cond_2

    .line 203
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 200
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 205
    :cond_2
    const/16 v3, 0x78

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 208
    .end local v1    # "c":C
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method
