.class public Landroid/content/res/Resources;
.super Ljava/lang/Object;
.source "Resources.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/Resources$ThemeKey;,
        Landroid/content/res/Resources$Theme;,
        Landroid/content/res/Resources$NotFoundException;,
        Landroid/content/res/Resources$ProcessPriorityThreadFactory;,
        Landroid/content/res/Resources$RCCallable;
    }
.end annotation


# static fields
.field private static final CACHE_NOT_THEMED:Ljava/lang/String; = ""

.field private static final CACHE_NULL_THEME:Ljava/lang/String; = "null_theme"

.field private static CONCURRENCY:I = 0x0

.field private static final DEBUG_CONFIG:Z = false

.field private static final DEBUG_LOAD:Z = false

.field private static final DEBUG_RC:Z = false

.field private static final ID_OTHER:I = 0x1000004

.field private static final LAYOUT_DIR_CONFIG:I

.field private static final NULL_THEME_KEY:Ljava/lang/String; = "[2131623959, 2131623959, 2131623959, 2131623959]"

.field static final TAG:Ljava/lang/String; = "Resources"

.field private static final THREAD_PRIORITY:I = -0xb

.field private static final TRACE_FOR_MISS_PRELOAD:Z = false

.field private static final TRACE_FOR_PRELOAD:Z = false

.field private static final TYPE_APP_NAME:Ljava/lang/String; = "AppName"

.field private static final TYPE_DEFAULT_VALUE:Ljava/lang/String; = "Def="

.field private static final TYPE_FORMATTED_STRING:Ljava/lang/String; = "Formatted"

.field private static final TYPE_INT_ARRAY_POSITION:Ljava/lang/String; = "IntPoz="

.field private static final TYPE_MENU_ITEM_TITLE:Ljava/lang/String; = "Menu"

.field private static final TYPE_PREFERENCES:Ljava/lang/String; = "Pref"

.field private static final TYPE_QUANTITY:Ljava/lang/String; = "Quantity="

.field private static final TYPE_QUANTITY_ID_OTHER:Ljava/lang/String; = "QuantityIdOther="

.field private static final TYPE_STRING_ARRAY_POSITION:Ljava/lang/String; = "StringPoz="

.field private static final TYPE_TEXT:Ljava/lang/String; = "Text"

.field private static final TYPE_TEXT_ARRAY_POSITION:Ljava/lang/String; = "TextPoz="

.field private static date:Ljava/util/Date;

.field static mScreenResources:Landroid/content/res/Resources;

.field private static mStartStoringRL:I

.field static mSystem:Landroid/content/res/Resources;

.field static mSystems:Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList",
            "<",
            "Landroid/content/res/Resources;",
            ">;"
        }
    .end annotation
.end field

.field private static final mTAG:Ljava/lang/String;

.field private static notificationStringsOriginMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/CharSequence;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sLoadDensityDpi:I

.field private static sPreloaded:Z

.field private static final sPreloadedColorDrawables:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field private static final sPreloadedColorStateLists:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/content/res/ConstantState",
            "<",
            "Landroid/content/res/ColorStateList;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sPreloadedDensity:I

.field private static final sPreloadedDrawables:[Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSync:Ljava/lang/Object;


# instance fields
.field private appAndWidgetStringNamesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/CharSequence;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;>;"
        }
    .end annotation
.end field

.field private ecs:Ljava/util/concurrent/ExecutorService;

.field private volatile file:Ljava/io/File;

.field private final mALDC:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/util/concurrent/Future",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final mAccessLock:Ljava/lang/Object;

.field private final mAnimatorCache:Landroid/content/res/ConfigurationBoundResourceCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/res/ConfigurationBoundResourceCache",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field public mAppIconResId:I

.field final mAssets:Landroid/content/res/AssetManager;

.field private final mCachedXmlBlockIds:[I

.field private final mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

.field private final mColorDrawableCache:Landroid/content/res/DrawableCache;

.field private final mColorStateListCache:Landroid/content/res/ConfigurationBoundResourceCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/res/ConfigurationBoundResourceCache",
            "<",
            "Landroid/content/res/ColorStateList;",
            ">;"
        }
    .end annotation
.end field

.field private mCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

.field private final mConfiguration:Landroid/content/res/Configuration;

.field private final mDrawableCache:Landroid/content/res/DrawableCache;

.field private mLastCachedXmlBlockIndex:I

.field final mMetrics:Landroid/util/DisplayMetrics;

.field public mPackageName:Ljava/lang/String;

.field private mPluralRule:Llibcore/icu/NativePluralRules;

.field private mPreloading:Z

.field public mResPackageName:Ljava/lang/String;

.field public mResUserId:I

.field private final mStateListAnimatorCache:Landroid/content/res/ConfigurationBoundResourceCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/res/ConfigurationBoundResourceCache",
            "<",
            "Landroid/animation/StateListAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpConfig:Landroid/content/res/Configuration;

.field private mTmpValue:Landroid/util/TypedValue;

.field final mTypedArrayPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool",
            "<",
            "Landroid/content/res/TypedArray;",
            ">;"
        }
    .end annotation
.end field

.field private mTypedValue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/TypedValue;",
            ">;"
        }
    .end annotation
.end field

.field public mUserId:I

.field private refThemeKey:Ljava/lang/String;

