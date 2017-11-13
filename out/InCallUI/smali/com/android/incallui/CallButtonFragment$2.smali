.class Lcom/android/incallui/CallButtonFragment$2;
.super Ljava/lang/Object;
.source "CallButtonFragment.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/CallButtonFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/CallButtonFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/CallButtonFragment;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lcom/android/incallui/CallButtonFragment$2;->this$0:Lcom/android/incallui/CallButtonFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 190
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 191
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 198
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 193
    :pswitch_0
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment$2;->this$0:Lcom/android/incallui/CallButtonFragment;

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonPresenter;->onSpeakerLongClick()V

    goto :goto_0

    .line 191
    nop

    :pswitch_data_0
    .packed-switch 0x7f090038
        :pswitch_0
    .end packed-switch
.end method
