.class Lcom/android/services/telephony/sip/SipConnectionService$1;
.super Ljava/lang/Object;
.source "SipConnectionService.java"

# interfaces
.implements Lcom/android/services/telephony/sip/SipConnectionService$IProfileFinderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/services/telephony/sip/SipConnectionService;->onCreateOutgoingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/services/telephony/sip/SipConnectionService;

.field final synthetic val$connection:Lcom/android/services/telephony/sip/SipConnection;

.field final synthetic val$request:Landroid/telecom/ConnectionRequest;


# direct methods
.method constructor <init>(Lcom/android/services/telephony/sip/SipConnectionService;Lcom/android/services/telephony/sip/SipConnection;Landroid/telecom/ConnectionRequest;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/services/telephony/sip/SipConnectionService$1;->this$0:Lcom/android/services/telephony/sip/SipConnectionService;

    iput-object p2, p0, Lcom/android/services/telephony/sip/SipConnectionService$1;->val$connection:Lcom/android/services/telephony/sip/SipConnection;

    iput-object p3, p0, Lcom/android/services/telephony/sip/SipConnectionService$1;->val$request:Landroid/telecom/ConnectionRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFound(Landroid/net/sip/SipProfile;)V
    .locals 4
    .param p1, "profile"    # Landroid/net/sip/SipProfile;

    .prologue
    const/16 v3, 0x2b

    .line 117
    if-nez p1, :cond_0

    .line 118
    iget-object v1, p0, Lcom/android/services/telephony/sip/SipConnectionService$1;->val$connection:Lcom/android/services/telephony/sip/SipConnection;

    const-string v2, "SIP profile not found."

    invoke-static {v3, v2}, Lcom/android/services/telephony/DisconnectCauseUtil;->toTelecomDisconnectCause(ILjava/lang/String;)Landroid/telecom/DisconnectCause;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/services/telephony/sip/SipConnection;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    .line 120
    iget-object v1, p0, Lcom/android/services/telephony/sip/SipConnectionService$1;->val$connection:Lcom/android/services/telephony/sip/SipConnection;

    invoke-virtual {v1}, Lcom/android/services/telephony/sip/SipConnection;->destroy()V

    .line 133
    :goto_0
    return-void

    .line 122
    :cond_0
    iget-object v1, p0, Lcom/android/services/telephony/sip/SipConnectionService$1;->this$0:Lcom/android/services/telephony/sip/SipConnectionService;

    iget-object v2, p0, Lcom/android/services/telephony/sip/SipConnectionService$1;->val$request:Landroid/telecom/ConnectionRequest;

    # invokes: Lcom/android/services/telephony/sip/SipConnectionService;->createConnectionForProfile(Landroid/net/sip/SipProfile;Landroid/telecom/ConnectionRequest;)Lcom/android/internal/telephony/Connection;
    invoke-static {v1, p1, v2}, Lcom/android/services/telephony/sip/SipConnectionService;->access$000(Lcom/android/services/telephony/sip/SipConnectionService;Landroid/net/sip/SipProfile;Landroid/telecom/ConnectionRequest;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 124
    .local v0, "chosenConnection":Lcom/android/internal/telephony/Connection;
    if-nez v0, :cond_1

    .line 125
    iget-object v1, p0, Lcom/android/services/telephony/sip/SipConnectionService$1;->val$connection:Lcom/android/services/telephony/sip/SipConnection;

    const-string v2, "Connection failed."

    invoke-static {v3, v2}, Lcom/android/services/telephony/DisconnectCauseUtil;->toTelecomDisconnectCause(ILjava/lang/String;)Landroid/telecom/DisconnectCause;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/services/telephony/sip/SipConnection;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    .line 127
    iget-object v1, p0, Lcom/android/services/telephony/sip/SipConnectionService$1;->val$connection:Lcom/android/services/telephony/sip/SipConnection;

    invoke-virtual {v1}, Lcom/android/services/telephony/sip/SipConnection;->destroy()V

    goto :goto_0

    .line 130
    :cond_1
    iget-object v1, p0, Lcom/android/services/telephony/sip/SipConnectionService$1;->val$connection:Lcom/android/services/telephony/sip/SipConnection;

    invoke-virtual {v1, v0}, Lcom/android/services/telephony/sip/SipConnection;->initialize(Lcom/android/internal/telephony/Connection;)V

    goto :goto_0
.end method
