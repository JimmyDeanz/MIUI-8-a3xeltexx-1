.class public Landroid/media/audiofx/SoundAlive;
.super Landroid/media/audiofx/AudioEffect;
.source "SoundAlive.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/audiofx/SoundAlive$1;,
        Landroid/media/audiofx/SoundAlive$Settings;,
        Landroid/media/audiofx/SoundAlive$BaseErrorListener;,
        Landroid/media/audiofx/SoundAlive$OnErrorListener;,
        Landroid/media/audiofx/SoundAlive$BaseParameterListener;,
        Landroid/media/audiofx/SoundAlive$OnParameterChangeListener;
    }
.end annotation


# static fields
.field public static final EFFECT_TYPE_SOUNDALIVE:Ljava/util/UUID;

.field public static final PARAM_3DPA:I = 0xd

.field public static final PARAM_BAND_FREQ_RANGE:I = 0x4

.field public static final PARAM_BAND_LEVEL:I = 0x2

.field public static final PARAM_CENTER_FREQ:I = 0x3

.field public static final PARAM_CURRENT_PRESET:I = 0x6

.field public static final PARAM_GET_BAND:I = 0x5

.field public static final PARAM_GET_NUM_OF_PRESETS:I = 0x7

.field public static final PARAM_GET_PRESET_NAME:I = 0x8

.field public static final PARAM_HMT:I = 0xc

.field public static final PARAM_LEVEL_RANGE:I = 0x1

.field public static final PARAM_NUM_BANDS:I = 0x0

.field private static final PARAM_PROPERTIES:I = 0x9

.field public static final PARAM_SQUAREUI_POSITION:I = 0xb

.field public static final PARAM_STRENGTH:I = 0xa

.field public static final PARAM_STRING_SIZE_MAX:I = 0x20

.field private static final TAG:Ljava/lang/String; = "SoundAlive"


# instance fields
.field private mBaseErrorListener:Landroid/media/audiofx/SoundAlive$BaseErrorListener;

.field private mBaseParamListener:Landroid/media/audiofx/SoundAlive$BaseParameterListener;

.field private mErrorListener:Landroid/media/audiofx/SoundAlive$OnErrorListener;

.field private final mErrorListenerLock:Ljava/lang/Object;

.field private mNumBands:S

.field private mNumPresets:I

.field private mParamListener:Landroid/media/audiofx/SoundAlive$OnParameterChangeListener;

.field private final mParamListenerLock:Ljava/lang/Object;

