.class public Landroid/content/pm/ApplicationInfo$DisplayNameComparator;
.super Ljava/lang/Object;
.source "ApplicationInfo.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/ApplicationInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DisplayNameComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/content/pm/ApplicationInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mPM:Landroid/content/pm/PackageManager;

.field private final sCollator:Ljava/text/Collator;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageManager;)V
    .locals 1
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 729
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 746
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo$DisplayNameComparator;->sCollator:Ljava/text/Collator;

    .line 730
    iput-object p1, p0, Landroid/content/pm/ApplicationInfo$DisplayNameComparator;->mPM:Landroid/content/pm/PackageManager;

    .line 731
    return-void
.end method


# virtual methods
.method public final compare(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ApplicationInfo;)I
    .locals 5
    .param p1, "aa"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "ab"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 734
    iget-object v2, p0, Landroid/content/pm/ApplicationInfo$DisplayNameComparator;->mPM:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 735
    .local v0, "sa":Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    .line 736
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 738
    :cond_0
    iget-object v2, p0, Landroid/content/pm/ApplicationInfo$DisplayNameComparator;->mPM:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, p2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 739
    .local v1, "sb":Ljava/lang/CharSequence;
    if-nez v1, :cond_1

    .line 740
    iget-object v1, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 743
    :cond_1
    iget-object v2, p0, Landroid/content/pm/ApplicationInfo$DisplayNameComparator;->sCollator:Ljava/text/Collator;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 727
    check-cast p1, Landroid/content/pm/ApplicationInfo;

    check-cast p2, Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/ApplicationInfo$DisplayNameComparator;->compare(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ApplicationInfo;)I

    move-result v0

    return v0
.end method
