.class public Landroid/app/wallpaperbackup/WallpaperUserPOJO;
.super Ljava/lang/Object;
.source "WallpaperUserPOJO.java"


# instance fields
.field private component:Ljava/lang/String;

.field private height:I

.field private name:Ljava/lang/String;

.field private userId:I

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "component"    # Ljava/lang/String;
    .param p5, "userId"    # I

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput p1, p0, Landroid/app/wallpaperbackup/WallpaperUserPOJO;->width:I

    .line 59
    iput p2, p0, Landroid/app/wallpaperbackup/WallpaperUserPOJO;->height:I

    .line 60
    iput-object p3, p0, Landroid/app/wallpaperbackup/WallpaperUserPOJO;->name:Ljava/lang/String;

    .line 61
    iput-object p4, p0, Landroid/app/wallpaperbackup/WallpaperUserPOJO;->component:Ljava/lang/String;

    .line 62
    iput p5, p0, Landroid/app/wallpaperbackup/WallpaperUserPOJO;->userId:I

    .line 63
    return-void
.end method


# virtual methods
.method public getComponent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Landroid/app/wallpaperbackup/WallpaperUserPOJO;->component:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Landroid/app/wallpaperbackup/WallpaperUserPOJO;->height:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Landroid/app/wallpaperbackup/WallpaperUserPOJO;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Landroid/app/wallpaperbackup/WallpaperUserPOJO;->userId:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Landroid/app/wallpaperbackup/WallpaperUserPOJO;->width:I

    return v0
.end method

.method public setComponent(Ljava/lang/String;)V
    .locals 0
    .param p1, "component"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Landroid/app/wallpaperbackup/WallpaperUserPOJO;->component:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 17
    iput p1, p0, Landroid/app/wallpaperbackup/WallpaperUserPOJO;->height:I

    .line 18
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 24
    iput-object p1, p0, Landroid/app/wallpaperbackup/WallpaperUserPOJO;->name:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setUserId(I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    .line 38
    iput p1, p0, Landroid/app/wallpaperbackup/WallpaperUserPOJO;->userId:I

    .line 39
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 10
    iput p1, p0, Landroid/app/wallpaperbackup/WallpaperUserPOJO;->width:I

    .line 11
    return-void
.end method
