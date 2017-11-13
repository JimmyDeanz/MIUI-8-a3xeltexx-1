.class Lcom/android/incallui/CallCardFragment$AutoTextViewChangeListener;
.super Ljava/lang/Object;
.source "CallCardFragment.java"

# interfaces
.implements Lcom/android/incallui/view/AutoTextView$ChangeLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/CallCardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoTextViewChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/CallCardFragment;


# direct methods
.method private constructor <init>(Lcom/android/incallui/CallCardFragment;)V
    .locals 0

    .prologue
    .line 971
    iput-object p1, p0, Lcom/android/incallui/CallCardFragment$AutoTextViewChangeListener;->this$0:Lcom/android/incallui/CallCardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/incallui/CallCardFragment;Lcom/android/incallui/CallCardFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/incallui/CallCardFragment;
    .param p2, "x1"    # Lcom/android/incallui/CallCardFragment$1;

    .prologue
    .line 971
    invoke-direct {p0, p1}, Lcom/android/incallui/CallCardFragment$AutoTextViewChangeListener;-><init>(Lcom/android/incallui/CallCardFragment;)V

    return-void
.end method


# virtual methods
.method public isChange(Landroid/view/View;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 974
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallCardFragment$AutoTextViewChangeListener;->this$0:Lcom/android/incallui/CallCardFragment;

    # getter for: Lcom/android/incallui/CallCardFragment;->mPrimaryName:Lcom/android/incallui/view/AutoTextView;
    invoke-static {v0}, Lcom/android/incallui/CallCardFragment;->access$600(Lcom/android/incallui/CallCardFragment;)Lcom/android/incallui/view/AutoTextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 975
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment$AutoTextViewChangeListener;->this$0:Lcom/android/incallui/CallCardFragment;

    # getter for: Lcom/android/incallui/CallCardFragment;->mPrimaryName:Lcom/android/incallui/view/AutoTextView;
    invoke-static {v0}, Lcom/android/incallui/CallCardFragment;->access$600(Lcom/android/incallui/CallCardFragment;)Lcom/android/incallui/view/AutoTextView;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/incallui/view/AutoTextView;->setText(Ljava/lang/CharSequence;)V

    .line 977
    :cond_0
    return-void
.end method

.method public isOk(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 981
    const/4 v0, 0x1

    return v0
.end method
