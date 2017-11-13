.class Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;
.super Lmf/javax/xml/datatype/Duration;
.source "DurationImpl.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final FACTORS:[Ljava/math/BigDecimal;

.field private static final FIELDS:[Lmf/javax/xml/datatype/DatatypeConstants$Field;

.field private static final TEST_POINTS:[Lmf/javax/xml/datatype/XMLGregorianCalendar;

.field private static final ZERO:Ljava/math/BigDecimal;

.field private static final serialVersionUID:J = -0x24c6c86e5ffadfb3L


# instance fields
.field private final days:Ljava/math/BigInteger;

.field private final hours:Ljava/math/BigInteger;

.field private final minutes:Ljava/math/BigInteger;

.field private final months:Ljava/math/BigInteger;

.field private final seconds:Ljava/math/BigDecimal;

.field private final signum:I

.field private final years:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v0, 0x6

    new-array v0, v0, [Lmf/javax/xml/datatype/DatatypeConstants$Field;

    sget-object v1, Lmf/javax/xml/datatype/DatatypeConstants;->YEARS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    aput-object v1, v0, v4

    sget-object v1, Lmf/javax/xml/datatype/DatatypeConstants;->MONTHS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    aput-object v1, v0, v3

    sget-object v1, Lmf/javax/xml/datatype/DatatypeConstants;->DAYS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    aput-object v1, v0, v5

    sget-object v1, Lmf/javax/xml/datatype/DatatypeConstants;->HOURS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    aput-object v1, v0, v6

    sget-object v1, Lmf/javax/xml/datatype/DatatypeConstants;->MINUTES:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lmf/javax/xml/datatype/DatatypeConstants;->SECONDS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    aput-object v2, v0, v1

    sput-object v0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->FIELDS:[Lmf/javax/xml/datatype/DatatypeConstants$Field;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->ZERO:Ljava/math/BigDecimal;

    new-array v0, v7, [Lmf/javax/xml/datatype/XMLGregorianCalendar;

    const-string v1, "1696-09-01T00:00:00Z"

    invoke-static {v1}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->parse(Ljava/lang/String;)Lmf/javax/xml/datatype/XMLGregorianCalendar;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "1697-02-01T00:00:00Z"

    invoke-static {v1}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->parse(Ljava/lang/String;)Lmf/javax/xml/datatype/XMLGregorianCalendar;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "1903-03-01T00:00:00Z"

    invoke-static {v1}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->parse(Ljava/lang/String;)Lmf/javax/xml/datatype/XMLGregorianCalendar;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "1903-07-01T00:00:00Z"

    invoke-static {v1}, Lmf/org/apache/xerces/jaxp/datatype/XMLGregorianCalendarImpl;->parse(Ljava/lang/String;)Lmf/javax/xml/datatype/XMLGregorianCalendar;

    move-result-object v1

    aput-object v1, v0, v6

    sput-object v0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->TEST_POINTS:[Lmf/javax/xml/datatype/XMLGregorianCalendar;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/math/BigDecimal;

    const-wide/16 v2, 0xc

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v1

    aput-object v1, v0, v4

    const-wide/16 v2, 0x18

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v1

    aput-object v1, v0, v5

    const-wide/16 v2, 0x3c

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v1

    aput-object v1, v0, v6

    const-wide/16 v2, 0x3c

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v1

    aput-object v1, v0, v7

    sput-object v0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->FACTORS:[Ljava/math/BigDecimal;

    return-void
.end method

.method protected constructor <init>(J)V
    .locals 9
    .param p1, "durationInMilliSeconds"    # J

    .prologue
    invoke-direct {p0}, Lmf/javax/xml/datatype/Duration;-><init>()V

    const/4 v0, 0x0

    .local v0, "is0x8000000000000000L":Z
    move-wide v2, p1

    .local v2, "l":J
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    const/4 v1, 0x1

    iput v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->signum:I

    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->years:Ljava/math/BigInteger;

    const/4 v1, 0x0

    iput-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->months:Ljava/math/BigInteger;

    const-wide/32 v4, 0xea60

    rem-long v4, v2, v4

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    :goto_1
    int-to-long v6, v1

    add-long/2addr v4, v6

    const/4 v1, 0x3

    invoke-static {v4, v5, v1}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v1

    iput-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->seconds:Ljava/math/BigDecimal;

    const-wide/32 v4, 0xea60

    div-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_4

    const/4 v1, 0x0

    :goto_2
    iput-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->minutes:Ljava/math/BigInteger;

    const-wide/16 v4, 0x3c

    div-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_5

    const/4 v1, 0x0

    :goto_3
    iput-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->hours:Ljava/math/BigInteger;

    const-wide/16 v4, 0x18

    div-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_6

    const/4 v1, 0x0

    :goto_4
    iput-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->days:Ljava/math/BigInteger;

    return-void

    :cond_0
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gez v1, :cond_2

    const/4 v1, -0x1

    iput v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->signum:I

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    const/4 v0, 0x1

    :cond_1
    const-wide/16 v4, -0x1

    mul-long/2addr v2, v4

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    iput v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->signum:I

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    const-wide/16 v4, 0x3c

    rem-long v4, v2, v4

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    goto :goto_2

    :cond_5
    const-wide/16 v4, 0x18

    rem-long v4, v2, v4

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    goto :goto_3

    :cond_6
    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    goto :goto_4
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 17
    .param p1, "lexicalRepresentation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    invoke-direct/range {p0 .. p0}, Lmf/javax/xml/datatype/Duration;-><init>()V

    if-nez p1, :cond_0

    new-instance v14, Ljava/lang/NullPointerException;

    invoke-direct {v14}, Ljava/lang/NullPointerException;-><init>()V

    throw v14

    :cond_0
    move-object/from16 v8, p1

    .local v8, "s":Ljava/lang/String;
    const/4 v14, 0x1

    new-array v5, v14, [I

    .local v5, "idx":[I
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v6

    .local v6, "length":I
    const/4 v13, 0x0

    .local v13, "timeRequired":Z
    const/4 v14, 0x0

    const/4 v15, 0x0

    aput v15, v5, v14

    const/4 v14, 0x0

    aget v14, v5, v14

    if-eq v6, v14, :cond_1

    const/4 v14, 0x0

    aget v14, v5, v14

    invoke-virtual {v8, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x2d

    if-ne v14, v15, :cond_1

    const/4 v14, 0x0

    aget v15, v5, v14

    add-int/lit8 v15, v15, 0x1

    aput v15, v5, v14

    const/4 v7, 0x0

    .local v7, "positive":Z
    :goto_0
    const/4 v14, 0x0

    aget v14, v5, v14

    if-eq v6, v14, :cond_2

    const/4 v14, 0x0

    aget v15, v5, v14

    add-int/lit8 v16, v15, 0x1

    aput v16, v5, v14

    invoke-virtual {v8, v15}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x50

    if-eq v14, v15, :cond_2

    new-instance v14, Ljava/lang/IllegalArgumentException;

    invoke-direct {v14, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .end local v7    # "positive":Z
    :cond_1
    const/4 v7, 0x1

    .restart local v7    # "positive":Z
    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .local v1, "dateLen":I
    const/4 v14, 0x3

    new-array v3, v14, [Ljava/lang/String;

    .local v3, "dateParts":[Ljava/lang/String;
    const/4 v14, 0x3

    new-array v4, v14, [I

    .local v4, "datePartsIndex":[I
    :goto_1
    const/4 v14, 0x0

    aget v14, v5, v14

    if-eq v6, v14, :cond_3

    const/4 v14, 0x0

    aget v14, v5, v14

    invoke-virtual {v8, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    invoke-static {v14}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->isDigit(C)Z

    move-result v14

    if-eqz v14, :cond_3

    const/4 v14, 0x3

    if-lt v1, v14, :cond_6

    :cond_3
    const/4 v14, 0x0

    aget v14, v5, v14

    if-eq v6, v14, :cond_4

    const/4 v14, 0x0

    aget v15, v5, v14

    add-int/lit8 v16, v15, 0x1

    aput v16, v5, v14

    invoke-virtual {v8, v15}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x54

    if-ne v14, v15, :cond_7

    const/4 v13, 0x1

    :cond_4
    const/4 v9, 0x0

    .local v9, "timeLen":I
    const/4 v14, 0x3

    new-array v11, v14, [Ljava/lang/String;

    .local v11, "timeParts":[Ljava/lang/String;
    const/4 v14, 0x3

    new-array v12, v14, [I

    .local v12, "timePartsIndex":[I
    :goto_2
    const/4 v14, 0x0

    aget v14, v5, v14

    if-eq v6, v14, :cond_5

    const/4 v14, 0x0

    aget v14, v5, v14

    invoke-virtual {v8, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    invoke-static {v14}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->isDigitOrPeriod(C)Z

    move-result v14

    if-eqz v14, :cond_5

    const/4 v14, 0x3

    if-lt v9, v14, :cond_8

    :cond_5
    if-eqz v13, :cond_9

    if-nez v9, :cond_9

    new-instance v14, Ljava/lang/IllegalArgumentException;

    invoke-direct {v14, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .end local v9    # "timeLen":I
    .end local v11    # "timeParts":[Ljava/lang/String;
    .end local v12    # "timePartsIndex":[I
    :cond_6
    const/4 v14, 0x0

    aget v14, v5, v14

    aput v14, v4, v1

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "dateLen":I
    .local v2, "dateLen":I
    invoke-static {v8, v5}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->parsePiece(Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v3, v1

    move v1, v2

    .end local v2    # "dateLen":I
    .restart local v1    # "dateLen":I
    goto :goto_1

    :cond_7
    new-instance v14, Ljava/lang/IllegalArgumentException;

    invoke-direct {v14, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .restart local v9    # "timeLen":I
    .restart local v11    # "timeParts":[Ljava/lang/String;
    .restart local v12    # "timePartsIndex":[I
    :cond_8
    const/4 v14, 0x0

    aget v14, v5, v14

    aput v14, v12, v9

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "timeLen":I
    .local v10, "timeLen":I
    invoke-static {v8, v5}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->parsePiece(Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v11, v9

    move v9, v10

    .end local v10    # "timeLen":I
    .restart local v9    # "timeLen":I
    goto :goto_2

    :cond_9
    const/4 v14, 0x0

    aget v14, v5, v14

    if-eq v6, v14, :cond_a

    new-instance v14, Ljava/lang/IllegalArgumentException;

    invoke-direct {v14, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    :cond_a
    if-nez v1, :cond_b

    if-nez v9, :cond_b

    new-instance v14, Ljava/lang/IllegalArgumentException;

    invoke-direct {v14, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    :cond_b
    const-string v14, "YMD"

    invoke-static {v8, v3, v4, v1, v14}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->organizeParts(Ljava/lang/String;[Ljava/lang/String;[IILjava/lang/String;)V

    const-string v14, "HMS"

    invoke-static {v8, v11, v12, v9, v14}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->organizeParts(Ljava/lang/String;[Ljava/lang/String;[IILjava/lang/String;)V

    const/4 v14, 0x0

    aget-object v14, v3, v14

    const/4 v15, 0x0

    aget v15, v4, v15

    invoke-static {v8, v14, v15}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->parseBigInteger(Ljava/lang/String;Ljava/lang/String;I)Ljava/math/BigInteger;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->years:Ljava/math/BigInteger;

    const/4 v14, 0x1

    aget-object v14, v3, v14

    const/4 v15, 0x1

    aget v15, v4, v15

    invoke-static {v8, v14, v15}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->parseBigInteger(Ljava/lang/String;Ljava/lang/String;I)Ljava/math/BigInteger;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->months:Ljava/math/BigInteger;

    const/4 v14, 0x2

    aget-object v14, v3, v14

    const/4 v15, 0x2

    aget v15, v4, v15

    invoke-static {v8, v14, v15}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->parseBigInteger(Ljava/lang/String;Ljava/lang/String;I)Ljava/math/BigInteger;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->days:Ljava/math/BigInteger;

    const/4 v14, 0x0

    aget-object v14, v11, v14

    const/4 v15, 0x0

    aget v15, v12, v15

    invoke-static {v8, v14, v15}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->parseBigInteger(Ljava/lang/String;Ljava/lang/String;I)Ljava/math/BigInteger;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->hours:Ljava/math/BigInteger;

    const/4 v14, 0x1

    aget-object v14, v11, v14

    const/4 v15, 0x1

    aget v15, v12, v15

    invoke-static {v8, v14, v15}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->parseBigInteger(Ljava/lang/String;Ljava/lang/String;I)Ljava/math/BigInteger;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->minutes:Ljava/math/BigInteger;

    const/4 v14, 0x2

    aget-object v14, v11, v14

    const/4 v15, 0x2

    aget v15, v12, v15

    invoke-static {v8, v14, v15}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->parseBigDecimal(Ljava/lang/String;Ljava/lang/String;I)Ljava/math/BigDecimal;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->seconds:Ljava/math/BigDecimal;

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->calcSignum(Z)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->signum:I

    return-void
.end method

.method protected constructor <init>(ZIIIIII)V
    .locals 8
    .param p1, "isPositive"    # Z
    .param p2, "years"    # I
    .param p3, "months"    # I
    .param p4, "days"    # I
    .param p5, "hours"    # I
    .param p6, "minutes"    # I
    .param p7, "seconds"    # I

    .prologue
    invoke-static {p2}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->wrap(I)Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {p3}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->wrap(I)Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {p4}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->wrap(I)Ljava/math/BigInteger;

    move-result-object v4

    invoke-static {p5}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->wrap(I)Ljava/math/BigInteger;

    move-result-object v5

    invoke-static {p6}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->wrap(I)Ljava/math/BigInteger;

    move-result-object v6

    if-eqz p7, :cond_0

    int-to-long v0, p7

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v7

    :goto_0
    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v7}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;-><init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigDecimal;)V

    return-void

    :cond_0
    const/4 v7, 0x0

    goto :goto_0
.end method

.method protected constructor <init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigDecimal;)V
    .locals 3
    .param p1, "isPositive"    # Z
    .param p2, "years"    # Ljava/math/BigInteger;
    .param p3, "months"    # Ljava/math/BigInteger;
    .param p4, "days"    # Ljava/math/BigInteger;
    .param p5, "hours"    # Ljava/math/BigInteger;
    .param p6, "minutes"    # Ljava/math/BigInteger;
    .param p7, "seconds"    # Ljava/math/BigDecimal;

    .prologue
    const/4 v2, 0x0

    invoke-direct {p0}, Lmf/javax/xml/datatype/Duration;-><init>()V

    iput-object p2, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->years:Ljava/math/BigInteger;

    iput-object p3, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->months:Ljava/math/BigInteger;

    iput-object p4, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->days:Ljava/math/BigInteger;

    iput-object p5, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->hours:Ljava/math/BigInteger;

    iput-object p6, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->minutes:Ljava/math/BigInteger;

    iput-object p7, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->seconds:Ljava/math/BigDecimal;

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->calcSignum(Z)I

    move-result v0

    iput v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->signum:I

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    if-nez p5, :cond_0

    if-nez p6, :cond_0

    if-nez p7, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "AllFieldsNull"

    invoke-static {v2, v1, v2}, Lmf/org/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->YEARS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-static {p2, v0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->testNonNegative(Ljava/math/BigInteger;Lmf/javax/xml/datatype/DatatypeConstants$Field;)V

    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->MONTHS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-static {p3, v0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->testNonNegative(Ljava/math/BigInteger;Lmf/javax/xml/datatype/DatatypeConstants$Field;)V

    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->DAYS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-static {p4, v0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->testNonNegative(Ljava/math/BigInteger;Lmf/javax/xml/datatype/DatatypeConstants$Field;)V

    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->HOURS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-static {p5, v0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->testNonNegative(Ljava/math/BigInteger;Lmf/javax/xml/datatype/DatatypeConstants$Field;)V

    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->MINUTES:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-static {p6, v0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->testNonNegative(Ljava/math/BigInteger;Lmf/javax/xml/datatype/DatatypeConstants$Field;)V

    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->SECONDS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-static {p7, v0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->testNonNegative(Ljava/math/BigDecimal;Lmf/javax/xml/datatype/DatatypeConstants$Field;)V

    return-void
.end method

.method private static alignSigns([Ljava/math/BigDecimal;II)V
    .locals 7
    .param p0, "buf"    # [Ljava/math/BigDecimal;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    :cond_0
    const/4 v3, 0x0

    .local v3, "touched":Z
    const/4 v2, 0x0

    .local v2, "s":I
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-lt v1, p2, :cond_1

    if-nez v3, :cond_0

    return-void

    :cond_1
    aget-object v4, p0, v1

    invoke-virtual {v4}, Ljava/math/BigDecimal;->signum()I

    move-result v4

    mul-int/2addr v4, v2

    if-gez v4, :cond_3

    const/4 v3, 0x1

    aget-object v4, p0, v1

    invoke-virtual {v4}, Ljava/math/BigDecimal;->abs()Ljava/math/BigDecimal;

    move-result-object v4

    sget-object v5, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->FACTORS:[Ljava/math/BigDecimal;

    add-int/lit8 v6, v1, -0x1

    aget-object v5, v5, v6

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;

    move-result-object v0

    .local v0, "borrow":Ljava/math/BigDecimal;
    aget-object v4, p0, v1

    invoke-virtual {v4}, Ljava/math/BigDecimal;->signum()I

    move-result v4

    if-lez v4, :cond_2

    invoke-virtual {v0}, Ljava/math/BigDecimal;->negate()Ljava/math/BigDecimal;

    move-result-object v0

    :cond_2
    add-int/lit8 v4, v1, -0x1

    add-int/lit8 v5, v1, -0x1

    aget-object v5, p0, v5

    invoke-virtual {v5, v0}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v5

    aput-object v5, p0, v4

    aget-object v4, p0, v1

    sget-object v5, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->FACTORS:[Ljava/math/BigDecimal;

    add-int/lit8 v6, v1, -0x1

    aget-object v5, v5, v6

    invoke-virtual {v0, v5}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v4

    aput-object v4, p0, v1

    .end local v0    # "borrow":Ljava/math/BigDecimal;
    :cond_3
    aget-object v4, p0, v1

    invoke-virtual {v4}, Ljava/math/BigDecimal;->signum()I

    move-result v4

    if-eqz v4, :cond_4

    aget-object v4, p0, v1

    invoke-virtual {v4}, Ljava/math/BigDecimal;->signum()I

    move-result v2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private calcSignum(Z)I
    .locals 1
    .param p1, "isPositive"    # Z

    .prologue
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->years:Ljava/math/BigInteger;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->years:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-nez v0, :cond_6

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->months:Ljava/math/BigInteger;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->months:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-nez v0, :cond_6

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->days:Ljava/math/BigInteger;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->days:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-nez v0, :cond_6

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->hours:Ljava/math/BigInteger;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->hours:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-nez v0, :cond_6

    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->minutes:Ljava/math/BigInteger;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->minutes:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-nez v0, :cond_6

    :cond_4
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->seconds:Ljava/math/BigDecimal;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->seconds:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->signum()I

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_6
    if-eqz p1, :cond_7

    const/4 v0, 0x1

    goto :goto_0

    :cond_7
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private compareDates(Lmf/javax/xml/datatype/Duration;Lmf/javax/xml/datatype/Duration;)I
    .locals 9
    .param p1, "duration1"    # Lmf/javax/xml/datatype/Duration;
    .param p2, "duration2"    # Lmf/javax/xml/datatype/Duration;

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x2

    const/4 v0, 0x2

    .local v0, "resultA":I
    const/4 v1, 0x2

    .local v1, "resultB":I
    sget-object v5, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->TEST_POINTS:[Lmf/javax/xml/datatype/XMLGregorianCalendar;

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmf/javax/xml/datatype/XMLGregorianCalendar;

    .local v2, "tempA":Lmf/javax/xml/datatype/XMLGregorianCalendar;
    sget-object v5, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->TEST_POINTS:[Lmf/javax/xml/datatype/XMLGregorianCalendar;

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmf/javax/xml/datatype/XMLGregorianCalendar;

    .local v3, "tempB":Lmf/javax/xml/datatype/XMLGregorianCalendar;
    invoke-virtual {v2, p1}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->add(Lmf/javax/xml/datatype/Duration;)V

    invoke-virtual {v3, p2}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->add(Lmf/javax/xml/datatype/Duration;)V

    invoke-virtual {v2, v3}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->compare(Lmf/javax/xml/datatype/XMLGregorianCalendar;)I

    move-result v0

    if-ne v0, v4, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    sget-object v5, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->TEST_POINTS:[Lmf/javax/xml/datatype/XMLGregorianCalendar;

    aget-object v5, v5, v7

    invoke-virtual {v5}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "tempA":Lmf/javax/xml/datatype/XMLGregorianCalendar;
    check-cast v2, Lmf/javax/xml/datatype/XMLGregorianCalendar;

    .restart local v2    # "tempA":Lmf/javax/xml/datatype/XMLGregorianCalendar;
    sget-object v5, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->TEST_POINTS:[Lmf/javax/xml/datatype/XMLGregorianCalendar;

    aget-object v5, v5, v7

    invoke-virtual {v5}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "tempB":Lmf/javax/xml/datatype/XMLGregorianCalendar;
    check-cast v3, Lmf/javax/xml/datatype/XMLGregorianCalendar;

    .restart local v3    # "tempB":Lmf/javax/xml/datatype/XMLGregorianCalendar;
    invoke-virtual {v2, p1}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->add(Lmf/javax/xml/datatype/Duration;)V

    invoke-virtual {v3, p2}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->add(Lmf/javax/xml/datatype/Duration;)V

    invoke-virtual {v2, v3}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->compare(Lmf/javax/xml/datatype/XMLGregorianCalendar;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->compareResults(II)I

    move-result v0

    if-eq v0, v4, :cond_0

    sget-object v5, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->TEST_POINTS:[Lmf/javax/xml/datatype/XMLGregorianCalendar;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "tempA":Lmf/javax/xml/datatype/XMLGregorianCalendar;
    check-cast v2, Lmf/javax/xml/datatype/XMLGregorianCalendar;

    .restart local v2    # "tempA":Lmf/javax/xml/datatype/XMLGregorianCalendar;
    sget-object v5, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->TEST_POINTS:[Lmf/javax/xml/datatype/XMLGregorianCalendar;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "tempB":Lmf/javax/xml/datatype/XMLGregorianCalendar;
    check-cast v3, Lmf/javax/xml/datatype/XMLGregorianCalendar;

    .restart local v3    # "tempB":Lmf/javax/xml/datatype/XMLGregorianCalendar;
    invoke-virtual {v2, p1}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->add(Lmf/javax/xml/datatype/Duration;)V

    invoke-virtual {v3, p2}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->add(Lmf/javax/xml/datatype/Duration;)V

    invoke-virtual {v2, v3}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->compare(Lmf/javax/xml/datatype/XMLGregorianCalendar;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->compareResults(II)I

    move-result v0

    if-eq v0, v4, :cond_0

    sget-object v4, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->TEST_POINTS:[Lmf/javax/xml/datatype/XMLGregorianCalendar;

    aget-object v4, v4, v8

    invoke-virtual {v4}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "tempA":Lmf/javax/xml/datatype/XMLGregorianCalendar;
    check-cast v2, Lmf/javax/xml/datatype/XMLGregorianCalendar;

    .restart local v2    # "tempA":Lmf/javax/xml/datatype/XMLGregorianCalendar;
    sget-object v4, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->TEST_POINTS:[Lmf/javax/xml/datatype/XMLGregorianCalendar;

    aget-object v4, v4, v8

    invoke-virtual {v4}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "tempB":Lmf/javax/xml/datatype/XMLGregorianCalendar;
    check-cast v3, Lmf/javax/xml/datatype/XMLGregorianCalendar;

    .restart local v3    # "tempB":Lmf/javax/xml/datatype/XMLGregorianCalendar;
    invoke-virtual {v2, p1}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->add(Lmf/javax/xml/datatype/Duration;)V

    invoke-virtual {v3, p2}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->add(Lmf/javax/xml/datatype/Duration;)V

    invoke-virtual {v2, v3}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->compare(Lmf/javax/xml/datatype/XMLGregorianCalendar;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->compareResults(II)I

    move-result v0

    move v4, v0

    goto :goto_0
.end method

.method private compareResults(II)I
    .locals 1
    .param p1, "resultA"    # I
    .param p2, "resultB"    # I

    .prologue
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    move p1, v0

    .end local p1    # "resultA":I
    :cond_0
    :goto_0
    return p1

    .restart local p1    # "resultA":I
    :cond_1
    if-eq p1, p2, :cond_0

    move p1, v0

    goto :goto_0
.end method

.method private static getCalendarTimeInMillis(Ljava/util/Calendar;)J
    .locals 2
    .param p0, "cal"    # Ljava/util/Calendar;

    .prologue
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method private getFieldAsBigDecimal(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/math/BigDecimal;
    .locals 2
    .param p1, "f"    # Lmf/javax/xml/datatype/DatatypeConstants$Field;

    .prologue
    sget-object v1, Lmf/javax/xml/datatype/DatatypeConstants;->SECONDS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->seconds:Ljava/math/BigDecimal;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->seconds:Ljava/math/BigDecimal;

    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->ZERO:Ljava/math/BigDecimal;

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    .local v0, "bi":Ljava/math/BigInteger;
    if-nez v0, :cond_2

    sget-object v1, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->ZERO:Ljava/math/BigDecimal;

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    goto :goto_0
.end method

.method private getInt(Lmf/javax/xml/datatype/DatatypeConstants$Field;)I
    .locals 2
    .param p1, "field"    # Lmf/javax/xml/datatype/DatatypeConstants$Field;

    .prologue
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v0

    .local v0, "n":Ljava/lang/Number;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method private static isDigit(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isDigitOrPeriod(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    invoke-static {p0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->isDigit(C)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x2e

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static organizeParts(Ljava/lang/String;[Ljava/lang/String;[IILjava/lang/String;)V
    .locals 7
    .param p0, "whole"    # Ljava/lang/String;
    .param p1, "parts"    # [Ljava/lang/String;
    .param p2, "partsIndex"    # [I
    .param p3, "len"    # I
    .param p4, "tokens"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, "idx":I
    add-int/lit8 v0, p3, -0x1

    .local v0, "i":I
    :goto_0
    if-gez v0, :cond_0

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-gez v1, :cond_4

    return-void

    :cond_0
    aget-object v4, p1, v0

    if-nez v4, :cond_1

    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    aget-object v4, p1, v0

    aget-object v5, p1, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {p4, v4, v5}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v3

    .local v3, "nidx":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    add-int/lit8 v2, v3, 0x1

    .local v2, "j":I
    :goto_2
    if-lt v2, v1, :cond_3

    move v1, v3

    aget-object v4, p1, v0

    aput-object v4, p1, v1

    aget v4, p2, v0

    aput v4, p2, v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    aput-object v6, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v2    # "j":I
    .end local v3    # "nidx":I
    :cond_4
    aput-object v6, p1, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method private static parseBigDecimal(Ljava/lang/String;Ljava/lang/String;I)Ljava/math/BigDecimal;
    .locals 2
    .param p0, "whole"    # Ljava/lang/String;
    .param p1, "part"    # Ljava/lang/String;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static parseBigInteger(Ljava/lang/String;Ljava/lang/String;I)Ljava/math/BigInteger;
    .locals 2
    .param p0, "whole"    # Ljava/lang/String;
    .param p1, "part"    # Ljava/lang/String;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static parsePiece(Ljava/lang/String;[I)Ljava/lang/String;
    .locals 4
    .param p0, "whole"    # Ljava/lang/String;
    .param p1, "idx"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    aget v0, p1, v3

    .local v0, "start":I
    :goto_0
    aget v1, p1, v3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    aget v1, p1, v3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->isDigitOrPeriod(C)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    aget v1, p1, v3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v1, v2, :cond_2

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    aget v1, p1, v3

    add-int/lit8 v1, v1, 0x1

    aput v1, p1, v3

    goto :goto_0

    :cond_2
    aget v1, p1, v3

    add-int/lit8 v1, v1, 0x1

    aput v1, p1, v3

    aget v1, p1, v3

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static sanitize(Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;
    .locals 0
    .param p0, "value"    # Ljava/math/BigDecimal;
    .param p1, "signum"    # I

    .prologue
    if-eqz p1, :cond_0

    if-nez p0, :cond_2

    :cond_0
    sget-object p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->ZERO:Ljava/math/BigDecimal;

    .end local p0    # "value":Ljava/math/BigDecimal;
    :cond_1
    :goto_0
    return-object p0

    .restart local p0    # "value":Ljava/math/BigDecimal;
    :cond_2
    if-gtz p1, :cond_1

    invoke-virtual {p0}, Ljava/math/BigDecimal;->negate()Ljava/math/BigDecimal;

    move-result-object p0

    goto :goto_0
.end method

.method private static sanitize(Ljava/math/BigInteger;I)Ljava/math/BigDecimal;
    .locals 2
    .param p0, "value"    # Ljava/math/BigInteger;
    .param p1, "signum"    # I

    .prologue
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    :cond_0
    sget-object v0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->ZERO:Ljava/math/BigDecimal;

    :goto_0
    return-object v0

    :cond_1
    if-lez p1, :cond_2

    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    goto :goto_0
.end method

.method private static testNonNegative(Ljava/math/BigDecimal;Lmf/javax/xml/datatype/DatatypeConstants$Field;)V
    .locals 6
    .param p0, "n"    # Ljava/math/BigDecimal;
    .param p1, "f"    # Lmf/javax/xml/datatype/DatatypeConstants$Field;

    .prologue
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->signum()I

    move-result v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x0

    const-string v2, "NegativeField"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lmf/javax/xml/datatype/DatatypeConstants$Field;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private static testNonNegative(Ljava/math/BigInteger;Lmf/javax/xml/datatype/DatatypeConstants$Field;)V
    .locals 6
    .param p0, "n"    # Ljava/math/BigInteger;
    .param p1, "f"    # Lmf/javax/xml/datatype/DatatypeConstants$Field;

    .prologue
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x0

    const-string v2, "NegativeField"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lmf/javax/xml/datatype/DatatypeConstants$Field;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private static toBigInteger(Ljava/math/BigDecimal;Z)Ljava/math/BigInteger;
    .locals 1
    .param p0, "value"    # Ljava/math/BigDecimal;
    .param p1, "canBeNull"    # Z

    .prologue
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->signum()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_0
.end method

.method private toString(Ljava/math/BigDecimal;)Ljava/lang/String;
    .locals 7
    .param p1, "bd"    # Ljava/math/BigDecimal;

    .prologue
    invoke-virtual {p1}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v3

    .local v3, "intString":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/math/BigDecimal;->scale()I

    move-result v4

    .local v4, "scale":I
    if-nez v4, :cond_0

    .end local v3    # "intString":Ljava/lang/String;
    :goto_0
    return-object v3

    .restart local v3    # "intString":Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    sub-int v2, v5, v4

    .local v2, "insertionPoint":I
    if-nez v2, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "0."

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    if-lez v2, :cond_2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .local v0, "buf":Ljava/lang/StringBuffer;
    const/16 v5, 0x2e

    invoke-virtual {v0, v2, v5}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .end local v0    # "buf":Ljava/lang/StringBuffer;
    :cond_2
    new-instance v0, Ljava/lang/StringBuffer;

    rsub-int/lit8 v5, v2, 0x3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v0, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .restart local v0    # "buf":Ljava/lang/StringBuffer;
    const-string v5, "0."

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    neg-int v5, v2

    if-lt v1, v5, :cond_3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_3
    const/16 v5, 0x30

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method private static wrap(I)Ljava/math/BigInteger;
    .locals 2
    .param p0, "i"    # I

    .prologue
    const/high16 v0, -0x80000000

    if-ne p0, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    int-to-long v0, p0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    new-instance v0, Lmf/org/apache/xerces/jaxp/datatype/SerializedDuration;

    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/jaxp/datatype/SerializedDuration;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public add(Lmf/javax/xml/datatype/Duration;)Lmf/javax/xml/datatype/Duration;
    .locals 12
    .param p1, "rhs"    # Lmf/javax/xml/datatype/Duration;

    .prologue
    move-object v10, p0

    .local v10, "lhs":Lmf/javax/xml/datatype/Duration;
    const/4 v0, 0x6

    new-array v8, v0, [Ljava/math/BigDecimal;

    .local v8, "buf":[Ljava/math/BigDecimal;
    const/4 v1, 0x0

    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->YEARS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {v10, v0}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    invoke-virtual {v10}, Lmf/javax/xml/datatype/Duration;->getSign()I

    move-result v2

    invoke-static {v0, v2}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->sanitize(Ljava/math/BigInteger;I)Ljava/math/BigDecimal;

    move-result-object v2

    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->YEARS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p1, v0}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    invoke-virtual {p1}, Lmf/javax/xml/datatype/Duration;->getSign()I

    move-result v3

    invoke-static {v0, v3}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->sanitize(Ljava/math/BigInteger;I)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    aput-object v0, v8, v1

    const/4 v1, 0x1

    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->MONTHS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {v10, v0}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    invoke-virtual {v10}, Lmf/javax/xml/datatype/Duration;->getSign()I

    move-result v2

    invoke-static {v0, v2}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->sanitize(Ljava/math/BigInteger;I)Ljava/math/BigDecimal;

    move-result-object v2

    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->MONTHS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p1, v0}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    invoke-virtual {p1}, Lmf/javax/xml/datatype/Duration;->getSign()I

    move-result v3

    invoke-static {v0, v3}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->sanitize(Ljava/math/BigInteger;I)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    aput-object v0, v8, v1

    const/4 v1, 0x2

    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->DAYS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {v10, v0}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    invoke-virtual {v10}, Lmf/javax/xml/datatype/Duration;->getSign()I

    move-result v2

    invoke-static {v0, v2}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->sanitize(Ljava/math/BigInteger;I)Ljava/math/BigDecimal;

    move-result-object v2

    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->DAYS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p1, v0}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    invoke-virtual {p1}, Lmf/javax/xml/datatype/Duration;->getSign()I

    move-result v3

    invoke-static {v0, v3}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->sanitize(Ljava/math/BigInteger;I)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    aput-object v0, v8, v1

    const/4 v1, 0x3

    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->HOURS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {v10, v0}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    invoke-virtual {v10}, Lmf/javax/xml/datatype/Duration;->getSign()I

    move-result v2

    invoke-static {v0, v2}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->sanitize(Ljava/math/BigInteger;I)Ljava/math/BigDecimal;

    move-result-object v2

    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->HOURS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p1, v0}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    invoke-virtual {p1}, Lmf/javax/xml/datatype/Duration;->getSign()I

    move-result v3

    invoke-static {v0, v3}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->sanitize(Ljava/math/BigInteger;I)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    aput-object v0, v8, v1

    const/4 v1, 0x4

    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->MINUTES:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {v10, v0}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    invoke-virtual {v10}, Lmf/javax/xml/datatype/Duration;->getSign()I

    move-result v2

    invoke-static {v0, v2}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->sanitize(Ljava/math/BigInteger;I)Ljava/math/BigDecimal;

    move-result-object v2

    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->MINUTES:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p1, v0}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    invoke-virtual {p1}, Lmf/javax/xml/datatype/Duration;->getSign()I

    move-result v3

    invoke-static {v0, v3}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->sanitize(Ljava/math/BigInteger;I)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    aput-object v0, v8, v1

    const/4 v1, 0x5

    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->SECONDS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {v10, v0}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v0

    check-cast v0, Ljava/math/BigDecimal;

    invoke-virtual {v10}, Lmf/javax/xml/datatype/Duration;->getSign()I

    move-result v2

    invoke-static {v0, v2}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->sanitize(Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;

    move-result-object v2

    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->SECONDS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p1, v0}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v0

    check-cast v0, Ljava/math/BigDecimal;

    invoke-virtual {p1}, Lmf/javax/xml/datatype/Duration;->getSign()I

    move-result v3

    invoke-static {v0, v3}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->sanitize(Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    aput-object v0, v8, v1

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {v8, v0, v1}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->alignSigns([Ljava/math/BigDecimal;II)V

    const/4 v0, 0x2

    const/4 v1, 0x6

    invoke-static {v8, v0, v1}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->alignSigns([Ljava/math/BigDecimal;II)V

    const/4 v11, 0x0

    .local v11, "s":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    const/4 v0, 0x6

    if-lt v9, v0, :cond_0

    new-instance v0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;

    if-ltz v11, :cond_3

    const/4 v1, 0x1

    :goto_1
    const/4 v2, 0x0

    aget-object v2, v8, v2

    invoke-static {v2, v11}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->sanitize(Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;

    move-result-object v3

    sget-object v2, Lmf/javax/xml/datatype/DatatypeConstants;->YEARS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {v10, v2}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v2

    if-nez v2, :cond_4

    sget-object v2, Lmf/javax/xml/datatype/DatatypeConstants;->YEARS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p1, v2}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v2

    if-nez v2, :cond_4

    const/4 v2, 0x1

    :goto_2
    invoke-static {v3, v2}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->toBigInteger(Ljava/math/BigDecimal;Z)Ljava/math/BigInteger;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v3, v8, v3

    invoke-static {v3, v11}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->sanitize(Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;

    move-result-object v4

    sget-object v3, Lmf/javax/xml/datatype/DatatypeConstants;->MONTHS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {v10, v3}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v3

    if-nez v3, :cond_5

    sget-object v3, Lmf/javax/xml/datatype/DatatypeConstants;->MONTHS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p1, v3}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v3

    if-nez v3, :cond_5

    const/4 v3, 0x1

    :goto_3
    invoke-static {v4, v3}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->toBigInteger(Ljava/math/BigDecimal;Z)Ljava/math/BigInteger;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v4, v8, v4

    invoke-static {v4, v11}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->sanitize(Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;

    move-result-object v5

    sget-object v4, Lmf/javax/xml/datatype/DatatypeConstants;->DAYS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {v10, v4}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v4

    if-nez v4, :cond_6

    sget-object v4, Lmf/javax/xml/datatype/DatatypeConstants;->DAYS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p1, v4}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v4

    if-nez v4, :cond_6

    const/4 v4, 0x1

    :goto_4
    invoke-static {v5, v4}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->toBigInteger(Ljava/math/BigDecimal;Z)Ljava/math/BigInteger;

    move-result-object v4

    const/4 v5, 0x3

    aget-object v5, v8, v5

    invoke-static {v5, v11}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->sanitize(Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;

    move-result-object v6

    sget-object v5, Lmf/javax/xml/datatype/DatatypeConstants;->HOURS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {v10, v5}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v5

    if-nez v5, :cond_7

    sget-object v5, Lmf/javax/xml/datatype/DatatypeConstants;->HOURS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p1, v5}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v5

    if-nez v5, :cond_7

    const/4 v5, 0x1

    :goto_5
    invoke-static {v6, v5}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->toBigInteger(Ljava/math/BigDecimal;Z)Ljava/math/BigInteger;

    move-result-object v5

    const/4 v6, 0x4

    aget-object v6, v8, v6

    invoke-static {v6, v11}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->sanitize(Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;

    move-result-object v7

    sget-object v6, Lmf/javax/xml/datatype/DatatypeConstants;->MINUTES:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {v10, v6}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v6

    if-nez v6, :cond_8

    sget-object v6, Lmf/javax/xml/datatype/DatatypeConstants;->MINUTES:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p1, v6}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v6

    if-nez v6, :cond_8

    const/4 v6, 0x1

    :goto_6
    invoke-static {v7, v6}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->toBigInteger(Ljava/math/BigDecimal;Z)Ljava/math/BigInteger;

    move-result-object v6

    const/4 v7, 0x5

    aget-object v7, v8, v7

    invoke-virtual {v7}, Ljava/math/BigDecimal;->signum()I

    move-result v7

    if-nez v7, :cond_9

    sget-object v7, Lmf/javax/xml/datatype/DatatypeConstants;->SECONDS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {v10, v7}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v7

    if-nez v7, :cond_9

    sget-object v7, Lmf/javax/xml/datatype/DatatypeConstants;->SECONDS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p1, v7}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v7

    if-nez v7, :cond_9

    const/4 v7, 0x0

    :goto_7
    invoke-direct/range {v0 .. v7}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;-><init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigDecimal;)V

    return-object v0

    :cond_0
    aget-object v0, v8, v9

    invoke-virtual {v0}, Ljava/math/BigDecimal;->signum()I

    move-result v0

    mul-int/2addr v0, v11

    if-gez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1
    if-nez v11, :cond_2

    aget-object v0, v8, v9

    invoke-virtual {v0}, Ljava/math/BigDecimal;->signum()I

    move-result v11

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    :cond_3
    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_4
    const/4 v2, 0x0

    goto/16 :goto_2

    :cond_5
    const/4 v3, 0x0

    goto/16 :goto_3

    :cond_6
    const/4 v4, 0x0

    goto :goto_4

    :cond_7
    const/4 v5, 0x0

    goto :goto_5

    :cond_8
    const/4 v6, 0x0

    goto :goto_6

    :cond_9
    const/4 v7, 0x5

    aget-object v7, v8, v7

    invoke-static {v7, v11}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->sanitize(Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;

    move-result-object v7

    goto :goto_7
.end method

.method public addTo(Ljava/util/Calendar;)V
    .locals 6
    .param p1, "calendar"    # Ljava/util/Calendar;

    .prologue
    const/4 v5, 0x1

    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getYears()I

    move-result v2

    iget v3, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->signum:I

    mul-int/2addr v2, v3

    invoke-virtual {p1, v5, v2}, Ljava/util/Calendar;->add(II)V

    const/4 v2, 0x2

    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getMonths()I

    move-result v3

    iget v4, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->signum:I

    mul-int/2addr v3, v4

    invoke-virtual {p1, v2, v3}, Ljava/util/Calendar;->add(II)V

    const/4 v2, 0x5

    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getDays()I

    move-result v3

    iget v4, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->signum:I

    mul-int/2addr v3, v4

    invoke-virtual {p1, v2, v3}, Ljava/util/Calendar;->add(II)V

    const/16 v2, 0xa

    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getHours()I

    move-result v3

    iget v4, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->signum:I

    mul-int/2addr v3, v4

    invoke-virtual {p1, v2, v3}, Ljava/util/Calendar;->add(II)V

    const/16 v2, 0xc

    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getMinutes()I

    move-result v3

    iget v4, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->signum:I

    mul-int/2addr v3, v4

    invoke-virtual {p1, v2, v3}, Ljava/util/Calendar;->add(II)V

    const/16 v2, 0xd

    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getSeconds()I

    move-result v3

    iget v4, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->signum:I

    mul-int/2addr v3, v4

    invoke-virtual {p1, v2, v3}, Ljava/util/Calendar;->add(II)V

    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->seconds:Ljava/math/BigDecimal;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->seconds:Ljava/math/BigDecimal;

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->seconds:Ljava/math/BigDecimal;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    .local v0, "fraction":Ljava/math/BigDecimal;
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Ljava/math/BigDecimal;->movePointRight(I)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->intValue()I

    move-result v1

    .local v1, "millisec":I
    const/16 v2, 0xe

    iget v3, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->signum:I

    mul-int/2addr v3, v1

    invoke-virtual {p1, v2, v3}, Ljava/util/Calendar;->add(II)V

    .end local v0    # "fraction":Ljava/math/BigDecimal;
    .end local v1    # "millisec":I
    :cond_0
    return-void
.end method

.method public addTo(Ljava/util/Date;)V
    .locals 4
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->addTo(Ljava/util/Calendar;)V

    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getCalendarTimeInMillis(Ljava/util/Calendar;)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/util/Date;->setTime(J)V

    return-void
.end method

.method public compare(Lmf/javax/xml/datatype/Duration;)I
    .locals 21
    .param p1, "rhs"    # Lmf/javax/xml/datatype/Duration;

    .prologue
    const-wide/32 v6, 0x7fffffff

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v12

    .local v12, "maxintAsBigInteger":Ljava/math/BigInteger;
    move-object/from16 v0, p0

    iget-object v6, v0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->years:Ljava/math/BigInteger;

    if-eqz v6, :cond_0

    move-object/from16 v0, p0

    iget-object v6, v0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->years:Ljava/math/BigInteger;

    invoke-virtual {v6, v12}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    new-instance v6, Ljava/lang/UnsupportedOperationException;

    const/4 v7, 0x0

    const-string v8, "TooLarge"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v11, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, "#compare(Duration duration)"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v20, Lmf/javax/xml/datatype/DatatypeConstants;->YEARS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual/range {v20 .. v20}, Lmf/javax/xml/datatype/DatatypeConstants$Field;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->years:Ljava/math/BigInteger;

    invoke-virtual {v11}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v7, v8, v9}, Lmf/org/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->months:Ljava/math/BigInteger;

    if-eqz v6, :cond_1

    move-object/from16 v0, p0

    iget-object v6, v0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->months:Ljava/math/BigInteger;

    invoke-virtual {v6, v12}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    new-instance v6, Ljava/lang/UnsupportedOperationException;

    const/4 v7, 0x0

    const-string v8, "TooLarge"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v11, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, "#compare(Duration duration)"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v20, Lmf/javax/xml/datatype/DatatypeConstants;->MONTHS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual/range {v20 .. v20}, Lmf/javax/xml/datatype/DatatypeConstants$Field;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->months:Ljava/math/BigInteger;

    invoke-virtual {v11}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v7, v8, v9}, Lmf/org/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->days:Ljava/math/BigInteger;

    if-eqz v6, :cond_2

    move-object/from16 v0, p0

    iget-object v6, v0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->days:Ljava/math/BigInteger;

    invoke-virtual {v6, v12}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    new-instance v6, Ljava/lang/UnsupportedOperationException;

    const/4 v7, 0x0

    const-string v8, "TooLarge"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v11, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, "#compare(Duration duration)"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v20, Lmf/javax/xml/datatype/DatatypeConstants;->DAYS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual/range {v20 .. v20}, Lmf/javax/xml/datatype/DatatypeConstants$Field;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->days:Ljava/math/BigInteger;

    invoke-virtual {v11}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v7, v8, v9}, Lmf/org/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->hours:Ljava/math/BigInteger;

    if-eqz v6, :cond_3

    move-object/from16 v0, p0

    iget-object v6, v0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->hours:Ljava/math/BigInteger;

    invoke-virtual {v6, v12}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    new-instance v6, Ljava/lang/UnsupportedOperationException;

    const/4 v7, 0x0

    const-string v8, "TooLarge"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v11, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, "#compare(Duration duration)"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v20, Lmf/javax/xml/datatype/DatatypeConstants;->HOURS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual/range {v20 .. v20}, Lmf/javax/xml/datatype/DatatypeConstants$Field;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->hours:Ljava/math/BigInteger;

    invoke-virtual {v11}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v7, v8, v9}, Lmf/org/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->minutes:Ljava/math/BigInteger;

    if-eqz v6, :cond_4

    move-object/from16 v0, p0

    iget-object v6, v0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->minutes:Ljava/math/BigInteger;

    invoke-virtual {v6, v12}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4

    new-instance v6, Ljava/lang/UnsupportedOperationException;

    const/4 v7, 0x0

    const-string v8, "TooLarge"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v11, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, "#compare(Duration duration)"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v20, Lmf/javax/xml/datatype/DatatypeConstants;->MINUTES:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual/range {v20 .. v20}, Lmf/javax/xml/datatype/DatatypeConstants$Field;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->minutes:Ljava/math/BigInteger;

    invoke-virtual {v11}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v7, v8, v9}, Lmf/org/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_4
    move-object/from16 v0, p0

    iget-object v6, v0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->seconds:Ljava/math/BigDecimal;

    if-eqz v6, :cond_5

    move-object/from16 v0, p0

    iget-object v6, v0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->seconds:Ljava/math/BigDecimal;

    invoke-virtual {v6}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_5

    new-instance v6, Ljava/lang/UnsupportedOperationException;

    const/4 v7, 0x0

    const-string v8, "TooLarge"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v11, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, "#compare(Duration duration)"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v20, Lmf/javax/xml/datatype/DatatypeConstants;->SECONDS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual/range {v20 .. v20}, Lmf/javax/xml/datatype/DatatypeConstants$Field;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->seconds:Ljava/math/BigDecimal;

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->toString(Ljava/math/BigDecimal;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v7, v8, v9}, Lmf/org/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_5
    sget-object v6, Lmf/javax/xml/datatype/DatatypeConstants;->YEARS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v19

    check-cast v19, Ljava/math/BigInteger;

    .local v19, "rhsYears":Ljava/math/BigInteger;
    if-eqz v19, :cond_6

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_6

    new-instance v6, Ljava/lang/UnsupportedOperationException;

    const/4 v7, 0x0

    const-string v8, "TooLarge"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v11, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, "#compare(Duration duration)"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v20, Lmf/javax/xml/datatype/DatatypeConstants;->YEARS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual/range {v20 .. v20}, Lmf/javax/xml/datatype/DatatypeConstants$Field;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-virtual/range {v19 .. v19}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v7, v8, v9}, Lmf/org/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_6
    sget-object v6, Lmf/javax/xml/datatype/DatatypeConstants;->MONTHS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v16

    check-cast v16, Ljava/math/BigInteger;

    .local v16, "rhsMonths":Ljava/math/BigInteger;
    if-eqz v16, :cond_7

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_7

    new-instance v6, Ljava/lang/UnsupportedOperationException;

    const/4 v7, 0x0

    const-string v8, "TooLarge"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v11, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, "#compare(Duration duration)"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v20, Lmf/javax/xml/datatype/DatatypeConstants;->MONTHS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual/range {v20 .. v20}, Lmf/javax/xml/datatype/DatatypeConstants$Field;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-virtual/range {v16 .. v16}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v7, v8, v9}, Lmf/org/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_7
    sget-object v6, Lmf/javax/xml/datatype/DatatypeConstants;->DAYS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v13

    check-cast v13, Ljava/math/BigInteger;

    .local v13, "rhsDays":Ljava/math/BigInteger;
    if-eqz v13, :cond_8

    invoke-virtual {v13, v12}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_8

    new-instance v6, Ljava/lang/UnsupportedOperationException;

    const/4 v7, 0x0

    const-string v8, "TooLarge"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v11, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, "#compare(Duration duration)"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v20, Lmf/javax/xml/datatype/DatatypeConstants;->DAYS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual/range {v20 .. v20}, Lmf/javax/xml/datatype/DatatypeConstants$Field;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-virtual {v13}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v7, v8, v9}, Lmf/org/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_8
    sget-object v6, Lmf/javax/xml/datatype/DatatypeConstants;->HOURS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v14

    check-cast v14, Ljava/math/BigInteger;

    .local v14, "rhsHours":Ljava/math/BigInteger;
    if-eqz v14, :cond_9

    invoke-virtual {v14, v12}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_9

    new-instance v6, Ljava/lang/UnsupportedOperationException;

    const/4 v7, 0x0

    const-string v8, "TooLarge"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v11, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, "#compare(Duration duration)"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v20, Lmf/javax/xml/datatype/DatatypeConstants;->HOURS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual/range {v20 .. v20}, Lmf/javax/xml/datatype/DatatypeConstants$Field;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-virtual {v14}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v7, v8, v9}, Lmf/org/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_9
    sget-object v6, Lmf/javax/xml/datatype/DatatypeConstants;->MINUTES:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v15

    check-cast v15, Ljava/math/BigInteger;

    .local v15, "rhsMinutes":Ljava/math/BigInteger;
    if-eqz v15, :cond_a

    invoke-virtual {v15, v12}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_a

    new-instance v6, Ljava/lang/UnsupportedOperationException;

    const/4 v7, 0x0

    const-string v8, "TooLarge"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v11, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, "#compare(Duration duration)"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v20, Lmf/javax/xml/datatype/DatatypeConstants;->MINUTES:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual/range {v20 .. v20}, Lmf/javax/xml/datatype/DatatypeConstants$Field;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-virtual {v15}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v7, v8, v9}, Lmf/org/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_a
    sget-object v6, Lmf/javax/xml/datatype/DatatypeConstants;->SECONDS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lmf/javax/xml/datatype/Duration;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v18

    check-cast v18, Ljava/math/BigDecimal;

    .local v18, "rhsSecondsAsBigDecimal":Ljava/math/BigDecimal;
    const/16 v17, 0x0

    .local v17, "rhsSeconds":Ljava/math/BigInteger;
    if-eqz v18, :cond_b

    invoke-virtual/range {v18 .. v18}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v17

    :cond_b
    if-eqz v17, :cond_c

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_c

    new-instance v6, Ljava/lang/UnsupportedOperationException;

    const/4 v7, 0x0

    const-string v8, "TooLarge"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v11, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, "#compare(Duration duration)"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v20, Lmf/javax/xml/datatype/DatatypeConstants;->SECONDS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual/range {v20 .. v20}, Lmf/javax/xml/datatype/DatatypeConstants$Field;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-virtual/range {v17 .. v17}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v7, v8, v9}, Lmf/org/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_c
    new-instance v4, Ljava/util/GregorianCalendar;

    const/16 v5, 0x7b2

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v4 .. v10}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    .local v4, "lhsCalendar":Ljava/util/GregorianCalendar;
    const/4 v6, 0x1

    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getYears()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getSign()I

    move-result v8

    mul-int/2addr v7, v8

    invoke-virtual {v4, v6, v7}, Ljava/util/GregorianCalendar;->add(II)V

    const/4 v6, 0x2

    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getMonths()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getSign()I

    move-result v8

    mul-int/2addr v7, v8

    invoke-virtual {v4, v6, v7}, Ljava/util/GregorianCalendar;->add(II)V

    const/4 v6, 0x6

    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getDays()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getSign()I

    move-result v8

    mul-int/2addr v7, v8

    invoke-virtual {v4, v6, v7}, Ljava/util/GregorianCalendar;->add(II)V

    const/16 v6, 0xb

    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getHours()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getSign()I

    move-result v8

    mul-int/2addr v7, v8

    invoke-virtual {v4, v6, v7}, Ljava/util/GregorianCalendar;->add(II)V

    const/16 v6, 0xc

    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getMinutes()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getSign()I

    move-result v8

    mul-int/2addr v7, v8

    invoke-virtual {v4, v6, v7}, Ljava/util/GregorianCalendar;->add(II)V

    const/16 v6, 0xd

    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getSeconds()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getSign()I

    move-result v8

    mul-int/2addr v7, v8

    invoke-virtual {v4, v6, v7}, Ljava/util/GregorianCalendar;->add(II)V

    new-instance v5, Ljava/util/GregorianCalendar;

    const/16 v6, 0x7b2

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v5 .. v11}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    .local v5, "rhsCalendar":Ljava/util/GregorianCalendar;
    const/4 v6, 0x1

    invoke-virtual/range {p1 .. p1}, Lmf/javax/xml/datatype/Duration;->getYears()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lmf/javax/xml/datatype/Duration;->getSign()I

    move-result v8

    mul-int/2addr v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/util/GregorianCalendar;->add(II)V

    const/4 v6, 0x2

    invoke-virtual/range {p1 .. p1}, Lmf/javax/xml/datatype/Duration;->getMonths()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lmf/javax/xml/datatype/Duration;->getSign()I

    move-result v8

    mul-int/2addr v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/util/GregorianCalendar;->add(II)V

    const/4 v6, 0x6

    invoke-virtual/range {p1 .. p1}, Lmf/javax/xml/datatype/Duration;->getDays()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lmf/javax/xml/datatype/Duration;->getSign()I

    move-result v8

    mul-int/2addr v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/util/GregorianCalendar;->add(II)V

    const/16 v6, 0xb

    invoke-virtual/range {p1 .. p1}, Lmf/javax/xml/datatype/Duration;->getHours()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lmf/javax/xml/datatype/Duration;->getSign()I

    move-result v8

    mul-int/2addr v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/util/GregorianCalendar;->add(II)V

    const/16 v6, 0xc

    invoke-virtual/range {p1 .. p1}, Lmf/javax/xml/datatype/Duration;->getMinutes()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lmf/javax/xml/datatype/Duration;->getSign()I

    move-result v8

    mul-int/2addr v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/util/GregorianCalendar;->add(II)V

    const/16 v6, 0xd

    invoke-virtual/range {p1 .. p1}, Lmf/javax/xml/datatype/Duration;->getSeconds()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lmf/javax/xml/datatype/Duration;->getSign()I

    move-result v8

    mul-int/2addr v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/util/GregorianCalendar;->add(II)V

    invoke-virtual {v4, v5}, Ljava/util/GregorianCalendar;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    const/4 v6, 0x0

    :goto_0
    return v6

    :cond_d
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->compareDates(Lmf/javax/xml/datatype/Duration;Lmf/javax/xml/datatype/Duration;)I

    move-result v6

    goto :goto_0
.end method

.method public getDays()I
    .locals 1

    .prologue
    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->DAYS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getInt(Lmf/javax/xml/datatype/DatatypeConstants$Field;)I

    move-result v0

    return v0
.end method

.method public getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;
    .locals 7
    .param p1, "field"    # Lmf/javax/xml/datatype/DatatypeConstants$Field;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-nez p1, :cond_0

    const-string v0, "javax.xml.datatype.Duration#isSet(DatatypeConstants.Field field) "

    .local v0, "methodName":Ljava/lang/String;
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "FieldCannotBeNull"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v6, v2, v3}, Lmf/org/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .end local v0    # "methodName":Ljava/lang/String;
    :cond_0
    sget-object v1, Lmf/javax/xml/datatype/DatatypeConstants;->YEARS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->years:Ljava/math/BigInteger;

    :goto_0
    return-object v1

    :cond_1
    sget-object v1, Lmf/javax/xml/datatype/DatatypeConstants;->MONTHS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->months:Ljava/math/BigInteger;

    goto :goto_0

    :cond_2
    sget-object v1, Lmf/javax/xml/datatype/DatatypeConstants;->DAYS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    if-ne p1, v1, :cond_3

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->days:Ljava/math/BigInteger;

    goto :goto_0

    :cond_3
    sget-object v1, Lmf/javax/xml/datatype/DatatypeConstants;->HOURS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    if-ne p1, v1, :cond_4

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->hours:Ljava/math/BigInteger;

    goto :goto_0

    :cond_4
    sget-object v1, Lmf/javax/xml/datatype/DatatypeConstants;->MINUTES:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    if-ne p1, v1, :cond_5

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->minutes:Ljava/math/BigInteger;

    goto :goto_0

    :cond_5
    sget-object v1, Lmf/javax/xml/datatype/DatatypeConstants;->SECONDS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    if-ne p1, v1, :cond_6

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->seconds:Ljava/math/BigDecimal;

    goto :goto_0

    :cond_6
    const-string v0, "javax.xml.datatype.Duration#(getSet(DatatypeConstants.Field field)"

    .restart local v0    # "methodName":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "UnknownField"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-virtual {p1}, Lmf/javax/xml/datatype/DatatypeConstants$Field;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v6, v2, v3}, Lmf/org/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getHours()I
    .locals 1

    .prologue
    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->HOURS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getInt(Lmf/javax/xml/datatype/DatatypeConstants$Field;)I

    move-result v0

    return v0
.end method

.method public getMinutes()I
    .locals 1

    .prologue
    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->MINUTES:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getInt(Lmf/javax/xml/datatype/DatatypeConstants$Field;)I

    move-result v0

    return v0
.end method

.method public getMonths()I
    .locals 1

    .prologue
    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->MONTHS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getInt(Lmf/javax/xml/datatype/DatatypeConstants$Field;)I

    move-result v0

    return v0
.end method

.method public getSeconds()I
    .locals 1

    .prologue
    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->SECONDS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getInt(Lmf/javax/xml/datatype/DatatypeConstants$Field;)I

    move-result v0

    return v0
.end method

.method public getSign()I
    .locals 1

    .prologue
    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->signum:I

    return v0
.end method

.method public getTimeInMillis(Ljava/util/Calendar;)J
    .locals 6
    .param p1, "startInstant"    # Ljava/util/Calendar;

    .prologue
    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->addTo(Ljava/util/Calendar;)V

    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getCalendarTimeInMillis(Ljava/util/Calendar;)J

    move-result-wide v2

    invoke-static {p1}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getCalendarTimeInMillis(Ljava/util/Calendar;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    return-wide v2
.end method

.method public getTimeInMillis(Ljava/util/Date;)J
    .locals 6
    .param p1, "startInstant"    # Ljava/util/Date;

    .prologue
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->addTo(Ljava/util/Calendar;)V

    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getCalendarTimeInMillis(Ljava/util/Calendar;)J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    return-wide v2
.end method

.method public getYears()I
    .locals 1

    .prologue
    sget-object v0, Lmf/javax/xml/datatype/DatatypeConstants;->YEARS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getInt(Lmf/javax/xml/datatype/DatatypeConstants$Field;)I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    sget-object v1, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->TEST_POINTS:[Lmf/javax/xml/datatype/XMLGregorianCalendar;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lmf/javax/xml/datatype/XMLGregorianCalendar;->toGregorianCalendar()Ljava/util/GregorianCalendar;

    move-result-object v0

    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->addTo(Ljava/util/Calendar;)V

    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getCalendarTimeInMillis(Ljava/util/Calendar;)J

    move-result-wide v2

    long-to-int v1, v2

    return v1
.end method

.method public isSet(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Z
    .locals 7
    .param p1, "field"    # Lmf/javax/xml/datatype/DatatypeConstants$Field;

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    const-string v0, "javax.xml.datatype.Duration#isSet(DatatypeConstants.Field field)"

    .local v0, "methodName":Ljava/lang/String;
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "FieldCannotBeNull"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    invoke-static {v6, v4, v1}, Lmf/org/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .end local v0    # "methodName":Ljava/lang/String;
    :cond_0
    sget-object v3, Lmf/javax/xml/datatype/DatatypeConstants;->YEARS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    if-ne p1, v3, :cond_3

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->years:Ljava/math/BigInteger;

    if-eqz v3, :cond_2

    :cond_1
    :goto_0
    return v1

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    sget-object v3, Lmf/javax/xml/datatype/DatatypeConstants;->MONTHS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    if-ne p1, v3, :cond_4

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->months:Ljava/math/BigInteger;

    if-nez v3, :cond_1

    move v1, v2

    goto :goto_0

    :cond_4
    sget-object v3, Lmf/javax/xml/datatype/DatatypeConstants;->DAYS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    if-ne p1, v3, :cond_5

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->days:Ljava/math/BigInteger;

    if-nez v3, :cond_1

    move v1, v2

    goto :goto_0

    :cond_5
    sget-object v3, Lmf/javax/xml/datatype/DatatypeConstants;->HOURS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    if-ne p1, v3, :cond_6

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->hours:Ljava/math/BigInteger;

    if-nez v3, :cond_1

    move v1, v2

    goto :goto_0

    :cond_6
    sget-object v3, Lmf/javax/xml/datatype/DatatypeConstants;->MINUTES:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    if-ne p1, v3, :cond_7

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->minutes:Ljava/math/BigInteger;

    if-nez v3, :cond_1

    move v1, v2

    goto :goto_0

    :cond_7
    sget-object v3, Lmf/javax/xml/datatype/DatatypeConstants;->SECONDS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    if-ne p1, v3, :cond_8

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->seconds:Ljava/math/BigDecimal;

    if-nez v3, :cond_1

    move v1, v2

    goto :goto_0

    :cond_8
    const-string v0, "javax.xml.datatype.Duration#isSet(DatatypeConstants.Field field)"

    .restart local v0    # "methodName":Ljava/lang/String;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "UnknownField"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v2

    invoke-virtual {p1}, Lmf/javax/xml/datatype/DatatypeConstants$Field;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    invoke-static {v6, v4, v5}, Lmf/org/apache/xerces/util/DatatypeMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public multiply(I)Lmf/javax/xml/datatype/Duration;
    .locals 2
    .param p1, "factor"    # I

    .prologue
    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->multiply(Ljava/math/BigDecimal;)Lmf/javax/xml/datatype/Duration;

    move-result-object v0

    return-object v0
.end method

.method public multiply(Ljava/math/BigDecimal;)Lmf/javax/xml/datatype/Duration;
    .locals 13
    .param p1, "factor"    # Ljava/math/BigDecimal;

    .prologue
    sget-object v10, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->ZERO:Ljava/math/BigDecimal;

    .local v10, "carry":Ljava/math/BigDecimal;
    invoke-virtual {p1}, Ljava/math/BigDecimal;->signum()I

    move-result v11

    .local v11, "factorSign":I
    invoke-virtual {p1}, Ljava/math/BigDecimal;->abs()Ljava/math/BigDecimal;

    move-result-object p1

    const/4 v0, 0x6

    new-array v9, v0, [Ljava/math/BigDecimal;

    .local v9, "buf":[Ljava/math/BigDecimal;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    const/4 v0, 0x5

    if-lt v12, v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->seconds:Ljava/math/BigDecimal;

    if-eqz v0, :cond_3

    const/4 v0, 0x5

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->seconds:Ljava/math/BigDecimal;

    invoke-virtual {v1, p1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    aput-object v1, v9, v0

    :goto_1
    new-instance v0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;

    iget v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->signum:I

    mul-int/2addr v1, v11

    if-ltz v1, :cond_4

    const/4 v1, 0x1

    :goto_2
    const/4 v2, 0x0

    aget-object v3, v9, v2

    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->years:Ljava/math/BigInteger;

    if-nez v2, :cond_5

    const/4 v2, 0x1

    :goto_3
    invoke-static {v3, v2}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->toBigInteger(Ljava/math/BigDecimal;Z)Ljava/math/BigInteger;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v4, v9, v3

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->months:Ljava/math/BigInteger;

    if-nez v3, :cond_6

    const/4 v3, 0x1

    :goto_4
    invoke-static {v4, v3}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->toBigInteger(Ljava/math/BigDecimal;Z)Ljava/math/BigInteger;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v5, v9, v4

    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->days:Ljava/math/BigInteger;

    if-nez v4, :cond_7

    const/4 v4, 0x1

    :goto_5
    invoke-static {v5, v4}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->toBigInteger(Ljava/math/BigDecimal;Z)Ljava/math/BigInteger;

    move-result-object v4

    const/4 v5, 0x3

    aget-object v6, v9, v5

    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->hours:Ljava/math/BigInteger;

    if-nez v5, :cond_8

    const/4 v5, 0x1

    :goto_6
    invoke-static {v6, v5}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->toBigInteger(Ljava/math/BigDecimal;Z)Ljava/math/BigInteger;

    move-result-object v5

    const/4 v6, 0x4

    aget-object v7, v9, v6

    iget-object v6, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->minutes:Ljava/math/BigInteger;

    if-nez v6, :cond_9

    const/4 v6, 0x1

    :goto_7
    invoke-static {v7, v6}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->toBigInteger(Ljava/math/BigDecimal;Z)Ljava/math/BigInteger;

    move-result-object v6

    const/4 v7, 0x5

    aget-object v7, v9, v7

    invoke-virtual {v7}, Ljava/math/BigDecimal;->signum()I

    move-result v7

    if-nez v7, :cond_a

    iget-object v7, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->seconds:Ljava/math/BigDecimal;

    if-nez v7, :cond_a

    const/4 v7, 0x0

    :goto_8
    invoke-direct/range {v0 .. v7}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;-><init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigDecimal;)V

    return-object v0

    :cond_0
    sget-object v0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->FIELDS:[Lmf/javax/xml/datatype/DatatypeConstants$Field;

    aget-object v0, v0, v12

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getFieldAsBigDecimal(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/math/BigDecimal;

    move-result-object v8

    .local v8, "bd":Ljava/math/BigDecimal;
    invoke-virtual {v8, p1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v8

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {v8, v0, v1}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    aput-object v0, v9, v12

    aget-object v0, v9, v12

    invoke-virtual {v8, v0}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v8

    const/4 v0, 0x1

    if-ne v12, v0, :cond_2

    invoke-virtual {v8}, Ljava/math/BigDecimal;->signum()I

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1
    sget-object v10, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->ZERO:Ljava/math/BigDecimal;

    :goto_9
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    :cond_2
    sget-object v0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->FACTORS:[Ljava/math/BigDecimal;

    aget-object v0, v0, v12

    invoke-virtual {v8, v0}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v10

    goto :goto_9

    .end local v8    # "bd":Ljava/math/BigDecimal;
    :cond_3
    const/4 v0, 0x5

    aput-object v10, v9, v0

    goto/16 :goto_1

    :cond_4
    const/4 v1, 0x0

    goto/16 :goto_2

    :cond_5
    const/4 v2, 0x0

    goto/16 :goto_3

    :cond_6
    const/4 v3, 0x0

    goto/16 :goto_4

    :cond_7
    const/4 v4, 0x0

    goto :goto_5

    :cond_8
    const/4 v5, 0x0

    goto :goto_6

    :cond_9
    const/4 v6, 0x0

    goto :goto_7

    :cond_a
    const/4 v7, 0x5

    aget-object v7, v9, v7

    goto :goto_8
.end method

.method public negate()Lmf/javax/xml/datatype/Duration;
    .locals 8

    .prologue
    new-instance v0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;

    iget v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->signum:I

    if-gtz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->years:Ljava/math/BigInteger;

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->months:Ljava/math/BigInteger;

    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->days:Ljava/math/BigInteger;

    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->hours:Ljava/math/BigInteger;

    iget-object v6, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->minutes:Ljava/math/BigInteger;

    iget-object v7, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->seconds:Ljava/math/BigDecimal;

    invoke-direct/range {v0 .. v7}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;-><init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigDecimal;)V

    return-object v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public normalizeWith(Ljava/util/Calendar;)Lmf/javax/xml/datatype/Duration;
    .locals 12
    .param p1, "startTimeInstant"    # Ljava/util/Calendar;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Calendar;

    .local v8, "c":Ljava/util/Calendar;
    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getYears()I

    move-result v0

    iget v3, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->signum:I

    mul-int/2addr v0, v3

    invoke-virtual {v8, v1, v0}, Ljava/util/Calendar;->add(II)V

    const/4 v0, 0x2

    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getMonths()I

    move-result v3

    iget v4, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->signum:I

    mul-int/2addr v3, v4

    invoke-virtual {v8, v0, v3}, Ljava/util/Calendar;->add(II)V

    const/4 v0, 0x5

    invoke-virtual {p0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getDays()I

    move-result v3

    iget v4, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->signum:I

    mul-int/2addr v3, v4

    invoke-virtual {v8, v0, v3}, Ljava/util/Calendar;->add(II)V

    invoke-static {v8}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getCalendarTimeInMillis(Ljava/util/Calendar;)J

    move-result-wide v4

    invoke-static {p1}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getCalendarTimeInMillis(Ljava/util/Calendar;)J

    move-result-wide v6

    sub-long v10, v4, v6

    .local v10, "diff":J
    const-wide/32 v4, 0x5265c00

    div-long v4, v10, v4

    long-to-int v9, v4

    .local v9, "days":I
    new-instance v0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;

    if-ltz v9, :cond_0

    :goto_0
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v3}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->wrap(I)Ljava/math/BigInteger;

    move-result-object v4

    sget-object v3, Lmf/javax/xml/datatype/DatatypeConstants;->HOURS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v5

    check-cast v5, Ljava/math/BigInteger;

    sget-object v3, Lmf/javax/xml/datatype/DatatypeConstants;->MINUTES:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v6

    check-cast v6, Ljava/math/BigInteger;

    sget-object v3, Lmf/javax/xml/datatype/DatatypeConstants;->SECONDS:Lmf/javax/xml/datatype/DatatypeConstants$Field;

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->getField(Lmf/javax/xml/datatype/DatatypeConstants$Field;)Ljava/lang/Number;

    move-result-object v7

    check-cast v7, Ljava/math/BigDecimal;

    move-object v3, v2

    invoke-direct/range {v0 .. v7}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;-><init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigDecimal;)V

    return-object v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public signum()I
    .locals 1

    .prologue
    iget v0, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->signum:I

    return v0
.end method

.method public subtract(Lmf/javax/xml/datatype/Duration;)Lmf/javax/xml/datatype/Duration;
    .locals 1
    .param p1, "rhs"    # Lmf/javax/xml/datatype/Duration;

    .prologue
    invoke-virtual {p1}, Lmf/javax/xml/datatype/Duration;->negate()Lmf/javax/xml/datatype/Duration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->add(Lmf/javax/xml/datatype/Duration;)Lmf/javax/xml/datatype/Duration;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x4d

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .local v0, "buf":Ljava/lang/StringBuffer;
    iget v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->signum:I

    if-gez v1, :cond_0

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->years:Ljava/math/BigInteger;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->years:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v2, 0x59

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->months:Ljava/math/BigInteger;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->months:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_2
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->days:Ljava/math/BigInteger;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->days:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v2, 0x44

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_3
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->hours:Ljava/math/BigInteger;

    if-nez v1, :cond_4

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->minutes:Ljava/math/BigInteger;

    if-nez v1, :cond_4

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->seconds:Ljava/math/BigDecimal;

    if-eqz v1, :cond_7

    :cond_4
    const/16 v1, 0x54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->hours:Ljava/math/BigInteger;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->hours:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v2, 0x48

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_5
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->minutes:Ljava/math/BigInteger;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->minutes:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_6
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->seconds:Ljava/math/BigDecimal;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->seconds:Ljava/math/BigDecimal;

    invoke-direct {p0, v1}, Lmf/org/apache/xerces/jaxp/datatype/DurationImpl;->toString(Ljava/math/BigDecimal;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v2, 0x53

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
