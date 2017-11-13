.class Lcom/android/incallui/JeejenInCallControlsWidget$2;
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
    .line 57
    iput-object p1, p0, Lcom/android/incallui/JeejenInCallControlsWidget$2;->this$0:Lcom/android/incallui/JeejenInCallControlsWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/incallui/JeejenInCallControlsWidget$2;->this$0:Lcom/android/incallui/JeejenInCallControlsWidget;

    # getter for: Lcom/android/incallui/JeejenInCallControlsWidget;->mCallback:Lcom/android/incallui/IJeejenInCallCallback;
    invoke-static {v0}, Lcom/android/incallui/JeejenInCallControlsWidget;->access$000(Lcom/android/incallui/JeejenInCallControlsWidget;)Lcom/android/incallui/IJeejenInCallCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/android/incallui/JeejenInCallControlsWidget$2;->this$0:Lcom/android/incallui/JeejenInCallControlsWidget;

    # getter for: Lcom/android/incallui/JeejenInCallControlsWidget;->mCallback:Lcom/android/incallui/IJeejenInCallCallback;
    invoke-static {v0}, Lcom/android/incallui/JeejenInCallControlsWidget;->access$000(Lcom/android/incallui/JeejenInCallControlsWidget;)Lcom/android/incallui/IJeejenInCallCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/incallui/IJeejenInCallCallback;->endCall()V

    .line 62
    iget-object v0, p0, Lcom/android/incallui/JeejenInCallControlsWidget$2;->this$0:Lcom/android/incallui/JeejenInCallControlsWidget;

    # getter for: Lcom/android/incallui/JeejenInCallControlsWidget;->mCallback:Lcom/android/incallui/IJeejenInCallCallback;
    invoke-static {v0}, Lcom/android/incallui/JeejenInCallControlsWidget;->access$000(Lcom/android/incallui/JeejenInCallControlsWidget;)Lcom/android/incallui/IJeejenInCallCallback;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/incallui/IJeejenInCallCallback;->openDialpad(Z)V

    .line 64
    :cond_0
    return-void
.end method
