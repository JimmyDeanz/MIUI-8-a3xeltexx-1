.class public Lcom/android/phone/vvm/omtp/sms/SyncMessage;
.super Ljava/lang/Object;
.source "SyncMessage.java"


# instance fields
.field private final mContentType:Ljava/lang/String;

.field private final mMessageId:Ljava/lang/String;

.field private final mMessageLength:Ljava/lang/Integer;

.field private final mMsgTimeMillis:Ljava/lang/Long;

.field private final mNewMessageCount:Ljava/lang/Integer;

.field private final mSender:Ljava/lang/String;

.field private final mSyncTriggerEvent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/phone/vvm/omtp/sms/WrappedMessageData;)V
    .locals 1
    .param p1, "wrappedData"    # Lcom/android/phone/vvm/omtp/sms/WrappedMessageData;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const-string v0, "ev"

    invoke-virtual {p1, v0}, Lcom/android/phone/vvm/omtp/sms/WrappedMessageData;->extractString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/vvm/omtp/sms/SyncMessage;->mSyncTriggerEvent:Ljava/lang/String;

    .line 54
    const-string v0, "id"

    invoke-virtual {p1, v0}, Lcom/android/phone/vvm/omtp/sms/WrappedMessageData;->extractString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/vvm/omtp/sms/SyncMessage;->mMessageId:Ljava/lang/String;

    .line 55
    const-string v0, "l"

    invoke-virtual {p1, v0}, Lcom/android/phone/vvm/omtp/sms/WrappedMessageData;->extractInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/vvm/omtp/sms/SyncMessage;->mMessageLength:Ljava/lang/Integer;

    .line 56
    const-string v0, "t"

    invoke-virtual {p1, v0}, Lcom/android/phone/vvm/omtp/sms/WrappedMessageData;->extractString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/vvm/omtp/sms/SyncMessage;->mContentType:Ljava/lang/String;

    .line 57
    const-string v0, "s"

    invoke-virtual {p1, v0}, Lcom/android/phone/vvm/omtp/sms/WrappedMessageData;->extractString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/vvm/omtp/sms/SyncMessage;->mSender:Ljava/lang/String;

    .line 58
    const-string v0, "c"

    invoke-virtual {p1, v0}, Lcom/android/phone/vvm/omtp/sms/WrappedMessageData;->extractInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/vvm/omtp/sms/SyncMessage;->mNewMessageCount:Ljava/lang/Integer;

    .line 59
    const-string v0, "dt"

    invoke-virtual {p1, v0}, Lcom/android/phone/vvm/omtp/sms/WrappedMessageData;->extractTime(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/vvm/omtp/sms/SyncMessage;->mMsgTimeMillis:Ljava/lang/Long;

    .line 60
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/phone/vvm/omtp/sms/SyncMessage;->mMessageId:Ljava/lang/String;

    return-object v0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/phone/vvm/omtp/sms/SyncMessage;->mMessageLength:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/vvm/omtp/sms/SyncMessage;->mMessageLength:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSender()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/phone/vvm/omtp/sms/SyncMessage;->mSender:Ljava/lang/String;

    return-object v0
.end method

.method public getSyncTriggerEvent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/phone/vvm/omtp/sms/SyncMessage;->mSyncTriggerEvent:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestampMillis()J
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/phone/vvm/omtp/sms/SyncMessage;->mMsgTimeMillis:Ljava/lang/Long;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/vvm/omtp/sms/SyncMessage;->mMsgTimeMillis:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SyncMessage [mSyncTriggerEvent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/vvm/omtp/sms/SyncMessage;->mSyncTriggerEvent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mNewMessageCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/vvm/omtp/sms/SyncMessage;->mNewMessageCount:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMessageId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/vvm/omtp/sms/SyncMessage;->mMessageId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMessageLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/vvm/omtp/sms/SyncMessage;->mMessageLength:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mContentType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/vvm/omtp/sms/SyncMessage;->mContentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSender="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/vvm/omtp/sms/SyncMessage;->mSender:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMsgTimeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/vvm/omtp/sms/SyncMessage;->mMsgTimeMillis:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
