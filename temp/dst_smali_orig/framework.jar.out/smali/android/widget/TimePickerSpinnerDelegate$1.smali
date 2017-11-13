.class Landroid/widget/TimePickerSpinnerDelegate$1;
.super Ljava/lang/Object;
.source "TimePickerSpinnerDelegate.java"

# interfaces
.implements Landroid/widget/NumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/TimePickerSpinnerDelegate;-><init>(Landroid/widget/TimePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TimePickerSpinnerDelegate;


# direct methods
.method constructor <init>(Landroid/widget/TimePickerSpinnerDelegate;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/widget/TimePickerSpinnerDelegate$1;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Landroid/widget/NumberPicker;II)V
    .locals 4
    .param p1, "spinner"    # Landroid/widget/NumberPicker;
    .param p2, "oldVal"    # I
    .param p3, "newVal"    # I

    .prologue
    iget-object v2, p0, Landroid/widget/TimePickerSpinnerDelegate$1;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    invoke-virtual {v2}, Landroid/widget/TimePickerSpinnerDelegate;->is24HourView()Z

    move-result v2

    if-nez v2, :cond_3

    const/16 v1, 0xb

    .local v1, "oldValueNeedAmPmChange":I
    const/16 v0, 0xc

    .local v0, "newValueNeedAmPmChange":I
    iget-object v2, p0, Landroid/widget/TimePickerSpinnerDelegate$1;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    # getter for: Landroid/widget/TimePickerSpinnerDelegate;->mHourFormat:C
    invoke-static {v2}, Landroid/widget/TimePickerSpinnerDelegate;->access$000(Landroid/widget/TimePickerSpinnerDelegate;)C

    move-result v2

    const/16 v3, 0x4b

    if-ne v2, v3, :cond_0

    const/16 v1, 0xb

    const/4 v0, 0x0

    :cond_0
    if-ne p2, v1, :cond_1

    if-eq p3, v0, :cond_2

    :cond_1
    if-ne p2, v0, :cond_3

    if-ne p3, v1, :cond_3

    :cond_2
    iget-object v3, p0, Landroid/widget/TimePickerSpinnerDelegate$1;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    iget-object v2, p0, Landroid/widget/TimePickerSpinnerDelegate$1;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    # getter for: Landroid/widget/TimePickerSpinnerDelegate;->mIsAm:Z
    invoke-static {v2}, Landroid/widget/TimePickerSpinnerDelegate;->access$100(Landroid/widget/TimePickerSpinnerDelegate;)Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x1

    :goto_0
    # setter for: Landroid/widget/TimePickerSpinnerDelegate;->mIsAm:Z
    invoke-static {v3, v2}, Landroid/widget/TimePickerSpinnerDelegate;->access$102(Landroid/widget/TimePickerSpinnerDelegate;Z)Z

    iget-object v2, p0, Landroid/widget/TimePickerSpinnerDelegate$1;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    # invokes: Landroid/widget/TimePickerSpinnerDelegate;->updateAmPmControl()V
    invoke-static {v2}, Landroid/widget/TimePickerSpinnerDelegate;->access$200(Landroid/widget/TimePickerSpinnerDelegate;)V

    .end local v0    # "newValueNeedAmPmChange":I
    .end local v1    # "oldValueNeedAmPmChange":I
    :cond_3
    iget-object v2, p0, Landroid/widget/TimePickerSpinnerDelegate$1;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    # invokes: Landroid/widget/TimePickerSpinnerDelegate;->onTimeChanged()V
    invoke-static {v2}, Landroid/widget/TimePickerSpinnerDelegate;->access$300(Landroid/widget/TimePickerSpinnerDelegate;)V

    return-void

    .restart local v0    # "newValueNeedAmPmChange":I
    .restart local v1    # "oldValueNeedAmPmChange":I
    :cond_4
    const/4 v2, 0x0

    goto :goto_0
.end method
