.class public final Landroid/provider/ContactsContract$CommonDataKinds$GroupMembership;
.super Ljava/lang/Object;
.source "ContactsContract.java"

# interfaces
.implements Landroid/provider/ContactsContract$DataColumnsWithJoins;
.implements Landroid/provider/ContactsContract$ContactCounts;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract$CommonDataKinds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GroupMembership"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/group_membership"

.field public static final GROUP_ROW_ID:Ljava/lang/String; = "data1"

.field public static final GROUP_SOURCE_ID:Ljava/lang/String; = "group_sourceid"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 7117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
