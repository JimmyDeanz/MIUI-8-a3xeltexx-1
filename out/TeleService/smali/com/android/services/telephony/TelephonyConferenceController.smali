.class final Lcom/android/services/telephony/TelephonyConferenceController;
.super Ljava/lang/Object;
.source "TelephonyConferenceController.java"


# instance fields
.field private final mConnectionListener:Landroid/telecom/Connection$Listener;

.field private final mConnectionService:Lcom/android/services/telephony/TelephonyConnectionService;

.field private mTelephonyConference:Lcom/android/services/telephony/TelephonyConference;

.field private final mTelephonyConnections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/services/telephony/TelephonyConnection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/services/telephony/TelephonyConnectionService;)V
    .locals 1
    .param p1, "connectionService"    # Lcom/android/services/telephony/TelephonyConnectionService;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lcom/android/services/telephony/TelephonyConferenceController$1;

    invoke-direct {v0, p0}, Lcom/android/services/telephony/TelephonyConferenceController$1;-><init>(Lcom/android/services/telephony/TelephonyConferenceController;)V

    iput-object v0, p0, Lcom/android/services/telephony/TelephonyConferenceController;->mConnectionListener:Landroid/telecom/Connection$Listener;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/services/telephony/TelephonyConferenceController;->mTelephonyConnections:Ljava/util/List;

    .line 70
    iput-object p1, p0, Lcom/android/services/telephony/TelephonyConferenceController;->mConnectionService:Lcom/android/services/telephony/TelephonyConnectionService;

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/android/services/telephony/TelephonyConferenceController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/services/telephony/TelephonyConferenceController;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/services/telephony/TelephonyConferenceController;->recalculate()V

    return-void
.end method

