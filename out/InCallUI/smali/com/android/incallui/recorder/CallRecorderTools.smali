.class public Lcom/android/incallui/recorder/CallRecorderTools;
.super Ljava/lang/Object;
.source "CallRecorderTools.java"

# interfaces
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;
.implements Lcom/android/incallui/InCallPresenter$IncomingCallListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/recorder/CallRecorderTools$RecorderCallback;
    }
.end annotation


# static fields
.field private static sCallRecorderTools:Lcom/android/incallui/recorder/CallRecorderTools;


# instance fields
.field private mCall:Lcom/android/incallui/Call;

.field private mCallRecorderRemoteService:Landroid/content/Intent;

.field private mLastCallKey:Ljava/lang/String;

.field private final mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/incallui/recorder/CallRecorderToolsListener;",
            ">;"
        }
    .end annotation
.end field

.field private mNeedRecord:Z

.field private mPreviousFgCallState:I

.field private mRecorderCallback:Lcom/android/incallui/recorder/CallRecorderTools$RecorderCallback;

.field private mRecorderService:Lcom/android/incallui/recorder/ICallRecorderCommand;

.field private mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lcom/android/incallui/recorder/CallRecorderTools;

    invoke-direct {v0}, Lcom/android/incallui/recorder/CallRecorderTools;-><init>()V

    sput-object v0, Lcom/android/incallui/recorder/CallRecorderTools;->sCallRecorderTools:Lcom/android/incallui/recorder/CallRecorderTools;

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-boolean v0, p0, Lcom/android/incallui/recorder/CallRecorderTools;->mNeedRecord:Z

    .line 36
    iput-object v4, p0, Lcom/android/incallui/recorder/CallRecorderTools;->mLastCallKey:Ljava/lang/String;

    .line 37
    iput v0, p0, Lcom/android/incallui/recorder/CallRecorderTools;->mPreviousFgCallState:I

    .line 41
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x8

    const v2, 0x3f666666    # 0.9f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/recorder/CallRecorderTools;->mListeners:Ljava/util/Set;

    .line 80
    new-instance v0, Lcom/android/incallui/recorder/CallRecorderTools$RecorderCallback;

    invoke-direct {v0, p0, v4}, Lcom/android/incallui/recorder/CallRecorderTools$RecorderCallback;-><init>(Lcom/android/incallui/recorder/CallRecorderTools;Lcom/android/incallui/recorder/CallRecorderTools$1;)V

    iput-object v0, p0, Lcom/android/incallui/recorder/CallRecorderTools;->mRecorderCallback:Lcom/android/incallui/recorder/CallRecorderTools$RecorderCallback;

    .line 81
    new-instance v0, Lcom/android/incallui/recorder/CallRecorderTools$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/recorder/CallRecorderTools$1;-><init>(Lcom/android/incallui/recorder/CallRecorderTools;)V

    iput-object v0, p0, Lcom/android/incallui/recorder/CallRecorderTools;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 45
    return-void
.end method

.method static synthetic access$100(Lcom/android/incallui/recorder/CallRecorderTools;)Lcom/android/incallui/recorder/ICallRecorderCommand;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/recorder/CallRecorderTools;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/incallui/recorder/CallRecorderTools;->mRecorderService:Lcom/android/incallui/recorder/ICallRecorderCommand;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/incallui/recorder/CallRecorderTools;Lcom/android/incallui/recorder/ICallRecorderCommand;)Lcom/android/incallui/recorder/ICallRecorderCommand;
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/recorder/CallRecorderTools;
    .param p1, "x1"    # Lcom/android/incallui/recorder/ICallRecorderCommand;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/incallui/recorder/CallRecorderTools;->mRecorderService:Lcom/android/incallui/recorder/ICallRecorderCommand;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/incallui/recorder/CallRecorderTools;)Lcom/android/incallui/recorder/CallRecorderTools$RecorderCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/recorder/CallRecorderTools;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/incallui/recorder/CallRecorderTools;->mRecorderCallback:Lcom/android/incallui/recorder/CallRecorderTools$RecorderCallback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/incallui/recorder/CallRecorderTools;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/recorder/CallRecorderTools;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/incallui/recorder/CallRecorderTools;->mListeners:Ljava/util/Set;

    return-object v0
