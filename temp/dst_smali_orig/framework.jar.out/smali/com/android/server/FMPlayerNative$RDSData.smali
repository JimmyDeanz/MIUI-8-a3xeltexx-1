.class Lcom/android/server/FMPlayerNative$RDSData;
.super Ljava/lang/Object;
.source "FMPlayerNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/FMPlayerNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RDSData"
.end annotation


# instance fields
.field public mChannelName:Ljava/lang/String;

.field public mFreq:J

.field public mRadioText:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "freq"    # J
    .param p3, "channelName"    # Ljava/lang/String;
    .param p4, "radioText"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/server/FMPlayerNative$RDSData;->mFreq:J

    iput-object v0, p0, Lcom/android/server/FMPlayerNative$RDSData;->mChannelName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/FMPlayerNative$RDSData;->mRadioText:Ljava/lang/String;

    if-eqz p3, :cond_0

    iput-object p3, p0, Lcom/android/server/FMPlayerNative$RDSData;->mChannelName:Ljava/lang/String;

    :cond_0
    if-eqz p4, :cond_1

    iput-object p4, p0, Lcom/android/server/FMPlayerNative$RDSData;->mRadioText:Ljava/lang/String;

    :cond_1
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n== RDSData :--> \nFreq :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/FMPlayerNative$RDSData;->mFreq:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \nChannel Name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/FMPlayerNative$RDSData;->mChannelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \nRadio Text :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/FMPlayerNative$RDSData;->mRadioText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<--: ====="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
