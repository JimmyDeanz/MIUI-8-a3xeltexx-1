.class public Lcom/android/server/wifi/hs20/WifiHs20DMHandler;
.super Ljava/lang/Object;
.source "WifiHs20DMHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/hs20/WifiHs20DMHandler$CredDetails;,
        Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;
    }
.end annotation


# static fields
.field private static final AAA_SERVER_TRUSTROOT_TYPE:I = 0x5

.field private static final BACKHAUL_BANDWITDH_THRESHOLD_TYPE:I = 0x3

.field private static final COMMAND:Ljava/lang/String; = "command"

.field private static final CREDENTIAL_TYPE:I = 0x7

.field private static final DBG:Z = false

.field private static final DEVDETAILS_EAP_TYPE:I = 0xa

.field private static final DEVDETAILS_TYPE:I = 0x9

.field private static final DEV_DETAIL_SPCERTIFICATE_TYPE:I = 0x12

.field private static final DYNAMIC_NODE:I = 0x1

.field private static final EXEC_DATA:Ljava/lang/String; = "execData"

.field private static final FQDN_TYPE:I = 0x13

.field private static final HOMEOI_LIST:I = 0x8

.field private static final HOMESP:Ljava/lang/String; = "HOMESP_"

.field private static final HOMESP_NETWORK_TYPE:I = 0x6

.field private static final HOTSPOT_ADD_MO_SESSION:Ljava/lang/String; = "com.samsung.action.HOTSPOT_ADD_MO"

.field public static final HOTSPOT_END_SESSION:Ljava/lang/String; = "com.samsung.action.HOTSPOT_END_SESSION"

.field public static final HOTSPOT_EXEC_COMMAND:Ljava/lang/String; = "com.samsung.action.HOTSPOT_EXEC_COMMAND"

.field public static final HOTSPOT_START_SESSION:Ljava/lang/String; = "com.samsung.action.HOTSPOT_START_SESSION"

.field private static final HOTSPOT_TYPE:I = 0x0

.field private static final HOTSPOT_UPDATE_MO_SESSION:Ljava/lang/String; = "com.samsung.action.HOTSPOT_UPDATE_MO"

.field private static final NON_DYNAMIC_NODE:I = -0x1

.field private static final OTHER_HOME_PARTNER_TYPE:I = 0x11

.field private static final POLICY_SUBSCRIPTION_TYPE:I = 0x1

.field private static final PREFERRED_ROAMING_PARTNER_TYPE:I = 0x2

.field private static final SIMEAPTYPE:Ljava/lang/String; = "SIM_"

.field private static final SP_EXLUSION_TYPE:I = 0x10

.field private static final STATUS:Ljava/lang/String; = "status"

.field private static final TAG:Ljava/lang/String; = "HotspotDMHandler"

.field private static final TUPPLE_TYPE:I = 0x4

.field private static cr:Landroid/content/ContentResolver;


# instance fields
.field private DEFAULT_LENGTH:I

.field public credID:I

.field public mContext:Landroid/content/Context;

.field mHs20CertificateManager:Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;

.field public modifyMO:Z

