.class Landroid/media/WFDUibcManager$EventQueue;
.super Ljava/lang/Object;
.source "WFDUibcManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/WFDUibcManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventQueue"
.end annotation


# instance fields
.field private queuedEvents:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Landroid/view/InputEvent;",
            ">;"
        }
    .end annotation
.end field

.field private rotateEvents:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/media/WFDUibcManager;


# direct methods
.method private constructor <init>(Landroid/media/WFDUibcManager;)V
    .locals 1

    .prologue
    iput-object p1, p0, Landroid/media/WFDUibcManager$EventQueue;->this$0:Landroid/media/WFDUibcManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Landroid/media/WFDUibcManager$EventQueue;->queuedEvents:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Landroid/media/WFDUibcManager$EventQueue;->rotateEvents:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/WFDUibcManager;Landroid/media/WFDUibcManager$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/media/WFDUibcManager;
    .param p2, "x1"    # Landroid/media/WFDUibcManager$1;

    .prologue
    invoke-direct {p0, p1}, Landroid/media/WFDUibcManager$EventQueue;-><init>(Landroid/media/WFDUibcManager;)V

    return-void
.end method


# virtual methods
.method public addEvent(Landroid/view/InputEvent;)V
    .locals 3
    .param p1, "ev"    # Landroid/view/InputEvent;

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/media/WFDUibcManager$EventQueue;->queuedEvents:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "WFDUibcManager"

    const-string v2, "Interrupted when waiting to insert to queue"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "WFDUibcManager"

    const-string v2, "Null pointer exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getNextEvent()Landroid/view/InputEvent;
    .locals 7

    .prologue
    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Landroid/media/WFDUibcManager$EventQueue;->queuedEvents:Ljava/util/concurrent/BlockingQueue;

    const-wide/16 v4, 0x3

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v4, v5, v6}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/InputEvent;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .local v1, "queuedEvent":Landroid/view/InputEvent;
    if-eqz v1, :cond_0

    .end local v1    # "queuedEvent":Landroid/view/InputEvent;
    :goto_0
    return-object v1

    .restart local v1    # "queuedEvent":Landroid/view/InputEvent;
    :cond_0
    move-object v1, v2

    goto :goto_0

    .end local v1    # "queuedEvent":Landroid/view/InputEvent;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v3, "WFDUibcManager"

    const-string v4, "Interrupted when waiting to read from queue"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v2

    goto :goto_0
.end method

.method public getRotateEvent()Ljava/lang/Integer;
    .locals 2

    .prologue
    iget-object v1, p0, Landroid/media/WFDUibcManager$EventQueue;->rotateEvents:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .local v0, "event":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .end local v0    # "event":Ljava/lang/Integer;
    :goto_0
    return-object v0

    .restart local v0    # "event":Ljava/lang/Integer;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public rotate(II)V
    .locals 5
    .param p1, "radians"    # I
    .param p2, "fraction"    # I

    .prologue
    if-gez p1, :cond_0

    mul-int/lit8 p2, p2, -0x1

    :cond_0
    int-to-float v2, p1

    int-to-float v3, p2

    const v4, 0x3b7f9724    # 0.0039f

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/high16 v3, 0x43340000    # 180.0f

    mul-float/2addr v2, v3

    const v3, 0x4048f5c3    # 3.14f

    div-float v0, v2, v3

    .local v0, "degrees":F
    # getter for: Landroid/media/WFDUibcManager;->DEBUG:Z
    invoke-static {}, Landroid/media/WFDUibcManager;->access$000()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "WFDUibcManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Rotate to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :try_start_0
    iget-object v2, p0, Landroid/media/WFDUibcManager$EventQueue;->rotateEvents:Ljava/util/concurrent/BlockingQueue;

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v2, "WFDUibcManager"

    const-string v3, "Interrupted when waiting to insert to queue"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v1

    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v2, "WFDUibcManager"

    const-string v3, "Null pointer exception"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
