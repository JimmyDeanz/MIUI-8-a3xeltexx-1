.class Lcom/android/server/PackageObject;
.super Ljava/lang/Object;
.source "ServiceKeeper.java"


# instance fields
.field packageName:Ljava/lang/String;

.field seinfo:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "seinfo"    # Ljava/lang/String;

    .prologue
    .line 746
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 743
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/PackageObject;->packageName:Ljava/lang/String;

    .line 744
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/PackageObject;->seinfo:Ljava/lang/String;

    .line 747
    iput-object p1, p0, Lcom/android/server/PackageObject;->packageName:Ljava/lang/String;

    .line 748
    iput-object p2, p0, Lcom/android/server/PackageObject;->seinfo:Ljava/lang/String;

    .line 749
    return-void
.end method
