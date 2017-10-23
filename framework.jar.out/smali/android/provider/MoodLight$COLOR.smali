.class public final Landroid/provider/MoodLight$COLOR;
.super Ljava/lang/Object;
.source "MoodLight.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MoodLight;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "COLOR"
.end annotation


# static fields
.field private static final CODE_BLACK:I

.field private static final CODE_LIGHT_BLUE:I

.field private static final CODE_MAGENTA:I

.field private static final CODE_SKY_BLUE:I

.field private static final CODE_YELLOW_GREEN:I

.field public static final INDEX_COLOR_1:I = 0x1

.field public static final INDEX_COLOR_2:I = 0x2

.field public static final INDEX_COLOR_3:I = 0x3

.field public static final INDEX_COLOR_4:I = 0x4

.field private static final KEY_COLOR_1:Ljava/lang/String; = "ml_clolor_1"

.field private static final KEY_COLOR_2:Ljava/lang/String; = "ml_clolor_2"

.field private static final KEY_COLOR_3:Ljava/lang/String; = "ml_clolor_3"

.field private static final KEY_COLOR_4:Ljava/lang/String; = "ml_clolor_4"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 354
    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Landroid/provider/MoodLight$COLOR;->CODE_BLACK:I

    .line 355
    const/16 v0, 0xd2

    const/16 v1, 0xf1

    invoke-static {v2, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Landroid/provider/MoodLight$COLOR;->CODE_SKY_BLUE:I

    .line 357
    const/16 v0, 0x70

    const/16 v1, 0xae

    const/16 v2, 0xe

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Landroid/provider/MoodLight$COLOR;->CODE_YELLOW_GREEN:I

    .line 358
    const/16 v0, 0x26

    const/16 v1, 0x4d

    const/16 v2, 0xf5

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Landroid/provider/MoodLight$COLOR;->CODE_LIGHT_BLUE:I

    .line 359
    const/16 v0, 0xde

    const/16 v1, 0x37

    const/16 v2, 0xb9

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Landroid/provider/MoodLight$COLOR;->CODE_MAGENTA:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 352
    sget v0, Landroid/provider/MoodLight$COLOR;->CODE_BLACK:I

    return v0
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 352
    sget v0, Landroid/provider/MoodLight$COLOR;->CODE_SKY_BLUE:I

    return v0
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 352
    sget v0, Landroid/provider/MoodLight$COLOR;->CODE_YELLOW_GREEN:I

    return v0
.end method

.method static synthetic access$300()I
    .locals 1

    .prologue
    .line 352
    sget v0, Landroid/provider/MoodLight$COLOR;->CODE_LIGHT_BLUE:I

    return v0
.end method

.method static synthetic access$400()I
    .locals 1

    .prologue
    .line 352
    sget v0, Landroid/provider/MoodLight$COLOR;->CODE_MAGENTA:I

    return v0
.end method
