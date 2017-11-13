.class Lcom/android/incallui/InCallActivity$6;
.super Ljava/lang/Object;
.source "InCallActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/InCallActivity;->onSuppServiceFailed(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/InCallActivity;

.field final synthetic val$result:Lcom/android/incallui/InCallActivity$SuppService;


# direct methods
.method constructor <init>(Lcom/android/incallui/InCallActivity;Lcom/android/incallui/InCallActivity$SuppService;)V
    .locals 0

    .prologue
    .line 1104
    iput-object p1, p0, Lcom/android/incallui/InCallActivity$6;->this$0:Lcom/android/incallui/InCallActivity;

    iput-object p2, p0, Lcom/android/incallui/InCallActivity$6;->val$result:Lcom/android/incallui/InCallActivity$SuppService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1107
    iget-object v0, p0, Lcom/android/incallui/InCallActivity$6;->this$0:Lcom/android/incallui/InCallActivity;

    # invokes: Lcom/android/incallui/InCallActivity;->onDialogDismissed()V
    invoke-static {v0}, Lcom/android/incallui/InCallActivity;->access$200(Lcom/android/incallui/InCallActivity;)V

    .line 1108
    iget-object v0, p0, Lcom/android/incallui/InCallActivity$6;->val$result:Lcom/android/incallui/InCallActivity$SuppService;

    sget-object v1, Lcom/android/incallui/InCallActivity$SuppService;->SWITCH:Lcom/android/incallui/InCallActivity$SuppService;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity$6;->this$0:Lcom/android/incallui/InCallActivity;

    # getter for: Lcom/android/incallui/InCallActivity;->mCallToolsFragment:Lcom/android/incallui/CallToolsFragment;
    invoke-static {v0}, Lcom/android/incallui/InCallActivity;->access$300(Lcom/android/incallui/InCallActivity;)Lcom/android/incallui/CallToolsFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1109
    iget-object v0, p0, Lcom/android/incallui/InCallActivity$6;->this$0:Lcom/android/incallui/InCallActivity;

    # getter for: Lcom/android/incallui/InCallActivity;->mCallToolsFragment:Lcom/android/incallui/CallToolsFragment;
    invoke-static {v0}, Lcom/android/incallui/InCallActivity;->access$300(Lcom/android/incallui/InCallActivity;)Lcom/android/incallui/CallToolsFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallToolsFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallToolsPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallToolsPresenter;->updateHold()V

    .line 1111
    :cond_0
    return-void
.end method
