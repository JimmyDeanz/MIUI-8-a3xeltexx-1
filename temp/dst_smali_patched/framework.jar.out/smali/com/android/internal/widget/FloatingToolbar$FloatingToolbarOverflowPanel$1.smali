.class Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel$1;
.super Ljava/lang/Object;
.source "FloatingToolbar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel$1;->this$0:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel$1;->this$0:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;

    # getter for: Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->mCloseOverflow:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->access$2800(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
