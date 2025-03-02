.class public Landroid/database/sqlite/SQLiteReadOnlyDatabaseException;
.super Landroid/database/sqlite/SQLiteException;
.source "SQLiteReadOnlyDatabaseException.java"


# static fields
.field public static final errCode:I = 0x8

.field public static final errString:[[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x5

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "SQLITE_READONLY"

    aput-object v2, v1, v4

    const-string v2, "Attempt to write a readonly database."

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "SQLITE_READONLY_RECOVERY"

    aput-object v2, v1, v4

    const-string v2, "Failed to reconstruct index for WAL file due to existing SHM file was Read-Only."

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "SQLITE_READONLY_CANTLOCK"

    aput-object v2, v1, v4

    const-string v2, "Failed to get lock due to SHM file was Read-Only"

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    const/4 v1, 0x3

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SQLITE_READONLY_ROLLBACK"

    aput-object v3, v2, v4

    const-string v3, "Failed to execute ROLLBACK due to Database file was Read-Only"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "SQLITE_READONLY_DBMOVED"

    aput-object v3, v2, v4

    const-string v3, "Database or Journal file have been removed."

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    sput-object v0, Landroid/database/sqlite/SQLiteReadOnlyDatabaseException;->errString:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Landroid/database/sqlite/SQLiteReadOnlyDatabaseException;->addErrCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private static addErrCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "errMessage"    # Ljava/lang/String;

    .prologue
    if-eqz p0, :cond_0

    const-string v0, "(code "

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    const-string v0, " (code 8)"

    goto :goto_0
.end method
