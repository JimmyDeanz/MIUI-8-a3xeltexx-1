.class public Lcom/android/incallui/view/SlideUpLayout$RespondViaSmsItemClickListener;
.super Ljava/lang/Object;
.source "SlideUpLayout.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/view/SlideUpLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RespondViaSmsItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/view/SlideUpLayout;


# direct methods
.method public constructor <init>(Lcom/android/incallui/view/SlideUpLayout;)V
    .locals 0

    .prologue
    .line 549
    iput-object p1, p0, Lcom/android/incallui/view/SlideUpLayout$RespondViaSmsItemClickListener;->this$0:Lcom/android/incallui/view/SlideUpLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 552
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 555
    .local v0, "message":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/incallui/view/SlideUpLayout$RespondViaSmsItemClickListener;->this$0:Lcom/android/incallui/view/SlideUpLayout;

    iget-object v1, v1, Lcom/android/incallui/view/SlideUpLayout;->mSlideEndListener:Lcom/android/incallui/view/AnswerLayout$SlideEndListener;

    if-eqz v1, :cond_0

    .line 556
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p3, v1, :cond_1

    .line 557
    iget-object v1, p0, Lcom/android/incallui/view/SlideUpLayout$RespondViaSmsItemClickListener;->this$0:Lcom/android/incallui/view/SlideUpLayout;

    iget-object v1, v1, Lcom/android/incallui/view/SlideUpLayout;->mSlideEndListener:Lcom/android/incallui/view/AnswerLayout$SlideEndListener;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/incallui/view/AnswerLayout$SlideEndListener;->onMessage(Ljava/lang/String;)V

    .line 563
    :cond_0
    :goto_0
    return-void

    .line 559
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/view/SlideUpLayout$RespondViaSmsItemClickListener;->this$0:Lcom/android/incallui/view/SlideUpLayout;

    iget-object v1, v1, Lcom/android/incallui/view/SlideUpLayout;->mSlideEndListener:Lcom/android/incallui/view/AnswerLayout$SlideEndListener;

    invoke-interface {v1, v0}, Lcom/android/incallui/view/AnswerLayout$SlideEndListener;->onMessage(Ljava/lang/String;)V

    goto :goto_0
.end method
