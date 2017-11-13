.class public final Landroid/telecom/Call;
.super Ljava/lang/Object;
.source "Call.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/Call$Listener;,
        Landroid/telecom/Call$Callback;,
        Landroid/telecom/Call$Details;
    }
.end annotation


# static fields
.field public static final AVAILABLE_PHONE_ACCOUNTS:Ljava/lang/String; = "selectPhoneAccountAccounts"

.field public static final STATE_ACTIVE:I = 0x4

.field public static final STATE_CONNECTING:I = 0x9

.field public static final STATE_DIALING:I = 0x1

.field public static final STATE_DISCONNECTED:I = 0x7

.field public static final STATE_DISCONNECTING:I = 0xa

.field public static final STATE_HOLDING:I = 0x3

.field public static final STATE_NEW:I = 0x0

.field public static final STATE_PRE_DIAL_WAIT:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STATE_RINGING:I = 0x2

.field public static final STATE_SELECT_PHONE_ACCOUNT:I = 0x8


# instance fields
.field private final mCallbackRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/CallbackRecord",
            "<",
            "Landroid/telecom/Call$Callback;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCannedTextResponses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Call;",
            ">;"
        }
    .end annotation
.end field

.field private mChildrenCached:Z

.field private final mChildrenIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mConferenceableCalls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Call;",
            ">;"
        }
    .end annotation
.end field

.field private mDetails:Landroid/telecom/Call$Details;

.field private final mInCallAdapter:Landroid/telecom/InCallAdapter;

.field private mParentId:Ljava/lang/String;

.field private final mPhone:Landroid/telecom/Phone;

.field private mRemainingPostDialSequence:Ljava/lang/String;

.field private mState:I

.field private final mTelecomCallId:Ljava/lang/String;

.field private final mUnmodifiableChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Call;",
            ">;"
        }
    .end annotation
.end field

.field private final mUnmodifiableConferenceableCalls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Call;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoCall:Landroid/telecom/InCallService$VideoCall;


# direct methods
.method constructor <init>(Landroid/telecom/Phone;Ljava/lang/String;Landroid/telecom/InCallAdapter;)V
    .locals 2
    .param p1, "phone"    # Landroid/telecom/Phone;
    .param p2, "telecomCallId"    # Ljava/lang/String;
    .param p3, "inCallAdapter"    # Landroid/telecom/InCallAdapter;

    .prologue
    const/4 v1, 0x0

    .line 993
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 686
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/Call;->mChildrenIds:Ljava/util/List;

    .line 687
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/Call;->mChildren:Ljava/util/List;

    .line 688
    iget-object v0, p0, Landroid/telecom/Call;->mChildren:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/Call;->mUnmodifiableChildren:Ljava/util/List;

    .line 689
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/Call;->mCallbackRecords:Ljava/util/List;

    .line 690
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/Call;->mConferenceableCalls:Ljava/util/List;

    .line 691
    iget-object v0, p0, Landroid/telecom/Call;->mConferenceableCalls:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/Call;->mUnmodifiableConferenceableCalls:Ljava/util/List;

    .line 695
    iput-object v1, p0, Landroid/telecom/Call;->mParentId:Ljava/lang/String;

    .line 697
    iput-object v1, p0, Landroid/telecom/Call;->mCannedTextResponses:Ljava/util/List;

    .line 994
    iput-object p1, p0, Landroid/telecom/Call;->mPhone:Landroid/telecom/Phone;

    .line 995
    iput-object p2, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    .line 996
    iput-object p3, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    .line 997
    const/4 v0, 0x0

    iput v0, p0, Landroid/telecom/Call;->mState:I

    .line 998
    return-void
.end method

.method static synthetic access$000(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .locals 1
    .param p0, "x0"    # Landroid/os/Bundle;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 36
    invoke-static {p0, p1}, Landroid/telecom/Call;->areBundlesEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Landroid/telecom/Call;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Landroid/telecom/Call;

    .prologue
    .line 36
    iget-object v0, p0, Landroid/telecom/Call;->mCallbackRecords:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Landroid/telecom/Call;)Landroid/telecom/Phone;
    .locals 1
    .param p0, "x0"    # Landroid/telecom/Call;

    .prologue
    .line 36
    iget-object v0, p0, Landroid/telecom/Call;->mPhone:Landroid/telecom/Phone;

    return-object v0
