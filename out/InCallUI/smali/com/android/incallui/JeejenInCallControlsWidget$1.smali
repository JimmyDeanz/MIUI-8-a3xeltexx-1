.class Lcom/android/incallui/JeejenInCallControlsWidget$1;
.super Ljava/lang/Object;
.source "JeejenInCallControlsWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/JeejenInCallControlsWidget;->bindInCallControlsSpeakerWidget(Landroid/view/ViewGroup;)V
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
    .line 33
    iput-object p1, p0, Lcom/android/incallui/JeejenInCallControlsWidget$1;->this$0:Lcom/android/incallui/JeejenInCallControlsWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 36
    iget-object v3, p0, Lcom/android/incallui/JeejenInCallControlsWidget$1;->this$0:Lcom/android/incallui/JeejenInCallControlsWidget;

    # getter for: Lcom/android/incallui/JeejenInCallControlsWidget;->mCallback:Lcom/android/incallui/IJeejenInCallCallback;
    invoke-static {v3}, Lcom/android/incallui/JeejenInCallControlsWidget;->access$000(Lcom/android/incallui/JeejenInCallControlsWidget;)Lcom/android/incallui/IJeejenInCallCallback;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/incallui/IJeejenInCallCallback;->getSpeakerModeCount()I

    move-result v0

    .line 37
    .local v0, "count":I
    const/4 v3, 0x1

    if-le v0, v3, :cond_0

    .line 39
    iget-object v3, p0, Lcom/android/incallui/JeejenInCallControlsWidget$1;->this$0:Lcom/android/incallui/JeejenInCallControlsWidget;

    # getter for: Lcom/android/incallui/JeejenInCallControlsWidget;->mCallback:Lcom/android/incallui/IJeejenInCallCallback;
    invoke-static {v3}, Lcom/android/incallui/JeejenInCallControlsWidget;->access$000(Lcom/android/incallui/JeejenInCallControlsWidget;)Lcom/android/incallui/IJeejenInCallCallback;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/incallui/IJeejenInCallCallback;->getSpeakerMode()I

    move-result v2

    .line 40
    .local v2, "mode":I
    add-int/lit8 v3, v2, 0x1

    rem-int v1, v3, v0

    .local v1, "m":I
    :goto_0
    if-eq v1, v2, :cond_0

    .line 41
    iget-object v3, p0, Lcom/android/incallui/JeejenInCallControlsWidget$1;->this$0:Lcom/android/incallui/JeejenInCallControlsWidget;

    # getter for: Lcom/android/incallui/JeejenInCallControlsWidget;->mCallback:Lcom/android/incallui/IJeejenInCallCallback;
    invoke-static {v3}, Lcom/android/incallui/JeejenInCallControlsWidget;->access$000(Lcom/android/incallui/JeejenInCallControlsWidget;)Lcom/android/incallui/IJeejenInCallCallback;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/android/incallui/IJeejenInCallCallback;->isSpeakerModeSupported(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 42
    iget-object v3, p0, Lcom/android/incallui/JeejenInCallControlsWidget$1;->this$0:Lcom/android/incallui/JeejenInCallControlsWidget;

    # getter for: Lcom/android/incallui/JeejenInCallControlsWidget;->mCallback:Lcom/android/incallui/IJeejenInCallCallback;
    invoke-static {v3}, Lcom/android/incallui/JeejenInCallControlsWidget;->access$000(Lcom/android/incallui/JeejenInCallControlsWidget;)Lcom/android/incallui/IJeejenInCallCallback;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/android/incallui/IJeejenInCallCallback;->setSpeakerMode(I)V

    .line 43
    iget-object v3, p0, Lcom/android/incallui/JeejenInCallControlsWidget$1;->this$0:Lcom/android/incallui/JeejenInCallControlsWidget;

    # invokes: Lcom/android/incallui/JeejenInCallControlsWidget;->doUpdateSpeakerMode(I)V
    invoke-static {v3, v1}, Lcom/android/incallui/JeejenInCallControlsWidget;->access$100(Lcom/android/incallui/JeejenInCallControlsWidget;I)V

    .line 48
    .end local v1    # "m":I
    .end local v2    # "mode":I
    :cond_0
    return-void

    .line 40
    .restart local v1    # "m":I
    .restart local v2    # "mode":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
