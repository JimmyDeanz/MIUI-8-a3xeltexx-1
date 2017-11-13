.class Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment$2;
.super Ljava/lang/Object;
.source "SmartCoverAnswerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment$2;->this$0:Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 226
    iget-object v1, p0, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment$2;->this$0:Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;

    invoke-virtual {v1}, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    .line 227
    .local v0, "inCallActivity":Lcom/android/incallui/InCallActivity;
    if-eqz v0, :cond_0

    .line 228
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallActivity;->showConferenceFragment(Z)V

    .line 230
    :cond_0
    return-void
.end method
