.class public abstract Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;
.super Ljava/lang/Object;
.source "MultiPhoneWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnHoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/MultiPhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "PenWindowController"
.end annotation


# instance fields
.field protected mBtnDragAndDrop:Landroid/view/View;

.field protected mBtnExit:Landroid/view/View;

.field protected mBtnMaximize:Landroid/view/View;

.field protected mBtnMinimize:Landroid/view/View;

.field protected mControllerHeight:I

.field protected mDnDHelpPopupDialog:Landroid/app/Dialog;

.field protected mDnDHelpPopupDialogLegacy:Landroid/app/AlertDialog;

.field protected mGestureDetector:Landroid/view/GestureDetector;

.field private mHeaderWindowControllerHoverImage:Landroid/graphics/drawable/Drawable;

.field private mIsInputMethodForceHiding:Z

.field private mIsLongPressed:Z

.field private mIsMoving:Z

.field protected mIsShowing:Z

.field private mLastHandledX:I

.field private mLastHandledY:I

.field protected mMenuContainer:Landroid/view/View;

.field private mMoveInterval:I

.field protected mNeedInvalidate:Z

.field protected mPenWindowHeader:Landroid/view/View;

.field final synthetic this$0:Lcom/android/internal/policy/MultiPhoneWindow;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/MultiPhoneWindow;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mGestureDetector:Landroid/view/GestureDetector;

    iput v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mControllerHeight:I

    iput v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mMoveInterval:I

    iput-boolean v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mNeedInvalidate:Z

    iput-boolean v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mIsShowing:Z

    invoke-virtual {p1}, Lcom/android/internal/policy/MultiPhoneWindow;->getProperContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10502e5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mMoveInterval:I

    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->removeDnDHelpPopup()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->startDragMode(Landroid/content/Context;)V

    return-void
.end method

