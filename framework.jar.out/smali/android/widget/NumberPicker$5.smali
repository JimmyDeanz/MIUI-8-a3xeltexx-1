.class Landroid/widget/NumberPicker$5;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/NumberPicker;

.field final synthetic val$config:Landroid/content/res/Configuration;

.field final synthetic val$hasKeyboard_12Key:Z


# direct methods
.method constructor <init>(Landroid/widget/NumberPicker;ZLandroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 830
    iput-object p1, p0, Landroid/widget/NumberPicker$5;->this$0:Landroid/widget/NumberPicker;

    iput-boolean p2, p0, Landroid/widget/NumberPicker$5;->val$hasKeyboard_12Key:Z

    iput-object p3, p0, Landroid/widget/NumberPicker$5;->val$config:Landroid/content/res/Configuration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    const/4 v3, 0x0

    .line 832
    if-eqz p2, :cond_1

    .line 833
    iget-object v1, p0, Landroid/widget/NumberPicker$5;->this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;
    invoke-static {v1}, Landroid/widget/NumberPicker;->access$100(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->selectAll()V

    .line 835
    iget-boolean v1, p0, Landroid/widget/NumberPicker$5;->val$hasKeyboard_12Key:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/NumberPicker$5;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 836
    iget-object v1, p0, Landroid/widget/NumberPicker$5;->this$0:Landroid/widget/NumberPicker;

    # invokes: Landroid/widget/NumberPicker;->showSoftInput()V
    invoke-static {v1}, Landroid/widget/NumberPicker;->access$400(Landroid/widget/NumberPicker;)V

    .line 850
    :cond_0
    :goto_0
    return-void

    .line 839
    :cond_1
    iget-object v1, p0, Landroid/widget/NumberPicker$5;->this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;
    invoke-static {v1}, Landroid/widget/NumberPicker;->access$100(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Landroid/widget/EditText;->setSelection(II)V

    .line 840
    iget-object v1, p0, Landroid/widget/NumberPicker$5;->this$0:Landroid/widget/NumberPicker;

    # invokes: Landroid/widget/NumberPicker;->validateInputTextView(Landroid/view/View;)V
    invoke-static {v1, p1}, Landroid/widget/NumberPicker;->access$500(Landroid/widget/NumberPicker;Landroid/view/View;)V

    .line 843
    iget-boolean v1, p0, Landroid/widget/NumberPicker$5;->val$hasKeyboard_12Key:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/NumberPicker$5;->val$config:Landroid/content/res/Configuration;

    iget v1, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroid/widget/NumberPicker$5;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getParentForAccessibility()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/TimePicker;

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/widget/NumberPicker$5;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getParentForAccessibility()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/DatePicker;

    if-nez v1, :cond_0

    .line 844
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 845
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/widget/NumberPicker$5;->this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;
    invoke-static {v1}, Landroid/widget/NumberPicker;->access$100(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 846
    iget-object v1, p0, Landroid/widget/NumberPicker$5;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method
