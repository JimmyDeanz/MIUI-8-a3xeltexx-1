.class Lcom/android/incallui/InCallPresenter$21;
.super Ljava/lang/Object;
.source "InCallPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/InCallPresenter;->livetalkRedial(ZLjava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/InCallPresenter;

.field final synthetic val$isRegularOnly:Z

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$number:Ljava/lang/String;

.field final synthetic val$slotId:I


# direct methods
.method constructor <init>(Lcom/android/incallui/InCallPresenter;Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 0

    .prologue
    .line 634
    iput-object p1, p0, Lcom/android/incallui/InCallPresenter$21;->this$0:Lcom/android/incallui/InCallPresenter;

    iput-object p2, p0, Lcom/android/incallui/InCallPresenter$21;->val$number:Ljava/lang/String;

    iput p3, p0, Lcom/android/incallui/InCallPresenter$21;->val$slotId:I

    iput-object p4, p0, Lcom/android/incallui/InCallPresenter$21;->val$name:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/android/incallui/InCallPresenter$21;->val$isRegularOnly:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 637
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 638
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "tel"

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter$21;->val$number:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 639
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 640
    sget-object v1, Lmiui/telephony/SubscriptionManager;->SLOT_KEY:Ljava/lang/String;

    iget v2, p0, Lcom/android/incallui/InCallPresenter$21;->val$slotId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 641
    const-string v1, "android.phone.extra.CONTACT_NAME"

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter$21;->val$name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 642
    const-string v1, "only_regular_call"

    iget-boolean v2, p0, Lcom/android/incallui/InCallPresenter$21;->val$isRegularOnly:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 643
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/incallui/InCallApp;->startActivity(Landroid/content/Intent;)V

    .line 644
    return-void
.end method
