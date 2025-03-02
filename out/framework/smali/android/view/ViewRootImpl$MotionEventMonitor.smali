.class public Landroid/view/ViewRootImpl$MotionEventMonitor;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MotionEventMonitor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ViewRootImpl$MotionEventMonitor$OnTouchListener;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "MotionEventMonitor"


# instance fields
.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/ViewRootImpl$MotionEventMonitor$OnTouchListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9063
    const/4 v0, 0x0

    sput-boolean v0, Landroid/view/ViewRootImpl$MotionEventMonitor;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9061
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9069
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl$MotionEventMonitor;->mListeners:Ljava/util/ArrayList;

    return-void
.end method

.method private notifyTouchEvent(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 9119
    iget-object v3, p0, Landroid/view/ViewRootImpl$MotionEventMonitor;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 9120
    .local v0, "cnt":I
    const-string v3, "MotionEventMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifyTouchEvent : Listener cnt="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9121
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 9122
    iget-object v3, p0, Landroid/view/ViewRootImpl$MotionEventMonitor;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewRootImpl$MotionEventMonitor$OnTouchListener;

    .line 9123
    .local v2, "listener":Landroid/view/ViewRootImpl$MotionEventMonitor$OnTouchListener;
    if-eqz v2, :cond_0

    .line 9124
    invoke-interface {v2, p1}, Landroid/view/ViewRootImpl$MotionEventMonitor$OnTouchListener;->onTouch(Landroid/view/MotionEvent;)V

    .line 9121
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9127
    .end local v2    # "listener":Landroid/view/ViewRootImpl$MotionEventMonitor$OnTouchListener;
    :cond_1
    return-void
.end method


# virtual methods
.method public dispatchInputEvent(Landroid/view/InputEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/view/InputEvent;

    .prologue
    .line 9091
    iget-object v2, p0, Landroid/view/ViewRootImpl$MotionEventMonitor;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 9116
    :cond_0
    :goto_0
    return-void

    .line 9095
    :cond_1
    instance-of v2, p1, Landroid/view/MotionEvent;

    if-eqz v2, :cond_3

    move-object v1, p1

    .line 9096
    check-cast v1, Landroid/view/MotionEvent;

    .line 9097
    .local v1, "motionEvent":Landroid/view/MotionEvent;
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 9098
    .local v0, "action":I
    sget-boolean v2, Landroid/view/ViewRootImpl$MotionEventMonitor;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 9099
    const-string v2, "MotionEventMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchInputEvent : action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9101
    :cond_2
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 9108
    :pswitch_1
    invoke-direct {p0, v1}, Landroid/view/ViewRootImpl$MotionEventMonitor;->notifyTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 9112
    .end local v0    # "action":I
    .end local v1    # "motionEvent":Landroid/view/MotionEvent;
    :cond_3
    sget-boolean v2, Landroid/view/ViewRootImpl$MotionEventMonitor;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 9113
    const-string v2, "MotionEventMonitor"

    const-string v3, "dispatchInputEvent : The event is not instance of MotionEvent"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 9101
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public registerMotionEventMonitor(Landroid/view/ViewRootImpl$MotionEventMonitor$OnTouchListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/view/ViewRootImpl$MotionEventMonitor$OnTouchListener;

    .prologue
    .line 9072
    iget-object v0, p0, Landroid/view/ViewRootImpl$MotionEventMonitor;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 9073
    const-string v0, "MotionEventMonitor"

    const-string/jumbo v1, "registerMotionEventMonitor : Just one event listener is allowed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9081
    :cond_0
    :goto_0
    return-void

    .line 9077
    :cond_1
    iget-object v0, p0, Landroid/view/ViewRootImpl$MotionEventMonitor;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9078
    sget-boolean v0, Landroid/view/ViewRootImpl$MotionEventMonitor;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 9079
    const-string v0, "MotionEventMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerMotionEventMonitor : Listener count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/ViewRootImpl$MotionEventMonitor;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unregisterMotionEventMonitor(Landroid/view/ViewRootImpl$MotionEventMonitor$OnTouchListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/view/ViewRootImpl$MotionEventMonitor$OnTouchListener;

    .prologue
    .line 9084
    iget-object v0, p0, Landroid/view/ViewRootImpl$MotionEventMonitor;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 9085
    sget-boolean v0, Landroid/view/ViewRootImpl$MotionEventMonitor;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 9086
    const-string v0, "MotionEventMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unregisterMotionEventMonitor : Listener count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/ViewRootImpl$MotionEventMonitor;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9088
    :cond_0
    return-void
.end method