.method private checkFunctionState()V
    .locals 11

    .prologue
    const/16 v10, 0x8

    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v8, v8, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .local v7, "pm":Landroid/content/pm/PackageManager;
    if-nez v7, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    .local v1, "activityInfo":Landroid/content/pm/ActivityInfo;
    :try_start_0
    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v8, v8, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v8

    const/16 v9, 0x80

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .local v4, "disableFunctions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v8, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v8, :cond_2

    iget-object v8, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v9, "com.samsung.android.sdk.multiwindow.disablefunction"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "activityFunction":Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string v8, "\\|"

    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .end local v0    # "activityFunction":Ljava/lang/String;
    :cond_2
    iget-object v8, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v8, :cond_3

    iget-object v8, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v8, :cond_3

    iget-object v8, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v9, "com.samsung.android.sdk.multiwindow.disablefunction"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "applicationFunction":Ljava/lang/String;
    if-eqz v2, :cond_3

    const-string v8, "\\|"

    invoke-virtual {v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .end local v2    # "applicationFunction":Ljava/lang/String;
    :cond_3
    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mBtnDragAndDrop:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .local v3, "disableFunction":Ljava/lang/String;
    const-string v8, "minimize"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    const/4 v9, 0x1

    # setter for: Lcom/android/internal/policy/MultiPhoneWindow;->mIsMinimizeDisabled:Z
    invoke-static {v8, v9}, Lcom/android/internal/policy/MultiPhoneWindow;->access$1302(Lcom/android/internal/policy/MultiPhoneWindow;Z)Z

    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mBtnMinimize:Landroid/view/View;

    invoke-virtual {v8, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .end local v3    # "disableFunction":Ljava/lang/String;
    .end local v4    # "disableFunctions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v5

    .local v5, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v5}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .end local v5    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v3    # "disableFunction":Ljava/lang/String;
    .restart local v4    # "disableFunctions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6    # "i$":Ljava/util/Iterator;
    :cond_5
    const-string v8, "maximize"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mBtnMaximize:Landroid/view/View;

    invoke-virtual {v8, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_6
    const-string v8, "exit"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mBtnExit:Landroid/view/View;

    invoke-virtual {v8, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_7
    const-string v8, "drag_and_drop"

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mBtnDragAndDrop:Landroid/view/View;

    invoke-virtual {v8, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private makeDnDHelpPopupLayout()V
    .locals 8

    .prologue
    iget-object v5, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mDnDHelpPopupDialog:Landroid/app/Dialog;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mDnDHelpPopupDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v5}, Lcom/android/internal/policy/MultiPhoneWindow;->getProperContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .local v1, "layoutInflater":Landroid/view/LayoutInflater;
    const v5, 0x1090077

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .local v0, "dnDHelpPopupView":Landroid/view/View;
    if-eqz v0, :cond_0

    iget-object v5, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-boolean v5, v5, Lcom/android/internal/policy/MultiPhoneWindow;->mContentLayoutGenerated:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v5, v5, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    iget-object v5, v5, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mDnDHelpPopupDialog:Landroid/app/Dialog;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v5, v5, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    iget-object v5, v5, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mDnDHelpPopupDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->isShowing()Z

    move-result v5

    if-nez v5, :cond_0

    :cond_2
    const v5, 0x10203d4

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .local v2, "okButton":Landroid/widget/Button;
    new-instance v5, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController$1;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController$1;-><init>(Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;)V

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v5, Landroid/app/Dialog;

    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v6}, Lcom/android/internal/policy/MultiPhoneWindow;->getProperContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x10304f3

    invoke-direct {v5, v6, v7}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v5, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mDnDHelpPopupDialog:Landroid/app/Dialog;

    iget-object v5, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mDnDHelpPopupDialog:Landroid/app/Dialog;

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    iget-object v5, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mDnDHelpPopupDialog:Landroid/app/Dialog;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object v5, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mDnDHelpPopupDialog:Landroid/app/Dialog;

    new-instance v6, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController$2;

    invoke-direct {v6, p0}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController$2;-><init>(Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;)V

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v5, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mDnDHelpPopupDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    .local v4, "w":Landroid/view/Window;
    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .local v3, "p":Landroid/view/WindowManager$LayoutParams;
    const-string v5, "DnDHelpPopupDialog"

    invoke-virtual {v3, v5}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget v5, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v5, v5, 0x202

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v5, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v6, -0x20001

    and-int/2addr v5, v6

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v5, 0x3f000000    # 0.5f

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    const/4 v5, 0x2

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object v5, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mDnDHelpPopupDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .end local v0    # "dnDHelpPopupView":Landroid/view/View;
    .end local v1    # "layoutInflater":Landroid/view/LayoutInflater;
    .end local v2    # "okButton":Landroid/widget/Button;
    .end local v3    # "p":Landroid/view/WindowManager$LayoutParams;
    .end local v4    # "w":Landroid/view/Window;
    :catch_0
    move-exception v5

    goto/16 :goto_0
.end method

.method private makeDnDHelpPopupLegacyLayout()V
    .locals 9

    .prologue
    :try_start_0
    new-instance v2, Landroid/view/ContextThemeWrapper;

    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v6}, Lcom/android/internal/policy/MultiPhoneWindow;->getProperContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x1030132

    invoke-direct {v2, v6, v7}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .local v2, "context":Landroid/content/Context;
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v6}, Lcom/android/internal/policy/MultiPhoneWindow;->getProperContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .local v3, "layoutInflater":Landroid/view/LayoutInflater;
    const v6, 0x1090078

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .local v1, "contentView":Landroid/view/View;
    if-eqz v1, :cond_0

    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-boolean v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mContentLayoutGenerated:Z

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mDnDHelpPopupDialogLegacy:Landroid/app/AlertDialog;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mDnDHelpPopupDialogLegacy:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_1

    .end local v1    # "contentView":Landroid/view/View;
    .end local v2    # "context":Landroid/content/Context;
    .end local v3    # "layoutInflater":Landroid/view/LayoutInflater;
    :cond_0
    :goto_0
    return-void

    .restart local v1    # "contentView":Landroid/view/View;
    .restart local v2    # "context":Landroid/content/Context;
    .restart local v3    # "layoutInflater":Landroid/view/LayoutInflater;
    :cond_1
    const v6, 0x10203d8

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .local v0, "checkBox":Landroid/widget/CheckBox;
    new-instance v6, Landroid/app/AlertDialog$Builder;

    const/4 v7, 0x5

    invoke-direct {v6, v2, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1040bdd

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x104000a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController$3;

    invoke-direct {v8, p0, v0}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController$3;-><init>(Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;Landroid/widget/CheckBox;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mDnDHelpPopupDialogLegacy:Landroid/app/AlertDialog;

    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mDnDHelpPopupDialogLegacy:Landroid/app/AlertDialog;

    new-instance v7, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController$4;

    invoke-direct {v7, p0, v2}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController$4;-><init>(Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;Landroid/content/Context;)V

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mDnDHelpPopupDialogLegacy:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    .local v5, "w":Landroid/view/Window;
    const/16 v6, 0x200

    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .local v4, "p":Landroid/view/WindowManager$LayoutParams;
    const-string v6, "DnDHelpPopupDialog"

    invoke-virtual {v4, v6}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v6, 0x2

    iput v6, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mDnDHelpPopupDialogLegacy:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v0    # "checkBox":Landroid/widget/CheckBox;
    .end local v1    # "contentView":Landroid/view/View;
    .end local v2    # "context":Landroid/content/Context;
    .end local v3    # "layoutInflater":Landroid/view/LayoutInflater;
    .end local v4    # "p":Landroid/view/WindowManager$LayoutParams;
    .end local v5    # "w":Landroid/view/Window;
    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method private removeDnDHelpPopup()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-boolean v0, v0, Lcom/android/internal/policy/MultiPhoneWindow;->mIsSupportSimplificationUI:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mDnDHelpPopupDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mDnDHelpPopupDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mDnDHelpPopupDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    iput-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mDnDHelpPopupDialog:Landroid/app/Dialog;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mDnDHelpPopupDialogLegacy:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mDnDHelpPopupDialogLegacy:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mDnDHelpPopupDialogLegacy:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->hide()V

    iput-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mDnDHelpPopupDialogLegacy:Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private setHeaderWindowControllerHoverImage()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/MultiPhoneWindow;->getProperContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x108059a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mHeaderWindowControllerHoverImage:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private startDragMode(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p1}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportSimplificationUI(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "com.android.systemui"

    const-string v2, "com.android.systemui.multiwindow.centerbarwindow.SmartClipDragDrop"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_1
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->performStartDragMode()V

    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v1, v1, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v2, v2, Lcom/android/internal/policy/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setDragAndDropModeOfStack(Landroid/os/IBinder;Z)V

    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v1, v1, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    const-string v2, "POPW"

    const-string v3, "DRAGCONTENT"

    invoke-static {v1, v2, v3}, Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "com.sec.android.app.FlashBarService"

    const-string v2, "com.sec.android.app.FlashBarService.SmartClipDragDrop"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method


# virtual methods
.method protected generateLayout()V
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->performInflateController()V

    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mPenWindowHeader:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mPenWindowHeader:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mPenWindowHeader:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mMenuContainer:Landroid/view/View;

    const v1, 0x1020411

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mBtnDragAndDrop:Landroid/view/View;

    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mBtnDragAndDrop:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mBtnDragAndDrop:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mMenuContainer:Landroid/view/View;

    const v1, 0x1020412

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mBtnMinimize:Landroid/view/View;

    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mBtnMinimize:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mBtnMinimize:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mMenuContainer:Landroid/view/View;

    const v1, 0x1020413

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mBtnMaximize:Landroid/view/View;

    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mBtnMaximize:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mBtnMaximize:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mMenuContainer:Landroid/view/View;

    const v1, 0x1020414

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mBtnExit:Landroid/view/View;

    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mBtnExit:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mBtnExit:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-direct {p0}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->checkFunctionState()V

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->updateAvailableButtons()V

    return-void
.end method

.method protected getControllerHeight()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mControllerHeight:I

    return v0
.end method

.method public getWindowToken()Landroid/os/IBinder;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public invalidate()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mNeedInvalidate:Z

    return-void
.end method

.method protected isShowing()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mIsShowing:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mPenWindowHeader:Landroid/view/View;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->performUpdateMenuVisibility(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mBtnDragAndDrop:Landroid/view/View;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v4, v4, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    const-string v5, "do_not_show_help_popup_drag_and_drop"

    invoke-virtual {v4, v5}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getPreferenceThroughSystemProcess(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_2

    .local v0, "checked":Z
    :goto_1
    if-nez v0, :cond_4

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->performUpdateMenuVisibility(Z)V

    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-boolean v3, v3, Lcom/android/internal/policy/MultiPhoneWindow;->mIsSupportSimplificationUI:Z

    if-eqz v3, :cond_3

    invoke-direct {p0}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->makeDnDHelpPopupLayout()V

    goto :goto_0

    .end local v0    # "checked":Z
    :cond_2
    move v0, v3

    goto :goto_1

    .restart local v0    # "checked":Z
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->makeDnDHelpPopupLegacyLayout()V

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v3, v3, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->startDragMode(Landroid/content/Context;)V

    goto :goto_0

    .end local v0    # "checked":Z
    :cond_5
    iget-object v4, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mBtnMinimize:Landroid/view/View;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v4, v3, v3}, Lcom/android/internal/policy/MultiPhoneWindow;->minimizeWindow(IZ)V

    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v3, v3, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    const-string v4, "POPW"

    const-string v5, "MINIMIZE"

    invoke-static {v3, v4, v5}, Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    iget-object v4, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mBtnMaximize:Landroid/view/View;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-boolean v4, v4, Lcom/android/internal/policy/MultiPhoneWindow;->mContentLayoutGenerated:Z

    if-eqz v4, :cond_7

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->performUpdateVisibility(Z)V

    :cond_7
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v3, v0}, Lcom/android/internal/policy/MultiPhoneWindow;->requestState(I)V

    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v3, v3, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    const-string v4, "POPW"

    const-string v5, "MAXIMIZE"

    invoke-static {v3, v4, v5}, Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mBtnExit:Landroid/view/View;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v3, v3, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowExitListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;
    invoke-static {v3}, Lcom/android/internal/policy/MultiPhoneWindow;->access$1400(Lcom/android/internal/policy/MultiPhoneWindow;)Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;

    move-result-object v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowExitListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;
    invoke-static {v3}, Lcom/android/internal/policy/MultiPhoneWindow;->access$1400(Lcom/android/internal/policy/MultiPhoneWindow;)Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;->onWindowExit()Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "MultiPhoneWindow"

    const-string v4, "onWindowExit return false"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v3, v3, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    const-string v4, "POPW"

    const-string v5, "CLOSE"

    invoke-static {v3, v4, v5}, Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    .local v2, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v2, :cond_a

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->isInputMethodShown()Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v3}, Lcom/android/internal/policy/MultiPhoneWindow;->forceHideInputMethod()Z

    :cond_a
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mBtnExit:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mBtnExit:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/HoverPopupWindow;->dismiss()V

    :cond_b
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v3, v3, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v3, v3, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v4, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v4, v4, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->finishAllTasks(Landroid/os/IBinder;I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iput-boolean v0, v3, Lcom/android/internal/policy/MultiPhoneWindow;->mIsFinishing:Z

    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v3, v3, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    const-string v4, "POPW"

    const-string v5, "CLOSE"

    invoke-static {v3, v4, v5}, Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v3, v3, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->finishAffinity()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/IllegalStateException;
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v3, v3, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    goto :goto_2
.end method

.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_4

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x1020424

    if-ne v1, v2, :cond_2

    const/4 v1, 0x5

    const/4 v2, -0x1

    invoke-static {v1, v2}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V

    :cond_1
    :goto_0
    return v3

    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mHeaderWindowControllerHoverImage:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mHeaderWindowControllerHoverImage:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v2}, Landroid/view/PointerIcon;->setHoveringSpenIcon(ILandroid/graphics/drawable/Drawable;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MultiPhoneWindow"

    const-string v2, "Failed to change Pen Point to HOVERING_SPENICON_DEFAULT"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3
    :try_start_1
    invoke-direct {p0}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->setHeaderWindowControllerHoverImage()V

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-static {v1, v2}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 17
    .param p1, "v"    # Landroid/view/View;

    .prologue
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mIsMoving:Z

    if-eqz v14, :cond_1

    sget-boolean v14, Lcom/android/internal/policy/MultiPhoneWindow;->DEBUG_MINIMIZE_ANIM:Z

    if-eqz v14, :cond_0

    const-string v14, "MultiPhoneWindow"

    const-string v15, "onLongClick : moving so return false"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v14, 0x0

    :goto_0
    return v14

    :cond_1
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mIsLongPressed:Z

    const/4 v14, 0x2

    new-array v9, v14, [I

    .local v9, "screenPos":[I
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .local v3, "displayFrame":Landroid/graphics/Rect;
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/View;->getLocationOnScreen([I)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v4

    .local v4, "height":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-boolean v14, v14, Lcom/android/internal/policy/MultiPhoneWindow;->mContentLayoutGenerated:Z

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v14, v14, Lcom/android/internal/policy/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;

    iget-object v6, v14, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mMenuContainer:Landroid/view/View;

    check-cast v6, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;

    .local v6, "menuContainer":Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;
    if-eqz v6, :cond_2

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenuContainer:Landroid/widget/LinearLayout;
    invoke-static {v6}, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->access$1500(Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;)Landroid/widget/LinearLayout;

    move-result-object v14

    if-eqz v14, :cond_2

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenuContainer:Landroid/widget/LinearLayout;
    invoke-static {v6}, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->access$1500(Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;)Landroid/widget/LinearLayout;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v4

    .end local v6    # "menuContainer":Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v14}, Lcom/android/internal/policy/MultiPhoneWindow;->getProperContext()Landroid/content/Context;

    move-result-object v2

    .local v2, "context":Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    iget v10, v14, Landroid/util/DisplayMetrics;->widthPixels:I

    .local v10, "screenWidth":I
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    iget v8, v14, Landroid/util/DisplayMetrics;->heightPixels:I

    .local v8, "screenHeight":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v14, v14, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getAppMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v7

    .local v7, "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    if-eqz v7, :cond_5

    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v14

    const/4 v15, 0x2

    if-ne v14, v15, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v14, v14, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v14}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_3

    if-gt v10, v8, :cond_4

    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v14, v14, Lcom/android/internal/policy/MultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v14}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v14

    if-nez v14, :cond_5

    if-ge v10, v8, :cond_5

    :cond_4
    move v11, v10

    .local v11, "tempWidth":I
    move v10, v8

    move v8, v11

    .end local v11    # "tempWidth":I
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v14

    const/4 v15, 0x0

    invoke-static {v2, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .local v1, "cheatSheet":Landroid/widget/Toast;
    invoke-virtual {v1}, Landroid/widget/Toast;->setIgnoreMultiWindowLayout()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v14}, Lcom/android/internal/policy/MultiPhoneWindow;->getProperContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    .local v5, "layoutInflater":Landroid/view/LayoutInflater;
    const v14, 0x109009a

    const/4 v15, 0x0

    invoke-virtual {v5, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    .local v13, "toastView":Landroid/view/View;
    invoke-virtual {v1, v13}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    const v14, 0x1020415

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .local v12, "toastTxt":Landroid/widget/TextView;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v14, 0x35

    const/4 v15, 0x0

    aget v15, v9, v15

    sub-int v15, v10, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    add-int v15, v15, v16

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v16

    div-int/lit8 v16, v16, 0x2

    sub-int v15, v15, v16

    div-int/lit8 v16, v4, 0x2

    move/from16 v0, v16

    invoke-virtual {v1, v14, v15, v0}, Landroid/widget/Toast;->setGravity(III)V

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    const/4 v14, 0x1

    goto/16 :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    and-int/lit16 v0, v6, 0xff

    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v6, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_1
    :goto_1
    return v10

    :pswitch_0
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-boolean v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mHasStackFocus:Z

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v7, v7, Lcom/android/internal/policy/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v6, v7}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getStackId(Landroid/os/IBinder;)I

    move-result v5

    .local v5, "stackId":I
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v6, v5, v10}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setFocusedStack(IZ)V

    .end local v5    # "stackId":I
    :cond_2
    iput-boolean v11, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mIsInputMethodForceHiding:Z

    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v6}, Lcom/android/internal/policy/MultiPhoneWindow;->forceHideInputMethod()Z

    move-result v6

    if-eqz v6, :cond_3

    iput-boolean v10, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mIsInputMethodForceHiding:Z

    goto :goto_1

    :cond_3
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mDocking:Lcom/android/internal/policy/multiwindow/Docking;

    invoke-virtual {v6}, Lcom/android/internal/policy/multiwindow/Docking;->init()V

    iput-boolean v11, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mIsMoving:Z

    iput-boolean v11, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mIsLongPressed:Z

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mLastHandledX:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mLastHandledY:I

    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iput-boolean v11, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mDismissGuideByDockingCanceled:Z

    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    if-eqz v6, :cond_4

    new-instance v4, Landroid/content/Intent;

    const-string v6, "com.sec.android.OUTSIDE_TOUCH"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v4, "intent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .end local v4    # "intent":Landroid/content/Intent;
    :cond_4
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v7}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    :pswitch_1
    iget-boolean v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mIsInputMethodForceHiding:Z

    if-nez v6, :cond_1

    iget-boolean v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mIsMoving:Z

    iget-boolean v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mIsLongPressed:Z

    or-int/2addr v6, v7

    if-nez v6, :cond_5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v6

    float-to-int v6, v6

    iget v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mLastHandledX:I

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mMoveInterval:I

    int-to-float v7, v7

    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget v8, v8, Lcom/android/internal/policy/MultiPhoneWindow;->mDssScale:F

    div-float/2addr v7, v8

    cmpg-float v6, v6, v7

    if-gez v6, :cond_5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v6

    float-to-int v6, v6

    iget v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mLastHandledY:I

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mMoveInterval:I

    int-to-float v7, v7

    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget v8, v8, Lcom/android/internal/policy/MultiPhoneWindow;->mDssScale:F

    div-float/2addr v7, v8

    cmpg-float v6, v6, v7

    if-ltz v6, :cond_0

    :cond_5
    iput-boolean v10, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mIsMoving:Z

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v6

    float-to-int v6, v6

    iget v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mLastHandledX:I

    sub-int v2, v6, v7

    .local v2, "dx":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v6

    float-to-int v6, v6

    iget v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mLastHandledY:I

    sub-int v3, v6, v7

    .local v3, "dy":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mLastHandledX:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mLastHandledY:I

    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mDocking:Lcom/android/internal/policy/multiwindow/Docking;

    iget v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mLastHandledX:I

    iget v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mLastHandledY:I

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/policy/multiwindow/Docking;->updateZone(II)Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_6
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mDocking:Lcom/android/internal/policy/multiwindow/Docking;

    invoke-virtual {v6}, Lcom/android/internal/policy/multiwindow/Docking;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .local v1, "dockingBound":Landroid/graphics/Rect;
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    invoke-virtual {v6, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    if-eqz v1, :cond_7

    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mDocking:Lcom/android/internal/policy/multiwindow/Docking;

    invoke-virtual {v6}, Lcom/android/internal/policy/multiwindow/Docking;->isDockingCanceled()Z

    move-result v6

    if-nez v6, :cond_7

    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    const/4 v7, 0x2

    invoke-virtual {v6, v1, v7}, Lcom/android/internal/policy/MultiPhoneWindow;->showGuide(Landroid/graphics/Rect;I)V

    goto/16 :goto_0

    :cond_7
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v7, v7, Lcom/android/internal/policy/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    const/4 v8, 0x3

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/policy/MultiPhoneWindow;->showGuide(Landroid/graphics/Rect;I)V

    goto/16 :goto_0

    .end local v1    # "dockingBound":Landroid/graphics/Rect;
    .end local v2    # "dx":I
    .end local v3    # "dy":I
    :pswitch_2
    iget-boolean v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mIsInputMethodForceHiding:Z

    if-nez v6, :cond_1

    iget-boolean v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mIsMoving:Z

    if-eqz v6, :cond_a

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v6

    float-to-int v6, v6

    iget v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mLastHandledX:I

    sub-int v2, v6, v7

    .restart local v2    # "dx":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v6

    float-to-int v6, v6

    iget v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mLastHandledY:I

    sub-int v3, v6, v7

    .restart local v3    # "dy":I
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mDocking:Lcom/android/internal/policy/multiwindow/Docking;

    invoke-virtual {v6}, Lcom/android/internal/policy/multiwindow/Docking;->isDocking()Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mDocking:Lcom/android/internal/policy/multiwindow/Docking;

    invoke-virtual {v6}, Lcom/android/internal/policy/multiwindow/Docking;->isDockingCanceled()Z

    move-result v6

    if-nez v6, :cond_9

    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mDocking:Lcom/android/internal/policy/multiwindow/Docking;

    invoke-virtual {v6}, Lcom/android/internal/policy/multiwindow/Docking;->checkCenterBarPoint()V

    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-boolean v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mIsSupportSimplificationUI:Z

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v7, v7, Lcom/android/internal/policy/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v8, v8, Lcom/android/internal/policy/MultiPhoneWindow;->mDocking:Lcom/android/internal/policy/multiwindow/Docking;

    invoke-virtual {v8}, Lcom/android/internal/policy/multiwindow/Docking;->getZone()I

    move-result v8

    iget-object v9, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v9}, Lcom/android/internal/policy/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/internal/policy/multiwindow/Docking;->getChanagedMultiWindowStyle(ILcom/samsung/android/multiwindow/MultiWindowStyle;)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v8

    invoke-virtual {v6, v7, v8, v10}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setMultiWindowStyleWithLogging(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;I)V

    .end local v2    # "dx":I
    .end local v3    # "dy":I
    :goto_2
    iput-boolean v11, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mIsMoving:Z

    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mDocking:Lcom/android/internal/policy/multiwindow/Docking;

    invoke-virtual {v6}, Lcom/android/internal/policy/multiwindow/Docking;->clear()V

    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v6}, Lcom/android/internal/policy/MultiPhoneWindow;->dismissGuide()V

    goto/16 :goto_0

    .restart local v2    # "dx":I
    .restart local v3    # "dy":I
    :cond_8
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v7, v7, Lcom/android/internal/policy/MultiPhoneWindow;->mToken:Landroid/os/IBinder;

    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v8, v8, Lcom/android/internal/policy/MultiPhoneWindow;->mDocking:Lcom/android/internal/policy/multiwindow/Docking;

    invoke-virtual {v8}, Lcom/android/internal/policy/multiwindow/Docking;->getZone()I

    move-result v8

    iget-object v9, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v9}, Lcom/android/internal/policy/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/internal/policy/multiwindow/Docking;->getChanagedMultiWindowStyle(ILcom/samsung/android/multiwindow/MultiWindowStyle;)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setMultiWindowStyle(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mContext:Landroid/content/Context;

    const-string v7, "POPW"

    const-string v8, "CHANGE-SPLIT"

    invoke-static {v6, v7, v8}, Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v6, v6, Lcom/android/internal/policy/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    invoke-virtual {v6, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    iget-object v6, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v7, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget-object v7, v7, Lcom/android/internal/policy/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Lcom/android/internal/policy/MultiPhoneWindow;->setStackBound(Landroid/graphics/Rect;)V

    goto :goto_2

    .end local v2    # "dx":I
    .end local v3    # "dy":I
    :cond_a
    invoke-virtual {p0, v10}, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->performUpdateMenuVisibility(Z)V

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected abstract performInflateController()V
.end method

.method protected performStartDragMode()V
    .locals 0

    .prologue
    return-void
.end method

.method protected performStopDragMode()V
    .locals 0

    .prologue
    return-void
.end method

.method protected abstract performUpdateBackground()V
.end method

.method protected performUpdateMenuVisibility(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    return-void
.end method

.method protected abstract performUpdateVisibility(Z)V
.end method

.method protected abstract removeResizeVisualCue()V
.end method

.method protected setHeaderGestureDetector(Landroid/view/GestureDetector;)V
    .locals 0
    .param p1, "g"    # Landroid/view/GestureDetector;

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/MultiPhoneWindow$PenWindowController;->mGestureDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method protected abstract updateAvailableButtons()V
.end method

.method protected abstract updatePosition()V
.end method
