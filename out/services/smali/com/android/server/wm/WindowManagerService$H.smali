.class final Lcom/android/server/wm/WindowManagerService$H;
.super Landroid/os/Handler;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "H"
.end annotation


# static fields
.field public static final ADD_STARTING:I = 0x5

.field public static final ALL_WINDOWS_DRAWN:I = 0x21

.field public static final APP_FREEZE_TIMEOUT:I = 0x11

.field public static final APP_TRANSITION_TIMEOUT:I = 0xd

.field public static final BOOT_TIMEOUT:I = 0x17

.field public static final CHECK_IF_BOOT_ANIMATION_FINISHED:I = 0x25

.field public static final CLIENT_FREEZE_TIMEOUT:I = 0x1e

.field public static final DO_ANIMATION_CALLBACK:I = 0x1a

.field public static final DO_DISPLAY_ADDED:I = 0x1b

.field public static final DO_DISPLAY_CHANGED:I = 0x1d

.field public static final DO_DISPLAY_REMOVED:I = 0x1c

.field public static final DO_TRAVERSAL:I = 0x4

.field public static final DRAG_END_TIMEOUT:I = 0x15

.field public static final DRAG_START_TIMEOUT:I = 0x14

.field public static final DRAW_STACK_FOCUS_CHANGE:I = 0x64

.field public static final DUALSCREEN_ADD_BACK:I = 0xca

.field public static final DUALSCREEN_BACK_TIMEOUT:I = 0xcc

.field public static final DUALSCREEN_REMOVE_BACK:I = 0xcb

.field public static final DUALSCREEN_SEND_NEW_IME_CONFIGURATION:I = 0xcd

.field public static final DUALSCREEN_TRANSITION_TIMEOUT:I = 0xc9

.field public static final ENABLE_SCREEN:I = 0x10

.field public static final FINISHED_STARTING:I = 0x7

.field public static final FORCE_GC:I = 0xf

.field public static final MULTIWINDOW_GESTURE_HELP_SHOW:I = 0x66

.field public static final MULTIWINDOW_STYLE_CHANGING_TIMEOUT:I = 0x68

.field public static final MULTIWINDOW_TRANSACTION_TIMEOUT:I = 0x65

.field public static final NEW_ANIMATOR_SCALE:I = 0x22

.field public static final NOTIFY_ACTIVITY_DRAWN:I = 0x20

.field public static final NOTIFY_CASCADE_STACK_ROTATED:I = 0x6b

.field public static final NOTIFY_MULTIWINDOW_MINIMIZED:I = 0x67

.field public static final PERSIST_ANIMATION_SCALE:I = 0xe

.field public static final REMOVE_STARTING:I = 0x6

.field public static final REPORT_APPLICATION_TOKEN_DRAWN:I = 0x9

.field public static final REPORT_APPLICATION_TOKEN_WINDOWS:I = 0x8

.field public static final REPORT_FOCUS_CHANGE:I = 0x2

.field public static final REPORT_HARD_KEYBOARD_STATUS_CHANGE:I = 0x16

.field public static final REPORT_LOSING_FOCUS:I = 0x3

.field public static final REPORT_WINDOWS_CHANGE:I = 0x13

.field public static final RESET_ANR_MESSAGE:I = 0x26

.field public static final SEND_NEW_CONFIGURATION:I = 0x12

.field public static final SEND_NOTIFY_DISPLAY_FREEZE_STOPPED:I = 0x6a

.field public static final SET_COVER_SWITCH_STATE:I = 0x69

.field public static final SHOW_CIRCULAR_DISPLAY_MASK:I = 0x23

.field public static final SHOW_EMULATOR_DISPLAY_OVERLAY:I = 0x24

.field public static final SHOW_STRICT_MODE_VIOLATION:I = 0x19

.field public static final TAP_OUTSIDE_STACK:I = 0x1f

.field public static final WAITING_FOR_DRAWN_TIMEOUT:I = 0x18

.field public static final WALLPAPER_DRAW_PENDING_TIMEOUT:I = 0x27