.field private mPresetNames:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-string v0, "c4da1d1f-7cdf-42e2-ba60-efc7eb3508a3"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/media/audiofx/SoundAlive;->EFFECT_TYPE_SOUNDALIVE:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 9
    .param p1, "priority"    # I
    .param p2, "audioSession"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 176
    sget-object v5, Landroid/media/audiofx/SoundAlive;->EFFECT_TYPE_SOUNDALIVE:Ljava/util/UUID;

    sget-object v6, Landroid/media/audiofx/SoundAlive;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    invoke-direct {p0, v5, v6, p1, p2}, Landroid/media/audiofx/AudioEffect;-><init>(Ljava/util/UUID;Ljava/util/UUID;II)V

    .line 118
    iput-short v8, p0, Landroid/media/audiofx/SoundAlive;->mNumBands:S

    .line 132
    iput-object v7, p0, Landroid/media/audiofx/SoundAlive;->mParamListener:Landroid/media/audiofx/SoundAlive$OnParameterChangeListener;

    .line 137
    iput-object v7, p0, Landroid/media/audiofx/SoundAlive;->mBaseParamListener:Landroid/media/audiofx/SoundAlive$BaseParameterListener;

    .line 142
    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Landroid/media/audiofx/SoundAlive;->mParamListenerLock:Ljava/lang/Object;

    .line 147
    iput-object v7, p0, Landroid/media/audiofx/SoundAlive;->mErrorListener:Landroid/media/audiofx/SoundAlive$OnErrorListener;

    .line 152
    iput-object v7, p0, Landroid/media/audiofx/SoundAlive;->mBaseErrorListener:Landroid/media/audiofx/SoundAlive$BaseErrorListener;

    .line 157
    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Landroid/media/audiofx/SoundAlive;->mErrorListenerLock:Ljava/lang/Object;

    .line 178
    if-nez p2, :cond_0

    .line 179
    const-string v5, "SoundAlive"

    const-string v6, "WARNING: attaching an SoundAlive to global output mix is deprecated!"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_0
    invoke-virtual {p0}, Landroid/media/audiofx/SoundAlive;->getNumberOfBands()S

    .line 184
    invoke-virtual {p0}, Landroid/media/audiofx/SoundAlive;->getNumberOfPresets()S

    move-result v5

    iput v5, p0, Landroid/media/audiofx/SoundAlive;->mNumPresets:I

    .line 186
    iget v5, p0, Landroid/media/audiofx/SoundAlive;->mNumPresets:I

    if-eqz v5, :cond_2

    .line 187
    iget v5, p0, Landroid/media/audiofx/SoundAlive;->mNumPresets:I

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, p0, Landroid/media/audiofx/SoundAlive;->mPresetNames:[Ljava/lang/String;

    .line 188
    const/16 v5, 0x20

    new-array v4, v5, [B

    .line 189
    .local v4, "value":[B
    const/4 v5, 0x2

    new-array v3, v5, [I

    .line 190
    .local v3, "param":[I
    const/16 v5, 0x8

    aput v5, v3, v8

    .line 191
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v5, p0, Landroid/media/audiofx/SoundAlive;->mNumPresets:I

    if-ge v1, v5, :cond_2

    .line 192
    const/4 v5, 0x1

    aput v1, v3, v5

    .line 193
    invoke-virtual {p0, v3, v4}, Landroid/media/audiofx/SoundAlive;->getParameter([I[B)I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/media/audiofx/SoundAlive;->checkStatus(I)V

    .line 194
    const/4 v2, 0x0

    .line 195
    .local v2, "length":I
    :goto_1
    aget-byte v5, v4, v2

    if-eqz v5, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 197
    :cond_1
    :try_start_0
    iget-object v5, p0, Landroid/media/audiofx/SoundAlive;->mPresetNames:[Ljava/lang/String;

    new-instance v6, Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "ISO-8859-1"

    invoke-direct {v6, v4, v7, v2, v8}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    aput-object v6, v5, v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v5, "SoundAlive"

    const-string/jumbo v6, "preset name decode error"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 203
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v3    # "param":[I
    .end local v4    # "value":[B
    :cond_2
    return-void
.end method

.method static synthetic access$000(Landroid/media/audiofx/SoundAlive;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/media/audiofx/SoundAlive;

    .prologue
    .line 42
    iget-object v0, p0, Landroid/media/audiofx/SoundAlive;->mParamListenerLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Landroid/media/audiofx/SoundAlive;)Landroid/media/audiofx/SoundAlive$OnParameterChangeListener;
    .locals 1
    .param p0, "x0"    # Landroid/media/audiofx/SoundAlive;

    .prologue
    .line 42
    iget-object v0, p0, Landroid/media/audiofx/SoundAlive;->mParamListener:Landroid/media/audiofx/SoundAlive$OnParameterChangeListener;

    return-object v0
.end method

.method static synthetic access$300(Landroid/media/audiofx/SoundAlive;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/media/audiofx/SoundAlive;

    .prologue
    .line 42
    iget-object v0, p0, Landroid/media/audiofx/SoundAlive;->mErrorListenerLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Landroid/media/audiofx/SoundAlive;)Landroid/media/audiofx/SoundAlive$OnErrorListener;
    .locals 1
    .param p0, "x0"    # Landroid/media/audiofx/SoundAlive;

    .prologue
    .line 42
    iget-object v0, p0, Landroid/media/audiofx/SoundAlive;->mErrorListener:Landroid/media/audiofx/SoundAlive$OnErrorListener;

    return-object v0
.end method


# virtual methods
.method public getBand(I)S
    .locals 5
    .param p1, "frequency"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 337
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 338
    .local v0, "param":[I
    new-array v1, v4, [S

    .line 340
    .local v1, "result":[S
    const/4 v2, 0x5

    aput v2, v0, v3

    .line 341
    aput p1, v0, v4

    .line 342
    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/SoundAlive;->getParameter([I[S)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/SoundAlive;->checkStatus(I)V

    .line 344
    aget-short v2, v1, v3

    return v2
.end method

.method public getBandFreqRange(S)[I
    .locals 4
    .param p1, "band"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 318
    new-array v0, v2, [I

    .line 319
    .local v0, "param":[I
    new-array v1, v2, [I

    .line 320
    .local v1, "result":[I
    const/4 v2, 0x0

    const/4 v3, 0x4

    aput v3, v0, v2

    .line 321
    const/4 v2, 0x1

    aput p1, v0, v2

    .line 322
    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/SoundAlive;->getParameter([I[I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/SoundAlive;->checkStatus(I)V

    .line 324
    return-object v1
.end method

.method public getBandLevel(S)S
    .locals 5
    .param p1, "band"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 274
    new-array v0, v4, [I

    .line 275
    .local v0, "param":[I
    new-array v1, v2, [S

    .line 277
    .local v1, "result":[S
    aput v4, v0, v3

    .line 278
    aput p1, v0, v2

    .line 279
    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/SoundAlive;->getParameter([I[S)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/SoundAlive;->checkStatus(I)V

    .line 281
    aget-short v2, v1, v3

    return v2
.end method

.method public getBandLevelRange()[S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 236
    const/4 v1, 0x2

    new-array v0, v1, [S

    .line 237
    .local v0, "result":[S
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/SoundAlive;->getParameter(I[S)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/SoundAlive;->checkStatus(I)V

    .line 238
    return-object v0
.end method

.method public getCenterFreq(S)I
    .locals 5
    .param p1, "band"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 296
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 297
    .local v0, "param":[I
    new-array v1, v4, [I

    .line 299
    .local v1, "result":[I
    const/4 v2, 0x3

    aput v2, v0, v3

    .line 300
    aput p1, v0, v4

    .line 301
    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/SoundAlive;->getParameter([I[I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/SoundAlive;->checkStatus(I)V

    .line 303
    aget v2, v1, v3

    return v2
.end method

.method public getCurrentPreset()S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 356
    const/4 v1, 0x1

    new-array v0, v1, [S

    .line 357
    .local v0, "result":[S
    const/4 v1, 0x6

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/SoundAlive;->getParameter(I[S)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/SoundAlive;->checkStatus(I)V

    .line 358
    const/4 v1, 0x0

    aget-short v1, v0, v1

    return v1
.end method

.method public getNumberOfBands()S
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 214
    iget-short v2, p0, Landroid/media/audiofx/SoundAlive;->mNumBands:S

    if-eqz v2, :cond_0

    .line 215
    iget-short v2, p0, Landroid/media/audiofx/SoundAlive;->mNumBands:S

    .line 222
    :goto_0
    return v2

    .line 217
    :cond_0
    new-array v0, v4, [I

    .line 218
    .local v0, "param":[I
    aput v3, v0, v3

    .line 219
    new-array v1, v4, [S

    .line 220
    .local v1, "result":[S
    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/SoundAlive;->getParameter([I[S)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/SoundAlive;->checkStatus(I)V

    .line 221
    aget-short v2, v1, v3

    iput-short v2, p0, Landroid/media/audiofx/SoundAlive;->mNumBands:S

    .line 222
    iget-short v2, p0, Landroid/media/audiofx/SoundAlive;->mNumBands:S

    goto :goto_0
.end method

.method public getNumberOfPresets()S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 385
    const/4 v1, 0x1

    new-array v0, v1, [S

    .line 386
    .local v0, "result":[S
    const/4 v1, 0x7

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/SoundAlive;->getParameter(I[S)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/SoundAlive;->checkStatus(I)V

    .line 387
    const/4 v1, 0x0

    aget-short v1, v0, v1

    return v1
.end method

.method public getParameter(I[B)I
    .locals 2
    .param p1, "param"    # I
    .param p2, "value"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 741
    invoke-static {p1}, Landroid/media/audiofx/SoundAlive;->intToByteArray(I)[B

    move-result-object v0

    .line 742
    .local v0, "p":[B
    invoke-super {p0, v0, p2}, Landroid/media/audiofx/AudioEffect;->getParameter([B[B)I

    move-result v1

    return v1
.end method

.method public getPresetName(S)Ljava/lang/String;
    .locals 1
    .param p1, "preset"    # S

    .prologue
    .line 400
    if-ltz p1, :cond_0

    iget v0, p0, Landroid/media/audiofx/SoundAlive;->mNumPresets:I

    if-ge p1, v0, :cond_0

    .line 401
    iget-object v0, p0, Landroid/media/audiofx/SoundAlive;->mPresetNames:[Ljava/lang/String;

    aget-object v0, v0, p1

    .line 403
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getProperties()Landroid/media/audiofx/SoundAlive$Settings;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 755
    iget-short v3, p0, Landroid/media/audiofx/SoundAlive;->mNumBands:S

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x4

    new-array v1, v3, [B

    .line 756
    .local v1, "param":[B
    const/16 v3, 0x9

    invoke-virtual {p0, v3, v1}, Landroid/media/audiofx/SoundAlive;->getParameter(I[B)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/media/audiofx/SoundAlive;->checkStatus(I)V

    .line 757
    new-instance v2, Landroid/media/audiofx/SoundAlive$Settings;

    invoke-direct {v2}, Landroid/media/audiofx/SoundAlive$Settings;-><init>()V

    .line 758
    .local v2, "settings":Landroid/media/audiofx/SoundAlive$Settings;
    const/4 v3, 0x0

    invoke-static {v1, v3}, Landroid/media/audiofx/SoundAlive;->byteArrayToShort([BI)S

    move-result v3

    iput-short v3, v2, Landroid/media/audiofx/SoundAlive$Settings;->curPreset:S

    .line 759
    const/4 v3, 0x2

    invoke-static {v1, v3}, Landroid/media/audiofx/SoundAlive;->byteArrayToShort([BI)S

    move-result v3

    iput-short v3, v2, Landroid/media/audiofx/SoundAlive$Settings;->numBands:S

    .line 760
    iget-short v3, p0, Landroid/media/audiofx/SoundAlive;->mNumBands:S

    new-array v3, v3, [S

    iput-object v3, v2, Landroid/media/audiofx/SoundAlive$Settings;->bandLevels:[S

    .line 761
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-short v3, p0, Landroid/media/audiofx/SoundAlive;->mNumBands:S

    if-ge v0, v3, :cond_0

    .line 762
    iget-object v3, v2, Landroid/media/audiofx/SoundAlive$Settings;->bandLevels:[S

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x4

    invoke-static {v1, v4}, Landroid/media/audiofx/SoundAlive;->byteArrayToShort([BI)S

    move-result v4

    aput-short v4, v3, v0

    .line 761
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 764
    :cond_0
    return-object v2
.end method

.method public getRoundedStrength(S)S
    .locals 5
    .param p1, "type"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 443
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 444
    .local v0, "param":[I
    new-array v1, v4, [S

    .line 446
    .local v1, "result":[S
    const/16 v2, 0xa

    aput v2, v0, v3

    .line 447
    aput p1, v0, v4

    .line 449
    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/SoundAlive;->getParameter([I[S)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/SoundAlive;->checkStatus(I)V

    .line 450
    aget-short v2, v1, v3

    return v2
.end method

.method public set3DEffectPosition(ZD)V
    .locals 8
    .param p1, "onoff"    # Z
    .param p2, "position"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    .line 499
    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    cmpg-double v2, v4, p2

    if-gtz v2, :cond_0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpg-double v2, p2, v4

    if-gtz v2, :cond_0

    .line 500
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 501
    .local v0, "param":[I
    new-array v1, v3, [I

    .line 502
    .local v1, "value":[I
    const/16 v2, 0xd

    aput v2, v0, v6

    .line 503
    if-eqz p1, :cond_1

    move v2, v3

    :goto_0
    aput v2, v0, v3

    .line 504
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, p2

    double-to-int v2, v2

    aput v2, v1, v6

    .line 505
    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/SoundAlive;->setParameter([I[I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/SoundAlive;->checkStatus(I)V

    .line 507
    .end local v0    # "param":[I
    .end local v1    # "value":[I
    :cond_0
    return-void

    .line 503
    .restart local v0    # "param":[I
    .restart local v1    # "value":[I
    :cond_1
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setBandLevel(SS)V
    .locals 5
    .param p1, "band"    # S
    .param p2, "level"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 254
    new-array v0, v4, [I

    .line 255
    .local v0, "param":[I
    new-array v1, v3, [S

    .line 257
    .local v1, "value":[S
    aput v4, v0, v2

    .line 258
    aput p1, v0, v3

    .line 259
    aput-short p2, v1, v2

    .line 260
    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/SoundAlive;->setParameter([I[S)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/SoundAlive;->checkStatus(I)V

    .line 261
    return-void
.end method

.method public setErrorListener(Landroid/media/audiofx/SoundAlive$OnErrorListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/media/audiofx/SoundAlive$OnErrorListener;

    .prologue
    .line 621
    iget-object v1, p0, Landroid/media/audiofx/SoundAlive;->mErrorListenerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 622
    :try_start_0
    iget-object v0, p0, Landroid/media/audiofx/SoundAlive;->mErrorListener:Landroid/media/audiofx/SoundAlive$OnErrorListener;

    if-nez v0, :cond_0

    .line 623
    iput-object p1, p0, Landroid/media/audiofx/SoundAlive;->mErrorListener:Landroid/media/audiofx/SoundAlive$OnErrorListener;

    .line 624
    new-instance v0, Landroid/media/audiofx/SoundAlive$BaseErrorListener;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Landroid/media/audiofx/SoundAlive$BaseErrorListener;-><init>(Landroid/media/audiofx/SoundAlive;Landroid/media/audiofx/SoundAlive$1;)V

    iput-object v0, p0, Landroid/media/audiofx/SoundAlive;->mBaseErrorListener:Landroid/media/audiofx/SoundAlive$BaseErrorListener;

    .line 625
    iget-object v0, p0, Landroid/media/audiofx/SoundAlive;->mBaseErrorListener:Landroid/media/audiofx/SoundAlive$BaseErrorListener;

    invoke-super {p0, v0}, Landroid/media/audiofx/AudioEffect;->setErrorListener(Landroid/media/audiofx/AudioEffect$OnErrorListener;)V

    .line 627
    :cond_0
    monitor-exit v1

    .line 628
    return-void

    .line 627
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setHMT(II)V
    .locals 5
    .param p1, "band"    # I
    .param p2, "level"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 480
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 481
    .local v0, "param":[I
    new-array v1, v4, [I

    .line 483
    .local v1, "value":[I
    const/16 v2, 0xc

    aput v2, v0, v3

    .line 484
    aput p1, v0, v4

    .line 485
    aput p2, v1, v3

    .line 486
    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/SoundAlive;->setParameter([I[I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/SoundAlive;->checkStatus(I)V

    .line 488
    return-void
.end method

.method public setParameterListener(Landroid/media/audiofx/SoundAlive$OnParameterChangeListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/media/audiofx/SoundAlive$OnParameterChangeListener;

    .prologue
    .line 572
    iget-object v1, p0, Landroid/media/audiofx/SoundAlive;->mParamListenerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 573
    :try_start_0
    iget-object v0, p0, Landroid/media/audiofx/SoundAlive;->mParamListener:Landroid/media/audiofx/SoundAlive$OnParameterChangeListener;

    if-nez v0, :cond_0

    .line 574
    iput-object p1, p0, Landroid/media/audiofx/SoundAlive;->mParamListener:Landroid/media/audiofx/SoundAlive$OnParameterChangeListener;

    .line 575
    new-instance v0, Landroid/media/audiofx/SoundAlive$BaseParameterListener;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Landroid/media/audiofx/SoundAlive$BaseParameterListener;-><init>(Landroid/media/audiofx/SoundAlive;Landroid/media/audiofx/SoundAlive$1;)V

    iput-object v0, p0, Landroid/media/audiofx/SoundAlive;->mBaseParamListener:Landroid/media/audiofx/SoundAlive$BaseParameterListener;

    .line 576
    iget-object v0, p0, Landroid/media/audiofx/SoundAlive;->mBaseParamListener:Landroid/media/audiofx/SoundAlive$BaseParameterListener;

    invoke-super {p0, v0}, Landroid/media/audiofx/AudioEffect;->setParameterListener(Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;)V

    .line 578
    :cond_0
    monitor-exit v1

    .line 579
    return-void

    .line 578
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setProperties(Landroid/media/audiofx/SoundAlive$Settings;)V
    .locals 7
    .param p1, "settings"    # Landroid/media/audiofx/SoundAlive$Settings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 777
    iget-short v2, p1, Landroid/media/audiofx/SoundAlive$Settings;->numBands:S

    iget-object v3, p1, Landroid/media/audiofx/SoundAlive$Settings;->bandLevels:[S

    array-length v3, v3

    if-ne v2, v3, :cond_0

    iget-short v2, p1, Landroid/media/audiofx/SoundAlive$Settings;->numBands:S

    iget-short v3, p0, Landroid/media/audiofx/SoundAlive;->mNumBands:S

    if-eq v2, v3, :cond_1

    .line 779
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "settings invalid band count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-short v4, p1, Landroid/media/audiofx/SoundAlive$Settings;->numBands:S

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 782
    :cond_1
    new-array v2, v6, [[B

    iget-short v3, p1, Landroid/media/audiofx/SoundAlive$Settings;->curPreset:S

    invoke-static {v3}, Landroid/media/audiofx/SoundAlive;->shortToByteArray(S)[B

    move-result-object v3

    aput-object v3, v2, v4

    iget-short v3, p0, Landroid/media/audiofx/SoundAlive;->mNumBands:S

    invoke-static {v3}, Landroid/media/audiofx/SoundAlive;->shortToByteArray(S)[B

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v2}, Landroid/media/audiofx/SoundAlive;->concatArrays([[B)[B

    move-result-object v1

    .line 784
    .local v1, "param":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-short v2, p0, Landroid/media/audiofx/SoundAlive;->mNumBands:S

    if-ge v0, v2, :cond_2

    .line 785
    new-array v2, v6, [[B

    aput-object v1, v2, v4

    iget-object v3, p1, Landroid/media/audiofx/SoundAlive$Settings;->bandLevels:[S

    aget-short v3, v3, v0

    invoke-static {v3}, Landroid/media/audiofx/SoundAlive;->shortToByteArray(S)[B

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v2}, Landroid/media/audiofx/SoundAlive;->concatArrays([[B)[B

    move-result-object v1

    .line 784
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 788
    :cond_2
    const/16 v2, 0x9

    invoke-virtual {p0, v2, v1}, Landroid/media/audiofx/SoundAlive;->setParameter(I[B)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/SoundAlive;->checkStatus(I)V

    .line 789
    return-void
.end method

.method public setSquarePostion(II)V
    .locals 5
    .param p1, "Sqrow"    # I
    .param p2, "Sqcol"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 464
    new-array v0, v4, [I

    .line 465
    .local v0, "param":[I
    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 467
    .local v1, "value":[I
    const/16 v2, 0xb

    aput v2, v0, v3

    .line 469
    aput p1, v1, v3

    .line 470
    aput p2, v1, v4

    .line 472
    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/SoundAlive;->setParameter([I[I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/SoundAlive;->checkStatus(I)V

    .line 473
    return-void
.end method

.method public setStrength(SS)V
    .locals 5
    .param p1, "type"    # S
    .param p2, "strength"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 422
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 423
    .local v0, "param":[I
    new-array v1, v4, [S

    .line 425
    .local v1, "value":[S
    const/16 v2, 0xa

    aput v2, v0, v3

    .line 426
    aput p1, v0, v4

    .line 427
    aput-short p2, v1, v3

    .line 429
    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/SoundAlive;->setParameter([I[S)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/SoundAlive;->checkStatus(I)V

    .line 430
    return-void
.end method

.method public usePreset(S)V
    .locals 1
    .param p1, "preset"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 372
    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/SoundAlive;->setParameter(IS)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/media/audiofx/SoundAlive;->checkStatus(I)V

    .line 373
    return-void
.end method
