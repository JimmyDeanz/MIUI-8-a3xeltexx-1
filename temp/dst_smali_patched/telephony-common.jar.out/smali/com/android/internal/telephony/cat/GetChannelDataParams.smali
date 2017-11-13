.class Lcom/android/internal/telephony/cat/GetChannelDataParams;
.super Lcom/android/internal/telephony/cat/CommandParams;
.source "CommandParams.java"


# instance fields
.field mChannelId:I


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CommandDetails;I)V
    .locals 0
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .param p2, "channelId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    iput p2, p0, Lcom/android/internal/telephony/cat/GetChannelDataParams;->mChannelId:I

    return-void
.end method
