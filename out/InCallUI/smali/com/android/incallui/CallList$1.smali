.class Lcom/android/incallui/CallList$1;
.super Landroid/telecom/Phone$Listener;
.source "CallList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/CallList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/CallList;


# direct methods
.method constructor <init>(Lcom/android/incallui/CallList;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/incallui/CallList$1;->this$0:Lcom/android/incallui/CallList;

    invoke-direct {p0}, Landroid/telecom/Phone$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallAdded(Landroid/telecom/Phone;Landroid/telecom/Call;)V
    .locals 4
    .param p1, "phone"    # Landroid/telecom/Phone;
    .param p2, "telecommCall"    # Landroid/telecom/Call;

    .prologue
    .line 96
    new-instance v1, Lcom/android/incallui/Call;

    invoke-direct {v1, p2}, Lcom/android/incallui/Call;-><init>(Landroid/telecom/Call;)V

    .line 97
    .local v1, "call":Lcom/android/incallui/Call;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCallAdded: callState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    invoke-static {}, Lcom/android/incallui/ContactInfoCache;->getInstance()Lcom/android/incallui/ContactInfoCache;

    move-result-object v0

    .line 100
    .local v0, "cache":Lcom/android/incallui/ContactInfoCache;
    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    .line 102
    :cond_0
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/incallui/CallList$1;->this$0:Lcom/android/incallui/CallList;

    # getter for: Lcom/android/incallui/CallList;->mCallback:Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;
    invoke-static {v3}, Lcom/android/incallui/CallList;->access$000(Lcom/android/incallui/CallList;)Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/incallui/ContactInfoCache;->findInfo(Lcom/android/incallui/Call;ZLcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;)V

    .line 103
    iget-object v2, p0, Lcom/android/incallui/CallList$1;->this$0:Lcom/android/incallui/CallList;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getCannedSmsResponses()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/android/incallui/CallList;->onIncoming(Lcom/android/incallui/Call;Ljava/util/List;)V

    .line 108
    :goto_0
    return-void

    .line 105
    :cond_1
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/incallui/CallList$1;->this$0:Lcom/android/incallui/CallList;

    # getter for: Lcom/android/incallui/CallList;->mCallback:Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;
    invoke-static {v3}, Lcom/android/incallui/CallList;->access$000(Lcom/android/incallui/CallList;)Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/incallui/ContactInfoCache;->findInfo(Lcom/android/incallui/Call;ZLcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;)V

    .line 106
    iget-object v2, p0, Lcom/android/incallui/CallList$1;->this$0:Lcom/android/incallui/CallList;

    invoke-virtual {v2, v1}, Lcom/android/incallui/CallList;->onUpdate(Lcom/android/incallui/Call;)V

    goto :goto_0
.end method

.method public onCallRemoved(Landroid/telecom/Phone;Landroid/telecom/Call;)V
    .locals 3
    .param p1, "phone"    # Landroid/telecom/Phone;
    .param p2, "telecommCall"    # Landroid/telecom/Call;

    .prologue
    .line 111
    iget-object v1, p0, Lcom/android/incallui/CallList$1;->this$0:Lcom/android/incallui/CallList;

    # getter for: Lcom/android/incallui/CallList;->mCallByTelecommCall:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/incallui/CallList;->access$100(Lcom/android/incallui/CallList;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 112
    iget-object v1, p0, Lcom/android/incallui/CallList$1;->this$0:Lcom/android/incallui/CallList;

    # getter for: Lcom/android/incallui/CallList;->mCallByTelecommCall:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/incallui/CallList;->access$100(Lcom/android/incallui/CallList;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/Call;

    .line 113
    .local v0, "call":Lcom/android/incallui/Call;
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/android/incallui/Call;->setState(I)V

    .line 114
    new-instance v1, Landroid/telecom/DisconnectCause;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/telecom/DisconnectCause;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/incallui/Call;->setDisconnectCause(Landroid/telecom/DisconnectCause;)V

    .line 115
    iget-object v1, p0, Lcom/android/incallui/CallList$1;->this$0:Lcom/android/incallui/CallList;

    # invokes: Lcom/android/incallui/CallList;->updateCallInMap(Lcom/android/incallui/Call;)Z
    invoke-static {v1, v0}, Lcom/android/incallui/CallList;->access$200(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing call not previously disconnected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/CallList$1;->this$0:Lcom/android/incallui/CallList;

    const/4 v2, 0x0

    # invokes: Lcom/android/incallui/CallList;->updateCallTextMap(Lcom/android/incallui/Call;Ljava/util/List;)V
    invoke-static {v1, v0, v2}, Lcom/android/incallui/CallList;->access$300(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Ljava/util/List;)V

    .line 120
    .end local v0    # "call":Lcom/android/incallui/Call;
    :cond_1
    return-void
.end method
