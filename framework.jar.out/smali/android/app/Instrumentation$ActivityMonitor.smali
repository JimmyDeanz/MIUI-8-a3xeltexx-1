.class public Landroid/app/Instrumentation$ActivityMonitor;
.super Ljava/lang/Object;
.source "Instrumentation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Instrumentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActivityMonitor"
.end annotation


# instance fields
.field private final mBlock:Z

.field private final mClass:Ljava/lang/String;

.field mHits:I

.field mLastActivity:Landroid/app/Activity;

.field private final mResult:Landroid/app/Instrumentation$ActivityResult;

.field private final mWhich:Landroid/content/IntentFilter;


# direct methods
.method public constructor <init>(Landroid/content/IntentFilter;Landroid/app/Instrumentation$ActivityResult;Z)V
    .locals 2
    .param p1, "which"    # Landroid/content/IntentFilter;
    .param p2, "result"    # Landroid/app/Instrumentation$ActivityResult;
    .param p3, "block"    # Z

    .prologue
    const/4 v1, 0x0

    .line 480
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 461
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    .line 464
    iput-object v1, p0, Landroid/app/Instrumentation$ActivityMonitor;->mLastActivity:Landroid/app/Activity;

    .line 481
    iput-object p1, p0, Landroid/app/Instrumentation$ActivityMonitor;->mWhich:Landroid/content/IntentFilter;

    .line 482
    iput-object v1, p0, Landroid/app/Instrumentation$ActivityMonitor;->mClass:Ljava/lang/String;

    .line 483
    iput-object p2, p0, Landroid/app/Instrumentation$ActivityMonitor;->mResult:Landroid/app/Instrumentation$ActivityResult;

    .line 484
    iput-boolean p3, p0, Landroid/app/Instrumentation$ActivityMonitor;->mBlock:Z

    .line 485
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/app/Instrumentation$ActivityResult;Z)V
    .locals 2
    .param p1, "cls"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/app/Instrumentation$ActivityResult;
    .param p3, "block"    # Z

    .prologue
    const/4 v1, 0x0

    .line 501
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 461
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    .line 464
    iput-object v1, p0, Landroid/app/Instrumentation$ActivityMonitor;->mLastActivity:Landroid/app/Activity;

    .line 502
    iput-object v1, p0, Landroid/app/Instrumentation$ActivityMonitor;->mWhich:Landroid/content/IntentFilter;

    .line 503
    iput-object p1, p0, Landroid/app/Instrumentation$ActivityMonitor;->mClass:Ljava/lang/String;

    .line 504
    iput-object p2, p0, Landroid/app/Instrumentation$ActivityMonitor;->mResult:Landroid/app/Instrumentation$ActivityResult;

    .line 505
    iput-boolean p3, p0, Landroid/app/Instrumentation$ActivityMonitor;->mBlock:Z

    .line 506
    return-void
.end method


# virtual methods
.method public final getFilter()Landroid/content/IntentFilter;
    .locals 1

    .prologue
    .line 512
    iget-object v0, p0, Landroid/app/Instrumentation$ActivityMonitor;->mWhich:Landroid/content/IntentFilter;

    return-object v0
.end method

.method public final getHits()I
    .locals 1

    .prologue
    .line 535
    iget v0, p0, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    return v0
.end method

.method public final getLastActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 543
    iget-object v0, p0, Landroid/app/Instrumentation$ActivityMonitor;->mLastActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public final getResult()Landroid/app/Instrumentation$ActivityResult;
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Landroid/app/Instrumentation$ActivityMonitor;->mResult:Landroid/app/Instrumentation$ActivityResult;

    return-object v0
.end method

.method public final isBlocking()Z
    .locals 1

    .prologue
    .line 528
    iget-boolean v0, p0, Landroid/app/Instrumentation$ActivityMonitor;->mBlock:Z

    return v0
.end method

