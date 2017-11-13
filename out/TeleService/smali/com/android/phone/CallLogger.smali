.class Lcom/android/phone/CallLogger;
.super Ljava/lang/Object;
.source "CallLogger.java"


# static fields
.field private static final DBG:Z

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mApplication:Lcom/android/phone/PhoneGlobals;

.field private mCallLog:Lcom/android/phone/common/CallLogAsync;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/android/phone/CallLogger;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/CallLogger;->LOG_TAG:Ljava/lang/String;

    .line 39
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/CallLogger;->DBG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/phone/PhoneGlobals;Lcom/android/phone/common/CallLogAsync;)V
    .locals 0
    .param p1, "application"    # Lcom/android/phone/PhoneGlobals;
    .param p2, "callLogAsync"    # Lcom/android/phone/common/CallLogAsync;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/phone/CallLogger;->mApplication:Lcom/android/phone/PhoneGlobals;

    .line 48
    iput-object p2, p0, Lcom/android/phone/CallLogger;->mCallLog:Lcom/android/phone/common/CallLogAsync;

    .line 49
    return-void
.end method

.method private getCallerInfoFromConnection(Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;
    .locals 3
    .param p1, "conn"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 122
    const/4 v0, 0x0

    .line 123
    .local v0, "ci":Lcom/android/internal/telephony/CallerInfo;
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v1

    .line 125
    .local v1, "o":Ljava/lang/Object;
    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v2, :cond_1

    :cond_0
    move-object v0, v1

    .line 126
    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    .line 132
    .end local v1    # "o":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 127
    .restart local v1    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v2, v1, Landroid/net/Uri;

    if-eqz v2, :cond_2

    .line 128
    iget-object v2, p0, Lcom/android/phone/CallLogger;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v1, Landroid/net/Uri;

    .end local v1    # "o":Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    goto :goto_0

    .line 130
    .restart local v1    # "o":Ljava/lang/Object;
    :cond_2
    check-cast v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local v1    # "o":Ljava/lang/Object;
    iget-object v0, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    goto :goto_0
.end method

.method private getLogNumber(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfo;)Ljava/lang/String;
    .locals 5
    .param p1, "conn"    # Lcom/android/internal/telephony/Connection;
    .param p2, "callerInfo"    # Lcom/android/internal/telephony/CallerInfo;

    .prologue
    .line 150
    const/4 v1, 0x0

    .line 152
    .local v1, "number":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 153
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 173
    :goto_0
    if-nez v1, :cond_4

    .line 174
    const/4 v3, 0x0

    .line 186
    :goto_1
    return-object v3

    .line 160
    :cond_0
    if-eqz p2, :cond_1

    iget-object v3, p2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p2}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p2}, Lcom/android/internal/telephony/CallerInfo;->isVoiceMailNumber()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 162
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 164
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getOrigDialString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 166
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 169
    :cond_3
    iget-object v1, p2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    goto :goto_0

    .line 176
    :cond_4
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v2

    .line 179
    .local v2, "presentation":I
    iget-object v3, p0, Lcom/android/phone/CallLogger;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-static {v3, p2, v1, v2}, Lcom/android/phone/PhoneUtils;->modifyForSpecialCnapCases(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, "newNumber":Ljava/lang/String;
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 183
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_5
    move-object v3, v1

    .line 186
    goto :goto_1
.end method

.method private getPresentation(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfo;)I
    .locals 3
    .param p1, "conn"    # Lcom/android/internal/telephony/Connection;
    .param p2, "callerInfo"    # Lcom/android/internal/telephony/CallerInfo;

    .prologue
    .line 201
    if-nez p2, :cond_2

    .line 202
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v0

    .line 208
    .local v0, "presentation":I
    :cond_0
    :goto_0
    sget-boolean v1, Lcom/android/phone/CallLogger;->DBG:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- getPresentation: presentation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallLogger;->log(Ljava/lang/String;)V

    .line 209
    :cond_1
    return v0

    .line 204
    .end local v0    # "presentation":I
    :cond_2
    iget v0, p2, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 205
    .restart local v0    # "presentation":I
    sget-boolean v1, Lcom/android/phone/CallLogger;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- getPresentation(): ignoring connection\'s presentation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallLogger;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 213
    sget-object v0, Lcom/android/phone/CallLogger;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    return-void
.end method


# virtual methods
.method public logCall(Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJ)V
    .locals 0
    .param p1, "ci"    # Lcom/android/internal/telephony/CallerInfo;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "presentation"    # I
    .param p4, "callType"    # I
    .param p5, "start"    # J
    .param p7, "duration"    # J

    .prologue
    .line 113
    return-void
.end method

.method public logCall(Lcom/android/internal/telephony/Connection;)V
    .locals 3
    .param p1, "c"    # Lcom/android/internal/telephony/Connection;

    .prologue
    const/4 v0, 0x1

    .line 91
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()I

    move-result v1

    .line 96
    .local v1, "cause":I
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 97
    if-ne v1, v0, :cond_0

    const/4 v0, 0x3

    .line 104
    .local v0, "callLogType":I
    :cond_0
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/android/phone/CallLogger;->logCall(Lcom/android/internal/telephony/Connection;I)V

    .line 105
    return-void

    .line 100
    .end local v0    # "callLogType":I
    :cond_1
    const/4 v0, 0x2

    .restart local v0    # "callLogType":I
    goto :goto_0
.end method

.method public logCall(Lcom/android/internal/telephony/Connection;I)V
    .locals 12
    .param p1, "c"    # Lcom/android/internal/telephony/Connection;
    .param p2, "callLogType"    # I

    .prologue
    .line 58
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v10

    .line 59
    .local v10, "number":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v6

    .line 60
    .local v6, "date":J
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v8

    .line 61
    .local v8, "duration":J
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v11

    .line 63
    .local v11, "phone":Lcom/android/internal/telephony/Phone;
    invoke-direct {p0, p1}, Lcom/android/phone/CallLogger;->getCallerInfoFromConnection(Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v2

    .line 64
    .local v2, "ci":Lcom/android/internal/telephony/CallerInfo;
    invoke-direct {p0, p1, v2}, Lcom/android/phone/CallLogger;->getLogNumber(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfo;)Ljava/lang/String;

    move-result-object v3

    .line 66
    .local v3, "logNumber":Ljava/lang/String;
    sget-boolean v1, Lcom/android/phone/CallLogger;->DBG:Z

    if-eqz v1, :cond_0

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "- onDisconnect(): logNumber set to:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", number set to: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v10}, Lcom/android/phone/PhoneUtils;->toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallLogger;->log(Ljava/lang/String;)V

    .line 76
    :cond_0
    invoke-direct {p0, p1, v2}, Lcom/android/phone/CallLogger;->getPresentation(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfo;)I

    move-result v4

    .line 78
    .local v4, "presentation":I
    invoke-static {v11}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v11, v10}, Lcom/android/internal/telephony/Phone;->isOtaSpNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    .line 82
    .local v0, "isOtaspNumber":Z
    :goto_0
    if-nez v0, :cond_1

    move-object v1, p0

    move v5, p2

    .line 83
    invoke-virtual/range {v1 .. v9}, Lcom/android/phone/CallLogger;->logCall(Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;IIJJ)V

    .line 85
    :cond_1
    return-void

    .line 78
    .end local v0    # "isOtaspNumber":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
