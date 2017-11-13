.class public Landroid/graphics/ImageFilter$BlendingFilter;
.super Landroid/graphics/ImageFilter$GenericImageFilter;
.source "ImageFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ImageFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BlendingFilter"
.end annotation


# static fields
.field public static final BLENDING_MODE_MULTIPLY:I = 0x1

.field public static final BLENDING_MODE_NORMAL:I = 0x0

.field public static final BLENDING_MODE_SCREEN:I = 0x2

.field private static mFragmentShaderCodeMultipy:Ljava/lang/String;

.field private static mFragmentShaderCodeNormal:Ljava/lang/String;

.field private static mFragmentShaderCodeScreen:Ljava/lang/String;


# instance fields
.field private mBlendMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform sampler2D maskSampler;\n\nvoid main(void) {\n\tvec4 texColor = texture2D(baseSampler, outTexCoords);\n\tvec4 mask = texture2D(maskSampler, outTexCoords);\n\tgl_FragColor = mask + texColor * (1.0 - mask.a);\n}\n\n"

    sput-object v0, Landroid/graphics/ImageFilter$BlendingFilter;->mFragmentShaderCodeNormal:Ljava/lang/String;

    const-string v0, "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform sampler2D maskSampler;\n\nvoid main(void) {\n       vec4 texColor = texture2D(baseSampler, outTexCoords);\n\t\tvec4 mask = texture2D(maskSampler, outTexCoords);\n       gl_FragColor = texColor * mask;\n}\n\n"

    sput-object v0, Landroid/graphics/ImageFilter$BlendingFilter;->mFragmentShaderCodeMultipy:Ljava/lang/String;

    const-string v0, "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform sampler2D maskSampler;\n\nvoid main(void) {\n\t\tvec4 unitColor = vec4(1.0);\n       vec4 texColor = texture2D(baseSampler, outTexCoords);\n\t\tvec4 mask = texture2D(maskSampler, outTexCoords);\n       gl_FragColor = unitColor - ((unitColor-texColor) * (unitColor-mask));\n}\n\n"

    sput-object v0, Landroid/graphics/ImageFilter$BlendingFilter;->mFragmentShaderCodeScreen:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string v0, "attribute vec2 texCoords;\nattribute vec4 position;\nvarying vec2 outTexCoords;\nuniform mat4 projection;\nvoid main() {\n   outTexCoords = texCoords;\n   gl_Position = projection * position;\n}\n"

    invoke-static {v2}, Landroid/graphics/ImageFilter$BlendingFilter;->getFragmentShader(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/graphics/ImageFilter$GenericImageFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput v2, p0, Landroid/graphics/ImageFilter$BlendingFilter;->mBlendMode:I

    iput v2, p0, Landroid/graphics/ImageFilter$BlendingFilter;->mBlendMode:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "operation"    # I

    .prologue
    const-string v0, "attribute vec2 texCoords;\nattribute vec4 position;\nvarying vec2 outTexCoords;\nuniform mat4 projection;\nvoid main() {\n   outTexCoords = texCoords;\n   gl_Position = projection * position;\n}\n"

    invoke-static {p1}, Landroid/graphics/ImageFilter$BlendingFilter;->getFragmentShader(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/graphics/ImageFilter$GenericImageFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/ImageFilter$BlendingFilter;->mBlendMode:I

    iput p1, p0, Landroid/graphics/ImageFilter$BlendingFilter;->mBlendMode:I

    return-void
.end method

.method protected static getFragmentShader(I)Ljava/lang/String;
    .locals 1
    .param p0, "mode"    # I

    .prologue
    if-nez p0, :cond_0

    sget-object v0, Landroid/graphics/ImageFilter$BlendingFilter;->mFragmentShaderCodeNormal:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    sget-object v0, Landroid/graphics/ImageFilter$BlendingFilter;->mFragmentShaderCodeMultipy:Ljava/lang/String;

    goto :goto_0

    :cond_1
    sget-object v0, Landroid/graphics/ImageFilter$BlendingFilter;->mFragmentShaderCodeScreen:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    invoke-super {p0, p1}, Landroid/graphics/ImageFilter$GenericImageFilter;->setBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setOperation(I)V
    .locals 2
    .param p1, "operation"    # I

    .prologue
    iget v0, p0, Landroid/graphics/ImageFilter$BlendingFilter;->mBlendMode:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroid/graphics/ImageFilter$BlendingFilter;->mBlendMode:I

    const-string v0, "attribute vec2 texCoords;\nattribute vec4 position;\nvarying vec2 outTexCoords;\nuniform mat4 projection;\nvoid main() {\n   outTexCoords = texCoords;\n   gl_Position = projection * position;\n}\n"

    invoke-static {p1}, Landroid/graphics/ImageFilter$BlendingFilter;->getFragmentShader(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/ImageFilter$BlendingFilter;->setup(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