.end method

.method static synthetic access$300(Landroid/telecom/Call;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Landroid/telecom/Call;

    .prologue
    .line 36
    iget-object v0, p0, Landroid/telecom/Call;->mUnmodifiableConferenceableCalls:Ljava/util/List;

    return-object v0
.end method

.method private static areBundlesEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .locals 8
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "newBundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1275
    if-eqz p0, :cond_0

    if-nez p1, :cond_3

    .line 1276
    :cond_0
    if-ne p0, p1, :cond_2

    :goto_0
    move v5, v4

    .line 1292
    :cond_1
    :goto_1
    return v5

    :cond_2
    move v4, v5

    .line 1276
    goto :goto_0

    .line 1279
    :cond_3
    invoke-virtual {p0}, Landroid/os/Bundle;->size()I

    move-result v6

    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v7

    if-ne v6, v7, :cond_1

    .line 1283
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1284
    .local v1, "key":Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 1285
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 1286
    .local v3, "value":Ljava/lang/Object;
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1287
    .local v2, "newValue":Ljava/lang/Object;
    invoke-static {v3, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_1

    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "newValue":Ljava/lang/Object;
    .end local v3    # "value":Ljava/lang/Object;
    :cond_5
    move v5, v4

    .line 1292
    goto :goto_1
.end method

.method private fireCallDestroyed()V
    .locals 6

    .prologue
    .line 1220
    move-object v0, p0

    .line 1221
    .local v0, "call":Landroid/telecom/Call;
    iget-object v4, p0, Landroid/telecom/Call;->mCallbackRecords:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1223
    iget-object v4, p0, Landroid/telecom/Call;->mPhone:Landroid/telecom/Phone;

    invoke-virtual {v4, v0}, Landroid/telecom/Phone;->internalRemoveCall(Landroid/telecom/Call;)V

    .line 1225
    :cond_0
    iget-object v4, p0, Landroid/telecom/Call;->mCallbackRecords:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/CallbackRecord;

    .line 1226
    .local v3, "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    invoke-virtual {v3}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Call$Callback;

    .line 1227
    .local v1, "callback":Landroid/telecom/Call$Callback;
    invoke-virtual {v3}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/Call$8;

    invoke-direct {v5, p0, v1, v0, v3}, Landroid/telecom/Call$8;-><init>(Landroid/telecom/Call;Landroid/telecom/Call$Callback;Landroid/telecom/Call;Landroid/telecom/CallbackRecord;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1252
    .end local v1    # "callback":Landroid/telecom/Call$Callback;
    .end local v3    # "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    :cond_1
    return-void
.end method

.method private fireCannedTextResponsesLoaded(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1174
    .local p1, "cannedTextResponses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Landroid/telecom/Call;->mCallbackRecords:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/CallbackRecord;

    .line 1175
    .local v3, "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    move-object v0, p0

    .line 1176
    .local v0, "call":Landroid/telecom/Call;
    invoke-virtual {v3}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Call$Callback;

    .line 1177
    .local v1, "callback":Landroid/telecom/Call$Callback;
    invoke-virtual {v3}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/Call$5;

    invoke-direct {v5, p0, v1, v0, p1}, Landroid/telecom/Call$5;-><init>(Landroid/telecom/Call;Landroid/telecom/Call$Callback;Landroid/telecom/Call;Ljava/util/List;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1184
    .end local v0    # "call":Landroid/telecom/Call;
    .end local v1    # "callback":Landroid/telecom/Call$Callback;
    .end local v3    # "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    :cond_0
    return-void
.end method

.method private fireChildrenChanged(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Call;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1148
    .local p1, "children":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Call;>;"
    iget-object v4, p0, Landroid/telecom/Call;->mCallbackRecords:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/CallbackRecord;

    .line 1149
    .local v3, "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    move-object v0, p0

    .line 1150
    .local v0, "call":Landroid/telecom/Call;
    invoke-virtual {v3}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Call$Callback;

    .line 1151
    .local v1, "callback":Landroid/telecom/Call$Callback;
    invoke-virtual {v3}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/Call$3;

    invoke-direct {v5, p0, v1, v0, p1}, Landroid/telecom/Call$3;-><init>(Landroid/telecom/Call;Landroid/telecom/Call$Callback;Landroid/telecom/Call;Ljava/util/List;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1158
    .end local v0    # "call":Landroid/telecom/Call;
    .end local v1    # "callback":Landroid/telecom/Call$Callback;
    .end local v3    # "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    :cond_0
    return-void
.end method

.method private fireConferenceableCallsChanged()V
    .locals 6

    .prologue
    .line 1255
    iget-object v4, p0, Landroid/telecom/Call;->mCallbackRecords:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/CallbackRecord;

    .line 1256
    .local v3, "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    move-object v0, p0

    .line 1257
    .local v0, "call":Landroid/telecom/Call;
    invoke-virtual {v3}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Call$Callback;

    .line 1258
    .local v1, "callback":Landroid/telecom/Call$Callback;
    invoke-virtual {v3}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/Call$9;

    invoke-direct {v5, p0, v1, v0}, Landroid/telecom/Call$9;-><init>(Landroid/telecom/Call;Landroid/telecom/Call$Callback;Landroid/telecom/Call;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1265
    .end local v0    # "call":Landroid/telecom/Call;
    .end local v1    # "callback":Landroid/telecom/Call$Callback;
    .end local v3    # "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    :cond_0
    return-void
.end method

.method private fireDetailsChanged(Landroid/telecom/Call$Details;)V
    .locals 6
    .param p1, "details"    # Landroid/telecom/Call$Details;

    .prologue
    .line 1161
    iget-object v4, p0, Landroid/telecom/Call;->mCallbackRecords:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/CallbackRecord;

    .line 1162
    .local v3, "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    move-object v0, p0

    .line 1163
    .local v0, "call":Landroid/telecom/Call;
    invoke-virtual {v3}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Call$Callback;

    .line 1164
    .local v1, "callback":Landroid/telecom/Call$Callback;
    invoke-virtual {v3}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/Call$4;

    invoke-direct {v5, p0, v1, v0, p1}, Landroid/telecom/Call$4;-><init>(Landroid/telecom/Call;Landroid/telecom/Call$Callback;Landroid/telecom/Call;Landroid/telecom/Call$Details;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1171
    .end local v0    # "call":Landroid/telecom/Call;
    .end local v1    # "callback":Landroid/telecom/Call$Callback;
    .end local v3    # "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    :cond_0
    return-void
.end method

.method private fireParentChanged(Landroid/telecom/Call;)V
    .locals 6
    .param p1, "newParent"    # Landroid/telecom/Call;

    .prologue
    .line 1135
    iget-object v4, p0, Landroid/telecom/Call;->mCallbackRecords:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/CallbackRecord;

    .line 1136
    .local v3, "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    move-object v0, p0

    .line 1137
    .local v0, "call":Landroid/telecom/Call;
    invoke-virtual {v3}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Call$Callback;

    .line 1138
    .local v1, "callback":Landroid/telecom/Call$Callback;
    invoke-virtual {v3}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/Call$2;

    invoke-direct {v5, p0, v1, v0, p1}, Landroid/telecom/Call$2;-><init>(Landroid/telecom/Call;Landroid/telecom/Call$Callback;Landroid/telecom/Call;Landroid/telecom/Call;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1145
    .end local v0    # "call":Landroid/telecom/Call;
    .end local v1    # "callback":Landroid/telecom/Call$Callback;
    .end local v3    # "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    :cond_0
    return-void
.end method

.method private firePostDialWait(Ljava/lang/String;)V
    .locals 6
    .param p1, "remainingPostDialSequence"    # Ljava/lang/String;

    .prologue
    .line 1200
    iget-object v4, p0, Landroid/telecom/Call;->mCallbackRecords:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/CallbackRecord;

    .line 1201
    .local v3, "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    move-object v0, p0

    .line 1202
    .local v0, "call":Landroid/telecom/Call;
    invoke-virtual {v3}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Call$Callback;

    .line 1203
    .local v1, "callback":Landroid/telecom/Call$Callback;
    invoke-virtual {v3}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/Call$7;

    invoke-direct {v5, p0, v1, v0, p1}, Landroid/telecom/Call$7;-><init>(Landroid/telecom/Call;Landroid/telecom/Call$Callback;Landroid/telecom/Call;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1210
    .end local v0    # "call":Landroid/telecom/Call;
    .end local v1    # "callback":Landroid/telecom/Call$Callback;
    .end local v3    # "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    :cond_0
    return-void
.end method

.method private fireStateChanged(I)V
    .locals 6
    .param p1, "newState"    # I

    .prologue
    .line 1122
    iget-object v4, p0, Landroid/telecom/Call;->mCallbackRecords:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/CallbackRecord;

    .line 1123
    .local v3, "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    move-object v0, p0

    .line 1124
    .local v0, "call":Landroid/telecom/Call;
    invoke-virtual {v3}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Call$Callback;

    .line 1125
    .local v1, "callback":Landroid/telecom/Call$Callback;
    invoke-virtual {v3}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/Call$1;

    invoke-direct {v5, p0, v1, v0, p1}, Landroid/telecom/Call$1;-><init>(Landroid/telecom/Call;Landroid/telecom/Call$Callback;Landroid/telecom/Call;I)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1132
    .end local v0    # "call":Landroid/telecom/Call;
    .end local v1    # "callback":Landroid/telecom/Call$Callback;
    .end local v3    # "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    :cond_0
    return-void
.end method

.method private fireVideoCallChanged(Landroid/telecom/InCallService$VideoCall;)V
    .locals 6
    .param p1, "videoCall"    # Landroid/telecom/InCallService$VideoCall;

    .prologue
    .line 1187
    iget-object v4, p0, Landroid/telecom/Call;->mCallbackRecords:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/CallbackRecord;

    .line 1188
    .local v3, "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    move-object v0, p0

    .line 1189
    .local v0, "call":Landroid/telecom/Call;
    invoke-virtual {v3}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Call$Callback;

    .line 1190
    .local v1, "callback":Landroid/telecom/Call$Callback;
    invoke-virtual {v3}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/Call$6;

    invoke-direct {v5, p0, v1, v0, p1}, Landroid/telecom/Call$6;-><init>(Landroid/telecom/Call;Landroid/telecom/Call$Callback;Landroid/telecom/Call;Landroid/telecom/InCallService$VideoCall;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1197
    .end local v0    # "call":Landroid/telecom/Call;
    .end local v1    # "callback":Landroid/telecom/Call$Callback;
    .end local v3    # "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    :cond_0
    return-void
.end method


# virtual methods
.method public addListener(Landroid/telecom/Call$Listener;)V
    .locals 0
    .param p1, "listener"    # Landroid/telecom/Call$Listener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 975
    invoke-virtual {p0, p1}, Landroid/telecom/Call;->registerCallback(Landroid/telecom/Call$Callback;)V

    .line 976
    return-void
.end method

.method public answer(I)V
    .locals 2
    .param p1, "videoState"    # I

    .prologue
    .line 717
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/telecom/InCallAdapter;->answerCall(Ljava/lang/String;I)V

    .line 718
    return-void
.end method

.method public conference(Landroid/telecom/Call;)V
    .locals 3
    .param p1, "callToConferenceWith"    # Landroid/telecom/Call;

    .prologue
    .line 811
    if-eqz p1, :cond_0

    .line 812
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    iget-object v2, p1, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/telecom/InCallAdapter;->conference(Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    :cond_0
    return-void
.end method

.method public disconnect()V
    .locals 2

    .prologue
    .line 734
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telecom/InCallAdapter;->disconnectCall(Ljava/lang/String;)V

    .line 735
    return-void
.end method

.method public getCannedTextResponses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 903
    iget-object v0, p0, Landroid/telecom/Call;->mCannedTextResponses:Ljava/util/List;

    return-object v0
.end method

.method public getChildren()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Call;",
            ">;"
        }
    .end annotation

    .prologue
    .line 858
    iget-boolean v3, p0, Landroid/telecom/Call;->mChildrenCached:Z

    if-nez v3, :cond_1

    .line 859
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/telecom/Call;->mChildrenCached:Z

    .line 860
    iget-object v3, p0, Landroid/telecom/Call;->mChildren:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 862
    iget-object v3, p0, Landroid/telecom/Call;->mChildrenIds:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 863
    .local v2, "id":Ljava/lang/String;
    iget-object v3, p0, Landroid/telecom/Call;->mPhone:Landroid/telecom/Phone;

    invoke-virtual {v3, v2}, Landroid/telecom/Phone;->internalGetCallByTelecomId(Ljava/lang/String;)Landroid/telecom/Call;

    move-result-object v0

    .line 864
    .local v0, "call":Landroid/telecom/Call;
    if-nez v0, :cond_0

    .line 866
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/telecom/Call;->mChildrenCached:Z

    goto :goto_0

    .line 868
    :cond_0
    iget-object v3, p0, Landroid/telecom/Call;->mChildren:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 873
    .end local v0    # "call":Landroid/telecom/Call;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "id":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Landroid/telecom/Call;->mUnmodifiableChildren:Ljava/util/List;

    return-object v3
.end method

.method public getConferenceableCalls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Call;",
            ">;"
        }
    .end annotation

    .prologue
    .line 882
    iget-object v0, p0, Landroid/telecom/Call;->mUnmodifiableConferenceableCalls:Ljava/util/List;

    return-object v0
.end method

.method public getDetails()Landroid/telecom/Call$Details;
    .locals 1

    .prologue
    .line 922
    iget-object v0, p0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    return-object v0
.end method

.method public getParent()Landroid/telecom/Call;
    .locals 2

    .prologue
    .line 845
    iget-object v0, p0, Landroid/telecom/Call;->mParentId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 846
    iget-object v0, p0, Landroid/telecom/Call;->mPhone:Landroid/telecom/Phone;

    iget-object v1, p0, Landroid/telecom/Call;->mParentId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telecom/Phone;->internalGetCallByTelecomId(Ljava/lang/String;)Landroid/telecom/Call;

    move-result-object v0

    .line 848
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRemainingPostDialSequence()Ljava/lang/String;
    .locals 1

    .prologue
    .line 709
    iget-object v0, p0, Landroid/telecom/Call;->mRemainingPostDialSequence:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 891
    iget v0, p0, Landroid/telecom/Call;->mState:I

    return v0
.end method

.method public getVideoCall()Landroid/telecom/InCallService$VideoCall;
    .locals 1

    .prologue
    .line 912
    iget-object v0, p0, Landroid/telecom/Call;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    return-object v0
.end method

.method public hold()V
    .locals 2

    .prologue
    .line 741
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telecom/InCallAdapter;->holdCall(Ljava/lang/String;)V

    .line 742
    return-void
.end method

.method final internalGetCallId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1002
    iget-object v0, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    return-object v0
.end method

.method final internalSetDisconnected()V
    .locals 2

    .prologue
    const/4 v1, 0x7

    .line 1114
    iget v0, p0, Landroid/telecom/Call;->mState:I

    if-eq v0, v1, :cond_0

    .line 1115
    iput v1, p0, Landroid/telecom/Call;->mState:I

    .line 1116
    iget v0, p0, Landroid/telecom/Call;->mState:I

    invoke-direct {p0, v0}, Landroid/telecom/Call;->fireStateChanged(I)V

    .line 1117
    invoke-direct {p0}, Landroid/telecom/Call;->fireCallDestroyed()V

    .line 1119
    :cond_0
    return-void
.end method

.method final internalSetPostDialWait(Ljava/lang/String;)V
    .locals 1
    .param p1, "remaining"    # Ljava/lang/String;

    .prologue
    .line 1108
    iput-object p1, p0, Landroid/telecom/Call;->mRemainingPostDialSequence:Ljava/lang/String;

    .line 1109
    iget-object v0, p0, Landroid/telecom/Call;->mRemainingPostDialSequence:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/telecom/Call;->firePostDialWait(Ljava/lang/String;)V

    .line 1110
    return-void
.end method

.method final internalUpdate(Landroid/telecom/ParcelableCall;Ljava/util/Map;)V
    .locals 31
    .param p1, "parcelableCall"    # Landroid/telecom/ParcelableCall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/ParcelableCall;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/telecom/Call;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1008
    .local p2, "callIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/telecom/Call;>;"
    new-instance v3, Landroid/telecom/Call$Details;

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getHandle()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getHandlePresentation()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getCallerDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getCallerDisplayNamePresentation()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getCapabilities()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getProperties()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getConnectTimeMillis()J

    move-result-wide v12

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getGatewayInfo()Landroid/telecom/GatewayInfo;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getVideoState()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getStatusHints()Landroid/telecom/StatusHints;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getExtras()Landroid/os/Bundle;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getIntentExtras()Landroid/os/Bundle;

    move-result-object v18

    invoke-direct/range {v3 .. v18}, Landroid/telecom/Call$Details;-><init>(Landroid/net/Uri;ILjava/lang/String;ILandroid/telecom/PhoneAccountHandle;IILandroid/telecom/DisconnectCause;JLandroid/telecom/GatewayInfo;ILandroid/telecom/StatusHints;Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 1023
    .local v3, "details":Landroid/telecom/Call$Details;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    invoke-static {v4, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    const/16 v23, 0x1

    .line 1024
    .local v23, "detailsChanged":Z
    :goto_0
    if-eqz v23, :cond_0

    .line 1025
    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    .line 1028
    :cond_0
    const/4 v2, 0x0

    .line 1029
    .local v2, "cannedTextResponsesChanged":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/telecom/Call;->mCannedTextResponses:Ljava/util/List;

    if-nez v4, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getCannedSmsResponses()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getCannedSmsResponses()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1031
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getCannedSmsResponses()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/telecom/Call;->mCannedTextResponses:Ljava/util/List;

    .line 1035
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->isVideoCallProviderChanged()Z

    move-result v4

    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/telecom/Call;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/telecom/ParcelableCall;->getVideoCall(Landroid/telecom/Call;)Landroid/telecom/InCallService$VideoCall;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    const/16 v30, 0x1

    .line 1037
    .local v30, "videoCallChanged":Z
    :goto_1
    if-eqz v30, :cond_2

    .line 1038
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/telecom/ParcelableCall;->getVideoCall(Landroid/telecom/Call;)Landroid/telecom/InCallService$VideoCall;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/telecom/Call;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    .line 1041
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getState()I

    move-result v28

    .line 1042
    .local v28, "state":I
    move-object/from16 v0, p0

    iget v4, v0, Landroid/telecom/Call;->mState:I

    move/from16 v0, v28

    if-eq v4, v0, :cond_9

    const/16 v29, 0x1

    .line 1043
    .local v29, "stateChanged":Z
    :goto_2
    if-eqz v29, :cond_3

    .line 1044
    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/telecom/Call;->mState:I

    .line 1047
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getParentCallId()Ljava/lang/String;

    move-result-object v27

    .line 1048
    .local v27, "parentId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/telecom/Call;->mParentId:Ljava/lang/String;

    move-object/from16 v0, v27

    invoke-static {v4, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    const/16 v26, 0x1

    .line 1049
    .local v26, "parentChanged":Z
    :goto_3
    if-eqz v26, :cond_4

    .line 1050
    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/telecom/Call;->mParentId:Ljava/lang/String;

    .line 1053
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getChildCallIds()Ljava/util/List;

    move-result-object v19

    .line 1054
    .local v19, "childCallIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/telecom/Call;->mChildrenIds:Ljava/util/List;

    move-object/from16 v0, v19

    invoke-static {v0, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    const/16 v20, 0x1

    .line 1055
    .local v20, "childrenChanged":Z
    :goto_4
    if-eqz v20, :cond_5

    .line 1056
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/telecom/Call;->mChildrenIds:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 1057
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/telecom/Call;->mChildrenIds:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getChildCallIds()Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1058
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/telecom/Call;->mChildrenCached:Z

    .line 1061
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getConferenceableCallIds()Ljava/util/List;

    move-result-object v21

    .line 1062
    .local v21, "conferenceableCallIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v22, Ljava/util/ArrayList;

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v4

    move-object/from16 v0, v22

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1063
    .local v22, "conferenceableCalls":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Call;>;"
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .local v24, "i$":Ljava/util/Iterator;
    :cond_6
    :goto_5
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    .line 1064
    .local v25, "otherId":Ljava/lang/String;
    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1065
    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1023
    .end local v2    # "cannedTextResponsesChanged":Z
    .end local v19    # "childCallIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v20    # "childrenChanged":Z
    .end local v21    # "conferenceableCallIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v22    # "conferenceableCalls":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Call;>;"
    .end local v23    # "detailsChanged":Z
    .end local v24    # "i$":Ljava/util/Iterator;
    .end local v25    # "otherId":Ljava/lang/String;
    .end local v26    # "parentChanged":Z
    .end local v27    # "parentId":Ljava/lang/String;
    .end local v28    # "state":I
    .end local v29    # "stateChanged":Z
    .end local v30    # "videoCallChanged":Z
    :cond_7
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 1035
    .restart local v2    # "cannedTextResponsesChanged":Z
    .restart local v23    # "detailsChanged":Z
    :cond_8
    const/16 v30, 0x0

    goto/16 :goto_1

    .line 1042
    .restart local v28    # "state":I
    .restart local v30    # "videoCallChanged":Z
    :cond_9
    const/16 v29, 0x0

    goto/16 :goto_2

    .line 1048
    .restart local v27    # "parentId":Ljava/lang/String;
    .restart local v29    # "stateChanged":Z
    :cond_a
    const/16 v26, 0x0

    goto :goto_3

    .line 1054
    .restart local v19    # "childCallIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v26    # "parentChanged":Z
    :cond_b
    const/16 v20, 0x0

    goto :goto_4

    .line 1069
    .restart local v20    # "childrenChanged":Z
    .restart local v21    # "conferenceableCallIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v22    # "conferenceableCalls":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Call;>;"
    .restart local v24    # "i$":Ljava/util/Iterator;
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/telecom/Call;->mConferenceableCalls:Ljava/util/List;

    move-object/from16 v0, v22

    invoke-static {v4, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 1070
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/telecom/Call;->mConferenceableCalls:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 1071
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/telecom/Call;->mConferenceableCalls:Ljava/util/List;

    move-object/from16 v0, v22

    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1072
    invoke-direct/range {p0 .. p0}, Landroid/telecom/Call;->fireConferenceableCallsChanged()V

    .line 1078
    :cond_d
    if-eqz v29, :cond_e

    .line 1079
    move-object/from16 v0, p0

    iget v4, v0, Landroid/telecom/Call;->mState:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/telecom/Call;->fireStateChanged(I)V

    .line 1081
    :cond_e
    if-eqz v23, :cond_f

    .line 1082
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/telecom/Call;->fireDetailsChanged(Landroid/telecom/Call$Details;)V

    .line 1084
    :cond_f
    if-eqz v2, :cond_10

    .line 1085
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/telecom/Call;->mCannedTextResponses:Ljava/util/List;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/telecom/Call;->fireCannedTextResponsesLoaded(Ljava/util/List;)V

    .line 1087
    :cond_10
    if-eqz v30, :cond_11

    .line 1088
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/telecom/Call;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/telecom/Call;->fireVideoCallChanged(Landroid/telecom/InCallService$VideoCall;)V

    .line 1090
    :cond_11
    if-eqz v26, :cond_12

    .line 1091
    invoke-virtual/range {p0 .. p0}, Landroid/telecom/Call;->getParent()Landroid/telecom/Call;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/telecom/Call;->fireParentChanged(Landroid/telecom/Call;)V

    .line 1093
    :cond_12
    if-eqz v20, :cond_13

    .line 1094
    invoke-virtual/range {p0 .. p0}, Landroid/telecom/Call;->getChildren()Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/telecom/Call;->fireChildrenChanged(Ljava/util/List;)V

    .line 1101
    :cond_13
    move-object/from16 v0, p0

    iget v4, v0, Landroid/telecom/Call;->mState:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_14

    .line 1102
    invoke-direct/range {p0 .. p0}, Landroid/telecom/Call;->fireCallDestroyed()V

    .line 1104
    :cond_14
    return-void
.end method

.method public mergeConference()V
    .locals 2

    .prologue
    .line 828
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telecom/InCallAdapter;->mergeConference(Ljava/lang/String;)V

    .line 829
    return-void
.end method

.method public phoneAccountSelected(Landroid/telecom/PhoneAccountHandle;Z)V
    .locals 2
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "setDefault"    # Z

    .prologue
    .line 801
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Landroid/telecom/InCallAdapter;->phoneAccountSelected(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Z)V

    .line 803
    return-void
.end method

.method public playDtmfTone(C)V
    .locals 2
    .param p1, "digit"    # C

    .prologue
    .line 760
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/telecom/InCallAdapter;->playDtmfTone(Ljava/lang/String;C)V

    .line 761
    return-void
.end method

.method public postDialContinue(Z)V
    .locals 2
    .param p1, "proceed"    # Z

    .prologue
    .line 793
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/telecom/InCallAdapter;->postDialContinue(Ljava/lang/String;Z)V

    .line 794
    return-void
.end method

.method public registerCallback(Landroid/telecom/Call$Callback;)V
    .locals 1
    .param p1, "callback"    # Landroid/telecom/Call$Callback;

    .prologue
    .line 931
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p0, p1, v0}, Landroid/telecom/Call;->registerCallback(Landroid/telecom/Call$Callback;Landroid/os/Handler;)V

    .line 932
    return-void
.end method

.method public registerCallback(Landroid/telecom/Call$Callback;Landroid/os/Handler;)V
    .locals 2
    .param p1, "callback"    # Landroid/telecom/Call$Callback;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 941
    invoke-virtual {p0, p1}, Landroid/telecom/Call;->unregisterCallback(Landroid/telecom/Call$Callback;)V

    .line 943
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget v0, p0, Landroid/telecom/Call;->mState:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    .line 944
    iget-object v0, p0, Landroid/telecom/Call;->mCallbackRecords:Ljava/util/List;

    new-instance v1, Landroid/telecom/CallbackRecord;

    invoke-direct {v1, p1, p2}, Landroid/telecom/CallbackRecord;-><init>(Ljava/lang/Object;Landroid/os/Handler;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 946
    :cond_0
    return-void
.end method

.method public reject(ZLjava/lang/String;)V
    .locals 2
    .param p1, "rejectWithMessage"    # Z
    .param p2, "textMessage"    # Ljava/lang/String;

    .prologue
    .line 727
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Landroid/telecom/InCallAdapter;->rejectCall(Ljava/lang/String;ZLjava/lang/String;)V

    .line 728
    return-void
.end method

.method public removeListener(Landroid/telecom/Call$Listener;)V
    .locals 0
    .param p1, "listener"    # Landroid/telecom/Call$Listener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 988
    invoke-virtual {p0, p1}, Landroid/telecom/Call;->unregisterCallback(Landroid/telecom/Call$Callback;)V

    .line 989
    return-void
.end method

.method public splitFromConference()V
    .locals 2

    .prologue
    .line 821
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telecom/InCallAdapter;->splitFromConference(Ljava/lang/String;)V

    .line 822
    return-void
.end method

.method public stopDtmfTone()V
    .locals 2

    .prologue
    .line 771
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telecom/InCallAdapter;->stopDtmfTone(Ljava/lang/String;)V

    .line 772
    return-void
.end method

.method public swapConference()V
    .locals 2

    .prologue
    .line 835
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telecom/InCallAdapter;->swapConference(Ljava/lang/String;)V

    .line 836
    return-void
.end method

.method public unhold()V
    .locals 2

    .prologue
    .line 748
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telecom/InCallAdapter;->unholdCall(Ljava/lang/String;)V

    .line 749
    return-void
.end method

.method public unregisterCallback(Landroid/telecom/Call$Callback;)V
    .locals 4
    .param p1, "callback"    # Landroid/telecom/Call$Callback;

    .prologue
    .line 955
    if-eqz p1, :cond_1

    iget v2, p0, Landroid/telecom/Call;->mState:I

    const/4 v3, 0x7

    if-eq v2, v3, :cond_1

    .line 956
    iget-object v2, p0, Landroid/telecom/Call;->mCallbackRecords:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/CallbackRecord;

    .line 957
    .local v1, "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 958
    iget-object v2, p0, Landroid/telecom/Call;->mCallbackRecords:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 963
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    :cond_1
    return-void
.end method
