.class public abstract Landroid/graphics/drawable/Drawable;
.super Ljava/lang/Object;
.source "Drawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/Drawable$ConstantState;,
        Landroid/graphics/drawable/Drawable$Callback;
    }
.end annotation


# static fields
.field public static DCS_FLAG_APPLY_SHADOW:Z

.field static final DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

.field private static SprClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static SprCreateFromStream:Ljava/lang/reflect/Method;

.field private static final ZERO_BOUNDS_RECT:Landroid/graphics/Rect;

.field protected static mTempDensity:F


# instance fields
.field private mBounds:Landroid/graphics/Rect;

.field private mCallback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/drawable/Drawable$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private mChangingConfigurations:I

.field private mImagePath:Ljava/lang/String;

.field private mLayoutDirection:I

.field private mLevel:I

.field private mStateSet:[I

.field private mVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 256
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Landroid/graphics/drawable/Drawable;->ZERO_BOUNDS_RECT:Landroid/graphics/Rect;

    .line 259
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Landroid/graphics/drawable/Drawable;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    .line 262
    sput-object v1, Landroid/graphics/drawable/Drawable;->SprClass:Ljava/lang/Class;

    .line 264
    sput-object v1, Landroid/graphics/drawable/Drawable;->SprCreateFromStream:Ljava/lang/reflect/Method;

    .line 280
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Landroid/graphics/drawable/Drawable;->mTempDensity:F

    .line 303
    const/4 v0, 0x0

    sput-boolean v0, Landroid/graphics/drawable/Drawable;->DCS_FLAG_APPLY_SHADOW:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 267
    sget-object v0, Landroid/util/StateSet;->WILD_CARD:[I

    iput-object v0, p0, Landroid/graphics/drawable/Drawable;->mStateSet:[I

    .line 269
    iput v1, p0, Landroid/graphics/drawable/Drawable;->mLevel:I

    .line 271
    iput v1, p0, Landroid/graphics/drawable/Drawable;->mChangingConfigurations:I

    .line 273
    sget-object v0, Landroid/graphics/drawable/Drawable;->ZERO_BOUNDS_RECT:Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/graphics/drawable/Drawable;->mBounds:Landroid/graphics/Rect;

    .line 275
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/Drawable;->mCallback:Ljava/lang/ref/WeakReference;

    .line 277
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/Drawable;->mVisible:Z

    .line 2721
    return-void
.end method

.method public static createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 10
    .param p0, "pathName"    # Ljava/lang/String;

    .prologue
    const-wide/16 v8, 0x2000

    const/4 v6, 0x0

    .line 2568
    if-nez p0, :cond_0

    .line 2602
    :goto_0
    return-object v6

    .line 2575
    :cond_0
    invoke-static {v8, v9, p0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2579
    :try_start_0
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2581
    .local v1, "bm":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_2

    .line 2583
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Landroid/graphics/drawable/Drawable;->drawableFromBitmap(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 2585
    .local v6, "tmpDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_1

    .line 2587
    invoke-virtual {v6, p0}, Landroid/graphics/drawable/Drawable;->setImagePath(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2597
    :cond_1
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    .end local v6    # "tmpDrawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    .end local v1    # "bm":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method public static createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "is"    # Ljava/io/InputStream;
    .param p3, "srcName"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, 0x2000

    .line 2115
    if-eqz p3, :cond_0

    move-object v0, p3

    :goto_0
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2119
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, p1, p2, p3, v0}, Landroid/graphics/drawable/Drawable;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 2123
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-object v0

    .line 2115
    :cond_0
    const-string v0, "Unknown drawable"

    goto :goto_0

    .line 2123
    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method public static createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/drawable/Drawable;
    .locals 13
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "is"    # Ljava/io/InputStream;
    .param p3, "srcName"    # Ljava/lang/String;
    .param p4, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 2142
    if-nez p2, :cond_1

    .line 2144
    const/4 v9, 0x0

    .line 2263
    :cond_0
    :goto_0
    return-object v9

    .line 2151
    :cond_1
    if-eqz p3, :cond_2

    :try_start_0
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, ".bmp"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, ".spr"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2153
    :cond_2
    invoke-virtual {p2}, Ljava/io/InputStream;->markSupported()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2155
    const/4 v1, 0x3

    new-array v7, v1, [B

    .line 2157
    .local v7, "b":[B
    const/4 v1, 0x3

    invoke-virtual {p2, v1}, Ljava/io/InputStream;->mark(I)V

    .line 2159
    const/4 v1, 0x0

    const/4 v6, 0x3

    invoke-virtual {p2, v7, v1, v6}, Ljava/io/InputStream;->read([BII)I

    .line 2161
    invoke-virtual {p2}, Ljava/io/InputStream;->reset()V

    .line 2164
    const/4 v1, 0x0

    aget-byte v1, v7, v1

    const/16 v6, 0x53

    if-ne v1, v6, :cond_5

    const/4 v1, 0x1

    aget-byte v1, v7, v1

    const/16 v6, 0x50

    if-ne v1, v6, :cond_5

    const/4 v1, 0x2

    aget-byte v1, v7, v1

    const/16 v6, 0x52

    if-ne v1, v6, :cond_5

    .line 2166
    sget-object v1, Landroid/graphics/drawable/Drawable;->SprClass:Ljava/lang/Class;

    if-nez v1, :cond_3

    .line 2168
    const-string v1, "com.samsung.android.sdk.spr.drawable.SprDrawable"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Landroid/graphics/drawable/Drawable;->SprClass:Ljava/lang/Class;

    .line 2172
    :cond_3
    sget-object v1, Landroid/graphics/drawable/Drawable;->SprCreateFromStream:Ljava/lang/reflect/Method;

    if-nez v1, :cond_4

    .line 2174
    sget-object v1, Landroid/graphics/drawable/Drawable;->SprClass:Ljava/lang/Class;

    const-string v6, "createFromStream"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-class v12, Ljava/io/InputStream;

    aput-object v12, v10, v11

    invoke-virtual {v1, v6, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroid/graphics/drawable/Drawable;->SprCreateFromStream:Ljava/lang/reflect/Method;

    .line 2180
    :cond_4
    sget-object v1, Landroid/graphics/drawable/Drawable;->SprCreateFromStream:Ljava/lang/reflect/Method;

    sget-object v6, Landroid/graphics/drawable/Drawable;->SprClass:Ljava/lang/Class;

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p3, v10, v11

    const/4 v11, 0x1

    aput-object p2, v10, v11

    invoke-virtual {v1, v6, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v9, v1

    goto/16 :goto_0

    .line 2188
    .end local v7    # "b":[B
    :catch_0
    move-exception v8

    .line 2190
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 2207
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_5
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 2224
    .local v4, "pad":Landroid/graphics/Rect;
    if-nez p4, :cond_6

    new-instance p4, Landroid/graphics/BitmapFactory$Options;

    .end local p4    # "opts":Landroid/graphics/BitmapFactory$Options;
    invoke-direct/range {p4 .. p4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 2226
    .restart local p4    # "opts":Landroid/graphics/BitmapFactory$Options;
    :cond_6
    if-eqz p0, :cond_9

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    :goto_1
    move-object/from16 v0, p4

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inScreenDensity:I

    .line 2230
    move-object/from16 v0, p4

    invoke-static {p0, p1, p2, v4, v0}, Landroid/graphics/BitmapFactory;->decodeResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2232
    .local v2, "bm":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_a

    .line 2234
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v3

    .line 2236
    .local v3, "np":[B
    if-eqz v3, :cond_7

    invoke-static {v3}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    move-result v1

    if-nez v1, :cond_8

    .line 2238
    :cond_7
    const/4 v3, 0x0

    .line 2240
    const/4 v4, 0x0

    .line 2245
    :cond_8
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 2247
    .local v5, "opticalInsets":Landroid/graphics/Rect;
    invoke-virtual {v2, v5}, Landroid/graphics/Bitmap;->getOpticalInsets(Landroid/graphics/Rect;)V

    move-object v1, p0

    move-object/from16 v6, p3

    .line 2251
    invoke-static/range {v1 .. v6}, Landroid/graphics/drawable/Drawable;->drawableFromBitmap(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 2253
    .local v9, "tmpDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v9, :cond_0

    .line 2255
    move-object/from16 v0, p3

    invoke-virtual {v9, v0}, Landroid/graphics/drawable/Drawable;->setImagePath(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2226
    .end local v2    # "bm":Landroid/graphics/Bitmap;
    .end local v3    # "np":[B
    .end local v5    # "opticalInsets":Landroid/graphics/Rect;
    .end local v9    # "tmpDrawable":Landroid/graphics/drawable/Drawable;
    :cond_9
    sget v1, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    goto :goto_1

    .line 2263
    .restart local v2    # "bm":Landroid/graphics/Bitmap;
    :cond_a
    const/4 v9, 0x0

    goto/16 :goto_0
.end method

.method public static createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "srcName"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, 0x2000

    .line 2088
    if-eqz p1, :cond_0

    move-object v0, p1

    :goto_0
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2092
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0, v1, p0, p1}, Landroid/graphics/drawable/Drawable;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 2096
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-object v0

    .line 2088
    :cond_0
    const-string v0, "Unknown drawable"

    goto :goto_0

    .line 2096
    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method public static createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2282
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/graphics/drawable/Drawable;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    .line 2301
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 2306
    .local v0, "attrs":Landroid/util/AttributeSet;
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .local v2, "type":I
    if-eq v2, v4, :cond_1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 2315
    :cond_1
    if-eq v2, v4, :cond_2

    .line 2317
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v4, "No start tag found"

    invoke-direct {v3, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2322
    :cond_2
    invoke-static {p0, p1, v0, p2}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2325
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_3

    .line 2327
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown initial tag: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2332
    :cond_3
    return-object v1
.end method

.method public static createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2351
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 11
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2377
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 2380
    .local v6, "name":Ljava/lang/String;
    const/4 v8, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v8, :pswitch_data_0

    .line 2545
    new-instance v8, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": invalid drawable tag "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 2380
    :sswitch_0
    const-string/jumbo v9, "selector"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v8, 0x0

    goto :goto_0

    :sswitch_1
    const-string v9, "animated-selector"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v9, "level-list"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v8, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v9, "layer-list"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v8, 0x3

    goto :goto_0

    :sswitch_4
    const-string/jumbo v9, "transition"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v8, 0x4

    goto :goto_0

    :sswitch_5
    const-string/jumbo v9, "ripple"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v8, 0x5

    goto :goto_0

    :sswitch_6
    const-string v9, "color"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v8, 0x6

    goto :goto_0

    :sswitch_7
    const-string/jumbo v9, "shape"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v8, 0x7

    goto :goto_0

    :sswitch_8
    const-string/jumbo v9, "vector"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/16 v8, 0x8

    goto/16 :goto_0

    :sswitch_9
    const-string v9, "animated-vector"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/16 v8, 0x9

    goto/16 :goto_0

    :sswitch_a
    const-string/jumbo v9, "scale"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/16 v8, 0xa

    goto/16 :goto_0

    :sswitch_b
    const-string v9, "clip"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/16 v8, 0xb

    goto/16 :goto_0

    :sswitch_c
    const-string/jumbo v9, "rotate"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/16 v8, 0xc

    goto/16 :goto_0

    :sswitch_d
    const-string v9, "animated-rotate"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/16 v8, 0xd

    goto/16 :goto_0

    :sswitch_e
    const-string v9, "animation-list"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/16 v8, 0xe

    goto/16 :goto_0

    :sswitch_f
    const-string/jumbo v9, "inset"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/16 v8, 0xf

    goto/16 :goto_0

    :sswitch_10
    const-string v9, "bitmap"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/16 v8, 0x10

    goto/16 :goto_0

    :sswitch_11
    const-string/jumbo v9, "nine-patch"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/16 v8, 0x11

    goto/16 :goto_0

    .line 2384
    :pswitch_0
    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 2551
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    :goto_1
    invoke-virtual {v1, p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 2553
    return-object v1

    .line 2390
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :pswitch_1
    new-instance v1, Landroid/graphics/drawable/AnimatedStateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/AnimatedStateListDrawable;-><init>()V

    .line 2392
    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 2396
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :pswitch_2
    new-instance v1, Landroid/graphics/drawable/LevelListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/LevelListDrawable;-><init>()V

    .line 2398
    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 2402
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :pswitch_3
    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/LayerDrawable;-><init>()V

    .line 2404
    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 2408
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :pswitch_4
    new-instance v1, Landroid/graphics/drawable/TransitionDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/TransitionDrawable;-><init>()V

    .line 2410
    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 2414
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :pswitch_5
    new-instance v1, Landroid/graphics/drawable/RippleDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/RippleDrawable;-><init>()V

    .line 2416
    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 2420
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :pswitch_6
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    .line 2422
    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 2426
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :pswitch_7
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 2428
    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 2432
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :pswitch_8
    new-instance v1, Landroid/graphics/drawable/VectorDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/VectorDrawable;-><init>()V

    .line 2434
    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 2438
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :pswitch_9
    new-instance v1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;-><init>()V

    .line 2440
    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 2444
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :pswitch_a
    new-instance v1, Landroid/graphics/drawable/ScaleDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/ScaleDrawable;-><init>()V

    .line 2446
    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 2450
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :pswitch_b
    new-instance v1, Landroid/graphics/drawable/ClipDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/ClipDrawable;-><init>()V

    .line 2452
    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 2456
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :pswitch_c
    new-instance v1, Landroid/graphics/drawable/RotateDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/RotateDrawable;-><init>()V

    .line 2458
    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 2462
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :pswitch_d
    new-instance v1, Landroid/graphics/drawable/AnimatedRotateDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/AnimatedRotateDrawable;-><init>()V

    .line 2464
    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 2468
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :pswitch_e
    new-instance v1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 2470
    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 2474
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :pswitch_f
    new-instance v1, Landroid/graphics/drawable/InsetDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/InsetDrawable;-><init>()V

    .line 2476
    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 2482
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :pswitch_10
    const/4 v5, 0x0

    .line 2484
    .local v5, "isSpr":Z
    const-string/jumbo v8, "http://schemas.android.com/apk/res/android"

    const-string/jumbo v9, "src"

    const/4 v10, 0x0

    invoke-interface {p2, v8, v9, v10}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    .line 2486
    .local v3, "id":I
    if-eqz v3, :cond_1

    .line 2488
    const/4 v4, 0x0

    .line 2492
    .local v4, "is":Ljava/io/InputStream;
    const/4 v8, 0x3

    new-array v0, v8, [B

    .line 2495
    .local v0, "b":[B
    :try_start_0
    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4

    .line 2496
    const/4 v8, 0x0

    const/4 v9, 0x3

    invoke-virtual {v4, v0, v8, v9}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2498
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 2502
    const/4 v8, 0x0

    aget-byte v8, v0, v8

    const/16 v9, 0x53

    if-ne v8, v9, :cond_2

    const/4 v8, 0x1

    aget-byte v8, v0, v8

    const/16 v9, 0x50

    if-ne v8, v9, :cond_2

    const/4 v8, 0x2

    aget-byte v8, v0, v8

    const/16 v9, 0x52

    if-ne v8, v9, :cond_2

    const/4 v5, 0x1

    .line 2507
    .end local v0    # "b":[B
    .end local v4    # "is":Ljava/io/InputStream;
    :cond_1
    :goto_2
    if-eqz v5, :cond_3

    .line 2513
    :try_start_1
    const-string v8, "com.samsung.android.sdk.spr.drawable.SprDrawable"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 2515
    .local v7, "spr":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v7}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_1

    .line 2498
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v7    # "spr":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v0    # "b":[B
    .restart local v4    # "is":Ljava/io/InputStream;
    :catchall_0
    move-exception v8

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    throw v8

    .line 2502
    :cond_2
    const/4 v5, 0x0

    goto :goto_2

    .line 2517
    .end local v0    # "b":[B
    .end local v4    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v2

    .line 2519
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 2521
    new-instance v8, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": unable to load spr."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 2529
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_1

    .line 2539
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v3    # "id":I
    .end local v5    # "isSpr":Z
    :pswitch_11
    new-instance v1, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/NinePatchDrawable;-><init>()V

    .line 2541
    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_1

    .line 2380
    :sswitch_data_0
    .sparse-switch
        -0x66c492ab -> :sswitch_4
        -0x63a70093 -> :sswitch_11
        -0x5905b6b9 -> :sswitch_e
        -0x52c70ed1 -> :sswitch_10
        -0x377b49d0 -> :sswitch_5
        -0x372522a5 -> :sswitch_c
        -0x30e61ebd -> :sswitch_8
        -0x1e6b8b37 -> :sswitch_1
        -0x59d5866 -> :sswitch_3
        0x2ea350 -> :sswitch_b
        0x5a72f63 -> :sswitch_6
        0x5fb611d -> :sswitch_f
        0x683094a -> :sswitch_a
        0x6854fa1 -> :sswitch_7
        0x993c947 -> :sswitch_2
        0x4705f3df -> :sswitch_0
        0x780890c5 -> :sswitch_d
        0x7e4794ad -> :sswitch_9
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method private static drawableFromBitmap(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "bm"    # Landroid/graphics/Bitmap;
    .param p2, "np"    # [B
    .param p3, "pad"    # Landroid/graphics/Rect;
    .param p4, "layoutBounds"    # Landroid/graphics/Rect;
    .param p5, "srcName"    # Ljava/lang/String;

    .prologue
    .line 2862
    if-eqz p2, :cond_0

    .line 2864
    new-instance v0, Landroid/graphics/drawable/NinePatchDrawable;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/String;)V

    .line 2869
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method static obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "set"    # Landroid/util/AttributeSet;
    .param p3, "attrs"    # [I

    .prologue
    const/4 v0, 0x0

    .line 2923
    if-nez p1, :cond_0

    .line 2925
    invoke-virtual {p0, p2, p3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2929
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1, p2, p3, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    goto :goto_0
.end method

.method public static parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;
    .locals 0
    .param p0, "value"    # I
    .param p1, "defaultMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 2948
    packed-switch p0, :pswitch_data_0

    .line 2962
    .end local p1    # "defaultMode":Landroid/graphics/PorterDuff$Mode;
    :goto_0
    :pswitch_0
    return-object p1

    .line 2950
    .restart local p1    # "defaultMode":Landroid/graphics/PorterDuff$Mode;
    :pswitch_1
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 2952
    :pswitch_2
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 2954
    :pswitch_3
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 2956
    :pswitch_4
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 2958
    :pswitch_5
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 2960
    :pswitch_6
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 2948
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static resolveOpacity(II)I
    .locals 2
    .param p0, "op1"    # I
    .param p1, "op2"    # I

    .prologue
    const/4 v0, -0x2

    const/4 v1, -0x3

    .line 1750
    if-ne p0, p1, :cond_0

    .line 1774
    .end local p0    # "op1":I
    :goto_0
    return p0

    .line 1756
    .restart local p0    # "op1":I
    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    .line 1758
    :cond_1
    const/4 p0, 0x0

    goto :goto_0

    .line 1762
    :cond_2
    if-eq p0, v1, :cond_3

    if-ne p1, v1, :cond_4

    :cond_3
    move p0, v1

    .line 1764
    goto :goto_0

    .line 1768
    :cond_4
    if-eq p0, v0, :cond_5

    if-ne p1, v0, :cond_6

    :cond_5
    move p0, v0

    .line 1770
    goto :goto_0

    .line 1774
    :cond_6
    const/4 p0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 0
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    .prologue
    .line 1635
    return-void
.end method

.method public canApplyTheme()Z
    .locals 1

    .prologue
    .line 1640
    const/4 v0, 0x0

    return v0
.end method

.method public clearColorFilter()V
    .locals 1

    .prologue
    .line 1259
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1261
    return-void
.end method

.method public clearMutated()V
    .locals 0

    .prologue
    .line 2077
    return-void
.end method

.method public final copyBounds()Landroid/graphics/Rect;
    .locals 2

    .prologue
    .line 490
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/graphics/drawable/Drawable;->mBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public final copyBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 467
    iget-object v0, p0, Landroid/graphics/drawable/Drawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 469
    return-void
.end method

.method public abstract draw(Landroid/graphics/Canvas;)V
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    .line 1021
    const/16 v0, 0xff

    return v0
.end method

.method public final getBounds()Landroid/graphics/Rect;
    .locals 2

    .prologue
    .line 527
    iget-object v0, p0, Landroid/graphics/drawable/Drawable;->mBounds:Landroid/graphics/Rect;

    sget-object v1, Landroid/graphics/drawable/Drawable;->ZERO_BOUNDS_RECT:Landroid/graphics/Rect;

    if-ne v0, v1, :cond_0

    .line 529
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/Drawable;->mBounds:Landroid/graphics/Rect;

    .line 534
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/Drawable;->mBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getCallback()Landroid/graphics/drawable/Drawable$Callback;
    .locals 1

    .prologue
    .line 809
    iget-object v0, p0, Landroid/graphics/drawable/Drawable;->mCallback:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 811
    iget-object v0, p0, Landroid/graphics/drawable/Drawable;->mCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable$Callback;

    .line 815
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChangingConfigurations()I
    .locals 1

    .prologue
    .line 619
    iget v0, p0, Landroid/graphics/drawable/Drawable;->mChangingConfigurations:I

    return v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    .prologue
    .line 1246
    const/4 v0, 0x0

    return-object v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    .prologue
    .line 2852
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrent()Landroid/graphics/drawable/Drawable;
    .locals 0

    .prologue
    .line 1470
    return-object p0
.end method

.method public getDirtyBounds()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 561
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getHotspotBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "outRect"    # Landroid/graphics/Rect;

    .prologue
    .line 1316
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1318
    return-void
.end method

.method public getImagePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Landroid/graphics/drawable/Drawable;->mImagePath:Ljava/lang/String;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 1884
    const/4 v0, -0x1

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 1869
    const/4 v0, -0x1

    return v0
.end method

.method public getLayoutDirection()I
    .locals 1

    .prologue
    .line 931
    iget v0, p0, Landroid/graphics/drawable/Drawable;->mLayoutDirection:I

    return v0
.end method

.method public final getLevel()I
    .locals 1

    .prologue
    .line 1534
    iget v0, p0, Landroid/graphics/drawable/Drawable;->mLevel:I

    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    .prologue
    .line 1936
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 1938
    .local v0, "intrinsicHeight":I
    if-lez v0, :cond_0

    .end local v0    # "intrinsicHeight":I
    :goto_0
    return v0

    .restart local v0    # "intrinsicHeight":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMinimumWidth()I
    .locals 1

    .prologue
    .line 1909
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 1911
    .local v0, "intrinsicWidth":I
    if-lez v0, :cond_0

    .end local v0    # "intrinsicWidth":I
    :goto_0
    return v0

    .restart local v0    # "intrinsicWidth":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract getOpacity()I
.end method

.method public getOpticalInsets()Landroid/graphics/Insets;
    .locals 1

    .prologue
    .line 1982
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    return-object v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 1
    .param p1, "outline"    # Landroid/graphics/Outline;

    .prologue
    .line 2011
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Outline;->setRect(Landroid/graphics/Rect;)V

    .line 2013
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Outline;->setAlpha(F)V

    .line 2015
    return-void
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 1
    .param p1, "padding"    # Landroid/graphics/Rect;

    .prologue
    const/4 v0, 0x0

    .line 1961
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 1963
    return v0
.end method

.method public getState()[I
    .locals 1

    .prologue
    .line 1438
    iget-object v0, p0, Landroid/graphics/drawable/Drawable;->mStateSet:[I

    return-object v0
.end method

.method public getTransparentRegion()Landroid/graphics/Region;
    .locals 1

    .prologue
    .line 1807
    const/4 v0, 0x0

    return-object v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2621
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 2623
    return-void
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 3
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2652
    if-eqz p4, :cond_0

    .line 2654
    sget-object v1, Lcom/android/internal/R$styleable;->Drawable:[I

    invoke-virtual {p4, p3, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2665
    .local v0, "a":Landroid/content/res/TypedArray;
    :goto_0
    invoke-virtual {p0, p1, p2, v0, v2}, Landroid/graphics/drawable/Drawable;->inflateWithAttributes(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/TypedArray;I)V

    .line 2667
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2669
    return-void

    .line 2660
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_0
    sget-object v1, Lcom/android/internal/R$styleable;->Drawable:[I

    invoke-virtual {p1, p3, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .restart local v0    # "a":Landroid/content/res/TypedArray;
    goto :goto_0
.end method

.method inflateWithAttributes(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/TypedArray;I)V
    .locals 1
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/content/res/TypedArray;
    .param p4, "visibleAttr"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2688
    iget-boolean v0, p0, Landroid/graphics/drawable/Drawable;->mVisible:Z

    invoke-virtual {p3, p4, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroid/graphics/drawable/Drawable;->mVisible:Z

    .line 2690
    return-void
.end method

.method public invalidateSelf()V
    .locals 1

    .prologue
    .line 840
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 842
    .local v0, "callback":Landroid/graphics/drawable/Drawable$Callback;
    if-eqz v0, :cond_0

    .line 844
    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 848
    :cond_0
    return-void
.end method

.method public isAutoMirrored()Z
    .locals 1

    .prologue
    .line 1622
    const/4 v0, 0x0

    return v0
.end method

.method public isFilterBitmap()Z
    .locals 1

    .prologue
    .line 676
    const/4 v0, 0x0

    return v0
.end method

.method public isImagePath()Z
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Landroid/graphics/drawable/Drawable;->mImagePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/Drawable;->mImagePath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isProjected()Z
    .locals 1

    .prologue
    .line 1333
    const/4 v0, 0x0

    return v0
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 1358
    const/4 v0, 0x0

    return v0
.end method

.method public final isVisible()Z
    .locals 1

    .prologue
    .line 1586
    iget-boolean v0, p0, Landroid/graphics/drawable/Drawable;->mVisible:Z

    return v0
.end method

.method public jumpToCurrentState()V
    .locals 0

    .prologue
    .line 1453
    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 0

    .prologue
    .line 2048
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 1856
    return-void
.end method

.method public onLayoutDirectionChanged(I)Z
    .locals 1
    .param p1, "layoutDirection"    # I

    .prologue
    .line 989
    const/4 v0, 0x0

    return v0
.end method

.method protected onLevelChange(I)Z
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 1846
    const/4 v0, 0x0

    return v0
.end method

.method protected onStateChange([I)Z
    .locals 1
    .param p1, "state"    # [I

    .prologue
    .line 1830
    const/4 v0, 0x0

    return v0
.end method

.method public scheduleSelf(Ljava/lang/Runnable;J)V
    .locals 2
    .param p1, "what"    # Ljava/lang/Runnable;
    .param p2, "when"    # J

    .prologue
    .line 873
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 875
    .local v0, "callback":Landroid/graphics/drawable/Drawable$Callback;
    if-eqz v0, :cond_0

    .line 877
    invoke-interface {v0, p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    .line 881
    :cond_0
    return-void
.end method

.method public abstract setAlpha(I)V
.end method

.method public setAutoMirrored(Z)V
    .locals 0
    .param p1, "mirrored"    # Z

    .prologue
    .line 1605
    return-void
.end method

.method public setBounds(IIII)V
    .locals 2
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 403
    iget-object v0, p0, Landroid/graphics/drawable/Drawable;->mBounds:Landroid/graphics/Rect;

    .line 406
    .local v0, "oldBounds":Landroid/graphics/Rect;
    sget-object v1, Landroid/graphics/drawable/Drawable;->ZERO_BOUNDS_RECT:Landroid/graphics/Rect;

    if-ne v0, v1, :cond_0

    .line 408
    new-instance v0, Landroid/graphics/Rect;

    .end local v0    # "oldBounds":Landroid/graphics/Rect;
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/Drawable;->mBounds:Landroid/graphics/Rect;

    .line 413
    .restart local v0    # "oldBounds":Landroid/graphics/Rect;
    :cond_0
    iget v1, v0, Landroid/graphics/Rect;->left:I

    if-ne v1, p1, :cond_1

    iget v1, v0, Landroid/graphics/Rect;->top:I

    if-ne v1, p2, :cond_1

    iget v1, v0, Landroid/graphics/Rect;->right:I

    if-ne v1, p3, :cond_1

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    if-eq v1, p4, :cond_3

    .line 417
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 421
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 425
    :cond_2
    iget-object v1, p0, Landroid/graphics/drawable/Drawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 427
    iget-object v1, p0, Landroid/graphics/drawable/Drawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 431
    :cond_3
    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 444
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 446
    return-void
.end method

.method public final setCallback(Landroid/graphics/drawable/Drawable$Callback;)V
    .locals 1
    .param p1, "cb"    # Landroid/graphics/drawable/Drawable$Callback;

    .prologue
    .line 786
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/graphics/drawable/Drawable;->mCallback:Ljava/lang/ref/WeakReference;

    .line 788
    return-void
.end method

.method public setChangingConfigurations(I)V
    .locals 0
    .param p1, "configs"    # I

    .prologue
    .line 586
    iput p1, p0, Landroid/graphics/drawable/Drawable;->mChangingConfigurations:I

    .line 588
    return-void
.end method

.method public setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "color"    # I
    .param p2, "mode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 1112
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v0, p1, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1114
    return-void
.end method

.method public abstract setColorFilter(Landroid/graphics/ColorFilter;)V
.end method

.method public setDither(Z)V
    .locals 0
    .param p1, "dither"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 640
    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 0
    .param p1, "filter"    # Z

    .prologue
    .line 663
    return-void
.end method

.method public setHotspot(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1276
    return-void
.end method

.method public setHotspotBounds(IIII)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 1299
    return-void
.end method

.method public setImagePath(Landroid/util/TypedValue;)V
    .locals 2
    .param p1, "value"    # Landroid/util/TypedValue;

    .prologue
    .line 344
    sget-boolean v1, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v1, :cond_0

    .line 346
    if-eqz p1, :cond_0

    .line 348
    invoke-virtual {p1}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v0

    .line 350
    .local v0, "path":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 352
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/graphics/drawable/Drawable;->mImagePath:Ljava/lang/String;

    .line 360
    .end local v0    # "path":Ljava/lang/CharSequence;
    :cond_0
    return-void
.end method

.method public setImagePath(Ljava/lang/String;)V
    .locals 1
    .param p1, "imagePath"    # Ljava/lang/String;

    .prologue
    .line 327
    sget-boolean v0, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v0, :cond_0

    .line 329
    iput-object p1, p0, Landroid/graphics/drawable/Drawable;->mImagePath:Ljava/lang/String;

    .line 333
    :cond_0
    return-void
.end method

.method public final setLayoutDirection(I)Z
    .locals 1
    .param p1, "layoutDirection"    # I

    .prologue
    .line 958
    iget v0, p0, Landroid/graphics/drawable/Drawable;->mLayoutDirection:I

    if-eq v0, p1, :cond_0

    .line 960
    iput p1, p0, Landroid/graphics/drawable/Drawable;->mLayoutDirection:I

    .line 962
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->onLayoutDirectionChanged(I)Z

    move-result v0

    .line 966
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setLevel(I)Z
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 1509
    iget v0, p0, Landroid/graphics/drawable/Drawable;->mLevel:I

    if-eq v0, p1, :cond_0

    .line 1511
    iput p1, p0, Landroid/graphics/drawable/Drawable;->mLevel:I

    .line 1513
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->onLevelChange(I)Z

    move-result v0

    .line 1517
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setState([I)Z
    .locals 1
    .param p1, "stateSet"    # [I

    .prologue
    .line 1409
    iget-object v0, p0, Landroid/graphics/drawable/Drawable;->mStateSet:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1411
    iput-object p1, p0, Landroid/graphics/drawable/Drawable;->mStateSet:[I

    .line 1413
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    move-result v0

    .line 1417
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTint(I)V
    .locals 1
    .param p1, "tintColor"    # I

    .prologue
    .line 1159
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 1161
    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 1198
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 1231
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 2
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z

    .prologue
    .line 1569
    iget-boolean v1, p0, Landroid/graphics/drawable/Drawable;->mVisible:Z

    if-eq v1, p1, :cond_1

    const/4 v0, 0x1

    .line 1571
    .local v0, "changed":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 1573
    iput-boolean p1, p0, Landroid/graphics/drawable/Drawable;->mVisible:Z

    .line 1575
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 1579
    :cond_0
    return v0

    .line 1569
    .end local v0    # "changed":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setXfermode(Landroid/graphics/Xfermode;)V
    .locals 0
    .param p1, "mode"    # Landroid/graphics/Xfermode;

    .prologue
    .line 1048
    return-void
.end method

.method public unscheduleSelf(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "what"    # Ljava/lang/Runnable;

    .prologue
    .line 904
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 906
    .local v0, "callback":Landroid/graphics/drawable/Drawable$Callback;
    if-eqz v0, :cond_0

    .line 908
    invoke-interface {v0, p0, p1}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    .line 912
    :cond_0
    return-void
.end method

.method updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 3
    .param p1, "tintFilter"    # Landroid/graphics/PorterDuffColorFilter;
    .param p2, "tint"    # Landroid/content/res/ColorStateList;
    .param p3, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 2886
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 2888
    :cond_0
    const/4 p1, 0x0

    .line 2906
    .end local p1    # "tintFilter":Landroid/graphics/PorterDuffColorFilter;
    :goto_0
    return-object p1

    .line 2893
    .restart local p1    # "tintFilter":Landroid/graphics/PorterDuffColorFilter;
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 2895
    .local v0, "color":I
    if-nez p1, :cond_2

    .line 2897
    new-instance p1, Landroid/graphics/PorterDuffColorFilter;

    .end local p1    # "tintFilter":Landroid/graphics/PorterDuffColorFilter;
    invoke-direct {p1, v0, p3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 2902
    .restart local p1    # "tintFilter":Landroid/graphics/PorterDuffColorFilter;
    :cond_2
    invoke-virtual {p1, v0}, Landroid/graphics/PorterDuffColorFilter;->setColor(I)V

    .line 2904
    invoke-virtual {p1, p3}, Landroid/graphics/PorterDuffColorFilter;->setMode(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method
