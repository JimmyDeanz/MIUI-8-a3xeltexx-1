.class public Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;
.super Ljava/lang/Object;
.source "DatePicker.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/DatePicker$DatePickerSpinnerDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TwTextWatcher"
.end annotation


# instance fields
.field private changedLen:I

.field private isMonth:Z

.field private mCheck:I

.field private mId:I

.field private mMaxLen:I

.field private mNext:I

.field private prevText:Ljava/lang/String;

.field final synthetic this$0:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;


# direct methods
.method public constructor <init>(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;IIZ)V
    .locals 2
    .param p2, "maxLen"    # I
    .param p3, "id"    # I
    .param p4, "month"    # Z

    .prologue
    iput-object p1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;->this$0:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;->changedLen:I

    iput p2, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;->mMaxLen:I

    iput p3, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;->mId:I

    iput-boolean p4, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;->isMonth:Z

    iget v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;->mId:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;->mCheck:I

    iget v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;->mCheck:I

    if-gez v0, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;->mCheck:I

    :cond_0
    iget v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;->mId:I

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    const/4 v0, -0x1

    :goto_0
    iput v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;->mNext:I

    return-void

    :cond_1
    iget v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;->mId:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private changeFocus()V
    .locals 4

    .prologue
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;->this$0:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    iget-object v1, v1, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .local v0, "manager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;->this$0:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "changeFocus() mNext : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;->mNext:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mCheck : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;->mCheck:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->twLog(Ljava/lang/String;)V
    invoke-static {v1, v2}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->access$1500(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;Ljava/lang/String;)V

    iget v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;->mNext:I

    if-ltz v1, :cond_0

    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;->this$0:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    # getter for: Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;
    invoke-static {v1}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->access$1800(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;->mCheck:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;->this$0:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    # getter for: Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;
    invoke-static {v1}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->access$1800(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;->mNext:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    :cond_2
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;->this$0:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    # getter for: Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;
    invoke-static {v1}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->access$1800(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;->mId:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;->this$0:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    # getter for: Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;
    invoke-static {v1}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->access$1800(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;->mId:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    goto :goto_0
.end method

.method private isFarsiLanguage()Z
    .locals 2

    .prologue
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;->this$0:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    iget-object v1, v1, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .local v0, "language":Ljava/lang/String;
    const-string v1, "fa"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isMeaLanguage()Z
    .locals 2

    .prologue
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;->this$0:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    iget-object v1, v1, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .local v0, "language":Ljava/lang/String;
    const-string v1, "ar"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "fa"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ur"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isMonthStr(Ljava/lang/String;)Z
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .local v1, "result":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;->this$0:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    # getter for: Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mNumberOfMonths:I
    invoke-static {v2}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->access$2000(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;->this$0:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    # getter for: Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mShortMonths:[Ljava/lang/String;
    invoke-static {v2}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->access$2100(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private isNumericStr(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    return v0
.end method

.method private isSwaLanguage()Z
    .locals 2

    .prologue
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;->this$0:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    iget-object v1, v1, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .local v0, "language":Ljava/lang/String;
    const-string v1, "hi"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ta"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ml"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "te"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "or"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ne"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "as"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "bn"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "gu"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "si"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "pa"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "kn"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "mr"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .param p1, "view"    # Landroid/text/Editable;

    .prologue
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;->this$0:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "aftertextchanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->twLog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->access$1500(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;Ljava/lang/String;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;->this$0:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "beforeTextChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->twLog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->access$1500(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;->prevText:Ljava/lang/String;

    iput p4, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;->changedLen:I

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    const/4 v4, 0x1

    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;->this$0:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "onTextChanged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;->prevText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->twLog(Ljava/lang/String;)V
    invoke-static {v1, v2}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->access$1500(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;Ljava/lang/String;)V

    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;->this$0:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    # getter for: Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;
    invoke-static {v1}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->access$1800(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;->mId:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .local v0, "tag":Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string v1, "onClick"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "onLongClick"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;->this$0:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "TAG exists: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->twLog(Ljava/lang/String;)V
    invoke-static {v1, v2}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->access$1500(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-boolean v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;->isMonth:Z

    if-eqz v1, :cond_8

    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;->this$0:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    # invokes: Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->usingNumericMonths()Z
    invoke-static {v1}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->access$1900(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;->this$0:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Samsung Keypad Num Month"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->twLog(Ljava/lang/String;)V
    invoke-static {v1, v2}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->access$1500(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;Ljava/lang/String;)V

    iget v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;->changedLen:I

    if-ne v1, v4, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iget v2, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;->mMaxLen:I

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;->this$0:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    # getter for: Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;
    invoke-static {v1}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->access$1800(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;->mId:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;->changeFocus()V

    goto :goto_0

    :cond_3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;->this$0:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    # getter for: Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;
    invoke-static {v1}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->access$1800(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;->mId:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;->changeFocus()V

    goto/16 :goto_0

    :cond_4
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;->this$0:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    # getter for: Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;
    invoke-static {v1}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->access$1800(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;->mId:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;->prevText:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;->prevText:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;->prevText:Ljava/lang/String;

    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;->prevText:Ljava/lang/String;

    const-string v2, "3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;->prevText:Ljava/lang/String;

    const-string v2, "4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;->prevText:Ljava/lang/String;

    const-string v2, "5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;->prevText:Ljava/lang/String;

    const-string v2, "6"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;->prevText:Ljava/lang/String;

    const-string v2, "7"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;->prevText:Ljava/lang/String;

    const-string v2, "8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;->prevText:Ljava/lang/String;

    const-string v2, "9"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;->prevText:Ljava/lang/String;

    const-string v2, "10"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;->prevText:Ljava/lang/String;

    const-string v2, "11"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iget v2, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;->mMaxLen:I

    if-lt v1, v2, :cond_6

    invoke-direct {p0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;->isMeaLanguage()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;->prevText:Ljava/lang/String;

    invoke-direct {p0, v1}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;->isMonthStr(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;->changeFocus()V

    goto/16 :goto_0

    :cond_5
    invoke-direct {p0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;->changeFocus()V

    goto/16 :goto_0

    :cond_6
    invoke-direct {p0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;->isSwaLanguage()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-direct {p0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;->isFarsiLanguage()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_7
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_1

    invoke-direct {p0, p1}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;->isNumericStr(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;->changeFocus()V

    goto/16 :goto_0

    :cond_8
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;->prevText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iget v2, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;->mMaxLen:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;->changedLen:I

    if-ne v1, v4, :cond_1

    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;->this$0:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    # getter for: Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;
    invoke-static {v1}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->access$1800(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;->mId:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$TwTextWatcher;->changeFocus()V

    goto/16 :goto_0
.end method
