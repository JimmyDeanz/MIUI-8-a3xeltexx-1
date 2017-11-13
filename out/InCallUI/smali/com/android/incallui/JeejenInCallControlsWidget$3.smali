.class Lcom/android/incallui/JeejenInCallControlsWidget$3;
.super Ljava/lang/Object;
.source "JeejenInCallControlsWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/JeejenInCallControlsWidget;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/JeejenInCallControlsWidget;


# direct methods
.method constructor <init>(Lcom/android/incallui/JeejenInCallControlsWidget;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/incallui/JeejenInCallControlsWidget$3;->this$0:Lcom/android/incallui/JeejenInCallControlsWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/incallui/JeejenInCallControlsWidget$3;->this$0:Lcom/android/incallui/JeejenInCallControlsWidget;

    # getter for: Lcom/android/incallui/JeejenInCallControlsWidget;->mCallback:Lcom/android/incallui/IJeejenInCallCallback;
    invoke-static {v0}, Lcom/android/incallui/JeejenInCallControlsWidget;->access$000(Lcom/android/incallui/JeejenInCallControlsWidget;)Lcom/android/incallui/IJeejenInCallCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/android/incallui/JeejenInCallControlsWidget$3;->this$0:Lcom/android/incallui/JeejenInCallControlsWidget;

    # getter for: Lcom/android/incallui/JeejenInCallControlsWidget;->mCallback:Lcom/android/incallui/IJeejenInCallCallback;
    invoke-static {v0}, Lcom/android/incallui/JeejenInCallControlsWidget;->access$000(Lcom/android/incallui/JeejenInCallControlsWidget;)Lcom/android/incallui/IJeejenInCallCallback;

    move-result-object v1

    iget-object v0, p0, Lcom/android/incallui/JeejenInCallControlsWidget$3;->this$0:Lcom/android/incallui/JeejenInCallControlsWidget;

    # getter for: Lcom/android/incallui/JeejenInCallControlsWidget;->mCallback:Lcom/android/incallui/IJeejenInCallCallback;
    invoke-static {v0}, Lcom/android/incallui/JeejenInCallControlsWidget;->access$000(Lcom/android/incallui/JeejenInCallControlsWidget;)Lcom/android/incallui/IJeejenInCallCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/incallui/IJeejenInCallCallback;->isDialpadOpen()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/android/incallui/IJeejenInCallCallback;->openDialpad(Z)V

    .line 73
    :cond_0
    return-void

    .line 72
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
