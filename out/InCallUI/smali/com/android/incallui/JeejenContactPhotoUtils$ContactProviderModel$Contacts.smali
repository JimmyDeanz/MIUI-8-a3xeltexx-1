.class public Lcom/android/incallui/JeejenContactPhotoUtils$ContactProviderModel$Contacts;
.super Ljava/lang/Object;
.source "JeejenContactPhotoUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/JeejenContactPhotoUtils$ContactProviderModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Contacts"
.end annotation


# static fields
.field public static final LAUNCHER_CONTACT_CROP_PHOTO_URI:Landroid/net/Uri;

.field public static final LAUNCHER_CONTACT_PHOTO_URI:Landroid/net/Uri;

.field public static final LAUNCHER_CONTACT_URI:Landroid/net/Uri;

.field public static final LAUNCHER_GET_CONTACT_ID_URI:Landroid/net/Uri;

.field public static final LAUNCHER_GET_MISSED_CALL_COUNT_URI:Landroid/net/Uri;

.field public static final LAUNCHER_GET_UNREAD_SMS_COUNT_URI:Landroid/net/Uri;

.field public static final LAUNCHER_TRANS_CONTACT_ID:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 142
    const-string v0, "content://com.jeejen.contact.provider/CONTACT"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/JeejenContactPhotoUtils$ContactProviderModel$Contacts;->LAUNCHER_CONTACT_URI:Landroid/net/Uri;

    .line 144
    const-string v0, "content://com.jeejen.contact.provider/CONTACT/PHOTO"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/JeejenContactPhotoUtils$ContactProviderModel$Contacts;->LAUNCHER_CONTACT_PHOTO_URI:Landroid/net/Uri;

    .line 146
    const-string v0, "content://com.jeejen.contact.provider/CONTACT/CROP_PHOTO"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/JeejenContactPhotoUtils$ContactProviderModel$Contacts;->LAUNCHER_CONTACT_CROP_PHOTO_URI:Landroid/net/Uri;

    .line 149
    const-string v0, "content://com.jeejen.contact.provider/TRANS_CONTACT_ID"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/JeejenContactPhotoUtils$ContactProviderModel$Contacts;->LAUNCHER_TRANS_CONTACT_ID:Landroid/net/Uri;

    .line 152
    const-string v0, "content://com.jeejen.contact.providerGET_CONTACT/ID"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/JeejenContactPhotoUtils$ContactProviderModel$Contacts;->LAUNCHER_GET_CONTACT_ID_URI:Landroid/net/Uri;

    .line 154
    const-string v0, "content://com.jeejen.contact.providerGET_MISSED_CALL_COUNT"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/JeejenContactPhotoUtils$ContactProviderModel$Contacts;->LAUNCHER_GET_MISSED_CALL_COUNT_URI:Landroid/net/Uri;

    .line 157
    const-string v0, "content://com.jeejen.contact.providerGET_UNREAD_SMS_COUNT"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/JeejenContactPhotoUtils$ContactProviderModel$Contacts;->LAUNCHER_GET_UNREAD_SMS_COUNT_URI:Landroid/net/Uri;

    return-void
.end method
