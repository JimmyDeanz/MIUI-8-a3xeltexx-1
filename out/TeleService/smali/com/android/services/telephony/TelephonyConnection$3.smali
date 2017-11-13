.class Lcom/android/services/telephony/TelephonyConnection$3;
.super Lcom/android/internal/telephony/Connection$ListenerBase;
.source "TelephonyConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/services/telephony/TelephonyConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/services/telephony/TelephonyConnection;


# direct methods
.method constructor <init>(Lcom/android/services/telephony/TelephonyConnection;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lcom/android/services/telephony/TelephonyConnection$3;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    invoke-direct {p0}, Lcom/android/internal/telephony/Connection$ListenerBase;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioQualityChanged(I)V
    .locals 1
    .param p1, "audioQuality"    # I

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection$3;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {v0, p1}, Lcom/android/services/telephony/TelephonyConnection;->setAudioQuality(I)V

    .line 231
    return-void
.end method

.method public onConferenceMergedFailed()V
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection$3;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    # invokes: Lcom/android/services/telephony/TelephonyConnection;->handleConferenceMergeFailed()V
    invoke-static {v0}, Lcom/android/services/telephony/TelephonyConnection;->access$900(Lcom/android/services/telephony/TelephonyConnection;)V

    .line 260
    return-void
.end method

.method public onConferenceParticipantsChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/ConferenceParticipant;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 240
    .local p1, "participants":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/ConferenceParticipant;>;"
    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection$3;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    # invokes: Lcom/android/services/telephony/TelephonyConnection;->updateConferenceParticipants(Ljava/util/List;)V
    invoke-static {v0, p1}, Lcom/android/services/telephony/TelephonyConnection;->access$700(Lcom/android/services/telephony/TelephonyConnection;Ljava/util/List;)V

    .line 241
    return-void
.end method

.method public onLocalVideoCapabilityChanged(Z)V
    .locals 1
    .param p1, "capable"    # Z

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection$3;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {v0, p1}, Lcom/android/services/telephony/TelephonyConnection;->setLocalVideoCapable(Z)V

    .line 187
    return-void
.end method

.method public onMultipartyStateChanged(Z)V
    .locals 1
    .param p1, "isMultiParty"    # Z

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection$3;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    # invokes: Lcom/android/services/telephony/TelephonyConnection;->handleMultipartyStateChange(Z)V
    invoke-static {v0, p1}, Lcom/android/services/telephony/TelephonyConnection;->access$800(Lcom/android/services/telephony/TelephonyConnection;Z)V

    .line 252
    return-void
.end method

.method public onRemoteVideoCapabilityChanged(Z)V
    .locals 1
    .param p1, "capable"    # Z

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection$3;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {v0, p1}, Lcom/android/services/telephony/TelephonyConnection;->setRemoteVideoCapable(Z)V

    .line 198
    return-void
.end method

.method public onVideoProviderChanged(Landroid/telecom/Connection$VideoProvider;)V
    .locals 1
    .param p1, "videoProvider"    # Landroid/telecom/Connection$VideoProvider;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection$3;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {v0, p1}, Lcom/android/services/telephony/TelephonyConnection;->setVideoProvider(Landroid/telecom/Connection$VideoProvider;)V

    .line 209
    return-void
.end method

.method public onVideoStateChanged(I)V
    .locals 1
    .param p1, "videoState"    # I

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection$3;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {v0, p1}, Lcom/android/services/telephony/TelephonyConnection;->setVideoState(I)V

    .line 176
    return-void
.end method

.method public onWifiChanged(Z)V
    .locals 1
    .param p1, "isWifi"    # Z

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection$3;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {v0, p1}, Lcom/android/services/telephony/TelephonyConnection;->setWifi(Z)V

    .line 220
    return-void
.end method
