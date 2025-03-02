.class public Landroid/widget/Editor$UndoInputFilter;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UndoInputFilter"
.end annotation


# instance fields
.field private final mEditor:Landroid/widget/Editor;

.field private mHasComposition:Z

.field private mIsUserEdit:Z


# direct methods
.method public constructor <init>(Landroid/widget/Editor;)V
    .locals 0
    .param p1, "editor"    # Landroid/widget/Editor;

    .prologue
    .line 5707
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5708
    iput-object p1, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    .line 5709
    return-void
.end method

.method private canUndoEdit(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Z
    .locals 2
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    .prologue
    const/4 v0, 0x0

    .line 5842
    iget-object v1, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    iget-boolean v1, v1, Landroid/widget/Editor;->mAllowUndo:Z

    if-nez v1, :cond_1

    .line 5867
    :cond_0
    :goto_0
    return v0

    .line 5847
    :cond_1
    iget-object v1, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;
    invoke-static {v1}, Landroid/widget/Editor;->access$4300(Landroid/widget/Editor;)Landroid/content/UndoManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/UndoManager;->isInUndo()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5855
    # invokes: Landroid/widget/Editor;->isValidRange(Ljava/lang/CharSequence;II)Z
    invoke-static {p1, p2, p3}, Landroid/widget/Editor;->access$4600(Ljava/lang/CharSequence;II)Z

    move-result v1

    if-eqz v1, :cond_0

    # invokes: Landroid/widget/Editor;->isValidRange(Ljava/lang/CharSequence;II)Z
    invoke-static {p4, p5, p6}, Landroid/widget/Editor;->access$4600(Ljava/lang/CharSequence;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5862
    if-ne p2, p3, :cond_2

    if-eq p5, p6, :cond_0

    .line 5867
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private handleCompositionEdit(Ljava/lang/CharSequence;III)Z
    .locals 7
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dstart"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 5763
    invoke-direct {p0, p1}, Landroid/widget/Editor$UndoInputFilter;->isComposition(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 5764
    iput-boolean v3, p0, Landroid/widget/Editor$UndoInputFilter;->mHasComposition:Z

    .line 5785
    :cond_0
    :goto_0
    return v3

    .line 5767
    :cond_1
    iget-boolean v1, p0, Landroid/widget/Editor$UndoInputFilter;->mHasComposition:Z

    .line 5768
    .local v1, "hadComposition":Z
    iput-boolean v4, p0, Landroid/widget/Editor$UndoInputFilter;->mHasComposition:Z

    .line 5771
    if-eqz v1, :cond_2

    .line 5773
    if-eq p2, p3, :cond_0

    .line 5778
    invoke-static {p1, p2, p3}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v2

    .line 5779
    .local v2, "newText":Ljava/lang/String;
    new-instance v0, Landroid/widget/Editor$EditOperation;

    iget-object v5, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    const-string v6, ""

    invoke-direct {v0, v5, v6, p4, v2}, Landroid/widget/Editor$EditOperation;-><init>(Landroid/widget/Editor;Ljava/lang/String;ILjava/lang/String;)V

    .line 5780
    .local v0, "edit":Landroid/widget/Editor$EditOperation;
    invoke-direct {p0, v0, v4}, Landroid/widget/Editor$UndoInputFilter;->recordEdit(Landroid/widget/Editor$EditOperation;Z)V

    goto :goto_0

    .end local v0    # "edit":Landroid/widget/Editor$EditOperation;
    .end local v2    # "newText":Ljava/lang/String;
    :cond_2
    move v3, v4

    .line 5785
    goto :goto_0
.end method

.method private handleKeyboardEdit(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)V
    .locals 5
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    .prologue
    .line 5794
    invoke-direct {p0}, Landroid/widget/Editor$UndoInputFilter;->isInTextWatcher()Z

    move-result v1

    .line 5797
    .local v1, "forceMerge":Z
    invoke-static {p1, p2, p3}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v2

    .line 5798
    .local v2, "newText":Ljava/lang/String;
    invoke-static {p4, p5, p6}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v3

    .line 5799
    .local v3, "oldText":Ljava/lang/String;
    new-instance v0, Landroid/widget/Editor$EditOperation;

    iget-object v4, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    invoke-direct {v0, v4, v3, p5, v2}, Landroid/widget/Editor$EditOperation;-><init>(Landroid/widget/Editor;Ljava/lang/String;ILjava/lang/String;)V

    .line 5800
    .local v0, "edit":Landroid/widget/Editor$EditOperation;
    invoke-direct {p0, v0, v1}, Landroid/widget/Editor$UndoInputFilter;->recordEdit(Landroid/widget/Editor$EditOperation;Z)V

    .line 5801
    return-void
.end method

.method private isComposition(Ljava/lang/CharSequence;)Z
    .locals 5
    .param p1, "source"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v3, 0x0

    .line 5871
    instance-of v4, p1, Landroid/text/Spannable;

    if-nez v4, :cond_1

    .line 5878
    :cond_0
    :goto_0
    return v3

    :cond_1
    move-object v2, p1

    .line 5875
    check-cast v2, Landroid/text/Spannable;

    .line 5876
    .local v2, "text":Landroid/text/Spannable;
    invoke-static {v2}, Lcom/android/internal/widget/EditableInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v0

    .line 5877
    .local v0, "composeBegin":I
    invoke-static {v2}, Lcom/android/internal/widget/EditableInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v1

    .line 5878
    .local v1, "composeEnd":I
    if-ge v0, v1, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method

.method private isInTextWatcher()Z
    .locals 2

    .prologue
    .line 5882
    iget-object v1, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 5883
    .local v0, "text":Ljava/lang/CharSequence;
    instance-of v1, v0, Landroid/text/SpannableStringBuilder;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/text/SpannableStringBuilder;

    .end local v0    # "text":Ljava/lang/CharSequence;
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->getTextWatcherDepth()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private recordEdit(Landroid/widget/Editor$EditOperation;Z)V
    .locals 6
    .param p1, "edit"    # Landroid/widget/Editor$EditOperation;
    .param p2, "forceMerge"    # Z

    .prologue
    const/4 v5, 0x0

    .line 5809
    iget-object v2, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;
    invoke-static {v2}, Landroid/widget/Editor;->access$4300(Landroid/widget/Editor;)Landroid/content/UndoManager;

    move-result-object v1

    .line 5810
    .local v1, "um":Landroid/content/UndoManager;
    const-string v2, "Edit text"

    invoke-virtual {v1, v2}, Landroid/content/UndoManager;->beginUpdate(Ljava/lang/CharSequence;)V

    .line 5811
    const-class v2, Landroid/widget/Editor$EditOperation;

    iget-object v3, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mUndoOwner:Landroid/content/UndoOwner;
    invoke-static {v3}, Landroid/widget/Editor;->access$4400(Landroid/widget/Editor;)Landroid/content/UndoOwner;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UndoManager;->getLastOperation(Ljava/lang/Class;Landroid/content/UndoOwner;I)Landroid/content/UndoOperation;

    move-result-object v0

    check-cast v0, Landroid/widget/Editor$EditOperation;

    .line 5813
    .local v0, "lastEdit":Landroid/widget/Editor$EditOperation;
    if-nez v0, :cond_1

    .line 5816
    invoke-virtual {v1, p1, v5}, Landroid/content/UndoManager;->addOperation(Landroid/content/UndoOperation;I)V

    .line 5837
    :cond_0
    :goto_0
    invoke-virtual {v1}, Landroid/content/UndoManager;->endUpdate()V

    .line 5838
    return-void

    .line 5817
    :cond_1
    if-eqz p2, :cond_2

    .line 5821
    invoke-virtual {v0, p1}, Landroid/widget/Editor$EditOperation;->forceMergeWith(Landroid/widget/Editor$EditOperation;)V

    goto :goto_0

    .line 5822
    :cond_2
    iget-boolean v2, p0, Landroid/widget/Editor$UndoInputFilter;->mIsUserEdit:Z

    if-nez v2, :cond_3

    .line 5826
    iget-object v2, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mUndoOwner:Landroid/content/UndoOwner;
    invoke-static {v2}, Landroid/widget/Editor;->access$4400(Landroid/widget/Editor;)Landroid/content/UndoOwner;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/UndoManager;->commitState(Landroid/content/UndoOwner;)I

    .line 5827
    invoke-virtual {v1, p1, v5}, Landroid/content/UndoManager;->addOperation(Landroid/content/UndoOperation;I)V

    goto :goto_0

    .line 5828
    :cond_3
    # invokes: Landroid/widget/Editor$EditOperation;->mergeWith(Landroid/widget/Editor$EditOperation;)Z
    invoke-static {v0, p1}, Landroid/widget/Editor$EditOperation;->access$4500(Landroid/widget/Editor$EditOperation;Landroid/widget/Editor$EditOperation;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5834
    iget-object v2, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mUndoOwner:Landroid/content/UndoOwner;
    invoke-static {v2}, Landroid/widget/Editor;->access$4400(Landroid/widget/Editor;)Landroid/content/UndoOwner;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/UndoManager;->commitState(Landroid/content/UndoOwner;)I

    .line 5835
    invoke-virtual {v1, p1, v5}, Landroid/content/UndoManager;->addOperation(Landroid/content/UndoOperation;I)V

    goto :goto_0
.end method


# virtual methods
.method public beginBatchEdit()V
    .locals 1

    .prologue
    .line 5726
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor$UndoInputFilter;->mIsUserEdit:Z

    .line 5727
    return-void
.end method

.method public endBatchEdit()V
    .locals 1

    .prologue
    .line 5731
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor$UndoInputFilter;->mIsUserEdit:Z

    .line 5732
    return-void
.end method

.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    .prologue
    const/4 v1, 0x0

    .line 5743
    invoke-direct/range {p0 .. p6}, Landroid/widget/Editor$UndoInputFilter;->canUndoEdit(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5754
    :cond_0
    :goto_0
    return-object v1

    .line 5748
    :cond_1
    invoke-direct {p0, p1, p2, p3, p5}, Landroid/widget/Editor$UndoInputFilter;->handleCompositionEdit(Ljava/lang/CharSequence;III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5753
    invoke-direct/range {p0 .. p6}, Landroid/widget/Editor$UndoInputFilter;->handleKeyboardEdit(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)V

    goto :goto_0
.end method

.method public restoreInstanceState(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 5717
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/widget/Editor$UndoInputFilter;->mIsUserEdit:Z

    .line 5718
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Landroid/widget/Editor$UndoInputFilter;->mHasComposition:Z

    .line 5719
    return-void

    :cond_0
    move v0, v2

    .line 5717
    goto :goto_0

    :cond_1
    move v1, v2

    .line 5718
    goto :goto_1
.end method

.method public saveInstanceState(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 5712
    iget-boolean v0, p0, Landroid/widget/Editor$UndoInputFilter;->mIsUserEdit:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5713
    iget-boolean v0, p0, Landroid/widget/Editor$UndoInputFilter;->mHasComposition:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5714
    return-void

    :cond_0
    move v0, v2

    .line 5712
    goto :goto_0

    :cond_1
    move v1, v2

    .line 5713
    goto :goto_1
.end method
