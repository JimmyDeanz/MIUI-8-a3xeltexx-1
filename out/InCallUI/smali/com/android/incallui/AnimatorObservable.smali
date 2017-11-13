.class public Lcom/android/incallui/AnimatorObservable;
.super Ljava/lang/Object;
.source "AnimatorObservable.java"

# interfaces
.implements Lcom/android/incallui/OnAnimatorChanged;


# static fields
.field private static mInstance:Lcom/android/incallui/AnimatorObservable;


# instance fields
.field private mAnimatorListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/incallui/OnAnimatorChanged;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-object v0, Lcom/android/incallui/AnimatorObservable;->mInstance:Lcom/android/incallui/AnimatorObservable;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/AnimatorObservable;->mAnimatorListeners:Ljava/util/List;

    return-void
.end method

.method public static createInstacne()Lcom/android/incallui/AnimatorObservable;
    .locals 2

    .prologue
    .line 18
    const-class v1, Lcom/android/incallui/AnimatorObservable;

    monitor-enter v1

    .line 19
    :try_start_0
    sget-object v0, Lcom/android/incallui/AnimatorObservable;->mInstance:Lcom/android/incallui/AnimatorObservable;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lcom/android/incallui/AnimatorObservable;

    invoke-direct {v0}, Lcom/android/incallui/AnimatorObservable;-><init>()V

    sput-object v0, Lcom/android/incallui/AnimatorObservable;->mInstance:Lcom/android/incallui/AnimatorObservable;

    .line 22
    :cond_0
    sget-object v0, Lcom/android/incallui/AnimatorObservable;->mInstance:Lcom/android/incallui/AnimatorObservable;

    monitor-exit v1

    return-object v0

    .line 23
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public onAnimatorPause()V
    .locals 2

    .prologue
    .line 52
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/incallui/AnimatorObservable;->mAnimatorListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 53
    iget-object v1, p0, Lcom/android/incallui/AnimatorObservable;->mAnimatorListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/OnAnimatorChanged;

    invoke-interface {v1}, Lcom/android/incallui/OnAnimatorChanged;->onAnimatorPause()V

    .line 52
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 55
    :cond_0
    return-void
.end method

.method public onAnimatorResume()V
    .locals 2

    .prologue
    .line 59
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/incallui/AnimatorObservable;->mAnimatorListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 60
    iget-object v1, p0, Lcom/android/incallui/AnimatorObservable;->mAnimatorListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/OnAnimatorChanged;

    invoke-interface {v1}, Lcom/android/incallui/OnAnimatorChanged;->onAnimatorResume()V

    .line 59
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 62
    :cond_0
    return-void
.end method

.method public onViewMove(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 80
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/incallui/AnimatorObservable;->mAnimatorListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 81
    iget-object v1, p0, Lcom/android/incallui/AnimatorObservable;->mAnimatorListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/OnAnimatorChanged;

    invoke-interface {v1, p1}, Lcom/android/incallui/OnAnimatorChanged;->onViewMove(Landroid/view/View;)V

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 83
    :cond_0
    return-void
.end method

.method public onViewTouchDown(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "play"    # Z

    .prologue
    .line 66
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/incallui/AnimatorObservable;->mAnimatorListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 67
    iget-object v1, p0, Lcom/android/incallui/AnimatorObservable;->mAnimatorListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/OnAnimatorChanged;

    invoke-interface {v1, p1, p2}, Lcom/android/incallui/OnAnimatorChanged;->onViewTouchDown(Landroid/view/View;Z)V

    .line 66
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 69
    :cond_0
    return-void
.end method

.method public onViewTouchUp(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 73
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/incallui/AnimatorObservable;->mAnimatorListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 74
    iget-object v1, p0, Lcom/android/incallui/AnimatorObservable;->mAnimatorListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/OnAnimatorChanged;

    invoke-interface {v1, p1}, Lcom/android/incallui/OnAnimatorChanged;->onViewTouchUp(Landroid/view/View;)V

    .line 73
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 76
    :cond_0
    return-void
.end method

.method public registerListener(Lcom/android/incallui/OnAnimatorChanged;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/incallui/OnAnimatorChanged;

    .prologue
    .line 27
    if-nez p1, :cond_1

    .line 36
    :cond_0
    :goto_0
    return-void

    .line 30
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/incallui/AnimatorObservable;->mAnimatorListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 31
    iget-object v1, p0, Lcom/android/incallui/AnimatorObservable;->mAnimatorListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p1, :cond_0

    .line 30
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 35
    :cond_2
    iget-object v1, p0, Lcom/android/incallui/AnimatorObservable;->mAnimatorListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public unRegisterListener(Lcom/android/incallui/OnAnimatorChanged;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/incallui/OnAnimatorChanged;

    .prologue
    .line 39
    if-nez p1, :cond_1

    .line 48
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/incallui/AnimatorObservable;->mAnimatorListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 43
    iget-object v1, p0, Lcom/android/incallui/AnimatorObservable;->mAnimatorListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_2

    .line 44
    iget-object v1, p0, Lcom/android/incallui/AnimatorObservable;->mAnimatorListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 42
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
