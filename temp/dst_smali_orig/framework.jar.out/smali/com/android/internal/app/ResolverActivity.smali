.class public Lcom/android/internal/app/ResolverActivity;
.super Landroid/app/Activity;
.source "ResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ResolverActivity$MoreActionsItemClickListener;,
        Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;,
        Lcom/android/internal/app/ResolverActivity$PageItemViewHolder;,
        Lcom/android/internal/app/ResolverActivity$ResolverPageChangeListener;,
        Lcom/android/internal/app/ResolverActivity$ResolverPagerAdapter;,
        Lcom/android/internal/app/ResolverActivity$PagerItemClickListener;,
        Lcom/android/internal/app/ResolverActivity$SShareItemClickListener;,
        Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;,
        Lcom/android/internal/app/ResolverActivity$LoadIconIntoViewTask;,
        Lcom/android/internal/app/ResolverActivity$LoadAdapterIconTask;,
        Lcom/android/internal/app/ResolverActivity$LoadIconTask;,
        Lcom/android/internal/app/ResolverActivity$ItemClickListener;,
        Lcom/android/internal/app/ResolverActivity$ViewHolder;,
        Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;,
        Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;,
        Lcom/android/internal/app/ResolverActivity$TargetInfo;,
        Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;,
        Lcom/android/internal/app/ResolverActivity$ActionTitle;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final DOCUMENTS_UI_POLICY:Ljava/lang/String; = "DocumentsUIPolicy"

.field public static final DOCUMENTS_UI_POLICY_SEC:I = 0x1

.field private static final GUIDE_ACTIVITY:Ljava/lang/String; = "ResolverGuideActivity"

.field private static final INTERNAL_PACKAGE:Ljava/lang/String; = "com.android.internal.app"

.field private static final MAX_FONT_SCALE:F = 1.2f

.field private static final MAX_PAGE_LINE_NUM:I = 0x2

.field public static final MIME_TYPE_MEMO:Ljava/lang/String; = "application/vnd.samsung.android.memo"

.field private static final PAGER_KEY:Ljava/lang/String; = "pagerkey_%1$d_%2$d"

.field private static final SHAREVIA_RECENT_ITEM:Ljava/lang/String; = "sharevia_recent"

.field private static final SPLIT_STRING:Ljava/lang/String; = ";"

.field private static final TAG:Ljava/lang/String; = "ResolverActivity"

.field public static final THEME_CHOOSER:Ljava/lang/String; = "theme"

.field public static final THEME_DEVICE_DEFAULT:I = 0x1

.field public static final THEME_DEVICE_DEFAULT_LIGHT:I = 0x2

.field public static final THEME_NONE:I


# instance fields
.field private final IS_OVERLAY_THEMES_ENABLED:Z

.field private defaultTextSize:F

.field private mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

.field private mAdapterView:Landroid/widget/AbsListView;

.field private mAlwaysButton:Landroid/widget/Button;

.field private mAlwaysUseOption:Z

.field private final mAnimDuration:I

.field private mBottomPanel:Landroid/view/ViewGroup;

.field private mCurrentPageIdx:I

.field private mDropComponents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mDropsDocumentsUI:Z

.field private mExitAnimator:Landroid/animation/Animator;

.field protected mExtraIntentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mGridRecentHistory:Landroid/widget/HorizontalListView;

.field private mGridResolveAdapterList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private mIconDpi:I

.field private final mIntents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mIsDeviceDefault:Z

.field private mIsManagedProfile:Z

.field private mLastSelected:I

.field private mLaunchedFromPackage:Ljava/lang/String;

.field private mLaunchedFromUid:I

.field private mMaxColumns:I

.field private mMoreActions:Lcom/samsung/android/share/SShareMoreActions;

.field private mOnceButton:Landroid/widget/Button;

.field private final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mPageItemNum:I

.field private mPagerAdapter:Lcom/android/internal/app/ResolverActivity$ResolverPagerAdapter;

.field private mPickOptionRequest:Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

.field private mPkgNamesArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPkgNamesFromDB:Ljava/lang/String;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mProfileSwitchMessageId:I

.field private mProfileView:Landroid/view/View;

.field private mRecentPkgList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRecentPkgNames:Ljava/lang/String;

.field private mRegistered:Z

.field private mResolverComparator:Lcom/android/internal/app/ResolverComparator;

.field protected mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

.field private mResolverListMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mResolvingHome:Z

.field private mSShareCommon:Lcom/samsung/android/share/SShareCommon;

.field private mSShareLogging:Lcom/samsung/android/share/SShareLogging;

.field private mSafeForwardingMode:Z

.field private mShowExtended:Z

.field private mSimpleSharing:Lcom/samsung/android/share/SShareSimpleSharing;

.field private mSquicleUX:Z

.field private mSupportButtons:Z

.field private mSupportGridResolver:Z

.field private mSupportLogging:Z

.field private mSupportMoreActions:Z

.field private mSupportPageMode:Z

.field private mSupportShowButtonShapes:Z

.field private mSupportSimpleSharing:Z

.field private mTitlePanelAFW:Landroid/view/View;

.field private mTitlePanelDefault:Landroid/view/View;

.field private mTopPanel:Landroid/view/View;

.field private mTotalCount:I

.field private mViewPager:Lcom/android/internal/widget/ViewPager;

.field private mViewPagerBottomSpacing:Landroid/widget/LinearLayout;

.field private mViewPagerNavi:Landroid/widget/LinearLayout;

.field private mViewPagerNaviPrevPage:I

.field private mVisibleArea:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput v0, p0, Lcom/android/internal/app/ResolverActivity;->mLastSelected:I

    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mResolvingHome:Z

    iput v0, p0, Lcom/android/internal/app/ResolverActivity;->mProfileSwitchMessageId:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mIntents:Ljava/util/ArrayList;

    iput-boolean v2, p0, Lcom/android/internal/app/ResolverActivity;->mIsDeviceDefault:Z

    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mDropsDocumentsUI:Z

    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mSquicleUX:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mExtraIntentList:Ljava/util/List;

    iput-boolean v2, p0, Lcom/android/internal/app/ResolverActivity;->IS_OVERLAY_THEMES_ENABLED:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mResolverListMap:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mGridResolveAdapterList:Ljava/util/List;

    iput v1, p0, Lcom/android/internal/app/ResolverActivity;->mCurrentPageIdx:I

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mRecentPkgList:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPkgNamesArray:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mDropComponents:Ljava/util/ArrayList;

    const/16 v0, 0x12c

    iput v0, p0, Lcom/android/internal/app/ResolverActivity;->mAnimDuration:I

    new-instance v0, Lcom/android/internal/app/ResolverActivity$1;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ResolverActivity$1;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/app/ResolverActivity;)Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/app/ResolverActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/app/ResolverActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    iget v0, p0, Lcom/android/internal/app/ResolverActivity;->mMaxColumns:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/internal/app/ResolverActivity;)Lcom/android/internal/app/ResolverComparator;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mResolverComparator:Lcom/android/internal/app/ResolverComparator;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/app/ResolverActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mDropsDocumentsUI:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/internal/app/ResolverActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/app/ResolverActivity;->mDropsDocumentsUI:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/internal/app/ResolverActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mDropComponents:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/internal/app/ResolverActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->isForKnoxNFC()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/internal/app/ResolverActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mIsDeviceDefault:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/android/internal/app/ResolverActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mShowExtended:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/android/internal/app/ResolverActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/app/ResolverActivity;->mShowExtended:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/internal/app/ResolverActivity;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    iget v0, p0, Lcom/android/internal/app/ResolverActivity;->defaultTextSize:F

    return v0
.end method

