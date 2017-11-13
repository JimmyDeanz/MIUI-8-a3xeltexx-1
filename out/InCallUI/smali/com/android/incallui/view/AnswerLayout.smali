.class public abstract Lcom/android/incallui/view/AnswerLayout;
.super Landroid/widget/FrameLayout;
.source "AnswerLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/view/AnswerLayout$SlideEndListener;
    }
.end annotation


# instance fields
.field public mSlideEndListener:Lcom/android/incallui/view/AnswerLayout$SlideEndListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    return-void
.end method


# virtual methods
.method public clearAll()V
    .locals 0

    .prologue
    .line 48
    return-void
.end method

.method public configureMessageDialog(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p1, "textResponses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public setSlideEndListener(Lcom/android/incallui/view/AnswerLayout$SlideEndListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/incallui/view/AnswerLayout$SlideEndListener;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/android/incallui/view/AnswerLayout;->mSlideEndListener:Lcom/android/incallui/view/AnswerLayout$SlideEndListener;

    .line 27
    return-void
.end method

.method public setVideoCall(Z)V
    .locals 0
    .param p1, "isVideoCall"    # Z

    .prologue
    .line 32
    return-void
.end method

.method public showAnswerUi(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 36
    return-void
.end method

.method public showTextButton(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 40
    return-void
.end method
