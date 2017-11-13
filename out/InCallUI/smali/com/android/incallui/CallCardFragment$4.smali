.class Lcom/android/incallui/CallCardFragment$4;
.super Ljava/lang/Object;
.source "CallCardFragment.java"

# interfaces
.implements Lcom/android/incallui/util/ImageLoadHelper$OnImageLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/CallCardFragment;->setCallCardImage(Landroid/graphics/drawable/Drawable;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/CallCardFragment;

.field final synthetic val$isInComing:Z


# direct methods
.method constructor <init>(Lcom/android/incallui/CallCardFragment;Z)V
    .locals 0

    .prologue
    .line 404
    iput-object p1, p0, Lcom/android/incallui/CallCardFragment$4;->this$0:Lcom/android/incallui/CallCardFragment;

    iput-boolean p2, p0, Lcom/android/incallui/CallCardFragment$4;->val$isInComing:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageLoaded(Lcom/android/incallui/model/CallCardImage;)V
    .locals 2
    .param p1, "callCardImage"    # Lcom/android/incallui/model/CallCardImage;

    .prologue
    .line 407
    iget-boolean v0, p0, Lcom/android/incallui/CallCardFragment$4;->val$isInComing:Z

    if-eqz v0, :cond_1

    .line 408
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment$4;->this$0:Lcom/android/incallui/CallCardFragment;

    # getter for: Lcom/android/incallui/CallCardFragment;->mFrontGround:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/incallui/CallCardFragment;->access$300(Lcom/android/incallui/CallCardFragment;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p1, Lcom/android/incallui/model/CallCardImage;->avatar:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 412
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    iget-object v1, p1, Lcom/android/incallui/model/CallCardImage;->background:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->setCallBackground(Landroid/graphics/Bitmap;)V

    .line 413
    return-void

    .line 409
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment$4;->this$0:Lcom/android/incallui/CallCardFragment;

    # invokes: Lcom/android/incallui/CallCardFragment;->isSpeakerOn()Z
    invoke-static {v0}, Lcom/android/incallui/CallCardFragment;->access$400(Lcom/android/incallui/CallCardFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment$4;->this$0:Lcom/android/incallui/CallCardFragment;

    # getter for: Lcom/android/incallui/CallCardFragment;->mFrontGround:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/incallui/CallCardFragment;->access$300(Lcom/android/incallui/CallCardFragment;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p1, Lcom/android/incallui/model/CallCardImage;->background:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
