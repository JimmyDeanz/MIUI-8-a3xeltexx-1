.class Lcom/android/incallui/InCallActivity$4;
.super Ljava/lang/Object;
.source "InCallActivity.java"

# interfaces
.implements Lcom/android/incallui/util/ImageLoadHelper$OnImageLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/InCallActivity;->initCallBackground()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/InCallActivity;


# direct methods
.method constructor <init>(Lcom/android/incallui/InCallActivity;)V
    .locals 0

    .prologue
    .line 935
    iput-object p1, p0, Lcom/android/incallui/InCallActivity$4;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageLoaded(Lcom/android/incallui/model/CallCardImage;)V
    .locals 2
    .param p1, "callCardImage"    # Lcom/android/incallui/model/CallCardImage;

    .prologue
    .line 938
    iget-object v0, p0, Lcom/android/incallui/InCallActivity$4;->this$0:Lcom/android/incallui/InCallActivity;

    iget-object v1, p1, Lcom/android/incallui/model/CallCardImage;->background:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallActivity;->setCallBackground(Landroid/graphics/Bitmap;)V

    .line 939
    return-void
.end method
