.class Landroid/widget/Editor$Blink;
.super Landroid/os/Handler;
.source "Editor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Blink"
.end annotation


# instance fields
.field private mCancelled:Z

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method private constructor <init>(Landroid/widget/Editor;)V
    .locals 0

    .prologue
    .line 2294
    iput-object p1, p0, Landroid/widget/Editor$Blink;->this$0:Landroid/widget/Editor;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/Editor;
    .param p2, "x1"    # Landroid/widget/Editor$1;

    .prologue
    .line 2294
    invoke-direct {p0, p1}, Landroid/widget/Editor$Blink;-><init>(Landroid/widget/Editor;)V

    return-void
.end method


# virtual methods
.method cancel()V
    .locals 1

    .prologue
    .line 2314
    iget-boolean v0, p0, Landroid/widget/Editor$Blink;->mCancelled:Z

    if-nez v0, :cond_0

    .line 2315
    invoke-virtual {p0, p0}, Landroid/widget/Editor$Blink;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2316
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor$Blink;->mCancelled:Z

    .line 2318
    :cond_0
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 2298
    iget-boolean v0, p0, Landroid/widget/Editor$Blink;->mCancelled:Z

    if-eqz v0, :cond_1

    .line 2311
    :cond_0
    :goto_0
    return-void

    .line 2302
    :cond_1
    invoke-virtual {p0, p0}, Landroid/widget/Editor$Blink;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2304
    iget-object v0, p0, Landroid/widget/Editor$Blink;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->shouldBlink()Z
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2305
    iget-object v0, p0, Landroid/widget/Editor$Blink;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2306
    iget-object v0, p0, Landroid/widget/Editor$Blink;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$900(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidateCursorPath()V

    .line 2309
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x1f4

    add-long/2addr v0, v2

    invoke-virtual {p0, p0, v0, v1}, Landroid/widget/Editor$Blink;->postAtTime(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method uncancel()V
    .locals 1

    .prologue
    .line 2321
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor$Blink;->mCancelled:Z

    .line 2322
    return-void
.end method
