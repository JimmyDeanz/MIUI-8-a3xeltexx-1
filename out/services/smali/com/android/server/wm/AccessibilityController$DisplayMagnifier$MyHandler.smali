.class Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;
.super Landroid/os/Handler;
.source "AccessibilityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# static fields
.field public static final MESSAGE_NOTIFY_MAGNIFIED_BOUNDS_CHANGED:I = 0x1

.field public static final MESSAGE_NOTIFY_RECTANGLE_ON_SCREEN_REQUESTED:I = 0x2

.field public static final MESSAGE_NOTIFY_ROTATION_CHANGED:I = 0x4

.field public static final MESSAGE_NOTIFY_USER_CONTEXT_CHANGED:I = 0x3

.field public static final MESSAGE_SHOW_MAGNIFIED_REGION_BOUNDS_IF_NEEDED:I = 0x5


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 965
    iput-object p1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;->this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .line 966
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 967
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 971
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 1006
    :goto_0
    return-void

    .line 973
    :pswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Region;

    .line 974
    .local v2, "bounds":Landroid/graphics/Region;
    iget-object v7, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;->this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    # getter for: Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mCallbacks:Landroid/view/WindowManagerInternal$MagnificationCallbacks;
    invoke-static {v7}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->access$1400(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/view/WindowManagerInternal$MagnificationCallbacks;

    move-result-object v7

    invoke-interface {v7, v2}, Landroid/view/WindowManagerInternal$MagnificationCallbacks;->onMagnifedBoundsChanged(Landroid/graphics/Region;)V

    .line 975
    invoke-virtual {v2}, Landroid/graphics/Region;->recycle()V

    goto :goto_0

    .line 979
    .end local v2    # "bounds":Landroid/graphics/Region;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 980
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget v3, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 981
    .local v3, "left":I
    iget v6, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 982
    .local v6, "top":I
    iget v4, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 983
    .local v4, "right":I
    iget v1, v0, Lcom/android/internal/os/SomeArgs;->argi4:I

    .line 984
    .local v1, "bottom":I
    iget-object v7, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;->this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    # getter for: Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mCallbacks:Landroid/view/WindowManagerInternal$MagnificationCallbacks;
    invoke-static {v7}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->access$1400(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/view/WindowManagerInternal$MagnificationCallbacks;

    move-result-object v7

    invoke-interface {v7, v3, v6, v4, v1}, Landroid/view/WindowManagerInternal$MagnificationCallbacks;->onRectangleOnScreenRequested(IIII)V

    .line 985
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_0

    .line 989
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "bottom":I
    .end local v3    # "left":I
    .end local v4    # "right":I
    .end local v6    # "top":I
    :pswitch_2
    iget-object v7, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;->this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    # getter for: Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mCallbacks:Landroid/view/WindowManagerInternal$MagnificationCallbacks;
    invoke-static {v7}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->access$1400(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/view/WindowManagerInternal$MagnificationCallbacks;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManagerInternal$MagnificationCallbacks;->onUserContextChanged()V

    goto :goto_0

    .line 993
    :pswitch_3
    iget v5, p1, Landroid/os/Message;->arg1:I

    .line 994
    .local v5, "rotation":I
    iget-object v7, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;->this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    # getter for: Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mCallbacks:Landroid/view/WindowManagerInternal$MagnificationCallbacks;
    invoke-static {v7}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->access$1400(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Landroid/view/WindowManagerInternal$MagnificationCallbacks;

    move-result-object v7

    invoke-interface {v7, v5}, Landroid/view/WindowManagerInternal$MagnificationCallbacks;->onRotationChanged(I)V

    goto :goto_0

    .line 998
    .end local v5    # "rotation":I
    :pswitch_4
    iget-object v7, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;->this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    # getter for: Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v7}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->access$600(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v7

    iget-object v8, v7, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v8

    .line 999
    :try_start_0
    iget-object v7, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;->this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    # getter for: Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mMagnifedViewport:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;
    invoke-static {v7}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->access$1500(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->isMagnifyingLocked()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1000
    iget-object v7, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;->this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    # getter for: Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mMagnifedViewport:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;
    invoke-static {v7}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->access$1500(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    move-result-object v7

    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-virtual {v7, v9, v10}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->setMagnifiedRegionBorderShownLocked(ZZ)V

    .line 1001
    iget-object v7, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;->this$0:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    # getter for: Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v7}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->access$600(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 1003
    :cond_0
    monitor-exit v8

    goto :goto_0

    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 971
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
