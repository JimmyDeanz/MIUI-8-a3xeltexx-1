.class Lcom/android/incallui/CallCardFragment$8;
.super Ljava/lang/Object;
.source "CallCardFragment.java"

# interfaces
.implements Lcom/android/incallui/view/AnimationCircleLayout$OnAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/CallCardFragment;->controlBigAvatar(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/CallCardFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/CallCardFragment;)V
    .locals 0

    .prologue
    .line 1047
    iput-object p1, p0, Lcom/android/incallui/CallCardFragment$8;->this$0:Lcom/android/incallui/CallCardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1050
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment$8;->this$0:Lcom/android/incallui/CallCardFragment;

    # getter for: Lcom/android/incallui/CallCardFragment;->mFrontGround:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/incallui/CallCardFragment;->access$300(Lcom/android/incallui/CallCardFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1052
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment$8;->this$0:Lcom/android/incallui/CallCardFragment;

    invoke-virtual {v0, v2, v2}, Lcom/android/incallui/CallCardFragment;->showSpeakerOnOrIncomingMask(ZZ)V

    .line 1053
    return-void
.end method
