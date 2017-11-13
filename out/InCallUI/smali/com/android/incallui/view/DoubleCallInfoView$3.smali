.class Lcom/android/incallui/view/DoubleCallInfoView$3;
.super Ljava/lang/Object;
.source "DoubleCallInfoView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/view/DoubleCallInfoView;->showAndInitializeSecondaryCallInfo(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/view/DoubleCallInfoView;


# direct methods
.method constructor <init>(Lcom/android/incallui/view/DoubleCallInfoView;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/incallui/view/DoubleCallInfoView$3;->this$0:Lcom/android/incallui/view/DoubleCallInfoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/incallui/view/DoubleCallInfoView$3;->this$0:Lcom/android/incallui/view/DoubleCallInfoView;

    # getter for: Lcom/android/incallui/view/DoubleCallInfoView;->mDoubleCallInfoOperationListener:Lcom/android/incallui/view/DoubleCallInfoView$DoubleCallInfoOperationListener;
    invoke-static {v0}, Lcom/android/incallui/view/DoubleCallInfoView;->access$000(Lcom/android/incallui/view/DoubleCallInfoView;)Lcom/android/incallui/view/DoubleCallInfoView$DoubleCallInfoOperationListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/incallui/view/DoubleCallInfoView$DoubleCallInfoOperationListener;->showConferenceCallManager()V

    .line 110
    return-void
.end method