.field private typeOfNode:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->cr:Landroid/content/ContentResolver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "0"

    aput-object v1, v0, v2

    const-string v1, "1"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->typeOfNode:[Ljava/lang/String;

    .line 81
    iput-boolean v2, p0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->modifyMO:Z

    .line 83
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->credID:I

    .line 87
    iput v3, p0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->DEFAULT_LENGTH:I

    .line 90
    iput-object p1, p0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->mContext:Landroid/content/Context;

    .line 91
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->cr:Landroid/content/ContentResolver;

    .line 92
    invoke-static {}, Lcom/android/server/wifi/hs20/WifiHs20Helper;->buildHashMap()V

    .line 93
    new-instance v0, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;

    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->mHs20CertificateManager:Lcom/android/server/wifi/hs20/WifiHs20CertificateManager;

    .line 94
    return-void
.end method

.method private deleteFromRelatedTables(ILjava/lang/String;[Ljava/lang/String;)Z
    .locals 3
    .param p1, "tableType"    # I
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 1394
    const-string v0, "HotspotDMHandler"

    const-string v1, "-----------deleteFromRelatedTables --------------- "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1395
    if-nez p1, :cond_0

    .line 1396
    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->cr:Landroid/content/ContentResolver;

    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getTableURI(I)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1397
    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->cr:Landroid/content/ContentResolver;

    invoke-direct {p0, v2}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getTableURI(I)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1398
    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->cr:Landroid/content/ContentResolver;

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getTableURI(I)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1399
    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->cr:Landroid/content/ContentResolver;

    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getTableURI(I)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1400
    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->cr:Landroid/content/ContentResolver;

    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getTableURI(I)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1401
    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->cr:Landroid/content/ContentResolver;

    const/4 v1, 0x6

    invoke-direct {p0, v1}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getTableURI(I)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1402
    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->cr:Landroid/content/ContentResolver;

    const/4 v1, 0x7

    invoke-direct {p0, v1}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getTableURI(I)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1403
    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->cr:Landroid/content/ContentResolver;

    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getTableURI(I)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1405
    :cond_0
    return v2
.end method

.method private getFromCredentialNode(I)Landroid/net/wifi/hs20/WifiHs20DMData;
    .locals 12
    .param p1, "credentialID"    # I

    .prologue
    const/4 v11, 0x1

    const/4 v2, 0x0

    const/4 v10, 0x0

    .line 1587
    const-string v0, "HotspotDMHandler"

    const-string v1, "Check in credential Node"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1589
    const/4 v4, 0x0

    .line 1590
    .local v4, "selectArgs":[Ljava/lang/String;
    const/4 v8, 0x0

    .line 1591
    .local v8, "dbCur":Landroid/database/Cursor;
    const-string v3, "credential_id=?"

    .line 1592
    .local v3, "selection":Ljava/lang/String;
    new-array v4, v11, [Ljava/lang/String;

    .line 1593
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    .line 1595
    :try_start_0
    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Credential;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1597
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_4

    .line 1598
    :cond_0
    const-string v0, "HotspotDMHandler"

    const-string v1, "Corresponding entry doesnt exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1599
    if-eqz v8, :cond_1

    .line 1600
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1629
    :cond_1
    if-eqz v8, :cond_2

    .line 1630
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v7, v10

    .line 1633
    :cond_3
    :goto_0
    return-object v7

    .line 1603
    :cond_4
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 1604
    .local v6, "count":I
    if-le v6, v11, :cond_6

    .line 1605
    const-string v0, "HotspotDMHandler"

    const-string v1, "More than 2 entries exists"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1606
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1629
    if-eqz v8, :cond_5

    .line 1630
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_5
    move-object v7, v10

    goto :goto_0

    .line 1609
    :cond_6
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1610
    new-instance v7, Landroid/net/wifi/hs20/WifiHs20DMData;

    invoke-direct {v7}, Landroid/net/wifi/hs20/WifiHs20DMData;-><init>()V

    .line 1611
    .local v7, "credentials":Landroid/net/wifi/hs20/WifiHs20DMData;
    const-string v0, "username"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Landroid/net/wifi/hs20/WifiHs20DMData;->username:Ljava/lang/String;

    .line 1613
    const-string v0, "password"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    iput-object v0, v7, Landroid/net/wifi/hs20/WifiHs20DMData;->password:[B

    .line 1615
    iget-object v0, v7, Landroid/net/wifi/hs20/WifiHs20DMData;->password:[B

    if-eqz v0, :cond_7

    .line 1616
    const-string v0, "HotspotDMHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFromCredentialNode ---->Username:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v7, Landroid/net/wifi/hs20/WifiHs20DMData;->username:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Password :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    iget-object v5, v7, Landroid/net/wifi/hs20/WifiHs20DMData;->password:[B

    const/4 v11, 0x0

    invoke-static {v5, v11}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1624
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1629
    if-eqz v8, :cond_3

    .line 1630
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1623
    :cond_7
    const/4 v7, 0x0

    goto :goto_1

    .line 1626
    .end local v6    # "count":I
    .end local v7    # "credentials":Landroid/net/wifi/hs20/WifiHs20DMData;
    :catch_0
    move-exception v9

    .line 1627
    .local v9, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1629
    if-eqz v8, :cond_8

    .line 1630
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_8
    move-object v7, v10

    .line 1633
    goto/16 :goto_0

    .line 1629
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_9

    .line 1630
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v0
.end method

.method private getHotspotID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 15
    .param p1, "fqdn"    # Ljava/lang/String;
    .param p2, "ppsmoID"    # Ljava/lang/String;

    .prologue
    .line 950
    const-string v4, "fqdn=? AND ppsmo_id=?"

    .line 952
    .local v4, "selection":Ljava/lang/String;
    const-string v1, "HotspotDMHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getHotspotID : fqdn "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "PPSMO ID"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/String;

    .line 954
    .local v5, "selectionArgs":[Ljava/lang/String;
    const/4 v1, 0x0

    aput-object p1, v5, v1

    .line 955
    const/4 v1, 0x1

    aput-object p2, v5, v1

    .line 956
    const/4 v11, 0x0

    .line 957
    .local v11, "id":I
    const/4 v8, 0x0

    .line 958
    .local v8, "cr":Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 960
    .local v10, "hotspotID":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Fqdn;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 962
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 963
    .local v7, "count":I
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 964
    .local v14, "values":Landroid/content/ContentValues;
    if-nez v7, :cond_4

    .line 965
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->checknDelete(Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    .line 966
    .local v12, "updateIdentifier":I
    const/4 v1, -0x1

    if-eq v12, v1, :cond_0

    .line 967
    const-string v1, "update_identifier"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v14, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 969
    :cond_0
    const-string v1, "fqdn"

    move-object/from16 v0, p1

    invoke-virtual {v14, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 970
    const-string v1, "ppsmo_id"

    move-object/from16 v0, p2

    invoke-virtual {v14, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 971
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Fqdn;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v14}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v13

    .line 973
    .local v13, "uri":Landroid/net/Uri;
    const-string v1, "HotspotDMHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getHotspotID : Hotspot ID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v13}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    invoke-virtual {v13}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    .line 995
    .end local v13    # "uri":Landroid/net/Uri;
    :cond_1
    :goto_0
    if-eqz v8, :cond_2

    .line 996
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .end local v7    # "count":I
    .end local v12    # "updateIdentifier":I
    .end local v14    # "values":Landroid/content/ContentValues;
    :cond_2
    :goto_1
    move-object v1, v10

    .line 999
    :cond_3
    :goto_2
    return-object v1

    .line 975
    .restart local v7    # "count":I
    .restart local v14    # "values":Landroid/content/ContentValues;
    :cond_4
    const/4 v1, 0x1

    if-ne v7, v1, :cond_5

    .line 976
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 977
    const-string v1, "hotspot_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 978
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    .line 979
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 980
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->checknDelete(Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    .line 981
    .restart local v12    # "updateIdentifier":I
    const/4 v1, -0x1

    if-eq v12, v1, :cond_1

    .line 982
    invoke-virtual {v14}, Landroid/content/ContentValues;->clear()V

    .line 983
    const-string v1, "update_identifier"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v14, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 984
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Fqdn;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v14, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 991
    .end local v7    # "count":I
    .end local v12    # "updateIdentifier":I
    .end local v14    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v9

    .line 992
    .local v9, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v1, "HotspotDMHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FQDN exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 993
    const/4 v10, 0x0

    .line 995
    if-eqz v8, :cond_2

    .line 996
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 988
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v7    # "count":I
    .restart local v14    # "values":Landroid/content/ContentValues;
    :cond_5
    :try_start_3
    const-string v1, "HotspotDMHandler"

    const-string v2, "More than one entry exists"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 989
    const/4 v1, 0x0

    .line 995
    if-eqz v8, :cond_3

    .line 996
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 995
    .end local v7    # "count":I
    .end local v14    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v1

    if-eqz v8, :cond_6

    .line 996
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v1
.end method

.method private getTableURI(I)Landroid/net/Uri;
    .locals 1
    .param p1, "tableType"    # I

    .prologue
    .line 206
    const/16 v0, 0x13

    if-ne p1, v0, :cond_0

    .line 207
    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Fqdn;->CONTENT_URI:Landroid/net/Uri;

    .line 237
    :goto_0
    return-object v0

    .line 208
    :cond_0
    if-nez p1, :cond_1

    .line 209
    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20DBStore$HotSpot;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 210
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 211
    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20DBStore$PolicySubscriptionUpdate;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 212
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 213
    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20DBStore$PreferredRoamingPartner;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 214
    :cond_3
    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    .line 215
    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20DBStore$BackhaulBandwidthThreshold;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 216
    :cond_4
    const/4 v0, 0x4

    if-ne p1, v0, :cond_5

    .line 217
    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Tupple;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 218
    :cond_5
    const/4 v0, 0x5

    if-ne p1, v0, :cond_6

    .line 219
    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20DBStore$AAAServerTrustRoot;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 220
    :cond_6
    const/4 v0, 0x6

    if-ne p1, v0, :cond_7

    .line 221
    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20DBStore$HomeSPNetwork;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 222
    :cond_7
    const/4 v0, 0x7

    if-ne p1, v0, :cond_8

    .line 223
    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Credential;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 224
    :cond_8
    const/16 v0, 0x8

    if-ne p1, v0, :cond_9

    .line 225
    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20DBStore$HomeOI;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 226
    :cond_9
    const/16 v0, 0x9

    if-ne p1, v0, :cond_a

    .line 227
    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20DBStore$DevDetails;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 228
    :cond_a
    const/16 v0, 0xa

    if-ne p1, v0, :cond_b

    .line 229
    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20DBStore$DevDetailsEAP;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 230
    :cond_b
    const/16 v0, 0x12

    if-ne p1, v0, :cond_c

    .line 231
    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20DBStore$DevDetailsSPCertificate;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 232
    :cond_c
    const/16 v0, 0x10

    if-ne p1, v0, :cond_d

    .line 233
    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20DBStore$SPExclusionList;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 234
    :cond_d
    const/16 v0, 0x11

    if-ne p1, v0, :cond_e

    .line 235
    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20DBStore$OtherHomePartner;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 237
    :cond_e
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private parseDevDetail(Ljava/lang/String;Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;)Z
    .locals 13
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "dbParam"    # Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;

    .prologue
    const/4 v12, 0x6

    const/4 v11, 0x4

    const/4 v10, 0x5

    const/4 v6, 0x1

    .line 1004
    const/4 v7, 0x2

    :try_start_0
    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 1006
    .local v5, "uri_indexed":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1007
    .local v2, "index":I
    const-string v7, "/"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1008
    .local v4, "list":[Ljava/lang/String;
    if-nez v4, :cond_1

    .line 1009
    const-string v6, "HotspotDMHandler"

    const-string v7, "++++++++++++++++++++ invalid string \'/\' not found "

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    const/4 v6, 0x0

    .line 1093
    .end local v2    # "index":I
    .end local v4    # "list":[Ljava/lang/String;
    .end local v5    # "uri_indexed":Ljava/lang/String;
    :cond_0
    :goto_0
    return v6

    .line 1012
    .restart local v2    # "index":I
    .restart local v4    # "list":[Ljava/lang/String;
    .restart local v5    # "uri_indexed":Ljava/lang/String;
    :cond_1
    array-length v3, v4

    .line 1013
    .local v3, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_2

    .line 1014
    const-string v7, "HotspotDMHandler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "List Argument "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Value "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v4, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1016
    :cond_2
    if-lt v3, v11, :cond_0

    const/4 v7, 0x0

    aget-object v7, v4, v7

    const-string v8, "DevDetail"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x3

    aget-object v7, v4, v7

    const-string v8, "Wi-Fi"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1019
    if-ne v3, v11, :cond_3

    .line 1020
    const/16 v7, 0x9

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    .line 1021
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    .line 1022
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    .line 1023
    const/4 v7, 0x0

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    .line 1024
    const/4 v7, 0x1

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeVal:I

    .line 1025
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "dev_details_id"

    aput-object v8, v7, v2

    .line 1026
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    const/4 v8, 0x2

    aget-object v8, v4, v8

    aput-object v8, v7, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1089
    .end local v1    # "i":I
    .end local v2    # "index":I
    .end local v3    # "len":I
    .end local v4    # "list":[Ljava/lang/String;
    .end local v5    # "uri_indexed":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1090
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1091
    const/4 v6, 0x0

    goto :goto_0

    .line 1027
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "i":I
    .restart local v2    # "index":I
    .restart local v3    # "len":I
    .restart local v4    # "list":[Ljava/lang/String;
    .restart local v5    # "uri_indexed":Ljava/lang/String;
    :cond_3
    if-lt v3, v10, :cond_5

    const/4 v7, 0x4

    :try_start_1
    aget-object v7, v4, v7

    const-string v8, "EAPMethodList"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1030
    if-ne v3, v12, :cond_4

    .line 1031
    const/16 v7, 0xa

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    .line 1032
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    .line 1033
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    .line 1034
    const/4 v7, 0x0

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    .line 1035
    const/4 v7, 0x1

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeVal:I

    .line 1036
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "eap_id"

    aput-object v8, v7, v2

    .line 1037
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    const/4 v8, 0x5

    aget-object v8, v4, v8

    aput-object v8, v7, v2

    goto/16 :goto_0

    .line 1038
    :cond_4
    const/4 v7, 0x7

    if-ne v3, v7, :cond_0

    .line 1039
    const/16 v7, 0xa

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    .line 1040
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    .line 1041
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    .line 1042
    const/4 v7, 0x6

    aget-object v7, v4, v7

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    .line 1043
    const/4 v7, -0x1

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeVal:I

    .line 1044
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "eap_id"

    aput-object v8, v7, v2

    .line 1045
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    const/4 v8, 0x5

    aget-object v8, v4, v8

    aput-object v8, v7, v2

    goto/16 :goto_0

    .line 1047
    :cond_5
    if-lt v3, v10, :cond_7

    const/4 v7, 0x4

    aget-object v7, v4, v7

    const-string v8, "SPCertificate"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1050
    if-ne v3, v12, :cond_6

    .line 1051
    const/16 v7, 0x12

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    .line 1052
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    .line 1053
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    .line 1054
    const/4 v7, 0x0

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    .line 1055
    const/4 v7, 0x1

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeVal:I

    .line 1056
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "sp_id"

    aput-object v8, v7, v2

    .line 1057
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    const/4 v8, 0x5

    aget-object v8, v4, v8

    aput-object v8, v7, v2

    goto/16 :goto_0

    .line 1058
    :cond_6
    const/4 v7, 0x7

    if-ne v3, v7, :cond_0

    .line 1060
    const/16 v7, 0x12

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    .line 1061
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    .line 1062
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    .line 1063
    const/4 v7, 0x6

    aget-object v7, v4, v7

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    .line 1064
    const/4 v7, -0x1

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeVal:I

    .line 1065
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "sp_id"

    aput-object v8, v7, v2

    .line 1066
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    const/4 v8, 0x5

    aget-object v8, v4, v8

    aput-object v8, v7, v2

    goto/16 :goto_0

    .line 1068
    :cond_7
    if-lt v3, v10, :cond_8

    const/4 v7, 0x4

    aget-object v7, v4, v7

    const-string v8, "Ops"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1070
    if-ne v3, v12, :cond_0

    .line 1071
    const/16 v7, 0x9

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    .line 1072
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    .line 1073
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    .line 1074
    const/4 v7, 0x5

    aget-object v7, v4, v7

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    .line 1075
    const/4 v7, -0x1

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeVal:I

    .line 1076
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "dev_details_id"

    aput-object v8, v7, v2

    .line 1077
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    const/4 v8, 0x2

    aget-object v8, v4, v8

    aput-object v8, v7, v2

    goto/16 :goto_0

    .line 1079
    :cond_8
    if-ne v3, v10, :cond_0

    .line 1080
    const/16 v7, 0x9

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    .line 1081
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    .line 1082
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    .line 1083
    const/4 v7, 0x4

    aget-object v7, v4, v7

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    .line 1084
    const/4 v7, -0x1

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeVal:I

    .line 1085
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "dev_details_id"

    aput-object v8, v7, v2

    .line 1086
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    const/4 v8, 0x2

    aget-object v8, v4, v8

    aput-object v8, v7, v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private parseUri(Ljava/lang/String;Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;)Z
    .locals 13
    .param p1, "nodeURI"    # Ljava/lang/String;
    .param p2, "dbParam"    # Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x6

    const/4 v10, 0x3

    const/4 v9, 0x5

    const/4 v6, 0x1

    .line 241
    if-eqz p2, :cond_0

    if-nez p1, :cond_2

    .line 242
    :cond_0
    const/4 v6, 0x0

    .line 909
    :cond_1
    :goto_0
    return v6

    .line 243
    :cond_2
    const/4 v1, 0x0

    .line 244
    .local v1, "index":I
    const-string v7, "DevDetail"

    invoke-virtual {p1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 245
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->parseDevDetail(Ljava/lang/String;Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;)Z

    move-result v6

    goto :goto_0

    .line 247
    :cond_3
    invoke-virtual {p1, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 249
    .local v5, "uri_indexed":Ljava/lang/String;
    const-string v7, "/"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 250
    .local v3, "list":[Ljava/lang/String;
    if-nez v3, :cond_4

    .line 251
    const-string v6, "HotspotDMHandler"

    const-string v7, "++++++++++++++++++++ invalid string \'/\' not found "

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    const/4 v6, 0x0

    goto :goto_0

    .line 254
    :cond_4
    array-length v2, v3

    .line 262
    .local v2, "len":I
    if-ne v2, v6, :cond_5

    const/4 v7, 0x0

    aget-object v7, v3, v7

    const-string v8, "Wi-Fi"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 263
    const/16 v7, 0x13

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    .line 264
    const/4 v7, 0x0

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    .line 265
    const/4 v7, 0x0

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    .line 266
    const/4 v7, 0x0

    aget-object v7, v3, v7

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    .line 267
    const/4 v7, -0x1

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeVal:I

    goto :goto_0

    .line 268
    :cond_5
    if-ne v2, v12, :cond_6

    .line 269
    const/16 v7, 0x13

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    .line 270
    new-array v7, v6, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    .line 271
    new-array v7, v6, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    .line 272
    const/4 v7, 0x0

    aget-object v7, v3, v7

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    .line 273
    iput v6, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeVal:I

    .line 274
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "fqdn"

    aput-object v8, v7, v1

    .line 275
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aget-object v8, v3, v6

    aput-object v8, v7, v1

    goto :goto_0

    .line 276
    :cond_6
    const/4 v7, 0x4

    if-ne v2, v7, :cond_7

    aget-object v7, v3, v10

    const-string v8, "UpdateIdentifier"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 278
    const/16 v7, 0x13

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    .line 279
    new-array v7, v6, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    .line 280
    new-array v7, v6, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    .line 281
    aget-object v7, v3, v10

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    .line 282
    const/4 v7, -0x1

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeVal:I

    .line 283
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "fqdn"

    aput-object v8, v7, v1

    .line 284
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aget-object v8, v3, v6

    aput-object v8, v7, v1

    goto/16 :goto_0

    .line 285
    :cond_7
    if-ne v2, v10, :cond_8

    aget-object v7, v3, v12

    const-string v8, "PerProviderSubscription"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 288
    const/16 v7, 0x13

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    .line 289
    new-array v7, v6, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    .line 290
    new-array v7, v6, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    .line 291
    aget-object v7, v3, v12

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    .line 292
    const/4 v7, -0x1

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeVal:I

    .line 293
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "fqdn"

    aput-object v8, v7, v1

    .line 294
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aget-object v8, v3, v6

    aput-object v8, v7, v1

    goto/16 :goto_0

    .line 295
    :cond_8
    const/4 v7, 0x4

    if-ne v2, v7, :cond_a

    .line 296
    const/16 v7, 0x13

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    .line 297
    aget-object v7, v3, v6

    aget-object v8, v3, v10

    invoke-virtual {p0, v7, v8}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->checknDelete(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 298
    .local v4, "ret":I
    const/4 v7, -0x1

    if-ne v4, v7, :cond_9

    .line 299
    new-array v7, v12, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    .line 300
    new-array v7, v12, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    .line 305
    :goto_1
    const/4 v7, 0x0

    aget-object v7, v3, v7

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    .line 306
    iput v6, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeVal:I

    .line 307
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "fqdn"

    aput-object v8, v7, v1

    .line 308
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aget-object v8, v3, v6

    aput-object v8, v7, v1

    .line 309
    add-int/lit8 v1, v1, 0x1

    .line 310
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "ppsmo_id"

    aput-object v8, v7, v1

    .line 311
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aget-object v8, v3, v10

    aput-object v8, v7, v1

    .line 312
    const/4 v7, -0x1

    if-eq v4, v7, :cond_1

    .line 313
    add-int/lit8 v1, v1, 0x1

    .line 314
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "update_identifier"

    aput-object v8, v7, v1

    .line 315
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v1

    goto/16 :goto_0

    .line 302
    :cond_9
    new-array v7, v10, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    .line 303
    new-array v7, v10, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    goto :goto_1

    .line 317
    .end local v4    # "ret":I
    :cond_a
    if-le v2, v9, :cond_1a

    const/4 v7, 0x4

    aget-object v7, v3, v7

    const-string v8, "Policy"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 318
    aget-object v7, v3, v9

    const-string v8, "PreferredRoamingPartnerList"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 320
    if-ne v2, v11, :cond_b

    .line 321
    iput v12, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    .line 322
    new-array v7, v6, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    .line 323
    new-array v7, v6, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    .line 324
    aget-object v7, v3, v9

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    .line 325
    const/4 v7, -0x1

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeVal:I

    .line 326
    aget-object v7, v3, v6

    aget-object v8, v3, v10

    invoke-direct {p0, v7, v8}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getHotspotID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 327
    .local v0, "hotspotID":Ljava/lang/String;
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "hotspot_id"

    aput-object v8, v7, v1

    .line 328
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aput-object v0, v7, v1

    goto/16 :goto_0

    .line 329
    .end local v0    # "hotspotID":Ljava/lang/String;
    :cond_b
    const/4 v7, 0x7

    if-ne v2, v7, :cond_c

    .line 330
    iput v12, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    .line 331
    new-array v7, v12, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    .line 332
    new-array v7, v12, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    .line 333
    aget-object v7, v3, v9

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    .line 334
    iput v6, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeVal:I

    .line 335
    aget-object v7, v3, v6

    aget-object v8, v3, v10

    invoke-direct {p0, v7, v8}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getHotspotID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 336
    .restart local v0    # "hotspotID":Ljava/lang/String;
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "hotspot_id"

    aput-object v8, v7, v1

    .line 337
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aput-object v0, v7, v1

    .line 338
    add-int/lit8 v1, v1, 0x1

    .line 339
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "server_roaming_partner_id"

    aput-object v8, v7, v1

    .line 340
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aget-object v8, v3, v11

    aput-object v8, v7, v1

    goto/16 :goto_0

    .line 341
    .end local v0    # "hotspotID":Ljava/lang/String;
    :cond_c
    const/16 v7, 0x8

    if-ne v2, v7, :cond_1

    .line 343
    iput v12, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    .line 344
    new-array v7, v12, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    .line 345
    new-array v7, v12, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    .line 346
    const/4 v7, 0x7

    aget-object v7, v3, v7

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    .line 347
    const/4 v7, -0x1

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeVal:I

    .line 348
    aget-object v7, v3, v6

    aget-object v8, v3, v10

    invoke-direct {p0, v7, v8}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getHotspotID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 349
    .restart local v0    # "hotspotID":Ljava/lang/String;
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "hotspot_id"

    aput-object v8, v7, v1

    .line 350
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aput-object v0, v7, v1

    .line 351
    add-int/lit8 v1, v1, 0x1

    .line 352
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "server_roaming_partner_id"

    aput-object v8, v7, v1

    .line 353
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aget-object v8, v3, v11

    aput-object v8, v7, v1

    goto/16 :goto_0

    .line 355
    .end local v0    # "hotspotID":Ljava/lang/String;
    :cond_d
    aget-object v7, v3, v9

    const-string v8, "MinBackhaulThreshold"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 357
    if-ne v2, v11, :cond_e

    .line 358
    iput v10, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    .line 359
    new-array v7, v6, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    .line 360
    new-array v7, v6, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    .line 361
    aget-object v7, v3, v9

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    .line 362
    const/4 v7, -0x1

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeVal:I

    .line 363
    aget-object v7, v3, v6

    aget-object v8, v3, v10

    invoke-direct {p0, v7, v8}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getHotspotID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 364
    .restart local v0    # "hotspotID":Ljava/lang/String;
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "hotspot_id"

    aput-object v8, v7, v1

    .line 365
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aput-object v0, v7, v1

    goto/16 :goto_0

    .line 366
    .end local v0    # "hotspotID":Ljava/lang/String;
    :cond_e
    const/4 v7, 0x7

    if-ne v2, v7, :cond_f

    .line 367
    iput v10, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    .line 368
    new-array v7, v12, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    .line 369
    new-array v7, v12, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    .line 370
    aget-object v7, v3, v9

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    .line 371
    iput v6, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeVal:I

    .line 372
    aget-object v7, v3, v6

    aget-object v8, v3, v10

    invoke-direct {p0, v7, v8}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getHotspotID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 373
    .restart local v0    # "hotspotID":Ljava/lang/String;
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "hotspot_id"

    aput-object v8, v7, v1

    .line 374
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aput-object v0, v7, v1

    .line 375
    add-int/lit8 v1, v1, 0x1

    .line 376
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "server_backhaul_threshold_id"

    aput-object v8, v7, v1

    .line 377
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aget-object v8, v3, v11

    aput-object v8, v7, v1

    goto/16 :goto_0

    .line 378
    .end local v0    # "hotspotID":Ljava/lang/String;
    :cond_f
    const/16 v7, 0x8

    if-ne v2, v7, :cond_1

    .line 380
    iput v10, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    .line 381
    new-array v7, v12, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    .line 382
    new-array v7, v12, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    .line 383
    const/4 v7, 0x7

    aget-object v7, v3, v7

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    .line 384
    const/4 v7, -0x1

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeVal:I

    .line 385
    aget-object v7, v3, v6

    aget-object v8, v3, v10

    invoke-direct {p0, v7, v8}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getHotspotID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 386
    .restart local v0    # "hotspotID":Ljava/lang/String;
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "hotspot_id"

    aput-object v8, v7, v1

    .line 387
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aput-object v0, v7, v1

    .line 388
    add-int/lit8 v1, v1, 0x1

    .line 389
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "server_backhaul_threshold_id"

    aput-object v8, v7, v1

    .line 390
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aget-object v8, v3, v11

    aput-object v8, v7, v1

    goto/16 :goto_0

    .line 392
    .end local v0    # "hotspotID":Ljava/lang/String;
    :cond_10
    aget-object v7, v3, v9

    const-string v8, "PolicyUpdate"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 394
    const/4 v7, 0x7

    if-ne v2, v7, :cond_11

    .line 396
    iput v6, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    .line 397
    new-array v7, v12, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    .line 398
    new-array v7, v12, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    .line 399
    aget-object v7, v3, v11

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    .line 400
    const/4 v7, -0x1

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeVal:I

    .line 401
    aget-object v7, v3, v6

    aget-object v8, v3, v10

    invoke-direct {p0, v7, v8}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getHotspotID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 402
    .restart local v0    # "hotspotID":Ljava/lang/String;
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "hotspot_id"

    aput-object v8, v7, v1

    .line 403
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aput-object v0, v7, v1

    .line 404
    add-int/lit8 v1, v1, 0x1

    .line 405
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "type_of_node"

    aput-object v8, v7, v1

    .line 406
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    iget-object v8, p0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->typeOfNode:[Ljava/lang/String;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    aput-object v8, v7, v1

    goto/16 :goto_0

    .line 407
    .end local v0    # "hotspotID":Ljava/lang/String;
    :cond_11
    const/16 v7, 0x8

    if-ne v2, v7, :cond_12

    aget-object v7, v3, v11

    const-string v8, "TrustRoot"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 409
    iput v6, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    .line 410
    new-array v7, v6, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    .line 411
    new-array v7, v6, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    .line 412
    const/4 v7, 0x7

    aget-object v7, v3, v7

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    .line 413
    const/4 v7, -0x1

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeVal:I

    .line 414
    aget-object v7, v3, v6

    aget-object v8, v3, v10

    invoke-direct {p0, v7, v8}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getHotspotID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 415
    .restart local v0    # "hotspotID":Ljava/lang/String;
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "hotspot_id"

    aput-object v8, v7, v1

    .line 416
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aput-object v0, v7, v1

    goto/16 :goto_0

    .line 417
    .end local v0    # "hotspotID":Ljava/lang/String;
    :cond_12
    const/16 v7, 0x8

    if-ne v2, v7, :cond_1

    aget-object v7, v3, v11

    const-string v8, "UsernamePassword"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 420
    iput v6, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    .line 421
    new-array v7, v6, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    .line 422
    new-array v7, v6, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    .line 423
    const/4 v7, 0x7

    aget-object v7, v3, v7

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    .line 424
    const/4 v7, -0x1

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeVal:I

    .line 425
    aget-object v7, v3, v6

    aget-object v8, v3, v10

    invoke-direct {p0, v7, v8}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getHotspotID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 426
    .restart local v0    # "hotspotID":Ljava/lang/String;
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "hotspot_id"

    aput-object v8, v7, v1

    .line 427
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aput-object v0, v7, v1

    goto/16 :goto_0

    .line 429
    .end local v0    # "hotspotID":Ljava/lang/String;
    :cond_13
    aget-object v7, v3, v9

    const-string v8, "SPExclusionList"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_16

    .line 431
    if-ne v2, v11, :cond_14

    .line 432
    const/16 v7, 0x10

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    .line 433
    new-array v7, v6, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    .line 434
    new-array v7, v6, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    .line 435
    aget-object v7, v3, v9

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    .line 436
    const/4 v7, -0x1

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeVal:I

    .line 437
    aget-object v7, v3, v6

    aget-object v8, v3, v10

    invoke-direct {p0, v7, v8}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getHotspotID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 438
    .restart local v0    # "hotspotID":Ljava/lang/String;
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "hotspot_id"

    aput-object v8, v7, v1

    .line 439
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aput-object v0, v7, v1

    goto/16 :goto_0

    .line 440
    .end local v0    # "hotspotID":Ljava/lang/String;
    :cond_14
    const/4 v7, 0x7

    if-ne v2, v7, :cond_15

    .line 441
    const/16 v7, 0x10

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    .line 442
    new-array v7, v12, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    .line 443
    new-array v7, v12, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    .line 444
    aget-object v7, v3, v9

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    .line 445
    iput v6, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeVal:I

    .line 446
    aget-object v7, v3, v6

    aget-object v8, v3, v10

    invoke-direct {p0, v7, v8}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getHotspotID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 447
    .restart local v0    # "hotspotID":Ljava/lang/String;
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "hotspot_id"

    aput-object v8, v7, v1

    .line 448
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aput-object v0, v7, v1

    .line 449
    add-int/lit8 v1, v1, 0x1

    .line 450
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "server_spexclusion_id"

    aput-object v8, v7, v1

    .line 451
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aget-object v8, v3, v11

    aput-object v8, v7, v1

    goto/16 :goto_0

    .line 452
    .end local v0    # "hotspotID":Ljava/lang/String;
    :cond_15
    const/16 v7, 0x8

    if-ne v2, v7, :cond_1

    .line 453
    const/4 v7, 0x4

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    .line 454
    new-array v7, v12, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    .line 455
    new-array v7, v12, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    .line 456
    const/4 v7, 0x7

    aget-object v7, v3, v7

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    .line 457
    const/4 v7, -0x1

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeVal:I

    .line 458
    aget-object v7, v3, v6

    aget-object v8, v3, v10

    invoke-direct {p0, v7, v8}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getHotspotID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 459
    .restart local v0    # "hotspotID":Ljava/lang/String;
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "hotspot_id"

    aput-object v8, v7, v1

    .line 460
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aput-object v0, v7, v1

    .line 461
    add-int/lit8 v1, v1, 0x1

    .line 462
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "server_spexclusion_id"

    aput-object v8, v7, v1

    .line 463
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aget-object v8, v3, v11

    aput-object v8, v7, v1

    goto/16 :goto_0

    .line 465
    .end local v0    # "hotspotID":Ljava/lang/String;
    :cond_16
    aget-object v7, v3, v9

    const-string v8, "RequiredProtoPortTuple"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_19

    .line 467
    if-ne v2, v11, :cond_17

    .line 468
    const/4 v7, 0x4

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    .line 469
    new-array v7, v6, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    .line 470
    new-array v7, v6, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    .line 471
    aget-object v7, v3, v10

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    .line 472
    const/4 v7, -0x1

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeVal:I

    .line 473
    aget-object v7, v3, v6

    aget-object v8, v3, v10

    invoke-direct {p0, v7, v8}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getHotspotID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 474
    .restart local v0    # "hotspotID":Ljava/lang/String;
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "hotspot_id"

    aput-object v8, v7, v1

    .line 475
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aput-object v0, v7, v1

    goto/16 :goto_0

    .line 476
    .end local v0    # "hotspotID":Ljava/lang/String;
    :cond_17
    const/4 v7, 0x7

    if-ne v2, v7, :cond_18

    .line 477
    const/4 v7, 0x4

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    .line 478
    new-array v7, v12, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    .line 479
    new-array v7, v12, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    .line 480
    aget-object v7, v3, v9

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    .line 481
    iput v6, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeVal:I

    .line 482
    aget-object v7, v3, v6

    aget-object v8, v3, v10

    invoke-direct {p0, v7, v8}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getHotspotID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 483
    .restart local v0    # "hotspotID":Ljava/lang/String;
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "hotspot_id"

    aput-object v8, v7, v1

    .line 484
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aput-object v0, v7, v1

    .line 485
    add-int/lit8 v1, v1, 0x1

    .line 486
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "server_tupple_id"

    aput-object v8, v7, v1

    .line 487
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aget-object v8, v3, v11

    aput-object v8, v7, v1

    goto/16 :goto_0

    .line 488
    .end local v0    # "hotspotID":Ljava/lang/String;
    :cond_18
    const/16 v7, 0x8

    if-ne v2, v7, :cond_1

    .line 489
    const/4 v7, 0x4

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    .line 490
    new-array v7, v12, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    .line 491
    new-array v7, v12, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    .line 492
    const/4 v7, 0x7

    aget-object v7, v3, v7

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    .line 493
    const/4 v7, -0x1

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeVal:I

    .line 494
    aget-object v7, v3, v6

    aget-object v8, v3, v10

    invoke-direct {p0, v7, v8}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getHotspotID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 495
    .restart local v0    # "hotspotID":Ljava/lang/String;
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "hotspot_id"

    aput-object v8, v7, v1

    .line 496
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aput-object v0, v7, v1

    .line 497
    add-int/lit8 v1, v1, 0x1

    .line 498
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "tupple_id"

    aput-object v8, v7, v1

    .line 499
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aget-object v8, v3, v11

    aput-object v8, v7, v1

    goto/16 :goto_0

    .line 501
    .end local v0    # "hotspotID":Ljava/lang/String;
    :cond_19
    aget-object v7, v3, v9

    const-string v8, "MaximumBSSLoadValue"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 503
    const/4 v7, 0x0

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    .line 504
    new-array v7, v6, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    .line 505
    new-array v7, v6, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    .line 506
    aget-object v7, v3, v9

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    .line 507
    const/4 v7, -0x1

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeVal:I

    .line 508
    aget-object v7, v3, v6

    aget-object v8, v3, v10

    invoke-direct {p0, v7, v8}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getHotspotID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 509
    .restart local v0    # "hotspotID":Ljava/lang/String;
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "hotspot_id"

    aput-object v8, v7, v1

    .line 510
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aput-object v0, v7, v1

    goto/16 :goto_0

    .line 512
    .end local v0    # "hotspotID":Ljava/lang/String;
    :cond_1a
    if-ne v2, v9, :cond_1b

    const/4 v7, 0x4

    aget-object v7, v3, v7

    const-string v8, "CredentialPriority"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 515
    const/4 v7, 0x0

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    .line 516
    new-array v7, v6, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    .line 517
    new-array v7, v6, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    .line 518
    const/4 v7, 0x4

    aget-object v7, v3, v7

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    .line 519
    const/4 v7, -0x1

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeVal:I

    .line 520
    aget-object v7, v3, v6

    aget-object v8, v3, v10

    invoke-direct {p0, v7, v8}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getHotspotID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 521
    .restart local v0    # "hotspotID":Ljava/lang/String;
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "hotspot_id"

    aput-object v8, v7, v1

    .line 522
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aput-object v0, v7, v1

    goto/16 :goto_0

    .line 523
    .end local v0    # "hotspotID":Ljava/lang/String;
    :cond_1b
    if-le v2, v9, :cond_1d

    const/4 v7, 0x4

    aget-object v7, v3, v7

    const-string v8, "SubscriptionRemediation"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1d

    .line 526
    if-ne v2, v11, :cond_1c

    aget-object v7, v3, v9

    const-string v8, "URI"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 527
    const/4 v7, 0x0

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    .line 528
    new-array v7, v6, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    .line 529
    new-array v7, v6, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    .line 530
    aget-object v7, v3, v9

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    .line 531
    const/4 v7, -0x1

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeVal:I

    .line 532
    aget-object v7, v3, v6

    aget-object v8, v3, v10

    invoke-direct {p0, v7, v8}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getHotspotID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 533
    .restart local v0    # "hotspotID":Ljava/lang/String;
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "hotspot_id"

    aput-object v8, v7, v1

    .line 534
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aput-object v0, v7, v1

    goto/16 :goto_0

    .line 535
    .end local v0    # "hotspotID":Ljava/lang/String;
    :cond_1c
    const/4 v7, 0x7

    if-ne v2, v7, :cond_1

    .line 536
    const/4 v7, 0x0

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    .line 537
    new-array v7, v6, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    .line 538
    new-array v7, v6, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    .line 539
    aget-object v7, v3, v11

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    .line 540
    const/4 v7, -0x1

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeVal:I

    .line 541
    aget-object v7, v3, v6

    aget-object v8, v3, v10

    invoke-direct {p0, v7, v8}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getHotspotID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 542
    .restart local v0    # "hotspotID":Ljava/lang/String;
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "hotspot_id"

    aput-object v8, v7, v1

    .line 543
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aput-object v0, v7, v1

    goto/16 :goto_0

    .line 545
    .end local v0    # "hotspotID":Ljava/lang/String;
    :cond_1d
    if-lt v2, v9, :cond_20

    const/4 v7, 0x4

    aget-object v7, v3, v7

    const-string v8, "AAAServerTrustRoot"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_20

    .line 548
    if-ne v2, v9, :cond_1e

    .line 549
    iput v9, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    .line 550
    new-array v7, v6, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    .line 551
    new-array v7, v6, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    .line 552
    const/4 v7, 0x4

    aget-object v7, v3, v7

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    .line 553
    const/4 v7, -0x1

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeVal:I

    .line 554
    aget-object v7, v3, v6

    aget-object v8, v3, v10

    invoke-direct {p0, v7, v8}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getHotspotID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 555
    .restart local v0    # "hotspotID":Ljava/lang/String;
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "hotspot_id"

    aput-object v8, v7, v1

    .line 556
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aput-object v0, v7, v1

    goto/16 :goto_0

    .line 557
    .end local v0    # "hotspotID":Ljava/lang/String;
    :cond_1e
    if-ne v2, v11, :cond_1f

    .line 558
    iput v9, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    .line 559
    new-array v7, v12, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    .line 560
    new-array v7, v12, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    .line 561
    const/4 v7, 0x4

    aget-object v7, v3, v7

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    .line 562
    iput v6, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeVal:I

    .line 563
    aget-object v7, v3, v6

    aget-object v8, v3, v10

    invoke-direct {p0, v7, v8}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getHotspotID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 564
    .restart local v0    # "hotspotID":Ljava/lang/String;
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "hotspot_id"

    aput-object v8, v7, v1

    .line 565
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aput-object v0, v7, v1

    .line 566
    add-int/lit8 v1, v1, 0x1

    .line 567
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "server_trustroot_id"

    aput-object v8, v7, v1

    .line 568
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aget-object v8, v3, v9

    aput-object v8, v7, v1

    goto/16 :goto_0

    .line 569
    .end local v0    # "hotspotID":Ljava/lang/String;
    :cond_1f
    const/4 v7, 0x7

    if-ne v2, v7, :cond_1

    .line 570
    iput v9, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    .line 571
    new-array v7, v12, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    .line 572
    new-array v7, v12, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    .line 573
    aget-object v7, v3, v11

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    .line 574
    const/4 v7, -0x1

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeVal:I

    .line 575
    aget-object v7, v3, v6

    aget-object v8, v3, v10

    invoke-direct {p0, v7, v8}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getHotspotID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 576
    .restart local v0    # "hotspotID":Ljava/lang/String;
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "hotspot_id"

    aput-object v8, v7, v1

    .line 577
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aput-object v0, v7, v1

    .line 578
    add-int/lit8 v1, v1, 0x1

    .line 579
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "server_trustroot_id"

    aput-object v8, v7, v1

    .line 580
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aget-object v8, v3, v9

    aput-object v8, v7, v1

    goto/16 :goto_0

    .line 582
    .end local v0    # "hotspotID":Ljava/lang/String;
    :cond_20
    if-le v2, v9, :cond_23

    const/4 v7, 0x4

    aget-object v7, v3, v7

    const-string v8, "SubscriptionUpdate"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_23

    .line 585
    const-string v7, "HotspotDMHandler"

    const-string v8, "Inside Subscription Update"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    if-ne v2, v11, :cond_21

    .line 587
    iput v6, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    .line 588
    new-array v7, v12, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    .line 589
    new-array v7, v12, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    .line 590
    aget-object v7, v3, v9

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    .line 591
    const/4 v7, -0x1

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeVal:I

    .line 592
    aget-object v7, v3, v6

    aget-object v8, v3, v10

    invoke-direct {p0, v7, v8}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getHotspotID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 593
    .restart local v0    # "hotspotID":Ljava/lang/String;
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "hotspot_id"

    aput-object v8, v7, v1

    .line 594
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aput-object v0, v7, v1

    .line 595
    add-int/lit8 v1, v1, 0x1

    .line 596
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "type_of_node"

    aput-object v8, v7, v1

    .line 597
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    iget-object v8, p0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->typeOfNode:[Ljava/lang/String;

    aget-object v8, v8, v6

    aput-object v8, v7, v1

    goto/16 :goto_0

    .line 598
    .end local v0    # "hotspotID":Ljava/lang/String;
    :cond_21
    const/4 v7, 0x7

    if-ne v2, v7, :cond_22

    aget-object v7, v3, v9

    const-string v8, "TrustRoot"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_22

    .line 600
    const-string v7, "HotspotDMHandler"

    const-string v8, "Inside TrustRoot"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    iput v6, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    .line 602
    new-array v7, v12, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    .line 603
    new-array v7, v12, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    .line 604
    aget-object v7, v3, v11

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    .line 605
    const/4 v7, -0x1

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeVal:I

    .line 606
    aget-object v7, v3, v6

    aget-object v8, v3, v10

    invoke-direct {p0, v7, v8}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getHotspotID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 607
    .restart local v0    # "hotspotID":Ljava/lang/String;
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "hotspot_id"

    aput-object v8, v7, v1

    .line 608
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aput-object v0, v7, v1

    .line 609
    add-int/lit8 v1, v1, 0x1

    .line 610
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "type_of_node"

    aput-object v8, v7, v1

    .line 611
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    iget-object v8, p0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->typeOfNode:[Ljava/lang/String;

    aget-object v8, v8, v6

    aput-object v8, v7, v1

    goto/16 :goto_0

    .line 612
    .end local v0    # "hotspotID":Ljava/lang/String;
    :cond_22
    const/4 v7, 0x7

    if-ne v2, v7, :cond_1

    aget-object v7, v3, v9

    const-string v8, "UsernamePassword"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 615
    iput v6, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    .line 616
    new-array v7, v12, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    .line 617
    new-array v7, v12, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    .line 618
    aget-object v7, v3, v11

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    .line 619
    const/4 v7, -0x1

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeVal:I

    .line 620
    aget-object v7, v3, v6

    aget-object v8, v3, v10

    invoke-direct {p0, v7, v8}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getHotspotID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 621
    .restart local v0    # "hotspotID":Ljava/lang/String;
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "hotspot_id"

    aput-object v8, v7, v1

    .line 622
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aput-object v0, v7, v1

    .line 623
    add-int/lit8 v1, v1, 0x1

    .line 624
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "type_of_node"

    aput-object v8, v7, v1

    .line 625
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    iget-object v8, p0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->typeOfNode:[Ljava/lang/String;

    aget-object v8, v8, v6

    aput-object v8, v7, v1

    goto/16 :goto_0

    .line 627
    .end local v0    # "hotspotID":Ljava/lang/String;
    :cond_23
    if-le v2, v9, :cond_31

    const/4 v7, 0x4

    aget-object v7, v3, v7

    const-string v8, "HomeSP"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_31

    .line 628
    aget-object v7, v3, v9

    const-string v8, "NetworkID"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_27

    .line 629
    if-ne v2, v11, :cond_24

    .line 630
    iput v11, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    .line 631
    new-array v7, v6, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    .line 632
    new-array v7, v6, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    .line 633
    aget-object v7, v3, v9

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    .line 634
    const/4 v7, -0x1

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeVal:I

    .line 635
    aget-object v7, v3, v6

    aget-object v8, v3, v10

    invoke-direct {p0, v7, v8}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getHotspotID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 636
    .restart local v0    # "hotspotID":Ljava/lang/String;
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "hotspot_id"

    aput-object v8, v7, v1

    .line 637
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aput-object v0, v7, v1

    goto/16 :goto_0

    .line 638
    .end local v0    # "hotspotID":Ljava/lang/String;
    :cond_24
    const/4 v7, 0x7

    if-ne v2, v7, :cond_25

    .line 639
    iput v11, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    .line 640
    new-array v7, v12, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    .line 641
    new-array v7, v12, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    .line 642
    aget-object v7, v3, v9

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    .line 643
    iput v6, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeVal:I

    .line 645
    aget-object v7, v3, v6

    aget-object v8, v3, v10

    invoke-direct {p0, v7, v8}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getHotspotID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 646
    .restart local v0    # "hotspotID":Ljava/lang/String;
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "hotspot_id"

    aput-object v8, v7, v1

    .line 647
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aput-object v0, v7, v1

    .line 648
    add-int/lit8 v1, v1, 0x1

    .line 649
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "server_network_id"

    aput-object v8, v7, v1

    .line 650
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aget-object v8, v3, v11

    aput-object v8, v7, v1

    goto/16 :goto_0

    .line 651
    .end local v0    # "hotspotID":Ljava/lang/String;
    :cond_25
    const/16 v7, 0x8

    if-ne v2, v7, :cond_1

    .line 652
    iput v11, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    .line 653
    new-array v7, v12, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    .line 654
    new-array v7, v12, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    .line 655
    aget-object v7, v3, v9

    const-string v8, "SSID"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_26

    .line 656
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "HOMESP_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x7

    aget-object v8, v3, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    .line 660
    :goto_2
    const/4 v7, -0x1

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeVal:I

    .line 662
    aget-object v7, v3, v6

    aget-object v8, v3, v10

    invoke-direct {p0, v7, v8}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getHotspotID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 663
    .restart local v0    # "hotspotID":Ljava/lang/String;
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "hotspot_id"

    aput-object v8, v7, v1

    .line 664
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aput-object v0, v7, v1

    .line 665
    add-int/lit8 v1, v1, 0x1

    .line 666
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "server_network_id"

    aput-object v8, v7, v1

    .line 667
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aget-object v8, v3, v11

    aput-object v8, v7, v1

    goto/16 :goto_0

    .line 658
    .end local v0    # "hotspotID":Ljava/lang/String;
    :cond_26
    const/4 v7, 0x7

    aget-object v7, v3, v7

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    goto :goto_2

    .line 669
    :cond_27
    if-ne v2, v11, :cond_28

    aget-object v7, v3, v9

    const-string v8, "FriendlyName"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_28

    .line 671
    const/4 v7, 0x0

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    .line 672
    new-array v7, v6, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    .line 673
    new-array v7, v6, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    .line 674
    aget-object v7, v3, v9

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    .line 675
    const/4 v7, -0x1

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeVal:I

    .line 676
    aget-object v7, v3, v6

    aget-object v8, v3, v10

    invoke-direct {p0, v7, v8}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getHotspotID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 677
    .restart local v0    # "hotspotID":Ljava/lang/String;
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "hotspot_id"

    aput-object v8, v7, v1

    .line 678
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aput-object v0, v7, v1

    goto/16 :goto_0

    .line 679
    .end local v0    # "hotspotID":Ljava/lang/String;
    :cond_28
    if-ne v2, v11, :cond_29

    aget-object v7, v3, v9

    const-string v8, "IconURL"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_29

    .line 681
    const/4 v7, 0x0

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    .line 682
    new-array v7, v6, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    .line 683
    new-array v7, v6, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    .line 684
    aget-object v7, v3, v9

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    .line 685
    const/4 v7, -0x1

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeVal:I

    .line 686
    aget-object v7, v3, v6

    aget-object v8, v3, v10

    invoke-direct {p0, v7, v8}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getHotspotID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 687
    .restart local v0    # "hotspotID":Ljava/lang/String;
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "hotspot_id"

    aput-object v8, v7, v1

    .line 688
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aput-object v0, v7, v1

    goto/16 :goto_0

    .line 689
    .end local v0    # "hotspotID":Ljava/lang/String;
    :cond_29
    if-ne v2, v11, :cond_2a

    aget-object v7, v3, v9

    const-string v8, "FQDN"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2a

    .line 691
    const/4 v7, 0x0

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    .line 692
    new-array v7, v6, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    .line 693
    new-array v7, v6, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    .line 694
    aget-object v7, v3, v9

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    .line 695
    const/4 v7, -0x1

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeVal:I

    .line 696
    aget-object v7, v3, v6

    aget-object v8, v3, v10

    invoke-direct {p0, v7, v8}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getHotspotID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 697
    .restart local v0    # "hotspotID":Ljava/lang/String;
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "hotspot_id"

    aput-object v8, v7, v1

    .line 698
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aput-object v0, v7, v1

    goto/16 :goto_0

    .line 699
    .end local v0    # "hotspotID":Ljava/lang/String;
    :cond_2a
    if-ne v2, v11, :cond_2b

    aget-object v7, v3, v9

    const-string v8, "RoamingConsortiumOI"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2b

    .line 702
    const/4 v7, 0x0

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    .line 703
    new-array v7, v6, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    .line 704
    new-array v7, v6, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    .line 705
    aget-object v7, v3, v9

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    .line 706
    const/4 v7, -0x1

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeVal:I

    .line 707
    aget-object v7, v3, v6

    aget-object v8, v3, v10

    invoke-direct {p0, v7, v8}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getHotspotID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 708
    .restart local v0    # "hotspotID":Ljava/lang/String;
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "hotspot_id"

    aput-object v8, v7, v1

    .line 709
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aput-object v0, v7, v1

    goto/16 :goto_0

    .line 710
    .end local v0    # "hotspotID":Ljava/lang/String;
    :cond_2b
    aget-object v7, v3, v9

    const-string v8, "HomeOIList"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2e

    .line 711
    if-ne v2, v11, :cond_2c

    .line 712
    const/16 v7, 0x8

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    .line 713
    new-array v7, v6, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    .line 714
    new-array v7, v6, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    .line 715
    aget-object v7, v3, v9

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    .line 716
    const/4 v7, -0x1

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeVal:I

    .line 717
    aget-object v7, v3, v6

    aget-object v8, v3, v10

    invoke-direct {p0, v7, v8}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getHotspotID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 718
    .restart local v0    # "hotspotID":Ljava/lang/String;
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "hotspot_id"

    aput-object v8, v7, v1

    .line 719
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aput-object v0, v7, v1

    goto/16 :goto_0

    .line 720
    .end local v0    # "hotspotID":Ljava/lang/String;
    :cond_2c
    const/4 v7, 0x7

    if-ne v2, v7, :cond_2d

    .line 721
    const/16 v7, 0x8

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    .line 722
    new-array v7, v12, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    .line 723
    new-array v7, v12, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    .line 724
    aget-object v7, v3, v9

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    .line 725
    iput v6, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeVal:I

    .line 727
    aget-object v7, v3, v6

    aget-object v8, v3, v10

    invoke-direct {p0, v7, v8}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getHotspotID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 728
    .restart local v0    # "hotspotID":Ljava/lang/String;
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "hotspot_id"

    aput-object v8, v7, v1

    .line 729
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aput-object v0, v7, v1

    .line 730
    add-int/lit8 v1, v1, 0x1

    .line 731
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "server_homeoilist_id"

    aput-object v8, v7, v1

    .line 732
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aget-object v8, v3, v11

    aput-object v8, v7, v1

    goto/16 :goto_0

    .line 733
    .end local v0    # "hotspotID":Ljava/lang/String;
    :cond_2d
    const/16 v7, 0x8

    if-ne v2, v7, :cond_1

    .line 734
    const/16 v7, 0x8

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    .line 735
    new-array v7, v12, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    .line 736
    new-array v7, v12, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    .line 737
    const/4 v7, 0x7

    aget-object v7, v3, v7

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    .line 738
    const/4 v7, -0x1

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeVal:I

    .line 740
    aget-object v7, v3, v6

    aget-object v8, v3, v10

    invoke-direct {p0, v7, v8}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getHotspotID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 741
    .restart local v0    # "hotspotID":Ljava/lang/String;
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "hotspot_id"

    aput-object v8, v7, v1

    .line 742
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aput-object v0, v7, v1

    .line 743
    add-int/lit8 v1, v1, 0x1

    .line 744
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "server_homeoilist_id"

    aput-object v8, v7, v1

    .line 745
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aget-object v8, v3, v11

    aput-object v8, v7, v1

    goto/16 :goto_0

    .line 747
    .end local v0    # "hotspotID":Ljava/lang/String;
    :cond_2e
    aget-object v7, v3, v9

    const-string v8, "OtherHomePartners"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 749
    if-ne v2, v11, :cond_2f

    .line 750
    const/16 v7, 0x11

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    .line 751
    new-array v7, v6, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    .line 752
    new-array v7, v6, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    .line 753
    aget-object v7, v3, v9

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    .line 754
    const/4 v7, -0x1

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeVal:I

    .line 755
    aget-object v7, v3, v6

    aget-object v8, v3, v10

    invoke-direct {p0, v7, v8}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getHotspotID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 756
    .restart local v0    # "hotspotID":Ljava/lang/String;
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "hotspot_id"

    aput-object v8, v7, v1

    .line 757
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aput-object v0, v7, v1

    goto/16 :goto_0

    .line 758
    .end local v0    # "hotspotID":Ljava/lang/String;
    :cond_2f
    const/4 v7, 0x7

    if-ne v2, v7, :cond_30

    .line 759
    const/16 v7, 0x11

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    .line 760
    new-array v7, v12, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    .line 761
    new-array v7, v12, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    .line 762
    aget-object v7, v3, v9

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    .line 763
    iput v6, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeVal:I

    .line 765
    aget-object v7, v3, v6

    aget-object v8, v3, v10

    invoke-direct {p0, v7, v8}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getHotspotID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 766
    .restart local v0    # "hotspotID":Ljava/lang/String;
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "hotspot_id"

    aput-object v8, v7, v1

    .line 767
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aput-object v0, v7, v1

    .line 768
    add-int/lit8 v1, v1, 0x1

    .line 769
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "server_otherhome_network_id"

    aput-object v8, v7, v1

    .line 770
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aget-object v8, v3, v11

    aput-object v8, v7, v1

    goto/16 :goto_0

    .line 771
    .end local v0    # "hotspotID":Ljava/lang/String;
    :cond_30
    const/16 v7, 0x8

    if-ne v2, v7, :cond_1

    .line 772
    const/16 v7, 0x11

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    .line 773
    new-array v7, v12, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    .line 774
    new-array v7, v12, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    .line 775
    const/4 v7, 0x7

    aget-object v7, v3, v7

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    .line 776
    const/4 v7, -0x1

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeVal:I

    .line 778
    aget-object v7, v3, v6

    aget-object v8, v3, v10

    invoke-direct {p0, v7, v8}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getHotspotID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 779
    .restart local v0    # "hotspotID":Ljava/lang/String;
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "hotspot_id"

    aput-object v8, v7, v1

    .line 780
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aput-object v0, v7, v1

    .line 781
    add-int/lit8 v1, v1, 0x1

    .line 782
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "server_otherhome_network_id"

    aput-object v8, v7, v1

    .line 783
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aget-object v8, v3, v11

    aput-object v8, v7, v1

    goto/16 :goto_0

    .line 786
    .end local v0    # "hotspotID":Ljava/lang/String;
    :cond_31
    if-le v2, v9, :cond_33

    const/4 v7, 0x4

    aget-object v7, v3, v7

    const-string v8, "SubscriptionParameters"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_33

    .line 789
    if-lt v2, v11, :cond_32

    aget-object v7, v3, v9

    const-string v8, "UsageLimits"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_32

    .line 791
    const/4 v7, 0x7

    if-ne v2, v7, :cond_1

    .line 792
    const/4 v7, 0x0

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    .line 793
    new-array v7, v6, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    .line 794
    new-array v7, v6, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    .line 795
    aget-object v7, v3, v11

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    .line 796
    const/4 v7, -0x1

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeVal:I

    .line 798
    aget-object v7, v3, v6

    aget-object v8, v3, v10

    invoke-direct {p0, v7, v8}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getHotspotID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 799
    .restart local v0    # "hotspotID":Ljava/lang/String;
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "hotspot_id"

    aput-object v8, v7, v1

    .line 800
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aput-object v0, v7, v1

    goto/16 :goto_0

    .line 803
    .end local v0    # "hotspotID":Ljava/lang/String;
    :cond_32
    const/4 v7, 0x0

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    .line 804
    new-array v7, v6, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    .line 805
    new-array v7, v6, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    .line 806
    aget-object v7, v3, v9

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    .line 807
    const/4 v7, -0x1

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeVal:I

    .line 809
    aget-object v7, v3, v6

    aget-object v8, v3, v10

    invoke-direct {p0, v7, v8}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getHotspotID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 810
    .restart local v0    # "hotspotID":Ljava/lang/String;
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "hotspot_id"

    aput-object v8, v7, v1

    .line 811
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aput-object v0, v7, v1

    goto/16 :goto_0

    .line 813
    .end local v0    # "hotspotID":Ljava/lang/String;
    :cond_33
    if-lt v2, v9, :cond_3b

    const/4 v7, 0x4

    aget-object v7, v3, v7

    const-string v8, "Credential"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3b

    .line 815
    if-ne v2, v11, :cond_35

    aget-object v7, v3, v9

    const-string v8, "CreationDate"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_34

    aget-object v7, v3, v9

    const-string v8, "ExpirationDate"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_34

    aget-object v7, v3, v9

    const-string v8, "Realm"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_34

    aget-object v7, v3, v9

    const-string v8, "checkAAAServerCertStatus"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_35

    .line 821
    :cond_34
    const/4 v7, 0x7

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    .line 822
    new-array v7, v6, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    .line 823
    new-array v7, v6, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    .line 824
    aget-object v7, v3, v9

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    .line 825
    const/4 v7, -0x1

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeVal:I

    .line 827
    aget-object v7, v3, v6

    aget-object v8, v3, v10

    invoke-direct {p0, v7, v8}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getHotspotID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 828
    .restart local v0    # "hotspotID":Ljava/lang/String;
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "hotspot_id"

    aput-object v8, v7, v1

    .line 829
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aput-object v0, v7, v1

    goto/16 :goto_0

    .line 830
    .end local v0    # "hotspotID":Ljava/lang/String;
    :cond_35
    const/4 v7, 0x7

    if-lt v2, v7, :cond_38

    aget-object v7, v3, v9

    const-string v8, "UsernamePassword"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_38

    .line 833
    const/4 v7, 0x7

    if-ne v2, v7, :cond_37

    aget-object v7, v3, v11

    const-string v8, "Username"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_36

    aget-object v7, v3, v11

    const-string v8, "Password"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_36

    aget-object v7, v3, v11

    const-string v8, "MachineManaged"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_36

    aget-object v7, v3, v11

    const-string v8, "SoftTokenApp"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_36

    aget-object v7, v3, v11

    const-string v8, "AbleToShare"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_37

    .line 842
    :cond_36
    const/4 v7, 0x7

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    .line 843
    new-array v7, v6, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    .line 844
    new-array v7, v6, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    .line 845
    aget-object v7, v3, v11

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    .line 846
    const/4 v7, -0x1

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeVal:I

    .line 848
    aget-object v7, v3, v6

    aget-object v8, v3, v10

    invoke-direct {p0, v7, v8}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getHotspotID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 849
    .restart local v0    # "hotspotID":Ljava/lang/String;
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "hotspot_id"

    aput-object v8, v7, v1

    .line 850
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aput-object v0, v7, v1

    goto/16 :goto_0

    .line 851
    .end local v0    # "hotspotID":Ljava/lang/String;
    :cond_37
    const/4 v7, 0x7

    if-le v2, v7, :cond_1

    aget-object v7, v3, v11

    const-string v8, "EAPMethod"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 853
    const/16 v7, 0x8

    if-ne v2, v7, :cond_1

    .line 854
    const/4 v7, 0x7

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    .line 855
    new-array v7, v6, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    .line 856
    new-array v7, v6, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    .line 857
    const/4 v7, 0x7

    aget-object v7, v3, v7

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    .line 858
    const/4 v7, -0x1

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeVal:I

    .line 860
    aget-object v7, v3, v6

    aget-object v8, v3, v10

    invoke-direct {p0, v7, v8}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getHotspotID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 861
    .restart local v0    # "hotspotID":Ljava/lang/String;
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "hotspot_id"

    aput-object v8, v7, v1

    .line 862
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aput-object v0, v7, v1

    goto/16 :goto_0

    .line 865
    .end local v0    # "hotspotID":Ljava/lang/String;
    :cond_38
    if-lt v2, v11, :cond_39

    aget-object v7, v3, v9

    const-string v8, "DigitalCertificate"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_39

    .line 868
    const/4 v7, 0x7

    if-ne v2, v7, :cond_1

    .line 869
    const/4 v7, 0x7

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    .line 870
    new-array v7, v6, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    .line 871
    new-array v7, v6, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    .line 872
    aget-object v7, v3, v11

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    .line 873
    const/4 v7, -0x1

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeVal:I

    .line 875
    aget-object v7, v3, v6

    aget-object v8, v3, v10

    invoke-direct {p0, v7, v8}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getHotspotID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 876
    .restart local v0    # "hotspotID":Ljava/lang/String;
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "hotspot_id"

    aput-object v8, v7, v1

    .line 877
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aput-object v0, v7, v1

    goto/16 :goto_0

    .line 879
    .end local v0    # "hotspotID":Ljava/lang/String;
    :cond_39
    if-lt v2, v11, :cond_1

    aget-object v7, v3, v9

    const-string v8, "SIM"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 881
    const/4 v7, 0x7

    if-ne v2, v7, :cond_1

    .line 882
    const/4 v7, 0x7

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    .line 883
    new-array v7, v6, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    .line 884
    new-array v7, v6, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    .line 885
    const/4 v7, 0x4

    aget-object v7, v3, v7

    const-string v8, "EAPType"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3a

    .line 886
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SIM_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v3, v11

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    .line 890
    :goto_3
    const/4 v7, -0x1

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeVal:I

    .line 892
    aget-object v7, v3, v6

    aget-object v8, v3, v10

    invoke-direct {p0, v7, v8}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getHotspotID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 893
    .restart local v0    # "hotspotID":Ljava/lang/String;
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "hotspot_id"

    aput-object v8, v7, v1

    .line 894
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aput-object v0, v7, v1

    goto/16 :goto_0

    .line 888
    .end local v0    # "hotspotID":Ljava/lang/String;
    :cond_3a
    aget-object v7, v3, v11

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    goto :goto_3

    .line 897
    :cond_3b
    if-ne v2, v9, :cond_1

    const/4 v7, 0x4

    aget-object v7, v3, v7

    const-string v8, "Extension"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 899
    const/4 v7, 0x0

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    .line 900
    new-array v7, v6, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    .line 901
    new-array v7, v6, [Ljava/lang/String;

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    .line 902
    const/4 v7, 0x4

    aget-object v7, v3, v7

    iput-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    .line 903
    const/4 v7, -0x1

    iput v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeVal:I

    .line 905
    aget-object v7, v3, v6

    aget-object v8, v3, v10

    invoke-direct {p0, v7, v8}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getHotspotID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 906
    .restart local v0    # "hotspotID":Ljava/lang/String;
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    const-string v8, "hotspot_id"

    aput-object v8, v7, v1

    .line 907
    iget-object v7, p2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aput-object v0, v7, v1

    goto/16 :goto_0
.end method


# virtual methods
.method public addDMData(Landroid/net/wifi/hs20/WifiHs20DMData;)Z
    .locals 20
    .param p1, "data"    # Landroid/net/wifi/hs20/WifiHs20DMData;

    .prologue
    .line 1097
    if-nez p1, :cond_0

    .line 1098
    const/4 v2, 0x0

    .line 1224
    :goto_0
    return v2

    .line 1099
    :cond_0
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/net/wifi/hs20/WifiHs20DMData;->uri:Ljava/lang/String;

    .line 1100
    .local v13, "nodeURI":Ljava/lang/String;
    const-string v2, "HotspotDMHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " nodeURI is   "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    const/4 v8, 0x0

    .line 1102
    .local v8, "addcur":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 1103
    .local v9, "count":I
    move-object/from16 v0, p1

    iget v2, v0, Landroid/net/wifi/hs20/WifiHs20DMData;->fmt:I

    const/4 v4, 0x5

    if-ne v2, v4, :cond_1

    .line 1104
    const-string v2, "HotspotDMHandler"

    const-string v4, "Field Name Node !!! Return Nothing to be added  "

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    const/4 v2, 0x1

    goto :goto_0

    .line 1107
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->modifyMO:Z

    if-nez v2, :cond_2

    .line 1108
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->modifyMO:Z

    .line 1109
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 1110
    .local v12, "intent":Landroid/content/Intent;
    const-string v2, "com.samsung.action.HOTSPOT_ADD_MO"

    invoke-virtual {v12, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1111
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1113
    .end local v12    # "intent":Landroid/content/Intent;
    :cond_2
    new-instance v14, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;

    invoke-direct {v14}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;-><init>()V

    .line 1114
    .local v14, "param":Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->parseUri(Ljava/lang/String;Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;)Z

    move-result v15

    .line 1115
    .local v15, "ret":Z
    if-nez v15, :cond_3

    .line 1116
    const/4 v2, 0x0

    goto :goto_0

    .line 1118
    :cond_3
    iget v2, v14, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getTableURI(I)Landroid/net/Uri;

    move-result-object v3

    .line 1119
    .local v3, "tableURI":Landroid/net/Uri;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 1120
    .local v17, "stbuilder":Ljava/lang/StringBuilder;
    const/4 v10, 0x0

    .line 1121
    .local v10, "flag":Z
    iget-object v2, v14, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 1122
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    iget-object v2, v14, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    array-length v2, v2

    if-ge v11, v2, :cond_7

    .line 1123
    iget-object v2, v14, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    aget-object v2, v2, v11

    if-eqz v2, :cond_4

    iget-object v2, v14, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_4

    .line 1124
    if-nez v10, :cond_5

    .line 1125
    iget-object v2, v14, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    aget-object v2, v2, v11

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1126
    const-string v2, "=?"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1127
    const/4 v10, 0x1

    .line 1122
    :cond_4
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 1129
    :cond_5
    const-string v2, " AND "

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1130
    iget-object v2, v14, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    aget-object v2, v2, v11

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1131
    const-string v2, "=?"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1136
    .end local v11    # "i":I
    :cond_6
    const-string v2, "HotspotDMHandler"

    const-string v4, "Parse failure. Not a valid URI"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1139
    .restart local v11    # "i":I
    :cond_7
    const/4 v5, 0x0

    .line 1140
    .local v5, "selection":Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_8

    .line 1141
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1148
    :cond_8
    iget-object v2, v14, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    array-length v9, v2

    .line 1155
    sget-object v2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->cr:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    iget-object v6, v14, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1156
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 1157
    const-string v2, "HotspotDMHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Count  got from the DB"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1159
    iget v2, v14, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeVal:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_c

    .line 1160
    if-lez v9, :cond_9

    .line 1161
    const-string v2, "HotspotDMHandler"

    const-string v4, "The node already exists"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1164
    :cond_9
    new-instance v19, Landroid/content/ContentValues;

    invoke-direct/range {v19 .. v19}, Landroid/content/ContentValues;-><init>()V

    .line 1165
    .local v19, "values":Landroid/content/ContentValues;
    iget-object v2, v14, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    array-length v9, v2

    .line 1166
    const/4 v11, 0x0

    :goto_3
    if-ge v11, v9, :cond_a

    .line 1167
    iget-object v2, v14, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    aget-object v2, v2, v11

    iget-object v4, v14, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aget-object v4, v4, v11

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1168
    const-string v2, "HotspotDMHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ContentValues being added for selection  "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v14, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    aget-object v6, v6, v11

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " AND selection Argument"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v14, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aget-object v6, v6, v11

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 1171
    :cond_a
    sget-object v2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->cr:Landroid/content/ContentResolver;

    move-object/from16 v0, v19

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v18

    .line 1172
    .local v18, "uri":Landroid/net/Uri;
    if-nez v18, :cond_b

    .line 1173
    const-string v2, "HotspotDMHandler"

    const-string v4, "Unable to insert"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1176
    :cond_b
    const-string v2, "HotspotDMHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Insertion successful:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1182
    .end local v18    # "uri":Landroid/net/Uri;
    .end local v19    # "values":Landroid/content/ContentValues;
    :cond_c
    if-nez v5, :cond_d

    .line 1183
    const/4 v2, 0x0

    iput-object v2, v14, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    .line 1185
    :cond_d
    new-instance v19, Landroid/content/ContentValues;

    invoke-direct/range {v19 .. v19}, Landroid/content/ContentValues;-><init>()V

    .line 1186
    .restart local v19    # "values":Landroid/content/ContentValues;
    if-nez v9, :cond_10

    .line 1187
    iget-object v2, v14, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    array-length v9, v2

    .line 1188
    const/4 v11, 0x0

    :goto_4
    if-ge v11, v9, :cond_e

    .line 1189
    iget-object v2, v14, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    aget-object v2, v2, v11

    iget-object v4, v14, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aget-object v4, v4, v11

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1190
    const-string v2, "HotspotDMHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ContentValues being added for selection  "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v14, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    aget-object v6, v6, v11

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " AND selection Argument"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v14, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aget-object v6, v6, v11

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 1193
    :cond_e
    sget-object v2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->cr:Landroid/content/ContentResolver;

    move-object/from16 v0, v19

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v18

    .line 1194
    .restart local v18    # "uri":Landroid/net/Uri;
    if-nez v18, :cond_f

    .line 1195
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1197
    :cond_f
    const-string v2, "HotspotDMHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Insertion successful:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    .end local v18    # "uri":Landroid/net/Uri;
    :cond_10
    const-string v2, "HotspotDMHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Param Name"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v14, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    move-object/from16 v0, p1

    iget v2, v0, Landroid/net/wifi/hs20/WifiHs20DMData;->fmt:I

    if-nez v2, :cond_12

    .line 1201
    const-string v4, "HotspotDMHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Field Name Int "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v2, Lcom/android/server/wifi/hs20/WifiHs20Helper;->dbFieldMap:Ljava/util/Map;

    iget-object v7, v14, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    sget-object v2, Lcom/android/server/wifi/hs20/WifiHs20Helper;->dbFieldMap:Ljava/util/Map;

    iget-object v4, v14, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p1

    iget-wide v6, v0, Landroid/net/wifi/hs20/WifiHs20DMData;->intData:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1216
    :cond_11
    :goto_5
    sget-object v2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->cr:Landroid/content/ContentResolver;

    iget-object v4, v14, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v2, v3, v0, v5, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v16

    .line 1217
    .local v16, "retValue":I
    if-nez v16, :cond_17

    .line 1218
    const-string v2, "HotspotDMHandler"

    const-string v4, "Rows is not updated"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1203
    .end local v16    # "retValue":I
    :cond_12
    move-object/from16 v0, p1

    iget v2, v0, Landroid/net/wifi/hs20/WifiHs20DMData;->fmt:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_14

    .line 1204
    const-string v4, "HotspotDMHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Field Name Bool "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v2, Lcom/android/server/wifi/hs20/WifiHs20Helper;->dbFieldMap:Ljava/util/Map;

    iget-object v7, v14, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    sget-object v2, Lcom/android/server/wifi/hs20/WifiHs20Helper;->dbFieldMap:Ljava/util/Map;

    iget-object v4, v14, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p1

    iget-boolean v4, v0, Landroid/net/wifi/hs20/WifiHs20DMData;->booleanData:Z

    if-eqz v4, :cond_13

    const/4 v4, 0x1

    :goto_6
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_5

    :cond_13
    const/4 v4, 0x0

    goto :goto_6

    .line 1206
    :cond_14
    move-object/from16 v0, p1

    iget v2, v0, Landroid/net/wifi/hs20/WifiHs20DMData;->fmt:I

    const/4 v4, 0x4

    if-ne v2, v4, :cond_15

    .line 1207
    const-string v4, "HotspotDMHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Field Name Bin "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v2, Lcom/android/server/wifi/hs20/WifiHs20Helper;->dbFieldMap:Ljava/util/Map;

    iget-object v7, v14, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    sget-object v2, Lcom/android/server/wifi/hs20/WifiHs20Helper;->dbFieldMap:Ljava/util/Map;

    iget-object v4, v14, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/net/wifi/hs20/WifiHs20DMData;->byteData:[B

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto/16 :goto_5

    .line 1209
    :cond_15
    move-object/from16 v0, p1

    iget v2, v0, Landroid/net/wifi/hs20/WifiHs20DMData;->fmt:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_16

    .line 1210
    const-string v4, "HotspotDMHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Field Name Char "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v2, Lcom/android/server/wifi/hs20/WifiHs20Helper;->dbFieldMap:Ljava/util/Map;

    iget-object v7, v14, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    sget-object v2, Lcom/android/server/wifi/hs20/WifiHs20Helper;->dbFieldMap:Ljava/util/Map;

    iget-object v4, v14, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/net/wifi/hs20/WifiHs20DMData;->charData:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1212
    :cond_16
    move-object/from16 v0, p1

    iget v2, v0, Landroid/net/wifi/hs20/WifiHs20DMData;->fmt:I

    const/4 v4, 0x5

    if-ne v2, v4, :cond_11

    .line 1213
    const-string v2, "HotspotDMHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Field Name Node !!! "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v14, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1221
    .restart local v16    # "retValue":I
    :cond_17
    const-string v2, "HotspotDMHandler"

    const-string v4, "Rows got updated"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    const/4 v2, 0x1

    goto/16 :goto_0
.end method

.method public checknDelete(Ljava/lang/String;Ljava/lang/String;)I
    .locals 13
    .param p1, "fqdn"    # Ljava/lang/String;
    .param p2, "ppsmoID"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 913
    const-string v3, "fqdn=?"

    .line 914
    .local v3, "selection":Ljava/lang/String;
    iget v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->DEFAULT_LENGTH:I

    new-array v4, v0, [Ljava/lang/String;

    .line 915
    .local v4, "selectionArgs":[Ljava/lang/String;
    aput-object p1, v4, v1

    .line 916
    const/4 v10, 0x0

    .line 917
    .local v10, "id":I
    const/4 v8, 0x0

    .line 918
    .local v8, "dbPpsmoID":Ljava/lang/String;
    const/4 v11, -0x1

    .line 919
    .local v11, "updateIdenfier":I
    const/4 v7, 0x0

    .line 921
    .local v7, "cr":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Fqdn;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 923
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 924
    .local v6, "count":I
    const-string v0, "HotspotDMHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checknDelete :count"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    if-lez v6, :cond_0

    .line 926
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 927
    const-string v0, "hotspot_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 928
    const-string v0, "ppsmo_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 929
    const-string v0, "HotspotDMHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checknDelete :PPSMO ID"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    if-nez v8, :cond_0

    .line 931
    const-string v0, "update_identifier"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 933
    const-string v3, "hotspot_id=?"

    .line 934
    const/4 v0, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 935
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Fqdn;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 939
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v12, v11

    .line 946
    .end local v6    # "count":I
    .end local v11    # "updateIdenfier":I
    .local v12, "updateIdenfier":I
    :goto_0
    return v12

    .line 940
    .end local v12    # "updateIdenfier":I
    .restart local v11    # "updateIdenfier":I
    :catch_0
    move-exception v9

    .line 941
    .local v9, "e":Ljava/lang/Exception;
    if-eqz v7, :cond_1

    .line 942
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 943
    :cond_1
    const-string v0, "HotspotDMHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FQDN exception"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v12, v11

    .line 944
    .end local v11    # "updateIdenfier":I
    .restart local v12    # "updateIdenfier":I
    goto :goto_0
.end method

.method public deleteDMData(Landroid/net/wifi/hs20/WifiHs20DMData;)Z
    .locals 23
    .param p1, "data"    # Landroid/net/wifi/hs20/WifiHs20DMData;

    .prologue
    .line 1315
    if-nez p1, :cond_1

    .line 1316
    const/4 v10, 0x0

    .line 1390
    :cond_0
    :goto_0
    return v10

    .line 1317
    :cond_1
    :try_start_0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/hs20/WifiHs20DMData;->uri:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 1318
    .local v17, "nodeURI":Ljava/lang/String;
    const/4 v12, 0x0

    .line 1319
    .local v12, "deleteCursor":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 1320
    .local v9, "count":I
    new-instance v18, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;

    invoke-direct/range {v18 .. v18}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;-><init>()V

    .line 1321
    .local v18, "param":Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->parseUri(Ljava/lang/String;Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;)Z

    move-result v19

    .line 1322
    .local v19, "ret":Z
    if-nez v19, :cond_2

    .line 1323
    const/4 v10, 0x0

    goto :goto_0

    .line 1325
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->modifyMO:Z

    if-nez v3, :cond_3

    .line 1326
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->modifyMO:Z

    .line 1327
    new-instance v15, Landroid/content/Intent;

    invoke-direct {v15}, Landroid/content/Intent;-><init>()V

    .line 1328
    .local v15, "intent":Landroid/content/Intent;
    const-string v3, "com.samsung.action.HOTSPOT_UPDATE_MO"

    invoke-virtual {v15, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1329
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v15}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1331
    .end local v15    # "intent":Landroid/content/Intent;
    :cond_3
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    .line 1332
    .local v20, "stbuilder":Ljava/lang/StringBuilder;
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 1333
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    array-length v3, v3

    if-ge v14, v3, :cond_6

    .line 1334
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    aget-object v3, v3, v14

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1335
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-eq v14, v3, :cond_4

    .line 1336
    const-string v3, "=? AND "

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1333
    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 1338
    :cond_4
    const-string v3, "=?"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1386
    .end local v9    # "count":I
    .end local v12    # "deleteCursor":Landroid/database/Cursor;
    .end local v14    # "i":I
    .end local v17    # "nodeURI":Ljava/lang/String;
    .end local v18    # "param":Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;
    .end local v19    # "ret":Z
    .end local v20    # "stbuilder":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v13

    .line 1387
    .local v13, "e":Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    .line 1388
    const/4 v10, 0x0

    goto :goto_0

    .line 1341
    .end local v13    # "e":Ljava/lang/Exception;
    .restart local v9    # "count":I
    .restart local v12    # "deleteCursor":Landroid/database/Cursor;
    .restart local v17    # "nodeURI":Ljava/lang/String;
    .restart local v18    # "param":Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;
    .restart local v19    # "ret":Z
    .restart local v20    # "stbuilder":Ljava/lang/StringBuilder;
    :cond_5
    :try_start_1
    const-string v3, "HotspotDMHandler"

    const-string v5, "Parse failure. Not a valid URI "

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1342
    const/4 v10, 0x0

    goto :goto_0

    .line 1344
    .restart local v14    # "i":I
    :cond_6
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1345
    .local v6, "selection":Ljava/lang/String;
    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getTableURI(I)Landroid/net/Uri;

    move-result-object v4

    .line 1346
    .local v4, "tableURI":Landroid/net/Uri;
    sget-object v3, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->cr:Landroid/content/ContentResolver;

    const/4 v5, 0x0

    move-object/from16 v0, v18

    iget-object v7, v0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 1347
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 1348
    if-nez v9, :cond_7

    .line 1351
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1352
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 1354
    :cond_7
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1355
    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeVal:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_c

    .line 1358
    new-instance v22, Landroid/content/ContentValues;

    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V

    .line 1359
    .local v22, "values":Landroid/content/ContentValues;
    move-object/from16 v0, p1

    iget v3, v0, Landroid/net/wifi/hs20/WifiHs20DMData;->fmt:I

    if-eqz v3, :cond_8

    move-object/from16 v0, p1

    iget v3, v0, Landroid/net/wifi/hs20/WifiHs20DMData;->fmt:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_9

    .line 1360
    :cond_8
    const/16 v16, -0x1

    .line 1361
    .local v16, "invalidEntry":I
    sget-object v3, Lcom/android/server/wifi/hs20/WifiHs20Helper;->dbFieldMap:Ljava/util/Map;

    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1368
    .end local v16    # "invalidEntry":I
    :goto_3
    sget-object v3, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->cr:Landroid/content/ContentResolver;

    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v3, v4, v0, v6, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v21

    .line 1369
    .local v21, "updateCount":I
    if-nez v21, :cond_b

    .line 1370
    const-string v3, "HotspotDMHandler"

    const-string v5, "Update failed --- Delete root node value"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1390
    :goto_4
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 1362
    .end local v21    # "updateCount":I
    :cond_9
    move-object/from16 v0, p1

    iget v3, v0, Landroid/net/wifi/hs20/WifiHs20DMData;->fmt:I

    const/4 v5, 0x5

    if-ne v3, v5, :cond_a

    .line 1363
    sget-object v3, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->cr:Landroid/content/ContentResolver;

    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    invoke-virtual {v3, v4, v6, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1364
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 1366
    :cond_a
    sget-object v3, Lcom/android/server/wifi/hs20/WifiHs20Helper;->dbFieldMap:Ljava/util/Map;

    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, ""

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1372
    .restart local v21    # "updateCount":I
    :cond_b
    const-string v3, "HotspotDMHandler"

    const-string v5, "Update SUCCESS --- Delete root node value"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1374
    .end local v21    # "updateCount":I
    .end local v22    # "values":Landroid/content/ContentValues;
    :cond_c
    sget-object v3, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->cr:Landroid/content/ContentResolver;

    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    invoke-virtual {v3, v4, v6, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v11

    .line 1375
    .local v11, "deleteCount":I
    if-nez v11, :cond_d

    .line 1376
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 1378
    :cond_d
    const/4 v10, 0x0

    .line 1379
    .local v10, "crossEntry":Z
    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    if-nez v3, :cond_0

    .line 1380
    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v6, v5}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->deleteFromRelatedTables(ILjava/lang/String;[Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v10

    goto/16 :goto_0
.end method

.method public endSession(I)Z
    .locals 2
    .param p1, "status"    # I

    .prologue
    .line 1419
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1420
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.action.HOTSPOT_END_SESSION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1421
    const-string v1, "status"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1422
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1423
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->modifyMO:Z

    .line 1424
    const/4 v1, 0x1

    return v1
.end method

.method public exec(Landroid/net/wifi/hs20/WifiHs20DMData;)Z
    .locals 4
    .param p1, "param"    # Landroid/net/wifi/hs20/WifiHs20DMData;

    .prologue
    .line 1409
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1410
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.action.HOTSPOT_EXEC_COMMAND"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1411
    const-string v1, "command"

    iget-object v2, p1, Landroid/net/wifi/hs20/WifiHs20DMData;->command:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1412
    const-string v1, "execData"

    iget-object v2, p1, Landroid/net/wifi/hs20/WifiHs20DMData;->execData:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1413
    const-string v1, "HotspotDMHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Prashant :  param.command."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/net/wifi/hs20/WifiHs20DMData;->command:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "param.execData"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/net/wifi/hs20/WifiHs20DMData;->execData:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1414
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1415
    const/4 v1, 0x1

    return v1
.end method

.method public getCredentials(IILjava/lang/String;)Landroid/net/wifi/hs20/WifiHs20DMData;
    .locals 14
    .param p1, "credentialType"    # I
    .param p2, "credentialID"    # I
    .param p3, "subscriptionType"    # Ljava/lang/String;

    .prologue
    .line 1486
    const-string v1, "HotspotDMHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCredentialscredentialID"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "subscriptionType"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "credentialType"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1488
    move/from16 v0, p2

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getHotspotId(I)I

    move-result v12

    .line 1489
    .local v12, "hotspotID":I
    const/4 v8, 0x0

    .line 1490
    .local v8, "credentials":Landroid/net/wifi/hs20/WifiHs20DMData;
    const-string v1, "HotspotDMHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCredentialshotspotID"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1491
    const-string v1, "HS2.0SubscriptionRemediation"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1492
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    .line 1493
    .local v4, "selection":Ljava/lang/String;
    const/4 v5, 0x0

    .line 1494
    .local v5, "selectArgs":[Ljava/lang/String;
    const-string v4, "hotspot_id=? AND type_of_node=?"

    .line 1496
    iget v1, p0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->DEFAULT_LENGTH:I

    mul-int/lit8 v1, v1, 0x2

    new-array v5, v1, [Ljava/lang/String;

    .line 1497
    const/4 v1, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    .line 1498
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->typeOfNode:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    aput-object v2, v5, v1

    .line 1499
    const/4 v10, 0x0

    .line 1501
    .local v10, "dbCur":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->cr:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/server/wifi/hs20/WifiHs20DBStore$PolicySubscriptionUpdate;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1503
    if-eqz v10, :cond_0

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_5

    .line 1504
    :cond_0
    move/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getFromCredentialNode(I)Landroid/net/wifi/hs20/WifiHs20DMData;

    move-result-object v8

    .line 1505
    if-eqz v10, :cond_1

    .line 1506
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1530
    :cond_1
    :goto_0
    if-eqz v10, :cond_2

    .line 1531
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1575
    .end local v4    # "selection":Ljava/lang/String;
    .end local v5    # "selectArgs":[Ljava/lang/String;
    .end local v10    # "dbCur":Landroid/database/Cursor;
    :cond_2
    :goto_1
    if-eqz v8, :cond_3

    .line 1576
    :try_start_1
    iget-object v1, v8, Landroid/net/wifi/hs20/WifiHs20DMData;->password:[B

    if-eqz v1, :cond_3

    .line 1577
    const-string v1, "HotspotDMHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Username:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v8, Landroid/net/wifi/hs20/WifiHs20DMData;->username:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Password :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    iget-object v6, v8, Landroid/net/wifi/hs20/WifiHs20DMData;->password:[B

    const/4 v13, 0x0

    invoke-static {v6, v13}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :cond_3
    :goto_2
    move-object v1, v8

    .line 1583
    :cond_4
    :goto_3
    return-object v1

    .line 1508
    .restart local v4    # "selection":Ljava/lang/String;
    .restart local v5    # "selectArgs":[Ljava/lang/String;
    .restart local v10    # "dbCur":Landroid/database/Cursor;
    :cond_5
    :try_start_2
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 1509
    .local v7, "count":I
    const-string v1, "HotspotDMHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HS2.0SubscriptionRemediation:- count"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1510
    const/4 v1, 0x1

    if-le v7, v1, :cond_6

    .line 1511
    const-string v1, "HotspotDMHandler"

    const-string v2, "More than 2 entries exists"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1512
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1513
    const/4 v1, 0x0

    .line 1530
    if-eqz v10, :cond_4

    .line 1531
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 1515
    :cond_6
    :try_start_3
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1516
    new-instance v9, Landroid/net/wifi/hs20/WifiHs20DMData;

    invoke-direct {v9}, Landroid/net/wifi/hs20/WifiHs20DMData;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1517
    .end local v8    # "credentials":Landroid/net/wifi/hs20/WifiHs20DMData;
    .local v9, "credentials":Landroid/net/wifi/hs20/WifiHs20DMData;
    :try_start_4
    const-string v1, "username"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Landroid/net/wifi/hs20/WifiHs20DMData;->username:Ljava/lang/String;

    .line 1519
    const-string v1, "password"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    iput-object v1, v9, Landroid/net/wifi/hs20/WifiHs20DMData;->password:[B

    .line 1521
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1522
    iget-object v1, v9, Landroid/net/wifi/hs20/WifiHs20DMData;->username:Ljava/lang/String;

    if-eqz v1, :cond_7

    iget-object v1, v9, Landroid/net/wifi/hs20/WifiHs20DMData;->password:[B
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-nez v1, :cond_10

    .line 1523
    :cond_7
    const/4 v8, 0x0

    .line 1524
    .end local v9    # "credentials":Landroid/net/wifi/hs20/WifiHs20DMData;
    .restart local v8    # "credentials":Landroid/net/wifi/hs20/WifiHs20DMData;
    :try_start_5
    move/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getFromCredentialNode(I)Landroid/net/wifi/hs20/WifiHs20DMData;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v8

    goto/16 :goto_0

    .line 1527
    .end local v7    # "count":I
    :catch_0
    move-exception v11

    .line 1528
    .local v11, "e":Ljava/lang/Exception;
    :goto_4
    :try_start_6
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1530
    if-eqz v10, :cond_2

    .line 1531
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 1530
    .end local v11    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    :goto_5
    if-eqz v10, :cond_8

    .line 1531
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v1

    .line 1534
    .end local v4    # "selection":Ljava/lang/String;
    .end local v5    # "selectArgs":[Ljava/lang/String;
    .end local v10    # "dbCur":Landroid/database/Cursor;
    :cond_9
    const-string v1, "HS2.0PolicyUpdate"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1535
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    .line 1536
    .restart local v4    # "selection":Ljava/lang/String;
    const/4 v5, 0x0

    .line 1537
    .restart local v5    # "selectArgs":[Ljava/lang/String;
    const/4 v10, 0x0

    .line 1538
    .restart local v10    # "dbCur":Landroid/database/Cursor;
    const-string v4, "hotspot_id=? AND type_of_node=?"

    .line 1540
    iget v1, p0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->DEFAULT_LENGTH:I

    mul-int/lit8 v1, v1, 0x2

    new-array v5, v1, [Ljava/lang/String;

    .line 1541
    const/4 v1, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    .line 1542
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->typeOfNode:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    aput-object v2, v5, v1

    .line 1544
    :try_start_7
    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->cr:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/server/wifi/hs20/WifiHs20DBStore$PolicySubscriptionUpdate;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1546
    if-eqz v10, :cond_a

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_b

    .line 1547
    :cond_a
    move/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getFromCredentialNode(I)Landroid/net/wifi/hs20/WifiHs20DMData;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result-object v8

    .line 1569
    :goto_6
    if-eqz v10, :cond_2

    .line 1570
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 1549
    :cond_b
    :try_start_8
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 1550
    .restart local v7    # "count":I
    const-string v1, "HotspotDMHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PolicyUpdate:- count"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1551
    const/4 v1, 0x1

    if-le v7, v1, :cond_c

    .line 1552
    const-string v1, "HotspotDMHandler"

    const-string v2, "More than 2 entries exists"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1553
    const/4 v1, 0x0

    .line 1569
    if-eqz v10, :cond_4

    .line 1570
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3

    .line 1555
    :cond_c
    :try_start_9
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1556
    new-instance v9, Landroid/net/wifi/hs20/WifiHs20DMData;

    invoke-direct {v9}, Landroid/net/wifi/hs20/WifiHs20DMData;-><init>()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1557
    .end local v8    # "credentials":Landroid/net/wifi/hs20/WifiHs20DMData;
    .restart local v9    # "credentials":Landroid/net/wifi/hs20/WifiHs20DMData;
    :try_start_a
    const-string v1, "username"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Landroid/net/wifi/hs20/WifiHs20DMData;->username:Ljava/lang/String;

    .line 1559
    const-string v1, "password"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    iput-object v1, v9, Landroid/net/wifi/hs20/WifiHs20DMData;->password:[B

    .line 1561
    iget-object v1, v9, Landroid/net/wifi/hs20/WifiHs20DMData;->username:Ljava/lang/String;

    if-eqz v1, :cond_d

    iget-object v1, v9, Landroid/net/wifi/hs20/WifiHs20DMData;->password:[B
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    if-nez v1, :cond_f

    .line 1562
    :cond_d
    const/4 v8, 0x0

    .line 1563
    .end local v9    # "credentials":Landroid/net/wifi/hs20/WifiHs20DMData;
    .restart local v8    # "credentials":Landroid/net/wifi/hs20/WifiHs20DMData;
    :try_start_b
    move/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getFromCredentialNode(I)Landroid/net/wifi/hs20/WifiHs20DMData;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    move-result-object v8

    goto :goto_6

    .line 1566
    .end local v7    # "count":I
    :catch_1
    move-exception v11

    .line 1567
    .restart local v11    # "e":Ljava/lang/Exception;
    :goto_7
    :try_start_c
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 1569
    if-eqz v10, :cond_2

    .line 1570
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 1569
    .end local v11    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v1

    :goto_8
    if-eqz v10, :cond_e

    .line 1570
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_e
    throw v1

    .line 1580
    .end local v4    # "selection":Ljava/lang/String;
    .end local v5    # "selectArgs":[Ljava/lang/String;
    .end local v10    # "dbCur":Landroid/database/Cursor;
    :catch_2
    move-exception v11

    .line 1581
    .restart local v11    # "e":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 1569
    .end local v8    # "credentials":Landroid/net/wifi/hs20/WifiHs20DMData;
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v4    # "selection":Ljava/lang/String;
    .restart local v5    # "selectArgs":[Ljava/lang/String;
    .restart local v7    # "count":I
    .restart local v9    # "credentials":Landroid/net/wifi/hs20/WifiHs20DMData;
    .restart local v10    # "dbCur":Landroid/database/Cursor;
    :catchall_2
    move-exception v1

    move-object v8, v9

    .end local v9    # "credentials":Landroid/net/wifi/hs20/WifiHs20DMData;
    .restart local v8    # "credentials":Landroid/net/wifi/hs20/WifiHs20DMData;
    goto :goto_8

    .line 1566
    .end local v8    # "credentials":Landroid/net/wifi/hs20/WifiHs20DMData;
    .restart local v9    # "credentials":Landroid/net/wifi/hs20/WifiHs20DMData;
    :catch_3
    move-exception v11

    move-object v8, v9

    .end local v9    # "credentials":Landroid/net/wifi/hs20/WifiHs20DMData;
    .restart local v8    # "credentials":Landroid/net/wifi/hs20/WifiHs20DMData;
    goto :goto_7

    .line 1530
    .end local v8    # "credentials":Landroid/net/wifi/hs20/WifiHs20DMData;
    .restart local v9    # "credentials":Landroid/net/wifi/hs20/WifiHs20DMData;
    :catchall_3
    move-exception v1

    move-object v8, v9

    .end local v9    # "credentials":Landroid/net/wifi/hs20/WifiHs20DMData;
    .restart local v8    # "credentials":Landroid/net/wifi/hs20/WifiHs20DMData;
    goto/16 :goto_5

    .line 1527
    .end local v8    # "credentials":Landroid/net/wifi/hs20/WifiHs20DMData;
    .restart local v9    # "credentials":Landroid/net/wifi/hs20/WifiHs20DMData;
    :catch_4
    move-exception v11

    move-object v8, v9

    .end local v9    # "credentials":Landroid/net/wifi/hs20/WifiHs20DMData;
    .restart local v8    # "credentials":Landroid/net/wifi/hs20/WifiHs20DMData;
    goto/16 :goto_4

    .end local v8    # "credentials":Landroid/net/wifi/hs20/WifiHs20DMData;
    .restart local v9    # "credentials":Landroid/net/wifi/hs20/WifiHs20DMData;
    :cond_f
    move-object v8, v9

    .end local v9    # "credentials":Landroid/net/wifi/hs20/WifiHs20DMData;
    .restart local v8    # "credentials":Landroid/net/wifi/hs20/WifiHs20DMData;
    goto/16 :goto_6

    .end local v8    # "credentials":Landroid/net/wifi/hs20/WifiHs20DMData;
    .restart local v9    # "credentials":Landroid/net/wifi/hs20/WifiHs20DMData;
    :cond_10
    move-object v8, v9

    .end local v9    # "credentials":Landroid/net/wifi/hs20/WifiHs20DMData;
    .restart local v8    # "credentials":Landroid/net/wifi/hs20/WifiHs20DMData;
    goto/16 :goto_0
.end method

.method public getDMData(Landroid/net/wifi/hs20/WifiHs20DMData;)Z
    .locals 14
    .param p1, "data"    # Landroid/net/wifi/hs20/WifiHs20DMData;

    .prologue
    .line 105
    if-nez p1, :cond_0

    .line 106
    const/4 v0, 0x0

    .line 202
    :goto_0
    return v0

    .line 107
    :cond_0
    iget-object v9, p1, Landroid/net/wifi/hs20/WifiHs20DMData;->uri:Ljava/lang/String;

    .line 108
    .local v9, "nodeURI":Ljava/lang/String;
    new-instance v10, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;

    invoke-direct {v10}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;-><init>()V

    .line 109
    .local v10, "param":Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;
    invoke-direct {p0, v9, v10}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->parseUri(Ljava/lang/String;Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;)Z

    move-result v11

    .line 110
    .local v11, "ret":Z
    if-nez v11, :cond_1

    .line 111
    const/4 v0, 0x0

    goto :goto_0

    .line 113
    :cond_1
    iget v0, v10, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    invoke-direct {p0, v0}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getTableURI(I)Landroid/net/Uri;

    move-result-object v1

    .line 114
    .local v1, "tableURI":Landroid/net/Uri;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    .line 115
    .local v2, "projection":[Ljava/lang/String;
    const-string v6, ""

    .line 116
    .local v6, "dbFieldName":Ljava/lang/String;
    iget-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 117
    const/4 v0, 0x0

    goto :goto_0

    .line 119
    :cond_2
    const-string v0, "HotspotDMHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "param.nodeName is  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v10, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    const/4 v4, 0x0

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->dbFieldMap:Ljava/util/Map;

    iget-object v5, v10, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v4

    .line 121
    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->dbFieldMap:Ljava/util/Map;

    iget-object v4, v10, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "dbFieldName":Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .line 123
    .restart local v6    # "dbFieldName":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .local v12, "stbuilder":Ljava/lang/StringBuilder;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    iget-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    array-length v0, v0

    if-ge v8, v0, :cond_4

    .line 125
    iget-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    aget-object v0, v0, v8

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    iget-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-eq v8, v0, :cond_3

    .line 127
    const-string v0, "=? AND "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 129
    :cond_3
    const-string v0, "=?"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 131
    :cond_4
    const/4 v3, 0x0

    .line 132
    .local v3, "selection":Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_5

    .line 133
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 142
    :cond_5
    const/4 v7, 0x0

    .line 143
    .local v7, "dbcur":Landroid/database/Cursor;
    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->cr:Landroid/content/ContentResolver;

    iget-object v4, v10, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 144
    if-eqz v7, :cond_6

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_8

    .line 145
    :cond_6
    const-string v0, "HotspotDMHandler"

    const-string v4, "Failed to get the Data"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    if-eqz v7, :cond_7

    .line 147
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 149
    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 151
    :cond_8
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 152
    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->formatMap:Ljava/util/Map;

    if-nez v0, :cond_a

    .line 153
    const-string v0, "HotspotDMHandler"

    const-string v4, "Format map has not built"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    if-eqz v7, :cond_9

    .line 155
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 157
    :cond_9
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 159
    :cond_a
    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->formatMap:Ljava/util/Map;

    iget-object v4, v10, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_c

    .line 160
    const-string v0, "HotspotDMHandler"

    const-string v4, "Intenger"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 162
    .local v13, "val":I
    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->formatMap:Ljava/util/Map;

    iget-object v4, v10, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Landroid/net/wifi/hs20/WifiHs20DMData;->fmt:I

    .line 163
    int-to-long v4, v13

    iput-wide v4, p1, Landroid/net/wifi/hs20/WifiHs20DMData;->intData:J

    .line 201
    .end local v13    # "val":I
    :cond_b
    :goto_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 202
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 166
    :cond_c
    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->formatMap:Ljava/util/Map;

    iget-object v4, v10, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_e

    .line 167
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 168
    .restart local v13    # "val":I
    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->formatMap:Ljava/util/Map;

    iget-object v4, v10, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Landroid/net/wifi/hs20/WifiHs20DMData;->fmt:I

    .line 169
    if-eqz v13, :cond_d

    const/4 v0, 0x1

    :goto_4
    iput-boolean v0, p1, Landroid/net/wifi/hs20/WifiHs20DMData;->booleanData:Z

    goto :goto_3

    :cond_d
    const/4 v0, 0x0

    goto :goto_4

    .line 172
    .end local v13    # "val":I
    :cond_e
    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->formatMap:Ljava/util/Map;

    iget-object v4, v10, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_10

    .line 173
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 174
    .local v13, "val":Ljava/lang/String;
    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->formatMap:Ljava/util/Map;

    iget-object v4, v10, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Landroid/net/wifi/hs20/WifiHs20DMData;->fmt:I

    .line 175
    iput-object v13, p1, Landroid/net/wifi/hs20/WifiHs20DMData;->charData:Ljava/lang/String;

    .line 176
    if-eqz v13, :cond_f

    .line 177
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p1, Landroid/net/wifi/hs20/WifiHs20DMData;->charDataLen:I

    goto :goto_3

    .line 179
    :cond_f
    const/4 v0, 0x0

    iput v0, p1, Landroid/net/wifi/hs20/WifiHs20DMData;->charDataLen:I

    goto :goto_3

    .line 183
    .end local v13    # "val":Ljava/lang/String;
    :cond_10
    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->formatMap:Ljava/util/Map;

    iget-object v4, v10, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v4, 0x4

    if-ne v0, v4, :cond_11

    .line 184
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v13

    .line 185
    .local v13, "val":[B
    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->formatMap:Ljava/util/Map;

    iget-object v4, v10, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Landroid/net/wifi/hs20/WifiHs20DMData;->fmt:I

    .line 186
    iput-object v13, p1, Landroid/net/wifi/hs20/WifiHs20DMData;->byteData:[B

    .line 187
    array-length v0, v13

    iput v0, p1, Landroid/net/wifi/hs20/WifiHs20DMData;->byteDataLen:I

    goto/16 :goto_3

    .line 188
    .end local v13    # "val":[B
    :cond_11
    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->formatMap:Ljava/util/Map;

    iget-object v4, v10, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v4, 0x5

    if-ne v0, v4, :cond_b

    .line 191
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 192
    .local v13, "val":I
    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/net/wifi/hs20/WifiHs20DMData;->charData:Ljava/lang/String;

    .line 193
    :goto_5
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 194
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 195
    const-string v0, "HotspotDMHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "val "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Landroid/net/wifi/hs20/WifiHs20DMData;->charData:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/net/wifi/hs20/WifiHs20DMData;->charData:Ljava/lang/String;

    goto :goto_5
.end method

.method public getDMDataCount(Landroid/net/wifi/hs20/WifiHs20DMData;)Z
    .locals 14
    .param p1, "data"    # Landroid/net/wifi/hs20/WifiHs20DMData;

    .prologue
    .line 1428
    if-nez p1, :cond_0

    .line 1429
    const-string v0, "HotspotDMHandler"

    const-string v2, "Data received is NULL"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1430
    const/4 v0, 0x0

    .line 1481
    :goto_0
    return v0

    .line 1432
    :cond_0
    iget-object v10, p1, Landroid/net/wifi/hs20/WifiHs20DMData;->uri:Ljava/lang/String;

    .line 1433
    .local v10, "nodeURI":Ljava/lang/String;
    const-string v0, "HotspotDMHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " nodeURI is   "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1434
    const/4 v7, 0x0

    .line 1435
    .local v7, "cur":Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 1436
    .local v6, "count":I
    new-instance v11, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;

    invoke-direct {v11}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;-><init>()V

    .line 1437
    .local v11, "param":Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;
    invoke-direct {p0, v10, v11}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->parseUri(Ljava/lang/String;Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;)Z

    move-result v12

    .line 1438
    .local v12, "ret":Z
    if-nez v12, :cond_1

    .line 1439
    const/4 v0, 0x0

    goto :goto_0

    .line 1441
    :cond_1
    iget v0, v11, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    invoke-direct {p0, v0}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getTableURI(I)Landroid/net/Uri;

    move-result-object v1

    .line 1442
    .local v1, "tableURI":Landroid/net/Uri;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 1443
    .local v13, "stbuilder":Ljava/lang/StringBuilder;
    const/4 v8, 0x0

    .line 1444
    .local v8, "flag":Z
    iget-object v0, v11, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 1445
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    iget-object v0, v11, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    array-length v0, v0

    if-ge v9, v0, :cond_4

    .line 1446
    iget-object v0, v11, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    aget-object v0, v0, v9

    if-eqz v0, :cond_2

    iget-object v0, v11, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 1447
    if-nez v8, :cond_3

    .line 1448
    iget-object v0, v11, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    aget-object v0, v0, v9

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1449
    const-string v0, "=?"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1450
    const/4 v8, 0x1

    .line 1456
    :goto_2
    const-string v0, "HotspotDMHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Selection arg is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v11, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aget-object v4, v4, v9

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1445
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1452
    :cond_3
    const-string v0, " AND "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1453
    iget-object v0, v11, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    aget-object v0, v0, v9

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1454
    const-string v0, "=?"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1460
    .end local v9    # "i":I
    :cond_4
    const/4 v3, 0x0

    .line 1461
    .local v3, "selection":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_5

    .line 1462
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1469
    :cond_5
    iget-object v0, v11, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 1470
    iget-object v0, v11, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    array-length v6, v0

    .line 1472
    :cond_6
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_3
    if-ge v9, v6, :cond_7

    .line 1473
    const-string v0, "HotspotDMHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Selection nodename  ->   "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v11, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    aget-object v4, v4, v9

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "    selection Argument ->    "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v11, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    aget-object v4, v4, v9

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1472
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 1476
    :cond_7
    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->cr:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    iget-object v4, v11, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1477
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 1478
    const-string v0, "HotspotDMHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Count  got from the DB"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1479
    int-to-long v4, v6

    iput-wide v4, p1, Landroid/net/wifi/hs20/WifiHs20DMData;->intData:J

    .line 1480
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1481
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public getFormatType(Ljava/lang/String;)I
    .locals 7
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 1665
    const/4 v2, -0x1

    .line 1667
    .local v2, "formatType":I
    :try_start_0
    const-string v4, "/"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1668
    .local v1, "formatList":[Ljava/lang/String;
    array-length v3, v1

    .line 1669
    .local v3, "length":I
    sget-object v4, Lcom/android/server/wifi/hs20/WifiHs20Helper;->formatMap:Ljava/util/Map;

    add-int/lit8 v5, v3, -0x1

    aget-object v5, v1, v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1674
    .end local v1    # "formatList":[Ljava/lang/String;
    .end local v3    # "length":I
    :goto_0
    return v2

    .line 1670
    :catch_0
    move-exception v0

    .line 1671
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "HotspotDMHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error occured"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1672
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public getHotspotId(I)I
    .locals 10
    .param p1, "credentialID"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v8, -0x1

    .line 1637
    iget v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->DEFAULT_LENGTH:I

    new-array v4, v0, [Ljava/lang/String;

    .line 1638
    .local v4, "selectArgs":[Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 1639
    .local v9, "stbuilder":Ljava/lang/StringBuilder;
    const-string v0, "credential_id"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1640
    const-string v0, "=?"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1641
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1642
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 1643
    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Credential;->CONTENT_URI:Landroid/net/Uri;

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1645
    .local v7, "dbCur":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_2

    .line 1646
    :cond_0
    const-string v0, "HotspotDMHandler"

    const-string v1, "Corresponding entry doesnt exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1647
    if-eqz v7, :cond_1

    .line 1648
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1661
    :cond_1
    :goto_0
    return v8

    .line 1652
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 1653
    .local v6, "count":I
    const/4 v0, 0x1

    if-le v6, v0, :cond_3

    .line 1654
    const-string v0, "HotspotDMHandler"

    const-string v1, "More than 2 entry exists"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1655
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1658
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1659
    const-string v0, "hotspot_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 1660
    .local v8, "hotspotID":I
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public replaceDMData(Landroid/net/wifi/hs20/WifiHs20DMData;)Z
    .locals 21
    .param p1, "data"    # Landroid/net/wifi/hs20/WifiHs20DMData;

    .prologue
    .line 1229
    if-nez p1, :cond_0

    .line 1230
    const/4 v2, 0x0

    .line 1309
    :goto_0
    return v2

    .line 1231
    :cond_0
    :try_start_0
    const-string v2, "HotspotDMHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "replaceDMData :Data format from DM client"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v6, v0, Landroid/net/wifi/hs20/WifiHs20DMData;->fmt:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/net/wifi/hs20/WifiHs20DMData;->uri:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getFormatType(Ljava/lang/String;)I

    move-result v10

    .line 1233
    .local v10, "format":I
    const-string v2, "HotspotDMHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "replaceDMData :Data format getFormatType"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v6, v0, Landroid/net/wifi/hs20/WifiHs20DMData;->fmt:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    const/4 v2, 0x5

    if-ne v10, v2, :cond_1

    .line 1235
    const-string v2, "HotspotDMHandler"

    const-string v4, "Field Name Node !!! Return Nothing to be added  "

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1236
    const/4 v2, 0x1

    goto :goto_0

    .line 1238
    :cond_1
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/net/wifi/hs20/WifiHs20DMData;->uri:Ljava/lang/String;

    .line 1239
    .local v14, "nodeURI":Ljava/lang/String;
    const-string v2, "HotspotDMHandler"

    const-string v4, "*******************REPLACE METHOD*********************"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    const-string v2, "HotspotDMHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "nodeURI is "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "       "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    const/16 v16, 0x0

    .line 1242
    .local v16, "replacecur":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 1243
    .local v8, "count":I
    new-instance v15, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;

    invoke-direct {v15}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;-><init>()V

    .line 1244
    .local v15, "param":Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->parseUri(Ljava/lang/String;Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;)Z

    move-result v17

    .line 1245
    .local v17, "ret":Z
    if-nez v17, :cond_2

    .line 1246
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1248
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->modifyMO:Z

    if-nez v2, :cond_3

    .line 1249
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->modifyMO:Z

    .line 1250
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 1251
    .local v12, "intent":Landroid/content/Intent;
    const-string v2, "com.samsung.action.HOTSPOT_UPDATE_MO"

    invoke-virtual {v12, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1252
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1254
    .end local v12    # "intent":Landroid/content/Intent;
    :cond_3
    iget v2, v15, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->tableType:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->getTableURI(I)Landroid/net/Uri;

    move-result-object v3

    .line 1255
    .local v3, "tableURI":Landroid/net/Uri;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    .line 1256
    .local v19, "stbuilder":Ljava/lang/StringBuilder;
    iget-object v2, v15, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 1257
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    iget-object v2, v15, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    array-length v2, v2

    if-ge v11, v2, :cond_6

    .line 1258
    iget-object v2, v15, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    aget-object v2, v2, v11

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1259
    iget-object v2, v15, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selection:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-eq v11, v2, :cond_4

    .line 1260
    const-string v2, "=? AND "

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1257
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 1262
    :cond_4
    const-string v2, "=?"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1307
    .end local v3    # "tableURI":Landroid/net/Uri;
    .end local v8    # "count":I
    .end local v10    # "format":I
    .end local v11    # "i":I
    .end local v14    # "nodeURI":Ljava/lang/String;
    .end local v15    # "param":Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;
    .end local v16    # "replacecur":Landroid/database/Cursor;
    .end local v17    # "ret":Z
    .end local v19    # "stbuilder":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v9

    .line 1308
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 1309
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1265
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v3    # "tableURI":Landroid/net/Uri;
    .restart local v8    # "count":I
    .restart local v10    # "format":I
    .restart local v14    # "nodeURI":Ljava/lang/String;
    .restart local v15    # "param":Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;
    .restart local v16    # "replacecur":Landroid/database/Cursor;
    .restart local v17    # "ret":Z
    .restart local v19    # "stbuilder":Ljava/lang/StringBuilder;
    :cond_5
    :try_start_1
    const-string v2, "HotspotDMHandler"

    const-string v4, "Not a valid URI"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1268
    .restart local v11    # "i":I
    :cond_6
    iget v2, v15, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeVal:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_7

    .line 1269
    const-string v2, "HotspotDMHandler"

    const-string v4, "It is the Dynamic node. So dont replace"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1272
    :cond_7
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1279
    .local v5, "selection":Ljava/lang/String;
    sget-object v2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->cr:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    iget-object v6, v15, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 1280
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 1281
    if-nez v8, :cond_8

    .line 1284
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 1285
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1287
    :cond_8
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 1288
    new-instance v20, Landroid/content/ContentValues;

    invoke-direct/range {v20 .. v20}, Landroid/content/ContentValues;-><init>()V

    .line 1289
    .local v20, "values":Landroid/content/ContentValues;
    move-object/from16 v0, p1

    iget v2, v0, Landroid/net/wifi/hs20/WifiHs20DMData;->fmt:I

    if-nez v2, :cond_a

    .line 1290
    const-string v2, "HotspotDMHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "param.nodeName is  "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v15, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1291
    sget-object v2, Lcom/android/server/wifi/hs20/WifiHs20Helper;->dbFieldMap:Ljava/util/Map;

    iget-object v4, v15, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 1292
    .local v13, "nName":Ljava/lang/String;
    if-eqz v13, :cond_9

    .line 1293
    move-object/from16 v0, p1

    iget-wide v6, v0, Landroid/net/wifi/hs20/WifiHs20DMData;->intData:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v13, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1302
    .end local v13    # "nName":Ljava/lang/String;
    :cond_9
    :goto_3
    sget-object v2, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->cr:Landroid/content/ContentResolver;

    iget-object v4, v15, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->selectionArgs:[Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v2, v3, v0, v5, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v18

    .line 1303
    .local v18, "retValue":I
    if-nez v18, :cond_d

    .line 1304
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1295
    .end local v18    # "retValue":I
    :cond_a
    move-object/from16 v0, p1

    iget v2, v0, Landroid/net/wifi/hs20/WifiHs20DMData;->fmt:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_b

    .line 1296
    sget-object v2, Lcom/android/server/wifi/hs20/WifiHs20Helper;->dbFieldMap:Ljava/util/Map;

    iget-object v4, v15, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p1

    iget-boolean v4, v0, Landroid/net/wifi/hs20/WifiHs20DMData;->booleanData:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_3

    .line 1297
    :cond_b
    move-object/from16 v0, p1

    iget v2, v0, Landroid/net/wifi/hs20/WifiHs20DMData;->fmt:I

    const/4 v4, 0x4

    if-ne v2, v4, :cond_c

    .line 1298
    sget-object v2, Lcom/android/server/wifi/hs20/WifiHs20Helper;->dbFieldMap:Ljava/util/Map;

    iget-object v4, v15, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/net/wifi/hs20/WifiHs20DMData;->byteData:[B

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_3

    .line 1299
    :cond_c
    move-object/from16 v0, p1

    iget v2, v0, Landroid/net/wifi/hs20/WifiHs20DMData;->fmt:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_9

    .line 1300
    sget-object v2, Lcom/android/server/wifi/hs20/WifiHs20Helper;->dbFieldMap:Ljava/util/Map;

    iget-object v4, v15, Lcom/android/server/wifi/hs20/WifiHs20DMHandler$DBParam;->nodeName:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/net/wifi/hs20/WifiHs20DMData;->charData:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 1306
    .restart local v18    # "retValue":I
    :cond_d
    const/4 v2, 0x1

    goto/16 :goto_0
.end method

.method public startSession()Z
    .locals 2

    .prologue
    .line 97
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 98
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.action.HOTSPOT_START_SESSION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 100
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wifi/hs20/WifiHs20DMHandler;->modifyMO:Z

    .line 101
    const/4 v1, 0x1

    return v1
.end method
