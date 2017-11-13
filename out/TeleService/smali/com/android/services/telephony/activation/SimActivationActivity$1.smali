.class Lcom/android/services/telephony/activation/SimActivationActivity$1;
.super Ljava/lang/Object;
.source "SimActivationActivity.java"

# interfaces
.implements Lcom/android/services/telephony/activation/SimActivationManager$Response;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/services/telephony/activation/SimActivationActivity;->runActivation(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/services/telephony/activation/SimActivationActivity;

.field final synthetic val$response:Landroid/app/PendingIntent;


# direct methods
.method constructor <init>(Lcom/android/services/telephony/activation/SimActivationActivity;Landroid/app/PendingIntent;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/services/telephony/activation/SimActivationActivity$1;->this$0:Lcom/android/services/telephony/activation/SimActivationActivity;

    iput-object p2, p0, Lcom/android/services/telephony/activation/SimActivationActivity$1;->val$response:Landroid/app/PendingIntent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(I)V
    .locals 3
    .param p1, "status"    # I

    .prologue
    .line 59
    iget-object v1, p0, Lcom/android/services/telephony/activation/SimActivationActivity$1;->val$response:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    .line 61
    :try_start_0
    iget-object v1, p0, Lcom/android/services/telephony/activation/SimActivationActivity$1;->val$response:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    const-string v1, "Could not respond to SIM Activation."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/services/telephony/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
