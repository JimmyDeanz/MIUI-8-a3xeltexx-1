.class Landroid/widget/HoverPopupWindow$TouchablePopupContainer$2;
.super Ljava/lang/Object;
.source "HoverPopupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/HoverPopupWindow$TouchablePopupContainer;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;


# direct methods
.method constructor <init>(Landroid/widget/HoverPopupWindow$TouchablePopupContainer;)V
    .locals 0

    .prologue
    .line 3083
    iput-object p1, p0, Landroid/widget/HoverPopupWindow$TouchablePopupContainer$2;->this$1:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 3085
    iget-object v0, p0, Landroid/widget/HoverPopupWindow$TouchablePopupContainer$2;->this$1:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    iget-object v0, v0, Landroid/widget/HoverPopupWindow$TouchablePopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    invoke-virtual {v0}, Landroid/widget/HoverPopupWindow;->dismiss()V

    .line 3086
    return-void
.end method
