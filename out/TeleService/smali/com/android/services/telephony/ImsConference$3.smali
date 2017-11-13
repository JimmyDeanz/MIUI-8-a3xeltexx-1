.class Lcom/android/services/telephony/ImsConference$3;
.super Landroid/telecom/Connection$Listener;
.source "ImsConference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/services/telephony/ImsConference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/services/telephony/ImsConference;


# direct methods
.method constructor <init>(Lcom/android/services/telephony/ImsConference;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/services/telephony/ImsConference$3;->this$0:Lcom/android/services/telephony/ImsConference;

    invoke-direct {p0}, Landroid/telecom/Connection$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public onConferenceParticipantsChanged(Landroid/telecom/Connection;Ljava/util/List;)V
    .locals 5
    .param p1, "c"    # Landroid/telecom/Connection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/Connection;",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/ConferenceParticipant;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 148
    .local p2, "participants":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/ConferenceParticipant;>;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    const-string v1, "onConferenceParticipantsChanged: %d participants"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p0, v1, v2}, Landroid/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, p1

    .line 152
    check-cast v0, Lcom/android/services/telephony/TelephonyConnection;

    .line 153
    .local v0, "telephonyConnection":Lcom/android/services/telephony/TelephonyConnection;
    iget-object v1, p0, Lcom/android/services/telephony/ImsConference$3;->this$0:Lcom/android/services/telephony/ImsConference;

    # invokes: Lcom/android/services/telephony/ImsConference;->handleConferenceParticipantsUpdate(Lcom/android/services/telephony/TelephonyConnection;Ljava/util/List;)V
    invoke-static {v1, v0, p2}, Lcom/android/services/telephony/ImsConference;->access$500(Lcom/android/services/telephony/ImsConference;Lcom/android/services/telephony/TelephonyConnection;Ljava/util/List;)V

    goto :goto_0
.end method

.method public onConnectionCapabilitiesChanged(Landroid/telecom/Connection;I)V
    .locals 5
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "connectionCapabilities"    # I

    .prologue
    .line 172
    const-string v1, "onCallCapabilitiesChanged: Connection: %s, callCapabilities: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p0, v1, v2}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    iget-object v1, p0, Lcom/android/services/telephony/ImsConference$3;->this$0:Lcom/android/services/telephony/ImsConference;

    invoke-virtual {v1}, Lcom/android/services/telephony/ImsConference;->getConnectionCapabilities()I

    move-result v0

    .line 175
    .local v0, "capabilites":I
    iget-object v1, p0, Lcom/android/services/telephony/ImsConference$3;->this$0:Lcom/android/services/telephony/ImsConference;

    iget-object v2, p0, Lcom/android/services/telephony/ImsConference$3;->this$0:Lcom/android/services/telephony/ImsConference;

    # invokes: Lcom/android/services/telephony/ImsConference;->applyVideoCapabilities(II)I
    invoke-static {v2, v0, p2}, Lcom/android/services/telephony/ImsConference;->access$600(Lcom/android/services/telephony/ImsConference;II)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/services/telephony/ImsConference;->setConnectionCapabilities(I)V

    .line 176
    return-void
.end method

.method public onDestroyed(Landroid/telecom/Connection;)V
    .locals 1
    .param p1, "connection"    # Landroid/telecom/Connection;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/services/telephony/ImsConference$3;->this$0:Lcom/android/services/telephony/ImsConference;

    # invokes: Lcom/android/services/telephony/ImsConference;->disconnectConferenceParticipants()V
    invoke-static {v0}, Lcom/android/services/telephony/ImsConference;->access$400(Lcom/android/services/telephony/ImsConference;)V

    .line 135
    return-void
.end method

.method public onDisconnected(Landroid/telecom/Connection;Landroid/telecom/DisconnectCause;)V
    .locals 1
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "disconnectCause"    # Landroid/telecom/DisconnectCause;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/services/telephony/ImsConference$3;->this$0:Lcom/android/services/telephony/ImsConference;

    invoke-virtual {v0, p2}, Lcom/android/services/telephony/ImsConference;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    .line 124
    return-void
.end method

.method public onStateChanged(Landroid/telecom/Connection;I)V
    .locals 1
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "state"    # I

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/services/telephony/ImsConference$3;->this$0:Lcom/android/services/telephony/ImsConference;

    invoke-virtual {v0, p2}, Lcom/android/services/telephony/ImsConference;->setState(I)V

    .line 113
    return-void
.end method

.method public onStatusHintsChanged(Landroid/telecom/Connection;Landroid/telecom/StatusHints;)V
    .locals 2
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "statusHints"    # Landroid/telecom/StatusHints;

    .prologue
    .line 180
    const-string v0, "onStatusHintsChanged"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    iget-object v0, p0, Lcom/android/services/telephony/ImsConference$3;->this$0:Lcom/android/services/telephony/ImsConference;

    # invokes: Lcom/android/services/telephony/ImsConference;->updateStatusHints()V
    invoke-static {v0}, Lcom/android/services/telephony/ImsConference;->access$700(Lcom/android/services/telephony/ImsConference;)V

    .line 182
    return-void
.end method

.method public onVideoProviderChanged(Landroid/telecom/Connection;Landroid/telecom/Connection$VideoProvider;)V
    .locals 3
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "videoProvider"    # Landroid/telecom/Connection$VideoProvider;

    .prologue
    .line 165
    const-string v0, "onVideoProviderChanged: Connection: %s, VideoProvider: %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    iget-object v0, p0, Lcom/android/services/telephony/ImsConference$3;->this$0:Lcom/android/services/telephony/ImsConference;

    invoke-virtual {v0, p1, p2}, Lcom/android/services/telephony/ImsConference;->setVideoProvider(Landroid/telecom/Connection;Landroid/telecom/Connection$VideoProvider;)V

    .line 168
    return-void
.end method

.method public onVideoStateChanged(Landroid/telecom/Connection;I)V
    .locals 4
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "videoState"    # I

    .prologue
    .line 158
    const-string v0, "onVideoStateChanged video state %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    iget-object v0, p0, Lcom/android/services/telephony/ImsConference$3;->this$0:Lcom/android/services/telephony/ImsConference;

    invoke-virtual {v0, p1, p2}, Lcom/android/services/telephony/ImsConference;->setVideoState(Landroid/telecom/Connection;I)V

    .line 160
    return-void
.end method
