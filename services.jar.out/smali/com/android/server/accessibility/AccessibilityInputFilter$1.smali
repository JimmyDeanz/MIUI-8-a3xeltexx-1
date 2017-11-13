.class Lcom/android/server/accessibility/AccessibilityInputFilter$1;
.super Ljava/lang/Object;
.source "AccessibilityInputFilter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityInputFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accessibility/AccessibilityInputFilter;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/AccessibilityInputFilter;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$1;->this$0:Lcom/android/server/accessibility/AccessibilityInputFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 123
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$1;->this$0:Lcom/android/server/accessibility/AccessibilityInputFilter;

    # getter for: Lcom/android/server/accessibility/AccessibilityInputFilter;->mChoreographer:Landroid/view/Choreographer;
    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityInputFilter;->access$000(Lcom/android/server/accessibility/AccessibilityInputFilter;)Landroid/view/Choreographer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Choreographer;->getFrameTimeNanos()J

    move-result-wide v0

    .line 125
    .local v0, "frameTimeNanos":J
    # getter for: Lcom/android/server/accessibility/AccessibilityInputFilter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/accessibility/AccessibilityInputFilter;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Begin batch processing for frame: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$1;->this$0:Lcom/android/server/accessibility/AccessibilityInputFilter;

    # invokes: Lcom/android/server/accessibility/AccessibilityInputFilter;->processBatchedEvents(J)V
    invoke-static {v2, v0, v1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->access$200(Lcom/android/server/accessibility/AccessibilityInputFilter;J)V

    .line 129
    # getter for: Lcom/android/server/accessibility/AccessibilityInputFilter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/accessibility/AccessibilityInputFilter;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "End batch processing."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$1;->this$0:Lcom/android/server/accessibility/AccessibilityInputFilter;

    # getter for: Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventQueue:Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;
    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityInputFilter;->access$300(Lcom/android/server/accessibility/AccessibilityInputFilter;)Lcom/android/server/accessibility/AccessibilityInputFilter$MotionEventHolder;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 132
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$1;->this$0:Lcom/android/server/accessibility/AccessibilityInputFilter;

    # invokes: Lcom/android/server/accessibility/AccessibilityInputFilter;->scheduleProcessBatchedEvents()V
    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityInputFilter;->access$400(Lcom/android/server/accessibility/AccessibilityInputFilter;)V

    .line 134
    :cond_0
    return-void
.end method
