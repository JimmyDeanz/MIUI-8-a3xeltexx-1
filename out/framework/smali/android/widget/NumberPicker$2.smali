.class Landroid/widget/NumberPicker$2;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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


# direct methods
.method constructor <init>(Landroid/widget/NumberPicker;)V
    .locals 0

    .prologue
    .line 727
    iput-object p1, p0, Landroid/widget/NumberPicker$2;->this$0:Landroid/widget/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    .line 729
    iget-object v0, p0, Landroid/widget/NumberPicker$2;->this$0:Landroid/widget/NumberPicker;

    # invokes: Landroid/widget/NumberPicker;->hideSoftInput()V
    invoke-static {v0}, Landroid/widget/NumberPicker;->access$000(Landroid/widget/NumberPicker;)V

    .line 730
    iget-object v0, p0, Landroid/widget/NumberPicker$2;->this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;
    invoke-static {v0}, Landroid/widget/NumberPicker;->access$100(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 731
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x1020451

    if-ne v0, v1, :cond_0

    .line 732
    iget-object v0, p0, Landroid/widget/NumberPicker$2;->this$0:Landroid/widget/NumberPicker;

    # invokes: Landroid/widget/NumberPicker;->postChangeCurrentByOneFromLongPress(ZJ)V
    invoke-static {v0, v2, v4, v5}, Landroid/widget/NumberPicker;->access$300(Landroid/widget/NumberPicker;ZJ)V

    .line 736
    :goto_0
    return v2

    .line 734
    :cond_0
    iget-object v0, p0, Landroid/widget/NumberPicker$2;->this$0:Landroid/widget/NumberPicker;

    const/4 v1, 0x0

    # invokes: Landroid/widget/NumberPicker;->postChangeCurrentByOneFromLongPress(ZJ)V
    invoke-static {v0, v1, v4, v5}, Landroid/widget/NumberPicker;->access$300(Landroid/widget/NumberPicker;ZJ)V

    goto :goto_0
.end method
