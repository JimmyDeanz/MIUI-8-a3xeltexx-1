.class public final Lcom/android/internal/telephony/cdma/CdmaCall;
.super Lcom/android/internal/telephony/Call;
.source "CdmaCall.java"


# instance fields
.field mOwner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/CdmaCallTracker;)V
    .locals 0
    .param p1, "owner"    # Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/internal/telephony/Call;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaCall;->mOwner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    .line 43
    return-void
.end method


# virtual methods
.method attach(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/DriverCall;)V
    .locals 1
    .param p1, "conn"    # Lcom/android/internal/telephony/Connection;
    .param p2, "dc"    # Lcom/android/internal/telephony/DriverCall;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    iget-object v0, p2, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    invoke-static {v0}, Lcom/android/internal/telephony/cdma/CdmaCall;->stateFromDCState(Lcom/android/internal/telephony/DriverCall$State;)Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCall;->mState:Lcom/android/internal/telephony/Call$State;

    .line 99
    return-void
.end method

.method attachFake(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V
    .locals 1
    .param p1, "conn"    # Lcom/android/internal/telephony/Connection;
    .param p2, "state"    # Lcom/android/internal/telephony/Call$State;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    iput-object p2, p0, Lcom/android/internal/telephony/cdma/CdmaCall;->mState:Lcom/android/internal/telephony/Call$State;

    .line 106
    return-void
.end method

.method clearDisconnected()V
    .locals 4

    .prologue
    .line 192
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 193
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaConnection;

    .line 195
    .local v0, "cn":Lcom/android/internal/telephony/cdma/CdmaConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_0

    .line 196
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 192
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 200
    .end local v0    # "cn":Lcom/android/internal/telephony/cdma/CdmaConnection;
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 201
    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCall;->mState:Lcom/android/internal/telephony/Call$State;

    .line 203
    :cond_2
    return-void
.end method

.method connectionDisconnected(Lcom/android/internal/telephony/cdma/CdmaConnection;)Z
    .locals 5
    .param p1, "conn"    # Lcom/android/internal/telephony/cdma/CdmaConnection;

    .prologue
    .line 113
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCall;->mState:Lcom/android/internal/telephony/Call$State;

    sget-object v4, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v4, :cond_2

    .line 116
    const/4 v0, 0x1

    .line 118
    .local v0, "hasOnlyDisconnectedConnections":Z
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "s":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 119
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/Connection;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v4, :cond_1

    .line 122
    const/4 v0, 0x0

    .line 127
    :cond_0
    if-eqz v0, :cond_2

    .line 128
    sget-object v3, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCall;->mState:Lcom/android/internal/telephony/Call$State;

    .line 129
    const/4 v3, 0x1

    .line 133
    .end local v0    # "hasOnlyDisconnectedConnections":Z
    .end local v1    # "i":I
    .end local v2    # "s":I
    :goto_1
    return v3

    .line 118
    .restart local v0    # "hasOnlyDisconnectedConnections":Z
    .restart local v1    # "i":I
    .restart local v2    # "s":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 133
    .end local v0    # "hasOnlyDisconnectedConnections":Z
    .end local v1    # "i":I
    .end local v2    # "s":I
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method detach(Lcom/android/internal/telephony/cdma/CdmaConnection;)V
    .locals 1
    .param p1, "conn"    # Lcom/android/internal/telephony/cdma/CdmaConnection;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 141
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 142
    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCall;->mState:Lcom/android/internal/telephony/Call$State;

    .line 144
    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 46
    return-void
.end method

.method public getConnections()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCall;->mConnections:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCall;->mOwner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    return-object v0
.end method

.method public hangup()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCall;->mOwner:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->hangup(Lcom/android/internal/telephony/cdma/CdmaCall;)V

    .line 84
    return-void
.end method

.method isFull()Z
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sget v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->MAX_CONNECTIONS_PER_CALL:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMultiparty()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 65
    const-string v3, "VZW"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaCall;->isImsCall()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 66
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaCall;->getCallDetails()Lcom/android/internal/telephony/CallDetails;

    move-result-object v0

    .line 67
    .local v0, "callDetails":Lcom/android/internal/telephony/CallDetails;
    if-eqz v0, :cond_1

    iget-boolean v3, v0, Lcom/android/internal/telephony/CallDetails;->call_isMpty:Z

    if-eqz v3, :cond_1

    .line 73
    .end local v0    # "callDetails":Lcom/android/internal/telephony/CallDetails;
    :cond_0
    :goto_0
    return v1

    .restart local v0    # "callDetails":Lcom/android/internal/telephony/CallDetails;
    :cond_1
    move v1, v2

    .line 70
    goto :goto_0

    .line 73
    .end local v0    # "callDetails":Lcom/android/internal/telephony/CallDetails;
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gt v3, v1, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method onHangupLocal()V
    .locals 4

    .prologue
    .line 180
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "s":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 181
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaConnection;

    .line 183
    .local v0, "cn":Lcom/android/internal/telephony/cdma/CdmaConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaConnection;->onHangupLocal()V

    .line 180
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 185
    .end local v0    # "cn":Lcom/android/internal/telephony/cdma/CdmaConnection;
    :cond_0
    sget-object v3, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaCall;->mState:Lcom/android/internal/telephony/Call$State;

    .line 186
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaCall;->mState:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method update(Lcom/android/internal/telephony/cdma/CdmaConnection;Lcom/android/internal/telephony/DriverCall;)Z
    .locals 3
    .param p1, "conn"    # Lcom/android/internal/telephony/cdma/CdmaConnection;
    .param p2, "dc"    # Lcom/android/internal/telephony/DriverCall;

    .prologue
    .line 149
    const/4 v0, 0x0

    .line 151
    .local v0, "changed":Z
    iget-object v2, p2, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    invoke-static {v2}, Lcom/android/internal/telephony/cdma/CdmaCall;->stateFromDCState(Lcom/android/internal/telephony/DriverCall$State;)Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 153
    .local v1, "newState":Lcom/android/internal/telephony/Call$State;
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaCall;->mState:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v2, :cond_0

    .line 154
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaCall;->mState:Lcom/android/internal/telephony/Call$State;

    .line 155
    const/4 v0, 0x1

    .line 158
    :cond_0
    return v0
.end method