.method static synthetic access$1802(Lcom/android/internal/app/ResolverActivity;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;
    .param p1, "x1"    # F

    .prologue
    iput p1, p0, Lcom/android/internal/app/ResolverActivity;->defaultTextSize:F

    return p1
.end method

.method static synthetic access$1900(Lcom/android/internal/app/ResolverActivity;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->getFontScale()F

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/android/internal/app/ResolverActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysUseOption:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/internal/app/ResolverActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/android/internal/app/ResolverActivity;->mProfileSwitchMessageId:I

    return p1
.end method

.method static synthetic access$2100(Lcom/android/internal/app/ResolverActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    iget v0, p0, Lcom/android/internal/app/ResolverActivity;->mLastSelected:I

    return v0
.end method

.method static synthetic access$2102(Lcom/android/internal/app/ResolverActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/android/internal/app/ResolverActivity;->mLastSelected:I

    return p1
.end method

.method static synthetic access$2200(Lcom/android/internal/app/ResolverActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mSupportButtons:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/android/internal/app/ResolverActivity;ZIZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/app/ResolverActivity;->setAlwaysButtonEnabled(ZIZ)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/internal/app/ResolverActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mOnceButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;)Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;
    .param p1, "x1"    # Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

    .prologue
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity;->mPickOptionRequest:Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/android/internal/app/ResolverActivity;)Lcom/samsung/android/share/SShareSimpleSharing;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mSimpleSharing:Lcom/samsung/android/share/SShareSimpleSharing;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/internal/app/ResolverActivity;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverActivity;->convertPageModePosition(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/android/internal/app/ResolverActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mGridResolveAdapterList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/app/ResolverActivity;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/internal/app/ResolverActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    iget v0, p0, Lcom/android/internal/app/ResolverActivity;->mTotalCount:I

    return v0
.end method

.method static synthetic access$3102(Lcom/android/internal/app/ResolverActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/android/internal/app/ResolverActivity;->mCurrentPageIdx:I

    return p1
.end method

.method static synthetic access$3200(Lcom/android/internal/app/ResolverActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    iget v0, p0, Lcom/android/internal/app/ResolverActivity;->mViewPagerNaviPrevPage:I

    return v0
.end method

.method static synthetic access$3202(Lcom/android/internal/app/ResolverActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/android/internal/app/ResolverActivity;->mViewPagerNaviPrevPage:I

    return p1
.end method

.method static synthetic access$3300(Lcom/android/internal/app/ResolverActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mViewPagerNavi:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/internal/app/ResolverActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mSupportSimpleSharing:Z

    return v0
.end method

.method static synthetic access$3500(Lcom/android/internal/app/ResolverActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->isLandscapeMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3600(Lcom/android/internal/app/ResolverActivity;)Lcom/samsung/android/share/SShareMoreActions;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMoreActions:Lcom/samsung/android/share/SShareMoreActions;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/internal/app/ResolverActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mIntents:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/internal/app/ResolverActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mVisibleArea:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3902(Lcom/android/internal/app/ResolverActivity;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;
    .param p1, "x1"    # Landroid/animation/Animator;

    .prologue
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity;->mExitAnimator:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/internal/app/ResolverActivity;)Lcom/samsung/android/share/SShareCommon;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mSShareCommon:Lcom/samsung/android/share/SShareCommon;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/app/ResolverActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mSquicleUX:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/internal/app/ResolverActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/app/ResolverActivity;->mSquicleUX:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/internal/app/ResolverActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mSupportPageMode:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/internal/app/ResolverActivity;)Lcom/android/internal/widget/ViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mViewPager:Lcom/android/internal/widget/ViewPager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/app/ResolverActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mSupportGridResolver:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/internal/app/ResolverActivity;)Landroid/widget/AbsListView;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapterView:Landroid/widget/AbsListView;

    return-object v0
.end method

.method private addMoreActionsView()V
    .locals 7

    .prologue
    new-instance v0, Lcom/samsung/android/share/SShareMoreActions;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mSShareCommon:Lcom/samsung/android/share/SShareCommon;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->getReferrerPackageName()Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/share/SShareMoreActions;-><init>(Landroid/app/Activity;Landroid/content/Context;Lcom/samsung/android/share/SShareCommon;Landroid/view/Window;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMoreActions:Lcom/samsung/android/share/SShareMoreActions;

    const v0, 0x10204e1

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mBottomPanel:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mBottomPanel:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    new-instance v6, Lcom/android/internal/app/ResolverActivity$MoreActionsItemClickListener;

    invoke-direct {v6, p0}, Lcom/android/internal/app/ResolverActivity$MoreActionsItemClickListener;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    .local v6, "listener":Lcom/android/internal/app/ResolverActivity$MoreActionsItemClickListener;
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mMoreActions:Lcom/samsung/android/share/SShareMoreActions;

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mBottomPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v6}, Lcom/samsung/android/share/SShareMoreActions;->setMoreActionsView(Landroid/view/ViewGroup;Landroid/widget/AdapterView$OnItemClickListener;)V

    .end local v6    # "listener":Lcom/android/internal/app/ResolverActivity$MoreActionsItemClickListener;
    :cond_0
    return-void
.end method

.method private addRecentHistoryGridView(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const v1, 0x10204e0

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/HorizontalListView;

    iput-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mGridRecentHistory:Landroid/widget/HorizontalListView;

    new-instance v0, Lcom/android/internal/app/ResolverActivity$SShareItemClickListener;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ResolverActivity$SShareItemClickListener;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    .local v0, "listener":Lcom/android/internal/app/ResolverActivity$SShareItemClickListener;
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mSimpleSharing:Lcom/samsung/android/share/SShareSimpleSharing;

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mGridRecentHistory:Landroid/widget/HorizontalListView;

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/share/SShareSimpleSharing;->setSimpleSharingView(Landroid/widget/HorizontalListView;Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method private applyRemoteShareResolver(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mGridRecentHistory:Landroid/widget/HorizontalListView;

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverActivity;->addRecentHistoryGridView(Landroid/content/Intent;)V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mSimpleSharing:Lcom/samsung/android/share/SShareSimpleSharing;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mSimpleSharing:Lcom/samsung/android/share/SShareSimpleSharing;

    invoke-virtual {v0}, Lcom/samsung/android/share/SShareSimpleSharing;->buildUpSimpleSharingData()V

    :cond_1
    return-void
.end method

.method private clearPagerAdapter()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mGridResolveAdapterList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mGridResolveAdapterList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mResolverListMap:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mResolverListMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_1
    return-void
.end method

.method private convertPageModePosition(I)I
    .locals 5
    .param p1, "pos"    # I

    .prologue
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mPagerAdapter:Lcom/android/internal/app/ResolverActivity$ResolverPagerAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mGridResolveAdapterList:Ljava/util/List;

    if-eqz v1, :cond_0

    const-string v1, "pagerkey_%1$d_%2$d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/internal/app/ResolverActivity;->mCurrentPageIdx:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mResolverListMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mResolverListMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .end local v0    # "key":Ljava/lang/String;
    :cond_0
    return p1
.end method

.method private createExitAnimation(Landroid/view/View;)Landroid/animation/Animator;
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x2

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v3, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    .local v3, "height":I
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .local v2, "animator":Landroid/animation/AnimatorSet;
    const-string v4, "translationY"

    new-array v5, v7, [F

    const/4 v6, 0x0

    aput v6, v5, v8

    div-int/lit8 v6, v3, 0x2

    int-to-float v6, v6

    aput v6, v5, v9

    invoke-static {p1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .local v1, "aniY":Landroid/animation/Animator;
    const-string v4, "alpha"

    new-array v5, v7, [F

    fill-array-data v5, :array_0

    invoke-static {p1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .local v0, "aniAlpha":Landroid/animation/Animator;
    new-array v4, v7, [Landroid/animation/Animator;

    aput-object v1, v4, v8

    aput-object v0, v4, v9

    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    return-object v2

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "edmUri"    # Ljava/lang/String;
    .param p3, "projectionArgs"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x1

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, p3

    move-object v4, p4

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .local v6, "cr":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v6, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v7

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move v0, v7

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getFontScale()F
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->fontScale:F

    .local v0, "fontScale":F
    const v1, 0x3f99999a    # 1.2f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    const v0, 0x3f99999a    # 1.2f

    :cond_0
    return v0
.end method

.method private getReferrerPackageName()Ljava/lang/String;
    .locals 3

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getReferrer()Landroid/net/Uri;

    move-result-object v0

    .local v0, "referrer":Landroid/net/Uri;
    if-eqz v0, :cond_0

    const-string v1, "android-app"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private hasManagedProfile()Z
    .locals 7

    .prologue
    const/4 v5, 0x0

    const-string v6, "user"

    invoke-virtual {p0, v6}, Lcom/android/internal/app/ResolverActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    .local v4, "userManager":Landroid/os/UserManager;
    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getUserId()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v2

    .local v2, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .local v3, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-nez v6, :cond_2

    const/4 v5, 0x1

    goto :goto_0

    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v3    # "userInfo":Landroid/content/pm/UserInfo;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/SecurityException;
    goto :goto_0
.end method

.method private initViewPagerNavi()V
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v8, -0x2

    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity;->mPagerAdapter:Lcom/android/internal/app/ResolverActivity$ResolverPagerAdapter;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity;->mPagerAdapter:Lcom/android/internal/app/ResolverActivity$ResolverPagerAdapter;

    invoke-virtual {v6}, Lcom/android/internal/app/ResolverActivity$ResolverPagerAdapter;->getCount()I

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v6

    if-ne v6, v1, :cond_3

    .local v1, "isRtlLayout":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1050212

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .local v4, "naviSize":I
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1050213

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .local v5, "naviStart":I
    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity;->mViewPagerNavi:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity;->mPagerAdapter:Lcom/android/internal/app/ResolverActivity$ResolverPagerAdapter;

    invoke-virtual {v6}, Lcom/android/internal/app/ResolverActivity$ResolverPagerAdapter;->getCount()I

    move-result v6

    if-ge v0, v6, :cond_0

    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .local v2, "iv":Landroid/widget/ImageView;
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .local v3, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity;->mViewPager:Lcom/android/internal/widget/ViewPager;

    invoke-virtual {v6}, Lcom/android/internal/widget/ViewPager;->getCurrentItem()I

    move-result v6

    if-ne v0, v6, :cond_4

    const v6, 0x10809f2

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_2
    if-lez v0, :cond_2

    if-eqz v1, :cond_5

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    :cond_2
    :goto_3
    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity;->mViewPagerNavi:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v6, Lcom/android/internal/app/ResolverActivity$6;

    invoke-direct {v6, p0}, Lcom/android/internal/app/ResolverActivity$6;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "isRtlLayout":Z
    .end local v2    # "iv":Landroid/widget/ImageView;
    .end local v3    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v4    # "naviSize":I
    .end local v5    # "naviStart":I
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .restart local v0    # "i":I
    .restart local v1    # "isRtlLayout":Z
    .restart local v2    # "iv":Landroid/widget/ImageView;
    .restart local v3    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v4    # "naviSize":I
    .restart local v5    # "naviStart":I
    :cond_4
    const v6, 0x10809f3

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_5
    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_3
.end method

.method private isForKnoxNFC()Z
    .locals 3

    .prologue
    sget-object v1, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_4_0:Landroid/os/PersonaManager$KnoxContainerVersion;

    invoke-static {v1}, Landroid/os/PersonaManager;->isKnoxVersionSupported(Landroid/os/PersonaManager$KnoxContainerVersion;)Z

    move-result v0

    .local v0, "isKnox24Supported":Z
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    const/16 v2, 0x403

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isLandscapeMode()Z
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static final isSpecificUriMatch(I)Z
    .locals 1
    .param p0, "match"    # I

    .prologue
    const/high16 v0, 0xfff0000

    and-int/2addr p0, v0

    const/high16 v0, 0x300000

    if-lt p0, v0, :cond_0

    const/high16 v0, 0x500000

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeMyIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const v2, -0x800001

    and-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method static resolveInfoMatch(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)Z
    .locals 4
    .param p0, "lhs"    # Landroid/content/pm/ResolveInfo;
    .param p1, "rhs"    # Landroid/content/pm/ResolveInfo;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_2

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v2, :cond_3

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method private safelyStartActivtyAfterAnimation(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V
    .locals 3
    .param p1, "cti"    # Lcom/android/internal/app/ResolverActivity$TargetInfo;

    .prologue
    const v1, 0x1020365

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .local v0, "v":Landroid/view/View;
    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity;->safelyStartActivity(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/internal/app/ResolverActivity;->createExitAnimation(Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mExitAnimator:Landroid/animation/Animator;

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mExitAnimator:Landroid/animation/Animator;

    new-instance v2, Lcom/android/internal/app/ResolverActivity$7;

    invoke-direct {v2, p0, p1}, Lcom/android/internal/app/ResolverActivity$7;-><init>(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverActivity$TargetInfo;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mExitAnimator:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    goto :goto_0
.end method

.method private setAlwaysButtonEnabled(ZIZ)V
    .locals 4
    .param p1, "hasValidSelection"    # Z
    .param p2, "checkedPos"    # I
    .param p3, "filtered"    # Z

    .prologue
    const/4 v0, 0x0

    .local v0, "enabled":Z
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v2, p2, p3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->resolveInfoForPosition(IZ)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .local v1, "ri":Landroid/content/pm/ResolveInfo;
    iget v2, v1, Landroid/content/pm/ResolveInfo;->targetUserId:I

    const/4 v3, -0x2

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    .end local v1    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_0
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method private setProfileSwitchMessageId(I)V
    .locals 8
    .param p1, "contentUserHint"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, -0x2

    if-eq p1, v7, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    if-eq p1, v7, :cond_0

    const-string v7, "user"

    invoke-virtual {p0, v7}, Lcom/android/internal/app/ResolverActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    .local v4, "userManager":Landroid/os/UserManager;
    invoke-virtual {v4, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .local v1, "originUserInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v4}, Landroid/os/UserManager;->getUserHandle()I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .local v3, "targetUserInfo":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v7

    if-nez v7, :cond_1

    move v0, v5

    .local v0, "originIsManaged":Z
    :goto_0
    invoke-virtual {v4}, Landroid/os/UserManager;->isManagedProfile()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v7

    if-nez v7, :cond_3

    move v2, v5

    .local v2, "targetIsManaged":Z
    :goto_1
    if-eqz v0, :cond_4

    if-nez v2, :cond_4

    const v5, 0x104043f

    iput v5, p0, Lcom/android/internal/app/ResolverActivity;->mProfileSwitchMessageId:I

    .end local v0    # "originIsManaged":Z
    .end local v1    # "originUserInfo":Landroid/content/pm/UserInfo;
    .end local v2    # "targetIsManaged":Z
    .end local v3    # "targetUserInfo":Landroid/content/pm/UserInfo;
    .end local v4    # "userManager":Landroid/os/UserManager;
    :cond_0
    :goto_2
    return-void

    .restart local v1    # "originUserInfo":Landroid/content/pm/UserInfo;
    .restart local v3    # "targetUserInfo":Landroid/content/pm/UserInfo;
    .restart local v4    # "userManager":Landroid/os/UserManager;
    :cond_1
    move v0, v6

    goto :goto_0

    :cond_2
    move v0, v6

    goto :goto_0

    .restart local v0    # "originIsManaged":Z
    :cond_3
    move v2, v6

    goto :goto_1

    .restart local v2    # "targetIsManaged":Z
    :cond_4
    if-nez v0, :cond_0

    if-eqz v2, :cond_0

    const v5, 0x1040440

    iput v5, p0, Lcom/android/internal/app/ResolverActivity;->mProfileSwitchMessageId:I

    goto :goto_2
.end method

.method private supportsManagedProfiles(Landroid/content/pm/ResolveInfo;)Z
    .locals 6
    .param p1, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    .prologue
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v4, 0x15

    if-lt v3, v4, :cond_0

    const/4 v2, 0x1

    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    return v2

    :catch_0
    move-exception v1

    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method


# virtual methods
.method bindProfileView()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getOtherProfile()Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-result-object v0

    .local v0, "dri":Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    const v4, 0x1020006

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .local v1, "icon":Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    const v4, 0x1020014

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .local v2, "text":Landroid/widget/TextView;
    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->hasDisplayIcon()Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Lcom/android/internal/app/ResolverActivity$LoadIconIntoViewTask;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/internal/app/ResolverActivity$LoadIconIntoViewTask;-><init>(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;Landroid/widget/ImageView;)V

    new-array v4, v5, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/android/internal/app/ResolverActivity$LoadIconIntoViewTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getDisplayIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x105028c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/android/internal/app/ResolverActivity;->defaultTextSize:F

    iget v3, p0, Lcom/android/internal/app/ResolverActivity;->defaultTextSize:F

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->getFontScale()F

    move-result v4

    mul-float/2addr v3, v4

    invoke-virtual {v2, v5, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .end local v1    # "icon":Landroid/widget/ImageView;
    .end local v2    # "text":Landroid/widget/TextView;
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method buildUpPagerAdapter()V
    .locals 11

    .prologue
    iget-object v7, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v7}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getCount()I

    move-result v0

    .local v0, "dataCnt":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    iget v7, p0, Lcom/android/internal/app/ResolverActivity;->mPageItemNum:I

    div-int v5, v1, v7

    .local v5, "pageIndex":I
    iget v7, p0, Lcom/android/internal/app/ResolverActivity;->mPageItemNum:I

    rem-int v2, v1, v7

    .local v2, "itemIndex":I
    iget-object v7, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v7, v1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getItem(I)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v7

    if-nez v7, :cond_1

    .end local v2    # "itemIndex":I
    .end local v5    # "pageIndex":I
    :cond_0
    return-void

    .restart local v2    # "itemIndex":I
    .restart local v5    # "pageIndex":I
    :cond_1
    if-nez v2, :cond_2

    iget-object v7, p0, Lcom/android/internal/app/ResolverActivity;->mGridResolveAdapterList:Ljava/util/List;

    new-instance v8, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, p0, v9}, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Context;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    const-string v7, "pagerkey_%1$d_%2$d"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .local v3, "key":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v7, v1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getItem(I)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v6

    .local v6, "targetInfo":Lcom/android/internal/app/ResolverActivity$TargetInfo;
    iget-object v7, p0, Lcom/android/internal/app/ResolverActivity;->mGridResolveAdapterList:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;

    .local v4, "pageAdapter":Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;
    if-eqz v4, :cond_3

    iget-object v7, v4, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;->mList:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v7, v4, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;->mKey:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v7, p0, Lcom/android/internal/app/ResolverActivity;->mResolverListMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method checkSquicleUXRequired()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "tap_to_icon"

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .local v0, "value":I
    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method configureContentView(Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;Z)Z
    .locals 15
    .param p2, "initialIntents"    # [Landroid/content/Intent;
    .param p4, "alwaysUseOption"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;[",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .local p1, "payloadIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    .local p3, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget v6, p0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    if-eqz p4, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isVoiceInteraction()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v7, 0x1

    :goto_0
    move-object v1, p0

    move-object v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/app/ResolverActivity;->createAdapter(Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;IZ)Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    new-instance v1, Lcom/samsung/android/share/SShareCommon;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    iget-boolean v4, p0, Lcom/android/internal/app/ResolverActivity;->mIsDeviceDefault:Z

    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v5}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->hasFilteredItem()Z

    move-result v6

    iget v7, p0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    iget-object v8, p0, Lcom/android/internal/app/ResolverActivity;->mExtraIntentList:Ljava/util/List;

    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v5}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getUnfilteredCount()I

    move-result v9

    move/from16 v5, p4

    invoke-direct/range {v1 .. v9}, Lcom/samsung/android/share/SShareCommon;-><init>(Landroid/content/Context;Landroid/content/Intent;ZZZILjava/util/List;I)V

    iput-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mSShareCommon:Lcom/samsung/android/share/SShareCommon;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0086

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/ResolverActivity;->mMaxColumns:I

    iget v1, p0, Lcom/android/internal/app/ResolverActivity;->mMaxColumns:I

    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/internal/app/ResolverActivity;->mPageItemNum:I

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mSShareCommon:Lcom/samsung/android/share/SShareCommon;

    invoke-virtual {v1}, Lcom/samsung/android/share/SShareCommon;->getSupportSimpleSharing()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mSupportSimpleSharing:Z

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mSShareCommon:Lcom/samsung/android/share/SShareCommon;

    invoke-virtual {v1}, Lcom/samsung/android/share/SShareCommon;->getSupportLogging()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mSupportLogging:Z

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mSShareCommon:Lcom/samsung/android/share/SShareCommon;

    invoke-virtual {v1}, Lcom/samsung/android/share/SShareCommon;->getSupportMoreActions()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mSupportMoreActions:Z

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mSShareCommon:Lcom/samsung/android/share/SShareCommon;

    invoke-virtual {v1}, Lcom/samsung/android/share/SShareCommon;->getSupportGridResolver()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mSupportGridResolver:Z

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mSShareCommon:Lcom/samsung/android/share/SShareCommon;

    invoke-virtual {v1}, Lcom/samsung/android/share/SShareCommon;->getSupportPageMode()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mSupportPageMode:Z

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mSShareCommon:Lcom/samsung/android/share/SShareCommon;

    invoke-virtual {v1}, Lcom/samsung/android/share/SShareCommon;->getSupportButtons()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mSupportButtons:Z

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mSShareCommon:Lcom/samsung/android/share/SShareCommon;

    invoke-virtual {v1}, Lcom/samsung/android/share/SShareCommon;->getSupportShowButtonShapes()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mSupportShowButtonShapes:Z

    iget-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mSupportSimpleSharing:Z

    if-eqz v1, :cond_0

    new-instance v1, Lcom/samsung/android/share/SShareSimpleSharing;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mSShareCommon:Lcom/samsung/android/share/SShareCommon;

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    iget v6, p0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    iget-object v7, p0, Lcom/android/internal/app/ResolverActivity;->mExtraIntentList:Ljava/util/List;

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/share/SShareSimpleSharing;-><init>(Landroid/app/Activity;Landroid/content/Context;Lcom/samsung/android/share/SShareCommon;Landroid/content/Intent;ILjava/util/List;)V

    iput-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mSimpleSharing:Lcom/samsung/android/share/SShareSimpleSharing;

    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mSupportLogging:Z

    if-eqz v1, :cond_1

    new-instance v2, Lcom/samsung/android/share/SShareLogging;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    invoke-direct {v2, v3, v1}, Lcom/samsung/android/share/SShareLogging;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    iput-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mSShareLogging:Lcom/samsung/android/share/SShareLogging;

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mSShareLogging:Lcom/samsung/android/share/SShareLogging;

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mSShareLogging:Lcom/samsung/android/share/SShareLogging;

    const-string v2, "STRT"

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromPackage:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/share/SShareLogging;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mSupportGridResolver:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->hasFilteredItem()Z

    move-result v1

    if-eqz v1, :cond_3

    const v12, 0x10900e6

    .local v12, "layoutId":I
    const/16 p4, 0x0

    :goto_1
    move/from16 v0, p4

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysUseOption:Z

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getUnfilteredCount()I

    move-result v10

    .local v10, "count":I
    const/4 v1, 0x1

    if-ne v10, v1, :cond_4

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getOtherProfile()Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-result-object v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->targetInfoForPosition(IZ)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v13

    .local v13, "target":Lcom/android/internal/app/ResolverActivity$TargetInfo;
    invoke-virtual {p0, v13}, Lcom/android/internal/app/ResolverActivity;->shouldAutoLaunchSingleChoice(Lcom/android/internal/app/ResolverActivity$TargetInfo;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0, v13}, Lcom/android/internal/app/ResolverActivity;->safelyStartActivity(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v1}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    const/4 v1, 0x1

    .end local v13    # "target":Lcom/android/internal/app/ResolverActivity$TargetInfo;
    :goto_2
    return v1

    .end local v10    # "count":I
    .end local v12    # "layoutId":I
    :cond_2
    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getLayoutResource()I

    move-result v12

    .restart local v12    # "layoutId":I
    goto :goto_1

    .restart local v10    # "count":I
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "user_setup_complete"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_5

    const/4 v14, 0x1

    .local v14, "userSetupComplete":Z
    :goto_3
    if-nez v14, :cond_7

    if-nez p4, :cond_7

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->hasFilteredItem()Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "ResolverActivity"

    const-string v2, "Blocked for security reason!! Setup is not completed!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mIsDeviceDefault:Z

    if-eqz v1, :cond_6

    const v1, 0x109014e

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverActivity;->setContentView(I)V

    :goto_4
    const v1, 0x1020004

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .local v11, "empty":Landroid/widget/TextView;
    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const v1, 0x1020388

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/AbsListView;

    iput-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mAdapterView:Landroid/widget/AbsListView;

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mAdapterView:Landroid/widget/AbsListView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView;->setVisibility(I)V

    const/4 v1, 0x0

    goto :goto_2

    .end local v11    # "empty":Landroid/widget/TextView;
    .end local v14    # "userSetupComplete":Z
    :cond_5
    const/4 v14, 0x0

    goto :goto_3

    .restart local v14    # "userSetupComplete":Z
    :cond_6
    const v1, 0x10900e5

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverActivity;->setContentView(I)V

    goto :goto_4

    :cond_7
    if-gtz v10, :cond_8

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->shouldShowSimpleSharing()Z

    move-result v1

    if-nez v1, :cond_8

    iget-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mSupportMoreActions:Z

    if-eqz v1, :cond_a

    :cond_8
    invoke-virtual {p0, v12}, Lcom/android/internal/app/ResolverActivity;->setContentView(I)V

    const v1, 0x1020388

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/AbsListView;

    iput-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mAdapterView:Landroid/widget/AbsListView;

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mAdapterView:Landroid/widget/AbsListView;

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    move/from16 v0, p4

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/internal/app/ResolverActivity;->onPrepareAdapterView(Landroid/widget/AbsListView;Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;Z)V

    if-nez v10, :cond_9

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mAdapterView:Landroid/widget/AbsListView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView;->setVisibility(I)V

    :cond_9
    :goto_5
    const/4 v1, 0x0

    goto/16 :goto_2

    :cond_a
    iget-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mIsDeviceDefault:Z

    if-eqz v1, :cond_b

    const v1, 0x109014e

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverActivity;->setContentView(I)V

    :goto_6
    const v1, 0x1020004

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .restart local v11    # "empty":Landroid/widget/TextView;
    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const v1, 0x1020388

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/AbsListView;

    iput-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mAdapterView:Landroid/widget/AbsListView;

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mAdapterView:Landroid/widget/AbsListView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView;->setVisibility(I)V

    goto :goto_5

    .end local v11    # "empty":Landroid/widget/TextView;
    :cond_b
    const v1, 0x10900e5

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverActivity;->setContentView(I)V

    goto :goto_6
.end method

.method createAdapter(Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;IZ)Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "initialIntents"    # [Landroid/content/Intent;
    .param p5, "launchedFromUid"    # I
    .param p6, "filterLastUsed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;[",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;IZ)",
            "Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;"
        }
    .end annotation

    .prologue
    .local p2, "payloadIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    .local p4, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    iget-object v7, p0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromPackage:Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;ILjava/lang/String;Z)V

    return-object v0
.end method

.method dismiss()V
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    :cond_0
    return-void
.end method

.method public finish()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mExitAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    const v0, 0x10a005c

    const v1, 0x10a005d

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/ResolverActivity;->overridePendingTransition(II)V

    goto :goto_0
.end method

.method protected getGuideActivity()Landroid/content/ComponentName;
    .locals 3

    .prologue
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "android"

    const-string v2, "com.android.internal.app.ResolverGuideActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "resId"    # I

    .prologue
    :try_start_0
    iget v2, p0, Lcom/android/internal/app/ResolverActivity;->mIconDpi:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .local v1, "result":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v1

    .end local v1    # "result":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v1, 0x0

    .restart local v1    # "result":Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method getLayoutResource()I
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mIsDeviceDefault:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mSupportPageMode:Z

    if-eqz v0, :cond_0

    const v0, 0x109014f

    :goto_0
    return v0

    :cond_0
    const v0, 0x109014e

    goto :goto_0

    :cond_1
    const v0, 0x10900e5

    goto :goto_0
.end method

.method getPageItemNum()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/app/ResolverActivity;->mPageItemNum:I

    return v0
.end method

.method getPageResolverList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mGridResolveAdapterList:Ljava/util/List;

    return-object v0
.end method

.method public getPagerAdapter()Lcom/android/internal/app/ResolverActivity$ResolverPagerAdapter;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPagerAdapter:Lcom/android/internal/app/ResolverActivity$ResolverPagerAdapter;

    return-object v0
.end method

.method getPagerKey()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "pagerkey_%1$d_%2$d"

    return-object v0
.end method

.method public getReplacementIntent(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .param p1, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "defIntent"    # Landroid/content/Intent;

    .prologue
    return-object p2
.end method

.method getResolverListMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mResolverListMap:Ljava/util/Map;

    return-object v0
.end method

.method public getSShareCommon()Lcom/samsung/android/share/SShareCommon;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mSShareCommon:Lcom/samsung/android/share/SShareCommon;

    return-object v0
.end method

.method public getTargetIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mIntents:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    goto :goto_0
.end method

.method protected getTitleForAction(Ljava/lang/String;I)Ljava/lang/CharSequence;
    .locals 6
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "defaultTitleRes"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/android/internal/app/ResolverActivity;->mResolvingHome:Z

    if-eqz v3, :cond_0

    sget-object v1, Lcom/android/internal/app/ResolverActivity$ActionTitle;->HOME:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    .local v1, "title":Lcom/android/internal/app/ResolverActivity$ActionTitle;
    :goto_0
    iget-boolean v3, p0, Lcom/android/internal/app/ResolverActivity;->mSupportGridResolver:Z

    if-ne v3, v4, :cond_1

    move v0, v2

    .local v0, "named":Z
    :goto_1
    sget-object v3, Lcom/android/internal/app/ResolverActivity$ActionTitle;->DEFAULT:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    if-ne v1, v3, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p0, p2}, Lcom/android/internal/app/ResolverActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_2
    return-object v2

    .end local v0    # "named":Z
    .end local v1    # "title":Lcom/android/internal/app/ResolverActivity$ActionTitle;
    :cond_0
    invoke-static {p1}, Lcom/android/internal/app/ResolverActivity$ActionTitle;->forAction(Ljava/lang/String;)Lcom/android/internal/app/ResolverActivity$ActionTitle;

    move-result-object v1

    goto :goto_0

    .restart local v1    # "title":Lcom/android/internal/app/ResolverActivity$ActionTitle;
    :cond_1
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->hasFilteredItem()Z

    move-result v0

    goto :goto_1

    .restart local v0    # "named":Z
    :cond_2
    if-eqz v0, :cond_3

    iget v3, v1, Lcom/android/internal/app/ResolverActivity$ActionTitle;->namedTitleRes:I

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v5}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getFilteredItem()Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/app/ResolverActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_3
    iget v2, v1, Lcom/android/internal/app/ResolverActivity$ActionTitle;->titleRes:I

    invoke-virtual {p0, v2}, Lcom/android/internal/app/ResolverActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2
.end method

.method loadIconForResolveInfo(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;
    .locals 10
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;

    .prologue
    :try_start_0
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .local v0, "ci":Landroid/content/pm/ComponentInfo;
    iget-object v8, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    iget v7, v0, Landroid/content/pm/ComponentInfo;->icon:I

    if-eqz v7, :cond_1

    iget-object v7, v0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    :goto_0
    invoke-virtual {v8, v7}, Landroid/content/pm/PackageManager;->getCSCPackageItemIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .local v1, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_2

    const-string v7, "ResolverActivity"

    const-string v8, "CSCPackage Item Icon"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .local v6, "userId":I
    iget-object v7, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    new-instance v8, Landroid/os/UserHandle;

    invoke-direct {v8, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v7, v1, v8}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .end local v0    # "ci":Landroid/content/pm/ComponentInfo;
    .end local v1    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v6    # "userId":I
    :cond_0
    :goto_1
    return-object v1

    .restart local v0    # "ci":Landroid/content/pm/ComponentInfo;
    :cond_1
    iget-object v7, v0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    goto :goto_0

    .restart local v1    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_2
    iget-object v7, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    if-eqz v7, :cond_3

    iget v7, p1, Landroid/content/pm/ResolveInfo;->icon:I

    if-eqz v7, :cond_3

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->isForKnoxNFC()Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v8, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    iget-object v9, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object v7

    iget v8, p1, Landroid/content/pm/ResolveInfo;->icon:I

    invoke-virtual {p0, v7, v8}, Lcom/android/internal/app/ResolverActivity;->getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_2
    if-nez v1, :cond_0

    :cond_3
    invoke-virtual {p1}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v4

    .local v4, "iconRes":I
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "current_sec_active_themepackage"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, "themePackageName":Ljava/lang/String;
    if-eqz v4, :cond_4

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->isForKnoxNFC()Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v8, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v9, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {p0, v7, v4}, Lcom/android/internal/app/ResolverActivity;->getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_3
    if-nez v1, :cond_0

    .end local v0    # "ci":Landroid/content/pm/ComponentInfo;
    .end local v1    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v4    # "iconRes":I
    .end local v5    # "themePackageName":Ljava/lang/String;
    :cond_4
    :goto_4
    iget-object v7, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v7}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_1

    .restart local v0    # "ci":Landroid/content/pm/ComponentInfo;
    .restart local v1    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_5
    :try_start_1
    iget-object v7, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v8, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v7

    iget v8, p1, Landroid/content/pm/ResolveInfo;->icon:I

    invoke-virtual {p0, v7, v8}, Lcom/android/internal/app/ResolverActivity;->getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_2

    .restart local v4    # "iconRes":I
    .restart local v5    # "themePackageName":Ljava/lang/String;
    :cond_6
    if-eqz v5, :cond_7

    iget-object v7, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, v8}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_3

    :cond_7
    iget-boolean v7, p0, Lcom/android/internal/app/ResolverActivity;->mSquicleUX:Z

    if-eqz v7, :cond_a

    iget-boolean v7, p0, Lcom/android/internal/app/ResolverActivity;->mIsManagedProfile:Z

    if-eqz v7, :cond_8

    iget v7, p1, Landroid/content/pm/ResolveInfo;->targetUserId:I

    invoke-static {v7}, Landroid/os/PersonaManager;->isKnoxId(I)Z

    move-result v7

    if-nez v7, :cond_8

    iget-object v7, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v8, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {p0, v7, v4}, Lcom/android/internal/app/ResolverActivity;->getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_3

    :cond_8
    iget-object v7, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v8, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->shouldPackIntoIconTray(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v8, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {p0, v7, v4}, Lcom/android/internal/app/ResolverActivity;->getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .local v2, "drTmp":Landroid/graphics/drawable/Drawable;
    iget-object v7, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v8, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    const/4 v8, 0x1

    invoke-virtual {v7, v2, v8}, Landroid/content/pm/PackageManager;->getDrawableForIconTray(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_3

    .end local v2    # "drTmp":Landroid/graphics/drawable/Drawable;
    :cond_9
    iget-object v7, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v8, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {p0, v7, v4}, Lcom/android/internal/app/ResolverActivity;->getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_3

    :cond_a
    iget-object v7, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v8, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {p0, v7, v4}, Lcom/android/internal/app/ResolverActivity;->getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto/16 :goto_3

    .end local v0    # "ci":Landroid/content/pm/ComponentInfo;
    .end local v1    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v4    # "iconRes":I
    .end local v5    # "themePackageName":Ljava/lang/String;
    :catch_0
    move-exception v3

    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v7, "ResolverActivity"

    const-string v8, "Couldn\'t find resources for package"

    invoke-static {v7, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const-string v1, "ResolverActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityResult: requestCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " resultCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mSimpleSharing:Lcom/samsung/android/share/SShareSimpleSharing;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mSimpleSharing:Lcom/samsung/android/share/SShareSimpleSharing;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/share/SShareSimpleSharing;->getRecentHistoryIntent(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    return-void

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/content/ActivityNotFoundException;
    const-string v1, "ResolverActivity"

    const-string v2, "onActivityResult : startActivity failed!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method onActivityStarted(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V
    .locals 0
    .param p1, "cti"    # Lcom/android/internal/app/ResolverActivity$TargetInfo;

    .prologue
    return-void
.end method

.method public onButtonClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .local v0, "id":I
    iget-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysUseOption:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mAdapterView:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getCheckedItemPosition()I

    move-result v1

    move v2, v1

    :goto_0
    const v1, 0x1020475

    if-ne v0, v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    iget-boolean v3, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysUseOption:Z

    invoke-virtual {p0, v2, v1, v3}, Lcom/android/internal/app/ResolverActivity;->startSelected(IZZ)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getFilteredPosition()I

    move-result v1

    move v2, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x1

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->makeMyIntent()Landroid/content/Intent;

    move-result-object v2

    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v8

    .local v8, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v8, :cond_0

    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v0

    if-ne v0, v7, :cond_0

    const-string v0, "android.intent.category.HOME"

    invoke-interface {v8, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v7, p0, Lcom/android/internal/app/ResolverActivity;->mResolvingHome:Z

    :cond_0
    invoke-virtual {p0, v7}, Lcom/android/internal/app/ResolverActivity;->setSafeForwardingMode(Z)V

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/app/ResolverActivity;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;I[Landroid/content/Intent;Ljava/util/List;Z)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;I[Landroid/content/Intent;Ljava/util/List;Z)V
    .locals 25
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "title"    # Ljava/lang/CharSequence;
    .param p4, "defaultTitleRes"    # I
    .param p5, "initialIntents"    # [Landroid/content/Intent;
    .param p7, "alwaysUseOption"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/content/Intent;",
            "Ljava/lang/CharSequence;",
            "I[",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p6, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const v22, 0x1030489

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverActivity;->setTheme(I)V

    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getContentUserHint()I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/app/ResolverActivity;->setProfileSwitchMessageId(I)V

    const-string v22, "user"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/os/UserManager;

    .local v21, "userManager":Landroid/os/UserManager;
    invoke-virtual/range {v21 .. v21}, Landroid/os/UserManager;->isManagedProfile()Z

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/app/ResolverActivity;->mIsManagedProfile:Z

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v22, 0x0

    const-string v23, "true"

    aput-object v23, v17, v22

    .local v17, "selectionArgs":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v22

    const-string v23, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string v24, "isShareListAllowed"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    move-object/from16 v4, v17

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/app/ResolverActivity;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v13

    .local v13, "isShareListAllowed":Z
    const-string v22, "ResolverActivity"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "onCreate(): isShareListAllowed("

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ")"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v13, :cond_1

    const-string v22, "ResolverActivity"

    const-string v23, "onCreate(): ShareList is not allowed"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v22

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v23

    invoke-interface/range {v22 .. v23}, Landroid/app/IActivityManager;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    move/from16 v22, v0

    if-ltz v22, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v22

    if-eqz v22, :cond_3

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    goto :goto_0

    :catch_0
    move-exception v9

    .local v9, "e":Landroid/os/RemoteException;
    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    goto :goto_1

    .end local v9    # "e":Landroid/os/RemoteException;
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->checkSquicleUXRequired()Z

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/app/ResolverActivity;->mSquicleUX:Z

    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v22

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v23

    invoke-interface/range {v22 .. v23}, Landroid/app/IActivityManager;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromPackage:Ljava/lang/String;

    const-string v22, "ResolverActivity"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "mLaunchedFromPackage="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromPackage:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    move-object/from16 v22, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    const-string v22, "activity"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    .local v6, "am":Landroid/app/ActivityManager;
    invoke-virtual {v6}, Landroid/app/ActivityManager;->getLauncherLargeIconDensity()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/app/ResolverActivity;->mIconDpi:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mIntents:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    new-instance v24, Landroid/content/Intent;

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual/range {v22 .. v24}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/16 v16, 0x0

    .local v16, "referrerPackage":Ljava/lang/String;
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getReferrerPackageName()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v16

    :goto_3
    new-instance v22, Lcom/android/internal/app/ResolverComparator;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    move-object/from16 v3, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/app/ResolverComparator;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/app/ResolverActivity;->mResolverComparator:Lcom/android/internal/app/ResolverComparator;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mIntents:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move/from16 v4, p7

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/app/ResolverActivity;->configureContentView(Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;Z)Z

    move-result v22

    if-nez v22, :cond_0

    const v22, 0x1020365

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Lcom/android/internal/widget/ResolverDrawerLayout;

    .local v15, "rdl":Lcom/android/internal/widget/ResolverDrawerLayout;
    if-eqz v15, :cond_5

    new-instance v22, Lcom/android/internal/app/ResolverActivity$2;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/app/ResolverActivity$2;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->setOnDismissedListener(Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->isVoiceInteraction()Z

    move-result v22

    if-eqz v22, :cond_4

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->setCollapsed(Z)V

    :cond_4
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/internal/app/ResolverActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    :cond_5
    const v22, 0x10a005c

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ResolverActivity;->overridePendingTransition(II)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/ResolverActivity;->mSupportMoreActions:Z

    move/from16 v22, v0

    if-eqz v22, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->addMoreActionsView()V

    :cond_6
    const v22, 0x10204d9

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/app/ResolverActivity;->mVisibleArea:Landroid/view/View;

    const v22, 0x10204d7

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/app/ResolverActivity;->mTitlePanelAFW:Landroid/view/View;

    const v22, 0x10204d5

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/app/ResolverActivity;->mTitlePanelDefault:Landroid/view/View;

    if-nez p3, :cond_7

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ResolverActivity;->getTitleForAction(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object p3

    :cond_7
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_b

    const v22, 0x10204d6

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    .local v20, "titleTextDefault":Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x1050225

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/app/ResolverActivity;->defaultTextSize:F

    if-eqz v20, :cond_8

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/ResolverActivity;->defaultTextSize:F

    move/from16 v23, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getFontScale()F

    move-result v24

    mul-float v23, v23, v24

    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    const v22, 0x10204d8

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .local v19, "titleTextAFW":Landroid/widget/TextView;
    if-eqz v19, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/ResolverActivity;->mIsManagedProfile:Z

    move/from16 v22, v0

    if-eqz v22, :cond_d

    const v22, 0x10408dd

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_9
    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverActivity;->setTitle(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/ResolverActivity;->mIsDeviceDefault:Z

    move/from16 v22, v0

    if-nez v22, :cond_b

    const v22, 0x1020386

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    .local v18, "titleIcon":Landroid/widget/ImageView;
    if-eqz v18, :cond_b

    const/4 v5, 0x0

    .local v5, "ai":Landroid/content/pm/ApplicationInfo;
    :try_start_3
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v5

    :cond_a
    :goto_5
    if-eqz v5, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v22

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .end local v5    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v18    # "titleIcon":Landroid/widget/ImageView;
    .end local v19    # "titleTextAFW":Landroid/widget/TextView;
    .end local v20    # "titleTextDefault":Landroid/widget/TextView;
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->shouldShowSimpleSharing()Z

    move-result v22

    if-eqz v22, :cond_e

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/internal/app/ResolverActivity;->applyRemoteShareResolver(Landroid/content/Intent;)V

    const v22, 0x1020387

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    move-object/from16 v22, v0

    new-instance v23, Lcom/android/internal/app/ResolverActivity$3;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/app/ResolverActivity$3;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->bindProfileView()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mTitlePanelDefault:Landroid/view/View;

    move-object/from16 v22, v0

    if-eqz v22, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mTitlePanelDefault:Landroid/view/View;

    move-object/from16 v22, v0

    const/16 v23, 0x8

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mTitlePanelAFW:Landroid/view/View;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getVisibility()I

    move-result v22

    const/16 v23, 0x8

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mTitlePanelAFW:Landroid/view/View;

    move-object/from16 v22, v0

    const/16 v23, 0x8

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .end local v6    # "am":Landroid/app/ActivityManager;
    .end local v15    # "rdl":Lcom/android/internal/widget/ResolverDrawerLayout;
    .end local v16    # "referrerPackage":Ljava/lang/String;
    :catch_1
    move-exception v9

    .restart local v9    # "e":Landroid/os/RemoteException;
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromPackage:Ljava/lang/String;

    const-string v22, "ResolverActivity"

    const-string v23, "mLaunchedFromPackage=null"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .end local v9    # "e":Landroid/os/RemoteException;
    .restart local v6    # "am":Landroid/app/ActivityManager;
    .restart local v16    # "referrerPackage":Ljava/lang/String;
    :catch_2
    move-exception v9

    .local v9, "e":Ljava/lang/Exception;
    const-string v22, "ResolverActivity"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "getReferrerPackageName error!!!"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v15    # "rdl":Lcom/android/internal/widget/ResolverDrawerLayout;
    .restart local v19    # "titleTextAFW":Landroid/widget/TextView;
    .restart local v20    # "titleTextDefault":Landroid/widget/TextView;
    :cond_d
    const v22, 0x10408dc

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_4

    .restart local v5    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v18    # "titleIcon":Landroid/widget/ImageView;
    :catch_3
    move-exception v9

    .local v9, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v22, "ResolverActivity"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Could not find referrer package "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .end local v5    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v9    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v18    # "titleIcon":Landroid/widget/ImageView;
    .end local v19    # "titleTextAFW":Landroid/widget/TextView;
    .end local v20    # "titleTextDefault":Landroid/widget/TextView;
    :cond_e
    const v22, 0x102035e

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/app/ResolverActivity;->mTopPanel:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mTopPanel:Landroid/view/View;

    move-object/from16 v22, v0

    if-eqz v22, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mTopPanel:Landroid/view/View;

    move-object/from16 v22, v0

    const/16 v23, 0x8

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setVisibility(I)V

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mTitlePanelAFW:Landroid/view/View;

    move-object/from16 v22, v0

    if-eqz v22, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getOtherProfile()Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-result-object v22

    if-nez v22, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mTitlePanelAFW:Landroid/view/View;

    move-object/from16 v22, v0

    const/16 v23, 0x8

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setVisibility(I)V

    :cond_10
    :goto_6
    const v22, 0x1020006

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    .local v12, "iconView":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getFilteredItem()Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-result-object v11

    .local v11, "iconInfo":Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    if-eqz v12, :cond_11

    if-eqz v11, :cond_11

    new-instance v22, Lcom/android/internal/app/ResolverActivity$LoadIconIntoViewTask;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v11, v12}, Lcom/android/internal/app/ResolverActivity$LoadIconIntoViewTask;-><init>(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;Landroid/widget/ImageView;)V

    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Void;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/android/internal/app/ResolverActivity$LoadIconIntoViewTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_11
    if-nez p7, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->hasFilteredItem()Z

    move-result v22

    if-eqz v22, :cond_13

    :cond_12
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/ResolverActivity;->mSupportButtons:Z

    move/from16 v22, v0

    if-eqz v22, :cond_13

    const v22, 0x1020466

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .local v7, "buttonLayout":Landroid/view/ViewGroup;
    if-eqz v7, :cond_1c

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    const v22, 0x1020475

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/Button;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/app/ResolverActivity;->mAlwaysButton:Landroid/widget/Button;

    const v22, 0x1020474

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/Button;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/app/ResolverActivity;->mOnceButton:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/ResolverActivity;->mIsDeviceDefault:Z

    move/from16 v22, v0

    if-eqz v22, :cond_13

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/ResolverActivity;->mSupportShowButtonShapes:Z

    move/from16 v22, v0

    if-eqz v22, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mAlwaysButton:Landroid/widget/Button;

    move-object/from16 v22, v0

    const v23, 0x108093a

    invoke-virtual/range {v22 .. v23}, Landroid/widget/Button;->setBackgroundResource(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mOnceButton:Landroid/widget/Button;

    move-object/from16 v22, v0

    const v23, 0x108093a

    invoke-virtual/range {v22 .. v23}, Landroid/widget/Button;->setBackgroundResource(I)V

    .end local v7    # "buttonLayout":Landroid/view/ViewGroup;
    :cond_13
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->hasFilteredItem()Z

    move-result v22

    if-eqz v22, :cond_14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/ResolverActivity;->mSupportButtons:Z

    move/from16 v22, v0

    if-eqz v22, :cond_14

    const/16 v22, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getFilteredPosition()I

    move-result v23

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/app/ResolverActivity;->setAlwaysButtonEnabled(ZIZ)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mOnceButton:Landroid/widget/Button;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_14
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/ResolverActivity;->mSupportGridResolver:Z

    move/from16 v22, v0

    if-eqz v22, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mAdapterView:Landroid/widget/AbsListView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    instance-of v0, v0, Landroid/widget/GridView;

    move/from16 v22, v0

    if-eqz v22, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getCount()I

    move-result v14

    .local v14, "itemCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mAdapterView:Landroid/widget/AbsListView;

    move-object/from16 v22, v0

    check-cast v22, Landroid/widget/GridView;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/ResolverActivity;->mMaxColumns:I

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-static {v14, v0}, Ljava/lang/Math;->min(II)I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Landroid/widget/GridView;->setNumColumns(I)V

    .end local v14    # "itemCount":I
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->hasFilteredItem()Z

    move-result v22

    if-eqz v22, :cond_18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/ResolverActivity;->mSupportButtons:Z

    move/from16 v22, v0

    if-eqz v22, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mAdapterView:Landroid/widget/AbsListView;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getFilteredPosition()I

    move-result v23

    const/16 v24, 0x1

    invoke-virtual/range {v22 .. v24}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mAdapterView:Landroid/widget/AbsListView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/AbsListView;->getCheckedItemPosition()I

    move-result v8

    .local v8, "checkedPos":I
    const/16 v22, -0x1

    move/from16 v0, v22

    if-eq v8, v0, :cond_1d

    const/4 v10, 0x1

    .local v10, "hasValidSelection":Z
    :goto_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/ResolverActivity;->mAlwaysUseOption:Z

    move/from16 v22, v0

    if-eqz v22, :cond_18

    if-eqz v10, :cond_16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/ResolverActivity;->mLastSelected:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-eq v0, v8, :cond_18

    :cond_16
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v10, v8, v1}, Lcom/android/internal/app/ResolverActivity;->setAlwaysButtonEnabled(ZIZ)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mOnceButton:Landroid/widget/Button;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Landroid/widget/Button;->setEnabled(Z)V

    if-eqz v10, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mAdapterView:Landroid/widget/AbsListView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Landroid/widget/AbsListView;->smoothScrollToPosition(I)V

    :cond_17
    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/internal/app/ResolverActivity;->mLastSelected:I

    .end local v8    # "checkedPos":I
    .end local v10    # "hasValidSelection":Z
    :cond_18
    const v22, 0x1020387

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    move-object/from16 v22, v0

    if-eqz v22, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    move-object/from16 v22, v0

    new-instance v23, Lcom/android/internal/app/ResolverActivity$4;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/app/ResolverActivity$4;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->bindProfileView()V

    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->isVoiceInteraction()Z

    move-result v22

    if-eqz v22, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->onSetupVoiceInteraction()V

    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getWindow()Landroid/view/Window;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v22

    new-instance v23, Lcom/android/internal/app/ResolverActivity$5;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/app/ResolverActivity$5;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    goto/16 :goto_0

    .end local v11    # "iconInfo":Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    .end local v12    # "iconView":Landroid/widget/ImageView;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mTitlePanelDefault:Landroid/view/View;

    move-object/from16 v22, v0

    if-eqz v22, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getOtherProfile()Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-result-object v22

    if-eqz v22, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity;->mTitlePanelDefault:Landroid/view/View;

    move-object/from16 v22, v0

    const/16 v23, 0x8

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    .restart local v7    # "buttonLayout":Landroid/view/ViewGroup;
    .restart local v11    # "iconInfo":Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    .restart local v12    # "iconView":Landroid/widget/ImageView;
    :cond_1c
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/app/ResolverActivity;->mAlwaysUseOption:Z

    goto/16 :goto_7

    .end local v7    # "buttonLayout":Landroid/view/ViewGroup;
    .restart local v8    # "checkedPos":I
    :cond_1d
    const/4 v10, 0x0

    goto/16 :goto_8
.end method

.method protected onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;[Landroid/content/Intent;Ljava/util/List;Z)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "title"    # Ljava/lang/CharSequence;
    .param p4, "initialIntents"    # [Landroid/content/Intent;
    .param p6, "alwaysUseOption"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/content/Intent;",
            "Ljava/lang/CharSequence;",
            "[",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p5, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/app/ResolverActivity;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;I[Landroid/content/Intent;Ljava/util/List;Z)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPickOptionRequest:Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPickOptionRequest:Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;->cancel()V

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mSimpleSharing:Lcom/samsung/android/share/SShareSimpleSharing;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mSimpleSharing:Lcom/samsung/android/share/SShareSimpleSharing;

    invoke-virtual {v0}, Lcom/samsung/android/share/SShareSimpleSharing;->unregisterRecentContactsReceiver()V

    :cond_0
    return-void
.end method

.method onPrepareAdapterView(Landroid/widget/AbsListView;Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;Z)V
    .locals 6
    .param p1, "adapterView"    # Landroid/widget/AbsListView;
    .param p2, "adapter"    # Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;
    .param p3, "alwaysUseOption"    # Z

    .prologue
    const/4 v4, 0x1

    iget-boolean v3, p0, Lcom/android/internal/app/ResolverActivity;->mSupportPageMode:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->buildUpPagerAdapter()V

    invoke-virtual {p2}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getCount()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/internal/app/ResolverActivity;->preparePageView(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->hasFilteredItem()Z

    move-result v2

    .local v2, "useHeader":Z
    instance-of v3, p1, Landroid/widget/ListView;

    if-eqz v3, :cond_2

    move-object v3, p1

    check-cast v3, Landroid/widget/ListView;

    move-object v0, v3

    .local v0, "listView":Landroid/widget/ListView;
    :goto_1
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {p1, v3}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v1, Lcom/android/internal/app/ResolverActivity$ItemClickListener;

    invoke-direct {v1, p0}, Lcom/android/internal/app/ResolverActivity$ItemClickListener;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    .local v1, "listener":Lcom/android/internal/app/ResolverActivity$ItemClickListener;
    invoke-virtual {p1, v1}, Landroid/widget/AbsListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {p1, v1}, Landroid/widget/AbsListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    iget-boolean v3, p0, Lcom/android/internal/app/ResolverActivity;->mSupportGridResolver:Z

    if-eqz v3, :cond_3

    if-eqz p3, :cond_0

    iget-boolean v3, p0, Lcom/android/internal/app/ResolverActivity;->mSupportButtons:Z

    if-eqz v3, :cond_0

    invoke-virtual {p1, v4}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    goto :goto_0

    .end local v0    # "listView":Landroid/widget/ListView;
    .end local v1    # "listener":Lcom/android/internal/app/ResolverActivity$ItemClickListener;
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .restart local v0    # "listView":Landroid/widget/ListView;
    .restart local v1    # "listener":Lcom/android/internal/app/ResolverActivity$ItemClickListener;
    :cond_3
    if-eqz p3, :cond_4

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setChoiceMode(I)V

    :cond_4
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x10900e4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected onRestart()V
    .locals 3

    .prologue
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->handlePackagesChanged()V

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->bindProfileView()V

    :cond_1
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    iget-boolean v3, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysUseOption:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/internal/app/ResolverActivity;->mSupportButtons:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mAdapterView:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getCheckedItemPosition()I

    move-result v0

    .local v0, "checkedPos":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    move v1, v2

    .local v1, "hasValidSelection":Z
    :goto_0
    iput v0, p0, Lcom/android/internal/app/ResolverActivity;->mLastSelected:I

    invoke-direct {p0, v1, v0, v2}, Lcom/android/internal/app/ResolverActivity;->setAlwaysButtonEnabled(ZIZ)V

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mOnceButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mAdapterView:Landroid/widget/AbsListView;

    invoke-virtual {v2, v0}, Landroid/widget/AbsListView;->setSelection(I)V

    .end local v0    # "checkedPos":I
    .end local v1    # "hasValidSelection":Z
    :cond_0
    return-void

    .restart local v0    # "checkedPos":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mSimpleSharing:Lcom/samsung/android/share/SShareSimpleSharing;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mSimpleSharing:Lcom/samsung/android/share/SShareSimpleSharing;

    invoke-virtual {v0}, Lcom/samsung/android/share/SShareSimpleSharing;->registerRecentContactsReceiver()V

    :cond_0
    return-void
.end method

.method onSetupVoiceInteraction()V
    .locals 0

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->sendVoiceChoicesIfNeeded()V

    return-void
.end method

.method protected onStop()V
    .locals 4

    .prologue
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    iget-boolean v2, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v2}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const/high16 v3, 0x10000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isVoiceInteraction()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isChangingConfigurations()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .local v0, "context":Landroid/content/Context;
    iget v2, p0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    const/16 v3, 0x3e9

    if-ne v2, v3, :cond_2

    const-string v2, "keyguard"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .local v1, "km":Landroid/app/KeyguardManager;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "ResolverActivity"

    const-string v3, "we don\'t finish resolver for this exceptional case"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "km":Landroid/app/KeyguardManager;
    :cond_1
    :goto_0
    return-void

    .restart local v0    # "context":Landroid/content/Context;
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    goto :goto_0
.end method

.method protected onTargetSelected(Lcom/android/internal/app/ResolverActivity$TargetInfo;Z)Z
    .locals 44
    .param p1, "target"    # Lcom/android/internal/app/ResolverActivity$TargetInfo;
    .param p2, "alwaysCheck"    # Z

    .prologue
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v40

    .local v40, "ri":Landroid/content/pm/ResolveInfo;
    if-eqz p1, :cond_2

    invoke-interface/range {p1 .. p1}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getResolvedIntent()Landroid/content/Intent;

    move-result-object v10

    .local v10, "intent":Landroid/content/Intent;
    :goto_0
    if-eqz v10, :cond_f

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/app/ResolverActivity;->mAlwaysUseOption:Z

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->hasFilteredItem()Z

    move-result v3

    if-eqz v3, :cond_f

    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    iget-object v3, v3, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    if-eqz v3, :cond_f

    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .local v4, "filter":Landroid/content/IntentFilter;
    invoke-virtual {v10}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v19

    .local v19, "action":Ljava/lang/String;
    if-eqz v19, :cond_1

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v10}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v21

    .local v21, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v21, :cond_3

    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v28

    .local v28, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .local v20, "cat":Ljava/lang/String;
    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    goto :goto_1

    .end local v4    # "filter":Landroid/content/IntentFilter;
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v19    # "action":Ljava/lang/String;
    .end local v20    # "cat":Ljava/lang/String;
    .end local v21    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v28    # "i$":Ljava/util/Iterator;
    :cond_2
    const/4 v10, 0x0

    goto :goto_0

    .restart local v4    # "filter":Landroid/content/IntentFilter;
    .restart local v10    # "intent":Landroid/content/Intent;
    .restart local v19    # "action":Ljava/lang/String;
    .restart local v21    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3
    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v4, v3}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    move-object/from16 v0, v40

    iget v3, v0, Landroid/content/pm/ResolveInfo;->match:I

    const/high16 v7, 0xfff0000

    and-int v20, v3, v7

    .local v20, "cat":I
    invoke-virtual {v10}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v23

    .local v23, "data":Landroid/net/Uri;
    const/high16 v3, 0x600000

    move/from16 v0, v20

    if-ne v0, v3, :cond_4

    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v31

    .local v31, "mimeType":Ljava/lang/String;
    if-eqz v31, :cond_4

    :try_start_0
    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v31    # "mimeType":Ljava/lang/String;
    :cond_4
    :goto_2
    if-eqz v23, :cond_b

    invoke-virtual/range {v23 .. v23}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_b

    const/high16 v3, 0x600000

    move/from16 v0, v20

    if-ne v0, v3, :cond_5

    const-string v3, "file"

    invoke-virtual/range {v23 .. v23}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string v3, "content"

    invoke-virtual/range {v23 .. v23}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    :cond_5
    invoke-virtual/range {v23 .. v23}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    move-object/from16 v0, v40

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v3}, Landroid/content/IntentFilter;->schemeSpecificPartsIterator()Ljava/util/Iterator;

    move-result-object v33

    .local v33, "pIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    if-eqz v33, :cond_7

    invoke-virtual/range {v23 .. v23}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v41

    .local v41, "ssp":Ljava/lang/String;
    :cond_6
    if-eqz v41, :cond_7

    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/os/PatternMatcher;

    .local v32, "p":Landroid/os/PatternMatcher;
    move-object/from16 v0, v32

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual/range {v32 .. v32}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v32 .. v32}, Landroid/os/PatternMatcher;->getType()I

    move-result v7

    invoke-virtual {v4, v3, v7}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .end local v32    # "p":Landroid/os/PatternMatcher;
    .end local v41    # "ssp":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, v40

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v3}, Landroid/content/IntentFilter;->authoritiesIterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "aIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    if-eqz v18, :cond_9

    :cond_8
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/IntentFilter$AuthorityEntry;

    .local v17, "a":Landroid/content/IntentFilter$AuthorityEntry;
    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter$AuthorityEntry;->match(Landroid/net/Uri;)I

    move-result v3

    if-ltz v3, :cond_8

    invoke-virtual/range {v17 .. v17}, Landroid/content/IntentFilter$AuthorityEntry;->getPort()I

    move-result v37

    .local v37, "port":I
    invoke-virtual/range {v17 .. v17}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v7

    if-ltz v37, :cond_d

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    :goto_3
    invoke-virtual {v4, v7, v3}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .end local v17    # "a":Landroid/content/IntentFilter$AuthorityEntry;
    .end local v37    # "port":I
    :cond_9
    move-object/from16 v0, v40

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v3}, Landroid/content/IntentFilter;->pathsIterator()Ljava/util/Iterator;

    move-result-object v33

    if-eqz v33, :cond_b

    invoke-virtual/range {v23 .. v23}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v35

    .local v35, "path":Ljava/lang/String;
    :cond_a
    if-eqz v35, :cond_b

    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/os/PatternMatcher;

    .restart local v32    # "p":Landroid/os/PatternMatcher;
    move-object/from16 v0, v32

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual/range {v32 .. v32}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v32 .. v32}, Landroid/os/PatternMatcher;->getType()I

    move-result v7

    invoke-virtual {v4, v3, v7}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    .end local v18    # "aIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    .end local v32    # "p":Landroid/os/PatternMatcher;
    .end local v33    # "pIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    .end local v35    # "path":Ljava/lang/String;
    :cond_b
    if-eqz v4, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    iget-object v3, v3, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v16

    .local v16, "N":I
    move/from16 v0, v16

    new-array v6, v0, [Landroid/content/ComponentName;

    .local v6, "set":[Landroid/content/ComponentName;
    const/4 v5, 0x0

    .local v5, "bestMatch":I
    const/16 v27, 0x0

    .local v27, "i":I
    :goto_4
    move/from16 v0, v27

    move/from16 v1, v16

    if-ge v0, v1, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    iget-object v3, v3, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    move/from16 v0, v27

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v38

    .local v38, "r":Landroid/content/pm/ResolveInfo;
    new-instance v3, Landroid/content/ComponentName;

    move-object/from16 v0, v38

    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v38

    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v7, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v6, v27

    move-object/from16 v0, v38

    iget v3, v0, Landroid/content/pm/ResolveInfo;->match:I

    if-le v3, v5, :cond_c

    move-object/from16 v0, v38

    iget v5, v0, Landroid/content/pm/ResolveInfo;->match:I

    :cond_c
    add-int/lit8 v27, v27, 0x1

    goto :goto_4

    .end local v5    # "bestMatch":I
    .end local v6    # "set":[Landroid/content/ComponentName;
    .end local v16    # "N":I
    .end local v27    # "i":I
    .end local v38    # "r":Landroid/content/pm/ResolveInfo;
    .restart local v31    # "mimeType":Ljava/lang/String;
    :catch_0
    move-exception v25

    .local v25, "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    const-string v3, "ResolverActivity"

    move-object/from16 v0, v25

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v4, 0x0

    goto/16 :goto_2

    .end local v25    # "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    .end local v31    # "mimeType":Ljava/lang/String;
    .restart local v17    # "a":Landroid/content/IntentFilter$AuthorityEntry;
    .restart local v18    # "aIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    .restart local v33    # "pIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    .restart local v37    # "port":I
    :cond_d
    const/4 v3, 0x0

    goto/16 :goto_3

    .end local v17    # "a":Landroid/content/IntentFilter$AuthorityEntry;
    .end local v18    # "aIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    .end local v33    # "pIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    .end local v37    # "port":I
    .restart local v5    # "bestMatch":I
    .restart local v6    # "set":[Landroid/content/ComponentName;
    .restart local v16    # "N":I
    .restart local v27    # "i":I
    :cond_e
    move-object/from16 v0, v40

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .local v8, "riuserId":I
    if-eqz p2, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getUserId()I

    move-result v42

    .local v42, "userId":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v36

    .local v36, "pm":Landroid/content/pm/PackageManager;
    invoke-static/range {v42 .. v42}, Landroid/os/PersonaManager;->isBBCContainer(I)Z

    move-result v3

    if-eqz v3, :cond_12

    const-string v3, "ResolverActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "KEA App is selected for user : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v42

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " Doesn\'t add as a preferredActivity"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    move-object/from16 v0, v40

    iget-boolean v3, v0, Landroid/content/pm/ResolveInfo;->handleAllWebDataURI:Z

    if-eqz v3, :cond_14

    move-object/from16 v0, v36

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getDefaultBrowserPackageName(I)Ljava/lang/String;

    move-result-object v34

    .local v34, "packageName":Ljava/lang/String;
    invoke-static/range {v34 .. v34}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_f

    move-object/from16 v0, v40

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v36

    move/from16 v1, v42

    invoke-virtual {v0, v3, v1}, Landroid/content/pm/PackageManager;->setDefaultBrowserPackageName(Ljava/lang/String;I)Z

    .end local v4    # "filter":Landroid/content/IntentFilter;
    .end local v5    # "bestMatch":I
    .end local v6    # "set":[Landroid/content/ComponentName;
    .end local v8    # "riuserId":I
    .end local v16    # "N":I
    .end local v19    # "action":Ljava/lang/String;
    .end local v20    # "cat":I
    .end local v21    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v23    # "data":Landroid/net/Uri;
    .end local v27    # "i":I
    .end local v34    # "packageName":Ljava/lang/String;
    .end local v36    # "pm":Landroid/content/pm/PackageManager;
    .end local v42    # "userId":I
    :cond_f
    :goto_6
    if-eqz p1, :cond_1d

    if-eqz p2, :cond_10

    if-eqz v10, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity;->mSShareCommon:Lcom/samsung/android/share/SShareCommon;

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/internal/app/ResolverActivity;->mSafeForwardingMode:Z

    move-object/from16 v0, p0

    invoke-virtual {v3, v0, v10, v7}, Lcom/samsung/android/share/SShareCommon;->setResolverGuideIntent(Landroid/app/Activity;Landroid/content/Intent;Z)V

    :cond_10
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/app/ResolverActivity;->mSupportLogging:Z

    if-eqz v3, :cond_11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity;->mSShareLogging:Lcom/samsung/android/share/SShareLogging;

    if-eqz v3, :cond_11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity;->mSShareLogging:Lcom/samsung/android/share/SShareLogging;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/app/ResolverActivity;->mSShareLogging:Lcom/samsung/android/share/SShareLogging;

    const-string v7, "APPP"

    move-object/from16 v0, v40

    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v7, v9}, Lcom/samsung/android/share/SShareLogging;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->isForKnoxNFC()Z

    move-result v3

    if-eqz v3, :cond_1c

    move-object/from16 v0, v40

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v42

    .restart local v42    # "userId":I
    const-string v3, "ResolverActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Launch NFC app "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " for container "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v42

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    new-instance v7, Landroid/os/UserHandle;

    move/from16 v0, v42

    invoke-direct {v7, v0}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-interface {v0, v1, v3, v7}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->startAsUser(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/UserHandle;)Z

    const/4 v3, 0x1

    .end local v42    # "userId":I
    :goto_7
    return v3

    .restart local v4    # "filter":Landroid/content/IntentFilter;
    .restart local v5    # "bestMatch":I
    .restart local v6    # "set":[Landroid/content/ComponentName;
    .restart local v8    # "riuserId":I
    .restart local v16    # "N":I
    .restart local v19    # "action":Ljava/lang/String;
    .restart local v20    # "cat":I
    .restart local v21    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v23    # "data":Landroid/net/Uri;
    .restart local v27    # "i":I
    .restart local v36    # "pm":Landroid/content/pm/PackageManager;
    .restart local v42    # "userId":I
    :cond_12
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->isForKnoxNFC()Z

    move-result v3

    if-eqz v3, :cond_13

    const-string v3, "ResolverActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Add NFC default pref "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "for user "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual/range {v3 .. v8}, Landroid/content/pm/PackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;I)V

    goto/16 :goto_5

    :cond_13
    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    move-object/from16 v0, v36

    invoke-virtual {v0, v4, v5, v6, v3}, Landroid/content/pm/PackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    goto/16 :goto_5

    :cond_14
    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v22

    .local v22, "cn":Landroid/content/ComponentName;
    invoke-virtual/range {v22 .. v22}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v34

    .restart local v34    # "packageName":Ljava/lang/String;
    if-eqz v23, :cond_16

    invoke-virtual/range {v23 .. v23}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v24

    .local v24, "dataScheme":Ljava/lang/String;
    :goto_8
    if-eqz v24, :cond_17

    const-string v3, "http"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    const-string v3, "https"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    :cond_15
    const/16 v29, 0x1

    .local v29, "isHttpOrHttps":Z
    :goto_9
    if-eqz v19, :cond_18

    const-string v3, "android.intent.action.VIEW"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    const/16 v30, 0x1

    .local v30, "isViewAction":Z
    :goto_a
    if-eqz v21, :cond_19

    const-string v3, "android.intent.category.BROWSABLE"

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    const/16 v26, 0x1

    .local v26, "hasCategoryBrowsable":Z
    :goto_b
    if-eqz v29, :cond_f

    if-eqz v30, :cond_f

    if-eqz v26, :cond_f

    const/4 v3, 0x2

    move-object/from16 v0, v36

    move-object/from16 v1, v34

    move/from16 v2, v42

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/pm/PackageManager;->updateIntentVerificationStatus(Ljava/lang/String;II)Z

    goto/16 :goto_6

    .end local v24    # "dataScheme":Ljava/lang/String;
    .end local v26    # "hasCategoryBrowsable":Z
    .end local v29    # "isHttpOrHttps":Z
    .end local v30    # "isViewAction":Z
    :cond_16
    const/16 v24, 0x0

    goto :goto_8

    .restart local v24    # "dataScheme":Ljava/lang/String;
    :cond_17
    const/16 v29, 0x0

    goto :goto_9

    .restart local v29    # "isHttpOrHttps":Z
    :cond_18
    const/16 v30, 0x0

    goto :goto_a

    .restart local v30    # "isViewAction":Z
    :cond_19
    const/16 v26, 0x0

    goto :goto_b

    .end local v22    # "cn":Landroid/content/ComponentName;
    .end local v24    # "dataScheme":Ljava/lang/String;
    .end local v29    # "isHttpOrHttps":Z
    .end local v30    # "isViewAction":Z
    .end local v34    # "packageName":Ljava/lang/String;
    .end local v36    # "pm":Landroid/content/pm/PackageManager;
    .end local v42    # "userId":I
    :cond_1a
    :try_start_1
    const-string v3, "ResolverActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Set last activity pref for user "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->isForKnoxNFC()Z

    move-result v3

    if-eqz v3, :cond_1b

    const-string v3, "ResolverActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Attach user list with only one element "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v43, Ljava/util/ArrayList;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Integer;

    const/4 v7, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v3, v7

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, v43

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .local v43, "userList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v3, "com.samsung.sec.knox.EXTRA_KNOX_ARRAY"

    move-object/from16 v0, v43

    invoke-virtual {v10, v3, v0}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .end local v43    # "userList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_1b
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v10, v3}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v11

    const/high16 v12, 0x10000

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v15

    move-object v13, v4

    move v14, v5

    invoke-interface/range {v9 .. v15}, Landroid/content/pm/IPackageManager;->setLastChosenActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/IntentFilter;ILandroid/content/ComponentName;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_6

    :catch_1
    move-exception v39

    .local v39, "re":Landroid/os/RemoteException;
    const-string v3, "ResolverActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error calling setLastChosenActivity\n"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v39

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .end local v4    # "filter":Landroid/content/IntentFilter;
    .end local v5    # "bestMatch":I
    .end local v6    # "set":[Landroid/content/ComponentName;
    .end local v8    # "riuserId":I
    .end local v16    # "N":I
    .end local v19    # "action":Ljava/lang/String;
    .end local v20    # "cat":I
    .end local v21    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v23    # "data":Landroid/net/Uri;
    .end local v27    # "i":I
    .end local v39    # "re":Landroid/os/RemoteException;
    :cond_1c
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/app/ResolverActivity;->safelyStartActivtyAfterAnimation(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V

    :cond_1d
    const/4 v3, 0x1

    goto/16 :goto_7
.end method

.method optionForChooserTarget(Lcom/android/internal/app/ResolverActivity$TargetInfo;I)Landroid/app/VoiceInteractor$PickOptionRequest$Option;
    .locals 2
    .param p1, "target"    # Lcom/android/internal/app/ResolverActivity$TargetInfo;
    .param p2, "index"    # I

    .prologue
    new-instance v0, Landroid/app/VoiceInteractor$PickOptionRequest$Option;

    invoke-interface {p1}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/app/VoiceInteractor$PickOptionRequest$Option;-><init>(Ljava/lang/CharSequence;I)V

    return-object v0
.end method

.method preparePageView(I)V
    .locals 7
    .param p1, "count"    # I

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    iput p1, p0, Lcom/android/internal/app/ResolverActivity;->mTotalCount:I

    const v2, 0x10204da

    invoke-virtual {p0, v2}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/ViewPager;

    iput-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mViewPager:Lcom/android/internal/widget/ViewPager;

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mViewPager:Lcom/android/internal/widget/ViewPager;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const v2, 0x1020365

    invoke-virtual {p0, v2}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/ResolverDrawerLayout;

    .local v1, "rdl":Lcom/android/internal/widget/ResolverDrawerLayout;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/ResolverDrawerLayout;->forceDisallowInterceptTouchEvent(Z)V

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mViewPager:Lcom/android/internal/widget/ViewPager;

    invoke-virtual {v2}, Lcom/android/internal/widget/ViewPager;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    iget v2, p0, Lcom/android/internal/app/ResolverActivity;->mMaxColumns:I

    if-le p1, v2, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050214

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-boolean v2, p0, Lcom/android/internal/app/ResolverActivity;->mSupportSimpleSharing:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysUseOption:Z

    if-eqz v2, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050216

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mViewPager:Lcom/android/internal/widget/ViewPager;

    invoke-virtual {v2, v0}, Lcom/android/internal/widget/ViewPager;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mPagerAdapter:Lcom/android/internal/app/ResolverActivity$ResolverPagerAdapter;

    if-nez v2, :cond_3

    new-instance v2, Lcom/android/internal/app/ResolverActivity$ResolverPagerAdapter;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/internal/app/ResolverActivity$ResolverPagerAdapter;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mPagerAdapter:Lcom/android/internal/app/ResolverActivity$ResolverPagerAdapter;

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mViewPager:Lcom/android/internal/widget/ViewPager;

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mPagerAdapter:Lcom/android/internal/app/ResolverActivity$ResolverPagerAdapter;

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/ViewPager;->setAdapter(Lcom/android/internal/widget/PagerAdapter;)V

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mViewPager:Lcom/android/internal/widget/ViewPager;

    new-instance v3, Lcom/android/internal/app/ResolverActivity$ResolverPageChangeListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/internal/app/ResolverActivity$ResolverPageChangeListener;-><init>(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverActivity$1;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/ViewPager;->setOnPageChangeListener(Lcom/android/internal/widget/ViewPager$OnPageChangeListener;)V

    :cond_3
    const v2, 0x10204db

    invoke-virtual {p0, v2}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mViewPagerNavi:Landroid/widget/LinearLayout;

    const v2, 0x10204dc

    invoke-virtual {p0, v2}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mViewPagerBottomSpacing:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/android/internal/app/ResolverActivity;->mPageItemNum:I

    if-le p1, v2, :cond_5

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->initViewPagerNavi()V

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mViewPagerNavi:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mViewPagerBottomSpacing:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050215

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mViewPagerNavi:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mViewPagerBottomSpacing:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method safelyStartActivity(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V
    .locals 6
    .param p1, "cti"    # Lcom/android/internal/app/ResolverActivity$TargetInfo;

    .prologue
    const/4 v5, 0x0

    iget v3, p0, Lcom/android/internal/app/ResolverActivity;->mProfileSwitchMessageId:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ResolveInfo;->targetUserId:I

    invoke-static {v3}, Landroid/os/PersonaManager;->isKnoxId(I)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    iget v3, p0, Lcom/android/internal/app/ResolverActivity;->mProfileSwitchMessageId:I

    invoke-virtual {p0, v3}, Lcom/android/internal/app/ResolverActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    :cond_1
    iget-boolean v3, p0, Lcom/android/internal/app/ResolverActivity;->mSafeForwardingMode:Z

    if-nez v3, :cond_3

    invoke-interface {p1, p0, v5}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->start(Landroid/app/Activity;Landroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity;->onActivityStarted(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    const/4 v3, 0x0

    const/16 v4, -0x2710

    :try_start_0
    invoke-interface {p1, p0, v3, v4}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->startAsCaller(Landroid/app/Activity;Landroid/os/Bundle;I)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity;->onActivityStarted(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/app/IActivityManager;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .local v2, "launchedFromPackage":Ljava/lang/String;
    :goto_1
    const-string v3, "ResolverActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to launch as uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", while running in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/app/ActivityThread;->currentProcessName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v2    # "launchedFromPackage":Ljava/lang/String;
    :catch_1
    move-exception v1

    .local v1, "e2":Landroid/os/RemoteException;
    const-string v2, "??"

    .restart local v2    # "launchedFromPackage":Ljava/lang/String;
    goto :goto_1
.end method

.method sendVoiceChoicesIfNeeded()V
    .locals 6

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isVoiceInteraction()Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getCount()I

    move-result v3

    new-array v2, v3, [Landroid/app/VoiceInteractor$PickOptionRequest$Option;

    .local v2, "options":[Landroid/app/VoiceInteractor$PickOptionRequest$Option;
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v0, v2

    .local v0, "N":I
    :goto_1
    if-ge v1, v0, :cond_1

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v3, v1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getItem(I)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v3

    invoke-virtual {p0, v3, v1}, Lcom/android/internal/app/ResolverActivity;->optionForChooserTarget(Lcom/android/internal/app/ResolverActivity$TargetInfo;I)Landroid/app/VoiceInteractor$PickOptionRequest$Option;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    new-instance v3, Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

    new-instance v4, Landroid/app/VoiceInteractor$Prompt;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/VoiceInteractor$Prompt;-><init>(Ljava/lang/CharSequence;)V

    const/4 v5, 0x0

    invoke-direct {v3, v4, v2, v5}, Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;-><init>(Landroid/app/VoiceInteractor$Prompt;[Landroid/app/VoiceInteractor$PickOptionRequest$Option;Landroid/os/Bundle;)V

    iput-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mPickOptionRequest:Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getVoiceInteractor()Landroid/app/VoiceInteractor;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mPickOptionRequest:Lcom/android/internal/app/ResolverActivity$PickTargetOptionRequest;

    invoke-virtual {v3, v4}, Landroid/app/VoiceInteractor;->submitRequest(Landroid/app/VoiceInteractor$Request;)Z

    goto :goto_0
.end method

.method protected final setAdditionalTargets([Landroid/content/Intent;)V
    .locals 5
    .param p1, "intents"    # [Landroid/content/Intent;

    .prologue
    if-eqz p1, :cond_0

    move-object v0, p1

    .local v0, "arr$":[Landroid/content/Intent;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .local v2, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mIntents:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "arr$":[Landroid/content/Intent;
    .end local v1    # "i$":I
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "len$":I
    :cond_0
    return-void
.end method

.method public setDropComponent(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "comp"    # Landroid/content/ComponentName;

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mDropComponents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setSafeForwardingMode(Z)V
    .locals 0
    .param p1, "safeForwarding"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/app/ResolverActivity;->mSafeForwardingMode:Z

    return-void
.end method

.method shouldAutoLaunchSingleChoice(Lcom/android/internal/app/ResolverActivity$TargetInfo;)Z
    .locals 1
    .param p1, "target"    # Lcom/android/internal/app/ResolverActivity$TargetInfo;

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method shouldGetActivityMetadata()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public shouldShowSimpleSharing()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mSupportSimpleSharing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mSimpleSharing:Lcom/samsung/android/share/SShareSimpleSharing;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mSimpleSharing:Lcom/samsung/android/share/SShareSimpleSharing;

    invoke-virtual {v0}, Lcom/samsung/android/share/SShareSimpleSharing;->isRemoteShareServiceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method showAppDetails(Landroid/content/pm/ResolveInfo;)V
    .locals 5
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;

    .prologue
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "package"

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x80000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .local v0, "in":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method startSelected(IZZ)V
    .locals 8
    .param p1, "which"    # I
    .param p2, "always"    # Z
    .param p3, "filtered"    # Z

    .prologue
    const/4 v7, 0x1

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v2, p1, p3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->resolveInfoForPosition(IZ)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .local v0, "ri":Landroid/content/pm/ResolveInfo;
    iget-boolean v2, p0, Lcom/android/internal/app/ResolverActivity;->mResolvingHome:Z

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->hasManagedProfile()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, v0}, Lcom/android/internal/app/ResolverActivity;->supportsManagedProfiles(Landroid/content/pm/ResolveInfo;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10404c8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v2, p1, p3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->targetInfoForPosition(IZ)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v1

    .local v1, "target":Lcom/android/internal/app/ResolverActivity$TargetInfo;
    invoke-virtual {p0, v1, p2}, Lcom/android/internal/app/ResolverActivity;->onTargetSelected(Lcom/android/internal/app/ResolverActivity$TargetInfo;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    goto :goto_0
.end method

.method public updatePagerAdapter(I)V
    .locals 1
    .param p1, "count"    # I

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mSupportPageMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mViewPager:Lcom/android/internal/widget/ViewPager;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->clearPagerAdapter()V

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->buildUpPagerAdapter()V

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity;->preparePageView(I)V

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPagerAdapter:Lcom/android/internal/app/ResolverActivity$ResolverPagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$ResolverPagerAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