.field private resourcesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/CharSequence;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private resourcesMapType:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 179
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    sput-object v1, Landroid/content/res/Resources;->date:Ljava/util/Date;

    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ResourceCaching "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/content/res/Resources;->date:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/content/res/Resources;->mTAG:Ljava/lang/String;

    .line 182
    sput v3, Landroid/content/res/Resources;->mStartStoringRL:I

    .line 183
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    sput v1, Landroid/content/res/Resources;->CONCURRENCY:I

    .line 196
    const/16 v1, 0x2000

    invoke-static {v1}, Landroid/content/pm/ActivityInfo;->activityInfoConfigToNative(I)I

    move-result v1

    sput v1, Landroid/content/res/Resources;->LAYOUT_DIR_CONFIG:I

    .line 201
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Landroid/content/res/Resources;->sSync:Ljava/lang/Object;

    .line 207
    new-instance v1, Landroid/util/LongSparseArray;

    invoke-direct {v1}, Landroid/util/LongSparseArray;-><init>()V

    sput-object v1, Landroid/content/res/Resources;->sPreloadedColorDrawables:Landroid/util/LongSparseArray;

    .line 210
    new-instance v1, Landroid/util/LongSparseArray;

    invoke-direct {v1}, Landroid/util/LongSparseArray;-><init>()V

    sput-object v1, Landroid/content/res/Resources;->sPreloadedColorStateLists:Landroid/util/LongSparseArray;

    .line 219
    sput-object v0, Landroid/content/res/Resources;->mSystem:Landroid/content/res/Resources;

    .line 222
    sput-object v0, Landroid/content/res/Resources;->mSystems:Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;

    .line 227
    sput-object v0, Landroid/content/res/Resources;->mScreenResources:Landroid/content/res/Resources;

    .line 231
    sput v3, Landroid/content/res/Resources;->sLoadDensityDpi:I

    .line 265
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/util/LongSparseArray;

    sput-object v1, Landroid/content/res/Resources;->sPreloadedDrawables:[Landroid/util/LongSparseArray;

    .line 266
    sget-object v1, Landroid/content/res/Resources;->sPreloadedDrawables:[Landroid/util/LongSparseArray;

    new-instance v2, Landroid/util/LongSparseArray;

    invoke-direct {v2}, Landroid/util/LongSparseArray;-><init>()V

    aput-object v2, v1, v3

    .line 267
    sget-object v1, Landroid/content/res/Resources;->sPreloadedDrawables:[Landroid/util/LongSparseArray;

    const/4 v2, 0x1

    new-instance v3, Landroid/util/LongSparseArray;

    invoke-direct {v3}, Landroid/util/LongSparseArray;-><init>()V

    aput-object v3, v1, v2

    .line 337
    sget-boolean v1, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v1, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :cond_0
    sput-object v0, Landroid/content/res/Resources;->notificationStringsOriginMap:Ljava/util/Map;

    return-void
.end method

.method constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 4536
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    iput-object v1, p0, Landroid/content/res/Resources;->refThemeKey:Ljava/lang/String;

    .line 185
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mALDC:Landroid/util/ArrayMap;

    .line 186
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mTypedValue:Ljava/util/List;

    .line 187
    iput-object v1, p0, Landroid/content/res/Resources;->file:Ljava/io/File;

    .line 216
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/4 v2, 0x5

    invoke-direct {v0, v2}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    iput-object v0, p0, Landroid/content/res/Resources;->mTypedArrayPool:Landroid/util/Pools$SynchronizedPool;

    .line 238
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    .line 239
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mTmpConfig:Landroid/content/res/Configuration;

    .line 240
    new-instance v0, Landroid/content/res/DrawableCache;

    invoke-direct {v0, p0}, Landroid/content/res/DrawableCache;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Landroid/content/res/Resources;->mDrawableCache:Landroid/content/res/DrawableCache;

    .line 241
    new-instance v0, Landroid/content/res/DrawableCache;

    invoke-direct {v0, p0}, Landroid/content/res/DrawableCache;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Landroid/content/res/Resources;->mColorDrawableCache:Landroid/content/res/DrawableCache;

    .line 242
    new-instance v0, Landroid/content/res/ConfigurationBoundResourceCache;

    invoke-direct {v0, p0}, Landroid/content/res/ConfigurationBoundResourceCache;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Landroid/content/res/Resources;->mColorStateListCache:Landroid/content/res/ConfigurationBoundResourceCache;

    .line 244
    new-instance v0, Landroid/content/res/ConfigurationBoundResourceCache;

    invoke-direct {v0, p0}, Landroid/content/res/ConfigurationBoundResourceCache;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Landroid/content/res/Resources;->mAnimatorCache:Landroid/content/res/ConfigurationBoundResourceCache;

    .line 246
    new-instance v0, Landroid/content/res/ConfigurationBoundResourceCache;

    invoke-direct {v0, p0}, Landroid/content/res/ConfigurationBoundResourceCache;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Landroid/content/res/Resources;->mStateListAnimatorCache:Landroid/content/res/ConfigurationBoundResourceCache;

    .line 249
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 252
    const/4 v0, -0x1

    iput v0, p0, Landroid/content/res/Resources;->mLastCachedXmlBlockIndex:I

    .line 253
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Landroid/content/res/Resources;->mCachedXmlBlockIds:[I

    .line 254
    new-array v0, v4, [Landroid/content/res/XmlBlock;

    iput-object v0, p0, Landroid/content/res/Resources;->mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

    .line 257
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    .line 259
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    .line 262
    sget-object v0, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    iput-object v0, p0, Landroid/content/res/Resources;->mCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    .line 282
    sget-boolean v0, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_0
    iput-object v0, p0, Landroid/content/res/Resources;->resourcesMap:Ljava/util/Map;

    .line 294
    sget-boolean v0, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_1
    iput-object v0, p0, Landroid/content/res/Resources;->resourcesMapType:Ljava/util/Map;

    .line 320
    sget-boolean v0, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_2
    iput-object v0, p0, Landroid/content/res/Resources;->appAndWidgetStringNamesMap:Ljava/util/Map;

    .line 1083
    iput-object v1, p0, Landroid/content/res/Resources;->mPackageName:Ljava/lang/String;

    .line 1085
    iput-object v1, p0, Landroid/content/res/Resources;->mResPackageName:Ljava/lang/String;

    .line 1092
    iput v3, p0, Landroid/content/res/Resources;->mAppIconResId:I

    .line 1094
    iput v3, p0, Landroid/content/res/Resources;->mUserId:I

    .line 4537
    invoke-static {}, Landroid/content/res/AssetManager;->getSystem()Landroid/content/res/AssetManager;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    .line 4541
    iget-object v0, p0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0}, Landroid/content/res/Configuration;->setToDefaults()V

    .line 4542
    iget-object v0, p0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 4543
    invoke-virtual {p0, v1, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 4544
    iget-object v0, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v0}, Landroid/content/res/AssetManager;->ensureStringBlocks()V

    .line 4545
    return-void

    :cond_0
    move-object v0, v1

    .line 282
    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 294
    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 320
    goto :goto_2

    .line 253
    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "assets"    # Landroid/content/res/AssetManager;
    .param p2, "metrics"    # Landroid/util/DisplayMetrics;
    .param p3, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 1366
    sget-object v0, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    .line 1367
    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V
    .locals 5
    .param p1, "assets"    # Landroid/content/res/AssetManager;
    .param p2, "metrics"    # Landroid/util/DisplayMetrics;
    .param p3, "config"    # Landroid/content/res/Configuration;
    .param p4, "compatInfo"    # Landroid/content/res/CompatibilityInfo;

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 1381
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    iput-object v1, p0, Landroid/content/res/Resources;->refThemeKey:Ljava/lang/String;

    .line 185
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mALDC:Landroid/util/ArrayMap;

    .line 186
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mTypedValue:Ljava/util/List;

    .line 187
    iput-object v1, p0, Landroid/content/res/Resources;->file:Ljava/io/File;

    .line 216
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/4 v2, 0x5

    invoke-direct {v0, v2}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    iput-object v0, p0, Landroid/content/res/Resources;->mTypedArrayPool:Landroid/util/Pools$SynchronizedPool;

    .line 238
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    .line 239
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mTmpConfig:Landroid/content/res/Configuration;

    .line 240
    new-instance v0, Landroid/content/res/DrawableCache;

    invoke-direct {v0, p0}, Landroid/content/res/DrawableCache;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Landroid/content/res/Resources;->mDrawableCache:Landroid/content/res/DrawableCache;

    .line 241
    new-instance v0, Landroid/content/res/DrawableCache;

    invoke-direct {v0, p0}, Landroid/content/res/DrawableCache;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Landroid/content/res/Resources;->mColorDrawableCache:Landroid/content/res/DrawableCache;

    .line 242
    new-instance v0, Landroid/content/res/ConfigurationBoundResourceCache;

    invoke-direct {v0, p0}, Landroid/content/res/ConfigurationBoundResourceCache;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Landroid/content/res/Resources;->mColorStateListCache:Landroid/content/res/ConfigurationBoundResourceCache;

    .line 244
    new-instance v0, Landroid/content/res/ConfigurationBoundResourceCache;

    invoke-direct {v0, p0}, Landroid/content/res/ConfigurationBoundResourceCache;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Landroid/content/res/Resources;->mAnimatorCache:Landroid/content/res/ConfigurationBoundResourceCache;

    .line 246
    new-instance v0, Landroid/content/res/ConfigurationBoundResourceCache;

    invoke-direct {v0, p0}, Landroid/content/res/ConfigurationBoundResourceCache;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Landroid/content/res/Resources;->mStateListAnimatorCache:Landroid/content/res/ConfigurationBoundResourceCache;

    .line 249
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 252
    const/4 v0, -0x1

    iput v0, p0, Landroid/content/res/Resources;->mLastCachedXmlBlockIndex:I

    .line 253
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Landroid/content/res/Resources;->mCachedXmlBlockIds:[I

    .line 254
    new-array v0, v4, [Landroid/content/res/XmlBlock;

    iput-object v0, p0, Landroid/content/res/Resources;->mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

    .line 257
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    .line 259
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    .line 262
    sget-object v0, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    iput-object v0, p0, Landroid/content/res/Resources;->mCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    .line 282
    sget-boolean v0, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_0
    iput-object v0, p0, Landroid/content/res/Resources;->resourcesMap:Ljava/util/Map;

    .line 294
    sget-boolean v0, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_1
    iput-object v0, p0, Landroid/content/res/Resources;->resourcesMapType:Ljava/util/Map;

    .line 320
    sget-boolean v0, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_2
    iput-object v0, p0, Landroid/content/res/Resources;->appAndWidgetStringNamesMap:Ljava/util/Map;

    .line 1083
    iput-object v1, p0, Landroid/content/res/Resources;->mPackageName:Ljava/lang/String;

    .line 1085
    iput-object v1, p0, Landroid/content/res/Resources;->mResPackageName:Ljava/lang/String;

    .line 1092
    iput v3, p0, Landroid/content/res/Resources;->mAppIconResId:I

    .line 1094
    iput v3, p0, Landroid/content/res/Resources;->mUserId:I

    .line 1382
    iput-object p1, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    .line 1383
    iget-object v0, p0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 1384
    if-eqz p4, :cond_0

    .line 1385
    iput-object p4, p0, Landroid/content/res/Resources;->mCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    .line 1387
    :cond_0
    invoke-virtual {p0, p3, p2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 1388
    invoke-virtual {p1}, Landroid/content/res/AssetManager;->ensureStringBlocks()V

    .line 1389
    return-void

    :cond_1
    move-object v0, v1

    .line 282
    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 294
    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 320
    goto :goto_2

    .line 253
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private varargs addFormattedString(ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 10
    .param p1, "id"    # I
    .param p2, "formattedString"    # Ljava/lang/String;
    .param p3, "formatArgs"    # [Ljava/lang/Object;

    .prologue
    .line 1059
    const-string v8, "Formatted"

    invoke-direct {p0, p2, p1, v8}, Landroid/content/res/Resources;->addToMap(Ljava/lang/CharSequence;ILjava/lang/String;)V

    .line 1061
    move-object v1, p3

    .local v1, "arr$":[Ljava/lang/Object;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    move v3, v2

    .end local v2    # "i$":I
    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v0, v1, v3

    .line 1062
    .local v0, "arg":Ljava/lang/Object;
    if-nez v0, :cond_1

    .line 1061
    .end local v3    # "i$":I
    :cond_0
    add-int/lit8 v2, v3, 0x1

    .restart local v2    # "i$":I
    move v3, v2

    .end local v2    # "i$":I
    .restart local v3    # "i$":I
    goto :goto_0

    .line 1066
    :cond_1
    iget-object v8, p0, Landroid/content/res/Resources;->resourcesMap:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1068
    .local v6, "resourceIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v6, :cond_0

    .line 1072
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local v3    # "i$":I
    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 1073
    .local v5, "resId":Ljava/lang/Integer;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1074
    .local v7, "typeKey":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v8, p0, Landroid/content/res/Resources;->resourcesMapType:Ljava/util/Map;

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-direct {p0, p2, v9, v8}, Landroid/content/res/Resources;->addToMap(Ljava/lang/CharSequence;ILjava/lang/String;)V

    goto :goto_1

    .line 1077
    .end local v0    # "arg":Ljava/lang/Object;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v5    # "resId":Ljava/lang/Integer;
    .end local v6    # "resourceIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v7    # "typeKey":Ljava/lang/String;
    .restart local v3    # "i$":I
    :cond_2
    return-void
.end method

.method private addToAppNamesMap(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 5
    .param p1, "value"    # Ljava/lang/CharSequence;
    .param p2, "stringName"    # Ljava/lang/CharSequence;

    .prologue
    .line 382
    iget-object v4, p0, Landroid/content/res/Resources;->appAndWidgetStringNamesMap:Ljava/util/Map;

    monitor-enter v4

    .line 383
    :try_start_0
    iget-object v3, p0, Landroid/content/res/Resources;->appAndWidgetStringNamesMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 384
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    if-eqz v1, :cond_1

    .line 385
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 392
    .local v2, "temp":Ljava/lang/CharSequence;
    :try_start_1
    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 393
    :try_start_2
    monitor-exit v4

    .line 406
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "temp":Ljava/lang/CharSequence;
    :goto_1
    return-void

    .line 400
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 403
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    :cond_2
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 404
    iget-object v3, p0, Landroid/content/res/Resources;->appAndWidgetStringNamesMap:Ljava/util/Map;

    invoke-interface {v3, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    monitor-exit v4

    goto :goto_1

    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 396
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    .restart local v2    # "temp":Ljava/lang/CharSequence;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private addToMap(Ljava/lang/CharSequence;ILjava/lang/String;)V
    .locals 7
    .param p1, "value"    # Ljava/lang/CharSequence;
    .param p2, "resid"    # I
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    .line 352
    iget-object v5, p0, Landroid/content/res/Resources;->resourcesMap:Ljava/util/Map;

    monitor-enter v5

    .line 353
    :try_start_0
    iget-object v4, p0, Landroid/content/res/Resources;->resourcesMap:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 354
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v1, :cond_1

    .line 355
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 356
    .local v2, "temp":I
    if-ne p2, v2, :cond_0

    .line 357
    monitor-exit v5

    .line 369
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "temp":I
    :goto_0
    return-void

    .line 361
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 363
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 365
    .local v3, "typKey":Ljava/lang/String;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 366
    iget-object v4, p0, Landroid/content/res/Resources;->resourcesMap:Ljava/util/Map;

    invoke-interface {v4, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    iget-object v4, p0, Landroid/content/res/Resources;->resourcesMapType:Ljava/util/Map;

    invoke-interface {v4, v3, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    monitor-exit v5

    goto :goto_0

    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v3    # "typKey":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private addToNotiMap(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 5
    .param p1, "value"    # Ljava/lang/CharSequence;
    .param p2, "stringName"    # Ljava/lang/CharSequence;

    .prologue
    .line 419
    sget-object v4, Landroid/content/res/Resources;->notificationStringsOriginMap:Ljava/util/Map;

    monitor-enter v4

    .line 420
    :try_start_0
    sget-object v3, Landroid/content/res/Resources;->notificationStringsOriginMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 421
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    if-eqz v1, :cond_1

    .line 422
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 423
    .local v2, "temp":Ljava/lang/CharSequence;
    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 424
    monitor-exit v4

    .line 433
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "temp":Ljava/lang/CharSequence;
    :goto_0
    return-void

    .line 428
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 430
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    :cond_2
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 431
    sget-object v3, Landroid/content/res/Resources;->notificationStringsOriginMap:Ljava/util/Map;

    invoke-interface {v3, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    monitor-exit v4

    goto :goto_0

    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private static adjustLanguageTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "languageTag"    # Ljava/lang/String;

    .prologue
    .line 3572
    const/16 v3, 0x2d

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 3576
    .local v2, "separator":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 3577
    move-object v0, p0

    .line 3578
    .local v0, "language":Ljava/lang/String;
    const-string v1, ""

    .line 3584
    .local v1, "remainder":Ljava/lang/String;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/util/Locale;->adjustLanguageCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 3580
    .end local v0    # "language":Ljava/lang/String;
    .end local v1    # "remainder":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 3581
    .restart local v0    # "language":Ljava/lang/String;
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "remainder":Ljava/lang/String;
    goto :goto_0
.end method

.method private static attrForQuantityCode(I)I
    .locals 1
    .param p0, "quantityCode"    # I

    .prologue
    .line 1541
    packed-switch p0, :pswitch_data_0

    .line 1547
    const v0, 0x1000004

    :goto_0
    return v0

    .line 1542
    :pswitch_0
    const v0, 0x1000005

    goto :goto_0

    .line 1543
    :pswitch_1
    const v0, 0x1000006

    goto :goto_0

    .line 1544
    :pswitch_2
    const v0, 0x1000007

    goto :goto_0

    .line 1545
    :pswitch_3
    const v0, 0x1000008

    goto :goto_0

    .line 1546
    :pswitch_4
    const v0, 0x1000009

    goto :goto_0

    .line 1541
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private cacheDrawable(Landroid/util/TypedValue;ZLandroid/content/res/DrawableCache;Landroid/content/res/Resources$Theme;ZJLandroid/graphics/drawable/Drawable;)V
    .locals 8
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "isColorDrawable"    # Z
    .param p3, "caches"    # Landroid/content/res/DrawableCache;
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;
    .param p5, "usesTheme"    # Z
    .param p6, "key"    # J
    .param p8, "dr"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 4214
    invoke-virtual/range {p8 .. p8}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v5

    .line 4215
    .local v5, "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    if-nez v5, :cond_1

    .line 4244
    :cond_0
    :goto_0
    return-void

    .line 4219
    :cond_1
    iget-boolean v1, p0, Landroid/content/res/Resources;->mPreloading:Z

    if-eqz v1, :cond_4

    .line 4220
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable$ConstantState;->getChangingConfigurations()I

    move-result v0

    .line 4221
    .local v0, "changingConfigs":I
    if-eqz p2, :cond_2

    .line 4222
    const/4 v1, 0x0

    iget v2, p1, Landroid/util/TypedValue;->resourceId:I

    const-string v3, "drawable"

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/content/res/Resources;->verifyPreloadConfig(IIILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4223
    sget-object v1, Landroid/content/res/Resources;->sPreloadedColorDrawables:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p6, p7, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    .line 4226
    :cond_2
    sget v1, Landroid/content/res/Resources;->LAYOUT_DIR_CONFIG:I

    iget v2, p1, Landroid/util/TypedValue;->resourceId:I

    const-string v3, "drawable"

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/content/res/Resources;->verifyPreloadConfig(IIILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4228
    sget v1, Landroid/content/res/Resources;->LAYOUT_DIR_CONFIG:I

    and-int/2addr v1, v0

    if-nez v1, :cond_3

    .line 4231
    sget-object v1, Landroid/content/res/Resources;->sPreloadedDrawables:[Landroid/util/LongSparseArray;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1, p6, p7, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 4232
    sget-object v1, Landroid/content/res/Resources;->sPreloadedDrawables:[Landroid/util/LongSparseArray;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1, p6, p7, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    .line 4235
    :cond_3
    sget-object v1, Landroid/content/res/Resources;->sPreloadedDrawables:[Landroid/util/LongSparseArray;

    iget-object v2, p0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v1, p6, p7, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    .line 4240
    .end local v0    # "changingConfigs":I
    :cond_4
    iget-object v7, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    monitor-enter v7

    move-object v1, p3

    move-wide v2, p6

    move-object v4, p4

    move v6, p5

    .line 4241
    :try_start_0
    invoke-virtual/range {v1 .. v6}, Landroid/content/res/DrawableCache;->put(JLandroid/content/res/Resources$Theme;Ljava/lang/Object;Z)V

    .line 4242
    monitor-exit v7

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private calcConfigChanges(Landroid/content/res/Configuration;)I
    .locals 5
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 3400
    const v0, 0xfffffff

    .line 3401
    .local v0, "configChanges":I
    if-eqz p1, :cond_2

    .line 3402
    iget-object v3, p0, Landroid/content/res/Resources;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {v3, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 3403
    iget v2, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 3404
    .local v2, "density":I
    if-nez v2, :cond_0

    .line 3405
    iget-object v3, p0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    iget v2, v3, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    .line 3408
    :cond_0
    iget-object v3, p0, Landroid/content/res/Resources;->mCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    iget-object v4, p0, Landroid/content/res/Resources;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {v3, v2, v4}, Landroid/content/res/CompatibilityInfo;->applyToConfiguration(ILandroid/content/res/Configuration;)V

    .line 3410
    iget-object v3, p0, Landroid/content/res/Resources;->mTmpConfig:Landroid/content/res/Configuration;

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-nez v3, :cond_3

    .line 3411
    iget-object v3, p0, Landroid/content/res/Resources;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    iput-object v4, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 3412
    iget-object v3, p0, Landroid/content/res/Resources;->mTmpConfig:Landroid/content/res/Configuration;

    iget-object v4, p0, Landroid/content/res/Resources;->mTmpConfig:Landroid/content/res/Configuration;

    iget-object v4, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Landroid/content/res/Configuration;->setLayoutDirection(Ljava/util/Locale;)V

    .line 3431
    :cond_1
    :goto_0
    iget-object v3, p0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v4, p0, Landroid/content/res/Resources;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {v3, v4}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v0

    .line 3437
    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->activityInfoConfigToNative(I)I

    move-result v0

    .line 3442
    .end local v2    # "density":I
    :cond_2
    return v0

    .line 3416
    .restart local v2    # "density":I
    :cond_3
    iget-object v3, p0, Landroid/content/res/Resources;->mTmpConfig:Landroid/content/res/Configuration;

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 3417
    .local v1, "country":Ljava/lang/String;
    const-string v3, "ZG"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3418
    const-string v3, "ZG"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3419
    iget-object v3, p0, Landroid/content/res/Resources;->mTmpConfig:Landroid/content/res/Configuration;

    sget-object v4, Ljava/util/Locale;->MYANMAR_UNICODE:Ljava/util/Locale;

    iput-object v4, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 3420
    iget-object v3, p0, Landroid/content/res/Resources;->mTmpConfig:Landroid/content/res/Configuration;

    iget-object v4, p0, Landroid/content/res/Resources;->mTmpConfig:Landroid/content/res/Configuration;

    iget-object v4, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Landroid/content/res/Configuration;->setLayoutDirection(Ljava/util/Locale;)V

    goto :goto_0

    .line 3422
    :cond_4
    const-string v3, "MM"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3423
    const-string v3, "ZG"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3424
    iget-object v3, p0, Landroid/content/res/Resources;->mTmpConfig:Landroid/content/res/Configuration;

    sget-object v4, Ljava/util/Locale;->MYANMAR_ZAWGYI:Ljava/util/Locale;

    iput-object v4, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 3425
    iget-object v3, p0, Landroid/content/res/Resources;->mTmpConfig:Landroid/content/res/Configuration;

    iget-object v4, p0, Landroid/content/res/Resources;->mTmpConfig:Landroid/content/res/Configuration;

    iget-object v4, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Landroid/content/res/Configuration;->setLayoutDirection(Ljava/util/Locale;)V

    goto :goto_0
.end method

.method private clearDrawableCacheLocked(Landroid/util/LongSparseArray;I)V
    .locals 5
    .param p2, "configChanges"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;>;I)V"
        }
    .end annotation

    .prologue
    .line 3533
    .local p1, "cache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    invoke-virtual {p1}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    .line 3534
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 3535
    invoke-virtual {p1, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 3536
    .local v3, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    if-eqz v3, :cond_0

    .line 3537
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 3538
    .local v1, "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    if-eqz v1, :cond_0

    .line 3539
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->getChangingConfigurations()I

    move-result v4

    invoke-static {p2, v4}, Landroid/content/res/Configuration;->needNewResources(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3547
    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4}, Landroid/util/LongSparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 3534
    .end local v1    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3558
    .end local v3    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    :cond_1
    return-void
.end method

.method private clearDrawableCachesLocked(Landroid/util/ArrayMap;I)V
    .locals 3
    .param p2, "configChanges"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;>;>;I)V"
        }
    .end annotation

    .prologue
    .line 3518
    .local p1, "caches":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/LongSparseArray<Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;>;>;"
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 3522
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 3523
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/LongSparseArray;

    invoke-direct {p0, v2, p2}, Landroid/content/res/Resources;->clearDrawableCacheLocked(Landroid/util/LongSparseArray;I)V

    .line 3522
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3525
    :cond_0
    return-void
.end method

.method private clearRCCachedDrawableLocked(Landroid/util/LongSparseArray;I)V
    .locals 6
    .param p2, "configChanges"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/util/concurrent/Future",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;>;I)V"
        }
    .end annotation

    .prologue
    .line 3459
    .local p1, "futureCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/util/concurrent/Future<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    invoke-virtual {p1}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    .line 3464
    .local v0, "N":I
    add-int/lit8 v3, v0, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_2

    .line 3466
    :try_start_0
    invoke-virtual {p1, v3}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {p1, v3}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/Future;

    invoke-interface {v4}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3467
    invoke-virtual {p1, v3}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/Future;

    invoke-interface {v4}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 3468
    .local v1, "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    if-eqz v1, :cond_0

    .line 3469
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->getChangingConfigurations()I

    move-result v4

    invoke-static {p2, v4}, Landroid/content/res/Configuration;->needNewResources(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3478
    invoke-virtual {p1, v3}, Landroid/util/LongSparseArray;->removeAt(I)V

    .line 3464
    .end local v1    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 3488
    :cond_1
    invoke-virtual {p1, v3}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 3489
    invoke-virtual {p1, v3}, Landroid/util/LongSparseArray;->removeAt(I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 3492
    :catch_0
    move-exception v2

    .line 3493
    .local v2, "e":Ljava/lang/InterruptedException;
    const-string v4, "Resources"

    const-string v5, "InterruptedException"

    invoke-static {v4, v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 3494
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v2

    .line 3495
    .local v2, "e":Ljava/util/concurrent/ExecutionException;
    const-string v4, "Resources"

    const-string v5, "ExecutionException"

    invoke-static {v4, v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 3498
    .end local v2    # "e":Ljava/util/concurrent/ExecutionException;
    :cond_2
    return-void
.end method

.method private getPluralRule()Llibcore/icu/NativePluralRules;
    .locals 2

    .prologue
    .line 1532
    sget-object v1, Landroid/content/res/Resources;->sSync:Ljava/lang/Object;

    monitor-enter v1

    .line 1533
    :try_start_0
    iget-object v0, p0, Landroid/content/res/Resources;->mPluralRule:Llibcore/icu/NativePluralRules;

    if-nez v0, :cond_0

    .line 1534
    iget-object v0, p0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v0}, Llibcore/icu/NativePluralRules;->forLocale(Ljava/util/Locale;)Llibcore/icu/NativePluralRules;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/Resources;->mPluralRule:Llibcore/icu/NativePluralRules;

    .line 1536
    :cond_0
    iget-object v0, p0, Landroid/content/res/Resources;->mPluralRule:Llibcore/icu/NativePluralRules;

    monitor-exit v1

    return-object v0

    .line 1537
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getRCCachedDrawable(Landroid/util/ArrayMap;JLandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 10
    .param p2, "key"    # J
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/util/concurrent/Future",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;>;>;J",
            "Landroid/content/res/Resources$Theme;",
            ")",
            "Landroid/graphics/drawable/Drawable;"
        }
    .end annotation

    .prologue
    .local p1, "drawableCache":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/LongSparseArray<Ljava/util/concurrent/Future<Landroid/graphics/drawable/Drawable$ConstantState;>;>;>;"
    const/4 v7, 0x0

    .line 4184
    const/4 v2, 0x0

    .line 4185
    .local v2, "entry":Landroid/graphics/drawable/Drawable$ConstantState;
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Landroid/content/res/Resources$Theme;->getKey()Landroid/content/res/Resources$ThemeKey;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources$ThemeKey;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4186
    .local v5, "mThemeKey":Ljava/lang/String;
    :goto_0
    if-nez v5, :cond_1

    move-object v6, v7

    .line 4208
    :goto_1
    return-object v6

    .line 4185
    .end local v5    # "mThemeKey":Ljava/lang/String;
    :cond_0
    const-string v5, "[2131623959, 2131623959, 2131623959, 2131623959]"

    goto :goto_0

    .line 4188
    .restart local v5    # "mThemeKey":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/LongSparseArray;

    .line 4189
    .local v4, "futureDrawableCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/util/concurrent/Future<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    if-eqz v4, :cond_3

    .line 4191
    :try_start_0
    invoke-virtual {v4, p2, p3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Future;

    .line 4192
    .local v3, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    if-eqz v3, :cond_3

    .line 4193
    invoke-interface {v3}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Landroid/graphics/drawable/Drawable$ConstantState;

    move-object v2, v0

    .line 4194
    if-eqz v2, :cond_2

    .line 4195
    invoke-virtual {v2, p0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    goto :goto_1

    .line 4199
    :cond_2
    invoke-virtual {v4, p2, p3}, Landroid/util/LongSparseArray;->delete(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v3    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    :cond_3
    :goto_2
    move-object v6, v7

    .line 4208
    goto :goto_1

    .line 4202
    :catch_0
    move-exception v1

    .line 4203
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v6, "Resources"

    const-string v8, "InterruptedException"

    invoke-static {v6, v8, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 4204
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v1

    .line 4205
    .local v1, "e":Ljava/util/concurrent/ExecutionException;
    const-string v6, "Resources"

    const-string v8, "ExecutionException"

    invoke-static {v6, v8, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public static getScreenResources()Landroid/content/res/Resources;
    .locals 3

    .prologue
    .line 1839
    sget-object v2, Landroid/content/res/Resources;->sSync:Ljava/lang/Object;

    monitor-enter v2

    .line 1840
    :try_start_0
    sget-object v0, Landroid/content/res/Resources;->mScreenResources:Landroid/content/res/Resources;

    .line 1841
    .local v0, "ret":Landroid/content/res/Resources;
    if-nez v0, :cond_0

    .line 1842
    new-instance v0, Landroid/content/res/Resources;

    .end local v0    # "ret":Landroid/content/res/Resources;
    invoke-direct {v0}, Landroid/content/res/Resources;-><init>()V

    .line 1843
    .restart local v0    # "ret":Landroid/content/res/Resources;
    sput-object v0, Landroid/content/res/Resources;->mScreenResources:Landroid/content/res/Resources;

    .line 1845
    :cond_0
    monitor-exit v2

    return-object v0

    .line 1846
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getStringName(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;
    .param p2, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 667
    const/4 v2, 0x0

    .line 672
    .local v2, "stringName":Ljava/lang/CharSequence;
    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v3, :cond_0

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 673
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":noResource/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 724
    :goto_0
    return-object v3

    .line 676
    :cond_0
    iget v3, p1, Landroid/content/pm/ResolveInfo;->labelRes:I

    if-eqz v3, :cond_1

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 677
    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    iget v4, p1, Landroid/content/pm/ResolveInfo;->labelRes:I

    invoke-direct {p0, v3, v4, p2}, Landroid/content/res/Resources;->getStringName(Ljava/lang/String;ILandroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 678
    if-eqz v2, :cond_1

    move-object v3, v2

    .line 679
    goto :goto_0

    .line 683
    :cond_1
    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_2

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 685
    .local v1, "ci":Landroid/content/pm/ComponentInfo;
    :goto_1
    iget-object v0, v1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 687
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget v3, p1, Landroid/content/pm/ResolveInfo;->labelRes:I

    if-eqz v3, :cond_3

    .line 688
    iget-object v3, v1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget v4, p1, Landroid/content/pm/ResolveInfo;->labelRes:I

    invoke-direct {p0, v3, v4, p2}, Landroid/content/res/Resources;->getStringName(Ljava/lang/String;ILandroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 689
    if-eqz v2, :cond_3

    move-object v3, v2

    .line 690
    goto :goto_0

    .line 683
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "ci":Landroid/content/pm/ComponentInfo;
    :cond_2
    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    goto :goto_1

    .line 698
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v1    # "ci":Landroid/content/pm/ComponentInfo;
    :cond_3
    iget-object v3, v1, Landroid/content/pm/ComponentInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v3, :cond_4

    iget-object v3, v1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 699
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":noResource/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 702
    :cond_4
    iget v3, v1, Landroid/content/pm/ComponentInfo;->labelRes:I

    if-eqz v3, :cond_5

    .line 703
    iget-object v3, v1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget v4, v1, Landroid/content/pm/ComponentInfo;->labelRes:I

    invoke-direct {p0, v3, v4, p2}, Landroid/content/res/Resources;->getStringName(Ljava/lang/String;ILandroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 704
    if-eqz v2, :cond_5

    move-object v3, v2

    .line 705
    goto :goto_0

    .line 713
    :cond_5
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v3, :cond_6

    iget-object v3, v1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 714
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":noResource/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 717
    :cond_6
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    if-eqz v3, :cond_7

    iget-object v3, v1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_7

    .line 718
    iget-object v3, v1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-direct {p0, v3, v4, p2}, Landroid/content/res/Resources;->getStringName(Ljava/lang/String;ILandroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 719
    if-eqz v2, :cond_7

    move-object v3, v2

    .line 720
    goto/16 :goto_0

    :cond_7
    move-object v3, v2

    .line 724
    goto/16 :goto_0
.end method

.method private getStringName(Ljava/lang/String;ILandroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "labelRes"    # I
    .param p3, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 741
    const/4 v2, 0x0

    .line 743
    .local v2, "stringName":Ljava/lang/CharSequence;
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 746
    :try_start_0
    invoke-virtual {p3, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 751
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .end local v1    # "res":Landroid/content/res/Resources;
    :cond_0
    move-object v3, v2

    .line 754
    :goto_0
    return-object v3

    .line 747
    :catch_0
    move-exception v0

    .line 748
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getSystem()Landroid/content/res/Resources;
    .locals 3

    .prologue
    sget-object v2, Landroid/content/res/Resources;->sSync:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v0, Landroid/content/res/Resources;->mSystem:Landroid/content/res/Resources;

    .local v0, "ret":Landroid/content/res/Resources;
    if-nez v0, :cond_0

    new-instance v0, Landroid/content/res/MiuiResources;

    .end local v0    # "ret":Landroid/content/res/Resources;
    invoke-direct {v0}, Landroid/content/res/MiuiResources;-><init>()V

    .restart local v0    # "ret":Landroid/content/res/Resources;
    sput-object v0, Landroid/content/res/Resources;->mSystem:Landroid/content/res/Resources;

    :cond_0
    monitor-exit v2

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getSystem(I)Landroid/content/res/Resources;
    .locals 3
    .param p0, "displayId"    # I

    .prologue
    .line 1431
    sget-object v2, Landroid/content/res/Resources;->sSync:Ljava/lang/Object;

    monitor-enter v2

    .line 1432
    :try_start_0
    sget-object v1, Landroid/content/res/Resources;->mSystems:Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;

    if-nez v1, :cond_0

    .line 1433
    new-instance v1, Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;

    invoke-direct {v1}, Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;-><init>()V

    sput-object v1, Landroid/content/res/Resources;->mSystems:Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;

    .line 1435
    :cond_0
    sget-object v1, Landroid/content/res/Resources;->mSystems:Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;

    invoke-virtual {v1, p0}, Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Resources;

    .line 1436
    .local v0, "ret":Landroid/content/res/Resources;
    if-nez v0, :cond_1

    .line 1437
    new-instance v0, Landroid/content/res/Resources;

    .end local v0    # "ret":Landroid/content/res/Resources;
    invoke-direct {v0}, Landroid/content/res/Resources;-><init>()V

    .line 1438
    .restart local v0    # "ret":Landroid/content/res/Resources;
    sget-object v1, Landroid/content/res/Resources;->mSystems:Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;

    invoke-virtual {v1, p0, v0}, Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1441
    :cond_1
    monitor-exit v2

    return-object v0

    .line 1442
    .end local v0    # "ret":Landroid/content/res/Resources;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private loadAppNames(Landroid/content/pm/PackageManager;)V
    .locals 3
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    const/4 v2, 0x0

    .line 579
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 580
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 581
    invoke-virtual {p1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 584
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v1, "android.view.InputMethod"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 585
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    .line 586
    return-void
.end method

.method private loadColorStateListForCookie(Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 10
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "id"    # I
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;

    .prologue
    const-wide/16 v8, 0x2000

    .line 4376
    iget-object v5, p1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-nez v5, :cond_0

    .line 4377
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t convert to color state list: type=0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/util/TypedValue;->type:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 4381
    :cond_0
    iget-object v5, p1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4400
    .local v2, "file":Ljava/lang/String;
    invoke-static {v8, v9, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4401
    const-string v5, ".xml"

    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4403
    :try_start_0
    iget v5, p1, Landroid/util/TypedValue;->assetCookie:I

    const-string v6, "colorstatelist"

    invoke-virtual {p0, v2, p2, v5, v6}, Landroid/content/res/Resources;->loadXmlResourceParser(Ljava/lang/String;IILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    .line 4405
    .local v4, "rp":Landroid/content/res/XmlResourceParser;
    invoke-static {p0, v4, p3}, Landroid/content/res/ColorStateList;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 4406
    .local v0, "csl":Landroid/content/res/ColorStateList;
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4421
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 4423
    return-object v0

    .line 4407
    .end local v0    # "csl":Landroid/content/res/ColorStateList;
    .end local v4    # "rp":Landroid/content/res/XmlResourceParser;
    :catch_0
    move-exception v1

    .line 4408
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 4409
    new-instance v3, Landroid/content/res/Resources$NotFoundException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "File "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " from color state list resource ID #0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 4412
    .local v3, "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v3, v1}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 4413
    throw v3

    .line 4416
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "rnf":Landroid/content/res/Resources$NotFoundException;
    :cond_1
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 4417
    new-instance v5, Landroid/content/res/Resources$NotFoundException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "File "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " from drawable resource ID #0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": .xml extension required"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private loadDrawableForCookie(Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 12
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "id"    # I
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;

    .prologue
    .line 4250
    iget-object v9, p1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-nez v9, :cond_0

    .line 4251
    new-instance v9, Landroid/content/res/Resources$NotFoundException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Resource \""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\" ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") is not a Drawable (color or path): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 4255
    :cond_0
    iget-object v9, p1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4274
    .local v2, "file":Ljava/lang/String;
    const-wide/16 v10, 0x2000

    invoke-static {v10, v11, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4276
    :try_start_0
    const-string v9, ".xml"

    invoke-virtual {v2, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 4277
    iget v9, p1, Landroid/util/TypedValue;->assetCookie:I

    const-string v10, "drawable"

    invoke-virtual {p0, v2, p2, v9, v10}, Landroid/content/res/Resources;->loadXmlResourceParser(Ljava/lang/String;IILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v8

    .line 4279
    .local v8, "rp":Landroid/content/res/XmlResourceParser;
    invoke-static {p0, v8, p3}, Landroid/graphics/drawable/Drawable;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 4280
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4304
    .end local v8    # "rp":Landroid/content/res/XmlResourceParser;
    :goto_0
    const-wide/16 v10, 0x2000

    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 4306
    return-object v0

    .line 4282
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_1
    :try_start_1
    iget-object v9, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    iget v10, p1, Landroid/util/TypedValue;->assetCookie:I

    const/4 v11, 0x2

    invoke-virtual {v9, v10, v2, v11}, Landroid/content/res/AssetManager;->openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;

    move-result-object v4

    .line 4284
    .local v4, "is":Ljava/io/InputStream;
    const/4 v9, 0x0

    invoke-static {p0, p1, v4, v2, v9}, Landroid/graphics/drawable/Drawable;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 4285
    .restart local v0    # "dr":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 4287
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v4    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .line 4288
    .local v1, "e":Ljava/lang/Exception;
    const-wide/16 v10, 0x2000

    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 4289
    new-instance v7, Landroid/content/res/Resources$NotFoundException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "File "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " from drawable resource ID #0x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 4291
    .local v7, "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v7, v1}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 4293
    iget-object v9, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v9}, Landroid/content/res/AssetManager;->getOverlays()Ljava/util/ArrayList;

    move-result-object v6

    .line 4294
    .local v6, "overlays":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v6, :cond_2

    .line 4295
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 4296
    .local v5, "overlay":Ljava/lang/String;
    const-string v9, "Resources"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Resources overlayPath = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 4299
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "overlay":Ljava/lang/String;
    :cond_2
    const-string v9, "Resources"

    const-string v10, "Resources overlays is NULL"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4302
    :cond_3
    throw v7
.end method

.method private loadNamesFromMetaData(Ljava/lang/String;Landroid/content/pm/ResolveInfo;Landroid/content/Context;)V
    .locals 11
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "ri"    # Landroid/content/pm/ResolveInfo;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 602
    const/4 v0, 0x0

    .line 606
    .local v0, "c":Landroid/content/Context;
    :try_start_0
    iget-object v8, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v9, 0x3

    invoke-virtual {p3, v8, v9}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 613
    :goto_0
    if-nez v0, :cond_1

    .line 642
    :cond_0
    :goto_1
    return-void

    .line 609
    :catch_0
    move-exception v2

    .line 610
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 617
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 619
    .local v1, "contextRes":Landroid/content/res/Resources;
    iget-object v8, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v8, v9, p1}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    .line 621
    .local v4, "parser":Landroid/content/res/XmlResourceParser;
    if-eqz v4, :cond_0

    .line 626
    :cond_2
    :try_start_1
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v7

    .local v7, "type":I
    const/4 v8, 0x2

    if-eq v7, v8, :cond_3

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    .line 635
    .end local v7    # "type":I
    :cond_3
    :goto_2
    const/4 v8, 0x0

    const-string v9, "description"

    const/4 v10, 0x0

    invoke-interface {v4, v8, v9, v10}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    .line 636
    .local v3, "id":I
    if-eqz v3, :cond_0

    .line 637
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 638
    .local v6, "title":Ljava/lang/String;
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v5

    .line 639
    .local v5, "stringName":Ljava/lang/String;
    invoke-direct {p0, v6, v5}, Landroid/content/res/Resources;->addToAppNamesMap(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 628
    .end local v3    # "id":I
    .end local v5    # "stringName":Ljava/lang/String;
    .end local v6    # "title":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 629
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_2

    .line 630
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_2
    move-exception v2

    .line 631
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method private mClearALDCLocked(Landroid/util/ArrayMap;I)V
    .locals 3
    .param p2, "configChanges"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/util/concurrent/Future",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;>;>;I)V"
        }
    .end annotation

    .prologue
    .line 3447
    .local p1, "caches":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/LongSparseArray<Ljava/util/concurrent/Future<Landroid/graphics/drawable/Drawable$ConstantState;>;>;>;"
    if-eqz p1, :cond_1

    .line 3448
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 3449
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 3450
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3451
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/LongSparseArray;

    invoke-direct {p0, v2, p2}, Landroid/content/res/Resources;->clearRCCachedDrawableLocked(Landroid/util/LongSparseArray;I)V

    .line 3449
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3454
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private matchFormattedStringToKey(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "formattedString"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 794
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "%"

    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 819
    :cond_0
    :goto_0
    return v4

    .line 800
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "%d|%s|%[0-9]?[0-9]?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "$"

    invoke-static {v7}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "[s,d]?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 807
    .local v5, "splited":[Ljava/lang/String;
    array-length v6, v5

    if-eqz v6, :cond_0

    .line 811
    const/4 v4, 0x1

    .line 813
    .local v4, "match":Z
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 814
    .local v1, "element":Ljava/lang/String;
    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 815
    const/4 v4, 0x0

    .line 816
    goto :goto_0

    .line 813
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "set"    # Landroid/util/AttributeSet;
    .param p3, "attrs"    # [I

    .prologue
    const/4 v0, 0x0

    .line 4509
    if-nez p1, :cond_0

    .line 4510
    invoke-virtual {p0, p2, p3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 4512
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1, p2, p3, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    goto :goto_0
.end method

.method private resetStringNames(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 766
    sget-boolean v0, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v1, p0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 771
    iget-object v0, p0, Landroid/content/res/Resources;->resourcesMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 772
    iget-object v0, p0, Landroid/content/res/Resources;->resourcesMapType:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 773
    iget-object v0, p0, Landroid/content/res/Resources;->appAndWidgetStringNamesMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 775
    :cond_0
    return-void
.end method

.method public static resourceHasPackage(I)Z
    .locals 1
    .param p0, "resid"    # I

    .prologue
    .line 3725
    ushr-int/lit8 v0, p0, 0x18

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private searchAppAndWidgetStringNames(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)V
    .locals 6
    .param p1, "stringNames"    # Ljava/lang/StringBuilder;
    .param p2, "search"    # Ljava/lang/CharSequence;

    .prologue
    .line 502
    iget-object v5, p0, Landroid/content/res/Resources;->appAndWidgetStringNamesMap:Ljava/util/Map;

    monitor-enter v5

    .line 503
    :try_start_0
    iget-object v4, p0, Landroid/content/res/Resources;->appAndWidgetStringNamesMap:Ljava/util/Map;

    invoke-interface {v4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 504
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 505
    if-eqz v1, :cond_1

    .line 506
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 512
    .local v3, "temp":Ljava/lang/CharSequence;
    if-eqz v3, :cond_0

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 513
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 514
    .local v2, "names":Ljava/lang/StringBuilder;
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 515
    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    const-string v4, "AppName"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    const-string v4, ";"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 504
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    .end local v2    # "names":Ljava/lang/StringBuilder;
    .end local v3    # "temp":Ljava/lang/CharSequence;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 522
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    :cond_1
    return-void
.end method

.method private searchFor(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 10
    .param p1, "search"    # Ljava/lang/CharSequence;

    .prologue
    .line 445
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 448
    .local v5, "stringNames":Ljava/lang/StringBuilder;
    iget-object v8, p0, Landroid/content/res/Resources;->resourcesMap:Ljava/util/Map;

    monitor-enter v8

    .line 449
    :try_start_0
    iget-object v7, p0, Landroid/content/res/Resources;->resourcesMap:Ljava/util/Map;

    invoke-interface {v7, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 450
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 451
    if-eqz v2, :cond_0

    .line 452
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 455
    .local v4, "resid":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 456
    .local v3, "names":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    const-string v7, "."

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 459
    .local v6, "typKey":Ljava/lang/String;
    iget-object v7, p0, Landroid/content/res/Resources;->resourcesMapType:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    const-string v7, ";"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 450
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v3    # "names":Ljava/lang/StringBuilder;
    .end local v4    # "resid":I
    .end local v6    # "typKey":Ljava/lang/String;
    :catchall_0
    move-exception v7

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    .line 465
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_0
    iget-object v8, p0, Landroid/content/res/Resources;->resourcesMap:Ljava/util/Map;

    monitor-enter v8

    .line 466
    :try_start_2
    iget-object v7, p0, Landroid/content/res/Resources;->resourcesMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 467
    .local v1, "key":Ljava/lang/CharSequence;
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v7, v9}, Landroid/content/res/Resources;->matchFormattedStringToKey(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 470
    invoke-direct {p0, v1}, Landroid/content/res/Resources;->searchFor(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    .end local v5    # "stringNames":Ljava/lang/StringBuilder;
    monitor-exit v8

    .line 484
    .end local v1    # "key":Ljava/lang/CharSequence;
    :goto_1
    return-object v5

    .line 471
    .restart local v1    # "key":Ljava/lang/CharSequence;
    .restart local v5    # "stringNames":Ljava/lang/StringBuilder;
    :cond_2
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 474
    invoke-direct {p0, v1}, Landroid/content/res/Resources;->searchFor(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    .end local v5    # "stringNames":Ljava/lang/StringBuilder;
    monitor-exit v8

    goto :goto_1

    .line 477
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "key":Ljava/lang/CharSequence;
    :catchall_1
    move-exception v7

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v7

    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v5    # "stringNames":Ljava/lang/StringBuilder;
    :cond_3
    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 480
    :cond_4
    invoke-direct {p0, v5, p1}, Landroid/content/res/Resources;->searchAppAndWidgetStringNames(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)V

    .line 482
    invoke-direct {p0, v5, p1}, Landroid/content/res/Resources;->searchNotificationStringName(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private searchNotificationStringName(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)V
    .locals 6
    .param p1, "stringNames"    # Ljava/lang/StringBuilder;
    .param p2, "search"    # Ljava/lang/CharSequence;

    .prologue
    .line 539
    sget-object v5, Landroid/content/res/Resources;->notificationStringsOriginMap:Ljava/util/Map;

    monitor-enter v5

    .line 540
    :try_start_0
    sget-object v4, Landroid/content/res/Resources;->notificationStringsOriginMap:Ljava/util/Map;

    invoke-interface {v4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 541
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 542
    if-eqz v1, :cond_1

    .line 543
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 550
    .local v3, "temp":Ljava/lang/CharSequence;
    if-eqz v3, :cond_0

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 551
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 552
    .local v2, "names":Ljava/lang/StringBuilder;
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 553
    const-string v4, ";"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 541
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    .end local v2    # "names":Ljava/lang/StringBuilder;
    .end local v3    # "temp":Ljava/lang/CharSequence;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 558
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    :cond_1
    return-void
.end method

.method public static selectDefaultTheme(II)I
    .locals 6
    .param p0, "curTheme"    # I
    .param p1, "targetSdkVersion"    # I

    .prologue
    .line 1299
    const v2, 0x1030005

    const v3, 0x103006b

    const v4, 0x1030128

    const v5, 0x103013f

    move v0, p0

    move v1, p1

    invoke-static/range {v0 .. v5}, Landroid/content/res/Resources;->selectSystemTheme(IIIIII)I

    move-result v0

    return v0
.end method

.method public static selectSystemTheme(IIIIII)I
    .locals 1
    .param p0, "curTheme"    # I
    .param p1, "targetSdkVersion"    # I
    .param p2, "orig"    # I
    .param p3, "holo"    # I
    .param p4, "dark"    # I
    .param p5, "deviceDefault"    # I

    .prologue
    .line 1309
    if-eqz p0, :cond_0

    .line 1321
    .end local p0    # "curTheme":I
    :goto_0
    return p0

    .line 1312
    .restart local p0    # "curTheme":I
    :cond_0
    const/16 v0, 0xb

    if-ge p1, v0, :cond_1

    move p0, p2

    .line 1313
    goto :goto_0

    .line 1315
    :cond_1
    const/16 v0, 0xe

    if-ge p1, v0, :cond_2

    move p0, p3

    .line 1316
    goto :goto_0

    .line 1318
    :cond_2
    const/16 v0, 0x2710

    if-ge p1, v0, :cond_3

    move p0, p4

    .line 1319
    goto :goto_0

    :cond_3
    move p0, p5

    .line 1321
    goto :goto_0
.end method

.method public static setLoadDensityDpi(I)V
    .locals 0
    .param p0, "loadDensityDpi"    # I

    .prologue
    .line 4532
    sput p0, Landroid/content/res/Resources;->sLoadDensityDpi:I

    .line 4533
    return-void
.end method

.method private static stringForQuantityCode(I)Ljava/lang/String;
    .locals 1
    .param p0, "quantityCode"    # I

    .prologue
    .line 1552
    packed-switch p0, :pswitch_data_0

    .line 1558
    const-string/jumbo v0, "other"

    :goto_0
    return-object v0

    .line 1553
    :pswitch_0
    const-string/jumbo v0, "zero"

    goto :goto_0

    .line 1554
    :pswitch_1
    const-string/jumbo v0, "one"

    goto :goto_0

    .line 1555
    :pswitch_2
    const-string/jumbo v0, "two"

    goto :goto_0

    .line 1556
    :pswitch_3
    const-string v0, "few"

    goto :goto_0

    .line 1557
    :pswitch_4
    const-string/jumbo v0, "many"

    goto :goto_0

    .line 1552
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static updateScreenConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V
    .locals 1
    .param p0, "config"    # Landroid/content/res/Configuration;
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;
    .param p2, "compat"    # Landroid/content/res/CompatibilityInfo;

    .prologue
    .line 1852
    sget-object v0, Landroid/content/res/Resources;->mScreenResources:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    .line 1853
    sget-object v0, Landroid/content/res/Resources;->mScreenResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p0, p1, p2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    .line 1855
    :cond_0
    return-void
.end method

.method public static updateSystemConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V
    .locals 1
    .param p0, "config"    # Landroid/content/res/Configuration;
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;
    .param p2, "compat"    # Landroid/content/res/CompatibilityInfo;

    .prologue
    .line 3604
    sget-object v0, Landroid/content/res/Resources;->mSystem:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    .line 3605
    sget-object v0, Landroid/content/res/Resources;->mSystem:Landroid/content/res/Resources;

    invoke-virtual {v0, p0, p1, p2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    .line 3610
    :cond_0
    return-void
.end method

.method public static updateSystemDisplayMetrics(Landroid/util/DisplayMetrics;)V
    .locals 1
    .param p0, "metrics"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 4521
    sget-object v0, Landroid/content/res/Resources;->mSystem:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    .line 4522
    sget-object v0, Landroid/content/res/Resources;->mSystem:Landroid/content/res/Resources;

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->updateDisplayMetrics(Landroid/util/DisplayMetrics;)V

    .line 4524
    :cond_0
    return-void
.end method

.method private verifyPreloadConfig(IIILjava/lang/String;)Z
    .locals 5
    .param p1, "changingConfigurations"    # I
    .param p2, "allowVarying"    # I
    .param p3, "resourceId"    # I
    .param p4, "name"    # Ljava/lang/String;

    .prologue
    .line 3971
    const v2, -0x40001001    # -1.9995116f

    and-int/2addr v2, p1

    xor-int/lit8 v3, p2, -0x1

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    .line 3975
    :try_start_0
    invoke-virtual {p0, p3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3981
    .local v1, "resName":Ljava/lang/String;
    :goto_0
    const-string v2, "Resources"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Preloaded "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " resource #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") that varies with configuration!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3984
    const/4 v2, 0x0

    .line 3997
    .end local v1    # "resName":Ljava/lang/String;
    :goto_1
    return v2

    .line 3976
    :catch_0
    move-exception v0

    .line 3977
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v1, "?"

    .restart local v1    # "resName":Ljava/lang/String;
    goto :goto_0

    .line 3997
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v1    # "resName":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public addAccountsNames(Landroid/content/Context;[Landroid/accounts/AuthenticatorDescription;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "items"    # [Landroid/accounts/AuthenticatorDescription;

    .prologue
    .line 987
    sget-boolean v12, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v12, :cond_4

    .line 988
    iget-object v13, p0, Landroid/content/res/Resources;->appAndWidgetStringNamesMap:Ljava/util/Map;

    monitor-enter v13

    .line 992
    const/4 v3, 0x0

    .line 993
    .local v3, "firstAdd":Z
    :try_start_0
    iget-object v12, p0, Landroid/content/res/Resources;->appAndWidgetStringNamesMap:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 994
    const/4 v3, 0x1

    .line 996
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 997
    .local v9, "pm":Landroid/content/pm/PackageManager;
    move-object/from16 v1, p2

    .local v1, "arr$":[Landroid/accounts/AuthenticatorDescription;
    array-length v7, v1

    .local v7, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v7, :cond_2

    aget-object v0, v1, v4

    .line 998
    .local v0, "ad":Landroid/accounts/AuthenticatorDescription;
    iget v6, v0, Landroid/accounts/AuthenticatorDescription;->labelId:I

    .line 999
    .local v6, "labelId":I
    iget-object v8, v0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1000
    .local v8, "packageName":Ljava/lang/String;
    const/4 v10, 0x0

    .line 1002
    .local v10, "res":Landroid/content/res/Resources;
    :try_start_1
    invoke-virtual {v9, v8}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v10

    .line 1006
    :goto_1
    if-eqz v10, :cond_1

    if-eqz v6, :cond_1

    .line 1007
    :try_start_2
    invoke-virtual {v10, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1008
    .local v5, "label":Ljava/lang/String;
    invoke-virtual {v10, v6}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v11

    .line 1009
    .local v11, "stringName":Ljava/lang/String;
    invoke-direct {p0, v5, v11}, Landroid/content/res/Resources;->addToAppNamesMap(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 997
    .end local v5    # "label":Ljava/lang/String;
    .end local v11    # "stringName":Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1003
    :catch_0
    move-exception v2

    .line 1004
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 1015
    .end local v0    # "ad":Landroid/accounts/AuthenticatorDescription;
    .end local v1    # "arr$":[Landroid/accounts/AuthenticatorDescription;
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v4    # "i$":I
    .end local v6    # "labelId":I
    .end local v7    # "len$":I
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v9    # "pm":Landroid/content/pm/PackageManager;
    .end local v10    # "res":Landroid/content/res/Resources;
    :catchall_0
    move-exception v12

    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v12

    .line 1012
    .restart local v1    # "arr$":[Landroid/accounts/AuthenticatorDescription;
    .restart local v4    # "i$":I
    .restart local v7    # "len$":I
    .restart local v9    # "pm":Landroid/content/pm/PackageManager;
    :cond_2
    if-eqz v3, :cond_3

    .line 1013
    :try_start_3
    invoke-direct {p0, v9}, Landroid/content/res/Resources;->loadAppNames(Landroid/content/pm/PackageManager;)V

    .line 1015
    :cond_3
    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1017
    .end local v1    # "arr$":[Landroid/accounts/AuthenticatorDescription;
    .end local v3    # "firstAdd":Z
    .end local v4    # "i$":I
    .end local v7    # "len$":I
    .end local v9    # "pm":Landroid/content/pm/PackageManager;
    :cond_4
    return-void
.end method

.method public addAppsNames(Landroid/content/Context;Landroid/content/pm/PackageManager;Ljava/util/List;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pm"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/pm/PackageManager;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 905
    .local p3, "items":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    sget-boolean v7, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v7, :cond_4

    .line 906
    iget-object v8, p0, Landroid/content/res/Resources;->appAndWidgetStringNamesMap:Ljava/util/Map;

    monitor-enter v8

    .line 910
    const/4 v1, 0x0

    .line 911
    .local v1, "firstAdd":Z
    :try_start_0
    iget-object v7, p0, Landroid/content/res/Resources;->appAndWidgetStringNamesMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 912
    const/4 v1, 0x1

    .line 914
    :cond_0
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 915
    .local v5, "ri":Landroid/content/pm/ResolveInfo;
    invoke-virtual {v5, p2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 916
    .local v4, "label":Ljava/lang/CharSequence;
    invoke-direct {p0, v5, p2}, Landroid/content/res/Resources;->getStringName(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 917
    .local v6, "stringName":Ljava/lang/CharSequence;
    invoke-direct {p0, v4, v6}, Landroid/content/res/Resources;->addToAppNamesMap(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 918
    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v7, :cond_1

    .line 919
    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v7, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 920
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 921
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 923
    .local v3, "keyset":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 924
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {p0, v7, v5, p1}, Landroid/content/res/Resources;->loadNamesFromMetaData(Ljava/lang/String;Landroid/content/pm/ResolveInfo;Landroid/content/Context;)V

    goto :goto_0

    .line 933
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "keyset":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v4    # "label":Ljava/lang/CharSequence;
    .end local v5    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v6    # "stringName":Ljava/lang/CharSequence;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 930
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    if-eqz v1, :cond_3

    .line 931
    :try_start_1
    invoke-direct {p0, p2}, Landroid/content/res/Resources;->loadAppNames(Landroid/content/pm/PackageManager;)V

    .line 933
    :cond_3
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 935
    .end local v1    # "firstAdd":Z
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_4
    return-void
.end method

.method public addAppsNames(Landroid/content/Context;Ljava/util/List;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 951
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    sget-boolean v5, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v5, :cond_3

    .line 952
    iget-object v6, p0, Landroid/content/res/Resources;->appAndWidgetStringNamesMap:Ljava/util/Map;

    monitor-enter v6

    .line 956
    const/4 v0, 0x0

    .line 957
    .local v0, "firstAdd":Z
    :try_start_0
    iget-object v5, p0, Landroid/content/res/Resources;->appAndWidgetStringNamesMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 958
    const/4 v0, 0x1

    .line 960
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 961
    .local v3, "pm":Landroid/content/pm/PackageManager;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/appwidget/AppWidgetProviderInfo;

    .line 962
    .local v2, "item":Landroid/appwidget/AppWidgetProviderInfo;
    iget-object v5, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget v7, v2, Landroid/appwidget/AppWidgetProviderInfo;->labelRes:I

    invoke-direct {p0, v5, v7, v3}, Landroid/content/res/Resources;->getStringName(Ljava/lang/String;ILandroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 964
    .local v4, "stringName":Ljava/lang/CharSequence;
    iget-object v5, v2, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    invoke-direct {p0, v5, v4}, Landroid/content/res/Resources;->addToAppNamesMap(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 969
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "item":Landroid/appwidget/AppWidgetProviderInfo;
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    .end local v4    # "stringName":Ljava/lang/CharSequence;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 966
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    if-eqz v0, :cond_2

    .line 967
    :try_start_1
    invoke-direct {p0, v3}, Landroid/content/res/Resources;->loadAppNames(Landroid/content/pm/PackageManager;)V

    .line 969
    :cond_2
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 971
    .end local v0    # "firstAdd":Z
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    :cond_3
    return-void
.end method

.method public addMenuItemTitle(Landroid/content/res/TypedArray;)V
    .locals 4
    .param p1, "array"    # Landroid/content/res/TypedArray;

    .prologue
    .line 870
    sget-boolean v1, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v1, :cond_0

    .line 871
    const/4 v1, 0x7

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    .line 873
    .local v0, "itemTitle":Landroid/util/TypedValue;
    if-eqz v0, :cond_0

    .line 874
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    if-lez v1, :cond_0

    .line 876
    iget-object v1, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    const-string v3, "Menu"

    invoke-direct {p0, v1, v2, v3}, Landroid/content/res/Resources;->addToMap(Ljava/lang/CharSequence;ILjava/lang/String;)V

    .line 881
    .end local v0    # "itemTitle":Landroid/util/TypedValue;
    :cond_0
    return-void
.end method

.method public addNotificationString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "stringNames"    # Ljava/lang/CharSequence;

    .prologue
    .line 1033
    sget-boolean v1, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v1, :cond_1

    .line 1034
    move-object v0, p2

    .line 1036
    .local v0, "stringName":Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    .line 1037
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringNames(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1040
    :cond_0
    if-eqz v0, :cond_1

    .line 1041
    invoke-direct {p0, p1, v0}, Landroid/content/res/Resources;->addToNotiMap(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1044
    .end local v0    # "stringName":Ljava/lang/CharSequence;
    :cond_1
    return-void
.end method

.method public addPreferenceString(Ljava/lang/CharSequence;I)V
    .locals 1
    .param p1, "value"    # Ljava/lang/CharSequence;
    .param p2, "resid"    # I

    .prologue
    .line 856
    sget-boolean v0, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 857
    const-string v0, "Pref"

    invoke-direct {p0, p1, p2, v0}, Landroid/content/res/Resources;->addToMap(Ljava/lang/CharSequence;ILjava/lang/String;)V

    .line 859
    :cond_0
    return-void
.end method

.method public final finishPreloading()V
    .locals 1

    .prologue
    .line 3952
    iget-boolean v0, p0, Landroid/content/res/Resources;->mPreloading:Z

    if-eqz v0, :cond_0

    .line 3953
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/res/Resources;->mPreloading:Z

    .line 3954
    invoke-virtual {p0}, Landroid/content/res/Resources;->flushLayoutCache()V

    .line 3956
    :cond_0
    return-void
.end method

.method public final flushLayoutCache()V
    .locals 6

    .prologue
    .line 3915
    iget-object v4, p0, Landroid/content/res/Resources;->mCachedXmlBlockIds:[I

    monitor-enter v4

    .line 3917
    :try_start_0
    iget-object v3, p0, Landroid/content/res/Resources;->mCachedXmlBlockIds:[I

    array-length v1, v3

    .line 3918
    .local v1, "num":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 3919
    iget-object v3, p0, Landroid/content/res/Resources;->mCachedXmlBlockIds:[I

    const/4 v5, 0x0

    aput v5, v3, v0

    .line 3920
    iget-object v3, p0, Landroid/content/res/Resources;->mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

    aget-object v2, v3, v0

    .line 3921
    .local v2, "oldBlock":Landroid/content/res/XmlBlock;
    if-eqz v2, :cond_0

    .line 3922
    invoke-virtual {v2}, Landroid/content/res/XmlBlock;->close()V

    .line 3924
    :cond_0
    iget-object v3, p0, Landroid/content/res/Resources;->mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

    const/4 v5, 0x0

    aput-object v5, v3, v0

    .line 3918
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3926
    .end local v2    # "oldBlock":Landroid/content/res/XmlBlock;
    :cond_1
    monitor-exit v4

    .line 3927
    return-void

    .line 3926
    .end local v0    # "i":I
    .end local v1    # "num":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getAnimation(I)Landroid/content/res/XmlResourceParser;
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 2434
    const-string v0, "anim"

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->loadXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    return-object v0
.end method

.method public getAnimatorCache()Landroid/content/res/ConfigurationBoundResourceCache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/content/res/ConfigurationBoundResourceCache",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1330
    iget-object v0, p0, Landroid/content/res/Resources;->mAnimatorCache:Landroid/content/res/ConfigurationBoundResourceCache;

    return-object v0
.end method

.method public final getAssets()Landroid/content/res/AssetManager;
    .locals 1

    .prologue
    .line 3906
    iget-object v0, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    return-object v0
.end method

.method public getBoolean(I)Z
    .locals 5
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 2317
    iget-object v2, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2318
    :try_start_0
    iget-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 2319
    .local v0, "value":Landroid/util/TypedValue;
    if-nez v0, :cond_0

    .line 2320
    new-instance v0, Landroid/util/TypedValue;

    .end local v0    # "value":Landroid/util/TypedValue;
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .restart local v0    # "value":Landroid/util/TypedValue;
    iput-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 2322
    :cond_0
    const/4 v3, 0x1

    invoke-virtual {p0, p1, v0, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 2323
    iget v3, v0, Landroid/util/TypedValue;->type:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_2

    iget v3, v0, Landroid/util/TypedValue;->type:I

    const/16 v4, 0x1f

    if-gt v3, v4, :cond_2

    .line 2325
    iget v3, v0, Landroid/util/TypedValue;->data:I

    if-eqz v3, :cond_1

    :goto_0
    monitor-exit v2

    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 2327
    :cond_2
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " type #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/util/TypedValue;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not valid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2330
    .end local v0    # "value":Landroid/util/TypedValue;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getColor(I)I
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2181
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    return v0
.end method

.method public getColor(ILandroid/content/res/Resources$Theme;)I
    .locals 6
    .param p1, "id"    # I
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 2203
    iget-object v3, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2204
    :try_start_0
    iget-object v1, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 2205
    .local v1, "value":Landroid/util/TypedValue;
    if-nez v1, :cond_0

    .line 2206
    new-instance v1, Landroid/util/TypedValue;

    .end local v1    # "value":Landroid/util/TypedValue;
    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 2208
    .restart local v1    # "value":Landroid/util/TypedValue;
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v1, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 2209
    iget v2, v1, Landroid/util/TypedValue;->type:I

    const/16 v4, 0x10

    if-lt v2, v4, :cond_1

    iget v2, v1, Landroid/util/TypedValue;->type:I

    const/16 v4, 0x1f

    if-gt v2, v4, :cond_1

    .line 2211
    iput-object v1, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 2212
    iget v2, v1, Landroid/util/TypedValue;->data:I

    monitor-exit v3

    .line 2228
    :goto_0
    return v2

    .line 2213
    :cond_1
    iget v2, v1, Landroid/util/TypedValue;->type:I

    const/4 v4, 0x3

    if-eq v2, v4, :cond_2

    .line 2214
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Resource ID #0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " type #0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/util/TypedValue;->type:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not valid"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2219
    .end local v1    # "value":Landroid/util/TypedValue;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 2218
    .restart local v1    # "value":Landroid/util/TypedValue;
    :cond_2
    const/4 v2, 0x0

    :try_start_1
    iput-object v2, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 2219
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2221
    invoke-virtual {p0, v1, p1, p2}, Landroid/content/res/Resources;->loadColorStateList(Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 2222
    .local v0, "csl":Landroid/content/res/ColorStateList;
    iget-object v3, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2223
    :try_start_2
    iget-object v2, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    if-nez v2, :cond_3

    .line 2224
    iput-object v1, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 2226
    :cond_3
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2228
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    goto :goto_0

    .line 2226
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method public getColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 4
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2251
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 2252
    .local v0, "csl":Landroid/content/res/ColorStateList;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2253
    const-string v1, "Resources"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ColorStateList "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "unresolved theme attributes! Consider using "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Resources.getColorStateList(int, Theme) or "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Context.getColorStateList(int)."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2258
    :cond_0
    return-object v0
.end method

.method public getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 4
    .param p1, "id"    # I
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 2283
    iget-object v3, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2284
    :try_start_0
    iget-object v1, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 2285
    .local v1, "value":Landroid/util/TypedValue;
    if-nez v1, :cond_1

    .line 2286
    new-instance v1, Landroid/util/TypedValue;

    .end local v1    # "value":Landroid/util/TypedValue;
    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 2290
    .restart local v1    # "value":Landroid/util/TypedValue;
    :goto_0
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v1, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 2291
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2293
    invoke-virtual {p0, v1, p1, p2}, Landroid/content/res/Resources;->loadColorStateList(Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 2294
    .local v0, "res":Landroid/content/res/ColorStateList;
    iget-object v3, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2295
    :try_start_1
    iget-object v2, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    if-nez v2, :cond_0

    .line 2296
    iput-object v1, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 2298
    :cond_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2300
    return-object v0

    .line 2288
    .end local v0    # "res":Landroid/content/res/ColorStateList;
    :cond_1
    const/4 v2, 0x0

    :try_start_2
    iput-object v2, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    goto :goto_0

    .line 2291
    .end local v1    # "value":Landroid/util/TypedValue;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 2298
    .restart local v0    # "res":Landroid/content/res/ColorStateList;
    .restart local v1    # "value":Landroid/util/TypedValue;
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method public getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;
    .locals 1

    .prologue
    .line 3673
    iget-object v0, p0, Landroid/content/res/Resources;->mCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    return-object v0
.end method

.method public getConfiguration()Landroid/content/res/Configuration;
    .locals 1

    .prologue
    .line 3662
    iget-object v0, p0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method public getDimension(I)F
    .locals 5
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1819
    iget-object v2, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1820
    :try_start_0
    iget-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 1821
    .local v0, "value":Landroid/util/TypedValue;
    if-nez v0, :cond_0

    .line 1822
    new-instance v0, Landroid/util/TypedValue;

    .end local v0    # "value":Landroid/util/TypedValue;
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .restart local v0    # "value":Landroid/util/TypedValue;
    iput-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 1824
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 1825
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x5

    if-ne v1, v3, :cond_1

    .line 1826
    iget v1, v0, Landroid/util/TypedValue;->data:I

    iget-object v3, p0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v1, v3}, Landroid/util/TypedValue;->complexToDimension(ILandroid/util/DisplayMetrics;)F

    move-result v1

    monitor-exit v2

    return v1

    .line 1828
    :cond_1
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " type #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/util/TypedValue;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not valid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1831
    .end local v0    # "value":Landroid/util/TypedValue;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getDimensionPixelOffset(I)I
    .locals 5
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1878
    iget-object v2, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1879
    :try_start_0
    iget-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 1880
    .local v0, "value":Landroid/util/TypedValue;
    if-nez v0, :cond_0

    .line 1881
    new-instance v0, Landroid/util/TypedValue;

    .end local v0    # "value":Landroid/util/TypedValue;
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .restart local v0    # "value":Landroid/util/TypedValue;
    iput-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 1883
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 1884
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x5

    if-ne v1, v3, :cond_1

    .line 1885
    iget v1, v0, Landroid/util/TypedValue;->data:I

    iget-object v3, p0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v1, v3}, Landroid/util/TypedValue;->complexToDimensionPixelOffset(ILandroid/util/DisplayMetrics;)I

    move-result v1

    monitor-exit v2

    return v1

    .line 1888
    :cond_1
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " type #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/util/TypedValue;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not valid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1891
    .end local v0    # "value":Landroid/util/TypedValue;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getDimensionPixelSize(I)I
    .locals 5
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1915
    iget-object v2, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1916
    :try_start_0
    iget-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 1917
    .local v0, "value":Landroid/util/TypedValue;
    if-nez v0, :cond_0

    .line 1918
    new-instance v0, Landroid/util/TypedValue;

    .end local v0    # "value":Landroid/util/TypedValue;
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .restart local v0    # "value":Landroid/util/TypedValue;
    iput-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 1920
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 1921
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x5

    if-ne v1, v3, :cond_1

    .line 1922
    iget v1, v0, Landroid/util/TypedValue;->data:I

    iget-object v3, p0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v1, v3}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v1

    monitor-exit v2

    return v1

    .line 1925
    :cond_1
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " type #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/util/TypedValue;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not valid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1928
    .end local v0    # "value":Landroid/util/TypedValue;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getDisplayMetrics()Landroid/util/DisplayMetrics;
    .locals 1

    .prologue
    .line 3621
    iget-object v0, p0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    return-object v0
.end method

.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1999
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2000
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2001
    const-string v1, "Resources"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Drawable "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has unresolved theme "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "attributes! Consider using Resources.getDrawable(int, Theme) or "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Context.getDrawable(int)."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2005
    :cond_0
    return-object v0
.end method

.method public getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "id"    # I
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 2025
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getDrawable(ILandroid/content/res/Resources$Theme;Z)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "id"    # I
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .param p3, "force"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 2032
    iget-object v3, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2033
    :try_start_0
    iget-object v1, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 2034
    .local v1, "value":Landroid/util/TypedValue;
    if-nez v1, :cond_2

    .line 2035
    new-instance v1, Landroid/util/TypedValue;

    .end local v1    # "value":Landroid/util/TypedValue;
    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 2039
    .restart local v1    # "value":Landroid/util/TypedValue;
    :goto_0
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v1, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 2040
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2043
    invoke-virtual {p0, v1, p1, p2, p3}, Landroid/content/res/Resources;->loadDrawable(Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2045
    .local v0, "res":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 2046
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setImagePath(Landroid/util/TypedValue;)V

    .line 2048
    :cond_0
    iget-object v3, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2049
    :try_start_1
    iget-object v2, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    if-nez v2, :cond_1

    .line 2050
    iput-object v1, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 2052
    :cond_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2053
    return-object v0

    .line 2037
    .end local v0    # "res":Landroid/graphics/drawable/Drawable;
    :cond_2
    const/4 v2, 0x0

    :try_start_2
    iput-object v2, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    goto :goto_0

    .line 2040
    .end local v1    # "value":Landroid/util/TypedValue;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 2052
    .restart local v0    # "res":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "value":Landroid/util/TypedValue;
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method public getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "id"    # I
    .param p2, "density"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2085
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/res/Resources;->getDrawableForDensity(IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getDrawableForDensity(IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1, "id"    # I
    .param p2, "density"    # I
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;

    .prologue
    .line 2105
    iget-object v4, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2106
    :try_start_0
    iget-object v0, p0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    .line 2107
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget-object v2, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 2108
    .local v2, "value":Landroid/util/TypedValue;
    if-nez v2, :cond_3

    .line 2109
    new-instance v2, Landroid/util/TypedValue;

    .end local v2    # "value":Landroid/util/TypedValue;
    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 2113
    .restart local v2    # "value":Landroid/util/TypedValue;
    :goto_0
    const/4 v3, 0x1

    invoke-virtual {p0, p1, p2, v2, v3}, Landroid/content/res/Resources;->getValueForDensity(IILandroid/util/TypedValue;Z)V

    .line 2122
    iget v3, v2, Landroid/util/TypedValue;->density:I

    if-lez v3, :cond_0

    iget v3, v2, Landroid/util/TypedValue;->density:I

    const v5, 0xffff

    if-eq v3, v5, :cond_0

    .line 2123
    iget v3, v2, Landroid/util/TypedValue;->density:I

    if-ne v3, p2, :cond_4

    .line 2124
    iget v3, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v3, v2, Landroid/util/TypedValue;->density:I

    .line 2129
    :cond_0
    :goto_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2131
    invoke-virtual {p0, v2, p1, p3}, Landroid/content/res/Resources;->loadDrawable(Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2132
    .local v1, "res":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    .line 2133
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setImagePath(Landroid/util/TypedValue;)V

    .line 2135
    :cond_1
    iget-object v4, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2136
    :try_start_1
    iget-object v3, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    if-nez v3, :cond_2

    .line 2137
    iput-object v2, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 2139
    :cond_2
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2140
    return-object v1

    .line 2111
    .end local v1    # "res":Landroid/graphics/drawable/Drawable;
    :cond_3
    const/4 v3, 0x0

    :try_start_2
    iput-object v3, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    goto :goto_0

    .line 2129
    .end local v0    # "dm":Landroid/util/DisplayMetrics;
    .end local v2    # "value":Landroid/util/TypedValue;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 2126
    .restart local v0    # "dm":Landroid/util/DisplayMetrics;
    .restart local v2    # "value":Landroid/util/TypedValue;
    :cond_4
    :try_start_3
    iget v3, v2, Landroid/util/TypedValue;->density:I

    iget v5, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    mul-int/2addr v3, v5

    div-int/2addr v3, p2

    iput v3, v2, Landroid/util/TypedValue;->density:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 2139
    .restart local v1    # "res":Landroid/graphics/drawable/Drawable;
    :catchall_1
    move-exception v3

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v3
.end method

.method public getFloat(I)F
    .locals 5
    .param p1, "id"    # I

    .prologue
    .line 2375
    iget-object v2, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2376
    :try_start_0
    iget-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 2377
    .local v0, "value":Landroid/util/TypedValue;
    if-nez v0, :cond_0

    .line 2378
    new-instance v0, Landroid/util/TypedValue;

    .end local v0    # "value":Landroid/util/TypedValue;
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .restart local v0    # "value":Landroid/util/TypedValue;
    iput-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 2380
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 2381
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1

    .line 2382
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    monitor-exit v2

    return v1

    .line 2384
    :cond_1
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " type #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/util/TypedValue;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not valid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2386
    .end local v0    # "value":Landroid/util/TypedValue;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getFraction(III)F
    .locals 5
    .param p1, "id"    # I
    .param p2, "base"    # I
    .param p3, "pbase"    # I

    .prologue
    .line 1949
    iget-object v2, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1950
    :try_start_0
    iget-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 1951
    .local v0, "value":Landroid/util/TypedValue;
    if-nez v0, :cond_0

    .line 1952
    new-instance v0, Landroid/util/TypedValue;

    .end local v0    # "value":Landroid/util/TypedValue;
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .restart local v0    # "value":Landroid/util/TypedValue;
    iput-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 1954
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 1955
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x6

    if-ne v1, v3, :cond_1

    .line 1956
    iget v1, v0, Landroid/util/TypedValue;->data:I

    int-to-float v3, p2

    int-to-float v4, p3

    invoke-static {v1, v3, v4}, Landroid/util/TypedValue;->complexToFraction(IFF)F

    move-result v1

    monitor-exit v2

    return v1

    .line 1958
    :cond_1
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " type #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/util/TypedValue;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not valid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1961
    .end local v0    # "value":Landroid/util/TypedValue;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defType"    # Ljava/lang/String;
    .param p3, "defPackage"    # Ljava/lang/String;

    .prologue
    .line 3708
    if-nez p1, :cond_0

    .line 3709
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "name is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3712
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 3716
    :goto_0
    return v0

    .line 3713
    :catch_0
    move-exception v0

    .line 3716
    iget-object v0, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/res/AssetManager;->getResourceIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getIntArray(I)[I
    .locals 5
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1760
    iget-object v2, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v2, p1}, Landroid/content/res/AssetManager;->getArrayIntResource(I)[I

    move-result-object v1

    .line 1761
    .local v1, "res":[I
    if-eqz v1, :cond_0

    .line 1762
    sget-boolean v2, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v2, :cond_1

    array-length v2, v1

    if-lez v2, :cond_1

    .line 1763
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 1764
    aget v2, v1, v0

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IntPoz="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, p1, v3}, Landroid/content/res/Resources;->addToMap(Ljava/lang/CharSequence;ILjava/lang/String;)V

    .line 1763
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1769
    .end local v0    # "i":I
    :cond_0
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Int array resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1767
    :cond_1
    return-object v1
.end method

.method public getInteger(I)I
    .locals 5
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 2345
    iget-object v2, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2346
    :try_start_0
    iget-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 2347
    .local v0, "value":Landroid/util/TypedValue;
    if-nez v0, :cond_0

    .line 2348
    new-instance v0, Landroid/util/TypedValue;

    .end local v0    # "value":Landroid/util/TypedValue;
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .restart local v0    # "value":Landroid/util/TypedValue;
    iput-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 2350
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 2351
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/16 v3, 0x10

    if-lt v1, v3, :cond_1

    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/16 v3, 0x1f

    if-gt v1, v3, :cond_1

    .line 2353
    iget v1, v0, Landroid/util/TypedValue;->data:I

    monitor-exit v2

    return v1

    .line 2355
    :cond_1
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " type #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/util/TypedValue;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not valid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2358
    .end local v0    # "value":Landroid/util/TypedValue;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getLayout(I)Landroid/content/res/XmlResourceParser;
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 2410
    const-string/jumbo v0, "layout"

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->loadXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    return-object v0
.end method

.method public getMovie(I)Landroid/graphics/Movie;
    .locals 3
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 2152
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 2153
    .local v0, "is":Ljava/io/InputStream;
    invoke-static {v0}, Landroid/graphics/Movie;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;

    move-result-object v1

    .line 2155
    .local v1, "movie":Landroid/graphics/Movie;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2160
    :goto_0
    return-object v1

    .line 2157
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getPreloadedDrawables()Landroid/util/LongSparseArray;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3962
    sget-object v0, Landroid/content/res/Resources;->sPreloadedDrawables:[Landroid/util/LongSparseArray;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getQuantityString(II)Ljava/lang/String;
    .locals 1
    .param p1, "id"    # I
    .param p2, "quantity"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1672
    invoke-virtual {p0, p1, p2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p1, "id"    # I
    .param p2, "quantity"    # I
    .param p3, "formatArgs"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1642
    invoke-virtual {p0, p1, p2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1643
    .local v1, "raw":Ljava/lang/String;
    iget-object v2, p0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v2, v1, p3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1644
    .local v0, "formatted":Ljava/lang/String;
    sget-boolean v2, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v2, :cond_0

    .line 1645
    invoke-direct {p0, p1, v0, p3}, Landroid/content/res/Resources;->addFormattedString(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 1647
    :cond_0
    return-object v0
.end method

.method public getQuantityText(II)Ljava/lang/CharSequence;
    .locals 7
    .param p1, "id"    # I
    .param p2, "quantity"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    const v6, 0x1000004

    .line 1508
    invoke-direct {p0}, Landroid/content/res/Resources;->getPluralRule()Llibcore/icu/NativePluralRules;

    move-result-object v3

    .line 1509
    .local v3, "rule":Llibcore/icu/NativePluralRules;
    iget-object v4, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v3, p2}, Llibcore/icu/NativePluralRules;->quantityForInt(I)I

    move-result v5

    invoke-static {v5}, Landroid/content/res/Resources;->attrForQuantityCode(I)I

    move-result v5

    invoke-virtual {v4, p1, v5}, Landroid/content/res/AssetManager;->getResourceBagText(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1511
    .local v1, "res":Ljava/lang/CharSequence;
    if-eqz v1, :cond_1

    .line 1512
    sget-boolean v4, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v4, :cond_0

    .line 1513
    invoke-static {p2}, Landroid/content/res/Resources;->stringForQuantityCode(I)Ljava/lang/String;

    move-result-object v0

    .line 1514
    .local v0, "quantityCode":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Quantity="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, p1, v4}, Landroid/content/res/Resources;->addToMap(Ljava/lang/CharSequence;ILjava/lang/String;)V

    .end local v0    # "quantityCode":Ljava/lang/String;
    :cond_0
    move-object v2, v1

    .line 1524
    .end local v1    # "res":Ljava/lang/CharSequence;
    .local v2, "res":Ljava/lang/CharSequence;
    :goto_0
    return-object v2

    .line 1518
    .end local v2    # "res":Ljava/lang/CharSequence;
    .restart local v1    # "res":Ljava/lang/CharSequence;
    :cond_1
    iget-object v4, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v4, p1, v6}, Landroid/content/res/AssetManager;->getResourceBagText(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1519
    if-eqz v1, :cond_3

    .line 1520
    sget-boolean v4, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v4, :cond_2

    .line 1521
    invoke-static {v6}, Landroid/content/res/Resources;->stringForQuantityCode(I)Ljava/lang/String;

    move-result-object v0

    .line 1522
    .restart local v0    # "quantityCode":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "QuantityIdOther="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, p1, v4}, Landroid/content/res/Resources;->addToMap(Ljava/lang/CharSequence;ILjava/lang/String;)V

    .end local v0    # "quantityCode":Ljava/lang/String;
    :cond_2
    move-object v2, v1

    .line 1524
    .end local v1    # "res":Ljava/lang/CharSequence;
    .restart local v2    # "res":Ljava/lang/CharSequence;
    goto :goto_0

    .line 1526
    .end local v2    # "res":Ljava/lang/CharSequence;
    .restart local v1    # "res":Ljava/lang/CharSequence;
    :cond_3
    new-instance v4, Landroid/content/res/Resources$NotFoundException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Plural resource ID #0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " quantity="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " item="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3, p2}, Llibcore/icu/NativePluralRules;->quantityForInt(I)I

    move-result v6

    invoke-static {v6}, Landroid/content/res/Resources;->stringForQuantityCode(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getResourceEntryName(I)Ljava/lang/String;
    .locals 4
    .param p1, "resid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 3800
    iget-object v1, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    .line 3801
    .local v0, "str":Ljava/lang/String;
    if-eqz v0, :cond_0

    return-object v0

    .line 3802
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getResourceName(I)Ljava/lang/String;
    .locals 4
    .param p1, "resid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 3743
    iget-object v1, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 3744
    .local v0, "str":Ljava/lang/String;
    if-eqz v0, :cond_0

    return-object v0

    .line 3745
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getResourcePackageName(I)Ljava/lang/String;
    .locals 4
    .param p1, "resid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 3762
    iget-object v1, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v0

    .line 3763
    .local v0, "str":Ljava/lang/String;
    if-eqz v0, :cond_0

    return-object v0

    .line 3764
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getResourceTypeName(I)Ljava/lang/String;
    .locals 4
    .param p1, "resid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 3781
    iget-object v1, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v0

    .line 3782
    .local v0, "str":Ljava/lang/String;
    if-eqz v0, :cond_0

    return-object v0

    .line 3783
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getStateListAnimatorCache()Landroid/content/res/ConfigurationBoundResourceCache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/content/res/ConfigurationBoundResourceCache",
            "<",
            "Landroid/animation/StateListAnimator;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1339
    iget-object v0, p0, Landroid/content/res/Resources;->mStateListAnimatorCache:Landroid/content/res/ConfigurationBoundResourceCache;

    return-object v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 4
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1578
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1579
    .local v0, "res":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 1580
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1582
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "String resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public varargs getString(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p1, "id"    # I
    .param p2, "formatArgs"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1607
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1608
    .local v1, "raw":Ljava/lang/String;
    iget-object v2, p0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v2, v1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1609
    .local v0, "formatted":Ljava/lang/String;
    sget-boolean v2, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v2, :cond_0

    .line 1610
    invoke-direct {p0, p1, v0, p2}, Landroid/content/res/Resources;->addFormattedString(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 1612
    :cond_0
    return-object v0
.end method

.method public getStringArray(I)[Ljava/lang/String;
    .locals 5
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1735
    iget-object v2, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v2, p1}, Landroid/content/res/AssetManager;->getResourceStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 1736
    .local v1, "res":[Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1737
    sget-boolean v2, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v2, :cond_1

    array-length v2, v1

    if-lez v2, :cond_1

    .line 1738
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 1739
    aget-object v2, v1, v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "StringPoz="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, p1, v3}, Landroid/content/res/Resources;->addToMap(Ljava/lang/CharSequence;ILjava/lang/String;)V

    .line 1738
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1744
    .end local v0    # "i":I
    :cond_0
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "String array resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1742
    :cond_1
    return-object v1
.end method

.method public getStringNames(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 837
    sget-boolean v0, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 838
    invoke-direct {p0, p1}, Landroid/content/res/Resources;->searchFor(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 840
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getText(I)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1475
    iget-object v1, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->getResourceText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1476
    .local v0, "res":Ljava/lang/CharSequence;
    if-eqz v0, :cond_1

    .line 1477
    sget-boolean v1, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v1, :cond_0

    .line 1478
    const-string v1, "Text"

    invoke-direct {p0, v0, p1, v1}, Landroid/content/res/Resources;->addToMap(Ljava/lang/CharSequence;ILjava/lang/String;)V

    .line 1480
    :cond_0
    return-object v0

    .line 1482
    :cond_1
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "String resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "id"    # I
    .param p2, "def"    # Ljava/lang/CharSequence;

    .prologue
    .line 1690
    if-eqz p1, :cond_1

    iget-object v1, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->getResourceText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1691
    .local v0, "res":Ljava/lang/CharSequence;
    :goto_0
    sget-boolean v1, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 1692
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Def="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Landroid/content/res/Resources;->addToMap(Ljava/lang/CharSequence;ILjava/lang/String;)V

    .line 1694
    :cond_0
    if-eqz v0, :cond_2

    .end local v0    # "res":Ljava/lang/CharSequence;
    :goto_1
    return-object v0

    .line 1690
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .restart local v0    # "res":Ljava/lang/CharSequence;
    :cond_2
    move-object v0, p2

    .line 1694
    goto :goto_1
.end method

.method public getTextArray(I)[Ljava/lang/CharSequence;
    .locals 5
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1709
    iget-object v2, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v2, p1}, Landroid/content/res/AssetManager;->getResourceTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    .line 1710
    .local v1, "res":[Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    .line 1711
    sget-boolean v2, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v2, :cond_1

    array-length v2, v1

    if-lez v2, :cond_1

    .line 1712
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 1713
    aget-object v2, v1, v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TextPoz="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, p1, v3}, Landroid/content/res/Resources;->addToMap(Ljava/lang/CharSequence;ILjava/lang/String;)V

    .line 1712
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1718
    .end local v0    # "i":I
    :cond_0
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Text array resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1716
    :cond_1
    return-object v1
.end method

.method public getValue(ILandroid/util/TypedValue;Z)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "outValue"    # Landroid/util/TypedValue;
    .param p3, "resolveRefs"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 2592
    iget-object v1, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, p2, p3}, Landroid/content/res/AssetManager;->getResourceValue(IILandroid/util/TypedValue;Z)Z

    move-result v0

    .line 2593
    .local v0, "found":Z
    if-eqz v0, :cond_0

    .line 2594
    return-void

    .line 2596
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getValue(Ljava/lang/String;Landroid/util/TypedValue;Z)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "outValue"    # Landroid/util/TypedValue;
    .param p3, "resolveRefs"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 2644
    const-string/jumbo v1, "string"

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 2645
    .local v0, "id":I
    if-eqz v0, :cond_0

    .line 2646
    invoke-virtual {p0, v0, p2, p3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 2647
    return-void

    .line 2649
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "String resource name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getValueForDensity(IILandroid/util/TypedValue;Z)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "density"    # I
    .param p3, "outValue"    # Landroid/util/TypedValue;
    .param p4, "resolveRefs"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 2615
    iget-object v1, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/content/res/AssetManager;->getResourceValue(IILandroid/util/TypedValue;Z)Z

    move-result v0

    .line 2616
    .local v0, "found":Z
    if-eqz v0, :cond_0

    .line 2617
    return-void

    .line 2619
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getXml(I)Landroid/content/res/XmlResourceParser;
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 2459
    const-string/jumbo v0, "xml"

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->loadXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    return-object v0
.end method

.method public isStoringRL()I
    .locals 1

    .prologue
    .line 1449
    sget v0, Landroid/content/res/Resources;->mStartStoringRL:I

    return v0
.end method

.method loadColorStateList(Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 11
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "id"    # I
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 4320
    iget v3, p1, Landroid/util/TypedValue;->assetCookie:I

    int-to-long v6, v3

    const/16 v3, 0x20

    shl-long/2addr v6, v3

    iget v3, p1, Landroid/util/TypedValue;->data:I

    int-to-long v8, v3

    or-long v4, v6, v8

    .line 4325
    .local v4, "key":J
    iget v3, p1, Landroid/util/TypedValue;->type:I

    const/16 v6, 0x1c

    if-lt v3, v6, :cond_2

    iget v3, p1, Landroid/util/TypedValue;->type:I

    const/16 v6, 0x1f

    if-gt v3, v6, :cond_2

    .line 4327
    sget-object v3, Landroid/content/res/Resources;->sPreloadedColorStateLists:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/ConstantState;

    .line 4329
    .local v2, "factory":Landroid/content/res/ConstantState;, "Landroid/content/res/ConstantState<Landroid/content/res/ColorStateList;>;"
    if-eqz v2, :cond_1

    .line 4330
    invoke-virtual {v2}, Landroid/content/res/ConstantState;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/ColorStateList;

    move-object v1, v3

    .line 4372
    .end local v2    # "factory":Landroid/content/res/ConstantState;, "Landroid/content/res/ConstantState<Landroid/content/res/ColorStateList;>;"
    :cond_0
    :goto_0
    return-object v1

    .line 4333
    .restart local v2    # "factory":Landroid/content/res/ConstantState;, "Landroid/content/res/ConstantState<Landroid/content/res/ColorStateList;>;"
    :cond_1
    iget v3, p1, Landroid/util/TypedValue;->data:I

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 4335
    .local v1, "csl":Landroid/content/res/ColorStateList;
    iget-boolean v3, p0, Landroid/content/res/Resources;->mPreloading:Z

    if-eqz v3, :cond_0

    .line 4336
    iget v3, p1, Landroid/util/TypedValue;->changingConfigurations:I

    iget v6, p1, Landroid/util/TypedValue;->resourceId:I

    const-string v7, "color"

    invoke-direct {p0, v3, v10, v6, v7}, Landroid/content/res/Resources;->verifyPreloadConfig(IIILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4338
    sget-object v3, Landroid/content/res/Resources;->sPreloadedColorStateLists:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getConstantState()Landroid/content/res/ConstantState;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    .line 4345
    .end local v1    # "csl":Landroid/content/res/ColorStateList;
    .end local v2    # "factory":Landroid/content/res/ConstantState;, "Landroid/content/res/ConstantState<Landroid/content/res/ColorStateList;>;"
    :cond_2
    iget-object v0, p0, Landroid/content/res/Resources;->mColorStateListCache:Landroid/content/res/ConfigurationBoundResourceCache;

    .line 4346
    .local v0, "cache":Landroid/content/res/ConfigurationBoundResourceCache;, "Landroid/content/res/ConfigurationBoundResourceCache<Landroid/content/res/ColorStateList;>;"
    invoke-virtual {v0, v4, v5, p3}, Landroid/content/res/ConfigurationBoundResourceCache;->getInstance(JLandroid/content/res/Resources$Theme;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/ColorStateList;

    .line 4347
    .restart local v1    # "csl":Landroid/content/res/ColorStateList;
    if-nez v1, :cond_0

    .line 4351
    sget-object v3, Landroid/content/res/Resources;->sPreloadedColorStateLists:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/ConstantState;

    .line 4353
    .restart local v2    # "factory":Landroid/content/res/ConstantState;, "Landroid/content/res/ConstantState<Landroid/content/res/ColorStateList;>;"
    if-eqz v2, :cond_3

    .line 4354
    invoke-virtual {v2, p0, p3}, Landroid/content/res/ConstantState;->newInstance(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "csl":Landroid/content/res/ColorStateList;
    check-cast v1, Landroid/content/res/ColorStateList;

    .line 4357
    .restart local v1    # "csl":Landroid/content/res/ColorStateList;
    :cond_3
    if-nez v1, :cond_4

    .line 4358
    invoke-direct {p0, p1, p2, p3}, Landroid/content/res/Resources;->loadColorStateListForCookie(Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 4361
    :cond_4
    if-eqz v1, :cond_0

    .line 4362
    iget-boolean v3, p0, Landroid/content/res/Resources;->mPreloading:Z

    if-eqz v3, :cond_5

    .line 4363
    iget v3, p1, Landroid/util/TypedValue;->changingConfigurations:I

    iget v6, p1, Landroid/util/TypedValue;->resourceId:I

    const-string v7, "color"

    invoke-direct {p0, v3, v10, v6, v7}, Landroid/content/res/Resources;->verifyPreloadConfig(IIILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4365
    sget-object v3, Landroid/content/res/Resources;->sPreloadedColorStateLists:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getConstantState()Landroid/content/res/ConstantState;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    .line 4368
    :cond_5
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getConstantState()Landroid/content/res/ConstantState;

    move-result-object v3

    invoke-virtual {v0, v4, v5, p3, v3}, Landroid/content/res/ConfigurationBoundResourceCache;->put(JLandroid/content/res/Resources$Theme;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method loadDrawable(Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "id"    # I
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 4003
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/content/res/Resources;->loadDrawable(Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method loadDrawable(Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;Z)Landroid/graphics/drawable/Drawable;
    .locals 26
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "id"    # I
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;
    .param p4, "force"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 4018
    move-object/from16 v0, p0

    iget v4, v0, Landroid/content/res/Resources;->mAppIconResId:I

    move/from16 v0, p2

    if-ne v0, v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/res/Resources;->mPackageName:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 4020
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/sec/enterprise/ApplicationPolicy;

    move-result-object v13

    .line 4021
    .local v13, "appPolicy":Landroid/sec/enterprise/ApplicationPolicy;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/res/Resources;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/content/res/Resources;->mUserId:I

    invoke-virtual {v13, v4, v5}, Landroid/sec/enterprise/ApplicationPolicy;->getApplicationIconFromDb(Ljava/lang/String;I)[B

    move-result-object v18

    .line 4022
    .local v18, "imageData":[B
    const/16 v16, 0x0

    .line 4023
    .local v16, "drw":Landroid/graphics/drawable/Drawable;
    if-eqz v18, :cond_0

    .line 4024
    new-instance v19, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 4026
    .local v19, "is":Ljava/io/ByteArrayInputStream;
    new-instance v22, Landroid/util/TypedValue;

    invoke-direct/range {v22 .. v22}, Landroid/util/TypedValue;-><init>()V

    .line 4027
    .local v22, "typedValue":Landroid/util/TypedValue;
    const/4 v4, 0x0

    move-object/from16 v0, v22

    iput v4, v0, Landroid/util/TypedValue;->density:I

    .line 4029
    new-instance v21, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 4030
    .local v21, "opts":Landroid/graphics/BitmapFactory$Options;
    invoke-virtual/range {p0 .. p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->densityDpi:I

    move-object/from16 v0, v21

    iput v4, v0, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 4032
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v19

    move-object/from16 v3, v21

    invoke-static {v0, v1, v2, v4, v3}, Landroid/graphics/drawable/Drawable;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    .line 4034
    const-string v4, "Resources"

    const-string v5, "EDM:ApplicationIcon got from EDM database "

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4178
    .end local v13    # "appPolicy":Landroid/sec/enterprise/ApplicationPolicy;
    .end local v16    # "drw":Landroid/graphics/drawable/Drawable;
    .end local v18    # "imageData":[B
    .end local v19    # "is":Ljava/io/ByteArrayInputStream;
    .end local v21    # "opts":Landroid/graphics/BitmapFactory$Options;
    .end local v22    # "typedValue":Landroid/util/TypedValue;
    :goto_0
    return-object v16

    .line 4039
    :catch_0
    move-exception v17

    .line 4040
    .local v17, "e":Ljava/lang/Exception;
    const-string v4, "Resources"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EDM: Get Icon EX: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4048
    .end local v17    # "e":Ljava/lang/Exception;
    :cond_0
    move-object/from16 v0, p1

    iget v4, v0, Landroid/util/TypedValue;->type:I

    const/16 v5, 0x1c

    if-lt v4, v5, :cond_1

    move-object/from16 v0, p1

    iget v4, v0, Landroid/util/TypedValue;->type:I

    const/16 v5, 0x1f

    if-gt v4, v5, :cond_1

    .line 4050
    const/4 v6, 0x1

    .line 4051
    .local v6, "isColorDrawable":Z
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/content/res/Resources;->mColorDrawableCache:Landroid/content/res/DrawableCache;

    .line 4052
    .local v7, "caches":Landroid/content/res/DrawableCache;
    move-object/from16 v0, p1

    iget v4, v0, Landroid/util/TypedValue;->data:I

    int-to-long v10, v4

    .line 4061
    .local v10, "key":J
    :goto_1
    const/16 v20, 0x0

    .line 4062
    .local v20, "mDR":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/content/res/Resources;->mPreloading:Z

    if-nez v4, :cond_2

    .line 4084
    move-object/from16 v0, p3

    invoke-virtual {v7, v10, v11, v0}, Landroid/content/res/DrawableCache;->getInstance(JLandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 4085
    .local v14, "cachedDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v14, :cond_2

    move-object/from16 v16, v14

    .line 4086
    goto :goto_0

    .line 4054
    .end local v6    # "isColorDrawable":Z
    .end local v7    # "caches":Landroid/content/res/DrawableCache;
    .end local v10    # "key":J
    .end local v14    # "cachedDrawable":Landroid/graphics/drawable/Drawable;
    .end local v20    # "mDR":Landroid/graphics/drawable/Drawable;
    :cond_1
    const/4 v6, 0x0

    .line 4055
    .restart local v6    # "isColorDrawable":Z
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/content/res/Resources;->mDrawableCache:Landroid/content/res/DrawableCache;

    .line 4056
    .restart local v7    # "caches":Landroid/content/res/DrawableCache;
    move-object/from16 v0, p1

    iget v4, v0, Landroid/util/TypedValue;->assetCookie:I

    int-to-long v4, v4

    const/16 v8, 0x20

    shl-long/2addr v4, v8

    move-object/from16 v0, p1

    iget v8, v0, Landroid/util/TypedValue;->data:I

    int-to-long v0, v8

    move-wide/from16 v24, v0

    or-long v10, v4, v24

    .restart local v10    # "key":J
    goto :goto_1

    .line 4140
    .restart local v20    # "mDR":Landroid/graphics/drawable/Drawable;
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->densityDpi:I

    sget v5, Landroid/content/res/Resources;->sPreloadedDensity:I

    if-eq v4, v5, :cond_5

    .line 4141
    const/4 v15, 0x0

    .line 4152
    .local v15, "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    :goto_2
    if-eqz v15, :cond_7

    if-nez p4, :cond_7

    .line 4154
    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 4164
    .local v12, "dr":Landroid/graphics/drawable/Drawable;
    :goto_3
    if-eqz v12, :cond_9

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    move-result v4

    if-eqz v4, :cond_9

    const/4 v9, 0x1

    .line 4165
    .local v9, "canApplyTheme":Z
    :goto_4
    if-eqz v9, :cond_3

    if-eqz p3, :cond_3

    .line 4166
    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 4167
    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 4168
    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->clearMutated()V

    .line 4173
    :cond_3
    if-eqz v12, :cond_4

    .line 4174
    move-object/from16 v0, p1

    iget v4, v0, Landroid/util/TypedValue;->changingConfigurations:I

    invoke-virtual {v12, v4}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v8, p3

    .line 4175
    invoke-direct/range {v4 .. v12}, Landroid/content/res/Resources;->cacheDrawable(Landroid/util/TypedValue;ZLandroid/content/res/DrawableCache;Landroid/content/res/Resources$Theme;ZJLandroid/graphics/drawable/Drawable;)V

    :cond_4
    move-object/from16 v16, v12

    .line 4178
    goto/16 :goto_0

    .line 4142
    .end local v9    # "canApplyTheme":Z
    .end local v12    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v15    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_5
    if-eqz v6, :cond_6

    .line 4144
    sget-object v4, Landroid/content/res/Resources;->sPreloadedColorDrawables:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v10, v11}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/graphics/drawable/Drawable$ConstantState;

    .restart local v15    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    goto :goto_2

    .line 4146
    .end local v15    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_6

    move-object/from16 v0, p0

    move/from16 v1, p2
  
    invoke-virtual {v0, v10, v11, v1}, Landroid/content/res/Resources;->getPreloadedDrawable(JI)Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v15

    .restart local v15    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    goto :goto_2

    .line 4155
    :cond_7
    if-eqz v6, :cond_8

    .line 4156
    new-instance v12, Landroid/graphics/drawable/ColorDrawable;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/util/TypedValue;->data:I

    invoke-direct {v12, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .restart local v12    # "dr":Landroid/graphics/drawable/Drawable;
    goto :goto_3

    .line 4158
    .end local v12    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_8
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v4}, Landroid/content/res/Resources;->loadDrawableForCookie(Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .restart local v12    # "dr":Landroid/graphics/drawable/Drawable;
    goto :goto_3

    .line 4164
    :cond_9
    const/4 v9, 0x0

    goto :goto_4
.end method

.method loadXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;
    .locals 5
    .param p1, "id"    # I
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 4428
    iget-object v2, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4429
    :try_start_0
    iget-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 4430
    .local v0, "value":Landroid/util/TypedValue;
    if-nez v0, :cond_0

    .line 4431
    new-instance v0, Landroid/util/TypedValue;

    .end local v0    # "value":Landroid/util/TypedValue;
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .restart local v0    # "value":Landroid/util/TypedValue;
    iput-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 4433
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 4434
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_1

    .line 4435
    iget-object v1, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget v3, v0, Landroid/util/TypedValue;->assetCookie:I

    invoke-virtual {p0, v1, p1, v3, p2}, Landroid/content/res/Resources;->loadXmlResourceParser(Ljava/lang/String;IILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 4438
    :cond_1
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " type #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/util/TypedValue;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not valid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4441
    .end local v0    # "value":Landroid/util/TypedValue;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method loadXmlResourceParser(Ljava/lang/String;IILjava/lang/String;)Landroid/content/res/XmlResourceParser;
    .locals 11
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "assetCookie"    # I
    .param p4, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 4446
    if-eqz p2, :cond_7

    .line 4449
    :try_start_0
    iget-object v9, p0, Landroid/content/res/Resources;->mCachedXmlBlockIds:[I

    monitor-enter v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4451
    :try_start_1
    iget-object v8, p0, Landroid/content/res/Resources;->mCachedXmlBlockIds:[I

    array-length v3, v8

    .line 4452
    .local v3, "num":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 4453
    iget-object v8, p0, Landroid/content/res/Resources;->mCachedXmlBlockIds:[I

    aget v8, v8, v2

    if-ne v8, p2, :cond_1

    .line 4456
    iget-object v8, p0, Landroid/content/res/Resources;->mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

    aget-object v8, v8, v2

    invoke-virtual {v8}, Landroid/content/res/XmlBlock;->newParser()Landroid/content/res/XmlResourceParser;

    move-result-object v6

    .line 4457
    .local v6, "result":Landroid/content/res/XmlResourceParser;
    if-eqz v6, :cond_0

    .line 4458
    invoke-interface {v6, p1}, Landroid/content/res/XmlResourceParser;->setFilePath(Ljava/lang/String;)V

    .line 4460
    :cond_0
    monitor-exit v9

    .line 4484
    :goto_1
    return-object v6

    .line 4452
    .end local v6    # "result":Landroid/content/res/XmlResourceParser;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4466
    :cond_2
    iget-object v8, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v8, p3, p1}, Landroid/content/res/AssetManager;->openXmlBlockAsset(ILjava/lang/String;)Landroid/content/res/XmlBlock;

    move-result-object v0

    .line 4468
    .local v0, "block":Landroid/content/res/XmlBlock;
    if-eqz v0, :cond_6

    .line 4469
    iget v8, p0, Landroid/content/res/Resources;->mLastCachedXmlBlockIndex:I

    add-int/lit8 v5, v8, 0x1

    .line 4470
    .local v5, "pos":I
    if-lt v5, v3, :cond_3

    const/4 v5, 0x0

    .line 4471
    :cond_3
    iput v5, p0, Landroid/content/res/Resources;->mLastCachedXmlBlockIndex:I

    .line 4472
    iget-object v8, p0, Landroid/content/res/Resources;->mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

    aget-object v4, v8, v5

    .line 4473
    .local v4, "oldBlock":Landroid/content/res/XmlBlock;
    if-eqz v4, :cond_4

    .line 4474
    invoke-virtual {v4}, Landroid/content/res/XmlBlock;->close()V

    .line 4476
    :cond_4
    iget-object v8, p0, Landroid/content/res/Resources;->mCachedXmlBlockIds:[I

    aput p2, v8, v5

    .line 4477
    iget-object v8, p0, Landroid/content/res/Resources;->mCachedXmlBlocks:[Landroid/content/res/XmlBlock;

    aput-object v0, v8, v5

    .line 4480
    invoke-virtual {v0}, Landroid/content/res/XmlBlock;->newParser()Landroid/content/res/XmlResourceParser;

    move-result-object v6

    .line 4481
    .restart local v6    # "result":Landroid/content/res/XmlResourceParser;
    if-eqz v6, :cond_5

    .line 4482
    invoke-interface {v6, p1}, Landroid/content/res/XmlResourceParser;->setFilePath(Ljava/lang/String;)V

    .line 4484
    :cond_5
    monitor-exit v9

    goto :goto_1

    .line 4486
    .end local v0    # "block":Landroid/content/res/XmlBlock;
    .end local v2    # "i":I
    .end local v3    # "num":I
    .end local v4    # "oldBlock":Landroid/content/res/XmlBlock;
    .end local v5    # "pos":I
    .end local v6    # "result":Landroid/content/res/XmlResourceParser;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 4487
    :catch_0
    move-exception v1

    .line 4488
    .local v1, "e":Ljava/lang/Exception;
    new-instance v7, Landroid/content/res/Resources$NotFoundException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "File "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " from xml type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " resource ID #0x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 4491
    .local v7, "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v7, v1}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 4492
    throw v7

    .line 4486
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v7    # "rnf":Landroid/content/res/Resources$NotFoundException;
    .restart local v0    # "block":Landroid/content/res/XmlBlock;
    .restart local v2    # "i":I
    .restart local v3    # "num":I
    :cond_6
    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4496
    .end local v0    # "block":Landroid/content/res/XmlBlock;
    .end local v2    # "i":I
    .end local v3    # "num":I
    :cond_7
    new-instance v8, Landroid/content/res/Resources$NotFoundException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "File "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " from xml type "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " resource ID #0x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method public final newTheme()Landroid/content/res/Resources$Theme;
    .locals 1

    .prologue
    .line 3185
    new-instance v0, Landroid/content/res/Resources$Theme;

    invoke-direct {v0, p0}, Landroid/content/res/Resources$Theme;-><init>(Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    .locals 9
    .param p1, "set"    # Landroid/util/AttributeSet;
    .param p2, "attrs"    # [I

    .prologue
    .line 3201
    array-length v7, p2

    .line 3202
    .local v7, "len":I
    invoke-static {p0, v7}, Landroid/content/res/TypedArray;->obtain(Landroid/content/res/Resources;I)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "array":Landroid/content/res/TypedArray;
    move-object v8, p1

    .line 3208
    check-cast v8, Landroid/content/res/XmlBlock$Parser;

    .line 3209
    .local v8, "parser":Landroid/content/res/XmlBlock$Parser;
    iget-object v1, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    iget-wide v2, v8, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    iget-object v5, v0, Landroid/content/res/TypedArray;->mData:[I

    iget-object v6, v0, Landroid/content/res/TypedArray;->mIndices:[I

    move-object v4, p2

    invoke-virtual/range {v1 .. v6}, Landroid/content/res/AssetManager;->retrieveAttributes(J[I[I[I)Z

    .line 3212
    iput-object v8, v0, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    .line 3214
    return-object v0
.end method

.method public obtainTypedArray(I)Landroid/content/res/TypedArray;
    .locals 5
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1788
    iget-object v2, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v2, p1}, Landroid/content/res/AssetManager;->getArraySize(I)I

    move-result v1

    .line 1789
    .local v1, "len":I
    if-gez v1, :cond_0

    .line 1790
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Array resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1794
    :cond_0
    invoke-static {p0, v1}, Landroid/content/res/TypedArray;->obtain(Landroid/content/res/Resources;I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1795
    .local v0, "array":Landroid/content/res/TypedArray;
    iget-object v2, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    iget-object v3, v0, Landroid/content/res/TypedArray;->mData:[I

    invoke-virtual {v2, p1, v3}, Landroid/content/res/AssetManager;->retrieveArray(I[I)I

    move-result v2

    iput v2, v0, Landroid/content/res/TypedArray;->mLength:I

    .line 1796
    iget-object v2, v0, Landroid/content/res/TypedArray;->mIndices:[I

    aput v4, v2, v4

    .line 1798
    return-object v0
.end method

.method public openRawResource(I)Ljava/io/InputStream;
    .locals 4
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 2478
    iget-object v3, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2479
    :try_start_0
    iget-object v1, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 2480
    .local v1, "value":Landroid/util/TypedValue;
    if-nez v1, :cond_1

    .line 2481
    new-instance v1, Landroid/util/TypedValue;

    .end local v1    # "value":Landroid/util/TypedValue;
    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 2485
    .restart local v1    # "value":Landroid/util/TypedValue;
    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2486
    invoke-virtual {p0, p1, v1}, Landroid/content/res/Resources;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v0

    .line 2487
    .local v0, "res":Ljava/io/InputStream;
    iget-object v3, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2488
    :try_start_1
    iget-object v2, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    if-nez v2, :cond_0

    .line 2489
    iput-object v1, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 2491
    :cond_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2492
    return-object v0

    .line 2483
    .end local v0    # "res":Ljava/io/InputStream;
    :cond_1
    const/4 v2, 0x0

    :try_start_2
    iput-object v2, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    goto :goto_0

    .line 2485
    .end local v1    # "value":Landroid/util/TypedValue;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 2491
    .restart local v0    # "res":Ljava/io/InputStream;
    .restart local v1    # "value":Landroid/util/TypedValue;
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method public openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;
    .locals 6
    .param p1, "id"    # I
    .param p2, "value"    # Landroid/util/TypedValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 2510
    const/4 v2, 0x1

    invoke-virtual {p0, p1, p2, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 2513
    :try_start_0
    iget-object v2, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    iget v3, p2, Landroid/util/TypedValue;->assetCookie:I

    iget-object v4, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/AssetManager;->openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 2515
    :catch_0
    move-exception v0

    .line 2516
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from drawable resource ID #0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 2518
    .local v1, "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v1, v0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 2519
    throw v1
.end method

.method public openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;
    .locals 6
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 2547
    iget-object v4, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2548
    :try_start_0
    iget-object v2, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 2549
    .local v2, "value":Landroid/util/TypedValue;
    if-nez v2, :cond_1

    .line 2550
    new-instance v2, Landroid/util/TypedValue;

    .end local v2    # "value":Landroid/util/TypedValue;
    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 2554
    .restart local v2    # "value":Landroid/util/TypedValue;
    :goto_0
    const/4 v3, 0x1

    invoke-virtual {p0, p1, v2, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 2555
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2557
    :try_start_1
    iget-object v3, p0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    iget v4, v2, Landroid/util/TypedValue;->assetCookie:I

    iget-object v5, v2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/res/AssetManager;->openNonAssetFd(ILjava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v3

    .line 2567
    iget-object v4, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2568
    :try_start_2
    iget-object v5, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    if-nez v5, :cond_0

    .line 2569
    iput-object v2, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 2571
    :cond_0
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v3

    .line 2552
    :cond_1
    const/4 v3, 0x0

    :try_start_3
    iput-object v3, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    goto :goto_0

    .line 2555
    .end local v2    # "value":Landroid/util/TypedValue;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 2571
    .restart local v2    # "value":Landroid/util/TypedValue;
    :catchall_1
    move-exception v3

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v3

    .line 2559
    :catch_0
    move-exception v0

    .line 2560
    .local v0, "e":Ljava/lang/Exception;
    :try_start_5
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from drawable resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 2564
    .local v1, "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v1, v0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 2565
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 2567
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "rnf":Landroid/content/res/Resources$NotFoundException;
    :catchall_2
    move-exception v3

    iget-object v4, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2568
    :try_start_6
    iget-object v5, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    if-nez v5, :cond_2

    .line 2569
    iput-object v2, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    .line 2571
    :cond_2
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v3

    :catchall_3
    move-exception v3

    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v3
.end method

.method public parseBundleExtra(Ljava/lang/String;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "tagName"    # Ljava/lang/String;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "outBundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 3861
    sget-object v6, Lcom/android/internal/R$styleable;->Extra:[I

    invoke-virtual {p0, p2, v6}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 3864
    .local v2, "sa":Landroid/content/res/TypedArray;
    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3866
    .local v1, "name":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 3867
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 3868
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "> requires an android:name attribute at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3873
    :cond_0
    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v3

    .line 3875
    .local v3, "v":Landroid/util/TypedValue;
    if-eqz v3, :cond_6

    .line 3876
    iget v6, v3, Landroid/util/TypedValue;->type:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    .line 3877
    invoke-virtual {v3}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v0

    .line 3878
    .local v0, "cs":Ljava/lang/CharSequence;
    invoke-virtual {p3, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 3899
    .end local v0    # "cs":Ljava/lang/CharSequence;
    :goto_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 3900
    return-void

    .line 3879
    :cond_1
    iget v6, v3, Landroid/util/TypedValue;->type:I

    const/16 v7, 0x12

    if-ne v6, v7, :cond_3

    .line 3880
    iget v6, v3, Landroid/util/TypedValue;->data:I

    if-eqz v6, :cond_2

    :goto_1
    invoke-virtual {p3, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    move v4, v5

    goto :goto_1

    .line 3881
    :cond_3
    iget v4, v3, Landroid/util/TypedValue;->type:I

    const/16 v5, 0x10

    if-lt v4, v5, :cond_4

    iget v4, v3, Landroid/util/TypedValue;->type:I

    const/16 v5, 0x1f

    if-gt v4, v5, :cond_4

    .line 3883
    iget v4, v3, Landroid/util/TypedValue;->data:I

    invoke-virtual {p3, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 3884
    :cond_4
    iget v4, v3, Landroid/util/TypedValue;->type:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_5

    .line 3885
    invoke-virtual {v3}, Landroid/util/TypedValue;->getFloat()F

    move-result v4

    invoke-virtual {p3, v1, v4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_0

    .line 3887
    :cond_5
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 3888
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "> only supports string, integer, float, color, and boolean at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3893
    :cond_6
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 3894
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "> requires an android:value or android:resource attribute at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public parseBundleExtras(Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p2, "outBundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x3

    .line 3819
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v1

    .line 3822
    .local v1, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    if-ne v2, v4, :cond_1

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    if-le v3, v1, :cond_3

    .line 3823
    :cond_1
    if-eq v2, v4, :cond_0

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    .line 3827
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 3828
    .local v0, "nodeName":Ljava/lang/String;
    const-string v3, "extra"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3829
    const-string v3, "extra"

    invoke-virtual {p0, v3, p1, p2}, Landroid/content/res/Resources;->parseBundleExtra(Ljava/lang/String;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 3830
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 3833
    :cond_2
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 3836
    .end local v0    # "nodeName":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method public setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V
    .locals 2
    .param p1, "ci"    # Landroid/content/res/CompatibilityInfo;

    .prologue
    .line 3681
    if-eqz p1, :cond_0

    .line 3682
    iput-object p1, p0, Landroid/content/res/Resources;->mCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    .line 3683
    iget-object v0, p0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v1, p0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 3685
    :cond_0
    return-void
.end method

.method public setRCable(ILjava/io/File;)V
    .locals 0
    .param p1, "value"    # I
    .param p2, "fileName"    # Ljava/io/File;

    .prologue
    .line 1454
    sput p1, Landroid/content/res/Resources;->mStartStoringRL:I

    .line 1455
    iput-object p2, p0, Landroid/content/res/Resources;->file:Ljava/io/File;

    .line 1456
    return-void
.end method

.method public setRLRable(Ljava/lang/String;)V
    .locals 6
    .param p1, "activityName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 1199
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1200
    .local v0, "bool":Ljava/lang/Boolean;
    if-eqz p1, :cond_2

    .line 1203
    iget-object v1, p0, Landroid/content/res/Resources;->file:Ljava/io/File;

    if-nez v1, :cond_0

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1204
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "rList-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Landroid/content/res/Resources;->file:Ljava/io/File;

    .line 1205
    :cond_0
    iget-object v1, p0, Landroid/content/res/Resources;->file:Ljava/io/File;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/content/res/Resources;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/content/res/Resources;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1206
    iget-object v1, p0, Landroid/content/res/Resources;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->setReadOnly()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1207
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1208
    const-string v1, "Resources"

    const-string v2, "Read-only is not set"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    :cond_1
    sput v5, Landroid/content/res/Resources;->mStartStoringRL:I

    .line 1214
    :cond_2
    return-void
.end method

.method public final startPreloading()V
    .locals 3

    .prologue
    .line 3935
    sget-object v1, Landroid/content/res/Resources;->sSync:Ljava/lang/Object;

    monitor-enter v1

    .line 3936
    :try_start_0
    sget-boolean v0, Landroid/content/res/Resources;->sPreloaded:Z

    if-eqz v0, :cond_0

    .line 3937
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Resources already preloaded"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3944
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 3939
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    sput-boolean v0, Landroid/content/res/Resources;->sPreloaded:Z

    .line 3940
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/res/Resources;->mPreloading:Z

    .line 3941
    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    sput v0, Landroid/content/res/Resources;->sPreloadedDensity:I

    .line 3942
    iget-object v0, p0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    sget v2, Landroid/content/res/Resources;->sPreloadedDensity:I

    iput v2, v0, Landroid/content/res/Configuration;->densityDpi:I

    .line 3943
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 3944
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3945
    return-void
.end method

.method public startRC(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)V
    .locals 24
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activityName"    # Ljava/lang/String;
    .param p3, "rFile"    # Ljava/io/File;

    .prologue
    .line 1103
    sget v3, Landroid/content/res/Resources;->CONCURRENCY:I

    new-instance v4, Landroid/content/res/Resources$ProcessPriorityThreadFactory;

    const/16 v7, -0xb

    invoke-direct {v4, v7}, Landroid/content/res/Resources$ProcessPriorityThreadFactory;-><init>(I)V

    invoke-static {v3, v4}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/content/res/Resources;->ecs:Ljava/util/concurrent/ExecutorService;

    .line 1104
    const/4 v12, 0x0

    .line 1105
    .local v12, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    const/4 v13, 0x0

    .line 1106
    .local v13, "in":Ljava/io/BufferedReader;
    const-wide/16 v8, 0x0

    .line 1107
    .local v8, "key":J
    const/16 v16, 0x0

    .line 1108
    .local v16, "mRCFutureDrawableCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/util/concurrent/Future<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/res/Resources;->file:Ljava/io/File;

    .line 1111
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->file:Ljava/io/File;

    if-nez v3, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1112
    new-instance v3, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "rList-"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v4, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/content/res/Resources;->file:Ljava/io/File;

    .line 1113
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->file:Ljava/io/File;

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v3

    if-eqz v3, :cond_8

    sget v3, Landroid/content/res/Resources;->mStartStoringRL:I

    if-nez v3, :cond_8

    .line 1114
    new-instance v14, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v4, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/content/res/Resources;->file:Ljava/io/File;

    invoke-direct {v4, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-string v7, "UTF-8"

    invoke-direct {v3, v4, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v14, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1b
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_19
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_e
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1115
    .end local v13    # "in":Ljava/io/BufferedReader;
    .local v14, "in":Ljava/io/BufferedReader;
    :cond_1
    :goto_0
    :try_start_1
    invoke-virtual {v14}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v15

    .local v15, "line":Ljava/lang/String;
    if-eqz v15, :cond_7

    .line 1116
    const-string v3, "/"

    invoke-virtual {v15, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1120
    .local v2, "arrayString":[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 1121
    .local v18, "resourceId":I
    array-length v3, v2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6

    .line 1122
    const-string v3, "[2131623959, 2131623959, 2131623959, 2131623959]"

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/content/res/Resources;->refThemeKey:Ljava/lang/String;

    .line 1128
    :goto_1
    if-eqz v18, :cond_1

    .line 1129
    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    .line 1130
    .local v5, "mTmp":Landroid/util/TypedValue;
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1, v5, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 1131
    iget-object v3, v5, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v3, :cond_1

    .line 1132
    iget v3, v5, Landroid/util/TypedValue;->assetCookie:I

    int-to-long v0, v3

    move-wide/from16 v20, v0

    const/16 v3, 0x20

    shl-long v20, v20, v3

    iget v3, v5, Landroid/util/TypedValue;->data:I

    int-to-long v0, v3

    move-wide/from16 v22, v0

    or-long v8, v20, v22

    .line 1136
    const/4 v10, 0x0

    .line 1137
    .local v10, "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    sget-object v3, Landroid/content/res/Resources;->sPreloadedDrawables:[Landroid/util/LongSparseArray;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v4}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v3, v8, v9}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    check-cast v10, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 1138
    .restart local v10    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    if-eqz v10, :cond_2

    .line 1143
    :cond_2
    iget-object v3, v5, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1144
    .local v6, "file":Ljava/lang/String;
    const-wide/16 v20, 0x0

    cmp-long v3, v8, v20

    if-ltz v3, :cond_1

    if-eqz v6, :cond_1

    const-string v3, ".jpg"

    invoke-virtual {v6, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, ".xml"

    invoke-virtual {v6, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1145
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->mALDC:Landroid/util/ArrayMap;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/res/Resources;->refThemeKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/util/LongSparseArray;

    move-object/from16 v16, v0

    .line 1146
    if-nez v16, :cond_3

    .line 1147
    new-instance v17, Landroid/util/LongSparseArray;

    invoke-direct/range {v17 .. v17}, Landroid/util/LongSparseArray;-><init>()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_17
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_15
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_13
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1148
    .end local v16    # "mRCFutureDrawableCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/util/concurrent/Future<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    .local v17, "mRCFutureDrawableCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/util/concurrent/Future<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->mALDC:Landroid/util/ArrayMap;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/res/Resources;->refThemeKey:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v3, v4, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1c
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_1a
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_18
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_16
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_14
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object/from16 v16, v17

    .line 1150
    .end local v17    # "mRCFutureDrawableCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/util/concurrent/Future<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    .restart local v16    # "mRCFutureDrawableCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/util/concurrent/Future<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    :cond_3
    :try_start_3
    move-object/from16 v0, v16

    invoke-virtual {v0, v8, v9}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/util/concurrent/Future;

    move-object v12, v0

    .line 1151
    if-eqz v12, :cond_4

    invoke-interface {v12}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_4
    if-nez v10, :cond_1

    .line 1157
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/res/Resources;->ecs:Ljava/util/concurrent/ExecutorService;

    move-object/from16 v19, v0

    new-instance v3, Landroid/content/res/Resources$RCCallable;

    move-object/from16 v4, p0

    move-object/from16 v7, p0

    invoke-direct/range {v3 .. v9}, Landroid/content/res/Resources$RCCallable;-><init>(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/lang/String;Landroid/content/res/Resources;J)V

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v12

    .line 1158
    move-object/from16 v0, v16

    invoke-virtual {v0, v8, v9, v12}, Landroid/util/LongSparseArray;->append(JLjava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_17
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_15
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_13
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_0

    .line 1167
    .end local v2    # "arrayString":[Ljava/lang/String;
    .end local v5    # "mTmp":Landroid/util/TypedValue;
    .end local v6    # "file":Ljava/lang/String;
    .end local v10    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    .end local v15    # "line":Ljava/lang/String;
    .end local v18    # "resourceId":I
    :catch_0
    move-exception v11

    move-object v13, v14

    .line 1168
    .end local v14    # "in":Ljava/io/BufferedReader;
    .local v11, "e":Ljava/lang/InterruptedException;
    .restart local v13    # "in":Ljava/io/BufferedReader;
    :goto_2
    :try_start_4
    const-string v3, "Resources"

    const-string v4, "InterruptedException"

    invoke-static {v3, v4, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1178
    if-eqz v13, :cond_5

    .line 1180
    :try_start_5
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->ecs:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 1181
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_6

    .line 1192
    .end local v11    # "e":Ljava/lang/InterruptedException;
    :cond_5
    :goto_3
    return-void

    .line 1124
    .end local v13    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "arrayString":[Ljava/lang/String;
    .restart local v14    # "in":Ljava/io/BufferedReader;
    .restart local v15    # "line":Ljava/lang/String;
    .restart local v18    # "resourceId":I
    :cond_6
    const/4 v3, 0x1

    :try_start_6
    aget-object v3, v2, v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/content/res/Resources;->refThemeKey:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_17
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_15
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_13
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_1

    .line 1169
    .end local v2    # "arrayString":[Ljava/lang/String;
    .end local v15    # "line":Ljava/lang/String;
    .end local v18    # "resourceId":I
    :catch_1
    move-exception v11

    move-object v13, v14

    .line 1170
    .end local v14    # "in":Ljava/io/BufferedReader;
    .local v11, "e":Ljava/util/concurrent/ExecutionException;
    .restart local v13    # "in":Ljava/io/BufferedReader;
    :goto_4
    :try_start_7
    const-string v3, "Resources"

    const-string v4, "ExecutionException"

    invoke-static {v3, v4, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1178
    if-eqz v13, :cond_5

    .line 1180
    :try_start_8
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->ecs:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 1181
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_3

    .line 1182
    :catch_2
    move-exception v11

    .line 1183
    .local v11, "e":Ljava/io/IOException;
    const-string v3, "Resources"

    const-string v4, "IOException"

    invoke-static {v3, v4, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .end local v11    # "e":Ljava/io/IOException;
    .end local v13    # "in":Ljava/io/BufferedReader;
    .restart local v14    # "in":Ljava/io/BufferedReader;
    .restart local v15    # "line":Ljava/lang/String;
    :cond_7
    move-object v13, v14

    .line 1178
    .end local v14    # "in":Ljava/io/BufferedReader;
    .end local v15    # "line":Ljava/lang/String;
    .restart local v13    # "in":Ljava/io/BufferedReader;
    :cond_8
    if-eqz v13, :cond_5

    .line 1180
    :try_start_9
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->ecs:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 1181
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_3

    .line 1182
    :catch_3
    move-exception v11

    .line 1183
    .restart local v11    # "e":Ljava/io/IOException;
    const-string v3, "Resources"

    const-string v4, "IOException"

    invoke-static {v3, v4, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 1184
    .end local v11    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v11

    .line 1185
    .local v11, "e":Ljava/lang/RuntimeException;
    const-string v3, "Resources"

    const-string v4, "RuntimeException"

    invoke-static {v3, v4, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 1182
    .local v11, "e":Ljava/lang/InterruptedException;
    :catch_5
    move-exception v11

    .line 1183
    .local v11, "e":Ljava/io/IOException;
    const-string v3, "Resources"

    const-string v4, "IOException"

    invoke-static {v3, v4, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 1184
    .local v11, "e":Ljava/lang/InterruptedException;
    :catch_6
    move-exception v11

    .line 1185
    .local v11, "e":Ljava/lang/RuntimeException;
    const-string v3, "Resources"

    const-string v4, "RuntimeException"

    invoke-static {v3, v4, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 1184
    .local v11, "e":Ljava/util/concurrent/ExecutionException;
    :catch_7
    move-exception v11

    .line 1185
    .local v11, "e":Ljava/lang/RuntimeException;
    const-string v3, "Resources"

    const-string v4, "RuntimeException"

    invoke-static {v3, v4, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 1171
    .end local v11    # "e":Ljava/lang/RuntimeException;
    :catch_8
    move-exception v11

    .line 1172
    .restart local v11    # "e":Ljava/lang/RuntimeException;
    :goto_5
    :try_start_a
    const-string v3, "Resources"

    const-string v4, "RunTimeException"

    invoke-static {v3, v4, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 1178
    if-eqz v13, :cond_5

    .line 1180
    :try_start_b
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->ecs:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 1181
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_a

    goto :goto_3

    .line 1182
    :catch_9
    move-exception v11

    .line 1183
    .local v11, "e":Ljava/io/IOException;
    const-string v3, "Resources"

    const-string v4, "IOException"

    invoke-static {v3, v4, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 1184
    .local v11, "e":Ljava/lang/RuntimeException;
    :catch_a
    move-exception v11

    .line 1185
    const-string v3, "Resources"

    const-string v4, "RuntimeException"

    invoke-static {v3, v4, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 1173
    .end local v11    # "e":Ljava/lang/RuntimeException;
    :catch_b
    move-exception v11

    .line 1174
    .local v11, "e":Ljava/io/FileNotFoundException;
    :goto_6
    :try_start_c
    const-string v3, "Resources"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FileNotFoundException"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 1178
    if-eqz v13, :cond_5

    .line 1180
    :try_start_d
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->ecs:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 1181
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_c
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_d

    goto/16 :goto_3

    .line 1182
    :catch_c
    move-exception v11

    .line 1183
    .local v11, "e":Ljava/io/IOException;
    const-string v3, "Resources"

    const-string v4, "IOException"

    invoke-static {v3, v4, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 1184
    .local v11, "e":Ljava/io/FileNotFoundException;
    :catch_d
    move-exception v11

    .line 1185
    .local v11, "e":Ljava/lang/RuntimeException;
    const-string v3, "Resources"

    const-string v4, "RuntimeException"

    invoke-static {v3, v4, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 1175
    .end local v11    # "e":Ljava/lang/RuntimeException;
    :catch_e
    move-exception v11

    .line 1176
    .local v11, "e":Ljava/io/IOException;
    :goto_7
    :try_start_e
    const-string v3, "Resources"

    const-string v4, "IOException"

    invoke-static {v3, v4, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 1178
    if-eqz v13, :cond_5

    .line 1180
    :try_start_f
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->ecs:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 1181
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_f
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_10

    goto/16 :goto_3

    .line 1182
    :catch_f
    move-exception v11

    .line 1183
    const-string v3, "Resources"

    const-string v4, "IOException"

    invoke-static {v3, v4, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 1184
    :catch_10
    move-exception v11

    .line 1185
    .local v11, "e":Ljava/lang/RuntimeException;
    const-string v3, "Resources"

    const-string v4, "RuntimeException"

    invoke-static {v3, v4, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 1178
    .end local v11    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v3

    :goto_8
    if-eqz v13, :cond_9

    .line 1180
    :try_start_10
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/res/Resources;->ecs:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v4}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 1181
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_11
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_12

    .line 1186
    :cond_9
    :goto_9
    throw v3

    .line 1182
    :catch_11
    move-exception v11

    .line 1183
    .local v11, "e":Ljava/io/IOException;
    const-string v4, "Resources"

    const-string v7, "IOException"

    invoke-static {v4, v7, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 1184
    .end local v11    # "e":Ljava/io/IOException;
    :catch_12
    move-exception v11

    .line 1185
    .local v11, "e":Ljava/lang/RuntimeException;
    const-string v4, "Resources"

    const-string v7, "RuntimeException"

    invoke-static {v4, v7, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 1178
    .end local v11    # "e":Ljava/lang/RuntimeException;
    .end local v13    # "in":Ljava/io/BufferedReader;
    .restart local v14    # "in":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v3

    move-object v13, v14

    .end local v14    # "in":Ljava/io/BufferedReader;
    .restart local v13    # "in":Ljava/io/BufferedReader;
    goto :goto_8

    .end local v13    # "in":Ljava/io/BufferedReader;
    .end local v16    # "mRCFutureDrawableCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/util/concurrent/Future<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    .restart local v2    # "arrayString":[Ljava/lang/String;
    .restart local v5    # "mTmp":Landroid/util/TypedValue;
    .restart local v6    # "file":Ljava/lang/String;
    .restart local v10    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    .restart local v14    # "in":Ljava/io/BufferedReader;
    .restart local v15    # "line":Ljava/lang/String;
    .restart local v17    # "mRCFutureDrawableCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/util/concurrent/Future<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    .restart local v18    # "resourceId":I
    :catchall_2
    move-exception v3

    move-object/from16 v16, v17

    .end local v17    # "mRCFutureDrawableCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/util/concurrent/Future<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    .restart local v16    # "mRCFutureDrawableCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/util/concurrent/Future<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    move-object v13, v14

    .end local v14    # "in":Ljava/io/BufferedReader;
    .restart local v13    # "in":Ljava/io/BufferedReader;
    goto :goto_8

    .line 1175
    .end local v2    # "arrayString":[Ljava/lang/String;
    .end local v5    # "mTmp":Landroid/util/TypedValue;
    .end local v6    # "file":Ljava/lang/String;
    .end local v10    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    .end local v13    # "in":Ljava/io/BufferedReader;
    .end local v15    # "line":Ljava/lang/String;
    .end local v18    # "resourceId":I
    .restart local v14    # "in":Ljava/io/BufferedReader;
    :catch_13
    move-exception v11

    move-object v13, v14

    .end local v14    # "in":Ljava/io/BufferedReader;
    .restart local v13    # "in":Ljava/io/BufferedReader;
    goto :goto_7

    .end local v13    # "in":Ljava/io/BufferedReader;
    .end local v16    # "mRCFutureDrawableCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/util/concurrent/Future<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    .restart local v2    # "arrayString":[Ljava/lang/String;
    .restart local v5    # "mTmp":Landroid/util/TypedValue;
    .restart local v6    # "file":Ljava/lang/String;
    .restart local v10    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    .restart local v14    # "in":Ljava/io/BufferedReader;
    .restart local v15    # "line":Ljava/lang/String;
    .restart local v17    # "mRCFutureDrawableCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/util/concurrent/Future<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    .restart local v18    # "resourceId":I
    :catch_14
    move-exception v11

    move-object/from16 v16, v17

    .end local v17    # "mRCFutureDrawableCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/util/concurrent/Future<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    .restart local v16    # "mRCFutureDrawableCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/util/concurrent/Future<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    move-object v13, v14

    .end local v14    # "in":Ljava/io/BufferedReader;
    .restart local v13    # "in":Ljava/io/BufferedReader;
    goto :goto_7

    .line 1173
    .end local v2    # "arrayString":[Ljava/lang/String;
    .end local v5    # "mTmp":Landroid/util/TypedValue;
    .end local v6    # "file":Ljava/lang/String;
    .end local v10    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    .end local v13    # "in":Ljava/io/BufferedReader;
    .end local v15    # "line":Ljava/lang/String;
    .end local v18    # "resourceId":I
    .restart local v14    # "in":Ljava/io/BufferedReader;
    :catch_15
    move-exception v11

    move-object v13, v14

    .end local v14    # "in":Ljava/io/BufferedReader;
    .restart local v13    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_6

    .end local v13    # "in":Ljava/io/BufferedReader;
    .end local v16    # "mRCFutureDrawableCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/util/concurrent/Future<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    .restart local v2    # "arrayString":[Ljava/lang/String;
    .restart local v5    # "mTmp":Landroid/util/TypedValue;
    .restart local v6    # "file":Ljava/lang/String;
    .restart local v10    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    .restart local v14    # "in":Ljava/io/BufferedReader;
    .restart local v15    # "line":Ljava/lang/String;
    .restart local v17    # "mRCFutureDrawableCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/util/concurrent/Future<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    .restart local v18    # "resourceId":I
    :catch_16
    move-exception v11

    move-object/from16 v16, v17

    .end local v17    # "mRCFutureDrawableCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/util/concurrent/Future<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    .restart local v16    # "mRCFutureDrawableCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/util/concurrent/Future<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    move-object v13, v14

    .end local v14    # "in":Ljava/io/BufferedReader;
    .restart local v13    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_6

    .line 1171
    .end local v2    # "arrayString":[Ljava/lang/String;
    .end local v5    # "mTmp":Landroid/util/TypedValue;
    .end local v6    # "file":Ljava/lang/String;
    .end local v10    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    .end local v13    # "in":Ljava/io/BufferedReader;
    .end local v15    # "line":Ljava/lang/String;
    .end local v18    # "resourceId":I
    .restart local v14    # "in":Ljava/io/BufferedReader;
    :catch_17
    move-exception v11

    move-object v13, v14

    .end local v14    # "in":Ljava/io/BufferedReader;
    .restart local v13    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_5

    .end local v13    # "in":Ljava/io/BufferedReader;
    .end local v16    # "mRCFutureDrawableCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/util/concurrent/Future<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    .restart local v2    # "arrayString":[Ljava/lang/String;
    .restart local v5    # "mTmp":Landroid/util/TypedValue;
    .restart local v6    # "file":Ljava/lang/String;
    .restart local v10    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    .restart local v14    # "in":Ljava/io/BufferedReader;
    .restart local v15    # "line":Ljava/lang/String;
    .restart local v17    # "mRCFutureDrawableCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/util/concurrent/Future<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    .restart local v18    # "resourceId":I
    :catch_18
    move-exception v11

    move-object/from16 v16, v17

    .end local v17    # "mRCFutureDrawableCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/util/concurrent/Future<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    .restart local v16    # "mRCFutureDrawableCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/util/concurrent/Future<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    move-object v13, v14

    .end local v14    # "in":Ljava/io/BufferedReader;
    .restart local v13    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_5

    .line 1169
    .end local v2    # "arrayString":[Ljava/lang/String;
    .end local v5    # "mTmp":Landroid/util/TypedValue;
    .end local v6    # "file":Ljava/lang/String;
    .end local v10    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    .end local v15    # "line":Ljava/lang/String;
    .end local v18    # "resourceId":I
    :catch_19
    move-exception v11

    goto/16 :goto_4

    .end local v13    # "in":Ljava/io/BufferedReader;
    .end local v16    # "mRCFutureDrawableCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/util/concurrent/Future<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    .restart local v2    # "arrayString":[Ljava/lang/String;
    .restart local v5    # "mTmp":Landroid/util/TypedValue;
    .restart local v6    # "file":Ljava/lang/String;
    .restart local v10    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    .restart local v14    # "in":Ljava/io/BufferedReader;
    .restart local v15    # "line":Ljava/lang/String;
    .restart local v17    # "mRCFutureDrawableCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/util/concurrent/Future<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    .restart local v18    # "resourceId":I
    :catch_1a
    move-exception v11

    move-object/from16 v16, v17

    .end local v17    # "mRCFutureDrawableCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/util/concurrent/Future<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    .restart local v16    # "mRCFutureDrawableCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/util/concurrent/Future<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    move-object v13, v14

    .end local v14    # "in":Ljava/io/BufferedReader;
    .restart local v13    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_4

    .line 1167
    .end local v2    # "arrayString":[Ljava/lang/String;
    .end local v5    # "mTmp":Landroid/util/TypedValue;
    .end local v6    # "file":Ljava/lang/String;
    .end local v10    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    .end local v15    # "line":Ljava/lang/String;
    .end local v18    # "resourceId":I
    :catch_1b
    move-exception v11

    goto/16 :goto_2

    .end local v13    # "in":Ljava/io/BufferedReader;
    .end local v16    # "mRCFutureDrawableCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/util/concurrent/Future<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    .restart local v2    # "arrayString":[Ljava/lang/String;
    .restart local v5    # "mTmp":Landroid/util/TypedValue;
    .restart local v6    # "file":Ljava/lang/String;
    .restart local v10    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    .restart local v14    # "in":Ljava/io/BufferedReader;
    .restart local v15    # "line":Ljava/lang/String;
    .restart local v17    # "mRCFutureDrawableCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/util/concurrent/Future<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    .restart local v18    # "resourceId":I
    :catch_1c
    move-exception v11

    move-object/from16 v16, v17

    .end local v17    # "mRCFutureDrawableCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/util/concurrent/Future<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    .restart local v16    # "mRCFutureDrawableCache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/util/concurrent/Future<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    move-object v13, v14

    .end local v14    # "in":Ljava/io/BufferedReader;
    .restart local v13    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_2
.end method

.method public updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V
    .locals 1
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "metrics"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 3222
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    .line 3223
    return-void
.end method

.method public updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V
    .locals 25
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "metrics"    # Landroid/util/DisplayMetrics;
    .param p3, "compat"    # Landroid/content/res/CompatibilityInfo;

    .prologue
    .line 3230
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    move-object/from16 v24, v0

    monitor-enter v24

    .line 3231
    :try_start_0
    invoke-direct/range {p0 .. p1}, Landroid/content/res/Resources;->resetStringNames(Landroid/content/res/Configuration;)V

    .line 3238
    if-eqz p3, :cond_0

    .line 3239
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/res/Resources;->mCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    .line 3241
    :cond_0
    if-eqz p2, :cond_1

    .line 3242
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/util/DisplayMetrics;->setTo(Landroid/util/DisplayMetrics;)V

    .line 3253
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v2, v3}, Landroid/content/res/CompatibilityInfo;->applyToDisplayMetrics(Landroid/util/DisplayMetrics;)V

    .line 3256
    const-string v2, ""

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_2

    .line 3257
    const/16 v23, -0x1

    .local v23, "oldDensityDpi":I
    const/16 v22, -0x1

    .line 3259
    .local v22, "newDensityDpi":I
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget v0, v2, Landroid/content/res/Configuration;->densityDpi:I

    move/from16 v23, v0

    .line 3260
    move-object/from16 v0, p1

    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    move/from16 v22, v0

    .line 3261
    if-lez v23, :cond_2

    if-lez v22, :cond_2

    move/from16 v0, v23

    move/from16 v1, v22

    if-eq v0, v1, :cond_2

    .line 3262
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mDrawableCache:Landroid/content/res/DrawableCache;

    invoke-virtual {v2}, Landroid/content/res/DrawableCache;->clearAllCaches()V

    .line 3263
    sget-object v2, Landroid/content/res/Resources;->sPreloadedDrawables:[Landroid/util/LongSparseArray;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->clear()V

    .line 3264
    sget-object v2, Landroid/content/res/Resources;->sPreloadedDrawables:[Landroid/util/LongSparseArray;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->clear()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3271
    .end local v22    # "newDensityDpi":I
    .end local v23    # "oldDensityDpi":I
    :cond_2
    :goto_0
    :try_start_2
    invoke-direct/range {p0 .. p1}, Landroid/content/res/Resources;->calcConfigChanges(Landroid/content/res/Configuration;)I

    move-result v20

    .line 3272
    .local v20, "configChanges":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-nez v2, :cond_3

    .line 3273
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    iput-object v3, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 3274
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Landroid/content/res/Configuration;->setLayoutDirection(Ljava/util/Locale;)V

    .line 3276
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget v2, v2, Landroid/content/res/Configuration;->densityDpi:I

    if-eqz v2, :cond_4

    .line 3277
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget v3, v3, Landroid/content/res/Configuration;->densityDpi:I

    iput v3, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 3278
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget v3, v3, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v3, v3

    const v4, 0x3bcccccd    # 0.00625f

    mul-float/2addr v3, v4

    iput v3, v2, Landroid/util/DisplayMetrics;->density:F

    .line 3280
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->fontScale:F

    mul-float/2addr v3, v4

    iput v3, v2, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 3282
    const/4 v5, 0x0

    .line 3283
    .local v5, "locale":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v2, :cond_5

    .line 3284
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/content/res/Resources;->adjustLanguageTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3288
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    if-lt v2, v3, :cond_8

    .line 3289
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    iget v12, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 3290
    .local v12, "width":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    iget v13, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 3299
    .local v13, "height":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget v2, v2, Landroid/content/res/Configuration;->keyboardHidden:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget v2, v2, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_9

    .line 3301
    const/4 v10, 0x3

    .line 3311
    .local v10, "keyboardHidden":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget v8, v2, Landroid/content/res/Configuration;->densityDpi:I

    .line 3312
    .local v8, "loadDensityDpi":I
    sget v2, Landroid/content/res/Resources;->sLoadDensityDpi:I

    if-eqz v2, :cond_6

    .line 3313
    sget v8, Landroid/content/res/Resources;->sLoadDensityDpi:I

    .line 3315
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget v3, v3, Landroid/content/res/Configuration;->mcc:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->mnc:I

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget v7, v7, Landroid/content/res/Configuration;->touchscreen:I

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget v9, v9, Landroid/content/res/Configuration;->keyboard:I

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget v11, v11, Landroid/content/res/Configuration;->navigation:I

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget v14, v14, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget v15, v15, Landroid/content/res/Configuration;->screenWidthDp:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    move/from16 v18, v0

    sget v19, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    invoke-virtual/range {v2 .. v19}, Landroid/content/res/AssetManager;->setConfiguration(IILjava/lang/String;IIIIIIIIIIIIII)V

    .line 3336
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mDrawableCache:Landroid/content/res/DrawableCache;

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/content/res/DrawableCache;->onConfigurationChange(I)V

    .line 3337
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mColorDrawableCache:Landroid/content/res/DrawableCache;

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/content/res/DrawableCache;->onConfigurationChange(I)V

    .line 3338
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mColorStateListCache:Landroid/content/res/ConfigurationBoundResourceCache;

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/content/res/ConfigurationBoundResourceCache;->onConfigurationChange(I)V

    .line 3339
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mAnimatorCache:Landroid/content/res/ConfigurationBoundResourceCache;

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/content/res/ConfigurationBoundResourceCache;->onConfigurationChange(I)V

    .line 3340
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mStateListAnimatorCache:Landroid/content/res/ConfigurationBoundResourceCache;

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/content/res/ConfigurationBoundResourceCache;->onConfigurationChange(I)V

    .line 3353
    invoke-virtual/range {p0 .. p0}, Landroid/content/res/Resources;->flushLayoutCache()V

    .line 3354
    monitor-exit v24
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3355
    sget-object v3, Landroid/content/res/Resources;->sSync:Ljava/lang/Object;

    monitor-enter v3

    .line 3356
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mPluralRule:Llibcore/icu/NativePluralRules;

    if-eqz v2, :cond_7

    .line 3357
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v2}, Llibcore/icu/NativePluralRules;->forLocale(Ljava/util/Locale;)Llibcore/icu/NativePluralRules;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/content/res/Resources;->mPluralRule:Llibcore/icu/NativePluralRules;

    .line 3359
    :cond_7
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3360
    return-void

    .line 3266
    .end local v5    # "locale":Ljava/lang/String;
    .end local v8    # "loadDensityDpi":I
    .end local v10    # "keyboardHidden":I
    .end local v12    # "width":I
    .end local v13    # "height":I
    .end local v20    # "configChanges":I
    .restart local v22    # "newDensityDpi":I
    .restart local v23    # "oldDensityDpi":I
    :catch_0
    move-exception v21

    .line 3267
    .local v21, "ex":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 3354
    .end local v21    # "ex":Ljava/lang/Exception;
    .end local v22    # "newDensityDpi":I
    .end local v23    # "oldDensityDpi":I
    :catchall_0
    move-exception v2

    monitor-exit v24
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2

    .line 3293
    .restart local v5    # "locale":Ljava/lang/String;
    .restart local v20    # "configChanges":I
    :cond_8
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    iget v12, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 3295
    .restart local v12    # "width":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    iget v13, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .restart local v13    # "height":I
    goto/16 :goto_1

    .line 3303
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    iget v10, v2, Landroid/content/res/Configuration;->keyboardHidden:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .restart local v10    # "keyboardHidden":I
    goto/16 :goto_2

    .line 3359
    .restart local v8    # "loadDensityDpi":I
    :catchall_1
    move-exception v2

    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v2
.end method

.method public updateConfiguration(Landroid/view/Display;)V
    .locals 5
    .param p1, "display"    # Landroid/view/Display;

    .prologue
    .line 3373
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    .line 3374
    .local v1, "displayId":I
    if-ltz v1, :cond_0

    const/4 v3, 0x4

    if-lt v1, v3, :cond_1

    .line 3393
    :cond_0
    :goto_0
    return-void

    .line 3379
    :cond_1
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 3380
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 3382
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 3383
    .local v0, "config":Landroid/content/res/Configuration;
    iput v1, v0, Landroid/content/res/Configuration;->displayId:I

    .line 3384
    iget v3, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v3, v0, Landroid/content/res/Configuration;->densityDpi:I

    .line 3385
    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    iget v4, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 3386
    iget v3, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v3

    iget v4, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 3392
    invoke-virtual {p0, v0, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    goto :goto_0
.end method

.method public updateDisplayMetrics(Landroid/util/DisplayMetrics;)V
    .locals 3
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 3506
    iget-object v1, p0, Landroid/content/res/Resources;->mAccessLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3507
    if-eqz p1, :cond_0

    .line 3508
    :try_start_0
    iget-object v0, p0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, p1}, Landroid/util/DisplayMetrics;->setTo(Landroid/util/DisplayMetrics;)V

    .line 3510
    :cond_0
    iget-object v0, p0, Landroid/content/res/Resources;->mCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    iget-object v2, p0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v2}, Landroid/content/res/CompatibilityInfo;->applyToDisplayMetrics(Landroid/util/DisplayMetrics;)V

    .line 3511
    monitor-exit v1

    .line 3512
    return-void

    .line 3511
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
.method static clearPreloadedCache()V
    .locals 2

    .prologue
    .line 2939
    sget-object v0, Landroid/content/res/Resources;->sPreloadedDrawables:[Landroid/util/LongSparseArray;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 2940
    sget-object v0, Landroid/content/res/Resources;->sPreloadedDrawables:[Landroid/util/LongSparseArray;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 2941
    sget-object v0, Landroid/content/res/Resources;->sPreloadedColorStateLists:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 2942
    sget-object v0, Landroid/content/res/Resources;->sPreloadedColorDrawables:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 2943
    return-void
.end method
.method createFromResourceStream(Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "is"    # Ljava/io/InputStream;
    .param p3, "srcName"    # Ljava/lang/String;
    .param p4, "id"    # I

    .prologue
    .line 2950
    invoke-virtual {p0, p1, p4}, Landroid/content/res/Resources;->loadOverlayDrawable(Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2951
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 2952
    const/4 v1, 0x0

    invoke-static {p0, p1, p2, p3, v1}, Landroid/graphics/drawable/Drawable;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2954
    :cond_0
    return-object v0
.end method
.method createFromXml(Landroid/util/TypedValue;Landroid/content/res/XmlResourceParser;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "rp"    # Landroid/content/res/XmlResourceParser;
    .param p3, "id"    # I
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2962
    invoke-virtual {p0, p1, p3}, Landroid/content/res/Resources;->loadOverlayDrawable(Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2963
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 2964
    invoke-static {p0, p2, p4}, Landroid/graphics/drawable/Drawable;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2966
    :cond_0
    return-object v0
.end method
.method getPreloadedDrawable(JI)Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 3
    .param p1, "key"    # J
    .param p3, "id"    # I

    .prologue
    .line 2975
    sget-object v1, Landroid/content/res/Resources;->sPreloadedDrawables:[Landroid/util/LongSparseArray;

    iget-object v2, p0, Landroid/content/res/Resources;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 2976
    .local v0, "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    if-nez v0, :cond_0

    .line 2977
    sget-object v1, Landroid/content/res/Resources;->sCachedDrawables:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    check-cast v0, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 2978
    .restart local v0    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    if-eqz v0, :cond_0

    .line 2979
    sget-object v1, Landroid/content/res/Resources;->sCachedDrawables:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->remove(J)V

    .line 2982
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p0, p3}, Landroid/content/res/Resources;->isPreloadOverlayed(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2983
    const/4 v0, 0x0

    .line 2985
    :cond_1
    return-object v0
.end method
.method isPreloadOverlayed(I)Z
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 3003
    const/4 v0, 0x0

    return v0
.end method
.method isPreloading()Z
    .locals 1

    .prologue
    .line 2994
    iget-boolean v0, p0, Landroid/content/res/Resources;->mPreloading:Z

    return v0
.end method
.method loadOverlayDrawable(Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "id"    # I

    .prologue
    .line 2916
    const/4 v0, 0x0

    return-object v0
.end method
.method loadOverlayTypedArray(Landroid/content/res/TypedArray;)Landroid/content/res/TypedArray;
    .locals 0
    .param p1, "array"    # Landroid/content/res/TypedArray;

    .prologue
    .line 2931
    return-object p1
.end method
.method loadOverlayValue(Landroid/util/TypedValue;I)V
    .locals 0
    .param p1, "outValue"    # Landroid/util/TypedValue;
    .param p2, "id"    # I

    .prologue
    .line 2924
    return-void
.end method
.field private static final DENSITY_CONFIG:I
.field private static final FONT_SCALE_CONFIG:I
.field private static final SPEC_PUBLIC:I = 0x40000000
.field private static final sCachedDrawables:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field
.field private mCaching:Z
