.class public Landroid/graphics/Typeface;
.super Ljava/lang/Object;
.source "Typeface.java"


# static fields
.field public static final BOLD:I = 0x1

.field public static final BOLD_ITALIC:I = 0x3

.field private static final DEBUG:Z = false

.field public static final DEFAULT:Landroid/graphics/Typeface;

.field public static final DEFAULT_BOLD:Landroid/graphics/Typeface;

.field private static final DROIDSANS:Ljava/lang/String; = "DroidSans.ttf"

.field private static final DROIDSANS_BOLD:Ljava/lang/String; = "DroidSans-Bold.ttf"

.field private static final FLIP_ALL_APPS:Z = true

.field static final FONTS_CONFIG:Ljava/lang/String; = "fonts.xml"

.field private static final FONTS_FOLDER:Ljava/lang/String; = "/system/fonts/"

.field private static FlipFontPath:Ljava/lang/String; = null

.field private static final FontsLikeDefault:[Ljava/lang/String;

.field public static final ITALIC:I = 0x2

.field public static final MONOSPACE:Landroid/graphics/Typeface;

.field private static final MONOSPACE_INDEX:I = 0x3

.field public static final NORMAL:I = 0x0

.field private static final OWNER_SANS_LOC_PATH:Ljava/lang/String; = "/data/data/com.android.settings/app_fonts/sans.loc"

.field private static final SANS_INDEX:I = 0x1

.field public static final SANS_SERIF:Landroid/graphics/Typeface;

.field public static final SERIF:Landroid/graphics/Typeface;

.field private static final SERIF_INDEX:I = 0x2

.field private static TAG:Ljava/lang/String; = null

.field private static final TAG_MONOTYPE:Ljava/lang/String; = "Monotype"

.field private static final USER_SANS_LOC_POST:Ljava/lang/String; = "/com.android.settings/app_fonts/sans.loc"

.field private static final USER_SANS_LOC_PRE:Ljava/lang/String; = "/data/user/"

.field public static isFlipFontUsed:Z

.field static sDefaultTypeface:Landroid/graphics/Typeface;

.field static sDefaults:[Landroid/graphics/Typeface;

.field static sFallbackFonts:[Landroid/graphics/FontFamily;

.field static sSystemFontMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field private static final sTypefaceCache:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/Typeface;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field public isLikeDefault:Z

.field private mStyle:I

.field public native_instance:J


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 56
    const-string v0, "Typeface"

    sput-object v0, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    .line 78
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0, v5}, Landroid/util/LongSparseArray;-><init>(I)V

    sput-object v0, Landroid/graphics/Typeface;->sTypefaceCache:Landroid/util/LongSparseArray;

    .line 106
    const-string v0, ""

    sput-object v0, Landroid/graphics/Typeface;->FlipFontPath:Ljava/lang/String;

    .line 124
    sput-boolean v4, Landroid/graphics/Typeface;->isFlipFontUsed:Z

    .line 132
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v2, "sans-serif-thin"

    aput-object v2, v0, v4

    const-string/jumbo v2, "sans-serif-light"

    aput-object v2, v0, v6

    const-string/jumbo v2, "sans-serif"

    aput-object v2, v0, v7

    const-string/jumbo v2, "sans-serif-medium"

    aput-object v2, v0, v5

    const/4 v2, 0x4

    const-string/jumbo v3, "sans-serif-black"

    aput-object v3, v0, v2

    const/4 v2, 0x5

    const-string/jumbo v3, "sec-roboto-light"

    aput-object v3, v0, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "roboto-num3L"

    aput-object v3, v0, v2

    const/4 v2, 0x7

    const-string/jumbo v3, "roboto-num3R"

    aput-object v3, v0, v2

    const/16 v2, 0x8

    const-string/jumbo v3, "samsung-sans-thin"

    aput-object v3, v0, v2

    const/16 v2, 0x9

    const-string/jumbo v3, "samsung-sans-light"

    aput-object v3, v0, v2

    sput-object v0, Landroid/graphics/Typeface;->FontsLikeDefault:[Ljava/lang/String;

    .line 438
    invoke-static {}, Landroid/graphics/Typeface;->init()V

    move-object v0, v1

    .line 441
    nop

    nop

    invoke-static {v0, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    move-object v0, v1

    .line 442
    nop

    nop

    invoke-static {v0, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    .line 443
    const-string/jumbo v0, "sans-serif"

    invoke-static {v0, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 444
    const-string/jumbo v0, "serif"

    invoke-static {v0, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    .line 445
    const-string/jumbo v0, "monospace"

    invoke-static {v0, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    .line 447
    const/4 v0, 0x4

    new-array v2, v0, [Landroid/graphics/Typeface;

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    aput-object v0, v2, v4

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    aput-object v0, v2, v6

    move-object v0, v1

    nop

    nop

    invoke-static {v0, v7}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    aput-object v0, v2, v7

    nop

    nop

    invoke-static {v1, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    aput-object v0, v2, v5

    sput-object v2, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    .line 454
    return-void
.end method

.method private constructor <init>(J)V
    .locals 3
    .param p1, "ni"    # J

    .prologue
    const/4 v0, 0x0

    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput v0, p0, Landroid/graphics/Typeface;->mStyle:I

    .line 130
    iput-boolean v0, p0, Landroid/graphics/Typeface;->isLikeDefault:Z

    .line 338
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 339
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "native typeface cannot be made"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 342
    :cond_0
    iput-wide p1, p0, Landroid/graphics/Typeface;->native_instance:J

    .line 343
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->nativeGetStyle(J)I

    move-result v0

    iput v0, p0, Landroid/graphics/Typeface;->mStyle:I

    .line 344
    return-void
.end method

.method public static SetAppTypeFace(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "sAppName"    # Ljava/lang/String;

    .prologue
    .line 846
    invoke-static {p0}, Landroid/graphics/Typeface;->SetFlipFonts(Landroid/content/Context;)V

    .line 850
    return-void
.end method

.method private static SetFlipFonts(Landroid/content/Context;)V
    .locals 10
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 716
    const-string v4, ""

    .line 719
    .local v4, "strFontPathBold":Ljava/lang/String;
    const/4 v5, 0x1

    invoke-static {p0, v5}, Landroid/graphics/Typeface;->getFontPathFlipFont(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 722
    .local v1, "strFontPath":Ljava/lang/String;
    const-string v5, "default"

    invoke-virtual {v1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 726
    const/4 v5, 0x0

    sput-boolean v5, Landroid/graphics/Typeface;->isFlipFontUsed:Z

    .line 740
    :goto_0
    sget-object v5, Landroid/graphics/Typeface;->FlipFontPath:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 833
    :cond_0
    :goto_1
    return-void

    .line 730
    :cond_1
    const/4 v5, 0x1

    sput-boolean v5, Landroid/graphics/Typeface;->isFlipFontUsed:Z

    .line 732
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "DroidSans-Bold.ttf"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 733
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "DroidSans.ttf"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 745
    :cond_2
    sput-object v1, Landroid/graphics/Typeface;->FlipFontPath:Ljava/lang/String;

    .line 762
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iget-wide v2, v5, Landroid/graphics/Typeface;->native_instance:J

    .line 763
    .local v2, "iNative":J
    sget-boolean v5, Landroid/graphics/Typeface;->isFlipFontUsed:Z

    if-eqz v5, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 764
    :cond_3
    sget-object v5, Landroid/graphics/Typeface;->sDefaultTypeface:Landroid/graphics/Typeface;

    iget-wide v6, v5, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v6, v7}, Landroid/graphics/Typeface;->nativeSetDefault(J)V

    .line 765
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(JI)J

    move-result-wide v6

    iput-wide v6, v5, Landroid/graphics/Typeface;->native_instance:J

    .line 778
    :cond_4
    :goto_2
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    sget-object v6, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iget-wide v6, v6, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v6, v7}, Landroid/graphics/Typeface;->nativeGetStyle(J)I

    move-result v6

    iput v6, v5, Landroid/graphics/Typeface;->mStyle:I

    .line 783
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    iget-wide v2, v5, Landroid/graphics/Typeface;->native_instance:J

    .line 784
    sget-boolean v5, Landroid/graphics/Typeface;->isFlipFontUsed:Z

    if-eqz v5, :cond_5

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 785
    :cond_5
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(JI)J

    move-result-wide v6

    iput-wide v6, v5, Landroid/graphics/Typeface;->native_instance:J

    .line 797
    :cond_6
    :goto_3
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    sget-object v6, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    iget-wide v6, v6, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v6, v7}, Landroid/graphics/Typeface;->nativeGetStyle(J)I

    move-result v6

    iput v6, v5, Landroid/graphics/Typeface;->mStyle:I

    .line 802
    sget-object v5, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    iget-wide v2, v5, Landroid/graphics/Typeface;->native_instance:J

    .line 803
    sget-object v5, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    sget-object v6, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iget-wide v6, v6, Landroid/graphics/Typeface;->native_instance:J

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(JI)J

    move-result-wide v6

    iput-wide v6, v5, Landroid/graphics/Typeface;->native_instance:J

    .line 804
    sget-object v5, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    sget-object v6, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    iget-wide v6, v6, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v6, v7}, Landroid/graphics/Typeface;->nativeGetStyle(J)I

    move-result v6

    iput v6, v5, Landroid/graphics/Typeface;->mStyle:I

    .line 808
    sget-object v5, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    iget-wide v2, v5, Landroid/graphics/Typeface;->native_instance:J

    .line 809
    sget-object v5, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    sget-object v6, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    iget-wide v6, v6, Landroid/graphics/Typeface;->native_instance:J

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(JI)J

    move-result-wide v6

    iput-wide v6, v5, Landroid/graphics/Typeface;->native_instance:J

    .line 810
    sget-object v5, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    sget-object v6, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    iget-wide v6, v6, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v6, v7}, Landroid/graphics/Typeface;->nativeGetStyle(J)I

    move-result v6

    iput v6, v5, Landroid/graphics/Typeface;->mStyle:I

    .line 814
    sget-object v5, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    iget-wide v2, v5, Landroid/graphics/Typeface;->native_instance:J

    .line 815
    sget-object v5, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    sget-object v6, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iget-wide v6, v6, Landroid/graphics/Typeface;->native_instance:J

    const/4 v8, 0x2

    invoke-static {v6, v7, v8}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(JI)J

    move-result-wide v6

    iput-wide v6, v5, Landroid/graphics/Typeface;->native_instance:J

    .line 816
    sget-object v5, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    sget-object v6, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    const/4 v7, 0x2

    aget-object v6, v6, v7

    iget-wide v6, v6, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v6, v7}, Landroid/graphics/Typeface;->nativeGetStyle(J)I

    move-result v6

    iput v6, v5, Landroid/graphics/Typeface;->mStyle:I

    .line 820
    sget-object v5, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    iget-wide v2, v5, Landroid/graphics/Typeface;->native_instance:J

    .line 821
    sget-object v5, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    sget-object v6, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    iget-wide v6, v6, Landroid/graphics/Typeface;->native_instance:J

    const/4 v8, 0x3

    invoke-static {v6, v7, v8}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(JI)J

    move-result-wide v6

    iput-wide v6, v5, Landroid/graphics/Typeface;->native_instance:J

    .line 822
    sget-object v5, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    sget-object v6, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    const/4 v7, 0x3

    aget-object v6, v6, v7

    iget-wide v6, v6, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v6, v7}, Landroid/graphics/Typeface;->nativeGetStyle(J)I

    move-result v6

    iput v6, v5, Landroid/graphics/Typeface;->mStyle:I

    .line 825
    sget-boolean v5, Landroid/graphics/Typeface;->isFlipFontUsed:Z

    if-eqz v5, :cond_0

    .line 826
    sget-object v5, Landroid/graphics/Typeface;->sDefaultTypeface:Landroid/graphics/Typeface;

    iget-wide v6, v5, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v6, v7}, Landroid/graphics/Typeface;->nativeSetDefault(J)V

    goto/16 :goto_1

    .line 770
    :cond_7
    :try_start_0
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {v1}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    iget-wide v6, v6, Landroid/graphics/Typeface;->native_instance:J

    iput-wide v6, v5, Landroid/graphics/Typeface;->native_instance:J
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 775
    :goto_4
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iget-wide v6, v5, Landroid/graphics/Typeface;->native_instance:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-nez v5, :cond_4

    .line 776
    sget-object v6, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v5, 0x0

    check-cast v5, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v5, v7}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    iget-wide v8, v5, Landroid/graphics/Typeface;->native_instance:J

    iput-wide v8, v6, Landroid/graphics/Typeface;->native_instance:J

    goto/16 :goto_2

    .line 771
    :catch_0
    move-exception v0

    .line 772
    .local v0, "e":Ljava/lang/RuntimeException;
    sget-object v6, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v5, 0x0

    check-cast v5, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v5, v7}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    iget-wide v8, v5, Landroid/graphics/Typeface;->native_instance:J

    iput-wide v8, v6, Landroid/graphics/Typeface;->native_instance:J

    goto :goto_4

    .line 789
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_8
    :try_start_1
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-static {v4}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    iget-wide v6, v6, Landroid/graphics/Typeface;->native_instance:J

    iput-wide v6, v5, Landroid/graphics/Typeface;->native_instance:J
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 794
    :goto_5
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    iget-wide v6, v5, Landroid/graphics/Typeface;->native_instance:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-nez v5, :cond_6

    .line 795
    sget-object v6, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    const/4 v5, 0x0

    check-cast v5, Ljava/lang/String;

    const/4 v7, 0x1

    invoke-static {v5, v7}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    iget-wide v8, v5, Landroid/graphics/Typeface;->native_instance:J

    iput-wide v8, v6, Landroid/graphics/Typeface;->native_instance:J

    goto/16 :goto_3

    .line 790
    :catch_1
    move-exception v0

    .line 791
    .restart local v0    # "e":Ljava/lang/RuntimeException;
    sget-object v6, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    const/4 v5, 0x0

    check-cast v5, Ljava/lang/String;

    const/4 v7, 0x1

    invoke-static {v5, v7}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    iget-wide v8, v5, Landroid/graphics/Typeface;->native_instance:J

    iput-wide v8, v6, Landroid/graphics/Typeface;->native_instance:J

    goto :goto_5
.end method

.method public static create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;
    .locals 6
    .param p0, "family"    # Landroid/graphics/Typeface;
    .param p1, "style"    # I

    .prologue
    .line 196
    const-wide/16 v0, 0x0

    .line 200
    .local v0, "ni":J
    if-ltz p1, :cond_0

    const/4 v4, 0x3

    if-le p1, v4, :cond_1

    .line 201
    :cond_0
    const/4 p1, 0x0

    .line 204
    :cond_1
    if-eqz p0, :cond_4

    .line 206
    iget v4, p0, Landroid/graphics/Typeface;->mStyle:I

    if-ne v4, p1, :cond_3

    move-object v3, p0

    .line 243
    :cond_2
    :goto_0
    return-object v3

    .line 210
    :cond_3
    sget-boolean v4, Landroid/graphics/Typeface;->isFlipFontUsed:Z

    if-eqz v4, :cond_8

    iget-boolean v4, p0, Landroid/graphics/Typeface;->isLikeDefault:Z

    if-eqz v4, :cond_8

    .line 211
    const-wide/16 v0, 0x0

    .line 218
    :cond_4
    :goto_1
    sget-object v4, Landroid/graphics/Typeface;->sTypefaceCache:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 220
    .local v2, "styles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Typeface;>;"
    if-eqz v2, :cond_5

    .line 221
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Typeface;

    .line 223
    .local v3, "typeface":Landroid/graphics/Typeface;
    if-nez v3, :cond_2

    .line 228
    .end local v3    # "typeface":Landroid/graphics/Typeface;
    :cond_5
    new-instance v3, Landroid/graphics/Typeface;

    invoke-static {v0, v1, p1}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(JI)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Landroid/graphics/Typeface;-><init>(J)V

    .line 232
    .restart local v3    # "typeface":Landroid/graphics/Typeface;
    if-eqz v3, :cond_6

    if-eqz p0, :cond_6

    .line 234
    iget-boolean v4, p0, Landroid/graphics/Typeface;->isLikeDefault:Z

    iput-boolean v4, v3, Landroid/graphics/Typeface;->isLikeDefault:Z

    .line 237
    :cond_6
    if-nez v2, :cond_7

    .line 238
    new-instance v2, Landroid/util/SparseArray;

    .end local v2    # "styles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Typeface;>;"
    const/4 v4, 0x4

    invoke-direct {v2, v4}, Landroid/util/SparseArray;-><init>(I)V

    .line 239
    .restart local v2    # "styles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Typeface;>;"
    sget-object v4, Landroid/graphics/Typeface;->sTypefaceCache:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v0, v1, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 241
    :cond_7
    invoke-virtual {v2, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 213
    .end local v2    # "styles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Typeface;>;"
    .end local v3    # "typeface":Landroid/graphics/Typeface;
    :cond_8
    iget-wide v0, p0, Landroid/graphics/Typeface;->native_instance:J

    goto :goto_1
.end method

.method public static create(Ljava/lang/String;I)Landroid/graphics/Typeface;
    .locals 1
    .param p0, "familyName"    # Ljava/lang/String;
    .param p1, "style"    # I

    .prologue
    .line 178
    sget-object v0, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 179
    sget-object v0, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    invoke-static {v0, p1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 181
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 5
    .param p0, "mgr"    # Landroid/content/res/AssetManager;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 267
    sget-object v2, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    if-eqz v2, :cond_0

    .line 268
    new-instance v1, Landroid/graphics/FontFamily;

    invoke-direct {v1}, Landroid/graphics/FontFamily;-><init>()V

    .line 269
    .local v1, "fontFamily":Landroid/graphics/FontFamily;
    invoke-virtual {v1, p0, p1}, Landroid/graphics/FontFamily;->addFontFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 270
    const/4 v2, 0x1

    new-array v0, v2, [Landroid/graphics/FontFamily;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 271
    .local v0, "families":[Landroid/graphics/FontFamily;
    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFamiliesWithDefault([Landroid/graphics/FontFamily;)Landroid/graphics/Typeface;

    move-result-object v2

    return-object v2

    .line 274
    .end local v0    # "families":[Landroid/graphics/FontFamily;
    .end local v1    # "fontFamily":Landroid/graphics/FontFamily;
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Font asset not found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static createFromFamilies([Landroid/graphics/FontFamily;)Landroid/graphics/Typeface;
    .locals 6
    .param p0, "families"    # [Landroid/graphics/FontFamily;

    .prologue
    .line 311
    array-length v2, p0

    new-array v1, v2, [J

    .line 312
    .local v1, "ptrArray":[J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 313
    aget-object v2, p0, v0

    iget-wide v2, v2, Landroid/graphics/FontFamily;->mNativePtr:J

    aput-wide v2, v1, v0

    .line 312
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 315
    :cond_0
    new-instance v2, Landroid/graphics/Typeface;

    invoke-static {v1}, Landroid/graphics/Typeface;->nativeCreateFromArray([J)J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Landroid/graphics/Typeface;-><init>(J)V

    return-object v2
.end method

.method public static createFromFamiliesWithDefault([Landroid/graphics/FontFamily;)Landroid/graphics/Typeface;
    .locals 6
    .param p0, "families"    # [Landroid/graphics/FontFamily;

    .prologue
    .line 326
    array-length v2, p0

    sget-object v3, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    array-length v3, v3

    add-int/2addr v2, v3

    new-array v1, v2, [J

    .line 327
    .local v1, "ptrArray":[J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 328
    aget-object v2, p0, v0

    iget-wide v2, v2, Landroid/graphics/FontFamily;->mNativePtr:J

    aput-wide v2, v1, v0

    .line 327
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 330
    :cond_0
    const/4 v0, 0x0

    :goto_1
    sget-object v2, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 331
    array-length v2, p0

    add-int/2addr v2, v0

    sget-object v3, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    aget-object v3, v3, v0

    iget-wide v4, v3, Landroid/graphics/FontFamily;->mNativePtr:J

    aput-wide v4, v1, v2

    .line 330
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 333
    :cond_1
    new-instance v2, Landroid/graphics/Typeface;

    invoke-static {v1}, Landroid/graphics/Typeface;->nativeCreateFromArray([J)J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Landroid/graphics/Typeface;-><init>(J)V

    return-object v2
.end method

.method public static createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;
    .locals 1
    .param p0, "path"    # Ljava/io/File;

    .prologue
    .line 284
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public static createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 5
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 294
    sget-object v2, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    if-eqz v2, :cond_0

    .line 295
    new-instance v1, Landroid/graphics/FontFamily;

    invoke-direct {v1}, Landroid/graphics/FontFamily;-><init>()V

    .line 296
    .local v1, "fontFamily":Landroid/graphics/FontFamily;
    invoke-virtual {v1, p0}, Landroid/graphics/FontFamily;->addFont(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 297
    const/4 v2, 0x1

    new-array v0, v2, [Landroid/graphics/FontFamily;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 298
    .local v0, "families":[Landroid/graphics/FontFamily;
    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFamiliesWithDefault([Landroid/graphics/FontFamily;)Landroid/graphics/Typeface;

    move-result-object v2

    return-object v2

    .line 301
    .end local v0    # "families":[Landroid/graphics/FontFamily;
    .end local v1    # "fontFamily":Landroid/graphics/FontFamily;
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Font not found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static defaultFromStyle(I)Landroid/graphics/Typeface;
    .locals 1
    .param p0, "style"    # I

    .prologue
    .line 254
    if-ltz p0, :cond_0

    const/4 v0, 0x3

    if-le p0, v0, :cond_1

    .line 255
    :cond_0
    const/4 p0, 0x0

    .line 257
    :cond_1
    sget-object v0, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static getFontNameFlipFont(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "typefaceIndex"    # I

    .prologue
    .line 508
    invoke-static {p0, p1}, Landroid/graphics/Typeface;->getFullFlipFont(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 511
    .local v1, "sx":Ljava/lang/String;
    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 514
    .local v0, "parts":[Ljava/lang/String;
    array-length v2, v0

    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    .line 516
    const/4 v2, 0x0

    aget-object v2, v0, v2

    const-string v3, "default"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 517
    const-string v2, "default"

    .line 521
    :goto_0
    return-object v2

    .line 519
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 521
    :cond_1
    const/4 v2, 0x1

    aget-object v2, v0, v2

    goto :goto_0
.end method

.method public static getFontPathFlipFont(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "typefaceIndex"    # I

    .prologue
    .line 532
    invoke-static {p0, p1}, Landroid/graphics/Typeface;->getFullFlipFont(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 535
    .local v1, "sx":Ljava/lang/String;
    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 536
    .local v0, "parts":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v0, v2

    return-object v2
.end method

.method private static getFullFlipFont(Landroid/content/Context;I)Ljava/lang/String;
    .locals 13
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "typefaceIndex"    # I

    .prologue
    .line 547
    const-string v10, "default"

    .line 549
    .local v10, "systemFont":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 707
    :cond_0
    :goto_0
    :pswitch_0
    if-nez v10, :cond_1

    .line 708
    const-string v10, "default"

    .line 710
    .end local v10    # "systemFont":Ljava/lang/String;
    :cond_1
    return-object v10

    .line 552
    .restart local v10    # "systemFont":Ljava/lang/String;
    :pswitch_1
    const-string v8, ""

    .line 553
    .local v8, "sans_path":Ljava/lang/String;
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 556
    .local v3, "currentUser":I
    if-eqz p0, :cond_2

    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v11

    if-eqz v11, :cond_2

    if-nez v3, :cond_2

    .line 559
    :try_start_0
    const-string v11, "activity"

    invoke-virtual {p0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 560
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1e

    move-result v3

    .line 567
    .end local v0    # "am":Landroid/app/ActivityManager;
    :cond_2
    :goto_1
    if-nez v3, :cond_6

    .line 568
    const-string v8, "/data/data/com.android.settings/app_fonts/sans.loc"

    .line 571
    const-string/jumbo v11, "persist.sys.flipfontpath"

    const-string v12, "empty"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 575
    const-string v11, "empty"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 577
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 579
    .local v5, "file":Ljava/io/File;
    const/4 v6, 0x0

    .line 580
    .local v6, "fis":Ljava/io/FileInputStream;
    const/4 v9, 0x0

    .line 581
    .local v9, "string":Ljava/lang/String;
    const/4 v1, 0x0

    .line 584
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 585
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .local v7, "fis":Ljava/io/FileInputStream;
    :try_start_2
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/InputStreamReader;

    invoke-direct {v11, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1c
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1a
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    .line 586
    .end local v1    # "br":Ljava/io/BufferedReader;
    .local v2, "br":Ljava/io/BufferedReader;
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .line 589
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 590
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1d
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1b
    .catchall {:try_start_3 .. :try_end_3} :catchall_8

    .line 599
    if-eqz v7, :cond_3

    .line 600
    :try_start_4
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_3
    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    move-object v6, v7

    .line 606
    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :cond_4
    :goto_2
    move-object v10, v9

    .line 608
    goto :goto_0

    .line 602
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    :catch_0
    move-exception v11

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    move-object v6, v7

    .line 605
    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    goto :goto_2

    .line 592
    :catch_1
    move-exception v4

    .line 593
    .local v4, "e":Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_5
    const-string v9, "default"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 599
    if-eqz v6, :cond_4

    .line 600
    :try_start_6
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    .line 602
    :catch_2
    move-exception v11

    goto :goto_2

    .line 594
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v4

    .line 595
    .local v4, "e":Ljava/io/IOException;
    :goto_4
    :try_start_7
    const-string v9, "default"

    .line 596
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 599
    if-eqz v6, :cond_4

    .line 600
    :try_start_8
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_2

    .line 602
    :catch_4
    move-exception v11

    goto :goto_2

    .line 598
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v11

    .line 599
    :goto_5
    if-eqz v6, :cond_5

    .line 600
    :try_start_9
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_f

    .line 604
    :cond_5
    :goto_6
    throw v11

    .line 609
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .end local v9    # "string":Ljava/lang/String;
    :cond_6
    const/16 v11, 0x64

    if-lt v3, v11, :cond_a

    .line 612
    const-string v8, "/data/data/com.android.settings/app_fonts/sans.loc"

    .line 615
    const-string/jumbo v11, "persist.sys.flipfontpath"

    const-string v12, "empty"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 619
    const-string v11, "empty"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 621
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 623
    .restart local v5    # "file":Ljava/io/File;
    const/4 v6, 0x0

    .line 624
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    const/4 v9, 0x0

    .line 625
    .restart local v9    # "string":Ljava/lang/String;
    const/4 v1, 0x0

    .line 628
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :try_start_a
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_6
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 629
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    :try_start_b
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/InputStreamReader;

    invoke-direct {v11, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_18
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_16
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 630
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    :try_start_c
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .line 633
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 634
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_19
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_17
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 643
    if-eqz v7, :cond_7

    .line 644
    :try_start_d
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5

    :cond_7
    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    move-object v6, v7

    .line 650
    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :cond_8
    :goto_7
    move-object v10, v9

    .line 651
    goto/16 :goto_0

    .line 646
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    :catch_5
    move-exception v11

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    move-object v6, v7

    .line 649
    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    goto :goto_7

    .line 636
    :catch_6
    move-exception v4

    .line 637
    .local v4, "e":Ljava/io/FileNotFoundException;
    :goto_8
    :try_start_e
    const-string v9, "default"
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 643
    if-eqz v6, :cond_8

    .line 644
    :try_start_f
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_7

    goto :goto_7

    .line 646
    :catch_7
    move-exception v11

    goto :goto_7

    .line 638
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    :catch_8
    move-exception v4

    .line 639
    .local v4, "e":Ljava/io/IOException;
    :goto_9
    :try_start_10
    const-string v9, "default"

    .line 640
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 643
    if-eqz v6, :cond_8

    .line 644
    :try_start_11
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_9

    goto :goto_7

    .line 646
    :catch_9
    move-exception v11

    goto :goto_7

    .line 642
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v11

    .line 643
    :goto_a
    if-eqz v6, :cond_9

    .line 644
    :try_start_12
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_10

    .line 648
    :cond_9
    :goto_b
    throw v11

    .line 653
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .end local v9    # "string":Ljava/lang/String;
    :cond_a
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "/data/user/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/com.android.settings/app_fonts/sans.loc"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 657
    const-string v10, "empty"

    .line 660
    const-string v11, "empty"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 662
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 664
    .restart local v5    # "file":Ljava/io/File;
    const/4 v6, 0x0

    .line 665
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    const/4 v9, 0x0

    .line 666
    .restart local v9    # "string":Ljava/lang/String;
    const/4 v1, 0x0

    .line 669
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :try_start_13
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_13
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_13} :catch_b
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_d
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    .line 670
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    :try_start_14
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/InputStreamReader;

    invoke-direct {v11, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_14
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_14} :catch_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_12
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    .line 671
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    :try_start_15
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .line 674
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 675
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_15
    .catch Ljava/io/FileNotFoundException; {:try_start_15 .. :try_end_15} :catch_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_13
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    .line 684
    if-eqz v7, :cond_b

    .line 685
    :try_start_16
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_a

    :cond_b
    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    move-object v6, v7

    .line 691
    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :cond_c
    :goto_c
    move-object v10, v9

    goto/16 :goto_0

    .line 687
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    :catch_a
    move-exception v11

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    move-object v6, v7

    .line 690
    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    goto :goto_c

    .line 677
    :catch_b
    move-exception v4

    .line 678
    .local v4, "e":Ljava/io/FileNotFoundException;
    :goto_d
    :try_start_17
    const-string v9, "default"
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    .line 684
    if-eqz v6, :cond_c

    .line 685
    :try_start_18
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_c

    goto :goto_c

    .line 687
    :catch_c
    move-exception v11

    goto :goto_c

    .line 679
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    :catch_d
    move-exception v4

    .line 680
    .local v4, "e":Ljava/io/IOException;
    :goto_e
    :try_start_19
    const-string v9, "default"

    .line 681
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_2

    .line 684
    if-eqz v6, :cond_c

    .line 685
    :try_start_1a
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_e

    goto :goto_c

    .line 687
    :catch_e
    move-exception v11

    goto :goto_c

    .line 683
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_2
    move-exception v11

    .line 684
    :goto_f
    if-eqz v6, :cond_d

    .line 685
    :try_start_1b
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_11

    .line 689
    :cond_d
    :goto_10
    throw v11

    .line 602
    :catch_f
    move-exception v12

    goto/16 :goto_6

    .line 646
    :catch_10
    move-exception v12

    goto :goto_b

    .line 687
    :catch_11
    move-exception v12

    goto :goto_10

    .line 683
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    :catchall_3
    move-exception v11

    move-object v6, v7

    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    goto :goto_f

    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    :catchall_4
    move-exception v11

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    goto :goto_f

    .line 679
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    :catch_12
    move-exception v4

    move-object v6, v7

    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    goto :goto_e

    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    :catch_13
    move-exception v4

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    goto :goto_e

    .line 677
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    :catch_14
    move-exception v4

    move-object v6, v7

    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    goto :goto_d

    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    :catch_15
    move-exception v4

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    goto :goto_d

    .line 642
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    :catchall_5
    move-exception v11

    move-object v6, v7

    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_a

    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    :catchall_6
    move-exception v11

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_a

    .line 638
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    :catch_16
    move-exception v4

    move-object v6, v7

    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_9

    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    :catch_17
    move-exception v4

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_9

    .line 636
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    :catch_18
    move-exception v4

    move-object v6, v7

    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_8

    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    :catch_19
    move-exception v4

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_8

    .line 598
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    :catchall_7
    move-exception v11

    move-object v6, v7

    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_5

    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    :catchall_8
    move-exception v11

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_5

    .line 594
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    :catch_1a
    move-exception v4

    move-object v6, v7

    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_4

    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    :catch_1b
    move-exception v4

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_4

    .line 592
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    :catch_1c
    move-exception v4

    move-object v6, v7

    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_3

    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    :catch_1d
    move-exception v4

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_3

    .line 562
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .end local v9    # "string":Ljava/lang/String;
    :catch_1e
    move-exception v11

    goto/16 :goto_1

    .line 549
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static getSystemFontConfigLocation()Ljava/io/File;
    .locals 2

    .prologue
    .line 457
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static init()V
    .locals 25

    .prologue
    .line 361
    invoke-static {}, Landroid/graphics/Typeface;->getSystemFontConfigLocation()Ljava/io/File;

    move-result-object v18

    .line 362
    .local v18, "systemFontConfigLocation":Ljava/io/File;
    new-instance v6, Ljava/io/File;

    const-string v22, "fonts.xml"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-direct {v6, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 364
    .local v6, "configFilename":Ljava/io/File;
    :try_start_0
    new-instance v13, Ljava/io/FileInputStream;

    invoke-direct {v13, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 365
    .local v13, "fontsIn":Ljava/io/FileInputStream;
    invoke-static {v13}, Landroid/graphics/FontListParser;->parse(Ljava/io/InputStream;)Landroid/graphics/FontListParser$Config;

    move-result-object v11

    .line 367
    .local v11, "fontConfig":Landroid/graphics/FontListParser$Config;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 370
    .local v10, "familyList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontFamily;>;"
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    iget-object v0, v11, Landroid/graphics/FontListParser$Config;->families:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v14, v0, :cond_2

    .line 371
    iget-object v0, v11, Landroid/graphics/FontListParser$Config;->families:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/FontListParser$Family;

    .line 372
    .local v8, "f":Landroid/graphics/FontListParser$Family;
    if-eqz v14, :cond_0

    iget-object v0, v8, Landroid/graphics/FontListParser$Family;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    if-nez v22, :cond_1

    .line 373
    :cond_0
    invoke-static {v8}, Landroid/graphics/Typeface;->makeFamilyFromParsed(Landroid/graphics/FontListParser$Family;)Landroid/graphics/FontFamily;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 370
    :cond_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 376
    .end local v8    # "f":Landroid/graphics/FontListParser$Family;
    :cond_2
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v22

    move/from16 v0, v22

    new-array v0, v0, [Landroid/graphics/FontFamily;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v10, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v22

    check-cast v22, [Landroid/graphics/FontFamily;

    sput-object v22, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    .line 377
    sget-object v22, Landroid/graphics/Typeface;->sFallbackFonts:[Landroid/graphics/FontFamily;

    invoke-static/range {v22 .. v22}, Landroid/graphics/Typeface;->createFromFamilies([Landroid/graphics/FontFamily;)Landroid/graphics/Typeface;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/graphics/Typeface;->setDefault(Landroid/graphics/Typeface;)V

    .line 379
    new-instance v19, Ljava/util/HashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    .line 380
    .local v19, "systemFonts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    const/4 v14, 0x0

    :goto_1
    iget-object v0, v11, Landroid/graphics/FontListParser$Config;->families:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v14, v0, :cond_7

    .line 382
    iget-object v0, v11, Landroid/graphics/FontListParser$Config;->families:Ljava/util/List;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/FontListParser$Family;

    .line 383
    .restart local v8    # "f":Landroid/graphics/FontListParser$Family;
    iget-object v0, v8, Landroid/graphics/FontListParser$Family;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_4

    .line 384
    if-nez v14, :cond_5

    .line 387
    sget-object v20, Landroid/graphics/Typeface;->sDefaultTypeface:Landroid/graphics/Typeface;

    .line 395
    .local v20, "typeface":Landroid/graphics/Typeface;
    :goto_2
    const/16 v16, 0x0

    .local v16, "ix":I
    :goto_3
    sget-object v22, Landroid/graphics/Typeface;->FontsLikeDefault:[Ljava/lang/String;

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v16

    move/from16 v1, v22

    if-ge v0, v1, :cond_3

    .line 396
    iget-object v0, v8, Landroid/graphics/FontListParser$Family;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    sget-object v23, Landroid/graphics/Typeface;->FontsLikeDefault:[Ljava/lang/String;

    aget-object v23, v23, v16

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_6

    .line 397
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, v20

    iput-boolean v0, v1, Landroid/graphics/Typeface;->isLikeDefault:Z

    .line 402
    :cond_3
    iget-object v0, v8, Landroid/graphics/FontListParser$Family;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    .end local v16    # "ix":I
    .end local v20    # "typeface":Landroid/graphics/Typeface;
    :cond_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 389
    :cond_5
    invoke-static {v8}, Landroid/graphics/Typeface;->makeFamilyFromParsed(Landroid/graphics/FontListParser$Family;)Landroid/graphics/FontFamily;

    move-result-object v12

    .line 390
    .local v12, "fontFamily":Landroid/graphics/FontFamily;
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v9, v0, [Landroid/graphics/FontFamily;

    const/16 v22, 0x0

    aput-object v12, v9, v22

    .line 391
    .local v9, "families":[Landroid/graphics/FontFamily;
    invoke-static {v9}, Landroid/graphics/Typeface;->createFromFamiliesWithDefault([Landroid/graphics/FontFamily;)Landroid/graphics/Typeface;

    move-result-object v20

    .restart local v20    # "typeface":Landroid/graphics/Typeface;
    goto :goto_2

    .line 395
    .end local v9    # "families":[Landroid/graphics/FontFamily;
    .end local v12    # "fontFamily":Landroid/graphics/FontFamily;
    .restart local v16    # "ix":I
    :cond_6
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 405
    .end local v8    # "f":Landroid/graphics/FontListParser$Family;
    .end local v16    # "ix":I
    .end local v20    # "typeface":Landroid/graphics/Typeface;
    :cond_7
    iget-object v0, v11, Landroid/graphics/FontListParser$Config;->aliases:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_a

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/FontListParser$Alias;

    .line 406
    .local v4, "alias":Landroid/graphics/FontListParser$Alias;
    iget-object v0, v4, Landroid/graphics/FontListParser$Alias;->toName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Typeface;

    .line 407
    .local v5, "base":Landroid/graphics/Typeface;
    move-object/from16 v17, v5

    .line 408
    .local v17, "newFace":Landroid/graphics/Typeface;
    iget v0, v4, Landroid/graphics/FontListParser$Alias;->weight:I

    move/from16 v21, v0

    .line 409
    .local v21, "weight":I
    const/16 v22, 0x190

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_8

    .line 410
    new-instance v17, Landroid/graphics/Typeface;

    .end local v17    # "newFace":Landroid/graphics/Typeface;
    iget-wide v0, v5, Landroid/graphics/Typeface;->native_instance:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/graphics/Typeface;->nativeCreateWeightAlias(JI)J

    move-result-wide v22

    move-object/from16 v0, v17

    move-wide/from16 v1, v22

    invoke-direct {v0, v1, v2}, Landroid/graphics/Typeface;-><init>(J)V

    .line 413
    .restart local v17    # "newFace":Landroid/graphics/Typeface;
    const/16 v16, 0x0

    .restart local v16    # "ix":I
    :goto_5
    sget-object v22, Landroid/graphics/Typeface;->FontsLikeDefault:[Ljava/lang/String;

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v16

    move/from16 v1, v22

    if-ge v0, v1, :cond_8

    .line 414
    iget-object v0, v4, Landroid/graphics/FontListParser$Alias;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    sget-object v23, Landroid/graphics/Typeface;->FontsLikeDefault:[Ljava/lang/String;

    aget-object v23, v23, v16

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_9

    .line 415
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, v17

    iput-boolean v0, v1, Landroid/graphics/Typeface;->isLikeDefault:Z

    .line 421
    .end local v16    # "ix":I
    :cond_8
    iget-object v0, v4, Landroid/graphics/FontListParser$Alias;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_4

    .line 425
    .end local v4    # "alias":Landroid/graphics/FontListParser$Alias;
    .end local v5    # "base":Landroid/graphics/Typeface;
    .end local v10    # "familyList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontFamily;>;"
    .end local v11    # "fontConfig":Landroid/graphics/FontListParser$Config;
    .end local v13    # "fontsIn":Ljava/io/FileInputStream;
    .end local v14    # "i":I
    .end local v15    # "i$":Ljava/util/Iterator;
    .end local v17    # "newFace":Landroid/graphics/Typeface;
    .end local v19    # "systemFonts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    .end local v21    # "weight":I
    :catch_0
    move-exception v7

    .line 426
    .local v7, "e":Ljava/lang/RuntimeException;
    sget-object v22, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    const-string v23, "Didn\'t create default family (most likely, non-Minikin build)"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 435
    .end local v7    # "e":Ljava/lang/RuntimeException;
    :goto_6
    return-void

    .line 413
    .restart local v4    # "alias":Landroid/graphics/FontListParser$Alias;
    .restart local v5    # "base":Landroid/graphics/Typeface;
    .restart local v10    # "familyList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontFamily;>;"
    .restart local v11    # "fontConfig":Landroid/graphics/FontListParser$Config;
    .restart local v13    # "fontsIn":Ljava/io/FileInputStream;
    .restart local v14    # "i":I
    .restart local v15    # "i$":Ljava/util/Iterator;
    .restart local v16    # "ix":I
    .restart local v17    # "newFace":Landroid/graphics/Typeface;
    .restart local v19    # "systemFonts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    .restart local v21    # "weight":I
    :cond_9
    add-int/lit8 v16, v16, 0x1

    goto :goto_5

    .line 423
    .end local v4    # "alias":Landroid/graphics/FontListParser$Alias;
    .end local v5    # "base":Landroid/graphics/Typeface;
    .end local v16    # "ix":I
    .end local v17    # "newFace":Landroid/graphics/Typeface;
    .end local v21    # "weight":I
    :cond_a
    :try_start_1
    sput-object v19, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_6

    .line 428
    .end local v10    # "familyList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/FontFamily;>;"
    .end local v11    # "fontConfig":Landroid/graphics/FontListParser$Config;
    .end local v13    # "fontsIn":Ljava/io/FileInputStream;
    .end local v14    # "i":I
    .end local v15    # "i$":Ljava/util/Iterator;
    .end local v19    # "systemFonts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    :catch_1
    move-exception v7

    .line 429
    .local v7, "e":Ljava/io/FileNotFoundException;
    sget-object v22, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Error opening "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 430
    .end local v7    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v7

    .line 431
    .local v7, "e":Ljava/io/IOException;
    sget-object v22, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Error reading "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 432
    .end local v7    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v7

    .line 433
    .local v7, "e":Lorg/xmlpull/v1/XmlPullParserException;
    sget-object v22, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "XML parse exception for "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6
.end method

.method private static makeFamilyFromParsed(Landroid/graphics/FontListParser$Family;)Landroid/graphics/FontFamily;
    .locals 6
    .param p0, "family"    # Landroid/graphics/FontListParser$Family;

    .prologue
    invoke-static {p0}, Landroid/graphics/TypefaceHook;->makeFontFamily(Landroid/graphics/FontListParser$Family;)Landroid/graphics/FontFamily;

    move-result-object v0

    return-object v0

    new-instance v1, Landroid/graphics/FontFamily;

    iget-object v3, p0, Landroid/graphics/FontListParser$Family;->lang:Ljava/lang/String;

    iget-object v4, p0, Landroid/graphics/FontListParser$Family;->variant:Ljava/lang/String;

    invoke-direct {v1, v3, v4}, Landroid/graphics/FontFamily;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    .local v1, "fontFamily":Landroid/graphics/FontFamily;
    iget-object v3, p0, Landroid/graphics/FontListParser$Family;->fonts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/FontListParser$Font;

    .line 349
    .local v0, "font":Landroid/graphics/FontListParser$Font;
    iget-object v3, v0, Landroid/graphics/FontListParser$Font;->fontName:Ljava/lang/String;

    iget v4, v0, Landroid/graphics/FontListParser$Font;->weight:I

    iget-boolean v5, v0, Landroid/graphics/FontListParser$Font;->isItalic:Z

    invoke-virtual {v1, v3, v4, v5}, Landroid/graphics/FontFamily;->addFontWeightStyle(Ljava/lang/String;IZ)Z

    goto :goto_0

    .line 351
    .end local v0    # "font":Landroid/graphics/FontListParser$Font;
    :cond_0
    return-object v1
.end method

.method private static native nativeCreateFromArray([J)J
.end method

.method private static native nativeCreateFromTypeface(JI)J
.end method

.method private static native nativeCreateWeightAlias(JI)J
.end method

.method private static native nativeGetStyle(J)I
.end method

.method private static native nativeSetDefault(J)V
.end method

.method private static native nativeUnref(J)V
.end method

.method private static setDefault(Landroid/graphics/Typeface;)V
    .locals 2
    .param p0, "t"    # Landroid/graphics/Typeface;

    .prologue
    .line 147
    sput-object p0, Landroid/graphics/Typeface;->sDefaultTypeface:Landroid/graphics/Typeface;

    .line 148
    iget-wide v0, p0, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->nativeSetDefault(J)V

    .line 149
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 471
    if-ne p0, p1, :cond_1

    .line 476
    :cond_0
    :goto_0
    return v1

    .line 472
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 474
    check-cast v0, Landroid/graphics/Typeface;

    .line 476
    .local v0, "typeface":Landroid/graphics/Typeface;
    iget v3, p0, Landroid/graphics/Typeface;->mStyle:I

    iget v4, v0, Landroid/graphics/Typeface;->mStyle:I

    if-ne v3, v4, :cond_4

    iget-wide v4, p0, Landroid/graphics/Typeface;->native_instance:J

    iget-wide v6, v0, Landroid/graphics/Typeface;->native_instance:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 463
    :try_start_0
    iget-wide v0, p0, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->nativeUnref(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 465
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 467
    return-void

    .line 465
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getStyle()I
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Landroid/graphics/Typeface;->mStyle:I

    return v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 485
    const/16 v0, 0x11

    .line 486
    .local v0, "result":I
    iget-wide v2, p0, Landroid/graphics/Typeface;->native_instance:J

    iget-wide v4, p0, Landroid/graphics/Typeface;->native_instance:J

    const/16 v1, 0x20

    ushr-long/2addr v4, v1

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/lit16 v0, v1, 0x20f

    .line 487
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/graphics/Typeface;->mStyle:I

    add-int v0, v1, v2

    .line 488
    return v0
.end method

.method public final isBold()Z
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Landroid/graphics/Typeface;->mStyle:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isItalic()Z
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Landroid/graphics/Typeface;->mStyle:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
