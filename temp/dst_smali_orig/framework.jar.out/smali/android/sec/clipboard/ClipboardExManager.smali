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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v3, p0, Landroid/sec/clipboard/ClipboardExManager;->_UNFORMAT:I

    iput v2, p0, Landroid/sec/clipboard/ClipboardExManager;->SUCCESS_SET_DATA:I

    const/4 v0, 0x1

    iput v0, p0, Landroid/sec/clipboard/ClipboardExManager;->FAIL_SET_DATA:I

    const/4 v0, 0x2

    iput v0, p0, Landroid/sec/clipboard/ClipboardExManager;->SUCCESS_AND_SAVE_BITMAP:I

    const/4 v0, 0x3

    iput v0, p0, Landroid/sec/clipboard/ClipboardExManager;->PROTECTED_DATA_MAX:I

    iput-boolean v2, p0, Landroid/sec/clipboard/ClipboardExManager;->mIsFiltered:Z

    iput v3, p0, Landroid/sec/clipboard/ClipboardExManager;->mFormatid:I

    iput-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;

    iput-boolean v2, p0, Landroid/sec/clipboard/ClipboardExManager;->mIsMaximumSize:Z

    iput-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mSetDataHandler:Landroid/os/Handler;

    iput-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mPersonaManager:Landroid/os/PersonaManager;

    iput-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardConverter:Landroid/sec/clipboard/ClipboardConverter;

    iput-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    iput-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardEventListener:Landroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;

    new-instance v0, Landroid/sec/clipboard/ClipboardExManager$IClipboardDataPasteEventImpl;

    invoke-direct {v0, p0, v1}, Landroid/sec/clipboard/ClipboardExManager$IClipboardDataPasteEventImpl;-><init>(Landroid/sec/clipboard/ClipboardExManager;Landroid/sec/clipboard/ClipboardExManager$1;)V

    iput-object v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardEventImpl:Landroid/sec/clipboard/ClipboardExManager$IClipboardDataPasteEventImpl;

    iput-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mRegInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v3, p0, Landroid/sec/clipboard/ClipboardExManager;->_UNFORMAT:I

    iput v2, p0, Landroid/sec/clipboard/ClipboardExManager;->SUCCESS_SET_DATA:I

    const/4 v0, 0x1

    iput v0, p0, Landroid/sec/clipboard/ClipboardExManager;->FAIL_SET_DATA:I

    const/4 v0, 0x2

    iput v0, p0, Landroid/sec/clipboard/ClipboardExManager;->SUCCESS_AND_SAVE_BITMAP:I

    const/4 v0, 0x3

    iput v0, p0, Landroid/sec/clipboard/ClipboardExManager;->PROTECTED_DATA_MAX:I

    iput-boolean v2, p0, Landroid/sec/clipboard/ClipboardExManager;->mIsFiltered:Z

    iput v3, p0, Landroid/sec/clipboard/ClipboardExManager;->mFormatid:I

    iput-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;

    iput-boolean v2, p0, Landroid/sec/clipboard/ClipboardExManager;->mIsMaximumSize:Z

    iput-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mSetDataHandler:Landroid/os/Handler;

    iput-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mPersonaManager:Landroid/os/PersonaManager;

    iput-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardConverter:Landroid/sec/clipboard/ClipboardConverter;

    iput-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    iput-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardEventListener:Landroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;

    new-instance v0, Landroid/sec/clipboard/ClipboardExManager$IClipboardDataPasteEventImpl;

    invoke-direct {v0, p0, v1}, Landroid/sec/clipboard/ClipboardExManager$IClipboardDataPasteEventImpl;-><init>(Landroid/sec/clipboard/ClipboardExManager;Landroid/sec/clipboard/ClipboardExManager$1;)V

    iput-object v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardEventImpl:Landroid/sec/clipboard/ClipboardExManager$IClipboardDataPasteEventImpl;

    iput-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mRegInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    iput-object p1, p0, Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;

    iget-object v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;

    const-string v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    iput-object v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mPersonaManager:Landroid/os/PersonaManager;

    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardConstants;->HAS_KNOX_FEATURE:Z

    if-nez v0, :cond_0

    const-string v0, "ClipboardExManager"

    const-string v1, "no knox"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method static synthetic access$100(Landroid/sec/clipboard/ClipboardExManager;)Landroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;
    .locals 1
    .param p0, "x0"    # Landroid/sec/clipboard/ClipboardExManager;

    .prologue
    iget-object v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardEventListener:Landroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;

    return-object v0
.end method

.method static synthetic access$200(Landroid/sec/clipboard/ClipboardExManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/sec/clipboard/ClipboardExManager;

    .prologue
    iget-object v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Landroid/sec/clipboard/ClipboardExManager;)Z
    .locals 1
    .param p0, "x0"    # Landroid/sec/clipboard/ClipboardExManager;

    .prologue
    iget-boolean v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mIsMaximumSize:Z

    return v0
.end method

