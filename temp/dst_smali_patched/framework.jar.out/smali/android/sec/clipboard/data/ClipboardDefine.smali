.class public Landroid/sec/clipboard/data/ClipboardDefine;
.super Ljava/lang/Object;
.source "ClipboardDefine.java"


# static fields
.field public static final CLIPBOARD_DRAGNDROP:Ljava/lang/String; = "clipboarddragNdrop"

.field public static final CLIPBOARD_KNOX_ROOT_PATH:Ljava/lang/String; = "/knox"

.field public static final CLIPBOARD_ROOT_PATH:Ljava/lang/String; = "/data/clipboard"

.field public static final CLIPBOARD_SCRAP_ROOT_PATH:Ljava/lang/String; = "/scrap"

.field public static final CLIPBOARD_TAG:Ljava/lang/String; = "ClipboardServiceEx"

.field public static final CLIPBOARD_TYPE_NORMAL:I = 0x0

.field public static final CLIPBOARD_TYPE_SCRAPBOOK:I = 0x1

.field public static DEBUG:Z = false

.field public static DEFAULT_PATH:Ljava/lang/String; = null

.field public static final FORMAT_ALL_ID:I = 0x1

.field public static final FORMAT_BITMAP:Ljava/lang/String; = "Bitmap"

.field public static final FORMAT_BITMAP_ID:I = 0x3

.field public static final FORMAT_HTML_FLAGMENT:Ljava/lang/String; = "HTMLFlagment"

.field public static final FORMAT_HTML_FLAGMENT_ID:I = 0x4

.field public static final FORMAT_INTENT:Ljava/lang/String; = "Intent"

.field public static final FORMAT_INTENT_ID:I = 0x6

.field public static final FORMAT_MULTIPLE_TYPE:Ljava/lang/String; = "MultipleType"

.field public static final FORMAT_MULTIPLE_TYPE_ID:I = 0x8

.field public static final FORMAT_MULTIPLE_URI:Ljava/lang/String; = "MultipleUri"

.field public static final FORMAT_MULTIPLE_URI_ID:I = 0x7

.field public static final FORMAT_SMARTCLIP_BITMAP_ID:I = 0xa

.field public static final FORMAT_SMARTCLIP_BITMAP_TYPE:Ljava/lang/String; = "SmartClipBitmapType"

.field public static final FORMAT_SMARTCLIP_ID:I = 0x9

.field public static final FORMAT_SMARTCLIP_TYPE:Ljava/lang/String; = "SmartClipType"

.field public static final FORMAT_TEXT:Ljava/lang/String; = "Text"

.field public static final FORMAT_TEXT_ID:I = 0x2

.field public static final FORMAT_URI:Ljava/lang/String; = "Uri"

.field public static final FORMAT_URI_ID:I = 0x5

.field public static final HTML_PREVIEW_IMAGE_NAME:Ljava/lang/String; = "previewhtemlclipboarditem"

.field public static INFO_DEBUG:Z = false

.field public static final KNOX_PACKAGE_PREFIX:Ljava/lang/String; = "sec_container_1."

.field public static final LIMIT_STRING_LENGTH:I = 0x40000

.field public static final MAX_CLIPDATA_COUNT:I = 0xa

.field public static final MAX_DATA_COUNT:I = 0x14

.field public static final SAFETY_STRING_LENGTH:I = 0x20000

.field public static final SUPPORT_KNOX:Z

.field public static final SUPPORT_SAVE_MODE:Z

.field public static THUMBNAIL_SUFFIX:Ljava/lang/String; = null

.field public static final USER_ADDED:Ljava/lang/String; = "ADDED"

.field public static final USER_REMOVED:Ljava/lang/String; = "REMOVED"

.field public static final USER_SWITCHED:Ljava/lang/String; = "SWITCHED"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const-string v0, ""

    sput-object v0, Landroid/sec/clipboard/data/ClipboardDefine;->DEFAULT_PATH:Ljava/lang/String;

    const-string v0, "_thum.jpg"

    sput-object v0, Landroid/sec/clipboard/data/ClipboardDefine;->THUMBNAIL_SUFFIX:Ljava/lang/String;

    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    sput-boolean v0, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardConstants;->INFO_DEBUG:Z

    sput-boolean v0, Landroid/sec/clipboard/data/ClipboardDefine;->INFO_DEBUG:Z

    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardConstants;->SUPPORT_KNOX:Z

    sput-boolean v0, Landroid/sec/clipboard/data/ClipboardDefine;->SUPPORT_KNOX:Z

    const-string v0, "americano"

    const-string v1, "ro.build.scafe"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/sec/clipboard/data/ClipboardDefine;->SUPPORT_SAVE_MODE:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
