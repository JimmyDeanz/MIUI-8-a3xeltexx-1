.class public Landroid/sec/clipboard/util/HtmlUtils;
.super Ljava/lang/Object;
.source "HtmlUtils.java"


# static fields
.field public static final htmlEntity:Ljava/lang/String; = "&[a-zA-Z][a-zA-Z0-9]+;"

.field public static final htmlPattern:Ljava/util/regex/Pattern;

.field public static final tagEnd:Ljava/lang/String; = "\\</\\w+\\>"

.field public static final tagSelfClosing:Ljava/lang/String; = "\\<\\w+((\\s+\\w+(\\s*\\=\\s*(?:\".*?\"|\'.*?\'|[^\'\"\\>\\s]+))?)+\\s*|\\s*)/\\>"

.field public static final tagStart:Ljava/lang/String; = "\\<\\w+((\\s+\\w+(\\s*\\=\\s*(?:\".*?\"|\'.*?\'|[^\'\"\\>\\s]+))?)+\\s*|\\s*)\\>"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const-string v0, "(\\<\\w+((\\s+\\w+(\\s*\\=\\s*(?:\".*?\"|\'.*?\'|[^\'\"\\>\\s]+))?)+\\s*|\\s*)\\>.*\\</\\w+\\>)|(\\<\\w+((\\s+\\w+(\\s*\\=\\s*(?:\".*?\"|\'.*?\'|[^\'\"\\>\\s]+))?)+\\s*|\\s*)/\\>)|(&[a-zA-Z][a-zA-Z0-9]+;)"

    const/16 v1, 0x20

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/sec/clipboard/util/HtmlUtils;->htmlPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isHtml(Ljava/lang/String;)Z
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .local v0, "ret":Z
    if-eqz p0, :cond_0

    sget-object v1, Landroid/sec/clipboard/util/HtmlUtils;->htmlPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    :cond_0
    return v0
.end method