.end method

.method public static getInstance()Lcom/android/incallui/recorder/CallRecorderTools;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/android/incallui/recorder/CallRecorderTools;->sCallRecorderTools:Lcom/android/incallui/recorder/CallRecorderTools;

    return-object v0
.end method

.method private isNeedUpdateUI(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;)Z
    .locals 3
    .param p1, "oldState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "newState"    # Lcom/android/incallui/InCallPresenter$InCallState;

    .prologue
    .line 293
    iget-object v2, p0, Lcom/android/incallui/recorder/CallRecorderTools;->mCall:Lcom/android/incallui/Call;

    invoke-static {v2}, Lcom/android/incallui/Call;->getCallKeyForCallPresenter(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v0

    .line 294
    .local v0, "callKey":Ljava/lang/String;
    if-ne p1, p2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/recorder/CallRecorderTools;->mLastCallKey:Ljava/lang/String;

    invoke-static {v2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 295
    .local v1, "isCallChanged":Z
    :goto_0
    iput-object v0, p0, Lcom/android/incallui/recorder/CallRecorderTools;->mLastCallKey:Ljava/lang/String;

    .line 296
    return v1

    .line 294
    .end local v1    # "isCallChanged":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addCallRecorderToolsListener(Lcom/android/incallui/recorder/CallRecorderToolsListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/recorder/CallRecorderToolsListener;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/incallui/recorder/CallRecorderTools;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 159
    return-void
.end method

.method public bindService()V
    .locals 4

    .prologue
    .line 52
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    .line 53
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/incallui/recorder/CallRecorderRemoteService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/android/incallui/recorder/CallRecorderTools;->mCallRecorderRemoteService:Landroid/content/Intent;

    .line 54
    iget-object v1, p0, Lcom/android/incallui/recorder/CallRecorderTools;->mCallRecorderRemoteService:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 55
    iget-object v1, p0, Lcom/android/incallui/recorder/CallRecorderTools;->mCallRecorderRemoteService:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/incallui/recorder/CallRecorderTools;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not bind service: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/recorder/CallRecorderTools;->mCallRecorderRemoteService:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    :cond_0
    return-void
.end method

.method public checkRecordTime()V
    .locals 3

    .prologue
    .line 252
    iget-object v1, p0, Lcom/android/incallui/recorder/CallRecorderTools;->mCall:Lcom/android/incallui/Call;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/recorder/CallRecorderTools;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 254
    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/recorder/CallRecorderTools;->mRecorderService:Lcom/android/incallui/recorder/ICallRecorderCommand;

    if-eqz v1, :cond_0

    .line 255
    iget-object v1, p0, Lcom/android/incallui/recorder/CallRecorderTools;->mRecorderService:Lcom/android/incallui/recorder/ICallRecorderCommand;

    iget-object v2, p0, Lcom/android/incallui/recorder/CallRecorderTools;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/incallui/recorder/ICallRecorderCommand;->checkCallRecordTime(Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 257
    :catch_0
    move-exception v0

    .line 258
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "checkCallRecordTime RemoteException"

    invoke-static {p0, v1, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onIncomingCall(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V
    .locals 1
    .param p1, "oldState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "newState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p3, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 167
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/incallui/recorder/CallRecorderTools;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    .line 168
    return-void
.end method

.method public onRecordClick(Z)V
    .locals 6
    .param p1, "toStart"    # Z

    .prologue
    .line 264
    if-eqz p1, :cond_4

    .line 265
    iget-object v4, p0, Lcom/android/incallui/recorder/CallRecorderTools;->mRecorderService:Lcom/android/incallui/recorder/ICallRecorderCommand;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/incallui/recorder/CallRecorderTools;->mCall:Lcom/android/incallui/Call;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/incallui/recorder/CallRecorderTools;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    .line 267
    :try_start_0
    iget-object v4, p0, Lcom/android/incallui/recorder/CallRecorderTools;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v3

    .line 268
    .local v3, "number":Ljava/lang/String;
    if-eqz v3, :cond_2

    move-object v2, v3

    .line 269
    .local v2, "name":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/android/incallui/ContactInfoCache;->getInstance()Lcom/android/incallui/ContactInfoCache;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/recorder/CallRecorderTools;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v5}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v0

    .line 270
    .local v0, "contactInfo":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    if-eqz v0, :cond_0

    iget-object v4, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 271
    iget-object v2, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    .line 273
    :cond_0
    iget-object v4, p0, Lcom/android/incallui/recorder/CallRecorderTools;->mRecorderService:Lcom/android/incallui/recorder/ICallRecorderCommand;

    iget-object v5, p0, Lcom/android/incallui/recorder/CallRecorderTools;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v5}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v2, v3}, Lcom/android/incallui/recorder/ICallRecorderCommand;->startCallRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    .end local v0    # "contactInfo":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "number":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 268
    .restart local v3    # "number":Ljava/lang/String;
    :cond_2
    const-string v2, ""
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 274
    .end local v3    # "number":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 275
    .local v1, "e":Landroid/os/RemoteException;
    const-string v4, "startCallRecord RemoteException"

    invoke-static {p0, v4, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 278
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/incallui/recorder/CallRecorderTools;->mNeedRecord:Z

    goto :goto_1

    .line 281
    :cond_4
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/incallui/recorder/CallRecorderTools;->mNeedRecord:Z

    .line 282
    iget-object v4, p0, Lcom/android/incallui/recorder/CallRecorderTools;->mRecorderService:Lcom/android/incallui/recorder/ICallRecorderCommand;

    if-eqz v4, :cond_1

    .line 284
    :try_start_1
    iget-object v4, p0, Lcom/android/incallui/recorder/CallRecorderTools;->mRecorderService:Lcom/android/incallui/recorder/ICallRecorderCommand;

    invoke-interface {v4}, Lcom/android/incallui/recorder/ICallRecorderCommand;->stopCallRecord()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 285
    :catch_1
    move-exception v1

    .line 286
    .restart local v1    # "e":Landroid/os/RemoteException;
    const-string v4, "stopCallRecord RemoteException"

    invoke-static {p0, v4, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 15
    .param p1, "oldState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "newState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p3, "callList"    # Lcom/android/incallui/CallList;

    .prologue
    .line 172
    sget-object v12, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v0, p2

    if-eq v0, v12, :cond_0

    sget-object v12, Lcom/android/incallui/InCallPresenter$InCallState;->PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v0, p2

    if-ne v0, v12, :cond_3

    .line 173
    :cond_0
    invoke-virtual/range {p3 .. p3}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v12

    iput-object v12, p0, Lcom/android/incallui/recorder/CallRecorderTools;->mCall:Lcom/android/incallui/Call;

    .line 174
    iget-object v12, p0, Lcom/android/incallui/recorder/CallRecorderTools;->mCall:Lcom/android/incallui/Call;

    if-nez v12, :cond_1

    .line 175
    invoke-virtual/range {p3 .. p3}, Lcom/android/incallui/CallList;->getPendingOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v12

    iput-object v12, p0, Lcom/android/incallui/recorder/CallRecorderTools;->mCall:Lcom/android/incallui/Call;

    .line 185
    :cond_1
    :goto_0
    invoke-direct/range {p0 .. p2}, Lcom/android/incallui/recorder/CallRecorderTools;->isNeedUpdateUI(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;)Z

    move-result v12

    if-nez v12, :cond_6

    .line 186
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ignore NeedUpdateUI:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/incallui/recorder/CallRecorderTools;->mLastCallKey:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {p0, v12}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 249
    :cond_2
    :goto_1
    return-void

    .line 177
    :cond_3
    sget-object v12, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v0, p2

    if-ne v0, v12, :cond_4

    .line 178
    invoke-virtual/range {p3 .. p3}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v12

    iput-object v12, p0, Lcom/android/incallui/recorder/CallRecorderTools;->mCall:Lcom/android/incallui/Call;

    goto :goto_0

    .line 179
    :cond_4
    sget-object v12, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v0, p2

    if-ne v0, v12, :cond_5

    .line 180
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/android/incallui/recorder/CallRecorderTools;->mCall:Lcom/android/incallui/Call;

    goto :goto_0

    .line 182
    :cond_5
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/android/incallui/recorder/CallRecorderTools;->mCall:Lcom/android/incallui/Call;

    goto :goto_0

    .line 190
    :cond_6
    invoke-virtual {p0}, Lcom/android/incallui/recorder/CallRecorderTools;->checkRecordTime()V

    .line 191
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    .line 192
    .local v3, "context":Landroid/content/Context;
    iget-object v12, p0, Lcom/android/incallui/recorder/CallRecorderTools;->mCall:Lcom/android/incallui/Call;

    if-eqz v12, :cond_d

    const/4 v12, 0x2

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v13

    iget-object v14, p0, Lcom/android/incallui/recorder/CallRecorderTools;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v14}, Lcom/android/incallui/Call;->getSubId()I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType(I)I

    move-result v13

    if-ne v12, v13, :cond_d

    const/4 v6, 0x1

    .line 193
    .local v6, "isCDMAPhone":Z
    :goto_2
    iget-object v12, p0, Lcom/android/incallui/recorder/CallRecorderTools;->mCall:Lcom/android/incallui/Call;

    if-eqz v12, :cond_c

    iget-object v12, p0, Lcom/android/incallui/recorder/CallRecorderTools;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v12}, Lcom/android/incallui/Call;->getState()I

    move-result v12

    const/4 v13, 0x3

    if-ne v12, v13, :cond_c

    if-nez v6, :cond_7

    iget v12, p0, Lcom/android/incallui/recorder/CallRecorderTools;->mPreviousFgCallState:I

    const/4 v13, 0x3

    if-ne v12, v13, :cond_8

    :cond_7
    if-eqz v6, :cond_c

    iget v12, p0, Lcom/android/incallui/recorder/CallRecorderTools;->mPreviousFgCallState:I

    const/4 v13, 0x3

    if-ne v12, v13, :cond_c

    .line 196
    :cond_8
    iget-object v12, p0, Lcom/android/incallui/recorder/CallRecorderTools;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v12}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v10

    .line 197
    .local v10, "number":Ljava/lang/String;
    if-eqz v10, :cond_e

    move-object v9, v10

    .line 198
    .local v9, "name":Ljava/lang/String;
    :goto_3
    invoke-static {}, Lcom/android/incallui/ContactInfoCache;->getInstance()Lcom/android/incallui/ContactInfoCache;

    move-result-object v12

    iget-object v13, p0, Lcom/android/incallui/recorder/CallRecorderTools;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v13}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v2

    .line 199
    .local v2, "contactInfo":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    const/4 v1, 0x0

    .line 200
    .local v1, "contactExists":Z
    if-eqz v2, :cond_f

    iget-boolean v12, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isSipCall:Z

    if-eqz v12, :cond_f

    const/4 v7, 0x1

    .line 202
    .local v7, "isSipCall":Z
    :goto_4
    if-eqz v2, :cond_9

    .line 203
    iget-boolean v1, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    .line 204
    iget-object v10, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    .line 205
    iget-object v12, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    if-eqz v12, :cond_9

    .line 206
    iget-object v9, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    .line 209
    :cond_9
    invoke-static {v3, v10, v1}, Lcom/android/incallui/recorder/RecorderUtils;->checkRecordable(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v11

    .line 210
    .local v11, "recorderable":Z
    iget-boolean v12, p0, Lcom/android/incallui/recorder/CallRecorderTools;->mNeedRecord:Z

    if-nez v12, :cond_a

    if-eqz v11, :cond_c

    .line 211
    :cond_a
    if-eqz v7, :cond_10

    .line 212
    const v12, 0x7f0c0037

    invoke-static {v12}, Lcom/android/incallui/util/Utils;->displayMsg(I)V

    .line 225
    :cond_b
    :goto_5
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/android/incallui/recorder/CallRecorderTools;->mNeedRecord:Z

    .line 229
    .end local v1    # "contactExists":Z
    .end local v2    # "contactInfo":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .end local v7    # "isSipCall":Z
    .end local v9    # "name":Ljava/lang/String;
    .end local v10    # "number":Ljava/lang/String;
    .end local v11    # "recorderable":Z
    :cond_c
    iget-object v12, p0, Lcom/android/incallui/recorder/CallRecorderTools;->mCall:Lcom/android/incallui/Call;

    if-eqz v12, :cond_12

    .line 230
    iget-object v12, p0, Lcom/android/incallui/recorder/CallRecorderTools;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v12}, Lcom/android/incallui/Call;->getState()I

    move-result v12

    iput v12, p0, Lcom/android/incallui/recorder/CallRecorderTools;->mPreviousFgCallState:I

    .line 235
    :goto_6
    sget-object v12, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v0, p2

    if-ne v0, v12, :cond_2

    .line 236
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/android/incallui/recorder/CallRecorderTools;->mNeedRecord:Z

    .line 237
    iget-object v12, p0, Lcom/android/incallui/recorder/CallRecorderTools;->mListeners:Ljava/util/Set;

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_13

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/incallui/recorder/CallRecorderToolsListener;

    .line 238
    .local v8, "listener":Lcom/android/incallui/recorder/CallRecorderToolsListener;
    invoke-interface {v8}, Lcom/android/incallui/recorder/CallRecorderToolsListener;->stopManualAutoRecordIfNotStartedCallback()V

    .line 239
    const/4 v12, 0x0

    invoke-interface {v8, v12}, Lcom/android/incallui/recorder/CallRecorderToolsListener;->waitingToRecordCallback(Z)V

    goto :goto_7

    .line 192
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "isCDMAPhone":Z
    .end local v8    # "listener":Lcom/android/incallui/recorder/CallRecorderToolsListener;
    :cond_d
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 197
    .restart local v6    # "isCDMAPhone":Z
    .restart local v10    # "number":Ljava/lang/String;
    :cond_e
    const-string v9, ""

    goto :goto_3

    .line 200
    .restart local v1    # "contactExists":Z
    .restart local v2    # "contactInfo":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .restart local v9    # "name":Ljava/lang/String;
    :cond_f
    const/4 v7, 0x0

    goto :goto_4

    .line 213
    .restart local v7    # "isSipCall":Z
    .restart local v11    # "recorderable":Z
    :cond_10
    iget-object v12, p0, Lcom/android/incallui/recorder/CallRecorderTools;->mRecorderService:Lcom/android/incallui/recorder/ICallRecorderCommand;

    if-eqz v12, :cond_11

    .line 215
    :try_start_0
    iget-object v12, p0, Lcom/android/incallui/recorder/CallRecorderTools;->mRecorderService:Lcom/android/incallui/recorder/ICallRecorderCommand;

    iget-object v13, p0, Lcom/android/incallui/recorder/CallRecorderTools;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v13}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13, v9, v10}, Lcom/android/incallui/recorder/ICallRecorderCommand;->startCallRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 216
    :catch_0
    move-exception v4

    .line 217
    .local v4, "e":Landroid/os/RemoteException;
    const-string v12, "startCallRecord RemoteException"

    invoke-static {p0, v12, v4}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_5

    .line 220
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_11
    const-string v12, "record service not bind to activity, waiting to bind"

    invoke-static {p0, v12}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    iget-object v12, p0, Lcom/android/incallui/recorder/CallRecorderTools;->mListeners:Ljava/util/Set;

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5    # "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/incallui/recorder/CallRecorderToolsListener;

    .line 222
    .restart local v8    # "listener":Lcom/android/incallui/recorder/CallRecorderToolsListener;
    const/4 v12, 0x1

    invoke-interface {v8, v12}, Lcom/android/incallui/recorder/CallRecorderToolsListener;->waitingToRecordCallback(Z)V

    goto :goto_8

    .line 232
    .end local v1    # "contactExists":Z
    .end local v2    # "contactInfo":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v7    # "isSipCall":Z
    .end local v8    # "listener":Lcom/android/incallui/recorder/CallRecorderToolsListener;
    .end local v9    # "name":Ljava/lang/String;
    .end local v10    # "number":Ljava/lang/String;
    .end local v11    # "recorderable":Z
    :cond_12
    const/4 v12, 0x0

    iput v12, p0, Lcom/android/incallui/recorder/CallRecorderTools;->mPreviousFgCallState:I

    goto :goto_6

    .line 242
    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_13
    :try_start_1
    iget-object v12, p0, Lcom/android/incallui/recorder/CallRecorderTools;->mRecorderService:Lcom/android/incallui/recorder/ICallRecorderCommand;

    if-eqz v12, :cond_2

    .line 243
    iget-object v12, p0, Lcom/android/incallui/recorder/CallRecorderTools;->mRecorderService:Lcom/android/incallui/recorder/ICallRecorderCommand;

    invoke-interface {v12}, Lcom/android/incallui/recorder/ICallRecorderCommand;->stopCallRecord()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 245
    :catch_1
    move-exception v4

    .line 246
    .restart local v4    # "e":Landroid/os/RemoteException;
    const-string v12, "stopCallRecord RemoteException"

    invoke-static {p0, v12, v4}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_1