.method static synthetic access$302(Landroid/sec/clipboard/ClipboardExManager;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/sec/clipboard/ClipboardExManager;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/sec/clipboard/ClipboardExManager;->mIsMaximumSize:Z

    return p1
.end method

.method static synthetic access$400(Landroid/sec/clipboard/ClipboardExManager;ZI)I
    .locals 1
    .param p0, "x0"    # Landroid/sec/clipboard/ClipboardExManager;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .prologue
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

    const/4 v2, 0x0

    .local v2, "result":Z
    :try_start_0
    sget-boolean v5, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "ClipboardExManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "result : "

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

    :cond_0
    invoke-direct {p0, p1}, Landroid/sec/clipboard/ClipboardExManager;->makeFileDescriptor(Landroid/sec/clipboard/data/ClipboardData;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v3, "ClipboardExManager"

    const-string v5, "failed making file descriptor!"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    invoke-direct {p0, p2, v3}, Landroid/sec/clipboard/ClipboardExManager;->sendResult(ZZ)V

    :goto_0
    return v4

    :cond_1
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->getFormat()I

    move-result v1

    .local v1, "formatId":I
    if-eqz p4, :cond_4

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

    :goto_1
    invoke-direct {p0, p2, v2}, Landroid/sec/clipboard/ClipboardExManager;->sendResult(ZZ)V

    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/sec/clipboard/data/ClipboardData;->setParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;)V

    .end local v1    # "formatId":I
    :cond_2
    :goto_2
    move v4, v2

    goto :goto_0

    .restart local v1    # "formatId":I
    :cond_3
    move v2, v4

    goto :goto_1

    :cond_4
    if-eqz p3, :cond_6

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

    :cond_6
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v3

    invoke-interface {v3, v1, p1}, Landroid/sec/clipboard/IClipboardService;->SetClipboardDataOriginalToEx(ILandroid/sec/clipboard/data/ClipboardData;)Z

    move-result v2

    goto :goto_1

    .end local v1    # "formatId":I
    :cond_7
    const-string v3, "ClipboardExManager"

    const-string v4, "addData - clipdata is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

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

    const-string v1, "addData"

    invoke-direct {p0, v1}, Landroid/sec/clipboard/ClipboardExManager;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iput-object p1, p0, Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    if-eqz v1, :cond_2

    if-nez p2, :cond_3

    :cond_2
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v1, :cond_0

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

    :cond_3
    invoke-virtual {p2}, Landroid/sec/clipboard/data/ClipboardData;->getFormat()I

    move-result v1

    if-ne v1, v4, :cond_6

    invoke-virtual {p2, v4}, Landroid/sec/clipboard/data/ClipboardData;->GetAlternateFormat(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v6

    check-cast v6, Landroid/sec/clipboard/data/list/ClipboardDataHtml;

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

    iput-boolean v2, p0, Landroid/sec/clipboard/ClipboardExManager;->mIsMaximumSize:Z

    .end local v6    # "htmlData":Landroid/sec/clipboard/data/list/ClipboardDataHtml;
    :goto_1
    iget-object v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mSetDataHandler:Landroid/os/Handler;

    if-nez v0, :cond_4

    new-instance v0, Landroid/sec/clipboard/ClipboardExManager$1;

    invoke-direct {v0, p0}, Landroid/sec/clipboard/ClipboardExManager$1;-><init>(Landroid/sec/clipboard/ClipboardExManager;)V

    iput-object v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mSetDataHandler:Landroid/os/Handler;

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

    .restart local v6    # "htmlData":Landroid/sec/clipboard/data/list/ClipboardDataHtml;
    :cond_5
    iput-boolean v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mIsMaximumSize:Z

    goto :goto_1

    .end local v6    # "htmlData":Landroid/sec/clipboard/data/list/ClipboardDataHtml;
    :cond_6
    invoke-virtual {p2}, Landroid/sec/clipboard/data/ClipboardData;->getFormat()I

    move-result v1

    if-ne v1, v3, :cond_8

    invoke-virtual {p2, v3}, Landroid/sec/clipboard/data/ClipboardData;->GetAlternateFormat(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v7

    check-cast v7, Landroid/sec/clipboard/data/list/ClipboardDataText;

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

    iput-boolean v2, p0, Landroid/sec/clipboard/ClipboardExManager;->mIsMaximumSize:Z

    goto :goto_1

    :cond_7
    iput-boolean v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mIsMaximumSize:Z

    goto :goto_1

    .end local v7    # "textData":Landroid/sec/clipboard/data/list/ClipboardDataText;
    :cond_8
    iput-boolean v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mIsMaximumSize:Z

    goto :goto_1
.end method

.method private static getService()Landroid/sec/clipboard/IClipboardService;
    .locals 3

    .prologue
    sget-object v1, Landroid/sec/clipboard/ClipboardExManager;->sService:Landroid/sec/clipboard/IClipboardService;

    if-eqz v1, :cond_0

    sget-object v1, Landroid/sec/clipboard/ClipboardExManager;->sService:Landroid/sec/clipboard/IClipboardService;

    .local v0, "b":Landroid/os/IBinder;
    :goto_0
    return-object v1

    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    const-string v1, "clipboardEx"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .restart local v0    # "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/sec/clipboard/IClipboardService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    sput-object v1, Landroid/sec/clipboard/ClipboardExManager;->sService:Landroid/sec/clipboard/IClipboardService;

    sget-object v1, Landroid/sec/clipboard/ClipboardExManager;->sService:Landroid/sec/clipboard/IClipboardService;

    if-nez v1, :cond_1

    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "ClipboardExManager"

    const-string v2, "Had failed to obtaining clipboardEx service."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-object v1, Landroid/sec/clipboard/ClipboardExManager;->sService:Landroid/sec/clipboard/IClipboardService;

    goto :goto_0
.end method

.method private getUserId()I
    .locals 4

    .prologue
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .local v1, "userId":I
    invoke-static {v1}, Landroid/os/PersonaManager;->isBBCContainer(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    const-string v2, "ClipboardExManager"

    const-string v3, "getUserId is BBC"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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

    iget-object v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    move v0, v7

    :goto_0
    return v0

    :cond_0
    const-string v0, "content://com.sec.knox.provider/RestrictionPolicy1"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, "uri":Landroid/net/Uri;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    .local v4, "selectionArgs":[Ljava/lang/String;
    iget-object v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "isClipboardAllowedAsUser"

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .local v6, "cr":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

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

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v8

    goto :goto_0

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v9

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_2
    move v0, v7

    goto :goto_0
.end method

.method private isEnabled(Ljava/lang/String;)Z
    .locals 3
    .param p1, "func"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0}, Landroid/sec/clipboard/ClipboardExManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ClipboardExManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not enabled! from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

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

    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v3

    .local v3, "fh":Landroid/sec/clipboard/util/FileHelper;
    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->getFormat()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    :cond_0
    :goto_0
    const/4 v7, 0x1

    :goto_1
    return v7

    :pswitch_0
    move-object v6, p1

    check-cast v6, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    .local v6, "target":Landroid/sec/clipboard/data/list/ClipboardDataBitmap;
    invoke-virtual {v6}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->getBitmapPath()Ljava/lang/String;

    move-result-object v4

    .local v4, "imgPath":Ljava/lang/String;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_2

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v2, "f":Ljava/io/File;
    invoke-virtual {v3, v2}, Landroid/sec/clipboard/util/FileHelper;->checkFile(Ljava/io/File;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v5, 0x0

    .local v5, "pfd":Landroid/os/ParcelFileDescriptor;
    const/high16 v8, 0x38000000

    :try_start_0
    invoke-static {v2, v8}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->setParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .end local v2    # "f":Ljava/io/File;
    .end local v5    # "pfd":Landroid/os/ParcelFileDescriptor;
    :goto_2
    invoke-virtual {v6}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->HasExtraData()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v6}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->getExtraDataPath()Ljava/lang/String;

    move-result-object v1

    .local v1, "extraPath":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v2    # "f":Ljava/io/File;
    invoke-virtual {v3, v2}, Landroid/sec/clipboard/util/FileHelper;->checkFile(Ljava/io/File;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v5, 0x0

    .restart local v5    # "pfd":Landroid/os/ParcelFileDescriptor;
    const/high16 v8, 0x38000000

    :try_start_1
    invoke-static {v2, v8}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->setExtraParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "extraPath":Ljava/lang/String;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

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

    .end local v2    # "f":Ljava/io/File;
    :cond_2
    const-string v8, "ClipboardExManager"

    const-string v9, "no bitmap file"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

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

    .end local v1    # "extraPath":Ljava/lang/String;
    .end local v2    # "f":Ljava/io/File;
    :cond_4
    const-string v7, "ClipboardExManager"

    const-string v8, "no extra bitmap file"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v4    # "imgPath":Ljava/lang/String;
    .end local v6    # "target":Landroid/sec/clipboard/data/list/ClipboardDataBitmap;
    :pswitch_1
    move-object v6, p1

    check-cast v6, Landroid/sec/clipboard/data/list/ClipboardDataHtml;

    .local v6, "target":Landroid/sec/clipboard/data/list/ClipboardDataHtml;
    invoke-virtual {v6}, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->getFirstImgPath()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "imgPath":Ljava/lang/String;
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_6

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v2    # "f":Ljava/io/File;
    invoke-virtual {v3, v2}, Landroid/sec/clipboard/util/FileHelper;->checkFile(Ljava/io/File;)Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v5, 0x0

    .restart local v5    # "pfd":Landroid/os/ParcelFileDescriptor;
    const/high16 v8, 0x38000000

    :try_start_2
    invoke-static {v2, v8}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->setParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

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

    .end local v2    # "f":Ljava/io/File;
    :cond_6
    const-string v7, "ClipboardExManager"

    const-string v8, "no first image file"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v4    # "imgPath":Ljava/lang/String;
    .end local v6    # "target":Landroid/sec/clipboard/data/list/ClipboardDataHtml;
    :pswitch_2
    move-object v6, p1

    check-cast v6, Landroid/sec/clipboard/data/list/ClipboardDataUri;

    .local v6, "target":Landroid/sec/clipboard/data/list/ClipboardDataUri;
    invoke-virtual {v6}, Landroid/sec/clipboard/data/list/ClipboardDataUri;->getPreviewImgPath()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "imgPath":Ljava/lang/String;
    if-eqz v4, :cond_8

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_8

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v2    # "f":Ljava/io/File;
    invoke-virtual {v3, v2}, Landroid/sec/clipboard/util/FileHelper;->checkFile(Ljava/io/File;)Z

    move-result v8

    if-eqz v8, :cond_7

    const/4 v5, 0x0

    .restart local v5    # "pfd":Landroid/os/ParcelFileDescriptor;
    const/high16 v8, 0x38000000

    :try_start_3
    invoke-static {v2, v8}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/sec/clipboard/data/list/ClipboardDataUri;->setParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

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

    .end local v2    # "f":Ljava/io/File;
    :cond_8
    const-string v7, "ClipboardExManager"

    const-string v8, "no preview image file"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

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
    if-nez p1, :cond_0

    iget-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mSetDataHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .local v0, "msg":Landroid/os/Message;
    if-eqz p2, :cond_1

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    :goto_0
    iget-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mSetDataHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void

    .restart local v0    # "msg":Landroid/os/Message;
    :cond_1
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    goto :goto_0
.end method

.method private startClipboardUIServiceService()V
    .locals 5

    .prologue
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.samsung.android.clipboarduiservice"

    const-string v4, "com.samsung.android.clipboarduiservice.ClipboardUIServiceStarter"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v2, p0, Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private startKeepUIServiceService()V
    .locals 2

    .prologue
    const-string v0, "ClipboardExManager"

    const-string v1, "startKeepUIServiceService"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public AddClipboardFormatListener(Landroid/sec/clipboard/IClipboardFormatListener;)Z
    .locals 4
    .param p1, "listener"    # Landroid/sec/clipboard/IClipboardFormatListener;

    .prologue
    const/4 v0, 0x0

    const-string v2, "AddClipboardFormatListener"

    invoke-direct {p0, v2}, Landroid/sec/clipboard/ClipboardExManager;->isEnabled(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    if-nez v2, :cond_2

    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "ClipboardExManager"

    const-string v3, "AddClipboardFormatListener - Fail~ Service is null."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    .local v0, "Result":Z
    goto :goto_0

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
    const-string v2, "RegistClipboardWorkingFormUiInterface"

    invoke-direct {p0, v2}, Landroid/sec/clipboard/ClipboardExManager;->isEnabled(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    .local v0, "Result":Z
    iget-object v2, p0, Landroid/sec/clipboard/ClipboardExManager;->mRegInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/sec/clipboard/ClipboardExManager;->mRegInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    if-eq v2, p1, :cond_3

    :cond_2
    iput-object p1, p0, Landroid/sec/clipboard/ClipboardExManager;->mRegInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    :cond_3
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    if-nez v2, :cond_4

    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "ClipboardExManager"

    const-string v3, "RegistClipboardWorkingFormUiInterface - Fail~ Service is null."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    :try_start_0
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    iget-object v3, p0, Landroid/sec/clipboard/ClipboardExManager;->mRegInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    invoke-interface {v2, v3}, Landroid/sec/clipboard/IClipboardService;->RegistClipboardWorkingFormUiInterfaces(Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;)V

    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v2, :cond_5

    const-string v2, "ClipboardExManager"

    const-string v3, "Regist ClipboardWorkingFormUiInterface - Success."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public RegistScrapWorkingFormUiInterface(Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;)Z
    .locals 1
    .param p1, "iRegInterface"    # Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public RemoveClipboardFormatListener(Landroid/sec/clipboard/IClipboardFormatListener;)Z
    .locals 4
    .param p1, "listener"    # Landroid/sec/clipboard/IClipboardFormatListener;

    .prologue
    const/4 v0, 0x0

    const-string v2, "RemoveClipboardFormatListener"

    invoke-direct {p0, v2}, Landroid/sec/clipboard/ClipboardExManager;->isEnabled(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    if-nez v2, :cond_2

    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "ClipboardExManager"

    const-string v3, "RemoveClipboardFormatListener - Fail~ Service is null."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    .local v0, "Result":Z
    goto :goto_0

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
    const-string v1, "callPasteApplication"

    invoke-direct {p0, v1}, Landroid/sec/clipboard/ClipboardExManager;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    if-eqz v1, :cond_3

    :try_start_0
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    if-nez v1, :cond_2

    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "ClipboardExManager"

    const-string v2, "callPasteApplication - Fail~ Service is null."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/sec/clipboard/IClipboardService;->callPasteMenuFromApp(I)V

    iget-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    invoke-interface {v1, p1}, Landroid/sec/clipboard/IClipboardDataPasteEvent;->onClipboardDataPaste(Landroid/sec/clipboard/data/ClipboardData;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_3
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "ClipboardExManager"

    const-string v2, "Clipboard Service callPasteApplication mPasteEvent == null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public callPasteMenuFromApp(I)V
    .locals 3
    .param p1, "enabled"    # I

    .prologue
    const-string v1, "callPasteMenuFromApp"

    invoke-direct {p0, v1}, Landroid/sec/clipboard/ClipboardExManager;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    if-nez v1, :cond_2

    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "ClipboardExManager"

    const-string v2, "callPasteMenuFromApp - Fail~ Service is null."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

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
    const-string v0, "setFilter"

    invoke-direct {p0, v0}, Landroid/sec/clipboard/ClipboardExManager;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mIsFiltered:Z

    const/4 v0, -0x1

    iput v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mFormatid:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardEventListener:Landroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;

    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ClipboardExManager"

    const-string v1, "clearClipboardFormat"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public clearFilter()V
    .locals 2

    .prologue
    const-string v0, "setFilter"

    invoke-direct {p0, v0}, Landroid/sec/clipboard/ClipboardExManager;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mIsFiltered:Z

    const/4 v0, -0x1

    iput v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mFormatid:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardEventListener:Landroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;

    const-string v0, "ClipboardExManager"

    const-string v1, "clearClipboardFormat"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public dismissDialog()V
    .locals 3

    .prologue
    :try_start_0
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    if-nez v1, :cond_1

    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "ClipboardExManager"

    const-string v2, "dismissDialog - Fail~ Service is null."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    invoke-interface {v1}, Landroid/sec/clipboard/IClipboardService;->dismissUIDataDialog()V

    const-string v1, "ClipboardExManager"

    const-string v2, "dismissDialog"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public dismissUIDataDialog()V
    .locals 0

    .prologue
    invoke-virtual {p0}, Landroid/sec/clipboard/ClipboardExManager;->dismissDialog()V

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

    const-string v4, "getClipedStrings"

    invoke-direct {p0, v4}, Landroid/sec/clipboard/ClipboardExManager;->isEnabled(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object v1, v3

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .local v1, "clipboardData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v4

    if-nez v4, :cond_2

    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v4, :cond_1

    const-string v4, "ClipboardExManager"

    const-string v5, "getClipedStrings - Fail~ Service is null."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object v1, v3

    goto :goto_0

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

    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getContainerID()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getData(I)Landroid/sec/clipboard/data/ClipboardData;
    .locals 6
    .param p1, "formatid"    # I

    .prologue
    const-string v3, "getData"

    invoke-direct {p0, v3}, Landroid/sec/clipboard/ClipboardExManager;->isEnabled(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    .local v0, "data":Landroid/sec/clipboard/data/ClipboardData;
    :try_start_0
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v3

    if-nez v3, :cond_2

    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "ClipboardExManager"

    const-string v4, "getData - Fail~ Service is null."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    iget v3, p0, Landroid/sec/clipboard/ClipboardExManager;->mFormatid:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    iget v2, p0, Landroid/sec/clipboard/ClipboardExManager;->mFormatid:I

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

    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/sec/clipboard/IClipboardService;->GetClipboardData(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v3, p0, Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_0

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

    goto :goto_1
.end method

.method public getData(Landroid/content/Context;I)Landroid/sec/clipboard/data/ClipboardData;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "formatid"    # I

    .prologue
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

    const-string v3, "getData"

    invoke-direct {p0, v3}, Landroid/sec/clipboard/ClipboardExManager;->isEnabled(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    .local v0, "Result":Z
    invoke-direct {p0}, Landroid/sec/clipboard/ClipboardExManager;->startClipboardUIServiceService()V

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

    :try_start_0
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v3

    if-nez v3, :cond_2

    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "ClipboardExManager"

    const-string v4, "getData - Fail~ Service is null."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Landroid/sec/clipboard/ClipboardExManager;->mPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    if-nez v2, :cond_3

    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    invoke-interface {v2, p2, p3}, Landroid/sec/clipboard/IClipboardService;->ShowUIClipboardData(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

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

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_1
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    iget v3, p0, Landroid/sec/clipboard/ClipboardExManager;->mFormatid:I

    iget-object v4, p0, Landroid/sec/clipboard/ClipboardExManager;->mPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    invoke-interface {v2, v3, v4}, Landroid/sec/clipboard/IClipboardService;->ShowUIClipboardData(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

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
    const-string v2, "getDataListSize"

    invoke-direct {p0, v2}, Landroid/sec/clipboard/ClipboardExManager;->isEnabled(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, -0x1

    .local v1, "size":I
    :try_start_0
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    if-nez v2, :cond_2

    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "ClipboardExManager"

    const-string v3, "getDataListSize - Fail~ Service is null."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

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

    const-string v1, "getFrozenState"

    invoke-direct {p0, v1}, Landroid/sec/clipboard/ClipboardExManager;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getPersonaId()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .local v0, "userId":I
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->HAS_KNOX_FEATURE:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mPersonaManager:Landroid/os/PersonaManager;

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mContext:Landroid/content/Context;

    const-string v2, "persona"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PersonaManager;

    iput-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mPersonaManager:Landroid/os/PersonaManager;

    :cond_0
    iget-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mPersonaManager:Landroid/os/PersonaManager;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mPersonaManager:Landroid/os/PersonaManager;

    invoke-virtual {v1}, Landroid/os/PersonaManager;->getFocusedUser()I

    move-result v0

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Landroid/sec/clipboard/ClipboardExManager;->getUserId()I

    move-result v0

    goto :goto_0
.end method

.method public getPreviewIconXpos()F
    .locals 2

    .prologue
    const-string v0, "ClipboardExManager"

    const-string v1, "getPreviewIconXpos"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public getPreviewIconYpos()F
    .locals 2

    .prologue
    const-string v0, "ClipboardExManager"

    const-string v1, "getPreviewIconYpos"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public getScrapDataSize()I
    .locals 2

    .prologue
    const-string v0, "ClipboardExManager"

    const-string v1, "getScrapDataSize!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public hasAppClipboardListener()Z
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/sec/clipboard/ClipboardExManager;->isFiltered()Z

    move-result v0

    return v0
.end method

.method public hasData(I)Z
    .locals 6
    .param p1, "formatid"    # I

    .prologue
    const-string v3, "hasData"

    invoke-direct {p0, v3}, Landroid/sec/clipboard/ClipboardExManager;->isEnabled(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    .local v0, "Result":Z
    :try_start_0
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v3

    if-nez v3, :cond_2

    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "ClipboardExManager"

    const-string v4, "hasData - Fail~ Service is null."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    iget v3, p0, Landroid/sec/clipboard/ClipboardExManager;->mFormatid:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    iget v2, p0, Landroid/sec/clipboard/ClipboardExManager;->mFormatid:I

    .local v2, "myFormat":I
    :goto_1
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/sec/clipboard/IClipboardService;->GetClipboardData(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v3

    if-eqz v3, :cond_0

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

    const/4 v0, 0x1

    goto :goto_0

    .end local v2    # "myFormat":I
    :cond_3
    move v2, p1

    goto :goto_1
.end method

.method public hasData(Landroid/content/Context;I)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "formatid"    # I

    .prologue
    invoke-virtual {p0, p2}, Landroid/sec/clipboard/ClipboardExManager;->hasData(I)Z

    move-result v0

    return v0
.end method

.method public hasDataOf(I)Z
    .locals 1
    .param p1, "formatid"    # I

    .prologue
    invoke-virtual {p0, p1}, Landroid/sec/clipboard/ClipboardExManager;->hasData(I)Z

    move-result v0

    return v0
.end method

.method public hideUIFloatingIcon()V
    .locals 2

    .prologue
    const-string v0, "ClipboardExManager"

    const-string v1, "hideUIFloatingIcon"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public isEnabled()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .local v2, "isEnabled":Z
    :try_start_0
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v3

    if-eqz v3, :cond_0

    sget-object v3, Landroid/sec/clipboard/ClipboardExManager;->sService:Landroid/sec/clipboard/IClipboardService;

    invoke-interface {v3}, Landroid/sec/clipboard/IClipboardService;->isEnabled()Z

    move-result v2

    :goto_0
    return v2

    :cond_0
    const-string v3, "ClipboardExManager"

    const-string v4, "sService is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public isFiltered()Z
    .locals 1

    .prologue
    const-string v0, "isFiltered"

    invoke-direct {p0, v0}, Landroid/sec/clipboard/ClipboardExManager;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

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

    const-string v2, "isShowing"

    invoke-direct {p0, v2}, Landroid/sec/clipboard/ClipboardExManager;->isEnabled(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    :try_start_0
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    if-nez v2, :cond_2

    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "ClipboardExManager"

    const-string v3, "isShowing - Fail~ Service is null."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

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

    const-string v2, "iscalledPasteMenuFromApp"

    invoke-direct {p0, v2}, Landroid/sec/clipboard/ClipboardExManager;->isEnabled(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    :try_start_0
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    if-nez v2, :cond_2

    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "ClipboardExManager"

    const-string v3, "iscalledPasteMenuFromApp - Fail~ Service is null."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

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
    const-string v1, "requestPaste"

    invoke-direct {p0, v1}, Landroid/sec/clipboard/ClipboardExManager;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "ClipboardExManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestPaste : "

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

    invoke-virtual {p0}, Landroid/sec/clipboard/ClipboardExManager;->isFiltered()Z

    move-result v1

    if-eqz v1, :cond_5

    :try_start_0
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    if-nez v1, :cond_3

    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "ClipboardExManager"

    const-string v2, "requestPaste - Fail~ Service is null."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v1, -0x1

    goto :goto_1

    :cond_3
    :try_start_1
    iget v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mFormatid:I

    invoke-virtual {p1, v1}, Landroid/sec/clipboard/data/ClipboardData;->IsAlternateformatAvailable(I)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardEventListener:Landroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;

    invoke-interface {v1, p1}, Landroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;->onPaste(Landroid/sec/clipboard/data/ClipboardData;)V

    goto :goto_0

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

    :cond_5
    const-string v1, "ClipboardExManager"

    const-string v2, "no app clipboard listener!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendCropRect(Landroid/graphics/Rect;Z)V
    .locals 2
    .param p1, "cropRect"    # Landroid/graphics/Rect;
    .param p2, "showAni"    # Z

    .prologue
    const-string v0, "ClipboardExManager"

    const-string v1, "sendCropRect!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setClipboardFormat(ILandroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;)V
    .locals 3
    .param p1, "formatid"    # I
    .param p2, "listener"    # Landroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;

    .prologue
    const-string v0, "setClipboardFormat"

    invoke-direct {p0, v0}, Landroid/sec/clipboard/ClipboardExManager;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mFormatid:I

    if-eq v0, p1, :cond_2

    invoke-virtual {p0, p1, p2}, Landroid/sec/clipboard/ClipboardExManager;->updateClipboard(ILandroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;)V

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mIsFiltered:Z

    iput p1, p0, Landroid/sec/clipboard/ClipboardExManager;->mFormatid:I

    iput-object p2, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardEventListener:Landroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;

    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ClipboardExManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setClipboardFormat - Format:"

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

    const/4 v2, 0x0

    .local v2, "clipboardData":Landroid/sec/clipboard/data/ClipboardData;
    invoke-static {p1}, Landroid/sec/clipboard/ClipboardConverter;->getInstance(Landroid/content/Context;)Landroid/sec/clipboard/ClipboardConverter;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardConverter:Landroid/sec/clipboard/ClipboardConverter;

    iget-object v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardConverter:Landroid/sec/clipboard/ClipboardConverter;

    invoke-virtual {v0, p2}, Landroid/sec/clipboard/ClipboardConverter;->ClipDataToClipboardData(Landroid/content/ClipData;)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v2

    if-nez v2, :cond_0

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
    const-string v0, "setFilter"

    invoke-direct {p0, v0}, Landroid/sec/clipboard/ClipboardExManager;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mIsFiltered:Z

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    const-string v0, "ClipboardExManager"

    const-string v1, "setFilter - Format changed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/sec/clipboard/ClipboardExManager;->updateFilter(ILandroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;)V

    const-string v0, "ClipboardExManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFilter - Format:"

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

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mIsFiltered:Z

    iput p1, p0, Landroid/sec/clipboard/ClipboardExManager;->mFormatid:I

    iput-object p2, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardEventListener:Landroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;

    goto :goto_0
.end method

.method public setPasteFrozen(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V
    .locals 3
    .param p1, "formatid"    # I
    .param p2, "clPasteEvent"    # Landroid/sec/clipboard/IClipboardDataPasteEvent;

    .prologue
    const-string v0, "setPasteFrozen"

    invoke-direct {p0, v0}, Landroid/sec/clipboard/ClipboardExManager;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mFormatid:I

    if-eq v0, p1, :cond_2

    invoke-virtual {p0, p1, p2}, Landroid/sec/clipboard/ClipboardExManager;->updateData(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    :cond_2
    iput p1, p0, Landroid/sec/clipboard/ClipboardExManager;->mFormatid:I

    iput-object p2, p0, Landroid/sec/clipboard/ClipboardExManager;->mPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ClipboardExManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPasteFrozen - Format:"

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
    const-string v0, "setThawPaste"

    invoke-direct {p0, v0}, Landroid/sec/clipboard/ClipboardExManager;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mFormatid:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/sec/clipboard/ClipboardExManager;->mPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ClipboardExManager"

    const-string v1, "setThawPaste"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public showClipboard(ILandroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;)Z
    .locals 1
    .param p1, "formatid"    # I
    .param p2, "listener"    # Landroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;

    .prologue
    invoke-virtual {p0, p1, p2}, Landroid/sec/clipboard/ClipboardExManager;->showDialog(ILandroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;)Z

    move-result v0

    return v0
.end method

.method public showDialog()V
    .locals 3

    .prologue
    const-string v1, "showDialog"

    invoke-direct {p0, v1}, Landroid/sec/clipboard/ClipboardExManager;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Landroid/sec/clipboard/ClipboardExManager;->startClipboardUIServiceService()V

    :try_start_0
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    if-nez v1, :cond_2

    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "ClipboardExManager"

    const-string v2, "showDialog - Fail~ Service is null."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

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

    const-string v3, "showDialog"

    invoke-direct {p0, v3}, Landroid/sec/clipboard/ClipboardExManager;->isEnabled(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    .local v0, "Result":Z
    invoke-direct {p0}, Landroid/sec/clipboard/ClipboardExManager;->startClipboardUIServiceService()V

    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "ClipboardExManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showDialog : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :try_start_0
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v3

    if-nez v3, :cond_3

    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "ClipboardExManager"

    const-string v4, "showDialog - Fail~ Service is null."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/sec/clipboard/ClipboardExManager;->isFiltered()Z

    move-result v2

    if-nez v2, :cond_4

    iput-object p2, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardEventListener:Landroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;

    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    iget-object v3, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardEventImpl:Landroid/sec/clipboard/ClipboardExManager$IClipboardDataPasteEventImpl;

    invoke-interface {v2, p1, v3}, Landroid/sec/clipboard/IClipboardService;->ShowUIClipboardData(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    const-string v2, "ClipboardExManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showDialog - "

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

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    :try_start_1
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    iget v3, p0, Landroid/sec/clipboard/ClipboardExManager;->mFormatid:I

    iget-object v4, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardEventImpl:Landroid/sec/clipboard/ClipboardExManager$IClipboardDataPasteEventImpl;

    invoke-interface {v2, v3, v4}, Landroid/sec/clipboard/IClipboardService;->ShowUIClipboardData(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    const-string v2, "ClipboardExManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showDialog - "

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
    invoke-virtual {p0}, Landroid/sec/clipboard/ClipboardExManager;->showDialog()V

    return-void
.end method

.method public showUIFloatingIcon()V
    .locals 2

    .prologue
    const-string v0, "ClipboardExManager"

    const-string v1, "showUIFloatingIcon"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public unRegistClipboardWorkingFormUiInterface()V
    .locals 3

    .prologue
    const-string v1, "unRegistClipboardWorkingFormUiInterface"

    invoke-direct {p0, v1}, Landroid/sec/clipboard/ClipboardExManager;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    if-nez v1, :cond_3

    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "ClipboardExManager"

    const-string v2, "unRegistClipboardWorkingFormUiInterface - Fail~ Service is null."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "ClipboardExManager"

    const-string v2, "unRegistClipboardWorkingFormUiInterface(RemoteException): "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_1
    iget-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mRegInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    if-eqz v1, :cond_4

    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    iget-object v2, p0, Landroid/sec/clipboard/ClipboardExManager;->mRegInterface:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    invoke-interface {v1, v2}, Landroid/sec/clipboard/IClipboardService;->unRegistClipboardWorkingFormUiInterfaces(Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;)V

    goto :goto_0

    :cond_4
    const-string v1, "ClipboardExManager"

    const-string v2, "reg interface is null!"

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
    const-string v1, "updateClipboard"

    invoke-direct {p0, v1}, Landroid/sec/clipboard/ClipboardExManager;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "ClipboardExManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateClipboard "

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

    :cond_2
    invoke-virtual {p0}, Landroid/sec/clipboard/ClipboardExManager;->hasAppClipboardListener()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "ClipboardExManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateData return : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardEventListener:Landroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    :try_start_0
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    if-nez v1, :cond_4

    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "ClipboardExManager"

    const-string v2, "updateData - Fail~ Service is null."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    :try_start_1
    invoke-virtual {p0}, Landroid/sec/clipboard/ClipboardExManager;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object p2, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardEventListener:Landroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;

    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    iget-object v2, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardEventImpl:Landroid/sec/clipboard/ClipboardExManager$IClipboardDataPasteEventImpl;

    invoke-interface {v1, p1, v2}, Landroid/sec/clipboard/IClipboardService;->UpdateUIClipboardData(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "ClipboardExManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateClipboard - listener:"

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
    const-string v1, "updateData"

    invoke-direct {p0, v1}, Landroid/sec/clipboard/ClipboardExManager;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Landroid/sec/clipboard/ClipboardExManager;->mPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    if-eqz v1, :cond_2

    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "ClipboardExManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateData return : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    :try_start_0
    const-string v1, "ClipboardExManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateData - "

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

    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    if-nez v1, :cond_3

    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "ClipboardExManager"

    const-string v2, "updateData - Fail~ Service is null."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Landroid/sec/clipboard/ClipboardExManager;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/sec/clipboard/IClipboardService;->UpdateUIClipboardData(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "ClipboardExManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateData - clPasteEvent:"

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
    const-string v1, "updateFilter"

    invoke-direct {p0, v1}, Landroid/sec/clipboard/ClipboardExManager;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/sec/clipboard/ClipboardExManager;->isFiltered()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "ClipboardExManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateFilter return : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardEventListener:Landroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    if-nez v1, :cond_3

    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "ClipboardExManager"

    const-string v2, "updateFilter - Fail~ Service is null."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_1
    iput-object p2, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardEventListener:Landroid/sec/clipboard/ClipboardExManager$ClipboardEventListener;

    invoke-static {}, Landroid/sec/clipboard/ClipboardExManager;->getService()Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    iget-object v2, p0, Landroid/sec/clipboard/ClipboardExManager;->mClipboardEventImpl:Landroid/sec/clipboard/ClipboardExManager$IClipboardDataPasteEventImpl;

    invoke-interface {v1, p1, v2}, Landroid/sec/clipboard/IClipboardService;->UpdateUIClipboardData(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    const-string v1, "ClipboardExManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateFilter - "

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
