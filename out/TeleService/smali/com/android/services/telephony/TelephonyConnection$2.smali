.class Lcom/android/services/telephony/TelephonyConnection$2;
.super Ljava/lang/Object;
.source "TelephonyConnection.java"

# interfaces
.implements Lcom/android/internal/telephony/Connection$PostDialListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/services/telephony/TelephonyConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/services/telephony/TelephonyConnection;


# direct methods
.method constructor <init>(Lcom/android/services/telephony/TelephonyConnection;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/services/telephony/TelephonyConnection$2;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPostDialChar(C)V
    .locals 5
    .param p1, "c"    # C

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection$2;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    const-string v1, "onPostDialChar: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection$2;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    # getter for: Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;
    invoke-static {v0}, Lcom/android/services/telephony/TelephonyConnection;->access$000(Lcom/android/services/telephony/TelephonyConnection;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection$2;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {v0, p1}, Lcom/android/services/telephony/TelephonyConnection;->setNextPostDialChar(C)V

    .line 165
    :cond_0
    return-void
.end method

.method public onPostDialWait()V
    .locals 3

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection$2;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    const-string v1, "onPostDialWait"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection$2;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    # getter for: Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;
    invoke-static {v0}, Lcom/android/services/telephony/TelephonyConnection;->access$000(Lcom/android/services/telephony/TelephonyConnection;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection$2;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnection$2;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    # getter for: Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;
    invoke-static {v1}, Lcom/android/services/telephony/TelephonyConnection;->access$000(Lcom/android/services/telephony/TelephonyConnection;)Lcom/android/internal/telephony/Connection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getRemainingPostDialString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/services/telephony/TelephonyConnection;->setPostDialWait(Ljava/lang/String;)V

    .line 157
    :cond_0
    return-void
.end method
