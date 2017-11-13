.class public Landroid/sec/clipboard/ClipboardExManager;
.super Ljava/lang/Object;
.source "ClipboardExManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/sec/clipboard/ClipboardExManager$IClipboardDataPasteEventImpl;,
        Landroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;,
        Landroid/sec/clipboard/ClipboardExManager$Format;
    }
.end annotation


# static fields
.field public static final DATE:I = 0x1

.field public static final DEFAULT:I = 0x0

.field public static final EMAIL:I = 0x4

.field public static final FORMAT_ALL_ID:I = 0x1

.field public static final FORMAT_BITMAP_ID:I = 0x3

.field public static final FORMAT_HTML_FLAGMENT_ID:I = 0x4

.field public static final FORMAT_INTENT_ID:I = 0x6

.field public static final FORMAT_MULTIPLE_TYPE_ID:I = 0x8

.field public static final FORMAT_MULTIPLE_URI_ID:I = 0x7

.field public static final FORMAT_TEXT_ID:I = 0x2

.field public static final FORMAT_URI_ID:I = 0x5

.field public static final PHONE_NUMBER:I = 0x3

.field private static final TAG:Ljava/lang/String; = "ClipboardExManager"

.field public static final TIME:I = 0x2

.field public static final URL:I = 0x5

.field private static sService:Landroid/sec/clipboard/IClipboardService;


# instance fields
.field private final FAIL_SET_DATA:I

.field private final PROTECTED_DATA_MAX:I

.field private final SUCCESS_AND_SAVE_BITMAP:I

.field private final SUCCESS_SET_DATA:I

.field private final _UNFORMAT:I

.field private mClipboardConverter:Landroid/sec/clipboard/ClipboardConverter;

.field private mClipboardEventImpl:Landroid/sec/clipboard/ClipboardExManager$IClipboardDataPasteEventImpl;

.field private mClipboardEventListener:Landroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;

.field private mContext:Landroid/content/Context;

.field private mFormatid:I

.field private mIsFiltered:Z

.field private mIsMaximumSize:Z

.field private mPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

.field private mPersonaManager:Landroid/os/PersonaManager;

.field private mRegInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

.field private mSetDataHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    sput-object v0, Landroid/sec/clipboard/ClipboardExManager;->sService:Landroid/sec/clipboard/IClipboardService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "containerID"    # I

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1461
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput v3, p0, Landroid/sec/clipboard/ClipboardExManager;->_UNFORMAT:I

    .line 84
    iput v2, p0, Landroid/sec/clipboard/ClipboardExManager;->SUCCESS_SET_DATA:I

    .line 85
    const/4 v0, 0x1

    iput v0, p0, Landroid/sec/clipboard/ClipboardExManager;->FAIL_SET_DATA:I

    .line 86
    const/4 v0, 0x2

    iput v0, p0, Landroid/sec/clipboard/ClipboardExManager;->SUCCESS_AND_SAVE_BITMAP:I

    .line 87
    const/4 v0, 0x3

    iput v0, p0, Landroid/sec/clipboard/ClipboardExManager;->PROTECTED_DATA_MAX:I

    .line 89
    iput-boolean v2, p0, Landroid/sec/clipboard/ClipboardExManager;->mIsFiltered:Z

    .line 90
    iput v3, p0, Landroid/sec/clipboard/ClipboardExManager;->mFormatid:I

    .line 91
    iput-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;

    .line 92
    iput-boolean v2, p0, Landroid/sec/clipboard/ClipboardExManager;->mIsMaximumSize:Z

    .line 141
    iput-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mSetDataHandler:Landroid/os/Handler;

    .line 143
    iput-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mPersonaManager:Landroid/os/PersonaManager;

    .line 144
    iput-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardConverter:Landroid/sec/clipboard/ClipboardConverter;

    .line 146
    iput-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    .line 147
    iput-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardEventListener:Landroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;

    .line 149
    new-instance v0, Landroid/sec/clipboard/ClipboardExManager$IClipboardDataPasteEventImpl;

    invoke-direct {v0, p0, v1}, Landroid/sec/clipboard/ClipboardExManager$IClipboardDataPasteEventImpl;-><init>(Landroid/sec/clipboard/ClipboardExManager;Landroid/sec/clipboard/ClipboardExManager$1;)V

    iput-object v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardEventImpl:Landroid/sec/clipboard/ClipboardExManager$IClipboardDataPasteEventImpl;

    .line 151
    iput-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mRegInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    .line 1463
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput v3, p0, Landroid/sec/clipboard/ClipboardExManager;->_UNFORMAT:I

    .line 84
    iput v2, p0, Landroid/sec/clipboard/ClipboardExManager;->SUCCESS_SET_DATA:I

    .line 85
    const/4 v0, 0x1

    iput v0, p0, Landroid/sec/clipboard/ClipboardExManager;->FAIL_SET_DATA:I

    .line 86
    const/4 v0, 0x2

    iput v0, p0, Landroid/sec/clipboard/ClipboardExManager;->SUCCESS_AND_SAVE_BITMAP:I

    .line 87
    const/4 v0, 0x3

    iput v0, p0, Landroid/sec/clipboard/ClipboardExManager;->PROTECTED_DATA_MAX:I

    .line 89
    iput-boolean v2, p0, Landroid/sec/clipboard/ClipboardExManager;->mIsFiltered:Z

    .line 90
    iput v3, p0, Landroid/sec/clipboard/ClipboardExManager;->mFormatid:I

    .line 91
    iput-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;

    .line 92
    iput-boolean v2, p0, Landroid/sec/clipboard/ClipboardExManager;->mIsMaximumSize:Z

    .line 141
    iput-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mSetDataHandler:Landroid/os/Handler;

    .line 143
    iput-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mPersonaManager:Landroid/os/PersonaManager;

    .line 144
    iput-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardConverter:Landroid/sec/clipboard/ClipboardConverter;

    .line 146
    iput-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    .line 147
    iput-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardEventListener:Landroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;

    .line 149
    new-instance v0, Landroid/sec/clipboard/ClipboardExManager$IClipboardDataPasteEventImpl;

    invoke-direct {v0, p0, v1}, Landroid/sec/clipboard/ClipboardExManager$IClipboardDataPasteEventImpl;-><init>(Landroid/sec/clipboard/ClipboardExManager;Landroid/sec/clipboard/ClipboardExManager$1;)V

    iput-object v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardEventImpl:Landroid/sec/clipboard/ClipboardExManager$IClipboardDataPasteEventImpl;

    .line 151
    iput-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mRegInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    .line 190
    iput-object p1, p0, Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;

    .line 191
    iget-object v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    iput-object v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mPersonaManager:Landroid/os/PersonaManager;

    .line 193
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardConstants;->HAS_KNOX_FEATURE:Z

    if-nez v0, :cond_0

    .line 194
    const-string v0, "ClipboardExManager"

    const-string/jumbo v1, "no knox"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_0
    return-void
.end method

.method static synthetic access$100(Landroid/sec/clipboard/ClipboardExManager;)Landroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;
    .locals 1
    .param p0, "x0"    # Landroid/sec/clipboard/ClipboardExManager;

    .prologue
    .line 80
    iget-object v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardEventListener:Landroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;

    return-object v0
.end method

.method static synthetic access$200(Landroid/sec/clipboard/ClipboardExManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/sec/clipboard/ClipboardExManager;

    .prologue
    .line 80
    iget-object v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Landroid/sec/clipboard/ClipboardExManager;)Z
    .locals 1
    .param p0, "x0"    # Landroid/sec/clipboard/ClipboardExManager;

    .prologue
    .line 80
    iget-boolean v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mIsMaximumSize:Z

    return v0
.end method

