.class public Lcom/android/incallui/JeejenContactPhotoUtils;
.super Ljava/lang/Object;
.source "JeejenContactPhotoUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/JeejenContactPhotoUtils$ContactProviderModel;
    }
.end annotation


# direct methods
.method public static openContactPhotoInputStream(Landroid/content/Context;Ljava/lang/String;Z)Ljava/io/InputStream;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .param p2, "preferHighres"    # Z

    .prologue
    .line 16
    invoke-static {p0, p1}, Lcom/android/incallui/JeejenContactPhotoUtils;->queryContactPhoto(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 18
    .local v0, "photoStream":Ljava/io/InputStream;
    if-nez v0, :cond_0

    .line 19
    invoke-static {p0, p1}, Lcom/android/incallui/JeejenContactPhotoUtils;->queryContactPhotoByOldInterface(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 27
    :cond_0
    return-object v0
.end method

.method private static queryContactPhoto(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 32
    const/4 v7, 0x0

    .line 34
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/android/incallui/JeejenContactPhotoUtils$ContactProviderModel$Contacts;->LAUNCHER_CONTACT_CROP_PHOTO_URI:Landroid/net/Uri;

    .line 35
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 37
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    .line 49
    :cond_0
    if-eqz v7, :cond_1

    .line 50
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v0, v9

    .end local v1    # "uri":Landroid/net/Uri;
    :cond_2
    :goto_0
    return-object v0

    .line 40
    .restart local v1    # "uri":Landroid/net/Uri;
    :cond_3
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    .line 41
    .local v6, "bytes":[B
    if-nez v6, :cond_5

    .line 49
    if-eqz v7, :cond_4

    .line 50
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v0, v9

    goto :goto_0

    .line 44
    :cond_5
    :try_start_2
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 49
    if-eqz v7, :cond_2

    .line 50
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 45
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v6    # "bytes":[B
    :catch_0
    move-exception v8

    .line 46
    .local v8, "e":Ljava/lang/Throwable;
    :try_start_3
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 49
    if-eqz v7, :cond_6

    .line 50
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    move-object v0, v9

    goto :goto_0

    .line 49
    .end local v8    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_7

    .line 50
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0
.end method

.method private static queryContactPhotoByOldInterface(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 56
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://com.jeejen.family.miui.provider/big_face/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 58
    .local v1, "uri":Landroid/net/Uri;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 60
    :goto_0
    return-object v2

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/io/FileNotFoundException;
    const/4 v2, 0x0

    goto :goto_0
.end method
