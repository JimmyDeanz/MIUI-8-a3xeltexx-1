.class final Landroid/media/TtmlUtils;
.super Ljava/lang/Object;
.source "TtmlRenderer.java"


# static fields
.field public static final ATTR_BEGIN:Ljava/lang/String; = "begin"

.field public static final ATTR_DURATION:Ljava/lang/String; = "dur"

.field public static final ATTR_END:Ljava/lang/String; = "end"

.field public static final ATTR_EXTENT:Ljava/lang/String; = "extent"

.field public static final ATTR_ID:Ljava/lang/String; = "id"

.field public static final ATTR_ORIGIN:Ljava/lang/String; = "origin"

.field public static final ATTR_REGION:Ljava/lang/String; = "region"

.field private static final CLOCK_TIME:Ljava/util/regex/Pattern;

.field public static final INVALID_TIMESTAMP:J = 0x7fffffffffffffffL

.field private static final OFFSET_TIME:Ljava/util/regex/Pattern;

.field public static final PCDATA:Ljava/lang/String; = "#pcdata"

.field private static final REGION_LENGTH:Ljava/util/regex/Pattern;

.field public static final TAG_BODY:Ljava/lang/String; = "body"

.field public static final TAG_BR:Ljava/lang/String; = "br"

.field public static final TAG_DIV:Ljava/lang/String; = "div"

.field public static final TAG_HEAD:Ljava/lang/String; = "head"

.field public static final TAG_LAYOUT:Ljava/lang/String; = "layout"

.field public static final TAG_METADATA:Ljava/lang/String; = "metadata"

.field public static final TAG_P:Ljava/lang/String; = "p"

.field public static final TAG_REGION:Ljava/lang/String; = "region"

.field public static final TAG_SMPTE_DATA:Ljava/lang/String; = "smpte:data"

.field public static final TAG_SMPTE_IMAGE:Ljava/lang/String; = "smpte:image"

.field public static final TAG_SMPTE_INFORMATION:Ljava/lang/String; = "smpte:information"

.field public static final TAG_SPAN:Ljava/lang/String; = "span"

.field public static final TAG_STYLE:Ljava/lang/String; = "style"

.field public static final TAG_STYLING:Ljava/lang/String; = "styling"

.field public static final TAG_TT:Ljava/lang/String; = "tt"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "^([0-9][0-9]+):([0-9][0-9]):([0-9][0-9])(?:(\\.[0-9]+)|:([0-9][0-9])(?:\\.([0-9]+))?)?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/media/TtmlUtils;->CLOCK_TIME:Ljava/util/regex/Pattern;

    const-string v0, "^([0-9]+(?:\\.[0-9]+)?)(h|m|s|ms|f|t)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/media/TtmlUtils;->OFFSET_TIME:Ljava/util/regex/Pattern;

    const-string v0, "^([0-9][0-9]*.?[0-9]*)(%|px|c)(\\s*)([0-9][0-9]*.?[0-9]*)(%|px|c)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/media/TtmlUtils;->REGION_LENGTH:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyDefaultSpacePolicy(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "in"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/media/TtmlUtils;->applySpacePolicy(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static applySpacePolicy(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 7
    .param p0, "in"    # Ljava/lang/String;
    .param p1, "treatLfAsSpace"    # Z

    .prologue
    const-string v5, "\n$"

    const-string v6, ""

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, "tmp":Ljava/lang/String;
    const-string v5, "\r\n"

    const-string v6, "\n"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "crRemoved":Ljava/lang/String;
    const-string v5, " *\n *"

    const-string v6, "\n"

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, "spacesNeighboringLfRemoved":Ljava/lang/String;
    if-eqz p1, :cond_0

    const-string v5, "\n"

    const-string v6, " "

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "lfToSpace":Ljava/lang/String;
    :goto_0
    const-string v5, "[ \t\\x0B\u000c\r]+"

    const-string v6, " "

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "spacesCollapsed":Ljava/lang/String;
    return-object v2

    .end local v1    # "lfToSpace":Ljava/lang/String;
    .end local v2    # "spacesCollapsed":Ljava/lang/String;
    :cond_0
    move-object v1, v3

    goto :goto_0
.end method

