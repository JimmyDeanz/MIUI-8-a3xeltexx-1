.class Lcom/android/server/policy/GlobalActions$17;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/GlobalActions;->createDialog()Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/GlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GlobalActions;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$17;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$17;->this$0:Lcom/android/server/policy/GlobalActions;

    const-string v3, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    const-string v4, "getSealedState"

    iget-object v5, p0, Lcom/android/server/policy/GlobalActions$17;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mTempStringArray:[Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/policy/GlobalActions;->access$3500(Lcom/android/server/policy/GlobalActions;)[Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/server/policy/GlobalActions;->isEDM(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v3, v4, v5}, Lcom/android/server/policy/GlobalActions;->access$3600(Lcom/android/server/policy/GlobalActions;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0x18

    if-ne p2, v2, :cond_1

    # getter for: Lcom/android/server/policy/GlobalActions;->mProKioskOptionShown:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$5100()Z

    move-result v2

    if-nez v2, :cond_1

    # setter for: Lcom/android/server/policy/GlobalActions;->mProKioskOptionShown:Z
    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->access$5102(Z)Z

    # getter for: Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$700()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$17;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mLinearLayout:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/android/server/policy/GlobalActions;->access$5400(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions$17;->this$0:Lcom/android/server/policy/GlobalActions;

    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$17;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mProKioskToggle:Lcom/android/server/policy/GlobalActions$ToggleAction;
    invoke-static {v4}, Lcom/android/server/policy/GlobalActions;->access$5200(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$ToggleAction;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/policy/GlobalActions$17;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;
    invoke-static {v5}, Lcom/android/server/policy/GlobalActions;->access$5000(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$MyAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v5

    # invokes: Lcom/android/server/policy/GlobalActions;->makeActionsItem(Lcom/android/server/policy/GlobalActions$Action;IZ)Landroid/view/View;
    invoke-static {v3, v4, v5, v0}, Lcom/android/server/policy/GlobalActions;->access$5300(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$Action;IZ)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$17;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mLandscapeLinearLayout:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/android/server/policy/GlobalActions;->access$5500(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions$17;->this$0:Lcom/android/server/policy/GlobalActions;

    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$17;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mProKioskToggle:Lcom/android/server/policy/GlobalActions$ToggleAction;
    invoke-static {v4}, Lcom/android/server/policy/GlobalActions;->access$5200(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$ToggleAction;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/policy/GlobalActions$17;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;
    invoke-static {v5}, Lcom/android/server/policy/GlobalActions;->access$5000(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$MyAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v5

    # invokes: Lcom/android/server/policy/GlobalActions;->makeActionsItem(Lcom/android/server/policy/GlobalActions$Action;IZ)Landroid/view/View;
    invoke-static {v3, v4, v5, v1}, Lcom/android/server/policy/GlobalActions;->access$5300(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$Action;IZ)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$17;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/policy/GlobalActions;->access$5700(Lcom/android/server/policy/GlobalActions;)Ljava/util/ArrayList;

    move-result-object v1

    # getter for: Lcom/android/server/policy/GlobalActions;->mProKioskMenuPosition:I
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$5600()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions$17;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mProKioskToggle:Lcom/android/server/policy/GlobalActions$ToggleAction;
    invoke-static {v3}, Lcom/android/server/policy/GlobalActions;->access$5200(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$ToggleAction;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_0
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$17;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/policy/GlobalActions;->access$400(Lcom/android/server/policy/GlobalActions;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_1
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$17;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mItems:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/policy/GlobalActions;->access$5700(Lcom/android/server/policy/GlobalActions;)Ljava/util/ArrayList;

    move-result-object v1

    # getter for: Lcom/android/server/policy/GlobalActions;->mProKioskMenuPosition:I
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$5600()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions$17;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mProKioskToggle:Lcom/android/server/policy/GlobalActions$ToggleAction;
    invoke-static {v3}, Lcom/android/server/policy/GlobalActions;->access$5200(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$ToggleAction;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method
