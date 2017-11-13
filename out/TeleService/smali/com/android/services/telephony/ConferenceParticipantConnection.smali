.class public Lcom/android/services/telephony/ConferenceParticipantConnection;
.super Landroid/telecom/Connection;
.source "ConferenceParticipantConnection.java"


# instance fields
.field private final mEndpoint:Landroid/net/Uri;

.field private final mParentConnection:Lcom/android/internal/telephony/Connection;

.field private final mUserEntity:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Connection;Landroid/telecom/ConferenceParticipant;)V
    .locals 2
    .param p1, "parentConnection"    # Lcom/android/internal/telephony/Connection;
    .param p2, "participant"    # Landroid/telecom/ConferenceParticipant;

    .prologue
    const/4 v1, 0x1

    .line 53
    invoke-direct {p0}, Landroid/telecom/Connection;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/android/services/telephony/ConferenceParticipantConnection;->mParentConnection:Lcom/android/internal/telephony/Connection;

    .line 56
    invoke-virtual {p2}, Landroid/telecom/ConferenceParticipant;->getHandle()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/android/services/telephony/ConferenceParticipantConnection;->setAddress(Landroid/net/Uri;I)V

    .line 57
    invoke-virtual {p2}, Landroid/telecom/ConferenceParticipant;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/android/services/telephony/ConferenceParticipantConnection;->setCallerDisplayName(Ljava/lang/String;I)V

    .line 59
    invoke-virtual {p2}, Landroid/telecom/ConferenceParticipant;->getHandle()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/services/telephony/ConferenceParticipantConnection;->mUserEntity:Landroid/net/Uri;

    .line 60
    invoke-virtual {p2}, Landroid/telecom/ConferenceParticipant;->getEndpoint()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/services/telephony/ConferenceParticipantConnection;->mEndpoint:Landroid/net/Uri;

    .line 61
    invoke-direct {p0}, Lcom/android/services/telephony/ConferenceParticipantConnection;->setCapabilities()V

    .line 62
    return-void
.end method

.method private setCapabilities()V
    .locals 1

    .prologue
    .line 138
    const/16 v0, 0x2000

    .line 139
    .local v0, "capabilities":I
    invoke-virtual {p0, v0}, Lcom/android/services/telephony/ConferenceParticipantConnection;->setConnectionCapabilities(I)V

    .line 140
    return-void
.end method


# virtual methods
.method public getUserEntity()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/services/telephony/ConferenceParticipantConnection;->mUserEntity:Landroid/net/Uri;

    return-object v0
.end method

.method public onDisconnect()V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/services/telephony/ConferenceParticipantConnection;->mParentConnection:Lcom/android/internal/telephony/Connection;

    iget-object v1, p0, Lcom/android/services/telephony/ConferenceParticipantConnection;->mUserEntity:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Connection;->onDisconnectConferenceParticipant(Landroid/net/Uri;)V

    .line 112
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "[ConferenceParticipantConnection objId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 152
    const-string v1, " endPoint:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    iget-object v1, p0, Lcom/android/services/telephony/ConferenceParticipantConnection;->mEndpoint:Landroid/net/Uri;

    invoke-static {v1}, Lcom/android/services/telephony/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    const-string v1, " parentConnection:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    iget-object v1, p0, Lcom/android/services/telephony/ConferenceParticipantConnection;->mParentConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/services/telephony/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    const-string v1, " state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {p0}, Lcom/android/services/telephony/ConferenceParticipantConnection;->getState()I

    move-result v1

    invoke-static {v1}, Landroid/telecom/Connection;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public updateState(I)V
    .locals 4
    .param p1, "newState"    # I

    .prologue
    .line 70
    const-string v0, "updateState endPoint: %s state: %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/services/telephony/ConferenceParticipantConnection;->mEndpoint:Landroid/net/Uri;

    invoke-static {v3}, Lcom/android/services/telephony/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Landroid/telecom/Connection;->stateToString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    invoke-virtual {p0}, Lcom/android/services/telephony/ConferenceParticipantConnection;->getState()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 99
    :goto_0
    return-void

    .line 76
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 97
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/services/telephony/ConferenceParticipantConnection;->setActive()V

    goto :goto_0

    .line 78
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/services/telephony/ConferenceParticipantConnection;->setInitializing()V

    goto :goto_0

    .line 81
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/services/telephony/ConferenceParticipantConnection;->setRinging()V

    goto :goto_0

    .line 84
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/services/telephony/ConferenceParticipantConnection;->setDialing()V

    goto :goto_0

    .line 87
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/services/telephony/ConferenceParticipantConnection;->setOnHold()V

    goto :goto_0

    .line 90
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/services/telephony/ConferenceParticipantConnection;->setActive()V

    goto :goto_0

    .line 93
    :pswitch_6
    new-instance v0, Landroid/telecom/DisconnectCause;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/telecom/DisconnectCause;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/ConferenceParticipantConnection;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    .line 94
    invoke-virtual {p0}, Lcom/android/services/telephony/ConferenceParticipantConnection;->destroy()V

    goto :goto_0

    .line 76
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method
