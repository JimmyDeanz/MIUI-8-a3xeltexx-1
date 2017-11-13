.class public Lcom/android/services/telephony/ImsConference;
.super Landroid/telecom/Conference;
.source "ImsConference.java"


# instance fields
.field private mConferenceHost:Lcom/android/services/telephony/TelephonyConnection;

.field private final mConferenceHostListener:Landroid/telecom/Connection$Listener;

.field private final mConferenceParticipantConnections:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Landroid/net/Uri;",
            "Lcom/android/services/telephony/ConferenceParticipantConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final mParticipantListener:Landroid/telecom/Connection$Listener;

.field private final mTelephonyConnectionListener:Lcom/android/services/telephony/TelephonyConnection$TelephonyConnectionListener;

.field private mTelephonyConnectionService:Lcom/android/services/telephony/TelephonyConnectionService;


# direct methods
.method public constructor <init>(Lcom/android/services/telephony/TelephonyConnectionService;Lcom/android/services/telephony/TelephonyConnection;)V
    .locals 7
    .param p1, "telephonyConnectionService"    # Lcom/android/services/telephony/TelephonyConnectionService;
    .param p2, "conferenceHost"    # Lcom/android/services/telephony/TelephonyConnection;

    .prologue
    .line 224
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/android/services/telephony/TelephonyConnection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lcom/android/services/telephony/TelephonyConnection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lcom/android/services/telephony/TelephonyConnection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->makePstnPhoneAccountHandle(Lcom/android/internal/telephony/Phone;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v1

    :goto_0
    invoke-direct {p0, v1}, Landroid/telecom/Conference;-><init>(Landroid/telecom/PhoneAccountHandle;)V

    .line 67
    new-instance v1, Lcom/android/services/telephony/ImsConference$1;

    invoke-direct {v1, p0}, Lcom/android/services/telephony/ImsConference$1;-><init>(Lcom/android/services/telephony/ImsConference;)V

    iput-object v1, p0, Lcom/android/services/telephony/ImsConference;->mParticipantListener:Landroid/telecom/Connection$Listener;

    .line 87
    new-instance v1, Lcom/android/services/telephony/ImsConference$2;

    invoke-direct {v1, p0}, Lcom/android/services/telephony/ImsConference$2;-><init>(Lcom/android/services/telephony/ImsConference;)V

    iput-object v1, p0, Lcom/android/services/telephony/ImsConference;->mTelephonyConnectionListener:Lcom/android/services/telephony/TelephonyConnection$TelephonyConnectionListener;

    .line 101
    new-instance v1, Lcom/android/services/telephony/ImsConference$3;

    invoke-direct {v1, p0}, Lcom/android/services/telephony/ImsConference$3;-><init>(Lcom/android/services/telephony/ImsConference;)V

    iput-object v1, p0, Lcom/android/services/telephony/ImsConference;->mConferenceHostListener:Landroid/telecom/Connection$Listener;

    .line 200
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v4, 0x8

    const v5, 0x3f666666    # 0.9f

    const/4 v6, 0x1

    invoke-direct {v1, v4, v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v1, p0, Lcom/android/services/telephony/ImsConference;->mConferenceParticipantConnections:Ljava/util/concurrent/ConcurrentHashMap;

    .line 231
    invoke-virtual {p2}, Lcom/android/services/telephony/TelephonyConnection;->getOriginalConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getConnectTime()J

    move-result-wide v2

    .line 232
    .local v2, "connectTime":J
    invoke-virtual {p0, v2, v3}, Lcom/android/services/telephony/ImsConference;->setConnectTimeMillis(J)V

    .line 234
    invoke-virtual {p2, v2, v3}, Lcom/android/services/telephony/TelephonyConnection;->setConnectTimeMillis(J)V

    .line 236
    iput-object p1, p0, Lcom/android/services/telephony/ImsConference;->mTelephonyConnectionService:Lcom/android/services/telephony/TelephonyConnectionService;

    .line 237
    invoke-direct {p0, p2}, Lcom/android/services/telephony/ImsConference;->setConferenceHost(Lcom/android/services/telephony/TelephonyConnection;)V

    .line 239
    const v0, 0x200043

    .line 242
    .local v0, "capabilities":I
    iget-object v1, p0, Lcom/android/services/telephony/ImsConference;->mConferenceHost:Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {v1}, Lcom/android/services/telephony/TelephonyConnection;->getConnectionCapabilities()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/services/telephony/ImsConference;->applyVideoCapabilities(II)I

    move-result v0

    .line 243
    invoke-virtual {p0, v0}, Lcom/android/services/telephony/ImsConference;->setConnectionCapabilities(I)V

    .line 245
    return-void

    .line 224
    .end local v0    # "capabilities":I
    .end local v2    # "connectTime":J
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/services/telephony/ImsConference;Lcom/android/services/telephony/ConferenceParticipantConnection;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/services/telephony/ImsConference;
    .param p1, "x1"    # Lcom/android/services/telephony/ConferenceParticipantConnection;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/services/telephony/ImsConference;->removeConferenceParticipant(Lcom/android/services/telephony/ConferenceParticipantConnection;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/services/telephony/ImsConference;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/services/telephony/ImsConference;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/services/telephony/ImsConference;->updateManageConference()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/services/telephony/ImsConference;)Lcom/android/services/telephony/TelephonyConnection;
    .locals 1
    .param p0, "x0"    # Lcom/android/services/telephony/ImsConference;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/services/telephony/ImsConference;->mConferenceHost:Lcom/android/services/telephony/TelephonyConnection;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/services/telephony/ImsConference;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/services/telephony/ImsConference;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/services/telephony/ImsConference;->handleOriginalConnectionChange()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/services/telephony/ImsConference;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/services/telephony/ImsConference;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/services/telephony/ImsConference;->disconnectConferenceParticipants()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/services/telephony/ImsConference;Lcom/android/services/telephony/TelephonyConnection;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/services/telephony/ImsConference;
    .param p1, "x1"    # Lcom/android/services/telephony/TelephonyConnection;
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/services/telephony/ImsConference;->handleConferenceParticipantsUpdate(Lcom/android/services/telephony/TelephonyConnection;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/services/telephony/ImsConference;II)I
    .locals 1
    .param p0, "x0"    # Lcom/android/services/telephony/ImsConference;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/services/telephony/ImsConference;->applyVideoCapabilities(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/services/telephony/ImsConference;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/services/telephony/ImsConference;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/services/telephony/ImsConference;->updateStatusHints()V

    return-void
.end method

.method private applyCapability(II)I
    .locals 1
    .param p1, "capabilities"    # I
    .param p2, "capability"    # I

    .prologue
    .line 424
    or-int v0, p1, p2

    .line 425
    .local v0, "newCapabilities":I
    return v0
.end method

.method private applyVideoCapabilities(II)I
    .locals 4
    .param p1, "conferenceCapabilities"    # I
    .param p2, "capabilities"    # I

    .prologue
    const/high16 v3, 0x80000

    const/16 v2, 0xc00

    const/16 v1, 0x300

    .line 248
    invoke-static {p2, v1}, Lcom/android/services/telephony/ImsConference;->can(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    invoke-direct {p0, p1, v1}, Lcom/android/services/telephony/ImsConference;->applyCapability(II)I

    move-result p1

    .line 256
    :goto_0
    invoke-static {p2, v2}, Lcom/android/services/telephony/ImsConference;->can(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 257
    invoke-direct {p0, p1, v2}, Lcom/android/services/telephony/ImsConference;->applyCapability(II)I

    move-result p1

    .line 264
    :goto_1
    invoke-static {p2, v3}, Lcom/android/services/telephony/ImsConference;->can(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 265
    invoke-direct {p0, p1, v3}, Lcom/android/services/telephony/ImsConference;->applyCapability(II)I

    move-result p1

    .line 271
    :goto_2
    return p1

    .line 252
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/android/services/telephony/ImsConference;->removeCapability(II)I

    move-result p1

    goto :goto_0

    .line 260
    :cond_1
    invoke-direct {p0, p1, v2}, Lcom/android/services/telephony/ImsConference;->removeCapability(II)I

    move-result p1

    goto :goto_1

    .line 268
    :cond_2
    invoke-direct {p0, p1, v3}, Lcom/android/services/telephony/ImsConference;->removeCapability(II)I

    move-result p1

    goto :goto_2
.end method

.method private createConferenceParticipantConnection(Lcom/android/services/telephony/TelephonyConnection;Landroid/telecom/ConferenceParticipant;)V
    .locals 5
    .param p1, "parent"    # Lcom/android/services/telephony/TelephonyConnection;
    .param p2, "participant"    # Landroid/telecom/ConferenceParticipant;

    .prologue
    .line 582
    new-instance v0, Lcom/android/services/telephony/ConferenceParticipantConnection;

    invoke-virtual {p1}, Lcom/android/services/telephony/TelephonyConnection;->getOriginalConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    invoke-direct {v0, v2, p2}, Lcom/android/services/telephony/ConferenceParticipantConnection;-><init>(Lcom/android/internal/telephony/Connection;Landroid/telecom/ConferenceParticipant;)V

    .line 584
    .local v0, "connection":Lcom/android/services/telephony/ConferenceParticipantConnection;
    iget-object v2, p0, Lcom/android/services/telephony/ImsConference;->mParticipantListener:Landroid/telecom/Connection$Listener;

    invoke-virtual {v0, v2}, Lcom/android/services/telephony/ConferenceParticipantConnection;->addConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;

    .line 586
    sget-boolean v2, Landroid/telecom/Log;->VERBOSE:Z

    if-eqz v2, :cond_0

    .line 587
    const-string v2, "createConferenceParticipantConnection: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {p0, v2, v3}, Landroid/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 590
    :cond_0
    iget-object v2, p0, Lcom/android/services/telephony/ImsConference;->mConferenceParticipantConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Landroid/telecom/ConferenceParticipant;->getHandle()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    invoke-virtual {p1}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->makePstnPhoneAccountHandle(Lcom/android/internal/telephony/Phone;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v1

    .line 593
    .local v1, "phoneAccountHandle":Landroid/telecom/PhoneAccountHandle;
    iget-object v2, p0, Lcom/android/services/telephony/ImsConference;->mTelephonyConnectionService:Lcom/android/services/telephony/TelephonyConnectionService;

    invoke-virtual {v2, v1, v0}, Lcom/android/services/telephony/TelephonyConnectionService;->addExistingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/Connection;)V

    .line 594
    invoke-virtual {p0, v0}, Lcom/android/services/telephony/ImsConference;->addConnection(Landroid/telecom/Connection;)Z

    .line 595
    return-void
.end method

.method private disconnectConferenceParticipants()V
    .locals 4

    .prologue
    .line 613
    const-string v2, "disconnectConferenceParticipants"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Landroid/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 616
    iget-object v2, p0, Lcom/android/services/telephony/ImsConference;->mConferenceParticipantConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/services/telephony/ConferenceParticipantConnection;

    .line 618
    .local v0, "connection":Lcom/android/services/telephony/ConferenceParticipantConnection;
    iget-object v2, p0, Lcom/android/services/telephony/ImsConference;->mParticipantListener:Landroid/telecom/Connection$Listener;

    invoke-virtual {v0, v2}, Lcom/android/services/telephony/ConferenceParticipantConnection;->removeConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;

    .line 621
    new-instance v2, Landroid/telecom/DisconnectCause;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Landroid/telecom/DisconnectCause;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/android/services/telephony/ConferenceParticipantConnection;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    .line 622
    iget-object v2, p0, Lcom/android/services/telephony/ImsConference;->mTelephonyConnectionService:Lcom/android/services/telephony/TelephonyConnectionService;

    invoke-virtual {v2, v0}, Lcom/android/services/telephony/TelephonyConnectionService;->removeConnection(Landroid/telecom/Connection;)V

    .line 623
    invoke-virtual {v0}, Lcom/android/services/telephony/ConferenceParticipantConnection;->destroy()V

    goto :goto_0

    .line 625
    .end local v0    # "connection":Lcom/android/services/telephony/ConferenceParticipantConnection;
    :cond_0
    iget-object v2, p0, Lcom/android/services/telephony/ImsConference;->mConferenceParticipantConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 626
    return-void
.end method

.method private handleConferenceParticipantsUpdate(Lcom/android/services/telephony/TelephonyConnection;Ljava/util/List;)V
    .locals 13
    .param p1, "parent"    # Lcom/android/services/telephony/TelephonyConnection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/services/telephony/TelephonyConnection;",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/ConferenceParticipant;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 508
    .local p2, "participants":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/ConferenceParticipant;>;"
    if-nez p2, :cond_1

    .line 565
    :cond_0
    :goto_0
    return-void

    .line 511
    :cond_1
    const/4 v6, 0x0

    .line 512
    .local v6, "newParticipantsAdded":Z
    const/4 v7, 0x0

    .line 513
    .local v7, "oldParticipantsRemoved":Z
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v11

    invoke-direct {v5, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 514
    .local v5, "newParticipants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telecom/ConferenceParticipant;>;"
    new-instance v9, Ljava/util/HashSet;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v11

    invoke-direct {v9, v11}, Ljava/util/HashSet;-><init>(I)V

    .line 517
    .local v9, "participantUserEntities":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/net/Uri;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telecom/ConferenceParticipant;

    .line 518
    .local v8, "participant":Landroid/telecom/ConferenceParticipant;
    invoke-virtual {v8}, Landroid/telecom/ConferenceParticipant;->getHandle()Landroid/net/Uri;

    move-result-object v10

    .line 520
    .local v10, "userEntity":Landroid/net/Uri;
    invoke-virtual {v9, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 521
    iget-object v11, p0, Lcom/android/services/telephony/ImsConference;->mConferenceParticipantConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v11, v10}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 522
    invoke-direct {p0, p1, v8}, Lcom/android/services/telephony/ImsConference;->createConferenceParticipantConnection(Lcom/android/services/telephony/TelephonyConnection;Landroid/telecom/ConferenceParticipant;)V

    .line 523
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 524
    const/4 v6, 0x1

    goto :goto_1

    .line 526
    :cond_2
    iget-object v11, p0, Lcom/android/services/telephony/ImsConference;->mConferenceParticipantConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v11, v10}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/services/telephony/ConferenceParticipantConnection;

    .line 528
    .local v0, "connection":Lcom/android/services/telephony/ConferenceParticipantConnection;
    invoke-virtual {v8}, Landroid/telecom/ConferenceParticipant;->getState()I

    move-result v11

    invoke-virtual {v0, v11}, Lcom/android/services/telephony/ConferenceParticipantConnection;->updateState(I)V

    goto :goto_1

    .line 533
    .end local v0    # "connection":Lcom/android/services/telephony/ConferenceParticipantConnection;
    .end local v8    # "participant":Landroid/telecom/ConferenceParticipant;
    .end local v10    # "userEntity":Landroid/net/Uri;
    :cond_3
    if-eqz v6, :cond_4

    .line 535
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telecom/ConferenceParticipant;

    .line 536
    .local v4, "newParticipant":Landroid/telecom/ConferenceParticipant;
    iget-object v11, p0, Lcom/android/services/telephony/ImsConference;->mConferenceParticipantConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Landroid/telecom/ConferenceParticipant;->getHandle()Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/services/telephony/ConferenceParticipantConnection;

    .line 538
    .restart local v0    # "connection":Lcom/android/services/telephony/ConferenceParticipantConnection;
    invoke-virtual {v4}, Landroid/telecom/ConferenceParticipant;->getState()I

    move-result v11

    invoke-virtual {v0, v11}, Lcom/android/services/telephony/ConferenceParticipantConnection;->updateState(I)V

    goto :goto_2

    .line 544
    .end local v0    # "connection":Lcom/android/services/telephony/ConferenceParticipantConnection;
    .end local v4    # "newParticipant":Landroid/telecom/ConferenceParticipant;
    :cond_4
    iget-object v11, p0, Lcom/android/services/telephony/ImsConference;->mConferenceParticipantConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v11}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 546
    .local v2, "entryIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/net/Uri;Lcom/android/services/telephony/ConferenceParticipantConnection;>;>;"
    :cond_5
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 547
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 549
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/net/Uri;Lcom/android/services/telephony/ConferenceParticipantConnection;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 550
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/services/telephony/ConferenceParticipantConnection;

    .line 551
    .local v8, "participant":Lcom/android/services/telephony/ConferenceParticipantConnection;
    new-instance v11, Landroid/telecom/DisconnectCause;

    const/4 v12, 0x4

    invoke-direct {v11, v12}, Landroid/telecom/DisconnectCause;-><init>(I)V

    invoke-virtual {v8, v11}, Lcom/android/services/telephony/ConferenceParticipantConnection;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    .line 552
    iget-object v11, p0, Lcom/android/services/telephony/ImsConference;->mParticipantListener:Landroid/telecom/Connection$Listener;

    invoke-virtual {v8, v11}, Lcom/android/services/telephony/ConferenceParticipantConnection;->removeConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;

    .line 553
    iget-object v11, p0, Lcom/android/services/telephony/ImsConference;->mTelephonyConnectionService:Lcom/android/services/telephony/TelephonyConnectionService;

    invoke-virtual {v11, v8}, Lcom/android/services/telephony/TelephonyConnectionService;->removeConnection(Landroid/telecom/Connection;)V

    .line 554
    invoke-virtual {p0, v8}, Lcom/android/services/telephony/ImsConference;->removeConnection(Landroid/telecom/Connection;)V

    .line 555
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 556
    const/4 v7, 0x1

    goto :goto_3

    .line 562
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/net/Uri;Lcom/android/services/telephony/ConferenceParticipantConnection;>;"
    .end local v8    # "participant":Lcom/android/services/telephony/ConferenceParticipantConnection;
    :cond_6
    if-nez v6, :cond_7

    if-eqz v7, :cond_0

    .line 563
    :cond_7
    invoke-direct {p0}, Lcom/android/services/telephony/ImsConference;->updateManageConference()V

    goto/16 :goto_0
.end method

.method private handleOriginalConnectionChange()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 637
    iget-object v2, p0, Lcom/android/services/telephony/ImsConference;->mConferenceHost:Lcom/android/services/telephony/TelephonyConnection;

    if-nez v2, :cond_0

    .line 638
    const-string v2, "handleOriginalConnectionChange; conference host missing."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 663
    :goto_0
    return-void

    .line 642
    :cond_0
    iget-object v2, p0, Lcom/android/services/telephony/ImsConference;->mConferenceHost:Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {v2}, Lcom/android/services/telephony/TelephonyConnection;->getOriginalConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 645
    .local v0, "originalConnection":Lcom/android/internal/telephony/Connection;
    instance-of v2, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    if-nez v2, :cond_2

    .line 646
    sget-boolean v2, Landroid/telecom/Log;->VERBOSE:Z

    if-eqz v2, :cond_1

    .line 647
    const-string v2, "Original connection for conference host is no longer an IMS connection; new connection: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {p0, v2, v3}, Landroid/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 652
    :cond_1
    iget-object v2, p0, Lcom/android/services/telephony/ImsConference;->mConferenceHost:Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {v2}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->makePstnPhoneAccountHandle(Lcom/android/internal/telephony/Phone;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v1

    .line 654
    .local v1, "phoneAccountHandle":Landroid/telecom/PhoneAccountHandle;
    iget-object v2, p0, Lcom/android/services/telephony/ImsConference;->mTelephonyConnectionService:Lcom/android/services/telephony/TelephonyConnectionService;

    iget-object v3, p0, Lcom/android/services/telephony/ImsConference;->mConferenceHost:Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {v2, v1, v3}, Lcom/android/services/telephony/TelephonyConnectionService;->addExistingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/Connection;)V

    .line 655
    iget-object v2, p0, Lcom/android/services/telephony/ImsConference;->mConferenceHost:Lcom/android/services/telephony/TelephonyConnection;

    iget-object v3, p0, Lcom/android/services/telephony/ImsConference;->mConferenceHostListener:Landroid/telecom/Connection$Listener;

    invoke-virtual {v2, v3}, Lcom/android/services/telephony/TelephonyConnection;->removeConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;

    .line 656
    iget-object v2, p0, Lcom/android/services/telephony/ImsConference;->mConferenceHost:Lcom/android/services/telephony/TelephonyConnection;

    iget-object v3, p0, Lcom/android/services/telephony/ImsConference;->mTelephonyConnectionListener:Lcom/android/services/telephony/TelephonyConnection$TelephonyConnectionListener;

    invoke-virtual {v2, v3}, Lcom/android/services/telephony/TelephonyConnection;->removeTelephonyConnectionListener(Lcom/android/services/telephony/TelephonyConnection$TelephonyConnectionListener;)Lcom/android/services/telephony/TelephonyConnection;

    .line 657
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/services/telephony/ImsConference;->mConferenceHost:Lcom/android/services/telephony/TelephonyConnection;

    .line 658
    new-instance v2, Landroid/telecom/DisconnectCause;

    const/16 v3, 0x9

    invoke-direct {v2, v3}, Landroid/telecom/DisconnectCause;-><init>(I)V

    invoke-virtual {p0, v2}, Lcom/android/services/telephony/ImsConference;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    .line 659
    invoke-virtual {p0}, Lcom/android/services/telephony/ImsConference;->destroy()V

    .line 662
    .end local v1    # "phoneAccountHandle":Landroid/telecom/PhoneAccountHandle;
    :cond_2
    invoke-direct {p0}, Lcom/android/services/telephony/ImsConference;->updateStatusHints()V

    goto :goto_0
.end method

.method private removeCapability(II)I
    .locals 2
    .param p1, "capabilities"    # I
    .param p2, "capability"    # I

    .prologue
    .line 429
    xor-int/lit8 v1, p2, -0x1

    and-int v0, p1, v1

    .line 430
    .local v0, "newCapabilities":I
    return v0
.end method

.method private removeConferenceParticipant(Lcom/android/services/telephony/ConferenceParticipantConnection;)V
    .locals 3
    .param p1, "participant"    # Lcom/android/services/telephony/ConferenceParticipantConnection;

    .prologue
    .line 603
    const-string v0, "removeConferenceParticipant: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 605
    iget-object v0, p0, Lcom/android/services/telephony/ImsConference;->mParticipantListener:Landroid/telecom/Connection$Listener;

    invoke-virtual {p1, v0}, Lcom/android/services/telephony/ConferenceParticipantConnection;->removeConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;

    .line 606
    iget-object v0, p0, Lcom/android/services/telephony/ImsConference;->mConferenceParticipantConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/android/services/telephony/ConferenceParticipantConnection;->getUserEntity()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    return-void
.end method

.method private setConferenceHost(Lcom/android/services/telephony/TelephonyConnection;)V
    .locals 2
    .param p1, "conferenceHost"    # Lcom/android/services/telephony/TelephonyConnection;

    .prologue
    .line 488
    sget-boolean v0, Landroid/telecom/Log;->VERBOSE:Z

    if-eqz v0, :cond_0

    .line 489
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setConferenceHost "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 492
    :cond_0
    iput-object p1, p0, Lcom/android/services/telephony/ImsConference;->mConferenceHost:Lcom/android/services/telephony/TelephonyConnection;

    .line 493
    iget-object v0, p0, Lcom/android/services/telephony/ImsConference;->mConferenceHost:Lcom/android/services/telephony/TelephonyConnection;

    iget-object v1, p0, Lcom/android/services/telephony/ImsConference;->mConferenceHostListener:Landroid/telecom/Connection$Listener;

    invoke-virtual {v0, v1}, Lcom/android/services/telephony/TelephonyConnection;->addConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;

    .line 494
    iget-object v0, p0, Lcom/android/services/telephony/ImsConference;->mConferenceHost:Lcom/android/services/telephony/TelephonyConnection;

    iget-object v1, p0, Lcom/android/services/telephony/ImsConference;->mTelephonyConnectionListener:Lcom/android/services/telephony/TelephonyConnection$TelephonyConnectionListener;

    invoke-virtual {v0, v1}, Lcom/android/services/telephony/TelephonyConnection;->addTelephonyConnectionListener(Lcom/android/services/telephony/TelephonyConnection$TelephonyConnectionListener;)Lcom/android/services/telephony/TelephonyConnection;

    .line 495
    iget-object v0, p0, Lcom/android/services/telephony/ImsConference;->mConferenceHost:Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {v0}, Lcom/android/services/telephony/TelephonyConnection;->getState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/ImsConference;->setState(I)V

    .line 496
    invoke-direct {p0}, Lcom/android/services/telephony/ImsConference;->updateStatusHints()V

    .line 497
    return-void
.end method

.method private updateManageConference()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 462
    const/16 v5, 0x80

    invoke-virtual {p0, v5}, Lcom/android/services/telephony/ImsConference;->can(I)Z

    move-result v2

    .line 463
    .local v2, "couldManageConference":Z
    iget-object v5, p0, Lcom/android/services/telephony/ImsConference;->mConferenceParticipantConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    move v0, v3

    .line 464
    .local v0, "canManageConference":Z
    :goto_0
    const-string v6, "updateManageConference was :%s is:%s"

    const/4 v5, 0x2

    new-array v7, v5, [Ljava/lang/Object;

    if-eqz v2, :cond_2

    const-string v5, "Y"

    :goto_1
    aput-object v5, v7, v4

    if-eqz v0, :cond_3

    const-string v4, "Y"

    :goto_2
    aput-object v4, v7, v3

    invoke-static {p0, v6, v7}, Landroid/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 467
    if-eq v2, v0, :cond_0

    .line 468
    invoke-virtual {p0}, Lcom/android/services/telephony/ImsConference;->getConnectionCapabilities()I

    move-result v1

    .line 470
    .local v1, "capabilities":I
    if-eqz v0, :cond_4

    .line 471
    or-int/lit16 v1, v1, 0x80

    .line 472
    const v3, -0x200001

    and-int/2addr v1, v3

    .line 478
    :goto_3
    invoke-virtual {p0, v1}, Lcom/android/services/telephony/ImsConference;->setConnectionCapabilities(I)V

    .line 480
    .end local v1    # "capabilities":I
    :cond_0
    return-void

    .end local v0    # "canManageConference":Z
    :cond_1
    move v0, v4

    .line 463
    goto :goto_0

    .line 464
    .restart local v0    # "canManageConference":Z
    :cond_2
    const-string v5, "N"

    goto :goto_1

    :cond_3
    const-string v4, "N"

    goto :goto_2

    .line 474
    .restart local v1    # "capabilities":I
    :cond_4
    and-int/lit16 v1, v1, -0x81

    .line 475
    const/high16 v3, 0x200000

    or-int/2addr v1, v3

    goto :goto_3
.end method

.method private updateStatusHints()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 703
    iget-object v2, p0, Lcom/android/services/telephony/ImsConference;->mConferenceHost:Lcom/android/services/telephony/TelephonyConnection;

    if-nez v2, :cond_1

    .line 704
    invoke-virtual {p0, v6}, Lcom/android/services/telephony/ImsConference;->setStatusHints(Landroid/telecom/StatusHints;)V

    .line 722
    :cond_0
    :goto_0
    return-void

    .line 708
    :cond_1
    iget-object v2, p0, Lcom/android/services/telephony/ImsConference;->mConferenceHost:Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {v2}, Lcom/android/services/telephony/TelephonyConnection;->isWifi()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 709
    iget-object v2, p0, Lcom/android/services/telephony/ImsConference;->mConferenceHost:Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {v2}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 710
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v1, :cond_0

    .line 711
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 712
    .local v0, "context":Landroid/content/Context;
    new-instance v2, Landroid/telecom/StatusHints;

    const v3, 0x7f080283

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020029

    invoke-static {v4, v5}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Icon;

    move-result-object v4

    invoke-direct {v2, v3, v4, v6}, Landroid/telecom/StatusHints;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Landroid/os/Bundle;)V

    invoke-virtual {p0, v2}, Lcom/android/services/telephony/ImsConference;->setStatusHints(Landroid/telecom/StatusHints;)V

    goto :goto_0

    .line 720
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_2
    invoke-virtual {p0, v6}, Lcom/android/services/telephony/ImsConference;->setStatusHints(Landroid/telecom/StatusHints;)V

    goto :goto_0
.end method


# virtual methods
.method public getPrimaryConnection()Landroid/telecom/Connection;
    .locals 1

    .prologue
    .line 281
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVideoProvider()Landroid/telecom/Connection$VideoProvider;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/android/services/telephony/ImsConference;->mConferenceHost:Lcom/android/services/telephony/TelephonyConnection;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/android/services/telephony/ImsConference;->mConferenceHost:Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {v0}, Lcom/android/services/telephony/TelephonyConnection;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v0

    .line 294
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVideoState()I
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/services/telephony/ImsConference;->mConferenceHost:Lcom/android/services/telephony/TelephonyConnection;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/android/services/telephony/ImsConference;->mConferenceHost:Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {v0}, Lcom/android/services/telephony/TelephonyConnection;->getVideoState()I

    move-result v0

    .line 307
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isConferenceHost()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 440
    iget-object v3, p0, Lcom/android/services/telephony/ImsConference;->mConferenceHost:Lcom/android/services/telephony/TelephonyConnection;

    if-nez v3, :cond_1

    .line 450
    :cond_0
    :goto_0
    return v2

    .line 443
    :cond_1
    iget-object v3, p0, Lcom/android/services/telephony/ImsConference;->mConferenceHost:Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {v3}, Lcom/android/services/telephony/TelephonyConnection;->getOriginalConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 445
    .local v1, "originalConnection":Lcom/android/internal/telephony/Connection;
    instance-of v3, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    if-eqz v3, :cond_0

    move-object v0, v1

    .line 449
    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .line 450
    .local v0, "imsPhoneConnection":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->isMultiparty()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->isConferenceHost()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public onConnectionAdded(Landroid/telecom/Connection;)V
    .locals 0
    .param p1, "connection"    # Landroid/telecom/Connection;

    .prologue
    .line 421
    return-void
.end method

.method public onDisconnect()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 320
    const-string v2, "onDisconnect: hanging up conference host."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Landroid/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 321
    iget-object v2, p0, Lcom/android/services/telephony/ImsConference;->mConferenceHost:Lcom/android/services/telephony/TelephonyConnection;

    if-nez v2, :cond_1

    .line 333
    :cond_0
    :goto_0
    return-void

    .line 325
    :cond_1
    iget-object v2, p0, Lcom/android/services/telephony/ImsConference;->mConferenceHost:Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {v2}, Lcom/android/services/telephony/TelephonyConnection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 326
    .local v0, "call":Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_0

    .line 328
    :try_start_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->hangup()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 329
    :catch_0
    move-exception v1

    .line 330
    .local v1, "e":Lcom/android/internal/telephony/CallStateException;
    const-string v2, "Exception thrown trying to hangup conference"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p0, v1, v2, v3}, Landroid/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onHold()V
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/android/services/telephony/ImsConference;->mConferenceHost:Lcom/android/services/telephony/TelephonyConnection;

    if-nez v0, :cond_0

    .line 375
    :goto_0
    return-void

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/android/services/telephony/ImsConference;->mConferenceHost:Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {v0}, Lcom/android/services/telephony/TelephonyConnection;->performHold()V

    goto :goto_0
.end method

.method public onMerge(Landroid/telecom/Connection;)V
    .locals 4
    .param p1, "connection"    # Landroid/telecom/Connection;

    .prologue
    .line 357
    :try_start_0
    check-cast p1, Lcom/android/services/telephony/TelephonyConnection;

    .end local p1    # "connection":Landroid/telecom/Connection;
    invoke-virtual {p1}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 358
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v1, :cond_0

    .line 359
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->conference()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    .end local v1    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_0
    :goto_0
    return-void

    .line 361
    :catch_0
    move-exception v0

    .line 362
    .local v0, "e":Lcom/android/internal/telephony/CallStateException;
    const-string v2, "Exception thrown trying to merge call into a conference"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v2, v3}, Landroid/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onPlayDtmfTone(C)V
    .locals 1
    .param p1, "c"    # C

    .prologue
    .line 395
    iget-object v0, p0, Lcom/android/services/telephony/ImsConference;->mConferenceHost:Lcom/android/services/telephony/TelephonyConnection;

    if-nez v0, :cond_0

    .line 399
    :goto_0
    return-void

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/android/services/telephony/ImsConference;->mConferenceHost:Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {v0, p1}, Lcom/android/services/telephony/TelephonyConnection;->onPlayDtmfTone(C)V

    goto :goto_0
.end method

.method public onSeparate(Landroid/telecom/Connection;)V
    .locals 2
    .param p1, "connection"    # Landroid/telecom/Connection;

    .prologue
    .line 345
    const-string v0, "Cannot separate connections from an IMS conference."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->wtf(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 346
    return-void
.end method

.method public onStopDtmfTone()V
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/android/services/telephony/ImsConference;->mConferenceHost:Lcom/android/services/telephony/TelephonyConnection;

    if-nez v0, :cond_0

    .line 410
    :goto_0
    return-void

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/android/services/telephony/ImsConference;->mConferenceHost:Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {v0}, Lcom/android/services/telephony/TelephonyConnection;->onStopDtmfTone()V

    goto :goto_0
.end method

.method public onUnhold()V
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/android/services/telephony/ImsConference;->mConferenceHost:Lcom/android/services/telephony/TelephonyConnection;

    if-nez v0, :cond_0

    .line 386
    :goto_0
    return-void

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/android/services/telephony/ImsConference;->mConferenceHost:Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {v0}, Lcom/android/services/telephony/TelephonyConnection;->performUnhold()V

    goto :goto_0
.end method

.method public setState(I)V
    .locals 5
    .param p1, "state"    # I

    .prologue
    .line 671
    const-string v1, "setState %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Landroid/telecom/Connection;->stateToString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p0, v1, v2}, Landroid/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 673
    packed-switch p1, :pswitch_data_0

    .line 700
    :goto_0
    :pswitch_0
    return-void

    .line 680
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/services/telephony/ImsConference;->setDialing()V

    goto :goto_0

    .line 684
    :pswitch_2
    iget-object v1, p0, Lcom/android/services/telephony/ImsConference;->mConferenceHost:Lcom/android/services/telephony/TelephonyConnection;

    if-nez v1, :cond_0

    .line 685
    new-instance v0, Landroid/telecom/DisconnectCause;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/telecom/DisconnectCause;-><init>(I)V

    .line 690
    .local v0, "disconnectCause":Landroid/telecom/DisconnectCause;
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/services/telephony/ImsConference;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    .line 691
    invoke-virtual {p0}, Lcom/android/services/telephony/ImsConference;->destroy()V

    goto :goto_0

    .line 687
    .end local v0    # "disconnectCause":Landroid/telecom/DisconnectCause;
    :cond_0
    iget-object v1, p0, Lcom/android/services/telephony/ImsConference;->mConferenceHost:Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {v1}, Lcom/android/services/telephony/TelephonyConnection;->getOriginalConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()I

    move-result v1

    invoke-static {v1}, Lcom/android/services/telephony/DisconnectCauseUtil;->toTelecomDisconnectCause(I)Landroid/telecom/DisconnectCause;

    move-result-object v0

    .restart local v0    # "disconnectCause":Landroid/telecom/DisconnectCause;
    goto :goto_1

    .line 694
    .end local v0    # "disconnectCause":Landroid/telecom/DisconnectCause;
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/services/telephony/ImsConference;->setActive()V

    goto :goto_0

    .line 697
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/services/telephony/ImsConference;->setOnHold()V

    goto :goto_0

    .line 673
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 730
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 731
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "[ImsConference objId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 732
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 733
    const-string v1, " state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 734
    invoke-virtual {p0}, Lcom/android/services/telephony/ImsConference;->getState()I

    move-result v1

    invoke-static {v1}, Landroid/telecom/Connection;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 735
    const-string v1, " hostConnection:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 736
    iget-object v1, p0, Lcom/android/services/telephony/ImsConference;->mConferenceHost:Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 737
    const-string v1, " participants:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 738
    iget-object v1, p0, Lcom/android/services/telephony/ImsConference;->mConferenceParticipantConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 739
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 740
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public updateConferenceParticipantsAfterCreation()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 205
    iget-object v0, p0, Lcom/android/services/telephony/ImsConference;->mConferenceHost:Lcom/android/services/telephony/TelephonyConnection;

    if-eqz v0, :cond_0

    .line 206
    const-string v0, "updateConferenceStateAfterCreation :: process participant update"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 207
    iget-object v0, p0, Lcom/android/services/telephony/ImsConference;->mConferenceHost:Lcom/android/services/telephony/TelephonyConnection;

    iget-object v1, p0, Lcom/android/services/telephony/ImsConference;->mConferenceHost:Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {v1}, Lcom/android/services/telephony/TelephonyConnection;->getConferenceParticipants()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/services/telephony/ImsConference;->handleConferenceParticipantsUpdate(Lcom/android/services/telephony/TelephonyConnection;Ljava/util/List;)V

    .line 212
    :goto_0
    return-void

    .line 210
    :cond_0
    const-string v0, "updateConferenceStateAfterCreation :: null mConferenceHost"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
