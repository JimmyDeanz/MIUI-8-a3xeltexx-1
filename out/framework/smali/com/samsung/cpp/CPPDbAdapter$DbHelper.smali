.class Lcom/samsung/cpp/CPPDbAdapter$DbHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "CPPDbAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/cpp/CPPDbAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DbHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/cpp/CPPDbAdapter;


# direct methods
.method public constructor <init>(Lcom/samsung/cpp/CPPDbAdapter;Landroid/content/Context;)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/samsung/cpp/CPPDbAdapter$DbHelper;->this$0:Lcom/samsung/cpp/CPPDbAdapter;

    .line 178
    const-string v0, "cellDB.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 179
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "_db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 182
    const-string v0, "CPPDbAdapter"

    const-string v1, "DbAdapter.DbHelper.onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const-string v0, "CREATE TABLE Request_Table (_req_id integer primary key autoincrement,RAT INTEGER,MODE INTEGER,LATENCY INTEGER,db_req_sn INTEGER,req_type INTEGER,db_type INTEGER,patch_class INTEGER,mcc INTEGER,mnc INTEGER,tac INTEGER,gci INTEGER,pci INTEGER,fcn INTEGER,encryption_key INTEGER,is_sending INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 184
    const-string v0, "CREATE TABLE Patch_Table (_patch_id integer primary key autoincrement,req_id INTEGER,version INTEGER,latIndex INTEGER, lonIndex INTEGER,patch_fcn INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 185
    const-string v0, "CREATE TABLE Resp_Patch_Table (_d_patch_id integer primary key autoincrement,rat_d INTEGER,sn_d INTEGER,up_d INTEGER,patch_class_d INTEGER,patch_ver_d INTEGER,patch_lat_index_d INTEGER,patch_lon_index_d INTEGER,fcn_d INTEGER,req_id_d INTEGER,numcell_d INTEGER,patch_length_d INTEGER,cell_data_d BLOB);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 186
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .param p1, "_db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 189
    const-string v0, "CPPDbAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upgrading db from version"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", which will destroy all old data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    const-string v0, "DROP TABLE IF EXISTS data Request_Table"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 191
    const-string v0, "DROP TABLE IF EXISTS data Patch_Table"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 192
    const-string v0, "DROP TABLE IF EXISTS data Resp_Patch_Table"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p0, p1}, Lcom/samsung/cpp/CPPDbAdapter$DbHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 194
    return-void
.end method