.method final match(Landroid/content/Context;Landroid/app/Activity;Landroid/content/Intent;)Z
    .locals 7
    .param p1, "who"    # Landroid/content/Context;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 596
    monitor-enter p0

    .line 597
    :try_start_0
    iget-object v3, p0, Landroid/app/Instrumentation$ActivityMonitor;->mWhich:Landroid/content/IntentFilter;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/app/Instrumentation$ActivityMonitor;->mWhich:Landroid/content/IntentFilter;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x1

    const-string v6, "Instrumentation"

    invoke-virtual {v3, v4, p3, v5, v6}, Landroid/content/IntentFilter;->match(Landroid/content/ContentResolver;Landroid/content/Intent;ZLjava/lang/String;)I

    move-result v3

    if-gez v3, :cond_0

    .line 600
    monitor-exit p0

    .line 617
    :goto_0
    return v1

    .line 602
    :cond_0
    iget-object v3, p0, Landroid/app/Instrumentation$ActivityMonitor;->mClass:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 603
    const/4 v0, 0x0

    .line 604
    .local v0, "cls":Ljava/lang/String;
    if-eqz p2, :cond_3

    .line 605
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 609
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    iget-object v3, p0, Landroid/app/Instrumentation$ActivityMonitor;->mClass:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 610
    :cond_2
    monitor-exit p0

    goto :goto_0

    .line 618
    .end local v0    # "cls":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 606
    .restart local v0    # "cls":Ljava/lang/String;
    :cond_3
    :try_start_1
    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 607
    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 613
    .end local v0    # "cls":Ljava/lang/String;
    :cond_4
    if-eqz p2, :cond_5

    .line 614
    iput-object p2, p0, Landroid/app/Instrumentation$ActivityMonitor;->mLastActivity:Landroid/app/Activity;

    .line 615
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 617
    :cond_5
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v2

    goto :goto_0
.end method

.method public final waitForActivity()Landroid/app/Activity;
    .locals 2

    .prologue
    .line 553
    monitor-enter p0

    .line 554
    :goto_0
    :try_start_0
    iget-object v1, p0, Landroid/app/Instrumentation$ActivityMonitor;->mLastActivity:Landroid/app/Activity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 556
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 557
    :catch_0
    move-exception v1

    goto :goto_0

    .line 560
    :cond_0
    :try_start_2
    iget-object v0, p0, Landroid/app/Instrumentation$ActivityMonitor;->mLastActivity:Landroid/app/Activity;

    .line 561
    .local v0, "res":Landroid/app/Activity;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/Instrumentation$ActivityMonitor;->mLastActivity:Landroid/app/Activity;

    .line 562
    monitor-exit p0

    return-object v0

    .line 563
    .end local v0    # "res":Landroid/app/Activity;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public final waitForActivityWithTimeout(J)Landroid/app/Activity;
    .locals 3
    .param p1, "timeOut"    # J

    .prologue
    const/4 v0, 0x0

    .line 576
    monitor-enter p0

    .line 577
    :try_start_0
    iget-object v1, p0, Landroid/app/Instrumentation$ActivityMonitor;->mLastActivity:Landroid/app/Activity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 579
    :try_start_1
    invoke-virtual {p0, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 583
    :cond_0
    :goto_0
    :try_start_2
    iget-object v1, p0, Landroid/app/Instrumentation$ActivityMonitor;->mLastActivity:Landroid/app/Activity;

    if-nez v1, :cond_1

    .line 584
    monitor-exit p0

    .line 588
    :goto_1
    return-object v0

    .line 586
    :cond_1
    iget-object v0, p0, Landroid/app/Instrumentation$ActivityMonitor;->mLastActivity:Landroid/app/Activity;

    .line 587
    .local v0, "res":Landroid/app/Activity;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/Instrumentation$ActivityMonitor;->mLastActivity:Landroid/app/Activity;

    .line 588
    monitor-exit p0

    goto :goto_1

    .line 590
    .end local v0    # "res":Landroid/app/Activity;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 580
    :catch_0
    move-exception v1

    goto :goto_0
.end method
