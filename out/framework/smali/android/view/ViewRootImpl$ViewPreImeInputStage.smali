.class final Landroid/view/ViewRootImpl$ViewPreImeInputStage;
.super Landroid/view/ViewRootImpl$InputStage;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ViewPreImeInputStage"
.end annotation


# instance fields
.field private mNeedBackKey:Z

.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method public constructor <init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;)V
    .locals 1
    .param p2, "next"    # Landroid/view/ViewRootImpl$InputStage;

    .prologue
    .line 5017
    iput-object p1, p0, Landroid/view/ViewRootImpl$ViewPreImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    .line 5018
    invoke-direct {p0, p1, p2}, Landroid/view/ViewRootImpl$InputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;)V

    .line 5022
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewRootImpl$ViewPreImeInputStage;->mNeedBackKey:Z

    .line 5019
    return-void
.end method

.method private injectBackKeyEvent()V
    .locals 16

    .prologue
    .line 5100
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v14

    .line 5101
    .local v14, "inputManager":Landroid/hardware/input/InputManager;
    if-eqz v14, :cond_0

    .line 5103
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 5104
    .local v0, "downTime":J
    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/16 v10, 0x8

    const/16 v11, 0x101

    const/4 v12, 0x0

    move-wide v2, v0

    invoke-static/range {v0 .. v12}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v13

    .line 5106
    .local v13, "down":Landroid/view/KeyEvent;
    const/4 v4, 0x0

    invoke-virtual {v14, v13, v4}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 5107
    invoke-virtual {v13}, Landroid/view/KeyEvent;->recycle()V

    .line 5110
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 5111
    .local v2, "upTime":J
    const/4 v4, 0x1

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/16 v10, 0x8

    const/16 v11, 0x101

    const/4 v12, 0x0

    invoke-static/range {v0 .. v12}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v15

    .line 5113
    .local v15, "up":Landroid/view/KeyEvent;
    const/4 v4, 0x0

    invoke-virtual {v14, v15, v4}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 5114
    invoke-virtual {v15}, Landroid/view/KeyEvent;->recycle()V

    .line 5116
    .end local v0    # "downTime":J
    .end local v2    # "upTime":J
    .end local v13    # "down":Landroid/view/KeyEvent;
    .end local v15    # "up":Landroid/view/KeyEvent;
    :cond_0
    return-void
.end method

