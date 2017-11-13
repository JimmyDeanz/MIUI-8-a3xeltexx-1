.class Lcom/android/internal/telephony/cat/SendDataParams;
.super Lcom/android/internal/telephony/cat/CommandParams;
.source "CommandParams.java"


# instance fields
.field mChannelData:[B

.field mChannelId:I

.field mSendImmediate:Z

.field mTextMessage:Lcom/android/internal/telephony/cat/TextMessage;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CommandDetails;I[BZLcom/android/internal/telephony/cat/TextMessage;)V
    .locals 0
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .param p2, "channelId"    # I
    .param p3, "channelData"    # [B
    .param p4, "sendImmediate"    # Z
    .param p5, "textMessage"    # Lcom/android/internal/telephony/cat/TextMessage;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    iput p2, p0, Lcom/android/internal/telephony/cat/SendDataParams;->mChannelId:I

    iput-object p3, p0, Lcom/android/internal/telephony/cat/SendDataParams;->mChannelData:[B

    iput-boolean p4, p0, Lcom/android/internal/telephony/cat/SendDataParams;->mSendImmediate:Z

    iput-object p5, p0, Lcom/android/internal/telephony/cat/SendDataParams;->mTextMessage:Lcom/android/internal/telephony/cat/TextMessage;

    return-void
.end method
