.class public Lcom/android/services/telephony/ImsConferenceController;
.super Ljava/lang/Object;
.source "ImsConferenceController.java"


# instance fields
.field private final mConferenceListener:Landroid/telecom/Conference$Listener;

.field private final mConnectionListener:Landroid/telecom/Connection$Listener;

.field private final mConnectionService:Lcom/android/services/telephony/TelephonyConnectionService;

.field private final mImsConferences:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/services/telephony/ImsConference;",
            ">;"
        }
    .end annotation
.end field

.field private final mTelephonyConnections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/services/telephony/TelephonyConnection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/services/telephony/TelephonyConnectionService;)V
    .locals 2
    .param p1, "connectionService"    # Lcom/android/services/telephony/TelephonyConnectionService;

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lcom/android/services/telephony/ImsConferenceController$1;

    invoke-direct {v0, p0}, Lcom/android/services/telephony/ImsConferenceController$1;-><init>(Lcom/android/services/telephony/ImsConferenceController;)V

    iput-object v0, p0, Lcom/android/services/telephony/ImsConferenceController;->mConferenceListener:Landroid/telecom/Conference$Listener;

    .line 56
    new-instance v0, Lcom/android/services/telephony/ImsConferenceController$2;

    invoke-direct {v0, p0}, Lcom/android/services/telephony/ImsConferenceController$2;-><init>(Lcom/android/services/telephony/ImsConferenceController;)V

    iput-object v0, p0, Lcom/android/services/telephony/ImsConferenceController;->mConnectionListener:Landroid/telecom/Connection$Listener;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/services/telephony/ImsConferenceController;->mTelephonyConnections:Ljava/util/ArrayList;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/services/telephony/ImsConferenceController;->mImsConferences:Ljava/util/ArrayList;

    .line 103
    iput-object p1, p0, Lcom/android/services/telephony/ImsConferenceController;->mConnectionService:Lcom/android/services/telephony/TelephonyConnectionService;

    .line 104
    return-void
.end method

