.class public Landroid/widget/MultiSelectPopupWindow;
.super Ljava/lang/Object;
.source "MultiSelectPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/MultiSelectPopupWindow$1;,
        Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;,
        Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;,
        Landroid/widget/MultiSelectPopupWindow$HandleView;,
        Landroid/widget/MultiSelectPopupWindow$MultiSelectController;,
        Landroid/widget/MultiSelectPopupWindow$CursorController;,
        Landroid/widget/MultiSelectPopupWindow$PositionListener;,
        Landroid/widget/MultiSelectPopupWindow$TextViewPositionListener;,
        Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MultiSelectPopupWindow"

.field private static final TEMP_POSITION:[F

.field private static mMultiSelectQuickPopupWindow:Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;

.field private static mTextView:Landroid/widget/TextView;

.field private static sInstance:Landroid/widget/MultiSelectPopupWindow;


# instance fields
.field private mMultiSelectController:Landroid/widget/MultiSelectPopupWindow$MultiSelectController;

.field private mPositionListener:Landroid/widget/MultiSelectPopupWindow$PositionListener;

.field private mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

.field private mSelectHandleRight:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x2

    new-array v0, v0, [F

    sput-object v0, Landroid/widget/MultiSelectPopupWindow;->TEMP_POSITION:[F

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;

    sput-object v0, Landroid/widget/MultiSelectPopupWindow;->mMultiSelectQuickPopupWindow:Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;

    return-void
.end method

.method static synthetic access$000(Landroid/widget/MultiSelectPopupWindow;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/MultiSelectPopupWindow;

    .prologue
    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow;->isTablet()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100()Landroid/widget/TextView;
    .locals 1

    .prologue
    sget-object v0, Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/widget/MultiSelectPopupWindow;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Landroid/widget/MultiSelectPopupWindow;

    .prologue
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1002(Landroid/widget/MultiSelectPopupWindow;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p0, "x0"    # Landroid/widget/MultiSelectPopupWindow;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;

    .prologue
    iput-object p1, p0, Landroid/widget/MultiSelectPopupWindow;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$1100(Landroid/widget/MultiSelectPopupWindow;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Landroid/widget/MultiSelectPopupWindow;

    .prologue
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1102(Landroid/widget/MultiSelectPopupWindow;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p0, "x0"    # Landroid/widget/MultiSelectPopupWindow;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;

    .prologue
    iput-object p1, p0, Landroid/widget/MultiSelectPopupWindow;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$1200(Landroid/widget/MultiSelectPopupWindow;II)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/MultiSelectPopupWindow;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/MultiSelectPopupWindow;->isPositionVisible(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Landroid/widget/MultiSelectPopupWindow;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/MultiSelectPopupWindow;

    .prologue
    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow;->isSelectAllEnable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Landroid/widget/MultiSelectPopupWindow;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/MultiSelectPopupWindow;

    .prologue
    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow;->isShareViaEnable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Landroid/widget/MultiSelectPopupWindow;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/MultiSelectPopupWindow;

    .prologue
    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow;->isDictionaryEnable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Landroid/widget/MultiSelectPopupWindow;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/MultiSelectPopupWindow;

    .prologue
    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow;->isTranslatorEnable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Landroid/widget/MultiSelectPopupWindow;)Landroid/widget/MultiSelectPopupWindow$PositionListener;
    .locals 1
    .param p0, "x0"    # Landroid/widget/MultiSelectPopupWindow;

    .prologue
    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow;->getPositionListener()Landroid/widget/MultiSelectPopupWindow$PositionListener;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Landroid/widget/MultiSelectPopupWindow;I)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/MultiSelectPopupWindow;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/MultiSelectPopupWindow;->isOffsetVisible(I)Z

    move-result v0

    return v0
.end method

.method public static getInstance()Landroid/widget/MultiSelectPopupWindow;
    .locals 1

    .prologue
    sget-object v0, Landroid/widget/MultiSelectPopupWindow;->sInstance:Landroid/widget/MultiSelectPopupWindow;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/MultiSelectPopupWindow;

    invoke-direct {v0}, Landroid/widget/MultiSelectPopupWindow;-><init>()V

    sput-object v0, Landroid/widget/MultiSelectPopupWindow;->sInstance:Landroid/widget/MultiSelectPopupWindow;

    :cond_0
    sget-object v0, Landroid/widget/MultiSelectPopupWindow;->sInstance:Landroid/widget/MultiSelectPopupWindow;

    return-object v0
.end method

.method private getPositionListener()Landroid/widget/MultiSelectPopupWindow$PositionListener;
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow;->mPositionListener:Landroid/widget/MultiSelectPopupWindow$PositionListener;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/MultiSelectPopupWindow$PositionListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/MultiSelectPopupWindow$PositionListener;-><init>(Landroid/widget/MultiSelectPopupWindow;Landroid/widget/MultiSelectPopupWindow$1;)V

    iput-object v0, p0, Landroid/widget/MultiSelectPopupWindow;->mPositionListener:Landroid/widget/MultiSelectPopupWindow$PositionListener;

    :cond_0
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow;->mPositionListener:Landroid/widget/MultiSelectPopupWindow$PositionListener;

    return-object v0
.end method

.method private isDictionaryEnable()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    sget-object v3, Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .local v1, "pm":Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.sec.android.app.dictionary.SEARCH"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow;->isEmergencyMode()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private isEmergencyMode()Z
    .locals 2

    .prologue
    sget-object v1, Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v0

    .local v0, "em":Lcom/sec/android/emergencymode/EmergencyManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isOffsetVisible(I)Z
    .locals 6
    .param p1, "offset"    # I

    .prologue
    sget-object v4, Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .local v0, "layout":Landroid/text/Layout;
    if-nez v0, :cond_0

    const/4 v4, 0x0

    :goto_0
    return v4

    :cond_0
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .local v1, "line":I
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v2

    .local v2, "lineBaseLine":I
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v4

    float-to-int v3, v4

    .local v3, "primaryHorizontal":I
    sget-object v4, Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v4

    add-int/2addr v4, v3

    sget-object v5, Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v5

    add-int/2addr v5, v2

    invoke-direct {p0, v4, v5}, Landroid/widget/MultiSelectPopupWindow;->isPositionVisible(II)Z

    move-result v4

    goto :goto_0
.end method

.method private isPositionVisible(II)Z
    .locals 11
    .param p1, "positionX"    # I
    .param p2, "positionY"    # I

    .prologue
    const/4 v10, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-object v6, Landroid/widget/MultiSelectPopupWindow;->TEMP_POSITION:[F

    monitor-enter v6

    :try_start_0
    sget-object v2, Landroid/widget/MultiSelectPopupWindow;->TEMP_POSITION:[F

    .local v2, "position":[F
    const/4 v7, 0x0

    int-to-float v8, p1

    aput v8, v2, v7

    const/4 v7, 0x1

    int-to-float v8, p2

    aput v8, v2, v7

    sget-object v3, Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;

    .local v3, "view":Landroid/view/View;
    :goto_0
    if-eqz v3, :cond_5

    sget-object v7, Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;

    if-eq v3, v7, :cond_0

    const/4 v7, 0x0

    aget v8, v2, v7

    invoke-virtual {v3}, Landroid/view/View;->getScrollX()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    aput v8, v2, v7

    const/4 v7, 0x1

    aget v8, v2, v7

    invoke-virtual {v3}, Landroid/view/View;->getScrollY()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    aput v8, v2, v7

    :cond_0
    const/4 v7, 0x0

    aget v7, v2, v7

    cmpg-float v7, v7, v10

    if-ltz v7, :cond_1

    const/4 v7, 0x1

    aget v7, v2, v7

    cmpg-float v7, v7, v10

    if-ltz v7, :cond_1

    const/4 v7, 0x0

    aget v7, v2, v7

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-gtz v7, :cond_1

    const/4 v7, 0x1

    aget v7, v2, v7

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v8

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_2

    :cond_1
    monitor-exit v6

    :goto_1
    return v4

    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v3}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    :cond_3
    const/4 v7, 0x0

    aget v8, v2, v7

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    aput v8, v2, v7

    const/4 v7, 0x1

    aget v8, v2, v7

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    aput v8, v2, v7

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .local v1, "parent":Landroid/view/ViewParent;
    instance-of v7, v1, Landroid/view/View;

    if-eqz v7, :cond_4

    move-object v0, v1

    check-cast v0, Landroid/view/View;

    move-object v3, v0

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    .end local v1    # "parent":Landroid/view/ViewParent;
    :cond_5
    monitor-exit v6

    move v4, v5

    goto :goto_1

    .end local v2    # "position":[F
    .end local v3    # "view":Landroid/view/View;
    :catchall_0
    move-exception v4

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private isSelectAllEnable()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    sget-object v2, Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextForMultiSelection()Ljava/lang/CharSequence;

    move-result-object v0

    .local v0, "text":Ljava/lang/CharSequence;
    if-nez v0, :cond_1

    const-string v2, "MultiSelectPopupWindow"

    const-string v3, "getTextFormultiSelection() text is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-static {v0}, Landroid/text/MultiSelection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Landroid/text/MultiSelection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ne v2, v3, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isShareViaEnable()Z
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow;->isEmergencyMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isTablet()Z
    .locals 2

    .prologue
    const-string v0, "short"

    const-string v1, "ro.build.scafe.size"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTranslatorEnable()Z
    .locals 8

    .prologue
    const/4 v5, 0x0

    sget-object v6, Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .local v2, "pm":Landroid/content/pm/PackageManager;
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    const-string v7, "android.intent.action.PROCESS_TEXT"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    const-string v7, "text/plain"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v2, v6, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_2

    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow;->isEmergencyMode()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    invoke-virtual {v3}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object v4

    .local v4, "resolveInfoString":Ljava/lang/String;
    const-string v6, "com.sec.android.app.translator"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "com.google.android.apps.translate"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    :cond_1
    const/4 v5, 0x1

    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v4    # "resolveInfoString":Ljava/lang/String;
    :cond_2
    return v5
.end method


# virtual methods
.method public changeCurrentSelectedView(Landroid/widget/TextView;)V
    .locals 1
    .param p1, "textView"    # Landroid/widget/TextView;

    .prologue
    sget-object v0, Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;

    if-ne v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sput-object p1, Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;

    sget-object v0, Landroid/widget/MultiSelectPopupWindow;->mMultiSelectQuickPopupWindow:Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;

    invoke-direct {v0, p0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;-><init>(Landroid/widget/MultiSelectPopupWindow;)V

    sput-object v0, Landroid/widget/MultiSelectPopupWindow;->mMultiSelectQuickPopupWindow:Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;

    goto :goto_0
.end method

.method getMultiSelectController()Landroid/widget/MultiSelectPopupWindow$MultiSelectController;
    .locals 3

    .prologue
    const/4 v1, 0x0

    sget-object v2, Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;

    if-nez v2, :cond_0

    :goto_0
    return-object v1

    :cond_0
    iget-object v2, p0, Landroid/widget/MultiSelectPopupWindow;->mMultiSelectController:Landroid/widget/MultiSelectPopupWindow$MultiSelectController;

    if-nez v2, :cond_1

    new-instance v2, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;

    invoke-direct {v2, p0, v1}, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;-><init>(Landroid/widget/MultiSelectPopupWindow;Landroid/widget/MultiSelectPopupWindow$1;)V

    iput-object v2, p0, Landroid/widget/MultiSelectPopupWindow;->mMultiSelectController:Landroid/widget/MultiSelectPopupWindow$MultiSelectController;

    sget-object v1, Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .local v0, "observer":Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow;->mMultiSelectController:Landroid/widget/MultiSelectPopupWindow$MultiSelectController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .end local v0    # "observer":Landroid/view/ViewTreeObserver;
    :cond_1
    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow;->mMultiSelectController:Landroid/widget/MultiSelectPopupWindow$MultiSelectController;

    goto :goto_0
.end method

.method getMultiSelectQuickPopupWindow()Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;
    .locals 1

    .prologue
    sget-object v0, Landroid/widget/MultiSelectPopupWindow;->mMultiSelectQuickPopupWindow:Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/widget/MultiSelectPopupWindow;->mMultiSelectQuickPopupWindow:Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;

    invoke-direct {v0, p0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;-><init>(Landroid/widget/MultiSelectPopupWindow;)V

    sput-object v0, Landroid/widget/MultiSelectPopupWindow;->mMultiSelectQuickPopupWindow:Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;

    sget-object v0, Landroid/widget/MultiSelectPopupWindow;->mMultiSelectQuickPopupWindow:Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;

    goto :goto_0
.end method

.method public hideMultiSelectPopupWindow()V
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow;->getMultiSelectController()Landroid/widget/MultiSelectPopupWindow$MultiSelectController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow;->getMultiSelectController()Landroid/widget/MultiSelectPopupWindow$MultiSelectController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->hide()V

    :cond_0
    return-void
.end method

.method public initMultiSelectControllerPosition()V
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow;->getMultiSelectController()Landroid/widget/MultiSelectPopupWindow$MultiSelectController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow;->getMultiSelectController()Landroid/widget/MultiSelectPopupWindow$MultiSelectController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->initPreviousOffset()V

    :cond_0
    return-void
.end method

.method onScrollChanged()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow;->mPositionListener:Landroid/widget/MultiSelectPopupWindow$PositionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow;->mPositionListener:Landroid/widget/MultiSelectPopupWindow$PositionListener;

    invoke-virtual {v0}, Landroid/widget/MultiSelectPopupWindow$PositionListener;->onScrollChanged()V

    :cond_0
    return-void
.end method

.method public relocateMultiSelectQuickPopupWindow()V
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow;->getMultiSelectController()Landroid/widget/MultiSelectPopupWindow$MultiSelectController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow;->getMultiSelectController()Landroid/widget/MultiSelectPopupWindow$MultiSelectController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->relocateMultiSelectQuickPopupWindow()V

    :cond_0
    return-void
.end method

.method public showMultiSelectPopupWindow()V
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow;->getMultiSelectController()Landroid/widget/MultiSelectPopupWindow$MultiSelectController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow;->getMultiSelectController()Landroid/widget/MultiSelectPopupWindow$MultiSelectController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->hide()V

    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow;->getMultiSelectController()Landroid/widget/MultiSelectPopupWindow$MultiSelectController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->show()V

    :cond_0
    return-void
.end method
