.class Lcom/android/incallui/InCallActivity$10;
.super Ljava/lang/Object;
.source "InCallActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/InCallActivity;->createVoiceMailMissDialog(Lcom/android/incallui/Call;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/InCallActivity;

.field final synthetic val$call:Lcom/android/incallui/Call;


# direct methods
.method constructor <init>(Lcom/android/incallui/InCallActivity;Lcom/android/incallui/Call;)V
    .locals 0

    .prologue
    .line 1177
    iput-object p1, p0, Lcom/android/incallui/InCallActivity$10;->this$0:Lcom/android/incallui/InCallActivity;

    iput-object p2, p0, Lcom/android/incallui/InCallActivity$10;->val$call:Lcom/android/incallui/Call;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1180
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1181
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.settings.VoicemailSetting"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1182
    iget-object v1, p0, Lcom/android/incallui/InCallActivity$10;->val$call:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getSlotId()I

    move-result v1

    invoke-static {v0, v1}, Lmiui/telephony/SubscriptionManager;->putSlotIdExtra(Landroid/content/Intent;I)V

    .line 1183
    iget-object v1, p0, Lcom/android/incallui/InCallActivity$10;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1, v0}, Lcom/android/incallui/InCallActivity;->startActivity(Landroid/content/Intent;)V

    .line 1184
    iget-object v1, p0, Lcom/android/incallui/InCallActivity$10;->this$0:Lcom/android/incallui/InCallActivity;

    # invokes: Lcom/android/incallui/InCallActivity;->onDialogDismissed()V
    invoke-static {v1}, Lcom/android/incallui/InCallActivity;->access$200(Lcom/android/incallui/InCallActivity;)V

    .line 1185
    return-void
.end method