.method static synthetic access$000(Lcom/android/services/telephony/ImsConferenceController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/services/telephony/ImsConferenceController;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/services/telephony/ImsConferenceController;->mImsConferences:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/services/telephony/ImsConferenceController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/services/telephony/ImsConferenceController;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/services/telephony/ImsConferenceController;->recalculate()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/services/telephony/ImsConferenceController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/services/telephony/ImsConferenceController;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/services/telephony/ImsConferenceController;->recalculateConference()V

    return-void
.end method

.method private isMemberOfPeerConference(Landroid/telecom/Connection;)Z
    .locals 5
    .param p1, "connection"    # Landroid/telecom/Connection;

    .prologue
    const/4 v3, 0x0

    .line 261
    instance-of v4, p1, Lcom/android/services/telephony/TelephonyConnection;

    if-nez v4, :cond_1

    .line 272
    :cond_0
    :goto_0
    return v3

    :cond_1
    move-object v2, p1

    .line 264
    check-cast v2, Lcom/android/services/telephony/TelephonyConnection;

    .line 265
    .local v2, "telephonyConnection":Lcom/android/services/telephony/TelephonyConnection;
    invoke-virtual {v2}, Lcom/android/services/telephony/TelephonyConnection;->getOriginalConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 267
    .local v1, "originalConnection":Lcom/android/internal/telephony/Connection;
    instance-of v4, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    if-eqz v4, :cond_0

    move-object v0, v1

    .line 271
    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .line 272
    .local v0, "imsPhoneConnection":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->isMultiparty()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->isConferenceHost()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method

.method private recalculate()V
    .locals 0

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/android/services/telephony/ImsConferenceController;->recalculateConferenceable()V

    .line 143
    invoke-direct {p0}, Lcom/android/services/telephony/ImsConferenceController;->recalculateConference()V

    .line 144
    return-void
.end method

.method private recalculateConference()V
    .locals 4

    .prologue
    .line 279
    const-string v2, "recalculateConference"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 281
    iget-object v2, p0, Lcom/android/services/telephony/ImsConferenceController;->mTelephonyConnections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 282
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/services/telephony/TelephonyConnection;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 283
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/services/telephony/TelephonyConnection;

    .line 285
    .local v0, "connection":Lcom/android/services/telephony/TelephonyConnection;
    invoke-virtual {v0}, Lcom/android/services/telephony/TelephonyConnection;->isImsConnection()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/services/telephony/TelephonyConnection;->getOriginalConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/services/telephony/TelephonyConnection;->getOriginalConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->isMultiparty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 288
    invoke-direct {p0, v0}, Lcom/android/services/telephony/ImsConferenceController;->startConference(Lcom/android/services/telephony/TelephonyConnection;)V

    .line 289
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 292
    .end local v0    # "connection":Lcom/android/services/telephony/TelephonyConnection;
    :cond_1
    return-void
.end method

.method private recalculateConferenceable()V
    .locals 15

    .prologue
    const/4 v14, 0x2

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 150
    const-string v9, "recalculateConferenceable : %d"

    new-array v10, v13, [Ljava/lang/Object;

    iget-object v11, p0, Lcom/android/services/telephony/ImsConferenceController;->mTelephonyConnections:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-static {p0, v9, v10}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/services/telephony/ImsConferenceController;->mTelephonyConnections:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-direct {v0, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 152
    .local v0, "activeConnections":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Conferenceable;>;"
    new-instance v1, Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/services/telephony/ImsConferenceController;->mTelephonyConnections:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-direct {v1, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 155
    .local v1, "backgroundConnections":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Conferenceable;>;"
    iget-object v9, p0, Lcom/android/services/telephony/ImsConferenceController;->mTelephonyConnections:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telecom/Connection;

    .line 156
    .local v5, "connection":Landroid/telecom/Connection;
    sget-boolean v9, Lcom/android/services/telephony/Log;->DEBUG:Z

    if-eqz v9, :cond_1

    .line 157
    const-string v9, "recalc - %s %s"

    new-array v10, v14, [Ljava/lang/Object;

    invoke-virtual {v5}, Landroid/telecom/Connection;->getState()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v12

    aput-object v5, v10, v13

    invoke-static {p0, v9, v10}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    :cond_1
    invoke-direct {p0, v5}, Lcom/android/services/telephony/ImsConferenceController;->isMemberOfPeerConference(Landroid/telecom/Connection;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 163
    sget-boolean v9, Lcom/android/services/telephony/Log;->VERBOSE:Z

    if-eqz v9, :cond_0

    .line 164
    const-string v9, "Skipping connection in peer conference: %s"

    new-array v10, v13, [Ljava/lang/Object;

    aput-object v5, v10, v12

    invoke-static {p0, v9, v10}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 169
    :cond_2
    invoke-virtual {v5}, Landroid/telecom/Connection;->getState()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    .line 179
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/telecom/Connection;->setConferenceableConnections(Ljava/util/List;)V

    goto :goto_0

    .line 171
    :pswitch_0
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 174
    :pswitch_1
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 182
    .end local v5    # "connection":Landroid/telecom/Connection;
    :cond_3
    iget-object v9, p0, Lcom/android/services/telephony/ImsConferenceController;->mImsConferences:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/services/telephony/ImsConference;

    .line 183
    .local v3, "conference":Lcom/android/services/telephony/ImsConference;
    sget-boolean v9, Lcom/android/services/telephony/Log;->DEBUG:Z

    if-eqz v9, :cond_5

    .line 184
    const-string v9, "recalc - %s %s"

    new-array v10, v14, [Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/android/services/telephony/ImsConference;->getState()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v12

    aput-object v3, v10, v13

    invoke-static {p0, v9, v10}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 187
    :cond_5
    invoke-virtual {v3}, Lcom/android/services/telephony/ImsConference;->isConferenceHost()Z

    move-result v9

    if-nez v9, :cond_6

    .line 188
    sget-boolean v9, Lcom/android/services/telephony/Log;->VERBOSE:Z

    if-eqz v9, :cond_4

    .line 189
    const-string v9, "skipping conference (not hosted on this device): %s"

    new-array v10, v13, [Ljava/lang/Object;

    aput-object v3, v10, v12

    invoke-static {p0, v9, v10}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 194
    :cond_6
    invoke-virtual {v3}, Lcom/android/services/telephony/ImsConference;->getState()I

    move-result v9

    packed-switch v9, :pswitch_data_1

    goto :goto_1

    .line 196
    :pswitch_2
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 199
    :pswitch_3
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 206
    .end local v3    # "conference":Lcom/android/services/telephony/ImsConference;
    :cond_7
    const-string v9, "active: %d, holding: %d"

    new-array v10, v14, [Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v13

    invoke-static {p0, v9, v10}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 211
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_8
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telecom/Conferenceable;

    .line 212
    .local v4, "conferenceable":Landroid/telecom/Conferenceable;
    instance-of v9, v4, Landroid/telecom/Connection;

    if-eqz v9, :cond_8

    move-object v5, v4

    .line 213
    check-cast v5, Landroid/telecom/Connection;

    .line 214
    .restart local v5    # "connection":Landroid/telecom/Connection;
    invoke-virtual {v5, v1}, Landroid/telecom/Connection;->setConferenceables(Ljava/util/List;)V

    goto :goto_2

    .line 220
    .end local v4    # "conferenceable":Landroid/telecom/Conferenceable;
    .end local v5    # "connection":Landroid/telecom/Connection;
    :cond_9
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_a
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telecom/Conferenceable;

    .line 221
    .restart local v4    # "conferenceable":Landroid/telecom/Conferenceable;
    instance-of v9, v4, Landroid/telecom/Connection;

    if-eqz v9, :cond_a

    move-object v5, v4

    .line 222
    check-cast v5, Landroid/telecom/Connection;

    .line 223
    .restart local v5    # "connection":Landroid/telecom/Connection;
    invoke-virtual {v5, v0}, Landroid/telecom/Connection;->setConferenceables(Ljava/util/List;)V

    goto :goto_3

    .line 229
    .end local v4    # "conferenceable":Landroid/telecom/Conferenceable;
    .end local v5    # "connection":Landroid/telecom/Connection;
    :cond_b
    iget-object v9, p0, Lcom/android/services/telephony/ImsConferenceController;->mImsConferences:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_c
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_11

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/services/telephony/ImsConference;

    .line 232
    .restart local v3    # "conference":Lcom/android/services/telephony/ImsConference;
    invoke-virtual {v3}, Lcom/android/services/telephony/ImsConference;->isConferenceHost()Z

    move-result v9

    if-nez v9, :cond_d

    .line 233
    sget-boolean v9, Lcom/android/services/telephony/Log;->VERBOSE:Z

    if-eqz v9, :cond_c

    .line 234
    const-string v9, "skipping conference (not hosted on this device): %s"

    new-array v10, v13, [Ljava/lang/Object;

    aput-object v3, v10, v12

    invoke-static {p0, v9, v10}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 240
    :cond_d
    new-instance v8, Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/services/telephony/ImsConferenceController;->mTelephonyConnections:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 242
    .local v8, "nonConferencedConnections":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Connection;>;"
    iget-object v9, p0, Lcom/android/services/telephony/ImsConferenceController;->mTelephonyConnections:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_e
    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Connection;

    .line 243
    .local v2, "c":Landroid/telecom/Connection;
    invoke-virtual {v2}, Landroid/telecom/Connection;->getConference()Landroid/telecom/Conference;

    move-result-object v9

    if-nez v9, :cond_e

    .line 244
    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 247
    .end local v2    # "c":Landroid/telecom/Connection;
    :cond_f
    sget-boolean v9, Lcom/android/services/telephony/Log;->VERBOSE:Z

    if-eqz v9, :cond_10

    .line 248
    const-string v9, "conference conferenceable: %s"

    new-array v10, v13, [Ljava/lang/Object;

    aput-object v8, v10, v12

    invoke-static {p0, v9, v10}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 250
    :cond_10
    invoke-virtual {v3, v8}, Lcom/android/services/telephony/ImsConference;->setConferenceableConnections(Ljava/util/List;)V

    goto :goto_4

    .line 252
    .end local v3    # "conference":Lcom/android/services/telephony/ImsConference;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "nonConferencedConnections":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Connection;>;"
    :cond_11
    return-void

    .line 169
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 194
    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private startConference(Lcom/android/services/telephony/TelephonyConnection;)V
    .locals 5
    .param p1, "connection"    # Lcom/android/services/telephony/TelephonyConnection;

    .prologue
    .line 309
    sget-boolean v2, Lcom/android/services/telephony/Log;->VERBOSE:Z

    if-eqz v2, :cond_0

    .line 310
    const-string v2, "Start new ImsConference - connection: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 316
    :cond_0
    invoke-virtual {p1}, Lcom/android/services/telephony/TelephonyConnection;->cloneConnection()Lcom/android/services/telephony/TelephonyConnection;

    move-result-object v1

    .line 319
    .local v1, "conferenceHostConnection":Lcom/android/services/telephony/TelephonyConnection;
    new-instance v0, Lcom/android/services/telephony/ImsConference;

    iget-object v2, p0, Lcom/android/services/telephony/ImsConferenceController;->mConnectionService:Lcom/android/services/telephony/TelephonyConnectionService;

    invoke-direct {v0, v2, v1}, Lcom/android/services/telephony/ImsConference;-><init>(Lcom/android/services/telephony/TelephonyConnectionService;Lcom/android/services/telephony/TelephonyConnection;)V

    .line 320
    .local v0, "conference":Lcom/android/services/telephony/ImsConference;
    invoke-virtual {v1}, Lcom/android/services/telephony/TelephonyConnection;->getState()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/services/telephony/ImsConference;->setState(I)V

    .line 321
    iget-object v2, p0, Lcom/android/services/telephony/ImsConferenceController;->mConferenceListener:Landroid/telecom/Conference$Listener;

    invoke-virtual {v0, v2}, Lcom/android/services/telephony/ImsConference;->addListener(Landroid/telecom/Conference$Listener;)Landroid/telecom/Conference;

    .line 322
    invoke-virtual {v0}, Lcom/android/services/telephony/ImsConference;->updateConferenceParticipantsAfterCreation()V

    .line 323
    iget-object v2, p0, Lcom/android/services/telephony/ImsConferenceController;->mConnectionService:Lcom/android/services/telephony/TelephonyConnectionService;

    invoke-virtual {v2, v0}, Lcom/android/services/telephony/TelephonyConnectionService;->addConference(Landroid/telecom/Conference;)V

    .line 328
    iget-object v2, p0, Lcom/android/services/telephony/ImsConferenceController;->mConnectionListener:Landroid/telecom/Connection$Listener;

    invoke-virtual {p1, v2}, Lcom/android/services/telephony/TelephonyConnection;->removeConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;

    .line 329
    invoke-virtual {p1}, Lcom/android/services/telephony/TelephonyConnection;->clearOriginalConnection()V

    .line 330
    new-instance v2, Landroid/telecom/DisconnectCause;

    const/16 v3, 0x9

    invoke-direct {v2, v3}, Landroid/telecom/DisconnectCause;-><init>(I)V

    invoke-virtual {p1, v2}, Lcom/android/services/telephony/TelephonyConnection;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    .line 331
    invoke-virtual {p1}, Lcom/android/services/telephony/TelephonyConnection;->destroy()V

    .line 332
    iget-object v2, p0, Lcom/android/services/telephony/ImsConferenceController;->mImsConferences:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    return-void
.end method


# virtual methods
.method add(Lcom/android/services/telephony/TelephonyConnection;)V
    .locals 3
    .param p1, "connection"    # Lcom/android/services/telephony/TelephonyConnection;

    .prologue
    .line 114
    sget-boolean v0, Lcom/android/services/telephony/Log;->VERBOSE:Z

    if-eqz v0, :cond_0

    .line 115
    const-string v0, "add connection %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/android/services/telephony/ImsConferenceController;->mTelephonyConnections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    iget-object v0, p0, Lcom/android/services/telephony/ImsConferenceController;->mConnectionListener:Landroid/telecom/Connection$Listener;

    invoke-virtual {p1, v0}, Lcom/android/services/telephony/TelephonyConnection;->addConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;

    .line 120
    invoke-direct {p0}, Lcom/android/services/telephony/ImsConferenceController;->recalculateConference()V

    .line 121
    return-void
.end method

.method remove(Landroid/telecom/Connection;)V
    .locals 3
    .param p1, "connection"    # Landroid/telecom/Connection;

    .prologue
    .line 129
    sget-boolean v0, Lcom/android/services/telephony/Log;->VERBOSE:Z

    if-eqz v0, :cond_0

    .line 130
    const-string v0, "remove connection: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/android/services/telephony/ImsConferenceController;->mTelephonyConnections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 134
    invoke-direct {p0}, Lcom/android/services/telephony/ImsConferenceController;->recalculateConferenceable()V

    .line 135
    return-void
.end method
