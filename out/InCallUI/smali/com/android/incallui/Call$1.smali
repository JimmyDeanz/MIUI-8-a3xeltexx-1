.class Lcom/android/incallui/Call$1;
.super Landroid/telecom/Call$Listener;
.source "Call.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/Call;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/Call;


# direct methods
.method constructor <init>(Lcom/android/incallui/Call;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/incallui/Call$1;->this$0:Lcom/android/incallui/Call;

    invoke-direct {p0}, Landroid/telecom/Call$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallDestroyed(Landroid/telecom/Call;)V
    .locals 2
    .param p1, "call"    # Landroid/telecom/Call;

    .prologue
    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TelecommCallListener onStateChanged call="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/android/incallui/Call$1;->this$0:Lcom/android/incallui/Call;

    # getter for: Lcom/android/incallui/Call;->mTelecommCallListener:Landroid/telecom/Call$Listener;
    invoke-static {v0}, Lcom/android/incallui/Call;->access$100(Lcom/android/incallui/Call;)Landroid/telecom/Call$Listener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/telecom/Call;->removeListener(Landroid/telecom/Call$Listener;)V

    .line 199
    return-void
.end method

.method public onCannedTextResponsesLoaded(Landroid/telecom/Call;Ljava/util/List;)V
    .locals 2
    .param p1, "call"    # Landroid/telecom/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/Call;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 174
    .local p2, "cannedTextResponses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TelecommCallListener onStateChanged call="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cannedTextResponses="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/android/incallui/Call$1;->this$0:Lcom/android/incallui/Call;

    # invokes: Lcom/android/incallui/Call;->update()V
    invoke-static {v0}, Lcom/android/incallui/Call;->access$000(Lcom/android/incallui/Call;)V

    .line 177
    return-void
.end method

.method public onChildrenChanged(Landroid/telecom/Call;Ljava/util/List;)V
    .locals 1
    .param p1, "call"    # Landroid/telecom/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/Call;",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Call;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 160
    .local p2, "children":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Call;>;"
    iget-object v0, p0, Lcom/android/incallui/Call$1;->this$0:Lcom/android/incallui/Call;

    # invokes: Lcom/android/incallui/Call;->update()V
    invoke-static {v0}, Lcom/android/incallui/Call;->access$000(Lcom/android/incallui/Call;)V

    .line 161
    return-void
.end method

.method public onConferenceableCallsChanged(Landroid/telecom/Call;Ljava/util/List;)V
    .locals 1
    .param p1, "call"    # Landroid/telecom/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/Call;",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Call;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 204
    .local p2, "conferenceableCalls":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Call;>;"
    iget-object v0, p0, Lcom/android/incallui/Call$1;->this$0:Lcom/android/incallui/Call;

    # invokes: Lcom/android/incallui/Call;->update()V
    invoke-static {v0}, Lcom/android/incallui/Call;->access$000(Lcom/android/incallui/Call;)V

    .line 205
    return-void
.end method

.method public onDetailsChanged(Landroid/telecom/Call;Landroid/telecom/Call$Details;)V
    .locals 2
    .param p1, "call"    # Landroid/telecom/Call;
    .param p2, "details"    # Landroid/telecom/Call$Details;

    .prologue
    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TelecommCallListener onStateChanged call="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " details="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/android/incallui/Call$1;->this$0:Lcom/android/incallui/Call;

    # invokes: Lcom/android/incallui/Call;->update()V
    invoke-static {v0}, Lcom/android/incallui/Call;->access$000(Lcom/android/incallui/Call;)V

    .line 169
    return-void
.end method

.method public onParentChanged(Landroid/telecom/Call;Landroid/telecom/Call;)V
    .locals 2
    .param p1, "call"    # Landroid/telecom/Call;
    .param p2, "newParent"    # Landroid/telecom/Call;

    .prologue
    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TelecommCallListener onParentChanged call="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " newParent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/android/incallui/Call$1;->this$0:Lcom/android/incallui/Call;

    # invokes: Lcom/android/incallui/Call;->update()V
    invoke-static {v0}, Lcom/android/incallui/Call;->access$000(Lcom/android/incallui/Call;)V

    .line 155
    return-void
.end method

.method public onPostDialWait(Landroid/telecom/Call;Ljava/lang/String;)V
    .locals 2
    .param p1, "call"    # Landroid/telecom/Call;
    .param p2, "remainingPostDialSequence"    # Ljava/lang/String;

    .prologue
    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TelecommCallListener onStateChanged call="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " remainingPostDialSequence="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/android/incallui/Call$1;->this$0:Lcom/android/incallui/Call;

    # invokes: Lcom/android/incallui/Call;->update()V
    invoke-static {v0}, Lcom/android/incallui/Call;->access$000(Lcom/android/incallui/Call;)V

    .line 185
    return-void
.end method

.method public onStateChanged(Landroid/telecom/Call;I)V
    .locals 2
    .param p1, "call"    # Landroid/telecom/Call;
    .param p2, "newState"    # I

    .prologue
    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TelecommCallListener onStateChanged call="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " newState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/android/incallui/Call$1;->this$0:Lcom/android/incallui/Call;

    # invokes: Lcom/android/incallui/Call;->update()V
    invoke-static {v0}, Lcom/android/incallui/Call;->access$000(Lcom/android/incallui/Call;)V

    .line 147
    return-void
.end method

.method public onVideoCallChanged(Landroid/telecom/Call;Landroid/telecom/InCallService$VideoCall;)V
    .locals 2
    .param p1, "call"    # Landroid/telecom/Call;
    .param p2, "videoCall"    # Landroid/telecom/InCallService$VideoCall;

    .prologue
    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TelecommCallListener onStateChanged call="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " videoCall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/android/incallui/Call$1;->this$0:Lcom/android/incallui/Call;

    # invokes: Lcom/android/incallui/Call;->update()V
    invoke-static {v0}, Lcom/android/incallui/Call;->access$000(Lcom/android/incallui/Call;)V

    .line 193
    return-void
.end method
