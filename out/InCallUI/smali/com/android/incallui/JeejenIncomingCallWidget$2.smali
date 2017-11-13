.class Lcom/android/incallui/JeejenIncomingCallWidget$2;
.super Ljava/lang/Object;
.source "JeejenIncomingCallWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/JeejenIncomingCallWidget;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/JeejenIncomingCallWidget;


# direct methods
.method constructor <init>(Lcom/android/incallui/JeejenIncomingCallWidget;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/incallui/JeejenIncomingCallWidget$2;->this$0:Lcom/android/incallui/JeejenIncomingCallWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/incallui/JeejenIncomingCallWidget$2;->this$0:Lcom/android/incallui/JeejenIncomingCallWidget;

    # getter for: Lcom/android/incallui/JeejenIncomingCallWidget;->mCallback:Lcom/android/incallui/IJeejenInCallCallback;
    invoke-static {v0}, Lcom/android/incallui/JeejenIncomingCallWidget;->access$000(Lcom/android/incallui/JeejenIncomingCallWidget;)Lcom/android/incallui/IJeejenInCallCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/android/incallui/JeejenIncomingCallWidget$2;->this$0:Lcom/android/incallui/JeejenIncomingCallWidget;

    # getter for: Lcom/android/incallui/JeejenIncomingCallWidget;->mCallback:Lcom/android/incallui/IJeejenInCallCallback;
    invoke-static {v0}, Lcom/android/incallui/JeejenIncomingCallWidget;->access$000(Lcom/android/incallui/JeejenIncomingCallWidget;)Lcom/android/incallui/IJeejenInCallCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/incallui/IJeejenInCallCallback;->rejectCall()V

    .line 43
    :cond_0
    return-void
.end method