.method static synthetic access$302(Landroid/sec/clipboard/ClipboardExManager;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/sec/clipboard/ClipboardExManager;
    .param p1, "x1"    # Z

    .prologue
    .line 80
    iput-boolean p1, p0, Landroid/sec/clipboard/ClipboardExManager;->mIsMaximumSize:Z

    return p1
.end method

.method static synthetic access$400(Landroid/sec/clipboard/ClipboardExManager;ZI)I
    .locals 1
    .param p0, "x0"    # Landroid/sec/clipboard/ClipboardExManager;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Landroid/sec/clipboard/ClipboardExManager;->isClipboardAllowed(ZI)I

    move-result v0

    return v0
.end method

.method private add(Landroid/sec/clipboard/data/ClipboardData;ZZZI)Z
    .locals 8
    .param p1, "data"    # Landroid/sec/clipboard/data/ClipboardData;
    .param p2, "withoutNoti"    # Z
    .param p3, "setPrimary"    # Z
    .param p4, "withoutSendingOrigin"    # Z
    .param p5, "callingId"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1382
    const/4 v2, 0x0

    .line 1384
    .local v2, "result":Z
    :try_start_0
    sget-boolean v5, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 1385
    const-string v5, "ClipboardExManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "result : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1388
    :cond_0
    invoke-direct {p0, p1}, Landroid/sec/clipboard/ClipboardExManager;->makeFileDescriptor(Landroid/sec/clipboard/data/ClipboardData;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1389
    const-string v3, "ClipboardExManager"

    const-string v5, "failed making file descriptor!"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1390
    const/4 v3, 0x0

    invoke-direct {p0, p2, v3}, Landroid/sec/clipboard/ClipboardExManager;->sendResult(ZZ)V

    .line 1414
    :goto_0
    return v4

    .line 1394
    :cond_1
    if-eqz p1, :cond_7

    .line 1395
    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->getFormat()I

    move-result v1

    .line 1396
    .local v1, "formatId":I
    if-eqz p4, :cond_4

    .line 1397
    iget-object v5, p0, Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_3

    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v5

    iget-object v6, p0, Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v1, p1, v6, p5}, Landroid/sec/clipboard/IClipboardService;->SetClipboardDataWithoutSendingOrginalClipboard(ILandroid/sec/clipboard/data/ClipboardData;Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_3

    move v2, v3

    .line 1403
    :goto_1
    invoke-direct {p0, p2, v2}, Landroid/sec/clipboard/ClipboardExManager;->sendResult(ZZ)V

    .line 1404
    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1405
    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 1406
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/sec/clipboard/data/ClipboardData;->setParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;)V

    .end local v1    # "formatId":I
    :cond_2
    :goto_2
    move v4, v2

    .line 1414
    goto :goto_0

    .restart local v1    # "formatId":I
    :cond_3
    move v2, v4

    .line 1397
    goto :goto_1

    .line 1398
    :cond_4
    if-eqz p3, :cond_6

    .line 1399
    iget-object v5, p0, Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_5

    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v5

    iget-object v6, p0, Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v1, p1, v6, p5}, Landroid/sec/clipboard/IClipboardService;->SetClipboardData(ILandroid/sec/clipboard/data/ClipboardData;Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_5

    move v2, v3

    :goto_3
    goto :goto_1

    :cond_5
    move v2, v4

    goto :goto_3

    .line 1401
    :cond_6
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v3

    invoke-interface {v3, v1, p1}, Landroid/sec/clipboard/IClipboardService;->SetClipboardDataOriginalToEx(ILandroid/sec/clipboard/data/ClipboardData;)Z

    move-result v2

    goto :goto_1

    .line 1409
    .end local v1    # "formatId":I
    :cond_7
    const-string v3, "ClipboardExManager"

    const-string v4, "addData - clipdata is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1411
    :catch_0
    move-exception v0

    .line 1412
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method private addData(Landroid/content/Context;Landroid/sec/clipboard/data/ClipboardData;ZZZ)Z
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Landroid/sec/clipboard/data/ClipboardData;
    .param p3, "withoutNoti"    # Z
    .param p4, "setPrimary"    # Z
    .param p5, "withoutSendingOrigin"    # Z

    .prologue
    const/high16 v5, 0x20000

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 1199
    const-string v1, "addData"

    invoke-direct {p0, v1}, Landroid/sec/clipboard/ClipboardExManager;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1278
    :cond_0
    :goto_0
    return v0

    .line 1203
    :cond_1
    iput-object p1, p0, Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;

    .line 1206
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    if-eqz v1, :cond_2

    if-nez p2, :cond_3

    .line 1207
    :cond_2
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1208
    const-string v1, "ClipboardExManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addData - Fail~ Service is null, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1213
    :cond_3
    invoke-virtual {p2}, Landroid/sec/clipboard/data/ClipboardData;->getFormat()I

    move-result v1

    if-ne v1, v4, :cond_6

    .line 1214
    invoke-virtual {p2, v4}, Landroid/sec/clipboard/data/ClipboardData;->GetAlternateFormat(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v6

    check-cast v6, Landroid/sec/clipboard/data/list/ClipboardDataHtml;

    .line 1215
    .local v6, "htmlData":Landroid/sec/clipboard/data/list/ClipboardDataHtml;
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->getPlainText()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v6}, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->getPlainText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v5, :cond_5

    .line 1216
    iput-boolean v2, p0, Landroid/sec/clipboard/ClipboardExManager;->mIsMaximumSize:Z

    .line 1231
    .end local v6    # "htmlData":Landroid/sec/clipboard/data/list/ClipboardDataHtml;
    :goto_1
    iget-object v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mSetDataHandler:Landroid/os/Handler;

    if-nez v0, :cond_4

    .line 1232
    new-instance v0, Landroid/sec/clipboard/ClipboardExManager$1;

    invoke-direct {v0, p0}, Landroid/sec/clipboard/ClipboardExManager$1;-><init>(Landroid/sec/clipboard/ClipboardExManager;)V

    iput-object v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mSetDataHandler:Landroid/os/Handler;

    .line 1278
    :cond_4
    invoke-virtual {p0}, Landroid/sec/clipboard/ClipboardExManager;->getPersonaId()I

    move-result v5

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-direct/range {v0 .. v5}, Landroid/sec/clipboard/ClipboardExManager;->add(Landroid/sec/clipboard/data/ClipboardData;ZZZI)Z

    move-result v0

    goto :goto_0

    .line 1218
    .restart local v6    # "htmlData":Landroid/sec/clipboard/data/list/ClipboardDataHtml;
    :cond_5
    iput-boolean v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mIsMaximumSize:Z

    goto :goto_1

    .line 1220
    .end local v6    # "htmlData":Landroid/sec/clipboard/data/list/ClipboardDataHtml;
    :cond_6
    invoke-virtual {p2}, Landroid/sec/clipboard/data/ClipboardData;->getFormat()I

    move-result v1

    if-ne v1, v3, :cond_8

    .line 1221
    invoke-virtual {p2, v3}, Landroid/sec/clipboard/data/ClipboardData;->GetAlternateFormat(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v7

    check-cast v7, Landroid/sec/clipboard/data/list/ClipboardDataText;

    .line 1222
    .local v7, "textData":Landroid/sec/clipboard/data/list/ClipboardDataText;
    if-eqz v7, :cond_7

    invoke-virtual {v7}, Landroid/sec/clipboard/data/list/ClipboardDataText;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v7}, Landroid/sec/clipboard/data/list/ClipboardDataText;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lt v1, v5, :cond_7

    .line 1223
    iput-boolean v2, p0, Landroid/sec/clipboard/ClipboardExManager;->mIsMaximumSize:Z

    goto :goto_1

    .line 1225
    :cond_7
    iput-boolean v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mIsMaximumSize:Z

    goto :goto_1

    .line 1228
    .end local v7    # "textData":Landroid/sec/clipboard/data/list/ClipboardDataText;
    :cond_8
    iput-boolean v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mIsMaximumSize:Z

    goto :goto_1
.end method

.method private static getService()Landroid/sec/clipboard/IClipboardService;
    .locals 3

    .prologue
    .line 232
    sget-object v1, Landroid/sec/clipboard/ClipboardExManager;->sService:Landroid/sec/clipboard/IClipboardService;

    if-eqz v1, :cond_0

    .line 233
    sget-object v1, Landroid/sec/clipboard/ClipboardExManager;->sService:Landroid/sec/clipboard/IClipboardService;

    .line 242
    .local v0, "b":Landroid/os/IBinder;
    :goto_0
    return-object v1

    .line 235
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    const-string v1, "clipboardEx"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 236
    .restart local v0    # "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/sec/clipboard/IClipboardService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    sput-object v1, Landroid/sec/clipboard/ClipboardExManager;->sService:Landroid/sec/clipboard/IClipboardService;

    .line 237
    sget-object v1, Landroid/sec/clipboard/ClipboardExManager;->sService:Landroid/sec/clipboard/IClipboardService;

    if-nez v1, :cond_1

    .line 238
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 239
    const-string v1, "ClipboardExManager"

    const-string v2, "Had failed to obtaining clipboardEx service."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_1
    sget-object v1, Landroid/sec/clipboard/ClipboardExManager;->sService:Landroid/sec/clipboard/IClipboardService;

    goto :goto_0
.end method

.method private getUserId()I
    .locals 4

    .prologue
    .line 222
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 223
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 224
    .local v1, "userId":I
    invoke-static {v1}, Landroid/os/PersonaManager;->isBBCContainer(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 225
    const/4 v1, 0x0

    .line 226
    const-string v2, "ClipboardExManager"

    const-string v3, "getUserId is BBC"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_0
    return v1
.end method

.method private isClipboardAllowed(ZI)I
    .locals 10
    .param p1, "showToast"    # Z
    .param p2, "userId"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v7, -0x1

    .line 854
    iget-object v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    move v0, v7

    .line 873
    :goto_0
    return v0

    .line 858
    :cond_0
    const-string v0, "content://com.sec.knox.provider/RestrictionPolicy1"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 859
    .local v1, "uri":Landroid/net/Uri;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    .line 860
    .local v4, "selectionArgs":[Ljava/lang/String;
    iget-object v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "isClipboardAllowedAsUser"

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 861
    .local v6, "cr":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 863
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 864
    const-string v0, "isClipboardAllowedAsUser"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 868
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v8

    goto :goto_0

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v9

    .line 873
    goto :goto_0

    .line 868
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_2
    move v0, v7

    .line 871
    goto :goto_0
.end method

.method private isEnabled(Ljava/lang/String;)Z
    .locals 3
    .param p1, "func"    # Ljava/lang/String;

    .prologue
    .line 1430
    invoke-virtual {p0}, Landroid/sec/clipboard/ClipboardExManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1431
    const-string v0, "ClipboardExManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "not enabled! from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1432
    const/4 v0, 0x0

    .line 1434
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private makeFileDescriptor(Landroid/sec/clipboard/data/ClipboardData;)Z
    .locals 11
    .param p1, "data"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    const/4 v7, 0x0

    .line 1282
    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v3

    .line 1283
    .local v3, "fh":Landroid/sec/clipboard/util/FileHelper;
    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->getFormat()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 1378
    :cond_0
    :goto_0
    const/4 v7, 0x1

    :goto_1
    return v7

    :pswitch_0
    move-object v6, p1

    .line 1285
    check-cast v6, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    .line 1286
    .local v6, "target":Landroid/sec/clipboard/data/list/ClipboardDataBitmap;
    invoke-virtual {v6}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->getBitmapPath()Ljava/lang/String;

    move-result-object v4

    .line 1287
    .local v4, "imgPath":Ljava/lang/String;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_2

    .line 1288
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1289
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v3, v2}, Landroid/sec/clipboard/util/FileHelper;->checkFile(Ljava/io/File;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1290
    const/4 v5, 0x0

    .line 1292
    .local v5, "pfd":Landroid/os/ParcelFileDescriptor;
    const/high16 v8, 0x38000000

    :try_start_0
    invoke-static {v2, v8}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    .line 1293
    invoke-virtual {v6, v5}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->setParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1306
    .end local v2    # "f":Ljava/io/File;
    .end local v5    # "pfd":Landroid/os/ParcelFileDescriptor;
    :goto_2
    invoke-virtual {v6}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->HasExtraData()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1307
    invoke-virtual {v6}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->getExtraDataPath()Ljava/lang/String;

    move-result-object v1

    .line 1308
    .local v1, "extraPath":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_0

    .line 1309
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1310
    .restart local v2    # "f":Ljava/io/File;
    invoke-virtual {v3, v2}, Landroid/sec/clipboard/util/FileHelper;->checkFile(Ljava/io/File;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1311
    const/4 v5, 0x0

    .line 1313
    .restart local v5    # "pfd":Landroid/os/ParcelFileDescriptor;
    const/high16 v8, 0x38000000

    :try_start_1
    invoke-static {v2, v8}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    .line 1314
    invoke-virtual {v6, v5}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->setExtraParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1315
    :catch_0
    move-exception v0

    .line 1316
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1294
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "extraPath":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 1295
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1299
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v5    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_1
    const-string v8, "ClipboardExManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "it\'s not file. : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1303
    .end local v2    # "f":Ljava/io/File;
    :cond_2
    const-string v8, "ClipboardExManager"

    const-string/jumbo v9, "no bitmap file"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1320
    .restart local v1    # "extraPath":Ljava/lang/String;
    .restart local v2    # "f":Ljava/io/File;
    :cond_3
    const-string v8, "ClipboardExManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "it\'s not file. : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1325
    .end local v1    # "extraPath":Ljava/lang/String;
    .end local v2    # "f":Ljava/io/File;
    :cond_4
    const-string v7, "ClipboardExManager"

    const-string/jumbo v8, "no extra bitmap file"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v4    # "imgPath":Ljava/lang/String;
    .end local v6    # "target":Landroid/sec/clipboard/data/list/ClipboardDataBitmap;
    :pswitch_1
    move-object v6, p1

    .line 1330
    check-cast v6, Landroid/sec/clipboard/data/list/ClipboardDataHtml;

    .line 1331
    .local v6, "target":Landroid/sec/clipboard/data/list/ClipboardDataHtml;
    invoke-virtual {v6}, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->getFirstImgPath()Ljava/lang/String;

    move-result-object v4

    .line 1332
    .restart local v4    # "imgPath":Ljava/lang/String;
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_6

    .line 1333
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1334
    .restart local v2    # "f":Ljava/io/File;
    invoke-virtual {v3, v2}, Landroid/sec/clipboard/util/FileHelper;->checkFile(Ljava/io/File;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1335
    const/4 v5, 0x0

    .line 1337
    .restart local v5    # "pfd":Landroid/os/ParcelFileDescriptor;
    const/high16 v8, 0x38000000

    :try_start_2
    invoke-static {v2, v8}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    .line 1338
    invoke-virtual {v6, v5}, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->setParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 1339
    :catch_2
    move-exception v0

    .line 1340
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 1344
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v5    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_5
    const-string v8, "ClipboardExManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "it\'s not file. : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1348
    .end local v2    # "f":Ljava/io/File;
    :cond_6
    const-string v7, "ClipboardExManager"

    const-string/jumbo v8, "no first image file"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v4    # "imgPath":Ljava/lang/String;
    .end local v6    # "target":Landroid/sec/clipboard/data/list/ClipboardDataHtml;
    :pswitch_2
    move-object v6, p1

    .line 1353
    check-cast v6, Landroid/sec/clipboard/data/list/ClipboardDataUri;

    .line 1354
    .local v6, "target":Landroid/sec/clipboard/data/list/ClipboardDataUri;
    invoke-virtual {v6}, Landroid/sec/clipboard/data/list/ClipboardDataUri;->getPreviewImgPath()Ljava/lang/String;

    move-result-object v4

    .line 1355
    .restart local v4    # "imgPath":Ljava/lang/String;
    if-eqz v4, :cond_8

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_8

    .line 1356
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1357
    .restart local v2    # "f":Ljava/io/File;
    invoke-virtual {v3, v2}, Landroid/sec/clipboard/util/FileHelper;->checkFile(Ljava/io/File;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1358
    const/4 v5, 0x0

    .line 1360
    .restart local v5    # "pfd":Landroid/os/ParcelFileDescriptor;
    const/high16 v8, 0x38000000

    :try_start_3
    invoke-static {v2, v8}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    .line 1361
    invoke-virtual {v6, v5}, Landroid/sec/clipboard/data/list/ClipboardDataUri;->setParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 1362
    :catch_3
    move-exception v0

    .line 1363
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 1367
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v5    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_7
    const-string v8, "ClipboardExManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "it\'s not file. : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1371
    .end local v2    # "f":Ljava/io/File;
    :cond_8
    const-string v7, "ClipboardExManager"

    const-string/jumbo v8, "no preview image file"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1283
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private sendResult(ZZ)V
    .locals 2
    .param p1, "withoutNoti"    # Z
    .param p2, "result"    # Z

    .prologue
    .line 1418
    if-nez p1, :cond_0

    .line 1419
    iget-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mSetDataHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1420
    .local v0, "msg":Landroid/os/Message;
    if-eqz p2, :cond_1

    .line 1421
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1425
    :goto_0
    iget-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mSetDataHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1427
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void

    .line 1423
    .restart local v0    # "msg":Landroid/os/Message;
    :cond_1
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    goto :goto_0
.end method

.method private startClipboardUIServiceService()V
    .locals 5

    .prologue
    .line 832
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 833
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.samsung.android.clipboarduiservice"

    const-string v4, "com.samsung.android.clipboarduiservice.ClipboardUIServiceStarter"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 837
    iget-object v2, p0, Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 841
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 838
    :catch_0
    move-exception v0

    .line 839
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private startKeepUIServiceService()V
    .locals 2

    .prologue
    .line 846
    const-string v0, "ClipboardExManager"

    const-string/jumbo v1, "startKeepUIServiceService"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    return-void
.end method


# virtual methods
.method public AddClipboardFormatListener(Landroid/sec/clipboard/IClipboardFormatListener;)Z
    .locals 4
    .param p1, "listener"    # Landroid/sec/clipboard/IClipboardFormatListener;

    .prologue
    const/4 v0, 0x0

    .line 689
    const-string v2, "AddClipboardFormatListener"

    invoke-direct {p0, v2}, Landroid/sec/clipboard/ClipboardExManager;->isEnabled(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 705
    :cond_0
    :goto_0
    return v0

    .line 694
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    if-nez v2, :cond_2

    .line 695
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 696
    const-string v2, "ClipboardExManager"

    const-string v3, "AddClipboardFormatListener - Fail~ Service is null."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 701
    :catch_0
    move-exception v1

    .line 702
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 703
    const/4 v0, 0x0

    .local v0, "Result":Z
    goto :goto_0

    .line 700
    .end local v0    # "Result":Z
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/sec/clipboard/IClipboardService;->AddClipboardFormatListener(Landroid/sec/clipboard/IClipboardFormatListener;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    .restart local v0    # "Result":Z
    goto :goto_0
.end method

.method public RegistClipboardWorkingFormUiInterface(Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;)Z
    .locals 4
    .param p1, "iRegInterface"    # Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    .prologue
    .line 743
    const-string v2, "RegistClipboardWorkingFormUiInterface"

    invoke-direct {p0, v2}, Landroid/sec/clipboard/ClipboardExManager;->isEnabled(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 744
    const/4 v0, 0x0

    .line 768
    :cond_0
    :goto_0
    return v0

    .line 746
    :cond_1
    const/4 v0, 0x0

    .line 748
    .local v0, "Result":Z
    iget-object v2, p0, Landroid/sec/clipboard/ClipboardExManager;->mRegInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/sec/clipboard/ClipboardExManager;->mRegInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    if-eq v2, p1, :cond_3

    .line 749
    :cond_2
    iput-object p1, p0, Landroid/sec/clipboard/ClipboardExManager;->mRegInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    .line 752
    :cond_3
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    if-nez v2, :cond_4

    .line 753
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 754
    const-string v2, "ClipboardExManager"

    const-string v3, "RegistClipboardWorkingFormUiInterface - Fail~ Service is null."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 760
    :cond_4
    :try_start_0
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    iget-object v3, p0, Landroid/sec/clipboard/ClipboardExManager;->mRegInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    invoke-interface {v2, v3}, Landroid/sec/clipboard/IClipboardService;->RegistClipboardWorkingFormUiInterfaces(Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;)V

    .line 761
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v2, :cond_5

    .line 762
    const-string v2, "ClipboardExManager"

    const-string v3, "Regist ClipboardWorkingFormUiInterface - Success."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 764
    :cond_5
    const/4 v0, 0x1

    goto :goto_0

    .line 765
    :catch_0
    move-exception v1

    .line 766
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public RegistScrapWorkingFormUiInterface(Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;)Z
    .locals 1
    .param p1, "iRegInterface"    # Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    .prologue
    .line 1472
    const/4 v0, 0x0

    return v0
.end method

.method public RemoveClipboardFormatListener(Landroid/sec/clipboard/IClipboardFormatListener;)Z
    .locals 4
    .param p1, "listener"    # Landroid/sec/clipboard/IClipboardFormatListener;

    .prologue
    const/4 v0, 0x0

    .line 716
    const-string v2, "RemoveClipboardFormatListener"

    invoke-direct {p0, v2}, Landroid/sec/clipboard/ClipboardExManager;->isEnabled(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 733
    :cond_0
    :goto_0
    return v0

    .line 721
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    if-nez v2, :cond_2

    .line 722
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 723
    const-string v2, "ClipboardExManager"

    const-string v3, "RemoveClipboardFormatListener - Fail~ Service is null."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 729
    :catch_0
    move-exception v1

    .line 730
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 731
    const/4 v0, 0x0

    .local v0, "Result":Z
    goto :goto_0

    .line 728
    .end local v0    # "Result":Z
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/sec/clipboard/IClipboardService;->RemoveClipboardFormatListener(Landroid/sec/clipboard/IClipboardFormatListener;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    .restart local v0    # "Result":Z
    goto :goto_0
.end method

.method public callPasteApplication(Landroid/sec/clipboard/data/ClipboardData;)V
    .locals 3
    .param p1, "clipdata"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    .line 374
    const-string v1, "callPasteApplication"

    invoke-direct {p0, v1}, Landroid/sec/clipboard/ClipboardExManager;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 396
    :cond_0
    :goto_0
    return-void

    .line 378
    :cond_1
    iget-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    if-eqz v1, :cond_3

    .line 380
    :try_start_0
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    if-nez v1, :cond_2

    .line 381
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 382
    const-string v1, "ClipboardExManager"

    const-string v2, "callPasteApplication - Fail~ Service is null."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 388
    :catch_0
    move-exception v0

    .line 389
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 386
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/sec/clipboard/IClipboardService;->callPasteMenuFromApp(I)V

    .line 387
    iget-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    invoke-interface {v1, p1}, Landroid/sec/clipboard/IClipboardDataPasteEvent;->onClipboardDataPaste(Landroid/sec/clipboard/data/ClipboardData;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 392
    :cond_3
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 393
    const-string v1, "ClipboardExManager"

    const-string v2, "Clipboard Service callPasteApplication mPasteEvent == null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public callPasteMenuFromApp(I)V
    .locals 3
    .param p1, "enabled"    # I

    .prologue
    .line 331
    const-string v1, "callPasteMenuFromApp"

    invoke-direct {p0, v1}, Landroid/sec/clipboard/ClipboardExManager;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 345
    :cond_0
    :goto_0
    return-void

    .line 335
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    if-nez v1, :cond_2

    .line 336
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 337
    const-string v1, "ClipboardExManager"

    const-string v2, "callPasteMenuFromApp - Fail~ Service is null."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 342
    :catch_0
    move-exception v0

    .line 343
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 341
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/sec/clipboard/IClipboardService;->callPasteMenuFromApp(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public clearClipboardFormat()V
    .locals 2

    .prologue
    .line 965
    const-string/jumbo v0, "setFilter"

    invoke-direct {p0, v0}, Landroid/sec/clipboard/ClipboardExManager;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 975
    :cond_0
    :goto_0
    return-void

    .line 969
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mIsFiltered:Z

    .line 970
    const/4 v0, -0x1

    iput v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mFormatid:I

    .line 971
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardEventListener:Landroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;

    .line 972
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 973
    const-string v0, "ClipboardExManager"

    const-string v1, "clearClipboardFormat"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public clearFilter()V
    .locals 2

    .prologue
    .line 983
    const-string/jumbo v0, "setFilter"

    invoke-direct {p0, v0}, Landroid/sec/clipboard/ClipboardExManager;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 991
    :goto_0
    return-void

    .line 987
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mIsFiltered:Z

    .line 988
    const/4 v0, -0x1

    iput v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mFormatid:I

    .line 989
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardEventListener:Landroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;

    .line 990
    const-string v0, "ClipboardExManager"

    const-string v1, "clearClipboardFormat"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public dismissDialog()V
    .locals 3

    .prologue
    .line 1184
    :try_start_0
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1185
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1186
    const-string v1, "ClipboardExManager"

    const-string v2, "dismissDialog - Fail~ Service is null."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1196
    :cond_0
    :goto_0
    return-void

    .line 1191
    :cond_1
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    invoke-interface {v1}, Landroid/sec/clipboard/IClipboardService;->dismissUIDataDialog()V

    .line 1192
    const-string v1, "ClipboardExManager"

    const-string v2, "dismissDialog"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1193
    :catch_0
    move-exception v0

    .line 1194
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public dismissUIDataDialog()V
    .locals 0

    .prologue
    .line 1176
    invoke-virtual {p0}, Landroid/sec/clipboard/ClipboardExManager;->dismissDialog()V

    .line 1177
    return-void
.end method

.method public getClipedStrings(II)Ljava/util/ArrayList;
    .locals 6
    .param p1, "metaType"    # I
    .param p2, "maxCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 775
    const-string v4, "getClipedStrings"

    invoke-direct {p0, v4}, Landroid/sec/clipboard/ClipboardExManager;->isEnabled(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object v1, v3

    .line 790
    :goto_0
    return-object v1

    .line 778
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 780
    .local v1, "clipboardData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v4

    if-nez v4, :cond_2

    .line 781
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v4, :cond_1

    .line 782
    const-string v4, "ClipboardExManager"

    const-string v5, "getClipedStrings - Fail~ Service is null."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object v1, v3

    .line 784
    goto :goto_0

    .line 786
    :cond_2
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/sec/clipboard/IClipboardService;->getClipedStrings(II)Ljava/util/List;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/util/ArrayList;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 787
    :catch_0
    move-exception v2

    .line 788
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getContainerID()I
    .locals 1

    .prologue
    .line 1467
    const/4 v0, 0x0

    return v0
.end method

.method public getData(I)Landroid/sec/clipboard/data/ClipboardData;
    .locals 6
    .param p1, "formatid"    # I

    .prologue
    .line 534
    const-string v3, "getData"

    invoke-direct {p0, v3}, Landroid/sec/clipboard/ClipboardExManager;->isEnabled(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 535
    const/4 v0, 0x0

    .line 557
    :cond_0
    :goto_0
    return-object v0

    .line 537
    :cond_1
    const/4 v0, 0x0

    .line 539
    .local v0, "data":Landroid/sec/clipboard/data/ClipboardData;
    :try_start_0
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v3

    if-nez v3, :cond_2

    .line 540
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 541
    const-string v3, "ClipboardExManager"

    const-string v4, "getData - Fail~ Service is null."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 554
    :catch_0
    move-exception v1

    .line 555
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 546
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    iget v3, p0, Landroid/sec/clipboard/ClipboardExManager;->mFormatid:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    iget v2, p0, Landroid/sec/clipboard/ClipboardExManager;->mFormatid:I

    .line 547
    .local v2, "myFormat":I
    :goto_1
    const-string v3, "ClipboardExManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getData : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/sec/clipboard/ClipboardExManager;->mFormatid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardEventListener:Landroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/sec/clipboard/IClipboardService;->GetClipboardData(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    .line 549
    if-nez v0, :cond_0

    .line 550
    iget-object v3, p0, Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_0

    .line 551
    iget-object v3, p0, Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;

    const v4, 0x1040800

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .end local v2    # "myFormat":I
    :cond_3
    move v2, p1

    .line 546
    goto :goto_1
.end method

.method public getData(Landroid/content/Context;I)Landroid/sec/clipboard/data/ClipboardData;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "formatid"    # I

    .prologue
    .line 522
    invoke-virtual {p0, p2}, Landroid/sec/clipboard/ClipboardExManager;->getData(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    return-object v0
.end method

.method public getData(Landroid/content/Context;ILandroid/sec/clipboard/IClipboardDataPasteEvent;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "formatid"    # I
    .param p3, "clPasteEvent"    # Landroid/sec/clipboard/IClipboardDataPasteEvent;

    .prologue
    const/4 v2, 0x0

    .line 649
    const-string v3, "getData"

    invoke-direct {p0, v3}, Landroid/sec/clipboard/ClipboardExManager;->isEnabled(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v2

    .line 676
    :goto_0
    return v0

    .line 652
    :cond_0
    const/4 v0, 0x1

    .line 654
    .local v0, "Result":Z
    invoke-direct {p0}, Landroid/sec/clipboard/ClipboardExManager;->startClipboardUIServiceService()V

    .line 655
    const-string v3, "ClipboardExManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "call getData.."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    :try_start_0
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v3

    if-nez v3, :cond_2

    .line 659
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 660
    const-string v3, "ClipboardExManager"

    const-string v4, "getData - Fail~ Service is null."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v0, v2

    .line 662
    goto :goto_0

    .line 665
    :cond_2
    iget-object v2, p0, Landroid/sec/clipboard/ClipboardExManager;->mPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    if-nez v2, :cond_3

    .line 666
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    invoke-interface {v2, p2, p3}, Landroid/sec/clipboard/IClipboardService;->ShowUIClipboardData(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    .line 667
    const-string v2, "ClipboardExManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getdata - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 672
    :catch_0
    move-exception v1

    .line 673
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 674
    const/4 v0, 0x0

    goto :goto_0

    .line 669
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_1
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    iget v3, p0, Landroid/sec/clipboard/ClipboardExManager;->mFormatid:I

    iget-object v4, p0, Landroid/sec/clipboard/ClipboardExManager;->mPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    invoke-interface {v2, v3, v4}, Landroid/sec/clipboard/IClipboardService;->ShowUIClipboardData(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    .line 670
    const-string v2, "ClipboardExManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getdata - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/sec/clipboard/ClipboardExManager;->mPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/sec/clipboard/ClipboardExManager;->mFormatid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public getDataListSize()I
    .locals 4

    .prologue
    .line 616
    const-string v2, "getDataListSize"

    invoke-direct {p0, v2}, Landroid/sec/clipboard/ClipboardExManager;->isEnabled(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 617
    const/4 v1, 0x0

    .line 632
    :cond_0
    :goto_0
    return v1

    .line 620
    :cond_1
    const/4 v1, -0x1

    .line 622
    .local v1, "size":I
    :try_start_0
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    if-nez v2, :cond_2

    .line 623
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 624
    const-string v2, "ClipboardExManager"

    const-string v3, "getDataListSize - Fail~ Service is null."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 629
    :catch_0
    move-exception v0

    .line 630
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 628
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    invoke-interface {v2}, Landroid/sec/clipboard/IClipboardService;->getDataSize()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    goto :goto_0
.end method

.method public getFrozenState()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 317
    const-string v1, "getFrozenState"

    invoke-direct {p0, v1}, Landroid/sec/clipboard/ClipboardExManager;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 323
    :cond_0
    :goto_0
    return v0

    .line 320
    :cond_1
    iget-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    if-eqz v1, :cond_0

    .line 323
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getPersonaId()I
    .locals 3

    .prologue
    .line 202
    const/4 v0, 0x0

    .line 203
    .local v0, "userId":I
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->HAS_KNOX_FEATURE:Z

    if-eqz v1, :cond_3

    .line 204
    iget-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 205
    iget-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mPersonaManager:Landroid/os/PersonaManager;

    if-nez v1, :cond_0

    .line 206
    iget-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "persona"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PersonaManager;

    iput-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mPersonaManager:Landroid/os/PersonaManager;

    .line 208
    :cond_0
    iget-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mPersonaManager:Landroid/os/PersonaManager;

    if-eqz v1, :cond_2

    .line 209
    iget-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mPersonaManager:Landroid/os/PersonaManager;

    invoke-virtual {v1}, Landroid/os/PersonaManager;->getFocusedUser()I

    move-result v0

    .line 217
    :cond_1
    :goto_0
    return v0

    .line 211
    :cond_2
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    goto :goto_0

    .line 215
    :cond_3
    invoke-direct {p0}, Landroid/sec/clipboard/ClipboardExManager;->getUserId()I

    move-result v0

    goto :goto_0
.end method

.method public getPreviewIconXpos()F
    .locals 2

    .prologue
    .line 797
    const-string v0, "ClipboardExManager"

    const-string v1, "getPreviewIconXpos"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    const/4 v0, 0x0

    return v0
.end method

.method public getPreviewIconYpos()F
    .locals 2

    .prologue
    .line 805
    const-string v0, "ClipboardExManager"

    const-string v1, "getPreviewIconYpos"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    const/4 v0, 0x0

    return v0
.end method

.method public getScrapDataSize()I
    .locals 2

    .prologue
    .line 639
    const-string v0, "ClipboardExManager"

    const-string v1, "getScrapDataSize!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    const/4 v0, 0x0

    return v0
.end method

.method public hasAppClipboardListener()Z
    .locals 1

    .prologue
    .line 999
    invoke-virtual {p0}, Landroid/sec/clipboard/ClipboardExManager;->isFiltered()Z

    move-result v0

    return v0
.end method

.method public hasData(I)Z
    .locals 6
    .param p1, "formatid"    # I

    .prologue
    .line 568
    const-string v3, "hasData"

    invoke-direct {p0, v3}, Landroid/sec/clipboard/ClipboardExManager;->isEnabled(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 569
    const/4 v0, 0x0

    .line 590
    :cond_0
    :goto_0
    return v0

    .line 572
    :cond_1
    const/4 v0, 0x0

    .line 574
    .local v0, "Result":Z
    :try_start_0
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v3

    if-nez v3, :cond_2

    .line 575
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 576
    const-string v3, "ClipboardExManager"

    const-string v4, "hasData - Fail~ Service is null."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 587
    :catch_0
    move-exception v1

    .line 588
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 581
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    iget v3, p0, Landroid/sec/clipboard/ClipboardExManager;->mFormatid:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    iget v2, p0, Landroid/sec/clipboard/ClipboardExManager;->mFormatid:I

    .line 582
    .local v2, "myFormat":I
    :goto_1
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/sec/clipboard/IClipboardService;->GetClipboardData(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 583
    const-string v3, "ClipboardExManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hasData : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/sec/clipboard/ClipboardExManager;->mFormatid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardEventListener:Landroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 584
    const/4 v0, 0x1

    goto :goto_0

    .end local v2    # "myFormat":I
    :cond_3
    move v2, p1

    .line 581
    goto :goto_1
.end method

.method public hasData(Landroid/content/Context;I)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "formatid"    # I

    .prologue
    .line 599
    invoke-virtual {p0, p2}, Landroid/sec/clipboard/ClipboardExManager;->hasData(I)Z

    move-result v0

    return v0
.end method

.method public hasDataOf(I)Z
    .locals 1
    .param p1, "formatid"    # I

    .prologue
    .line 608
    invoke-virtual {p0, p1}, Landroid/sec/clipboard/ClipboardExManager;->hasData(I)Z

    move-result v0

    return v0
.end method

.method public hideUIFloatingIcon()V
    .locals 2

    .prologue
    .line 820
    const-string v0, "ClipboardExManager"

    const-string v1, "hideUIFloatingIcon"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    return-void
.end method

.method public isEnabled()Z
    .locals 5

    .prologue
    .line 1442
    const/4 v2, 0x0

    .line 1445
    .local v2, "isEnabled":Z
    :try_start_0
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1446
    sget-object v3, Landroid/sec/clipboard/ClipboardExManager;->sService:Landroid/sec/clipboard/IClipboardService;

    invoke-interface {v3}, Landroid/sec/clipboard/IClipboardService;->isEnabled()Z

    move-result v2

    .line 1456
    :goto_0
    return v2

    .line 1448
    :cond_0
    const-string v3, "ClipboardExManager"

    const-string/jumbo v4, "sService is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1450
    :catch_0
    move-exception v0

    .line 1451
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1452
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 1453
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public isFiltered()Z
    .locals 1

    .prologue
    .line 1008
    const-string v0, "isFiltered"

    invoke-direct {p0, v0}, Landroid/sec/clipboard/ClipboardExManager;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1009
    const/4 v0, 0x0

    .line 1011
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mIsFiltered:Z

    goto :goto_0
.end method

.method public isShowing()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 404
    const-string v2, "isShowing"

    invoke-direct {p0, v2}, Landroid/sec/clipboard/ClipboardExManager;->isEnabled(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 417
    :cond_0
    :goto_0
    return v1

    .line 408
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    if-nez v2, :cond_2

    .line 409
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 410
    const-string v2, "ClipboardExManager"

    const-string v3, "isShowing - Fail~ Service is null."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 415
    :catch_0
    move-exception v0

    .line 416
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 414
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    invoke-interface {v2}, Landroid/sec/clipboard/IClipboardService;->IsShowUIClipboardData()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    goto :goto_0
.end method

.method public iscalledPasteMenuFromApp()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 351
    const-string v2, "iscalledPasteMenuFromApp"

    invoke-direct {p0, v2}, Landroid/sec/clipboard/ClipboardExManager;->isEnabled(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 365
    :cond_0
    :goto_0
    return v1

    .line 356
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    if-nez v2, :cond_2

    .line 357
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 358
    const-string v2, "ClipboardExManager"

    const-string v3, "iscalledPasteMenuFromApp - Fail~ Service is null."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 363
    :catch_0
    move-exception v0

    .line 364
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 362
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    invoke-interface {v2}, Landroid/sec/clipboard/IClipboardService;->iscalledPasteMenuFromApp()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    goto :goto_0
.end method

.method public requestPaste(Landroid/sec/clipboard/data/ClipboardData;)V
    .locals 4
    .param p1, "clipdata"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    .line 1019
    const-string/jumbo v1, "requestPaste"

    invoke-direct {p0, v1}, Landroid/sec/clipboard/ClipboardExManager;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1043
    :cond_0
    :goto_0
    return-void

    .line 1022
    :cond_1
    const-string v2, "ClipboardExManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestPaste : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->getFormat()I

    move-result v1

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    invoke-virtual {p0}, Landroid/sec/clipboard/ClipboardExManager;->isFiltered()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1026
    :try_start_0
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    if-nez v1, :cond_3

    .line 1027
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1028
    const-string v1, "ClipboardExManager"

    const-string/jumbo v2, "requestPaste - Fail~ Service is null."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1037
    :catch_0
    move-exception v0

    .line 1038
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1022
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v1, -0x1

    goto :goto_1

    .line 1032
    :cond_3
    :try_start_1
    iget v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mFormatid:I

    invoke-virtual {p1, v1}, Landroid/sec/clipboard/data/ClipboardData;->IsAlternateformatAvailable(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1033
    iget-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardEventListener:Landroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;

    invoke-interface {v1, p1}, Landroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;->onPaste(Landroid/sec/clipboard/data/ClipboardData;)V

    goto :goto_0

    .line 1035
    :cond_4
    const-string v1, "ClipboardExManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t convert format type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/sec/clipboard/ClipboardExManager;->mFormatid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->getFormat()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1041
    :cond_5
    const-string v1, "ClipboardExManager"

    const-string/jumbo v2, "no app clipboard listener!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendCropRect(Landroid/graphics/Rect;Z)V
    .locals 2
    .param p1, "cropRect"    # Landroid/graphics/Rect;
    .param p2, "showAni"    # Z

    .prologue
    .line 827
    const-string v0, "ClipboardExManager"

    const-string/jumbo v1, "sendCropRect!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    return-void
.end method

.method public setClipboardFormat(ILandroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;)V
    .locals 3
    .param p1, "formatid"    # I
    .param p2, "listener"    # Landroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;

    .prologue
    .line 883
    const-string/jumbo v0, "setClipboardFormat"

    invoke-direct {p0, v0}, Landroid/sec/clipboard/ClipboardExManager;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 898
    :cond_0
    :goto_0
    return-void

    .line 887
    :cond_1
    iget v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mFormatid:I

    if-eq v0, p1, :cond_2

    .line 888
    invoke-virtual {p0, p1, p2}, Landroid/sec/clipboard/ClipboardExManager;->updateClipboard(ILandroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;)V

    .line 891
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mIsFiltered:Z

    .line 892
    iput p1, p0, Landroid/sec/clipboard/ClipboardExManager;->mFormatid:I

    .line 893
    iput-object p2, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardEventListener:Landroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;

    .line 895
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 896
    const-string v0, "ClipboardExManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setClipboardFormat - Format:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setData(Landroid/content/Context;Landroid/content/ClipData;Z)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Landroid/content/ClipData;
    .param p3, "setPrimary"    # Z

    .prologue
    const/4 v5, 0x0

    .line 491
    const/4 v2, 0x0

    .line 494
    .local v2, "clipboardData":Landroid/sec/clipboard/data/ClipboardData;
    invoke-static {p1}, Landroid/sec/clipboard/ClipboardConverter;->getInstance(Landroid/content/Context;)Landroid/sec/clipboard/ClipboardConverter;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardConverter:Landroid/sec/clipboard/ClipboardConverter;

    .line 495
    iget-object v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardConverter:Landroid/sec/clipboard/ClipboardConverter;

    invoke-virtual {v0, p2}, Landroid/sec/clipboard/ClipboardConverter;->ClipDataToClipboardData(Landroid/content/ClipData;)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v2

    .line 497
    if-nez v2, :cond_0

    .line 500
    :goto_0
    return v5

    :cond_0
    if-eqz p3, :cond_1

    move v3, v5

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/sec/clipboard/ClipboardExManager;->addData(Landroid/content/Context;Landroid/sec/clipboard/data/ClipboardData;ZZZ)Z

    move-result v5

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public setData(Landroid/content/Context;Landroid/sec/clipboard/data/ClipboardData;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    const/4 v3, 0x0

    .line 468
    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, v3

    invoke-direct/range {v0 .. v5}, Landroid/sec/clipboard/ClipboardExManager;->addData(Landroid/content/Context;Landroid/sec/clipboard/data/ClipboardData;ZZZ)Z

    move-result v0

    return v0
.end method

.method public setDataWithoutNoti(Landroid/content/Context;Landroid/sec/clipboard/data/ClipboardData;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    const/4 v3, 0x1

    .line 477
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    invoke-direct/range {v0 .. v5}, Landroid/sec/clipboard/ClipboardExManager;->addData(Landroid/content/Context;Landroid/sec/clipboard/data/ClipboardData;ZZZ)Z

    move-result v0

    return v0
.end method

.method public setDataWithoutSendingOrginalClipboard(Landroid/content/Context;Landroid/sec/clipboard/data/ClipboardData;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    const/4 v3, 0x0

    .line 513
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    invoke-direct/range {v0 .. v5}, Landroid/sec/clipboard/ClipboardExManager;->addData(Landroid/content/Context;Landroid/sec/clipboard/data/ClipboardData;ZZZ)Z

    move-result v0

    return v0
.end method

.method public setFilter(ILandroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;)V
    .locals 3
    .param p1, "filter"    # I
    .param p2, "listener"    # Landroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;

    .prologue
    .line 908
    const-string/jumbo v0, "setFilter"

    invoke-direct {p0, v0}, Landroid/sec/clipboard/ClipboardExManager;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 922
    :goto_0
    return-void

    .line 912
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mIsFiltered:Z

    .line 913
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 914
    const/4 p1, 0x1

    .line 915
    const-string v0, "ClipboardExManager"

    const-string/jumbo v1, "setFilter - Format changed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/sec/clipboard/ClipboardExManager;->updateFilter(ILandroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;)V

    .line 918
    const-string v0, "ClipboardExManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setFilter - Format:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mIsFiltered:Z

    .line 920
    iput p1, p0, Landroid/sec/clipboard/ClipboardExManager;->mFormatid:I

    .line 921
    iput-object p2, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardEventListener:Landroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;

    goto :goto_0
.end method

.method public setPasteFrozen(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V
    .locals 3
    .param p1, "formatid"    # I
    .param p2, "clPasteEvent"    # Landroid/sec/clipboard/IClipboardDataPasteEvent;

    .prologue
    .line 280
    const-string/jumbo v0, "setPasteFrozen"

    invoke-direct {p0, v0}, Landroid/sec/clipboard/ClipboardExManager;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 293
    :cond_0
    :goto_0
    return-void

    .line 284
    :cond_1
    iget v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mFormatid:I

    if-eq v0, p1, :cond_2

    .line 285
    invoke-virtual {p0, p1, p2}, Landroid/sec/clipboard/ClipboardExManager;->updateData(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    .line 288
    :cond_2
    iput p1, p0, Landroid/sec/clipboard/ClipboardExManager;->mFormatid:I

    .line 289
    iput-object p2, p0, Landroid/sec/clipboard/ClipboardExManager;->mPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    .line 290
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 291
    const-string v0, "ClipboardExManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPasteFrozen - Format:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/sec/clipboard/ClipboardExManager;->mPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setThawPaste()V
    .locals 2

    .prologue
    .line 301
    const-string/jumbo v0, "setThawPaste"

    invoke-direct {p0, v0}, Landroid/sec/clipboard/ClipboardExManager;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 309
    :cond_0
    :goto_0
    return-void

    .line 304
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mFormatid:I

    .line 305
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    .line 306
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 307
    const-string v0, "ClipboardExManager"

    const-string/jumbo v1, "setThawPaste"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public showClipboard(ILandroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;)Z
    .locals 1
    .param p1, "formatid"    # I
    .param p2, "listener"    # Landroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;

    .prologue
    .line 1093
    invoke-virtual {p0, p1, p2}, Landroid/sec/clipboard/ClipboardExManager;->showDialog(ILandroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;)Z

    move-result v0

    return v0
.end method

.method public showDialog()V
    .locals 3

    .prologue
    .line 1152
    const-string/jumbo v1, "showDialog"

    invoke-direct {p0, v1}, Landroid/sec/clipboard/ClipboardExManager;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1167
    :cond_0
    :goto_0
    return-void

    .line 1155
    :cond_1
    invoke-direct {p0}, Landroid/sec/clipboard/ClipboardExManager;->startClipboardUIServiceService()V

    .line 1157
    :try_start_0
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    if-nez v1, :cond_2

    .line 1158
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1159
    const-string v1, "ClipboardExManager"

    const-string/jumbo v2, "showDialog - Fail~ Service is null."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1164
    :catch_0
    move-exception v0

    .line 1165
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1163
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    invoke-interface {v1}, Landroid/sec/clipboard/IClipboardService;->showUIDataDialog()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public showDialog(ILandroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;)Z
    .locals 6
    .param p1, "formatid"    # I
    .param p2, "listener"    # Landroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;

    .prologue
    const/4 v2, 0x0

    .line 1104
    const-string/jumbo v3, "showDialog"

    invoke-direct {p0, v3}, Landroid/sec/clipboard/ClipboardExManager;->isEnabled(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v2

    .line 1135
    :goto_0
    return v0

    .line 1108
    :cond_0
    const/4 v0, 0x1

    .line 1109
    .local v0, "Result":Z
    invoke-direct {p0}, Landroid/sec/clipboard/ClipboardExManager;->startClipboardUIServiceService()V

    .line 1110
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 1111
    const-string v3, "ClipboardExManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "showDialog : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v3

    if-nez v3, :cond_3

    .line 1116
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 1117
    const-string v3, "ClipboardExManager"

    const-string/jumbo v4, "showDialog - Fail~ Service is null."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move v0, v2

    .line 1119
    goto :goto_0

    .line 1123
    :cond_3
    invoke-virtual {p0}, Landroid/sec/clipboard/ClipboardExManager;->isFiltered()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1124
    iput-object p2, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardEventListener:Landroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;

    .line 1125
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    iget-object v3, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardEventImpl:Landroid/sec/clipboard/ClipboardExManager$IClipboardDataPasteEventImpl;

    invoke-interface {v2, p1, v3}, Landroid/sec/clipboard/IClipboardService;->ShowUIClipboardData(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    .line 1126
    const-string v2, "ClipboardExManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "showDialog - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1131
    :catch_0
    move-exception v1

    .line 1132
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1133
    const/4 v0, 0x0

    goto :goto_0

    .line 1128
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    :try_start_1
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    iget v3, p0, Landroid/sec/clipboard/ClipboardExManager;->mFormatid:I

    iget-object v4, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardEventImpl:Landroid/sec/clipboard/ClipboardExManager$IClipboardDataPasteEventImpl;

    invoke-interface {v2, v3, v4}, Landroid/sec/clipboard/IClipboardService;->ShowUIClipboardData(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    .line 1129
    const-string v2, "ClipboardExManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "showDialog - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/sec/clipboard/ClipboardExManager;->mFormatid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public showUIDataDialog()V
    .locals 0

    .prologue
    .line 1145
    invoke-virtual {p0}, Landroid/sec/clipboard/ClipboardExManager;->showDialog()V

    .line 1146
    return-void
.end method

.method public showUIFloatingIcon()V
    .locals 2

    .prologue
    .line 813
    const-string v0, "ClipboardExManager"

    const-string/jumbo v1, "showUIFloatingIcon"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    return-void
.end method

.method public unRegistClipboardWorkingFormUiInterface()V
    .locals 3

    .prologue
    .line 250
    const-string/jumbo v1, "unRegistClipboardWorkingFormUiInterface"

    invoke-direct {p0, v1}, Landroid/sec/clipboard/ClipboardExManager;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 254
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    if-nez v1, :cond_3

    .line 255
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 256
    const-string v1, "ClipboardExManager"

    const-string/jumbo v2, "unRegistClipboardWorkingFormUiInterface - Fail~ Service is null."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 266
    :catch_0
    move-exception v0

    .line 267
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 268
    const-string v1, "ClipboardExManager"

    const-string/jumbo v2, "unRegistClipboardWorkingFormUiInterface(RemoteException): "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 261
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_1
    iget-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mRegInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    if-eqz v1, :cond_4

    .line 262
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    iget-object v2, p0, Landroid/sec/clipboard/ClipboardExManager;->mRegInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    invoke-interface {v1, v2}, Landroid/sec/clipboard/IClipboardService;->unRegistClipboardWorkingFormUiInterfaces(Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;)V

    goto :goto_0

    .line 264
    :cond_4
    const-string v1, "ClipboardExManager"

    const-string/jumbo v2, "reg interface is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public updateClipboard(ILandroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;)V
    .locals 4
    .param p1, "formatid"    # I
    .param p2, "listener"    # Landroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;

    .prologue
    .line 1052
    const-string/jumbo v1, "updateClipboard"

    invoke-direct {p0, v1}, Landroid/sec/clipboard/ClipboardExManager;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1085
    :cond_0
    :goto_0
    return-void

    .line 1056
    :cond_1
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 1057
    const-string v1, "ClipboardExManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateClipboard "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardEventListener:Landroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    :cond_2
    invoke-virtual {p0}, Landroid/sec/clipboard/ClipboardExManager;->hasAppClipboardListener()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1060
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1061
    const-string v1, "ClipboardExManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateData return : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardEventListener:Landroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1067
    :cond_3
    :try_start_0
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    if-nez v1, :cond_4

    .line 1068
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1069
    const-string v1, "ClipboardExManager"

    const-string/jumbo v2, "updateData - Fail~ Service is null."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1082
    :catch_0
    move-exception v0

    .line 1083
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1074
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    :try_start_1
    invoke-virtual {p0}, Landroid/sec/clipboard/ClipboardExManager;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1075
    iput-object p2, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardEventListener:Landroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;

    .line 1076
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    iget-object v2, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardEventImpl:Landroid/sec/clipboard/ClipboardExManager$IClipboardDataPasteEventImpl;

    invoke-interface {v1, p1, v2}, Landroid/sec/clipboard/IClipboardService;->UpdateUIClipboardData(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    .line 1077
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1078
    const-string v1, "ClipboardExManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateClipboard - listener:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardEventListener:Landroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public updateData(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V
    .locals 4
    .param p1, "formatid"    # I
    .param p2, "clPasteEvent"    # Landroid/sec/clipboard/IClipboardDataPasteEvent;

    .prologue
    .line 426
    const-string/jumbo v1, "updateData"

    invoke-direct {p0, v1}, Landroid/sec/clipboard/ClipboardExManager;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 456
    :cond_0
    :goto_0
    return-void

    .line 430
    :cond_1
    iget-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    if-eqz v1, :cond_2

    .line 431
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 432
    const-string v1, "ClipboardExManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateData return : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 437
    :cond_2
    :try_start_0
    const-string v1, "ClipboardExManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateData - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    if-nez v1, :cond_3

    .line 439
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 440
    const-string v1, "ClipboardExManager"

    const-string/jumbo v2, "updateData - Fail~ Service is null."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 452
    :catch_0
    move-exception v0

    .line 453
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 445
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Landroid/sec/clipboard/ClipboardExManager;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 446
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/sec/clipboard/IClipboardService;->UpdateUIClipboardData(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    .line 447
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 448
    const-string v1, "ClipboardExManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateData - clPasteEvent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public updateFilter(ILandroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;)V
    .locals 4
    .param p1, "formatid"    # I
    .param p2, "listener"    # Landroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;

    .prologue
    .line 931
    const-string/jumbo v1, "updateFilter"

    invoke-direct {p0, v1}, Landroid/sec/clipboard/ClipboardExManager;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 956
    :cond_0
    :goto_0
    return-void

    .line 935
    :cond_1
    invoke-virtual {p0}, Landroid/sec/clipboard/ClipboardExManager;->isFiltered()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 936
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 937
    const-string v1, "ClipboardExManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateFilter return : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardEventListener:Landroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 943
    :cond_2
    :try_start_0
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    if-nez v1, :cond_3

    .line 944
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 945
    const-string v1, "ClipboardExManager"

    const-string/jumbo v2, "updateFilter - Fail~ Service is null."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 953
    :catch_0
    move-exception v0

    .line 954
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 950
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_1
    iput-object p2, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardEventListener:Landroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;

    .line 951
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    iget-object v2, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardEventImpl:Landroid/sec/clipboard/ClipboardExManager$IClipboardDataPasteEventImpl;

    invoke-interface {v1, p1, v2}, Landroid/sec/clipboard/IClipboardService;->UpdateUIClipboardData(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    .line 952
    const-string v1, "ClipboardExManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateFilter - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardEventListener:Landroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
