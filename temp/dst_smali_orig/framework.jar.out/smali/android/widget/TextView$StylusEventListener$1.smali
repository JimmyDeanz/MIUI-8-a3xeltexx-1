.class Landroid/widget/TextView$StylusEventListener$1;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/TextView$StylusEventListener;->onStylusButtonEvent(Landroid/view/MotionEvent;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/TextView$StylusEventListener;


# direct methods
.method constructor <init>(Landroid/widget/TextView$StylusEventListener;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/widget/TextView$StylusEventListener$1;->this$1:Landroid/widget/TextView$StylusEventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x0

    .local v2, "isPenSelected":Z
    iget-object v4, p0, Landroid/widget/TextView$StylusEventListener$1;->this$1:Landroid/widget/TextView$StylusEventListener;

    iget-object v4, v4, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTextForMultiSelection()Ljava/lang/CharSequence;

    move-result-object v3

    .local v3, "text":Ljava/lang/CharSequence;
    iget-object v4, p0, Landroid/widget/TextView$StylusEventListener$1;->this$1:Landroid/widget/TextView$StylusEventListener;

    iget-object v4, v4, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    iget-object v5, p0, Landroid/widget/TextView$StylusEventListener$1;->this$1:Landroid/widget/TextView$StylusEventListener;

    # getter for: Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I
    invoke-static {v5}, Landroid/widget/TextView$StylusEventListener;->access$4400(Landroid/widget/TextView$StylusEventListener;)I

    move-result v5

    iget-object v6, p0, Landroid/widget/TextView$StylusEventListener$1;->this$1:Landroid/widget/TextView$StylusEventListener;

    # getter for: Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I
    invoke-static {v6}, Landroid/widget/TextView$StylusEventListener;->access$4500(Landroid/widget/TextView$StylusEventListener;)I

    move-result v6

    # invokes: Landroid/widget/TextView;->selectCurrentWordForMultiSelection(II)Z
    invoke-static {v4, v5, v6}, Landroid/widget/TextView;->access$4600(Landroid/widget/TextView;II)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v5, p0, Landroid/widget/TextView$StylusEventListener$1;->this$1:Landroid/widget/TextView$StylusEventListener;

    move-object v4, v3

    check-cast v4, Landroid/text/Spannable;

    invoke-static {v4}, Landroid/text/MultiSelection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v4

    # setter for: Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I
    invoke-static {v5, v4}, Landroid/widget/TextView$StylusEventListener;->access$4402(Landroid/widget/TextView$StylusEventListener;I)I

    iget-object v5, p0, Landroid/widget/TextView$StylusEventListener$1;->this$1:Landroid/widget/TextView$StylusEventListener;

    move-object v4, v3

    check-cast v4, Landroid/text/Spannable;

    invoke-static {v4}, Landroid/text/MultiSelection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v4

    # setter for: Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I
    invoke-static {v5, v4}, Landroid/widget/TextView$StylusEventListener;->access$4502(Landroid/widget/TextView$StylusEventListener;I)I

    iget-object v4, p0, Landroid/widget/TextView$StylusEventListener$1;->this$1:Landroid/widget/TextView$StylusEventListener;

    iget-object v4, v4, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    # invokes: Landroid/widget/TextView;->showMultiSelectPopupWindow()V
    invoke-static {v4}, Landroid/widget/TextView;->access$4700(Landroid/widget/TextView;)V

    :try_start_0
    new-instance v0, Lcom/samsung/android/hermes/HermesServiceManager;

    iget-object v4, p0, Landroid/widget/TextView$StylusEventListener$1;->this$1:Landroid/widget/TextView$StylusEventListener;

    iget-object v4, v4, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/samsung/android/hermes/HermesServiceManager;-><init>(Landroid/content/Context;)V

    .local v0, "hermesManager":Lcom/samsung/android/hermes/HermesServiceManager;
    iget-object v4, p0, Landroid/widget/TextView$StylusEventListener$1;->this$1:Landroid/widget/TextView$StylusEventListener;

    # getter for: Landroid/widget/TextView$StylusEventListener;->mStartCurPosition:I
    invoke-static {v4}, Landroid/widget/TextView$StylusEventListener;->access$4400(Landroid/widget/TextView$StylusEventListener;)I

    move-result v4

    iget-object v5, p0, Landroid/widget/TextView$StylusEventListener$1;->this$1:Landroid/widget/TextView$StylusEventListener;

    # getter for: Landroid/widget/TextView$StylusEventListener;->mEndCurPosition:I
    invoke-static {v5}, Landroid/widget/TextView$StylusEventListener;->access$4500(Landroid/widget/TextView$StylusEventListener;)I

    move-result v5

    invoke-interface {v3, v4, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/samsung/android/hermes/HermesServiceManager;->training(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "hermesManager":Lcom/samsung/android/hermes/HermesServiceManager;
    :goto_0
    const-string v4, "TextView"

    const-string v5, "Pen up with side button! : end text selection"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Landroid/widget/TextView$StylusEventListener$1;->this$1:Landroid/widget/TextView$StylusEventListener;

    iget-object v4, v4, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->registerForTouchMonitorListener()V

    iget-object v4, p0, Landroid/widget/TextView$StylusEventListener$1;->this$1:Landroid/widget/TextView$StylusEventListener;

    iget-object v4, v4, Landroid/widget/TextView$StylusEventListener;->this$0:Landroid/widget/TextView;

    const/4 v5, 0x1

    # setter for: Landroid/widget/TextView;->mhasMultiSelection:Z
    invoke-static {v4, v5}, Landroid/widget/TextView;->access$4302(Landroid/widget/TextView;Z)Z

    invoke-static {v7}, Landroid/text/MultiSelection;->setIsMultiSelectingText(Z)V

    invoke-static {v7}, Landroid/text/MultiSelection;->setNeedToScroll(Z)V

    :cond_0
    return-void

    :catch_0
    move-exception v1

    .local v1, "ie":Ljava/lang/IllegalStateException;
    const-string v4, "TextView"

    const-string v5, "** skip HERMES Service by IllegalStateException **"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
