.class Landroid/widget/TimePickerSpinnerDelegate$TwKeyListener;
.super Ljava/lang/Object;
.source "TimePickerSpinnerDelegate.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TimePickerSpinnerDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TwKeyListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TimePickerSpinnerDelegate;


# direct methods
.method public constructor <init>(Landroid/widget/TimePickerSpinnerDelegate;)V
    .locals 0

    .prologue
    .line 975
    iput-object p1, p0, Landroid/widget/TimePickerSpinnerDelegate$TwKeyListener;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 977
    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 980
    iget-object v3, p0, Landroid/widget/TimePickerSpinnerDelegate$TwKeyListener;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    # getter for: Landroid/widget/TimePickerSpinnerDelegate;->TW_DEBUG:Z
    invoke-static {v3}, Landroid/widget/TimePickerSpinnerDelegate;->access$700(Landroid/widget/TimePickerSpinnerDelegate;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "Picker"

    invoke-virtual {p3}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-eq v3, v2, :cond_2

    .line 994
    :cond_1
    :goto_0
    return v1

    .line 983
    :cond_2
    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    .line 985
    :sswitch_0
    iget-object v3, p0, Landroid/widget/TimePickerSpinnerDelegate$TwKeyListener;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    iget-object v3, v3, Landroid/widget/TimePickerSpinnerDelegate;->mDelegator:Landroid/widget/TimePicker;

    invoke-virtual {v3}, Landroid/widget/TimePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 986
    .local v0, "config":Landroid/content/res/Configuration;
    iget v3, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    .end local v0    # "config":Landroid/content/res/Configuration;
    :sswitch_1
    move v1, v2

    .line 992
    goto :goto_0

    .line 983
    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x3d -> :sswitch_1
        0x42 -> :sswitch_1
    .end sparse-switch
.end method