.method private processKeyEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)I
    .locals 12
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 5034
    iget-object v1, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    check-cast v1, Landroid/view/KeyEvent;

    .line 5037
    .local v1, "event":Landroid/view/KeyEvent;
    sget-boolean v8, Landroid/view/ViewRootImpl;->sIsNovelModel:Z

    if-eqz v8, :cond_9

    sget-boolean v8, Landroid/view/ViewRootImpl;->bFactoryBinary:Z

    if-nez v8, :cond_9

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v8

    const/16 v11, 0x43

    if-ne v8, v11, :cond_9

    .line 5038
    invoke-static {}, Landroid/view/inputmethod/InputMethodManagerWrapper;->getInstance()Landroid/view/inputmethod/InputMethodManagerWrapper;

    move-result-object v3

    .line 5039
    .local v3, "immWrapper":Landroid/view/inputmethod/InputMethodManagerWrapper;
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 5040
    .local v0, "action":I
    if-nez v0, :cond_0

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v8

    if-nez v8, :cond_0

    .line 5041
    if-nez v3, :cond_4

    const/4 v4, 0x0

    .line 5051
    .local v4, "inputConnection":Landroid/view/inputmethod/InputConnection;
    :goto_0
    if-eqz v4, :cond_8

    .line 5052
    invoke-interface {v4, v9, v10}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v7

    .line 5053
    .local v7, "textBeforeCursor":Ljava/lang/CharSequence;
    invoke-interface {v4, v9, v10}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v6

    .line 5054
    .local v6, "textAfterCursor":Ljava/lang/CharSequence;
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodManagerWrapper;->getServedView()Landroid/view/View;

    move-result-object v8

    iget-object v11, p0, Landroid/view/ViewRootImpl$ViewPreImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v11, v11, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v11

    if-ne v8, v11, :cond_7

    .line 5055
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-nez v8, :cond_6

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-nez v8, :cond_6

    .line 5056
    invoke-interface {v4, v10}, Landroid/view/inputmethod/InputConnection;->getSelectedText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 5057
    .local v5, "selectedText":Ljava/lang/CharSequence;
    if-nez v5, :cond_5

    move v8, v9

    :goto_1
    iput-boolean v8, p0, Landroid/view/ViewRootImpl$ViewPreImeInputStage;->mNeedBackKey:Z

    .line 5073
    .end local v4    # "inputConnection":Landroid/view/inputmethod/InputConnection;
    .end local v5    # "selectedText":Ljava/lang/CharSequence;
    .end local v6    # "textAfterCursor":Ljava/lang/CharSequence;
    .end local v7    # "textBeforeCursor":Ljava/lang/CharSequence;
    :cond_0
    :goto_2
    iget-boolean v8, p0, Landroid/view/ViewRootImpl$ViewPreImeInputStage;->mNeedBackKey:Z

    if-eqz v8, :cond_9

    .line 5074
    if-ne v0, v9, :cond_3

    .line 5075
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    .line 5076
    .local v2, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v2, :cond_1

    iget-object v8, p0, Landroid/view/ViewRootImpl$ViewPreImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v8, v8, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual {v2, v8, v10}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    move-result v8

    if-nez v8, :cond_2

    .line 5077
    :cond_1
    invoke-direct {p0}, Landroid/view/ViewRootImpl$ViewPreImeInputStage;->injectBackKeyEvent()V

    .line 5080
    :cond_2
    iput-boolean v10, p0, Landroid/view/ViewRootImpl$ViewPreImeInputStage;->mNeedBackKey:Z

    .line 5095
    .end local v0    # "action":I
    .end local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v3    # "immWrapper":Landroid/view/inputmethod/InputMethodManagerWrapper;
    :cond_3
    :goto_3
    return v9

    .line 5041
    .restart local v0    # "action":I
    .restart local v3    # "immWrapper":Landroid/view/inputmethod/InputMethodManagerWrapper;
    :cond_4
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodManagerWrapper;->getServedInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v4

    goto :goto_0

    .restart local v4    # "inputConnection":Landroid/view/inputmethod/InputConnection;
    .restart local v5    # "selectedText":Ljava/lang/CharSequence;
    .restart local v6    # "textAfterCursor":Ljava/lang/CharSequence;
    .restart local v7    # "textBeforeCursor":Ljava/lang/CharSequence;
    :cond_5
    move v8, v10

    .line 5057
    goto :goto_1

    .line 5060
    .end local v5    # "selectedText":Ljava/lang/CharSequence;
    :cond_6
    iput-boolean v10, p0, Landroid/view/ViewRootImpl$ViewPreImeInputStage;->mNeedBackKey:Z

    goto :goto_2

    .line 5064
    :cond_7
    iput-boolean v9, p0, Landroid/view/ViewRootImpl$ViewPreImeInputStage;->mNeedBackKey:Z

    goto :goto_2

    .line 5068
    .end local v6    # "textAfterCursor":Ljava/lang/CharSequence;
    .end local v7    # "textBeforeCursor":Ljava/lang/CharSequence;
    :cond_8
    iput-boolean v9, p0, Landroid/view/ViewRootImpl$ViewPreImeInputStage;->mNeedBackKey:Z

    goto :goto_2

    .line 5088
    .end local v0    # "action":I
    .end local v3    # "immWrapper":Landroid/view/inputmethod/InputMethodManagerWrapper;
    .end local v4    # "inputConnection":Landroid/view/inputmethod/InputConnection;
    :cond_9
    iget-object v8, p0, Landroid/view/ViewRootImpl$ViewPreImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v8, v8, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v8, v1}, Landroid/view/View;->dispatchKeyEventTextMultiSelection(Landroid/view/KeyEvent;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 5092
    iget-object v8, p0, Landroid/view/ViewRootImpl$ViewPreImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v8, v8, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v8, v1}, Landroid/view/View;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result v8

    if-nez v8, :cond_3

    move v9, v10

    .line 5095
    goto :goto_3
.end method


# virtual methods
.method protected onProcess(Landroid/view/ViewRootImpl$QueuedInputEvent;)I
    .locals 1
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .prologue
    .line 5027
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    instance-of v0, v0, Landroid/view/KeyEvent;

    if-eqz v0, :cond_0

    .line 5028
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$ViewPreImeInputStage;->processKeyEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)I

    move-result v0

    .line 5030
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
