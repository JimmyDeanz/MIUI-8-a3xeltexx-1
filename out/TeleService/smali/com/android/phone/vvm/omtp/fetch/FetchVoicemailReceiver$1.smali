.class Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver$1;
.super Ljava/lang/Object;
.source "FetchVoicemailReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;->fetchVoicemail(Landroid/net/Network;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;

.field final synthetic val$network:Landroid/net/Network;


# direct methods
.method constructor <init>(Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;Landroid/net/Network;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver$1;->this$0:Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;

    iput-object p2, p0, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver$1;->val$network:Landroid/net/Network;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 159
    :goto_0
    iget-object v2, p0, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver$1;->this$0:Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;

    # getter for: Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;->mRetryCount:I
    invoke-static {v2}, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;->access$300(Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;)I

    move-result v2

    if-lez v2, :cond_0

    .line 160
    new-instance v0, Lcom/android/phone/vvm/omtp/imap/ImapHelper;

    iget-object v2, p0, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver$1;->this$0:Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;

    # getter for: Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;->access$400(Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver$1;->this$0:Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;

    # getter for: Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;
    invoke-static {v3}, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;->access$500(Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver$1;->val$network:Landroid/net/Network;

    invoke-direct {v0, v2, v3, v4}, Lcom/android/phone/vvm/omtp/imap/ImapHelper;-><init>(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;Landroid/net/Network;)V

    .line 161
    .local v0, "imapHelper":Lcom/android/phone/vvm/omtp/imap/ImapHelper;
    invoke-virtual {v0}, Lcom/android/phone/vvm/omtp/imap/ImapHelper;->isSuccessfullyInitialized()Z

    move-result v2

    if-nez v2, :cond_1

    .line 162
    const-string v2, "FetchVoicemailReceiver"

    const-string v3, "Can\'t retrieve Imap credentials."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v2, p0, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver$1;->this$0:Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;

    # invokes: Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;->releaseNetwork()V
    invoke-static {v2}, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;->access$200(Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;)V

    .line 177
    .end local v0    # "imapHelper":Lcom/android/phone/vvm/omtp/imap/ImapHelper;
    :cond_0
    :goto_1
    return-void

    .line 168
    .restart local v0    # "imapHelper":Lcom/android/phone/vvm/omtp/imap/ImapHelper;
    :cond_1
    new-instance v2, Lcom/android/phone/vvm/omtp/fetch/VoicemailFetchedCallback;

    iget-object v3, p0, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver$1;->this$0:Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;

    # getter for: Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;->access$400(Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver$1;->this$0:Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;

    # getter for: Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;->mUri:Landroid/net/Uri;
    invoke-static {v4}, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;->access$600(Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/phone/vvm/omtp/fetch/VoicemailFetchedCallback;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object v3, p0, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver$1;->this$0:Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;

    # getter for: Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;->mUid:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;->access$700(Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/phone/vvm/omtp/imap/ImapHelper;->fetchVoicemailPayload(Lcom/android/phone/vvm/omtp/fetch/VoicemailFetchedCallback;Ljava/lang/String;)Z

    move-result v1

    .line 170
    .local v1, "success":Z
    if-nez v1, :cond_2

    iget-object v2, p0, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver$1;->this$0:Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;

    # getter for: Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;->mRetryCount:I
    invoke-static {v2}, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;->access$300(Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;)I

    move-result v2

    if-lez v2, :cond_2

    .line 171
    iget-object v2, p0, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver$1;->this$0:Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;

    # operator-- for: Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;->mRetryCount:I
    invoke-static {v2}, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;->access$310(Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;)I

    goto :goto_0

    .line 173
    :cond_2
    iget-object v2, p0, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver$1;->this$0:Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;

    # invokes: Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;->releaseNetwork()V
    invoke-static {v2}, Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;->access$200(Lcom/android/phone/vvm/omtp/fetch/FetchVoicemailReceiver;)V

    goto :goto_1
.end method
