.class Lcom/android/incallui/JeejenInCallScreenLayer$1;
.super Ljava/lang/Object;
.source "JeejenInCallScreenLayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/JeejenInCallScreenLayer;->showIncomingCallWidget(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/JeejenInCallScreenLayer;


# direct methods
.method constructor <init>(Lcom/android/incallui/JeejenInCallScreenLayer;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/incallui/JeejenInCallScreenLayer$1;->this$0:Lcom/android/incallui/JeejenInCallScreenLayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/incallui/JeejenInCallScreenLayer$1;->this$0:Lcom/android/incallui/JeejenInCallScreenLayer;

    # getter for: Lcom/android/incallui/JeejenInCallScreenLayer;->mCallback:Lcom/android/incallui/IJeejenInCallCallback;
    invoke-static {v0}, Lcom/android/incallui/JeejenInCallScreenLayer;->access$000(Lcom/android/incallui/JeejenInCallScreenLayer;)Lcom/android/incallui/IJeejenInCallCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/incallui/IJeejenInCallCallback;->nowSecondIncomingCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/android/incallui/JeejenInCallScreenLayer$1;->this$0:Lcom/android/incallui/JeejenInCallScreenLayer;

    # getter for: Lcom/android/incallui/JeejenInCallScreenLayer;->mCallback:Lcom/android/incallui/IJeejenInCallCallback;
    invoke-static {v0}, Lcom/android/incallui/JeejenInCallScreenLayer;->access$000(Lcom/android/incallui/JeejenInCallScreenLayer;)Lcom/android/incallui/IJeejenInCallCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/incallui/IJeejenInCallCallback;->rejectCall()V

    .line 70
    :cond_0
    return-void
.end method
