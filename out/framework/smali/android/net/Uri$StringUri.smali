.class Landroid/net/Uri$StringUri;
.super Landroid/net/Uri$AbstractHierarchicalUri;
.source "Uri.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/Uri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StringUri"
.end annotation


# static fields
.field static final TYPE_ID:I = 0x1


# instance fields
.field private authority:Landroid/net/Uri$Part;

.field private volatile cachedFsi:I

.field private volatile cachedSsi:I

.field private fragment:Landroid/net/Uri$Part;

.field private path:Landroid/net/Uri$PathPart;

.field private query:Landroid/net/Uri$Part;

.field private volatile scheme:Ljava/lang/String;

.field private ssp:Landroid/net/Uri$Part;

.field private final uriString:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "uriString"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x2

    .line 474
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/net/Uri$AbstractHierarchicalUri;-><init>(Landroid/net/Uri$1;)V

    .line 496
    iput v1, p0, Landroid/net/Uri$StringUri;->cachedSsi:I

    .line 506
    iput v1, p0, Landroid/net/Uri$StringUri;->cachedFsi:I

    .line 537
    # getter for: Landroid/net/Uri;->NOT_CACHED:Ljava/lang/String;
    invoke-static {}, Landroid/net/Uri;->access$300()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/Uri$StringUri;->scheme:Ljava/lang/String;

    .line 475
    if-nez p1, :cond_0

    .line 476
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "uriString"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 479
    :cond_0
    iput-object p1, p0, Landroid/net/Uri$StringUri;->uriString:Ljava/lang/String;

    .line 480
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Landroid/net/Uri$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Landroid/net/Uri$1;

    .prologue
    .line 466
    invoke-direct {p0, p1}, Landroid/net/Uri$StringUri;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private findFragmentSeparator()I
    .locals 3

    .prologue
    .line 510
    iget v0, p0, Landroid/net/Uri$StringUri;->cachedFsi:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/net/Uri$StringUri;->uriString:Ljava/lang/String;

    const/16 v1, 0x23

    invoke-direct {p0}, Landroid/net/Uri$StringUri;->findSchemeSeparator()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    iput v0, p0, Landroid/net/Uri$StringUri;->cachedFsi:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/net/Uri$StringUri;->cachedFsi:I

    goto :goto_0
.end method

.method private findSchemeSeparator()I
    .locals 2

    .prologue
    .line 500
    iget v0, p0, Landroid/net/Uri$StringUri;->cachedSsi:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/net/Uri$StringUri;->uriString:Ljava/lang/String;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    iput v0, p0, Landroid/net/Uri$StringUri;->cachedSsi:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/net/Uri$StringUri;->cachedSsi:I

    goto :goto_0
.end method