.field public static final WINDOW_FREEZE_TIMEOUT:I = 0xb


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 0

    .prologue
    .line 13394
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 57
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 13466
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_WINDOW_TRACE:Z

    if-eqz v2, :cond_0

    .line 13467
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleMessage: entry what="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 13469
    :cond_0
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 14441
    :cond_1
    :goto_0
    :sswitch_0
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_WINDOW_TRACE:Z

    if-eqz v2, :cond_2

    .line 14442
    const-string v2, "WindowManager"

    const-string/jumbo v3, "handleMessage: exit"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 14444
    :cond_2
    :goto_1
    return-void

    .line 13472
    :sswitch_1
    const/16 v26, 0x0

    .line 13477
    .local v26, "focusedAppChanged":Z
    const/16 v19, 0x0

    .line 13479
    .local v19, "accessibilityController":Lcom/android/server/wm/AccessibilityController;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 13481
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    if-nez v2, :cond_3

    .line 13483
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v2, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    move-object/from16 v19, v0

    .line 13486
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v2, Lcom/android/server/wm/WindowManagerService;->mLastFocus:Lcom/android/server/wm/WindowState;

    move-object/from16 v29, v0

    .line 13487
    .local v29, "lastFocus":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v2, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    move-object/from16 v32, v0

    .line 13493
    .local v32, "newFocus":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v29

    move-object/from16 v1, v32

    if-ne v0, v1, :cond_4

    .line 13495
    monitor-exit v3

    goto :goto_1

    .line 13524
    .end local v29    # "lastFocus":Lcom/android/server/wm/WindowState;
    .end local v32    # "newFocus":Lcom/android/server/wm/WindowState;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 13499
    .restart local v29    # "lastFocus":Lcom/android/server/wm/WindowState;
    .restart local v32    # "newFocus":Lcom/android/server/wm/WindowState;
    :cond_4
    if-eqz v29, :cond_5

    if-eqz v32, :cond_5

    :try_start_1
    move-object/from16 v0, v29

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v2, :cond_5

    move-object/from16 v0, v32

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v2, :cond_5

    move-object/from16 v0, v29

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eq v2, v4, :cond_5

    .line 13502
    const/16 v26, 0x1

    .line 13506
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v32

    iput-object v0, v2, Lcom/android/server/wm/WindowManagerService;->mLastFocus:Lcom/android/server/wm/WindowState;

    .line 13507
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_FOCUS_LIGHT:Z

    if-eqz v2, :cond_6

    const-string v2, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Focus moving from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13509
    :cond_6
    if-eqz v32, :cond_7

    if-eqz v29, :cond_7

    invoke-virtual/range {v32 .. v32}, Lcom/android/server/wm/WindowState;->isDisplayedLw()Z

    move-result v2

    if-nez v2, :cond_7

    .line 13518
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13519
    const/16 v29, 0x0

    .line 13521
    const/16 v26, 0x0

    .line 13524
    :cond_7
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13540
    if-eqz v19, :cond_8

    .line 13541
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wm/AccessibilityController;->onWindowFocusChangedNotLocked()V

    .line 13547
    :cond_8
    if-eqz v32, :cond_a

    .line 13548
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_FOCUS_LIGHT:Z

    if-eqz v2, :cond_9

    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Gaining focus: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13549
    :cond_9
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v3, v3, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z

    move-object/from16 v0, v32

    move/from16 v1, v26

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/wm/WindowState;->reportFocusChangedSerialized(ZZZ)V

    .line 13550
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    # invokes: Lcom/android/server/wm/WindowManagerService;->notifyFocusChanged()V
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->access$900(Lcom/android/server/wm/WindowManagerService;)V

    .line 13565
    :cond_a
    if-eqz v29, :cond_c

    .line 13572
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_FOCUS_LIGHT:Z

    if-eqz v2, :cond_b

    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Losing focus: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13573
    :cond_b
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v3, v3, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z

    move-object/from16 v0, v29

    move/from16 v1, v26

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/wm/WindowState;->reportFocusChangedSerialized(ZZZ)V

    .line 13581
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/16 v3, 0x3e9

    const/16 v4, 0x65

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/input/InputManagerService;->reloadMousePointerIcon(IIILandroid/graphics/Point;I)V

    .line 13584
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    # getter for: Lcom/android/server/wm/WindowManagerService;->mbEnableHoveringUI:Z
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->access$1000(Lcom/android/server/wm/WindowManagerService;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 13585
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/16 v3, 0x2711

    const/4 v4, 0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/input/InputManagerService;->reloadPointerIcon(IIILandroid/graphics/Point;I)V

    goto/16 :goto_0

    .line 13594
    .end local v19    # "accessibilityController":Lcom/android/server/wm/AccessibilityController;
    .end local v26    # "focusedAppChanged":Z
    .end local v29    # "lastFocus":Lcom/android/server/wm/WindowState;
    .end local v32    # "newFocus":Lcom/android/server/wm/WindowState;
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 13600
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v2, Lcom/android/server/wm/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    .line 13601
    .local v30, "losers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v2, Lcom/android/server/wm/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    .line 13602
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 13604
    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 13605
    .local v17, "N":I
    const/16 v27, 0x0

    .local v27, "i":I
    :goto_2
    move/from16 v0, v27

    move/from16 v1, v17

    if-ge v0, v1, :cond_1

    .line 13606
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_FOCUS_LIGHT:Z

    if-eqz v2, :cond_d

    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Losing delayed focus: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v30

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13608
    :cond_d
    move-object/from16 v0, v30

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v4, v4, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/WindowState;->reportFocusChangedSerialized(ZZ)V

    .line 13605
    add-int/lit8 v27, v27, 0x1

    goto :goto_2

    .line 13602
    .end local v17    # "N":I
    .end local v27    # "i":I
    .end local v30    # "losers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    .line 13613
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 13614
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x0

    iput-boolean v4, v2, Lcom/android/server/wm/WindowManagerService;->mTraversalScheduled:Z

    .line 13615
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    # invokes: Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->access$600(Lcom/android/server/wm/WindowManagerService;)V

    .line 13616
    monitor-exit v3

    goto/16 :goto_0

    :catchall_2
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v2

    .line 13622
    :sswitch_4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Landroid/util/Pair;

    .line 13623
    .local v31, "msgPair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/wm/AppWindowToken;Ljava/lang/Integer;>;"
    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v56, v0

    check-cast v56, Lcom/android/server/wm/AppWindowToken;

    .line 13624
    .local v56, "wtoken":Lcom/android/server/wm/AppWindowToken;
    move-object/from16 v0, v31

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 13627
    .local v15, "displayId":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v51

    .line 13628
    .local v51, "userData":Landroid/os/Bundle;
    if-eqz v51, :cond_15

    const-string/jumbo v2, "originalUserId"

    const/4 v3, 0x0

    move-object/from16 v0, v51

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v16

    .line 13630
    .local v16, "originalUserId":I
    :goto_3
    move-object/from16 v0, v56

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    move-object/from16 v39, v0

    .line 13632
    .local v39, "sd":Lcom/android/server/wm/StartingData;
    if-eqz v39, :cond_2

    .line 13637
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_STARTING_WINDOW:Z

    if-eqz v2, :cond_e

    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Add starting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v56

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v39

    iget-object v4, v0, Lcom/android/server/wm/StartingData;->pkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 13640
    :cond_e
    const/16 v52, 0x0

    .line 13643
    .local v52, "view":Landroid/view/View;
    const/4 v14, 0x0

    .line 13644
    .local v14, "resId":I
    const/4 v13, 0x0

    .line 13645
    .local v13, "tempStartingWindow":Landroid/graphics/Bitmap;
    :try_start_5
    move-object/from16 v0, v56

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->appMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v2

    if-nez v2, :cond_f

    move-object/from16 v0, v56

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->customStartingWindowData:Lcom/android/server/wm/CustomStartingWindowData;

    if-eqz v2, :cond_f

    .line 13651
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget v0, v2, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    move/from16 v37, v0

    .line 13654
    .local v37, "rotation":I
    move-object/from16 v0, v56

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->customStartingWindowData:Lcom/android/server/wm/CustomStartingWindowData;

    move/from16 v0, v37

    invoke-virtual {v2, v0}, Lcom/android/server/wm/CustomStartingWindowData;->getBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 13656
    if-nez v13, :cond_16

    .line 13657
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    # getter for: Lcom/android/server/wm/WindowManagerService;->mCustomStartingWindowManager:Lcom/android/server/wm/CustomStartingWindowManager;
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->access$1100(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/CustomStartingWindowManager;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 13658
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    # getter for: Lcom/android/server/wm/WindowManagerService;->mCustomStartingWindowManager:Lcom/android/server/wm/CustomStartingWindowManager;
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->access$1100(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/CustomStartingWindowManager;

    move-result-object v2

    move-object/from16 v0, v56

    iget-object v3, v0, Lcom/android/server/wm/AppWindowToken;->customStartingWindowData:Lcom/android/server/wm/CustomStartingWindowData;

    move/from16 v0, v37

    invoke-virtual {v2, v3, v0}, Lcom/android/server/wm/CustomStartingWindowManager;->getStartingWindowLayoutResId(Lcom/android/server/wm/CustomStartingWindowData;I)I

    move-result v14

    .line 13665
    .end local v37    # "rotation":I
    :cond_f
    :goto_4
    const-wide/16 v2, 0x20

    const-string v4, "addStartingWindow"

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 13666
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, v56

    iget-object v3, v0, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    move-object/from16 v0, v39

    iget-object v4, v0, Lcom/android/server/wm/StartingData;->pkg:Ljava/lang/String;

    move-object/from16 v0, v39

    iget v5, v0, Lcom/android/server/wm/StartingData;->theme:I

    move-object/from16 v0, v39

    iget-object v6, v0, Lcom/android/server/wm/StartingData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    move-object/from16 v0, v39

    iget-object v7, v0, Lcom/android/server/wm/StartingData;->nonLocalizedLabel:Ljava/lang/CharSequence;

    move-object/from16 v0, v39

    iget v8, v0, Lcom/android/server/wm/StartingData;->labelRes:I

    move-object/from16 v0, v39

    iget v9, v0, Lcom/android/server/wm/StartingData;->icon:I

    move-object/from16 v0, v39

    iget v10, v0, Lcom/android/server/wm/StartingData;->logo:I

    move-object/from16 v0, v39

    iget v11, v0, Lcom/android/server/wm/StartingData;->windowFlags:I

    move-object/from16 v0, v56

    iget-object v12, v0, Lcom/android/server/wm/AppWindowToken;->appMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-interface/range {v2 .. v16}, Landroid/view/WindowManagerPolicy;->addStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIIILcom/samsung/android/multiwindow/MultiWindowStyle;Landroid/graphics/Bitmap;III)Landroid/view/View;

    move-result-object v52

    .line 13673
    const-wide/16 v2, 0x20

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 13681
    :goto_5
    if-eqz v52, :cond_1b

    .line 13682
    const/16 v18, 0x0

    .line 13684
    .local v18, "abort":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 13685
    :try_start_6
    move-object/from16 v0, v56

    iget-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->removed:Z

    if-nez v2, :cond_10

    move-object/from16 v0, v56

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    if-nez v2, :cond_1a

    .line 13688
    :cond_10
    move-object/from16 v0, v56

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_17

    .line 13689
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_STARTING_WINDOW:Z

    if-eqz v2, :cond_11

    const-string v2, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Aborted starting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v56

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": removed="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v56

    iget-boolean v5, v0, Lcom/android/server/wm/AppWindowToken;->removed:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " startingData="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v56

    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 13693
    :cond_11
    const/4 v2, 0x0

    move-object/from16 v0, v56

    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    .line 13694
    const/4 v2, 0x0

    move-object/from16 v0, v56

    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    .line 13695
    const/16 v18, 0x1

    .line 13713
    :cond_12
    :goto_6
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_STARTING_WINDOW:Z

    if-eqz v2, :cond_13

    if-nez v18, :cond_13

    const-string v2, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Added starting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v56

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": startingWindow="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v56

    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " startingView="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v56

    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 13720
    :cond_13
    if-eqz v18, :cond_14

    .line 13721
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v56

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowManagerService;->clearStartingWindowTargetAppTokenLocked(Lcom/android/server/wm/AppWindowToken;)V

    .line 13724
    :cond_14
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 13726
    if-eqz v18, :cond_1

    .line 13728
    const-wide/16 v2, 0x20

    :try_start_7
    const-string/jumbo v4, "removeStartingWindow"

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 13729
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, v56

    iget-object v3, v0, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    move-object/from16 v0, v52

    invoke-interface {v2, v3, v0}, Landroid/view/WindowManagerPolicy;->removeStartingWindow(Landroid/os/IBinder;Landroid/view/View;)V

    .line 13730
    const-wide/16 v2, 0x20

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 13732
    move-object/from16 v0, v56

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->customStartingWindowData:Lcom/android/server/wm/CustomStartingWindowData;

    if-eqz v2, :cond_1

    move-object/from16 v0, v56

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->customStartingWindowData:Lcom/android/server/wm/CustomStartingWindowData;

    iget-boolean v2, v2, Lcom/android/server/wm/CustomStartingWindowData;->bitmapIsLoaded:Z

    if-eqz v2, :cond_1

    .line 13733
    const-string v2, "WindowManager"

    const-string v3, "CustomStartingWindow call GC after remove starting window"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13734
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 13735
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v3, 0xf

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_0

    .line 13738
    :catch_0
    move-exception v25

    .line 13739
    .local v25, "e":Ljava/lang/Exception;
    const-string v2, "WindowManager"

    const-string v3, "Exception when removing starting window"

    move-object/from16 v0, v25

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 13628
    .end local v13    # "tempStartingWindow":Landroid/graphics/Bitmap;
    .end local v14    # "resId":I
    .end local v16    # "originalUserId":I
    .end local v18    # "abort":Z
    .end local v25    # "e":Ljava/lang/Exception;
    .end local v39    # "sd":Lcom/android/server/wm/StartingData;
    .end local v52    # "view":Landroid/view/View;
    :cond_15
    const/16 v16, 0x0

    goto/16 :goto_3

    .line 13661
    .restart local v13    # "tempStartingWindow":Landroid/graphics/Bitmap;
    .restart local v14    # "resId":I
    .restart local v16    # "originalUserId":I
    .restart local v37    # "rotation":I
    .restart local v39    # "sd":Lcom/android/server/wm/StartingData;
    .restart local v52    # "view":Landroid/view/View;
    :cond_16
    :try_start_8
    move-object/from16 v0, v56

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->customStartingWindowData:Lcom/android/server/wm/CustomStartingWindowData;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/server/wm/CustomStartingWindowData;->bitmapIsLoaded:Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_4

    .line 13677
    .end local v37    # "rotation":I
    :catch_1
    move-exception v25

    .line 13678
    .restart local v25    # "e":Ljava/lang/Exception;
    const-string v2, "WindowManager"

    const-string v3, "Exception when adding starting window"

    move-object/from16 v0, v25

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    .line 13698
    .end local v25    # "e":Ljava/lang/Exception;
    .restart local v18    # "abort":Z
    :cond_17
    :try_start_9
    move-object/from16 v0, v56

    iget-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->startingMoved:Z

    if-eqz v2, :cond_19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    # getter for: Lcom/android/server/wm/WindowManagerService;->mNextStartingWindowAppToken:Lcom/android/server/wm/AppWindowToken;
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->access$1200(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v2

    if-eqz v2, :cond_19

    .line 13699
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_STARTING_WINDOW:Z

    if-eqz v2, :cond_18

    const-string v2, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ensure that the startingView of moved starting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    # getter for: Lcom/android/server/wm/WindowManagerService;->mNextStartingWindowAppToken:Lcom/android/server/wm/AppWindowToken;
    invoke-static {v5}, Lcom/android/server/wm/WindowManagerService;->access$1200(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 13701
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    # getter for: Lcom/android/server/wm/WindowManagerService;->mNextStartingWindowAppToken:Lcom/android/server/wm/AppWindowToken;
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->access$1200(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v2

    move-object/from16 v0, v52

    iput-object v0, v2, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;

    .line 13702
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x0

    # setter for: Lcom/android/server/wm/WindowManagerService;->mNextStartingWindowAppToken:Lcom/android/server/wm/AppWindowToken;
    invoke-static {v2, v4}, Lcom/android/server/wm/WindowManagerService;->access$1202(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/AppWindowToken;)Lcom/android/server/wm/AppWindowToken;

    goto/16 :goto_6

    .line 13724
    :catchall_3
    move-exception v2

    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v2

    .line 13704
    :cond_19
    :try_start_a
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_STARTING_WINDOW:Z

    if-eqz v2, :cond_12

    const-string v2, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "A view is not assigned to the startingView: starting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v56

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " next starting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    # getter for: Lcom/android/server/wm/WindowManagerService;->mNextStartingWindowAppToken:Lcom/android/server/wm/AppWindowToken;
    invoke-static {v5}, Lcom/android/server/wm/WindowManagerService;->access$1200(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 13711
    :cond_1a
    move-object/from16 v0, v52

    move-object/from16 v1, v56

    iput-object v0, v1, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto/16 :goto_6

    .line 13746
    .end local v18    # "abort":Z
    :cond_1b
    const/4 v2, 0x0

    move-object/from16 v0, v56

    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    .line 13747
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v56

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowManagerService;->clearStartingWindowTargetAppTokenLocked(Lcom/android/server/wm/AppWindowToken;)V

    goto/16 :goto_0

    .line 13753
    .end local v13    # "tempStartingWindow":Landroid/graphics/Bitmap;
    .end local v14    # "resId":I
    .end local v15    # "displayId":I
    .end local v16    # "originalUserId":I
    .end local v31    # "msgPair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/wm/AppWindowToken;Ljava/lang/Integer;>;"
    .end local v39    # "sd":Lcom/android/server/wm/StartingData;
    .end local v51    # "userData":Landroid/os/Bundle;
    .end local v52    # "view":Landroid/view/View;
    .end local v56    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :sswitch_5
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v56, v0

    check-cast v56, Lcom/android/server/wm/AppWindowToken;

    .line 13754
    .restart local v56    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    const/16 v47, 0x0

    .line 13755
    .local v47, "token":Landroid/os/IBinder;
    const/16 v52, 0x0

    .line 13756
    .restart local v52    # "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 13757
    :try_start_b
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_STARTING_WINDOW:Z

    if-eqz v2, :cond_1c

    const-string v2, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Remove starting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v56

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": startingWindow="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v56

    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " startingView="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v56

    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 13761
    :cond_1c
    move-object/from16 v0, v56

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_1d

    .line 13762
    move-object/from16 v0, v56

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;

    move-object/from16 v52, v0

    .line 13763
    move-object/from16 v0, v56

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    move-object/from16 v47, v0

    .line 13764
    const/4 v2, 0x0

    move-object/from16 v0, v56

    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    .line 13765
    const/4 v2, 0x0

    move-object/from16 v0, v56

    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;

    .line 13766
    const/4 v2, 0x0

    move-object/from16 v0, v56

    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    .line 13767
    const/4 v2, 0x0

    move-object/from16 v0, v56

    iput-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    .line 13768
    const/4 v2, 0x0

    move-object/from16 v0, v56

    iput v2, v0, Lcom/android/server/wm/AppWindowToken;->startingAnimLayerAdjustment:I

    .line 13772
    :cond_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v56

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowManagerService;->clearStartingWindowTargetAppTokenLocked(Lcom/android/server/wm/AppWindowToken;)V

    .line 13774
    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 13775
    if-eqz v52, :cond_1

    .line 13777
    const-wide/16 v2, 0x20

    :try_start_c
    const-string/jumbo v4, "removeStartingWindow"

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 13778
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, v47

    move-object/from16 v1, v52

    invoke-interface {v2, v0, v1}, Landroid/view/WindowManagerPolicy;->removeStartingWindow(Landroid/os/IBinder;Landroid/view/View;)V

    .line 13779
    const-wide/16 v2, 0x20

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 13781
    move-object/from16 v0, v56

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->customStartingWindowData:Lcom/android/server/wm/CustomStartingWindowData;

    if-eqz v2, :cond_1

    move-object/from16 v0, v56

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->customStartingWindowData:Lcom/android/server/wm/CustomStartingWindowData;

    iget-boolean v2, v2, Lcom/android/server/wm/CustomStartingWindowData;->bitmapIsLoaded:Z

    if-eqz v2, :cond_1

    .line 13782
    const-string v2, "WindowManager"

    const-string v3, "CustomStartingWindow call GC after remove starting window"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13783
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 13784
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v3, 0xf

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    goto/16 :goto_0

    .line 13787
    :catch_2
    move-exception v25

    .line 13788
    .restart local v25    # "e":Ljava/lang/Exception;
    const-string v2, "WindowManager"

    const-string v3, "Exception when removing starting window"

    move-object/from16 v0, v25

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 13774
    .end local v25    # "e":Ljava/lang/Exception;
    :catchall_4
    move-exception v2

    :try_start_d
    monitor-exit v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    throw v2

    .line 13794
    .end local v47    # "token":Landroid/os/IBinder;
    .end local v52    # "view":Landroid/view/View;
    .end local v56    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :sswitch_6
    const/16 v47, 0x0

    .line 13795
    .restart local v47    # "token":Landroid/os/IBinder;
    const/16 v52, 0x0

    .line 13798
    .restart local v52    # "view":Landroid/view/View;
    :cond_1e
    :goto_7
    const/16 v56, 0x0

    .line 13800
    .restart local v56    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 13801
    :try_start_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mFinishedStarting:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 13802
    .restart local v17    # "N":I
    if-gtz v17, :cond_1f

    .line 13803
    monitor-exit v3

    goto/16 :goto_0

    .line 13830
    .end local v17    # "N":I
    :catchall_5
    move-exception v2

    monitor-exit v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    throw v2

    .line 13807
    .restart local v17    # "N":I
    :cond_1f
    :try_start_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mFinishedStarting:Ljava/util/ArrayList;

    add-int/lit8 v4, v17, -0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v56, v0

    .line 13810
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_STARTING_WINDOW:Z

    if-eqz v2, :cond_20

    const-string v2, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Finished starting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v56

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": startingWindow="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v56

    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " startingView="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v56

    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 13815
    :cond_20
    move-object/from16 v0, v56

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-nez v2, :cond_21

    .line 13816
    monitor-exit v3

    goto :goto_7

    .line 13819
    :cond_21
    move-object/from16 v0, v56

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;

    move-object/from16 v52, v0

    .line 13820
    move-object/from16 v0, v56

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    move-object/from16 v47, v0

    .line 13821
    const/4 v2, 0x0

    move-object/from16 v0, v56

    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    .line 13822
    const/4 v2, 0x0

    move-object/from16 v0, v56

    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;

    .line 13823
    const/4 v2, 0x0

    move-object/from16 v0, v56

    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    .line 13824
    const/4 v2, 0x0

    move-object/from16 v0, v56

    iput-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    .line 13825
    const/4 v2, 0x0

    move-object/from16 v0, v56

    iput v2, v0, Lcom/android/server/wm/AppWindowToken;->startingAnimLayerAdjustment:I

    .line 13828
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v56

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowManagerService;->clearStartingWindowTargetAppTokenLocked(Lcom/android/server/wm/AppWindowToken;)V

    .line 13830
    monitor-exit v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    .line 13833
    const-wide/16 v2, 0x20

    :try_start_10
    const-string/jumbo v4, "removeStartingWindow"

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 13834
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, v47

    move-object/from16 v1, v52

    invoke-interface {v2, v0, v1}, Landroid/view/WindowManagerPolicy;->removeStartingWindow(Landroid/os/IBinder;Landroid/view/View;)V

    .line 13835
    const-wide/16 v2, 0x20

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 13837
    move-object/from16 v0, v56

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->customStartingWindowData:Lcom/android/server/wm/CustomStartingWindowData;

    if-eqz v2, :cond_1e

    move-object/from16 v0, v56

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->customStartingWindowData:Lcom/android/server/wm/CustomStartingWindowData;

    iget-boolean v2, v2, Lcom/android/server/wm/CustomStartingWindowData;->bitmapIsLoaded:Z

    if-eqz v2, :cond_1e

    .line 13838
    const-string v2, "WindowManager"

    const-string v3, "CustomStartingWindow call GC after remove starting window"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13839
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 13840
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v3, 0xf

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_3

    goto/16 :goto_7

    .line 13843
    :catch_3
    move-exception v25

    .line 13844
    .restart local v25    # "e":Ljava/lang/Exception;
    const-string v2, "WindowManager"

    const-string v3, "Exception when removing starting window"

    move-object/from16 v0, v25

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    .line 13850
    .end local v17    # "N":I
    .end local v25    # "e":Ljava/lang/Exception;
    .end local v47    # "token":Landroid/os/IBinder;
    .end local v52    # "view":Landroid/view/View;
    .end local v56    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :sswitch_7
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v56, v0

    check-cast v56, Lcom/android/server/wm/AppWindowToken;

    .line 13852
    .restart local v56    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :try_start_11
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_VISIBILITY:Z

    if-eqz v2, :cond_22

    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reporting drawn in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v56

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 13854
    :cond_22
    move-object/from16 v0, v56

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    invoke-interface {v2}, Landroid/view/IApplicationToken;->windowsDrawn()V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_4

    goto/16 :goto_0

    .line 13855
    :catch_4
    move-exception v2

    goto/16 :goto_0

    .line 13860
    .end local v56    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :sswitch_8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v56, v0

    check-cast v56, Lcom/android/server/wm/AppWindowToken;

    .line 13862
    .restart local v56    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_24

    const/16 v34, 0x1

    .line 13863
    .local v34, "nowVisible":Z
    :goto_8
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg2:I

    if-eqz v2, :cond_25

    const/16 v33, 0x1

    .line 13866
    .local v33, "nowGone":Z
    :goto_9
    :try_start_12
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_VISIBILITY:Z

    if-eqz v2, :cond_23

    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reporting visible in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v56

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " visible="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v34

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " gone="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 13870
    :cond_23
    if-eqz v34, :cond_26

    .line 13871
    move-object/from16 v0, v56

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    invoke-interface {v2}, Landroid/view/IApplicationToken;->windowsVisible()V

    goto/16 :goto_0

    .line 13875
    :catch_5
    move-exception v2

    goto/16 :goto_0

    .line 13862
    .end local v33    # "nowGone":Z
    .end local v34    # "nowVisible":Z
    :cond_24
    const/16 v34, 0x0

    goto :goto_8

    .line 13863
    .restart local v34    # "nowVisible":Z
    :cond_25
    const/16 v33, 0x0

    goto :goto_9

    .line 13873
    .restart local v33    # "nowGone":Z
    :cond_26
    move-object/from16 v0, v56

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    invoke-interface {v2}, Landroid/view/IApplicationToken;->windowsGone()V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_12} :catch_5

    goto/16 :goto_0

    .line 13881
    .end local v33    # "nowGone":Z
    .end local v34    # "nowVisible":Z
    .end local v56    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 13882
    :try_start_13
    const-string v2, "WindowManager"

    const-string v4, "Window freeze timeout expired."

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 13883
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x2

    # setter for: Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I
    invoke-static {v2, v4}, Lcom/android/server/wm/WindowManagerService;->access$1302(Lcom/android/server/wm/WindowManagerService;I)I

    .line 13884
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getDefaultWindowListLocked()Lcom/android/server/wm/WindowList;

    move-result-object v55

    .line 13885
    .local v55, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual/range {v55 .. v55}, Lcom/android/server/wm/WindowList;->size()I

    move-result v27

    .line 13886
    .restart local v27    # "i":I
    :goto_a
    if-lez v27, :cond_28

    .line 13887
    add-int/lit8 v27, v27, -0x1

    .line 13888
    move-object/from16 v0, v55

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Lcom/android/server/wm/WindowState;

    .line 13889
    .local v53, "w":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v53

    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    if-eqz v2, :cond_27

    .line 13890
    const/4 v2, 0x0

    move-object/from16 v0, v53

    iput-boolean v2, v0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    .line 13891
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-wide v6, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayFreezeTime:J

    sub-long/2addr v4, v6

    long-to-int v2, v4

    move-object/from16 v0, v53

    iput v2, v0, Lcom/android/server/wm/WindowState;->mLastFreezeDuration:I

    .line 13893
    const-string v2, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Force clearing orientation change: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v53

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 13896
    :cond_27
    invoke-virtual/range {v53 .. v53}, Lcom/android/server/wm/WindowState;->stopWaitingForOrientation()V

    goto :goto_a

    .line 13913
    .end local v27    # "i":I
    .end local v53    # "w":Lcom/android/server/wm/WindowState;
    .end local v55    # "windows":Lcom/android/server/wm/WindowList;
    :catchall_6
    move-exception v2

    monitor-exit v3
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    throw v2

    .line 13912
    .restart local v27    # "i":I
    .restart local v55    # "windows":Lcom/android/server/wm/WindowList;
    :cond_28
    :try_start_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    # invokes: Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->access$600(Lcom/android/server/wm/WindowManagerService;)V

    .line 13913
    monitor-exit v3
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_6

    goto/16 :goto_0

    .line 13918
    .end local v27    # "i":I
    .end local v55    # "windows":Lcom/android/server/wm/WindowList;
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 13939
    :try_start_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v2

    if-nez v2, :cond_29

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_29

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2b

    .line 13941
    :cond_29
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v2, :cond_2a

    const-string v2, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "*** APP TRANSITION TIMEOUT. isTransitionSet()="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v5}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mOpeningApps.size()="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mClosingApps.size()="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 13945
    :cond_2a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTransition;->setTimeout()V

    .line 13946
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    # invokes: Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->access$600(Lcom/android/server/wm/WindowManagerService;)V

    .line 13951
    :cond_2b
    monitor-exit v3

    goto/16 :goto_0

    :catchall_7
    move-exception v2

    monitor-exit v3
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    throw v2

    .line 13956
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "window_animation_scale"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget v4, v4, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScaleSetting:F

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 13958
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "transition_animation_scale"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget v4, v4, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScaleSetting:F

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 13961
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "animator_duration_scale"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget v4, v4, Lcom/android/server/wm/WindowManagerService;->mAnimatorDurationScaleSetting:F

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    goto/16 :goto_0

    .line 13967
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 13970
    :try_start_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    if-nez v2, :cond_2c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimationScheduled:Z

    if-eqz v2, :cond_2d

    .line 13973
    :cond_2c
    const/16 v2, 0xf

    const-wide/16 v4, 0x7d0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4, v5}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z

    .line 13974
    monitor-exit v3

    goto/16 :goto_1

    .line 13981
    :catchall_8
    move-exception v2

    monitor-exit v3
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_8

    throw v2

    .line 13978
    :cond_2d
    :try_start_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-eqz v2, :cond_2e

    .line 13979
    monitor-exit v3

    goto/16 :goto_1

    .line 13981
    :cond_2e
    monitor-exit v3
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_8

    .line 13982
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->gc()V

    goto/16 :goto_0

    .line 13987
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->performEnableScreen()V

    goto/16 :goto_0

    .line 13992
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 13993
    :try_start_18
    const-string v2, "WindowManager"

    const-string v4, "App freeze timeout expired."

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 13994
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x2

    # setter for: Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I
    invoke-static {v2, v4}, Lcom/android/server/wm/WindowManagerService;->access$1302(Lcom/android/server/wm/WindowManagerService;I)I

    .line 13995
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v35

    .line 13996
    .local v35, "numStacks":I
    const/16 v43, 0x0

    .local v43, "stackNdx":I
    :goto_b
    move/from16 v0, v43

    move/from16 v1, v35

    if-ge v0, v1, :cond_32

    .line 13997
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    move/from16 v0, v43

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lcom/android/server/wm/TaskStack;

    .line 13998
    .local v41, "stack":Lcom/android/server/wm/TaskStack;
    invoke-virtual/range {v41 .. v41}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v45

    .line 13999
    .local v45, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    invoke-virtual/range {v45 .. v45}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v44, v2, -0x1

    .local v44, "taskNdx":I
    :goto_c
    if-ltz v44, :cond_31

    .line 14000
    move-object/from16 v0, v45

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    iget-object v0, v2, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    move-object/from16 v49, v0

    .line 14001
    .local v49, "tokens":Lcom/android/server/wm/AppTokenList;
    invoke-virtual/range {v49 .. v49}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v2

    add-int/lit8 v48, v2, -0x1

    .local v48, "tokenNdx":I
    :goto_d
    if-ltz v48, :cond_30

    .line 14002
    move-object/from16 v0, v49

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lcom/android/server/wm/AppWindowToken;

    .line 14003
    .local v46, "tok":Lcom/android/server/wm/AppWindowToken;
    move-object/from16 v0, v46

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-boolean v2, v2, Lcom/android/server/wm/AppWindowAnimator;->freezingScreen:Z

    if-eqz v2, :cond_2f

    .line 14004
    const-string v2, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Force clearing freeze: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v46

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 14005
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, v46

    invoke-virtual {v2, v0, v4, v5}, Lcom/android/server/wm/WindowManagerService;->unsetAppFreezingScreenLocked(Lcom/android/server/wm/AppWindowToken;ZZ)V

    .line 14001
    :cond_2f
    add-int/lit8 v48, v48, -0x1

    goto :goto_d

    .line 13999
    .end local v46    # "tok":Lcom/android/server/wm/AppWindowToken;
    :cond_30
    add-int/lit8 v44, v44, -0x1

    goto :goto_c

    .line 13996
    .end local v48    # "tokenNdx":I
    .end local v49    # "tokens":Lcom/android/server/wm/AppTokenList;
    :cond_31
    add-int/lit8 v43, v43, 0x1

    goto :goto_b

    .line 14010
    .end local v41    # "stack":Lcom/android/server/wm/TaskStack;
    .end local v44    # "taskNdx":I
    .end local v45    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    :cond_32
    monitor-exit v3

    goto/16 :goto_0

    .end local v35    # "numStacks":I
    .end local v43    # "stackNdx":I
    :catchall_9
    move-exception v2

    monitor-exit v3
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_9

    throw v2

    .line 14015
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 14016
    :try_start_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService;->mClientFreezingScreen:Z

    if-eqz v2, :cond_33

    .line 14017
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x0

    iput-boolean v4, v2, Lcom/android/server/wm/WindowManagerService;->mClientFreezingScreen:Z

    .line 14018
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    const-string v4, "client-timeout"

    iput-object v4, v2, Lcom/android/server/wm/WindowManagerService;->mLastFinishedFreezeSource:Ljava/lang/Object;

    .line 14019
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    # invokes: Lcom/android/server/wm/WindowManagerService;->stopFreezingDisplayLocked()V
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->access$1400(Lcom/android/server/wm/WindowManagerService;)V

    .line 14021
    :cond_33
    monitor-exit v3

    goto/16 :goto_0

    :catchall_a
    move-exception v2

    monitor-exit v3
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_a

    throw v2

    .line 14026
    :sswitch_10
    const/16 v2, 0x12

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 14027
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->sendNewConfiguration()V

    goto/16 :goto_0

    .line 14032
    :sswitch_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    # getter for: Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->access$1500(Lcom/android/server/wm/WindowManagerService;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 14033
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 14034
    :try_start_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x0

    # setter for: Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z
    invoke-static {v2, v4}, Lcom/android/server/wm/WindowManagerService;->access$1502(Lcom/android/server/wm/WindowManagerService;Z)Z

    .line 14035
    monitor-exit v3
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_b

    .line 14036
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    # invokes: Lcom/android/server/wm/WindowManagerService;->notifyWindowsChanged()V
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->access$1600(Lcom/android/server/wm/WindowManagerService;)V

    goto/16 :goto_0

    .line 14035
    :catchall_b
    move-exception v2

    :try_start_1b
    monitor-exit v3
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_b

    throw v2

    .line 14042
    :sswitch_12
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v54, v0

    check-cast v54, Landroid/os/IBinder;

    .line 14046
    .local v54, "win":Landroid/os/IBinder;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 14048
    :try_start_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v2, :cond_34

    .line 14049
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v2}, Lcom/android/server/wm/DragState;->unregister()V

    .line 14050
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 14051
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v2}, Lcom/android/server/wm/DragState;->reset()V

    .line 14052
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x0

    iput-object v4, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    .line 14054
    :cond_34
    monitor-exit v3

    goto/16 :goto_0

    :catchall_c
    move-exception v2

    monitor-exit v3
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_c

    throw v2

    .line 14059
    .end local v54    # "win":Landroid/os/IBinder;
    :sswitch_13
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v54, v0

    check-cast v54, Landroid/os/IBinder;

    .line 14063
    .restart local v54    # "win":Landroid/os/IBinder;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 14065
    :try_start_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v2, :cond_35

    .line 14066
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    const/4 v4, 0x0

    iput-boolean v4, v2, Lcom/android/server/wm/DragState;->mDragResult:Z

    .line 14067
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v2}, Lcom/android/server/wm/DragState;->endDragLw()V

    .line 14069
    :cond_35
    monitor-exit v3

    goto/16 :goto_0

    :catchall_d
    move-exception v2

    monitor-exit v3
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_d

    throw v2

    .line 14074
    .end local v54    # "win":Landroid/os/IBinder;
    :sswitch_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->notifyHardKeyboardStatusChange()V

    goto/16 :goto_0

    .line 14079
    :sswitch_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->performBootTimeout()V

    goto/16 :goto_0

    .line 14084
    :sswitch_16
    const/16 v22, 0x0

    .line 14085
    .local v22, "callback":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 14086
    :try_start_1e
    const-string v2, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Timeout waiting for drawn: undrawn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 14087
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 14088
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v2, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawnCallback:Ljava/lang/Runnable;

    move-object/from16 v22, v0

    .line 14089
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x0

    iput-object v4, v2, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawnCallback:Ljava/lang/Runnable;

    .line 14090
    monitor-exit v3
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_e

    .line 14091
    if-eqz v22, :cond_1

    .line 14092
    invoke-interface/range {v22 .. v22}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_0

    .line 14090
    :catchall_e
    move-exception v2

    :try_start_1f
    monitor-exit v3
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_e

    throw v2

    .line 14098
    .end local v22    # "callback":Ljava/lang/Runnable;
    :sswitch_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    # invokes: Lcom/android/server/wm/WindowManagerService;->showStrictModeViolation(II)V
    invoke-static {v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->access$1700(Lcom/android/server/wm/WindowManagerService;II)V

    goto/16 :goto_0

    .line 14103
    :sswitch_18
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_36

    const/4 v2, 0x1

    :goto_e
    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowManagerService;->showCircularMask(Z)V

    goto/16 :goto_0

    :cond_36
    const/4 v2, 0x0

    goto :goto_e

    .line 14108
    :sswitch_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->showEmulatorDisplayOverlay()V

    goto/16 :goto_0

    .line 14114
    :sswitch_1a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Landroid/util/Pair;

    .line 14120
    .local v36, "obj":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;>;"
    :try_start_20
    move-object/from16 v0, v36

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v2, :cond_37

    move-object/from16 v0, v36

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/os/IRemoteCallback;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 14121
    :cond_37
    move-object/from16 v0, v36

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v2, :cond_1

    move-object/from16 v0, v36

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/os/IRemoteCallback;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_20} :catch_6

    goto/16 :goto_0

    .line 14123
    :catch_6
    move-exception v2

    goto/16 :goto_0

    .line 14129
    .end local v36    # "obj":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;>;"
    :sswitch_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService;->handleDisplayAdded(I)V

    goto/16 :goto_0

    .line 14133
    :sswitch_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 14134
    :try_start_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/wm/WindowManagerService;->handleDisplayRemovedLocked(I)V
    invoke-static {v2, v4}, Lcom/android/server/wm/WindowManagerService;->access$1800(Lcom/android/server/wm/WindowManagerService;I)V

    .line 14135
    monitor-exit v3

    goto/16 :goto_0

    :catchall_f
    move-exception v2

    monitor-exit v3
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_f

    throw v2

    .line 14139
    :sswitch_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 14140
    :try_start_22
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/wm/WindowManagerService;->handleDisplayChangedLocked(I)V
    invoke-static {v2, v4}, Lcom/android/server/wm/WindowManagerService;->access$1900(Lcom/android/server/wm/WindowManagerService;I)V

    .line 14141
    monitor-exit v3

    goto/16 :goto_0

    :catchall_10
    move-exception v2

    monitor-exit v3
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_10

    throw v2

    .line 14146
    :sswitch_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 14147
    :try_start_23
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v4, v5}, Lcom/android/server/wm/DisplayContent;->stackIdFromPoint(II)I

    move-result v42

    .line 14148
    .local v42, "stackId":I
    monitor-exit v3
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_11

    .line 14149
    if-ltz v42, :cond_1

    .line 14156
    :try_start_24
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    move/from16 v0, v42

    invoke-interface {v2, v0}, Landroid/app/IActivityManager;->setFocusedStack(I)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_24} :catch_7

    goto/16 :goto_0

    .line 14158
    :catch_7
    move-exception v2

    goto/16 :goto_0

    .line 14148
    .end local v42    # "stackId":I
    :catchall_11
    move-exception v2

    :try_start_25
    monitor-exit v3
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_11

    throw v2

    .line 14165
    :sswitch_1f
    :try_start_26
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/IBinder;

    invoke-interface {v3, v2}, Landroid/app/IActivityManager;->notifyActivityDrawn(Landroid/os/IBinder;)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_26} :catch_8

    goto/16 :goto_0

    .line 14166
    :catch_8
    move-exception v2

    goto/16 :goto_0

    .line 14196
    :sswitch_20
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 14197
    :try_start_27
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v2, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawnCallback:Ljava/lang/Runnable;

    move-object/from16 v22, v0

    .line 14198
    .restart local v22    # "callback":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x0

    iput-object v4, v2, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawnCallback:Ljava/lang/Runnable;

    .line 14199
    monitor-exit v3
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_12

    .line 14200
    if-eqz v22, :cond_38

    .line 14201
    invoke-interface/range {v22 .. v22}, Ljava/lang/Runnable;->run()V

    .line 14205
    .end local v22    # "callback":Ljava/lang/Runnable;
    :cond_38
    :sswitch_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getCurrentAnimatorScale()F

    move-result v38

    .line 14206
    .local v38, "scale":F
    invoke-static/range {v38 .. v38}, Landroid/animation/ValueAnimator;->setDurationScale(F)V

    .line 14207
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Lcom/android/server/wm/Session;

    .line 14208
    .local v40, "session":Lcom/android/server/wm/Session;
    if-eqz v40, :cond_39

    .line 14210
    :try_start_28
    move-object/from16 v0, v40

    iget-object v2, v0, Lcom/android/server/wm/Session;->mCallback:Landroid/view/IWindowSessionCallback;

    move/from16 v0, v38

    invoke-interface {v2, v0}, Landroid/view/IWindowSessionCallback;->onAnimatorScaleChanged(F)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_28} :catch_9

    goto/16 :goto_0

    .line 14211
    :catch_9
    move-exception v2

    goto/16 :goto_0

    .line 14199
    .end local v38    # "scale":F
    .end local v40    # "session":Lcom/android/server/wm/Session;
    :catchall_12
    move-exception v2

    :try_start_29
    monitor-exit v3
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_12

    throw v2

    .line 14214
    .restart local v38    # "scale":F
    .restart local v40    # "session":Lcom/android/server/wm/Session;
    :cond_39
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 14216
    .local v23, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/IWindowSessionCallback;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 14217
    const/16 v27, 0x0

    .restart local v27    # "i":I
    :goto_f
    :try_start_2a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mSessions:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    move/from16 v0, v27

    if-ge v0, v2, :cond_3a

    .line 14218
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mSessions:Landroid/util/ArraySet;

    move/from16 v0, v27

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Session;

    iget-object v2, v2, Lcom/android/server/wm/Session;->mCallback:Landroid/view/IWindowSessionCallback;

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14217
    add-int/lit8 v27, v27, 0x1

    goto :goto_f

    .line 14221
    :cond_3a
    monitor-exit v3
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_13

    .line 14222
    const/16 v27, 0x0

    :goto_10
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v27

    if-ge v0, v2, :cond_1

    .line 14224
    :try_start_2b
    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/IWindowSessionCallback;

    move/from16 v0, v38

    invoke-interface {v2, v0}, Landroid/view/IWindowSessionCallback;->onAnimatorScaleChanged(F)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_2b} :catch_c

    .line 14222
    :goto_11
    add-int/lit8 v27, v27, 0x1

    goto :goto_10

    .line 14221
    :catchall_13
    move-exception v2

    :try_start_2c
    monitor-exit v3
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_13

    throw v2

    .line 14233
    .end local v23    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/IWindowSessionCallback;>;"
    .end local v27    # "i":I
    .end local v38    # "scale":F
    .end local v40    # "session":Lcom/android/server/wm/Session;
    :sswitch_22
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 14235
    :try_start_2d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    # invokes: Lcom/android/server/wm/WindowManagerService;->checkBootAnimationCompleteLocked()Z
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->access$2000(Lcom/android/server/wm/WindowManagerService;)Z

    move-result v21

    .line 14236
    .local v21, "bootAnimationComplete":Z
    monitor-exit v3
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_14

    .line 14237
    if-eqz v21, :cond_1

    .line 14238
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->performEnableScreen()V

    goto/16 :goto_0

    .line 14236
    .end local v21    # "bootAnimationComplete":Z
    :catchall_14
    move-exception v2

    :try_start_2e
    monitor-exit v3
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_14

    throw v2

    .line 14244
    :sswitch_23
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 14245
    :try_start_2f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x0

    iput-object v4, v2, Lcom/android/server/wm/WindowManagerService;->mLastANRState:Ljava/lang/String;

    .line 14246
    monitor-exit v3

    goto/16 :goto_0

    :catchall_15
    move-exception v2

    monitor-exit v3
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_15

    throw v2

    .line 14250
    :sswitch_24
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 14251
    :try_start_30
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget v2, v2, Lcom/android/server/wm/WindowManagerService;->mWallpaperDrawState:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_3d

    .line 14252
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x2

    iput v4, v2, Lcom/android/server/wm/WindowManagerService;->mWallpaperDrawState:I

    .line 14253
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_APP_TRANSITIONS:Z

    if-nez v2, :cond_3b

    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_WALLPAPER:Z

    if-eqz v2, :cond_3c

    :cond_3b
    const-string v2, "WindowManager"

    const-string v4, "*** WALLPAPER DRAW TIMEOUT"

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 14255
    :cond_3c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    # invokes: Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->access$600(Lcom/android/server/wm/WindowManagerService;)V

    .line 14257
    :cond_3d
    monitor-exit v3

    goto/16 :goto_0

    :catchall_16
    move-exception v2

    monitor-exit v3
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_16

    throw v2

    .line 14263
    :sswitch_25
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Lcom/samsung/android/cover/CoverState;

    .line 14264
    .local v24, "coverState":Lcom/samsung/android/cover/CoverState;
    move-object/from16 v0, v24

    iget v2, v0, Lcom/samsung/android/cover/CoverState;->type:I

    const/16 v3, 0x9

    if-eq v2, v3, :cond_1

    move-object/from16 v0, v24

    iget v2, v0, Lcom/samsung/android/cover/CoverState;->type:I

    const/16 v3, 0xa

    if-eq v2, v3, :cond_1

    .line 14272
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 14273
    :try_start_31
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, v24

    invoke-interface {v2, v0}, Landroid/view/WindowManagerPolicy;->setCoverSwitchStateLocked(Lcom/samsung/android/cover/CoverState;)Z

    .line 14274
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v24

    iget-boolean v4, v0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    # invokes: Lcom/android/server/wm/WindowManagerService;->setCoverConfiguration(Z)Z
    invoke-static {v2, v4}, Lcom/android/server/wm/WindowManagerService;->access$2100(Lcom/android/server/wm/WindowManagerService;Z)Z

    .line 14275
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    .line 14276
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    # invokes: Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->access$600(Lcom/android/server/wm/WindowManagerService;)V

    .line 14277
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v24

    iget-boolean v4, v0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    # invokes: Lcom/android/server/wm/WindowManagerService;->notifyCoverStateChanged(Z)V
    invoke-static {v2, v4}, Lcom/android/server/wm/WindowManagerService;->access$2200(Lcom/android/server/wm/WindowManagerService;Z)V

    .line 14278
    monitor-exit v3

    goto/16 :goto_0

    :catchall_17
    move-exception v2

    monitor-exit v3
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_17

    throw v2

    .line 14305
    .end local v24    # "coverState":Lcom/samsung/android/cover/CoverState;
    :sswitch_26
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 14306
    :try_start_32
    const-string v2, "WindowManager"

    const-string v4, "MULTIWINDOW_TRANSACTION_TIMEOUT"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 14308
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 14310
    .restart local v15    # "displayId":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v2, v15}, Lcom/android/server/wm/WindowAnimator;->getMultiWindowTransitionLocked(I)Lcom/android/server/wm/MultiWindowTransition;

    move-result-object v50

    .line 14311
    .local v50, "transition":Lcom/android/server/wm/MultiWindowTransition;
    invoke-virtual/range {v50 .. v50}, Lcom/android/server/wm/MultiWindowTransition;->isTransitionSet()Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 14312
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v2, :cond_3e

    const-string v2, "WindowManager"

    const-string v4, "*** MULTI WINDOW TRANSITION TIMEOUT"

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 14313
    :cond_3e
    invoke-virtual/range {v50 .. v50}, Lcom/android/server/wm/MultiWindowTransition;->setTimeout()V

    .line 14315
    :cond_3f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, v15}, Lcom/android/server/wm/WindowManagerService;->finishMultiWindowTransitionLocked(I)V

    .line 14316
    monitor-exit v3

    goto/16 :goto_0

    .end local v15    # "displayId":I
    .end local v50    # "transition":Lcom/android/server/wm/MultiWindowTransition;
    :catchall_18
    move-exception v2

    monitor-exit v3
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_18

    throw v2

    .line 14321
    :sswitch_27
    :try_start_33
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/IBinder;

    invoke-interface {v3, v2}, Landroid/app/IActivityManager;->notifyMinimizeMultiWindow(Landroid/os/IBinder;)V

    .line 14323
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_33} :catch_a

    .line 14324
    :try_start_34
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/IBinder;

    invoke-virtual {v4, v2}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v20

    .line 14325
    .local v20, "appToken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v20, :cond_40

    .line 14326
    const/4 v2, 0x1

    move-object/from16 v0, v20

    iput-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->mMultiWindowStyleChanging:Z

    .line 14327
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v4, 0x68

    move-object/from16 v0, v20

    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v2, v4, v5}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(ILjava/lang/Object;)V

    .line 14328
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v5, 0x68

    move-object/from16 v0, v20

    iget-object v6, v0, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v4, v5, v6}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v6, 0x3e8

    invoke-virtual {v2, v4, v6, v7}, Lcom/android/server/wm/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 14329
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    # invokes: Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->access$600(Lcom/android/server/wm/WindowManagerService;)V

    .line 14331
    :cond_40
    monitor-exit v3

    goto/16 :goto_0

    .end local v20    # "appToken":Lcom/android/server/wm/AppWindowToken;
    :catchall_19
    move-exception v2

    monitor-exit v3
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_19

    :try_start_35
    throw v2
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_35} :catch_a

    .line 14332
    :catch_a
    move-exception v2

    goto/16 :goto_0

    .line 14337
    :sswitch_28
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 14338
    :try_start_36
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/IBinder;

    invoke-virtual {v4, v2}, Lcom/android/server/wm/WindowManagerService;->findAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v20

    .line 14339
    .restart local v20    # "appToken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v20, :cond_44

    .line 14340
    const-string v2, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MULTIWINDOW_STYLE_CHANGING_TIMEOUT "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14341
    const/4 v2, 0x0

    move-object/from16 v0, v20

    iput-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->mMultiWindowStyleChanging:Z

    .line 14342
    const/4 v2, 0x0

    move-object/from16 v0, v20

    iput-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->mWaitingForMaximizeAnim:Z

    .line 14343
    const/4 v2, 0x0

    move-object/from16 v0, v20

    iput-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->mPendingMinimizeAnim:Z

    .line 14344
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->iterator()Ljava/util/Iterator;

    move-result-object v28

    .local v28, "i$":Ljava/util/Iterator;
    :cond_41
    :goto_12
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Lcom/android/server/wm/WindowState;

    .line 14345
    .local v54, "win":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v54

    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mMultiWindowStyleChanging:Z

    if-eqz v2, :cond_41

    .line 14346
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->SAFE_DEBUG:Z

    if-eqz v2, :cond_42

    const-string v2, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mwStyle changing timeout, mMultiWindowStyleChanging = true->false, win="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v54

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14347
    :cond_42
    const/4 v2, 0x0

    move-object/from16 v0, v54

    iput-boolean v2, v0, Lcom/android/server/wm/WindowState;->mMultiWindowStyleChanging:Z

    goto :goto_12

    .line 14352
    .end local v20    # "appToken":Lcom/android/server/wm/AppWindowToken;
    .end local v28    # "i$":Ljava/util/Iterator;
    .end local v54    # "win":Lcom/android/server/wm/WindowState;
    :catchall_1a
    move-exception v2

    monitor-exit v3
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_1a

    throw v2

    .line 14350
    .restart local v20    # "appToken":Lcom/android/server/wm/AppWindowToken;
    .restart local v28    # "i$":Ljava/util/Iterator;
    :cond_43
    :try_start_37
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->requestTraversalLocked()V

    .line 14352
    .end local v28    # "i$":Ljava/util/Iterator;
    :cond_44
    monitor-exit v3
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_1a

    goto/16 :goto_0

    .line 14357
    .end local v20    # "appToken":Lcom/android/server/wm/AppWindowToken;
    :sswitch_29
    const/16 v2, 0x6a

    :try_start_38
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 14358
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v2}, Landroid/app/IActivityManager;->notifyDisplayFreezeStopped()V
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_38} :catch_b

    goto/16 :goto_0

    .line 14359
    :catch_b
    move-exception v2

    goto/16 :goto_0

    .line 14225
    .restart local v23    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/IWindowSessionCallback;>;"
    .restart local v27    # "i":I
    .restart local v38    # "scale":F
    .restart local v40    # "session":Lcom/android/server/wm/Session;
    :catch_c
    move-exception v2

    goto/16 :goto_11

    .line 13469
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x8 -> :sswitch_8
        0x9 -> :sswitch_7
        0xb -> :sswitch_9
        0xd -> :sswitch_a
        0xe -> :sswitch_b
        0xf -> :sswitch_c
        0x10 -> :sswitch_d
        0x11 -> :sswitch_e
        0x12 -> :sswitch_10
        0x13 -> :sswitch_11
        0x14 -> :sswitch_12
        0x15 -> :sswitch_13
        0x16 -> :sswitch_14
        0x17 -> :sswitch_15
        0x18 -> :sswitch_16
        0x19 -> :sswitch_17
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_f
        0x1f -> :sswitch_1e
        0x20 -> :sswitch_1f
        0x21 -> :sswitch_20
        0x22 -> :sswitch_21
        0x23 -> :sswitch_18
        0x24 -> :sswitch_19
        0x25 -> :sswitch_22
        0x26 -> :sswitch_23
        0x27 -> :sswitch_24
        0x64 -> :sswitch_0
        0x65 -> :sswitch_26
        0x66 -> :sswitch_0
        0x67 -> :sswitch_27
        0x68 -> :sswitch_28
        0x69 -> :sswitch_25
        0x6a -> :sswitch_29
        0x6b -> :sswitch_0
        0xc9 -> :sswitch_0
        0xca -> :sswitch_0
        0xcb -> :sswitch_0
        0xcc -> :sswitch_0
    .end sparse-switch
.end method
