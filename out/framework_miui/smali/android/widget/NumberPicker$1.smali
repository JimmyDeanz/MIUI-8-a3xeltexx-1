.class Landroid/widget/NumberPicker$1;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 680
    iput-object p1, p0, Landroid/widget/NumberPicker$1;->this$0:Landroid/widget/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 682
    iget-object v0, p0, Landroid/widget/NumberPicker$1;->this$0:Landroid/widget/NumberPicker;

    # invokes: Landroid/widget/NumberPicker;->hideSoftInput()V
    invoke-static {v0}, Landroid/widget/NumberPicker;->access$000(Landroid/widget/NumberPicker;)V

    .line 683
    iget-object v0, p0, Landroid/widget/NumberPicker$1;->this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;
    invoke-static {v0}, Landroid/widget/NumberPicker;->access$100(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 684
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x102038b

    if-ne v0, v1, :cond_0

    .line 685
    iget-object v0, p0, Landroid/widget/NumberPicker$1;->this$0:Landroid/widget/NumberPicker;

    const/4 v1, 0x1

    # invokes: Landroid/widget/NumberPicker;->changeValueByOne(Z)V
    invoke-static {v0, v1}, Landroid/widget/NumberPicker;->access$200(Landroid/widget/NumberPicker;Z)V

    .line 689
    :goto_0
    return-void

    .line 687
    :cond_0
    iget-object v0, p0, Landroid/widget/NumberPicker$1;->this$0:Landroid/widget/NumberPicker;

    const/4 v1, 0x0

    # invokes: Landroid/widget/NumberPicker;->changeValueByOne(Z)V
    invoke-static {v0, v1}, Landroid/widget/NumberPicker;->access$200(Landroid/widget/NumberPicker;Z)V

    goto :goto_0
.end method