.method private getAuthorityPart()Landroid/net/Uri$Part;
    .locals 3

    .prologue
    .line 577
    iget-object v1, p0, Landroid/net/Uri$StringUri;->authority:Landroid/net/Uri$Part;

    if-nez v1, :cond_0

    .line 578
    iget-object v1, p0, Landroid/net/Uri$StringUri;->uriString:Ljava/lang/String;

    invoke-direct {p0}, Landroid/net/Uri$StringUri;->findSchemeSeparator()I

    move-result v2

    invoke-static {v1, v2}, Landroid/net/Uri$StringUri;->parseAuthority(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 580
    .local v0, "encodedAuthority":Ljava/lang/String;
    invoke-static {v0}, Landroid/net/Uri$Part;->fromEncoded(Ljava/lang/String;)Landroid/net/Uri$Part;

    move-result-object v1

    iput-object v1, p0, Landroid/net/Uri$StringUri;->authority:Landroid/net/Uri$Part;

    .line 583
    .end local v0    # "encodedAuthority":Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Landroid/net/Uri$StringUri;->authority:Landroid/net/Uri$Part;

    goto :goto_0
.end method

.method private getFragmentPart()Landroid/net/Uri$Part;
    .locals 1

    .prologue
    .line 679
    iget-object v0, p0, Landroid/net/Uri$StringUri;->fragment:Landroid/net/Uri$Part;

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/net/Uri$StringUri;->parseFragment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri$Part;->fromEncoded(Ljava/lang/String;)Landroid/net/Uri$Part;

    move-result-object v0

    iput-object v0, p0, Landroid/net/Uri$StringUri;->fragment:Landroid/net/Uri$Part;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/net/Uri$StringUri;->fragment:Landroid/net/Uri$Part;

    goto :goto_0
.end method

.method private getPathPart()Landroid/net/Uri$PathPart;
    .locals 1

    .prologue
    .line 597
    iget-object v0, p0, Landroid/net/Uri$StringUri;->path:Landroid/net/Uri$PathPart;

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/net/Uri$StringUri;->parsePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri$PathPart;->fromEncoded(Ljava/lang/String;)Landroid/net/Uri$PathPart;

    move-result-object v0

    iput-object v0, p0, Landroid/net/Uri$StringUri;->path:Landroid/net/Uri$PathPart;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/net/Uri$StringUri;->path:Landroid/net/Uri$PathPart;

    goto :goto_0
.end method

.method private getQueryPart()Landroid/net/Uri$Part;
    .locals 1

    .prologue
    .line 642
    iget-object v0, p0, Landroid/net/Uri$StringUri;->query:Landroid/net/Uri$Part;

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/net/Uri$StringUri;->parseQuery()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri$Part;->fromEncoded(Ljava/lang/String;)Landroid/net/Uri$Part;

    move-result-object v0

    iput-object v0, p0, Landroid/net/Uri$StringUri;->query:Landroid/net/Uri$Part;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/net/Uri$StringUri;->query:Landroid/net/Uri$Part;

    goto :goto_0
.end method

.method private getSsp()Landroid/net/Uri$Part;
    .locals 1

    .prologue
    .line 553
    iget-object v0, p0, Landroid/net/Uri$StringUri;->ssp:Landroid/net/Uri$Part;

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/net/Uri$StringUri;->parseSsp()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri$Part;->fromEncoded(Ljava/lang/String;)Landroid/net/Uri$Part;

    move-result-object v0

    iput-object v0, p0, Landroid/net/Uri$StringUri;->ssp:Landroid/net/Uri$Part;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/net/Uri$StringUri;->ssp:Landroid/net/Uri$Part;

    goto :goto_0
.end method

.method static parseAuthority(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p0, "uriString"    # Ljava/lang/String;
    .param p1, "ssi"    # I

    .prologue
    const/16 v3, 0x2f

    .line 709
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 712
    .local v1, "length":I
    add-int/lit8 v2, p1, 0x2

    if-le v1, v2, :cond_1

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_1

    add-int/lit8 v2, p1, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_1

    .line 719
    add-int/lit8 v0, p1, 0x3

    .line 720
    .local v0, "end":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 721
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 727
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 730
    :cond_0
    :sswitch_0
    add-int/lit8 v2, p1, 0x3

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 732
    .end local v0    # "end":I
    :goto_1
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 721
    nop

    :sswitch_data_0
    .sparse-switch
        0x23 -> :sswitch_0
        0x2f -> :sswitch_0
        0x3f -> :sswitch_0
    .end sparse-switch
.end method

.method private parseFragment()Ljava/lang/String;
    .locals 3

    .prologue
    .line 688
    invoke-direct {p0}, Landroid/net/Uri$StringUri;->findFragmentSeparator()I

    move-result v0

    .line 689
    .local v0, "fsi":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Landroid/net/Uri$StringUri;->uriString:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private parsePath()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 615
    iget-object v2, p0, Landroid/net/Uri$StringUri;->uriString:Ljava/lang/String;

    .line 616
    .local v2, "uriString":Ljava/lang/String;
    invoke-direct {p0}, Landroid/net/Uri$StringUri;->findSchemeSeparator()I

    move-result v1

    .line 619
    .local v1, "ssi":I
    const/4 v4, -0x1

    if-le v1, v4, :cond_3

    .line 621
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v4, v5, :cond_1

    const/4 v0, 0x1

    .line 622
    .local v0, "schemeOnly":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 636
    .end local v0    # "schemeOnly":Z
    :cond_0
    :goto_1
    return-object v3

    .line 621
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 628
    .restart local v0    # "schemeOnly":Z
    :cond_2
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2f

    if-ne v4, v5, :cond_0

    .line 636
    .end local v0    # "schemeOnly":Z
    :cond_3
    invoke-static {v2, v1}, Landroid/net/Uri$StringUri;->parsePath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method static parsePath(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .param p0, "uriString"    # Ljava/lang/String;
    .param p1, "ssi"    # I

    .prologue
    const/16 v4, 0x2f

    .line 746
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 750
    .local v0, "length":I
    add-int/lit8 v3, p1, 0x2

    if-le v0, v3, :cond_0

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_0

    add-int/lit8 v3, p1, 0x2

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_0

    .line 754
    add-int/lit8 v2, p1, 0x3

    .line 755
    .local v2, "pathStart":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 756
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 763
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 759
    :sswitch_0
    const-string v3, ""

    .line 781
    :goto_1
    return-object v3

    .line 767
    .end local v2    # "pathStart":I
    :cond_0
    add-int/lit8 v2, p1, 0x1

    .line 771
    .restart local v2    # "pathStart":I
    :cond_1
    :sswitch_1
    move v1, v2

    .line 772
    .local v1, "pathEnd":I
    :goto_2
    if-ge v1, v0, :cond_2

    .line 773
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sparse-switch v3, :sswitch_data_1

    .line 778
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 781
    :cond_2
    :sswitch_2
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 756
    nop

    :sswitch_data_0
    .sparse-switch
        0x23 -> :sswitch_0
        0x2f -> :sswitch_1
        0x3f -> :sswitch_0
    .end sparse-switch

    .line 773
    :sswitch_data_1
    .sparse-switch
        0x23 -> :sswitch_2
        0x3f -> :sswitch_2
    .end sparse-switch
.end method

.method private parseQuery()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v6, -0x1

    .line 653
    iget-object v3, p0, Landroid/net/Uri$StringUri;->uriString:Ljava/lang/String;

    const/16 v4, 0x3f

    invoke-direct {p0}, Landroid/net/Uri$StringUri;->findSchemeSeparator()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 654
    .local v1, "qsi":I
    if-ne v1, v6, :cond_1

    .line 669
    :cond_0
    :goto_0
    return-object v2

    .line 658
    :cond_1
    invoke-direct {p0}, Landroid/net/Uri$StringUri;->findFragmentSeparator()I

    move-result v0

    .line 660
    .local v0, "fsi":I
    if-ne v0, v6, :cond_2

    .line 661
    iget-object v2, p0, Landroid/net/Uri$StringUri;->uriString:Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 664
    :cond_2
    if-lt v0, v1, :cond_0

    .line 669
    iget-object v2, p0, Landroid/net/Uri$StringUri;->uriString:Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private parseScheme()Ljava/lang/String;
    .locals 3

    .prologue
    .line 546
    invoke-direct {p0}, Landroid/net/Uri$StringUri;->findSchemeSeparator()I

    move-result v0

    .line 547
    .local v0, "ssi":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Landroid/net/Uri$StringUri;->uriString:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private parseSsp()Ljava/lang/String;
    .locals 4

    .prologue
    .line 565
    invoke-direct {p0}, Landroid/net/Uri$StringUri;->findSchemeSeparator()I

    move-result v1

    .line 566
    .local v1, "ssi":I
    invoke-direct {p0}, Landroid/net/Uri$StringUri;->findFragmentSeparator()I

    move-result v0

    .line 569
    .local v0, "fsi":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    iget-object v2, p0, Landroid/net/Uri$StringUri;->uriString:Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    iget-object v2, p0, Landroid/net/Uri$StringUri;->uriString:Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method static readFrom(Landroid/os/Parcel;)Landroid/net/Uri;
    .locals 2
    .param p0, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 483
    new-instance v0, Landroid/net/Uri$StringUri;

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/net/Uri$StringUri;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public buildUpon()Landroid/net/Uri$Builder;
    .locals 2

    .prologue
    .line 785
    invoke-virtual {p0}, Landroid/net/Uri$StringUri;->isHierarchical()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 786
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {p0}, Landroid/net/Uri$StringUri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-direct {p0}, Landroid/net/Uri$StringUri;->getAuthorityPart()Landroid/net/Uri$Part;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Landroid/net/Uri$Part;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-direct {p0}, Landroid/net/Uri$StringUri;->getPathPart()Landroid/net/Uri$PathPart;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Landroid/net/Uri$PathPart;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-direct {p0}, Landroid/net/Uri$StringUri;->getQueryPart()Landroid/net/Uri$Part;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->query(Landroid/net/Uri$Part;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-direct {p0}, Landroid/net/Uri$StringUri;->getFragmentPart()Landroid/net/Uri$Part;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->fragment(Landroid/net/Uri$Part;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 793
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {p0}, Landroid/net/Uri$StringUri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-direct {p0}, Landroid/net/Uri$StringUri;->getSsp()Landroid/net/Uri$Part;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->opaquePart(Landroid/net/Uri$Part;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-direct {p0}, Landroid/net/Uri$StringUri;->getFragmentPart()Landroid/net/Uri$Part;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->fragment(Landroid/net/Uri$Part;)Landroid/net/Uri$Builder;

    move-result-object v0

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 487
    const/4 v0, 0x0

    return v0
.end method

.method public getAuthority()Ljava/lang/String;
    .locals 1

    .prologue
    .line 591
    invoke-direct {p0}, Landroid/net/Uri$StringUri;->getAuthorityPart()Landroid/net/Uri$Part;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Part;->getDecoded()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncodedAuthority()Ljava/lang/String;
    .locals 1

    .prologue
    .line 587
    invoke-direct {p0}, Landroid/net/Uri$StringUri;->getAuthorityPart()Landroid/net/Uri$Part;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Part;->getEncoded()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncodedFragment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 684
    invoke-direct {p0}, Landroid/net/Uri$StringUri;->getFragmentPart()Landroid/net/Uri$Part;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Part;->getEncoded()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncodedPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 607
    invoke-direct {p0}, Landroid/net/Uri$StringUri;->getPathPart()Landroid/net/Uri$PathPart;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$PathPart;->getEncoded()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncodedQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 647
    invoke-direct {p0}, Landroid/net/Uri$StringUri;->getQueryPart()Landroid/net/Uri$Part;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Part;->getEncoded()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncodedSchemeSpecificPart()Ljava/lang/String;
    .locals 1

    .prologue
    .line 557
    invoke-direct {p0}, Landroid/net/Uri$StringUri;->getSsp()Landroid/net/Uri$Part;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Part;->getEncoded()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFragment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 693
    invoke-direct {p0}, Landroid/net/Uri$StringUri;->getFragmentPart()Landroid/net/Uri$Part;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Part;->getDecoded()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 603
    invoke-direct {p0}, Landroid/net/Uri$StringUri;->getPathPart()Landroid/net/Uri$PathPart;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$PathPart;->getDecoded()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPathSegments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 611
    invoke-direct {p0}, Landroid/net/Uri$StringUri;->getPathPart()Landroid/net/Uri$PathPart;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$PathPart;->getPathSegments()Landroid/net/Uri$PathSegments;

    move-result-object v0

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 673
    invoke-direct {p0}, Landroid/net/Uri$StringUri;->getQueryPart()Landroid/net/Uri$Part;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Part;->getDecoded()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 3

    .prologue
    .line 541
    iget-object v1, p0, Landroid/net/Uri$StringUri;->scheme:Ljava/lang/String;

    # getter for: Landroid/net/Uri;->NOT_CACHED:Ljava/lang/String;
    invoke-static {}, Landroid/net/Uri;->access$300()Ljava/lang/String;

    move-result-object v2

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    .line 542
    .local v0, "cached":Z
    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/net/Uri$StringUri;->scheme:Ljava/lang/String;

    :goto_1
    return-object v1

    .line 541
    .end local v0    # "cached":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 542
    .restart local v0    # "cached":Z
    :cond_1
    invoke-direct {p0}, Landroid/net/Uri$StringUri;->parseScheme()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/net/Uri$StringUri;->scheme:Ljava/lang/String;

    goto :goto_1
.end method

.method public getSchemeSpecificPart()Ljava/lang/String;
    .locals 1

    .prologue
    .line 561
    invoke-direct {p0}, Landroid/net/Uri$StringUri;->getSsp()Landroid/net/Uri$Part;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Part;->getDecoded()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isHierarchical()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 516
    invoke-direct {p0}, Landroid/net/Uri$StringUri;->findSchemeSeparator()I

    move-result v0

    .line 518
    .local v0, "ssi":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    .line 529
    :cond_0
    :goto_0
    return v1

    .line 523
    :cond_1
    iget-object v3, p0, Landroid/net/Uri$StringUri;->uriString:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v4, v0, 0x1

    if-ne v3, v4, :cond_2

    move v1, v2

    .line 525
    goto :goto_0

    .line 529
    :cond_2
    iget-object v3, p0, Landroid/net/Uri$StringUri;->uriString:Ljava/lang/String;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2f

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public isRelative()Z
    .locals 2

    .prologue
    .line 534
    invoke-direct {p0}, Landroid/net/Uri$StringUri;->findSchemeSeparator()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 697
    iget-object v0, p0, Landroid/net/Uri$StringUri;->uriString:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 491
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 492
    iget-object v0, p0, Landroid/net/Uri$StringUri;->uriString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 493
    return-void
.end method