.end method

.method public removeCallRecorderToolsListener(Lcom/android/incallui/recorder/CallRecorderToolsListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/recorder/CallRecorderToolsListener;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/incallui/recorder/CallRecorderTools;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 163
    return-void
.end method

.method public unbindService()V
    .locals 4

    .prologue
    .line 62
    :try_start_0
    iget-object v2, p0, Lcom/android/incallui/recorder/CallRecorderTools;->mRecorderService:Lcom/android/incallui/recorder/ICallRecorderCommand;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/recorder/CallRecorderTools;->mRecorderService:Lcom/android/incallui/recorder/ICallRecorderCommand;

    invoke-interface {v2}, Lcom/android/incallui/recorder/ICallRecorderCommand;->isBound()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 63
    iget-object v2, p0, Lcom/android/incallui/recorder/CallRecorderTools;->mRecorderService:Lcom/android/incallui/recorder/ICallRecorderCommand;

    invoke-interface {v2}, Lcom/android/incallui/recorder/ICallRecorderCommand;->stopCallRecord()V

    .line 64
    iget-object v2, p0, Lcom/android/incallui/recorder/CallRecorderTools;->mRecorderService:Lcom/android/incallui/recorder/ICallRecorderCommand;

    iget-object v3, p0, Lcom/android/incallui/recorder/CallRecorderTools;->mRecorderCallback:Lcom/android/incallui/recorder/CallRecorderTools$RecorderCallback;

    invoke-interface {v2, v3}, Lcom/android/incallui/recorder/ICallRecorderCommand;->unregisterCallback(Lcom/android/incallui/recorder/IRecorderCallback;)V

    .line 65
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    .line 66
    .local v0, "context":Landroid/content/Context;
    iget-object v2, p0, Lcom/android/incallui/recorder/CallRecorderTools;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 67
    iget-object v2, p0, Lcom/android/incallui/recorder/CallRecorderTools;->mCallRecorderRemoteService:Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 68
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/incallui/recorder/CallRecorderTools;->mRecorderService:Lcom/android/incallui/recorder/ICallRecorderCommand;

    .line 69
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/incallui/recorder/CallRecorderTools;->mCallRecorderRemoteService:Landroid/content/Intent;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    .line 78
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    :goto_0
    return-void

    .line 71
    :catch_0
    move-exception v1

    .line 72
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "mRecorderService.isBound RemoteException"

    invoke-static {p0, v2, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 73
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 74
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "unbindService fail"

    invoke-static {p0, v2, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 75
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v1

    .line 76
    .local v1, "e":Ljava/lang/SecurityException;
    const-string v2, "stopService fail"

    invoke-static {p0, v2, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
