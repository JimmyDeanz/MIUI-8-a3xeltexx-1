.class Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;
.super Landroid/content/pm/PermissionGroupInfo;
.source "AppSecurityPermissions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AppSecurityPermissions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MyPermissionGroupInfo"
.end annotation


# instance fields
.field final mAllPermissions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/AppSecurityPermissions$MyPermissionInfo;",
            ">;"
        }
    .end annotation
.end field

.field mLabel:Ljava/lang/CharSequence;

.field final mNewPermissions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/AppSecurityPermissions$MyPermissionInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/pm/PermissionGroupInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/content/pm/PermissionGroupInfo;

    .prologue
    .line 98
    invoke-direct {p0, p1}, Landroid/content/pm/PermissionGroupInfo;-><init>(Landroid/content/pm/PermissionGroupInfo;)V

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->mNewPermissions:Ljava/util/ArrayList;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->mAllPermissions:Ljava/util/ArrayList;

    .line 99
    return-void
.end method

.method constructor <init>(Landroid/content/pm/PermissionInfo;)V
    .locals 1
    .param p1, "perm"    # Landroid/content/pm/PermissionInfo;

    .prologue
    .line 92
    invoke-direct {p0}, Landroid/content/pm/PermissionGroupInfo;-><init>()V

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->mNewPermissions:Ljava/util/ArrayList;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->mAllPermissions:Ljava/util/ArrayList;

    .line 93
    iget-object v0, p1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->name:Ljava/lang/String;

    .line 94
    iget-object v0, p1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->packageName:Ljava/lang/String;

    .line 95
    return-void
.end method


# virtual methods
.method public loadGroupIcon(Landroid/content/Context;Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 102
    iget v0, p0, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->icon:I

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {p0, p2}, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->loadUnbadgedIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 105
    :goto_0
    return-object v0

    :cond_0
    const v0, 0x108049c

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method
