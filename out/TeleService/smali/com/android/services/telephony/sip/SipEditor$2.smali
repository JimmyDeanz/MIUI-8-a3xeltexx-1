.class Lcom/android/services/telephony/sip/SipEditor$2;
.super Ljava/lang/Object;
.source "SipEditor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/services/telephony/sip/SipEditor;->replaceProfile(Landroid/net/sip/SipProfile;Landroid/net/sip/SipProfile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/services/telephony/sip/SipEditor;

.field final synthetic val$newProfile:Landroid/net/sip/SipProfile;

.field final synthetic val$oldProfile:Landroid/net/sip/SipProfile;


# direct methods
.method constructor <init>(Lcom/android/services/telephony/sip/SipEditor;Landroid/net/sip/SipProfile;Landroid/net/sip/SipProfile;)V
    .locals 0

    .prologue
    .line 372
    iput-object p1, p0, Lcom/android/services/telephony/sip/SipEditor$2;->this$0:Lcom/android/services/telephony/sip/SipEditor;

    iput-object p2, p0, Lcom/android/services/telephony/sip/SipEditor$2;->val$oldProfile:Landroid/net/sip/SipProfile;

    iput-object p3, p0, Lcom/android/services/telephony/sip/SipEditor$2;->val$newProfile:Landroid/net/sip/SipProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 375
    :try_start_0
    iget-object v2, p0, Lcom/android/services/telephony/sip/SipEditor$2;->this$0:Lcom/android/services/telephony/sip/SipEditor;

    iget-object v3, p0, Lcom/android/services/telephony/sip/SipEditor$2;->val$oldProfile:Landroid/net/sip/SipProfile;

    # invokes: Lcom/android/services/telephony/sip/SipEditor;->deleteAndUnregisterProfile(Landroid/net/sip/SipProfile;)V
    invoke-static {v2, v3}, Lcom/android/services/telephony/sip/SipEditor;->access$200(Lcom/android/services/telephony/sip/SipEditor;Landroid/net/sip/SipProfile;)V

    .line 376
    iget-object v2, p0, Lcom/android/services/telephony/sip/SipEditor$2;->val$oldProfile:Landroid/net/sip/SipProfile;

    if-nez v2, :cond_0

    const/4 v0, 0x1

    .line 377
    .local v0, "autoEnableNewProfile":Z
    :goto_0
    iget-object v2, p0, Lcom/android/services/telephony/sip/SipEditor$2;->this$0:Lcom/android/services/telephony/sip/SipEditor;

    iget-object v3, p0, Lcom/android/services/telephony/sip/SipEditor$2;->val$newProfile:Landroid/net/sip/SipProfile;

    # invokes: Lcom/android/services/telephony/sip/SipEditor;->saveAndRegisterProfile(Landroid/net/sip/SipProfile;Z)V
    invoke-static {v2, v3, v0}, Lcom/android/services/telephony/sip/SipEditor;->access$300(Lcom/android/services/telephony/sip/SipEditor;Landroid/net/sip/SipProfile;Z)V

    .line 378
    iget-object v2, p0, Lcom/android/services/telephony/sip/SipEditor$2;->this$0:Lcom/android/services/telephony/sip/SipEditor;

    invoke-virtual {v2}, Lcom/android/services/telephony/sip/SipEditor;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 383
    .end local v0    # "autoEnableNewProfile":Z
    :goto_1
    return-void

    .line 376
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 379
    :catch_0
    move-exception v1

    .line 380
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "replaceProfile, can not save/register new SipProfile, exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/services/telephony/sip/SipEditor;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/services/telephony/sip/SipEditor;->access$400(Ljava/lang/String;)V

    .line 381
    iget-object v2, p0, Lcom/android/services/telephony/sip/SipEditor$2;->this$0:Lcom/android/services/telephony/sip/SipEditor;

    # invokes: Lcom/android/services/telephony/sip/SipEditor;->showAlert(Ljava/lang/Throwable;)V
    invoke-static {v2, v1}, Lcom/android/services/telephony/sip/SipEditor;->access$500(Lcom/android/services/telephony/sip/SipEditor;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