.method private isFullConference(Landroid/telecom/Conference;)Z
    .locals 2
    .param p1, "conference"    # Landroid/telecom/Conference;

    .prologue
    .line 95
    invoke-virtual {p1}, Landroid/telecom/Conference;->getConnections()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private participatesInFullConference(Landroid/telecom/Connection;)Z
    .locals 1
    .param p1, "connection"    # Landroid/telecom/Connection;

    .prologue
    .line 99
    invoke-virtual {p1}, Landroid/telecom/Connection;->getConference()Landroid/telecom/Conference;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/telecom/Connection;->getConference()Landroid/telecom/Conference;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/services/telephony/TelephonyConferenceController;->isFullConference(Landroid/telecom/Conference;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private recalculate()V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/services/telephony/TelephonyConferenceController;->recalculateConference()V

    .line 91
    invoke-direct {p0}, Lcom/android/services/telephony/TelephonyConferenceController;->recalculateConferenceable()V

    .line 92
    return-void
.end method

.method private recalculateConference()V
    .locals 13

    .prologue
    .line 164
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 165
    .local v2, "conferencedConnections":Ljava/util/Set;, "Ljava/util/Set<Landroid/telecom/Connection;>;"
    const/4 v6, 0x0

    .line 167
    .local v6, "numGsmConnections":I
    iget-object v9, p0, Lcom/android/services/telephony/TelephonyConferenceController;->mTelephonyConnections:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/services/telephony/TelephonyConnection;

    .line 168
    .local v3, "connection":Lcom/android/services/telephony/TelephonyConnection;
    invoke-virtual {v3}, Lcom/android/services/telephony/TelephonyConnection;->getOriginalConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v7

    .line 171
    .local v7, "radioConnection":Lcom/android/internal/telephony/Connection;
    if-eqz v7, :cond_0

    .line 172
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v8

    .line 173
    .local v8, "state":Lcom/android/internal/telephony/Call$State;
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 174
    .local v0, "call":Lcom/android/internal/telephony/Call;
    sget-object v9, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v8, v9, :cond_1

    sget-object v9, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v8, v9, :cond_0

    :cond_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isMultiparty()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 177
    add-int/lit8 v6, v6, 0x1

    .line 178
    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 183
    .end local v0    # "call":Lcom/android/internal/telephony/Call;
    .end local v3    # "connection":Lcom/android/services/telephony/TelephonyConnection;
    .end local v7    # "radioConnection":Lcom/android/internal/telephony/Connection;
    .end local v8    # "state":Lcom/android/internal/telephony/Call$State;
    :cond_2
    const-string v9, "Recalculate conference calls %s %s."

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/services/telephony/TelephonyConferenceController;->mTelephonyConference:Lcom/android/services/telephony/TelephonyConference;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object v2, v10, v11

    invoke-static {p0, v9, v10}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 188
    const/4 v9, 0x2

    if-ge v6, v9, :cond_4

    .line 189
    const-string v9, "not enough connections to be a conference!"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {p0, v9, v10}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 192
    iget-object v9, p0, Lcom/android/services/telephony/TelephonyConferenceController;->mTelephonyConference:Lcom/android/services/telephony/TelephonyConference;

    if-eqz v9, :cond_3

    .line 193
    const-string v9, "with a conference to destroy!"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {p0, v9, v10}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    iget-object v9, p0, Lcom/android/services/telephony/TelephonyConferenceController;->mTelephonyConference:Lcom/android/services/telephony/TelephonyConference;

    invoke-virtual {v9}, Lcom/android/services/telephony/TelephonyConference;->destroy()V

    .line 195
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/services/telephony/TelephonyConferenceController;->mTelephonyConference:Lcom/android/services/telephony/TelephonyConference;

    .line 239
    :cond_3
    :goto_1
    return-void

    .line 198
    :cond_4
    iget-object v9, p0, Lcom/android/services/telephony/TelephonyConferenceController;->mTelephonyConference:Lcom/android/services/telephony/TelephonyConference;

    if-eqz v9, :cond_8

    .line 199
    iget-object v9, p0, Lcom/android/services/telephony/TelephonyConferenceController;->mTelephonyConference:Lcom/android/services/telephony/TelephonyConference;

    invoke-virtual {v9}, Lcom/android/services/telephony/TelephonyConference;->getConnections()Ljava/util/List;

    move-result-object v4

    .line 201
    .local v4, "existingConnections":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Connection;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Connection;

    .line 202
    .local v3, "connection":Landroid/telecom/Connection;
    instance-of v9, v3, Lcom/android/services/telephony/TelephonyConnection;

    if-eqz v9, :cond_5

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 204
    iget-object v9, p0, Lcom/android/services/telephony/TelephonyConferenceController;->mTelephonyConference:Lcom/android/services/telephony/TelephonyConference;

    invoke-virtual {v9, v3}, Lcom/android/services/telephony/TelephonyConference;->removeConnection(Landroid/telecom/Connection;)V

    goto :goto_2

    .line 209
    .end local v3    # "connection":Landroid/telecom/Connection;
    :cond_6
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_7
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Connection;

    .line 210
    .restart local v3    # "connection":Landroid/telecom/Connection;
    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 211
    iget-object v9, p0, Lcom/android/services/telephony/TelephonyConferenceController;->mTelephonyConference:Lcom/android/services/telephony/TelephonyConference;

    invoke-virtual {v9, v3}, Lcom/android/services/telephony/TelephonyConference;->addConnection(Landroid/telecom/Connection;)Z

    goto :goto_3

    .line 215
    .end local v3    # "connection":Landroid/telecom/Connection;
    .end local v4    # "existingConnections":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Connection;>;"
    :cond_8
    new-instance v9, Lcom/android/services/telephony/TelephonyConference;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Lcom/android/services/telephony/TelephonyConference;-><init>(Landroid/telecom/PhoneAccountHandle;)V

    iput-object v9, p0, Lcom/android/services/telephony/TelephonyConferenceController;->mTelephonyConference:Lcom/android/services/telephony/TelephonyConference;

    .line 217
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Connection;

    .line 218
    .restart local v3    # "connection":Landroid/telecom/Connection;
    const-string v9, "Adding a connection to a conference call: %s %s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/services/telephony/TelephonyConferenceController;->mTelephonyConference:Lcom/android/services/telephony/TelephonyConference;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object v3, v10, v11

    invoke-static {p0, v9, v10}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 220
    iget-object v9, p0, Lcom/android/services/telephony/TelephonyConferenceController;->mTelephonyConference:Lcom/android/services/telephony/TelephonyConference;

    invoke-virtual {v9, v3}, Lcom/android/services/telephony/TelephonyConference;->addConnection(Landroid/telecom/Connection;)Z

    goto :goto_4

    .line 223
    .end local v3    # "connection":Landroid/telecom/Connection;
    :cond_9
    iget-object v9, p0, Lcom/android/services/telephony/TelephonyConferenceController;->mConnectionService:Lcom/android/services/telephony/TelephonyConnectionService;

    iget-object v10, p0, Lcom/android/services/telephony/TelephonyConferenceController;->mTelephonyConference:Lcom/android/services/telephony/TelephonyConference;

    invoke-virtual {v9, v10}, Lcom/android/services/telephony/TelephonyConnectionService;->addConference(Landroid/telecom/Conference;)V

    .line 227
    :cond_a
    iget-object v9, p0, Lcom/android/services/telephony/TelephonyConferenceController;->mTelephonyConference:Lcom/android/services/telephony/TelephonyConference;

    invoke-virtual {v9}, Lcom/android/services/telephony/TelephonyConference;->getPrimaryConnection()Landroid/telecom/Connection;

    move-result-object v1

    .line 228
    .local v1, "conferencedConnection":Landroid/telecom/Connection;
    if-eqz v1, :cond_3

    .line 229
    invoke-virtual {v1}, Landroid/telecom/Connection;->getState()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    goto/16 :goto_1

    .line 231
    :pswitch_0
    iget-object v9, p0, Lcom/android/services/telephony/TelephonyConferenceController;->mTelephonyConference:Lcom/android/services/telephony/TelephonyConference;

    invoke-virtual {v9}, Lcom/android/services/telephony/TelephonyConference;->setActive()V

    goto/16 :goto_1

    .line 234
    :pswitch_1
    iget-object v9, p0, Lcom/android/services/telephony/TelephonyConferenceController;->mTelephonyConference:Lcom/android/services/telephony/TelephonyConference;

    invoke-virtual {v9}, Lcom/android/services/telephony/TelephonyConference;->setOnHold()V

    goto/16 :goto_1

    .line 229
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private recalculateConferenceable()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 107
    const-string v6, "recalculateConferenceable : %d"

    new-array v7, v10, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/services/telephony/TelephonyConferenceController;->mTelephonyConnections:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {p0, v6, v7}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/services/telephony/TelephonyConferenceController;->mTelephonyConnections:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 110
    .local v0, "activeConnections":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Connection;>;"
    new-instance v1, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/services/telephony/TelephonyConferenceController;->mTelephonyConnections:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 113
    .local v1, "backgroundConnections":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Connection;>;"
    iget-object v6, p0, Lcom/android/services/telephony/TelephonyConferenceController;->mTelephonyConnections:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Connection;

    .line 114
    .local v3, "connection":Landroid/telecom/Connection;
    const-string v6, "recalc - %s %s"

    new-array v7, v11, [Ljava/lang/Object;

    invoke-virtual {v3}, Landroid/telecom/Connection;->getState()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    aput-object v3, v7, v10

    invoke-static {p0, v6, v7}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    invoke-direct {p0, v3}, Lcom/android/services/telephony/TelephonyConferenceController;->participatesInFullConference(Landroid/telecom/Connection;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 117
    invoke-virtual {v3}, Landroid/telecom/Connection;->getState()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 129
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/telecom/Connection;->setConferenceableConnections(Ljava/util/List;)V

    goto :goto_0

    .line 119
    :pswitch_0
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 122
    :pswitch_1
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 132
    .end local v3    # "connection":Landroid/telecom/Connection;
    :cond_1
    const-string v6, "active: %d, holding: %d"

    new-array v7, v11, [Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {p0, v6, v7}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Connection;

    .line 138
    .restart local v3    # "connection":Landroid/telecom/Connection;
    invoke-virtual {v3, v1}, Landroid/telecom/Connection;->setConferenceableConnections(Ljava/util/List;)V

    goto :goto_1

    .line 143
    .end local v3    # "connection":Landroid/telecom/Connection;
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Connection;

    .line 144
    .restart local v3    # "connection":Landroid/telecom/Connection;
    invoke-virtual {v3, v0}, Landroid/telecom/Connection;->setConferenceableConnections(Ljava/util/List;)V

    goto :goto_2

    .line 148
    .end local v3    # "connection":Landroid/telecom/Connection;
    :cond_3
    iget-object v6, p0, Lcom/android/services/telephony/TelephonyConferenceController;->mTelephonyConference:Lcom/android/services/telephony/TelephonyConference;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/services/telephony/TelephonyConferenceController;->mTelephonyConference:Lcom/android/services/telephony/TelephonyConference;

    invoke-direct {p0, v6}, Lcom/android/services/telephony/TelephonyConferenceController;->isFullConference(Landroid/telecom/Conference;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 149
    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/services/telephony/TelephonyConferenceController;->mTelephonyConnections:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 151
    .local v5, "nonConferencedConnections":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Connection;>;"
    iget-object v6, p0, Lcom/android/services/telephony/TelephonyConferenceController;->mTelephonyConnections:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/services/telephony/TelephonyConnection;

    .line 152
    .local v2, "c":Lcom/android/services/telephony/TelephonyConnection;
    invoke-virtual {v2}, Lcom/android/services/telephony/TelephonyConnection;->getConference()Landroid/telecom/Conference;

    move-result-object v6

    if-nez v6, :cond_4

    .line 153
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 156
    .end local v2    # "c":Lcom/android/services/telephony/TelephonyConnection;
    :cond_5
    const-string v6, "conference conferenceable: %s"

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v5, v7, v9

    invoke-static {p0, v6, v7}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 157
    iget-object v6, p0, Lcom/android/services/telephony/TelephonyConferenceController;->mTelephonyConference:Lcom/android/services/telephony/TelephonyConference;

    invoke-virtual {v6, v5}, Lcom/android/services/telephony/TelephonyConference;->setConferenceableConnections(Ljava/util/List;)V

    .line 161
    .end local v5    # "nonConferencedConnections":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Connection;>;"
    :cond_6
    return-void

    .line 117
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method add(Lcom/android/services/telephony/TelephonyConnection;)V
    .locals 1
    .param p1, "connection"    # Lcom/android/services/telephony/TelephonyConnection;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConferenceController;->mTelephonyConnections:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConferenceController;->mConnectionListener:Landroid/telecom/Connection$Listener;

    invoke-virtual {p1, v0}, Lcom/android/services/telephony/TelephonyConnection;->addConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;

    .line 79
    invoke-direct {p0}, Lcom/android/services/telephony/TelephonyConferenceController;->recalculate()V

    .line 80
    return-void
.end method

.method remove(Landroid/telecom/Connection;)V
    .locals 1
    .param p1, "connection"    # Landroid/telecom/Connection;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConferenceController;->mConnectionListener:Landroid/telecom/Connection$Listener;

    invoke-virtual {p1, v0}, Landroid/telecom/Connection;->removeConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;

    .line 84
    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConferenceController;->mTelephonyConnections:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 86
    invoke-direct {p0}, Lcom/android/services/telephony/TelephonyConferenceController;->recalculate()V

    .line 87
    return-void
.end method
