.class Lcom/android/services/telephony/sip/MiuiSipEditor$2;
.super Ljava/lang/Object;
.source "MiuiSipEditor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/services/telephony/sip/MiuiSipEditor;->replaceProfile(Landroid/net/sip/SipProfile;Landroid/net/sip/SipProfile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/services/telephony/sip/MiuiSipEditor;

.field final synthetic val$isEnable:Z

.field final synthetic val$newProfile:Landroid/net/sip/SipProfile;

.field final synthetic val$oldProfile:Landroid/net/sip/SipProfile;


# direct methods
.method constructor <init>(Lcom/android/services/telephony/sip/MiuiSipEditor;Landroid/net/sip/SipProfile;Landroid/net/sip/SipProfile;Z)V
    .locals 0

    .prologue
    .line 387
    iput-object p1, p0, Lcom/android/services/telephony/sip/MiuiSipEditor$2;->this$0:Lcom/android/services/telephony/sip/MiuiSipEditor;

    iput-object p2, p0, Lcom/android/services/telephony/sip/MiuiSipEditor$2;->val$oldProfile:Landroid/net/sip/SipProfile;

    iput-object p3, p0, Lcom/android/services/telephony/sip/MiuiSipEditor$2;->val$newProfile:Landroid/net/sip/SipProfile;

    iput-boolean p4, p0, Lcom/android/services/telephony/sip/MiuiSipEditor$2;->val$isEnable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 390
    :try_start_0
    iget-object v1, p0, Lcom/android/services/telephony/sip/MiuiSipEditor$2;->this$0:Lcom/android/services/telephony/sip/MiuiSipEditor;

    iget-object v2, p0, Lcom/android/services/telephony/sip/MiuiSipEditor$2;->val$oldProfile:Landroid/net/sip/SipProfile;

    # invokes: Lcom/android/services/telephony/sip/MiuiSipEditor;->deleteAndUnregisterProfile(Landroid/net/sip/SipProfile;)V
    invoke-static {v1, v2}, Lcom/android/services/telephony/sip/MiuiSipEditor;->access$200(Lcom/android/services/telephony/sip/MiuiSipEditor;Landroid/net/sip/SipProfile;)V

    .line 391
    iget-object v2, p0, Lcom/android/services/telephony/sip/MiuiSipEditor$2;->this$0:Lcom/android/services/telephony/sip/MiuiSipEditor;

    iget-object v3, p0, Lcom/android/services/telephony/sip/MiuiSipEditor$2;->val$newProfile:Landroid/net/sip/SipProfile;

    iget-object v1, p0, Lcom/android/services/telephony/sip/MiuiSipEditor$2;->val$oldProfile:Landroid/net/sip/SipProfile;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/services/telephony/sip/MiuiSipEditor$2;->val$isEnable:Z

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    # invokes: Lcom/android/services/telephony/sip/MiuiSipEditor;->saveAndRegisterProfile(Landroid/net/sip/SipProfile;Z)V
    invoke-static {v2, v3, v1}, Lcom/android/services/telephony/sip/MiuiSipEditor;->access$300(Lcom/android/services/telephony/sip/MiuiSipEditor;Landroid/net/sip/SipProfile;Z)V

    .line 392
    iget-object v1, p0, Lcom/android/services/telephony/sip/MiuiSipEditor$2;->this$0:Lcom/android/services/telephony/sip/MiuiSipEditor;

    invoke-virtual {v1}, Lcom/android/services/telephony/sip/MiuiSipEditor;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 397
    :goto_1
    return-void

    .line 391
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 393
    :catch_0
    move-exception v0

    .line 394
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "replaceProfile, can not save/register new SipProfile, exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/services/telephony/sip/MiuiSipEditor;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/services/telephony/sip/MiuiSipEditor;->access$400(Ljava/lang/String;)V

    .line 395
    iget-object v1, p0, Lcom/android/services/telephony/sip/MiuiSipEditor$2;->this$0:Lcom/android/services/telephony/sip/MiuiSipEditor;

    # invokes: Lcom/android/services/telephony/sip/MiuiSipEditor;->showAlert(Ljava/lang/Throwable;)V
    invoke-static {v1, v0}, Lcom/android/services/telephony/sip/MiuiSipEditor;->access$500(Lcom/android/services/telephony/sip/MiuiSipEditor;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