.method public static extractText(Landroid/media/TtmlNode;JJ)Ljava/lang/String;
    .locals 9
    .param p0, "root"    # Landroid/media/TtmlNode;
    .param p1, "startUs"    # J
    .param p3, "endUs"    # J

    .prologue
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .local v6, "text":Ljava/lang/StringBuilder;
    const/4 v7, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v1 .. v7}, Landroid/media/TtmlUtils;->extractText(Landroid/media/TtmlNode;JJLjava/lang/StringBuilder;Z)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static extractText(Landroid/media/TtmlNode;JJLjava/lang/StringBuilder;Z)V
    .locals 13
    .param p0, "node"    # Landroid/media/TtmlNode;
    .param p1, "startUs"    # J
    .param p3, "endUs"    # J
    .param p5, "out"    # Ljava/lang/StringBuilder;
    .param p6, "inPTag"    # Z

    .prologue
    iget-object v3, p0, Landroid/media/TtmlNode;->mName:Ljava/lang/String;

    const-string v4, "#pcdata"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz p6, :cond_1

    iget-object v3, p0, Landroid/media/TtmlNode;->mText:Ljava/lang/String;

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Landroid/media/TtmlNode;->mName:Ljava/lang/String;

    const-string v4, "br"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz p6, :cond_2

    const-string v3, "\n"

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    iget-object v3, p0, Landroid/media/TtmlNode;->mName:Ljava/lang/String;

    const-string v4, "metadata"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual/range {p0 .. p4}, Landroid/media/TtmlNode;->isActive(JJ)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/media/TtmlNode;->mName:Ljava/lang/String;

    const-string v4, "p"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    .local v11, "pTag":Z
    invoke-virtual/range {p5 .. p5}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    .local v10, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v3, p0, Landroid/media/TtmlNode;->mChildren:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    iget-object v3, p0, Landroid/media/TtmlNode;->mChildren:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/TtmlNode;

    if-nez v11, :cond_3

    if-eqz p6, :cond_4

    :cond_3
    const/4 v9, 0x1

    :goto_2
    move-wide v4, p1

    move-wide/from16 v6, p3

    move-object/from16 v8, p5

    invoke-static/range {v3 .. v9}, Landroid/media/TtmlUtils;->extractText(Landroid/media/TtmlNode;JJLjava/lang/StringBuilder;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    const/4 v9, 0x0

    goto :goto_2

    :cond_5
    if-eqz v11, :cond_0

    invoke-virtual/range {p5 .. p5}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eq v10, v3, :cond_0

    const-string v3, "\n"

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static extractTtmlFragment(Landroid/media/TtmlNode;JJ)Ljava/lang/String;
    .locals 7
    .param p0, "root"    # Landroid/media/TtmlNode;
    .param p1, "startUs"    # J
    .param p3, "endUs"    # J

    .prologue
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .local v6, "fragment":Ljava/lang/StringBuilder;
    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v1 .. v6}, Landroid/media/TtmlUtils;->extractTtmlFragment(Landroid/media/TtmlNode;JJLjava/lang/StringBuilder;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static extractTtmlFragment(Landroid/media/TtmlNode;JJLjava/lang/StringBuilder;)V
    .locals 7
    .param p0, "node"    # Landroid/media/TtmlNode;
    .param p1, "startUs"    # J
    .param p3, "endUs"    # J
    .param p5, "out"    # Ljava/lang/StringBuilder;

    .prologue
    iget-object v1, p0, Landroid/media/TtmlNode;->mName:Ljava/lang/String;

    const-string v2, "#pcdata"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/media/TtmlNode;->mText:Ljava/lang/String;

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Landroid/media/TtmlNode;->mName:Ljava/lang/String;

    const-string v2, "br"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "<br/>"

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/media/TtmlNode;->isActive(JJ)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "<"

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/media/TtmlNode;->mName:Ljava/lang/String;

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/media/TtmlNode;->mAttributes:Ljava/lang/String;

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/media/TtmlNode;->mChildren:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Landroid/media/TtmlNode;->mChildren:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/TtmlNode;

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-static/range {v1 .. v6}, Landroid/media/TtmlUtils;->extractTtmlFragment(Landroid/media/TtmlNode;JJLjava/lang/StringBuilder;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const-string v1, "</"

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/media/TtmlNode;->mName:Ljava/lang/String;

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static parseLocationExpression(Ljava/lang/String;)Landroid/media/TtmlPositionInfo;
    .locals 5
    .param p0, "location"    # Ljava/lang/String;

    .prologue
    sget-object v4, Landroid/media/TtmlUtils;->REGION_LENGTH:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v1, Landroid/media/TtmlPositionInfo;

    invoke-direct {v1}, Landroid/media/TtmlPositionInfo;-><init>()V

    .local v1, "position":Landroid/media/TtmlPositionInfo;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .local v3, "str_width":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iput v4, v1, Landroid/media/TtmlPositionInfo;->width:F

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/media/TtmlPositionInfo;->unit:Ljava/lang/String;

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .local v2, "str_height":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iput v4, v1, Landroid/media/TtmlPositionInfo;->height:F

    .end local v1    # "position":Landroid/media/TtmlPositionInfo;
    .end local v2    # "str_height":Ljava/lang/String;
    .end local v3    # "str_width":Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseTimeExpression(Ljava/lang/String;III)J
    .locals 20
    .param p0, "time"    # Ljava/lang/String;
    .param p1, "frameRate"    # I
    .param p2, "subframeRate"    # I
    .param p3, "tickRate"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    sget-object v13, Landroid/media/TtmlUtils;->CLOCK_TIME:Ljava/util/regex/Pattern;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .local v7, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v13

    if-eqz v13, :cond_3

    const/4 v13, 0x1

    invoke-virtual {v7, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .local v6, "hours":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    const-wide/16 v18, 0xe10

    mul-long v16, v16, v18

    move-wide/from16 v0, v16

    long-to-double v2, v0

    .local v2, "durationSeconds":D
    const/4 v13, 0x2

    invoke-virtual {v7, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    .local v8, "minutes":Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    const-wide/16 v18, 0x3c

    mul-long v16, v16, v18

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v16, v0

    add-double v2, v2, v16

    const/4 v13, 0x3

    invoke-virtual {v7, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    .local v9, "seconds":Ljava/lang/String;
    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v16, v0

    add-double v2, v2, v16

    const/4 v13, 0x4

    invoke-virtual {v7, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .local v4, "fraction":Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v16

    :goto_0
    add-double v2, v2, v16

    const/4 v13, 0x5

    invoke-virtual {v7, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .local v5, "frames":Ljava/lang/String;
    if-eqz v5, :cond_1

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v16, v0

    move/from16 v0, p1

    int-to-double v0, v0

    move-wide/from16 v18, v0

    div-double v16, v16, v18

    :goto_1
    add-double v2, v2, v16

    const/4 v13, 0x6

    invoke-virtual {v7, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    .local v10, "subframes":Ljava/lang/String;
    if-eqz v10, :cond_2

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v16, v0

    move/from16 v0, p2

    int-to-double v0, v0

    move-wide/from16 v18, v0

    div-double v16, v16, v18

    move/from16 v0, p1

    int-to-double v0, v0

    move-wide/from16 v18, v0

    div-double v16, v16, v18

    :goto_2
    add-double v2, v2, v16

    const-wide v16, 0x408f400000000000L    # 1000.0

    mul-double v16, v16, v2

    move-wide/from16 v0, v16

    double-to-long v0, v0

    move-wide/from16 v16, v0

    .end local v2    # "durationSeconds":D
    .end local v4    # "fraction":Ljava/lang/String;
    .end local v5    # "frames":Ljava/lang/String;
    .end local v6    # "hours":Ljava/lang/String;
    .end local v8    # "minutes":Ljava/lang/String;
    .end local v9    # "seconds":Ljava/lang/String;
    .end local v10    # "subframes":Ljava/lang/String;
    :goto_3
    return-wide v16

    .restart local v2    # "durationSeconds":D
    .restart local v4    # "fraction":Ljava/lang/String;
    .restart local v6    # "hours":Ljava/lang/String;
    .restart local v8    # "minutes":Ljava/lang/String;
    .restart local v9    # "seconds":Ljava/lang/String;
    :cond_0
    const-wide/16 v16, 0x0

    goto :goto_0

    .restart local v5    # "frames":Ljava/lang/String;
    :cond_1
    const-wide/16 v16, 0x0

    goto :goto_1

    .restart local v10    # "subframes":Ljava/lang/String;
    :cond_2
    const-wide/16 v16, 0x0

    goto :goto_2

    .end local v2    # "durationSeconds":D
    .end local v4    # "fraction":Ljava/lang/String;
    .end local v5    # "frames":Ljava/lang/String;
    .end local v6    # "hours":Ljava/lang/String;
    .end local v8    # "minutes":Ljava/lang/String;
    .end local v9    # "seconds":Ljava/lang/String;
    .end local v10    # "subframes":Ljava/lang/String;
    :cond_3
    sget-object v13, Landroid/media/TtmlUtils;->OFFSET_TIME:Ljava/util/regex/Pattern;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v13

    if-eqz v13, :cond_a

    const/4 v13, 0x1

    invoke-virtual {v7, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    .local v11, "timeValue":Ljava/lang/String;
    invoke-static {v11}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    .local v14, "value":D
    const/4 v13, 0x2

    invoke-virtual {v7, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    .local v12, "unit":Ljava/lang/String;
    const-string v13, "h"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    const-wide v16, 0x414b774000000000L    # 3600000.0

    mul-double v14, v14, v16

    :cond_4
    :goto_4
    double-to-long v0, v14

    move-wide/from16 v16, v0

    goto :goto_3

    :cond_5
    const-string v13, "m"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    const-wide v16, 0x40ed4c0000000000L    # 60000.0

    mul-double v14, v14, v16

    goto :goto_4

    :cond_6
    const-string v13, "s"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    const-wide v16, 0x408f400000000000L    # 1000.0

    mul-double v14, v14, v16

    goto :goto_4

    :cond_7
    const-string v13, "ms"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    mul-double v14, v14, v16

    goto :goto_4

    :cond_8
    const-string v13, "f"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    move/from16 v0, p1

    int-to-double v0, v0

    move-wide/from16 v16, v0

    div-double v16, v14, v16

    const-wide v18, 0x408f400000000000L    # 1000.0

    mul-double v14, v16, v18

    goto :goto_4

    :cond_9
    const-string v13, "t"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    move/from16 v0, p3

    int-to-double v0, v0

    move-wide/from16 v16, v0

    div-double v16, v14, v16

    const-wide v18, 0x408f400000000000L    # 1000.0

    mul-double v14, v16, v18

    goto :goto_4

    .end local v11    # "timeValue":Ljava/lang/String;
    .end local v12    # "unit":Ljava/lang/String;
    .end local v14    # "value":D
    :cond_a
    new-instance v13, Ljava/lang/NumberFormatException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Malformed time expression : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v13, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v13
.end method
