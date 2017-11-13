.class Lcom/android/internal/app/IrisHelperVideoActivity$2;
.super Ljava/lang/Object;
.source "IrisHelperVideoActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/IrisHelperVideoActivity;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/IrisHelperVideoActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/IrisHelperVideoActivity;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/internal/app/IrisHelperVideoActivity$2;->this$0:Lcom/android/internal/app/IrisHelperVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 0
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;

    .prologue
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method
