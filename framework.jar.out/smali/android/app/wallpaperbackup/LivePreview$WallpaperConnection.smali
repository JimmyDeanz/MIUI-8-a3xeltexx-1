.class Landroid/app/wallpaperbackup/LivePreview$WallpaperConnection;
.super Landroid/service/wallpaper/IWallpaperConnection$Stub;
.source "LivePreview.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/wallpaperbackup/LivePreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WallpaperConnection"
.end annotation


# instance fields
.field mConnected:Z

.field mEngine:Landroid/service/wallpaper/IWallpaperEngine;

.field final mIntent:Landroid/content/Intent;

.field mService:Landroid/service/wallpaper/IWallpaperService;


# direct methods
.method constructor <init>(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 146
    invoke-direct {p0}, Landroid/service/wallpaper/IWallpaperConnection$Stub;-><init>()V

    .line 147
    iput-object p1, p0, Landroid/app/wallpaperbackup/LivePreview$WallpaperConnection;->mIntent:Landroid/content/Intent;

    .line 148
    return-void
.end method


# virtual methods
.method public attachEngine(Landroid/service/wallpaper/IWallpaperEngine;)V
    .locals 1
    .param p1, "engine"    # Landroid/service/wallpaper/IWallpaperEngine;

    .prologue
    .line 211
    monitor-enter p0

    .line 212
    :try_start_0
    iget-boolean v0, p0, Landroid/app/wallpaperbackup/LivePreview$WallpaperConnection;->mConnected:Z

    if-eqz v0, :cond_0

    .line 213
    iput-object p1, p0, Landroid/app/wallpaperbackup/LivePreview$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    const/4 v0, 0x1

    :try_start_1
    invoke-interface {p1, v0}, Landroid/service/wallpaper/IWallpaperEngine;->setVisibility(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 226
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 227
    return-void

    .line 221
    :cond_0
    :try_start_3
    invoke-interface {p1}, Landroid/service/wallpaper/IWallpaperEngine;->destroy()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 222
    :catch_0
    move-exception v0

    goto :goto_0

    .line 226
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 216
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public connect()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 151
    monitor-enter p0

    .line 152
    :try_start_0
    # getter for: Landroid/app/wallpaperbackup/LivePreview;->mContext:Landroid/content/Context;
    invoke-static {}, Landroid/app/wallpaperbackup/LivePreview;->access$000()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/app/wallpaperbackup/LivePreview$WallpaperConnection;->mIntent:Landroid/content/Intent;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 153
    const/4 v0, 0x0

    monitor-exit p0

    .line 157
    :goto_0
    return v0

    .line 156
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/wallpaperbackup/LivePreview$WallpaperConnection;->mConnected:Z

    .line 157
    monitor-exit p0

    goto :goto_0

    .line 158
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public disconnect()V
    .locals 1

    .prologue
    .line 162
    monitor-enter p0

    .line 163
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Landroid/app/wallpaperbackup/LivePreview$WallpaperConnection;->mConnected:Z

    .line 164
    iget-object v0, p0, Landroid/app/wallpaperbackup/LivePreview$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 166
    :try_start_1
    iget-object v0, p0, Landroid/app/wallpaperbackup/LivePreview$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    invoke-interface {v0}, Landroid/service/wallpaper/IWallpaperEngine;->destroy()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 170
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Landroid/app/wallpaperbackup/LivePreview$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 173
    :cond_0
    :try_start_3
    # getter for: Landroid/app/wallpaperbackup/LivePreview;->mContext:Landroid/content/Context;
    invoke-static {}, Landroid/app/wallpaperbackup/LivePreview;->access$000()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 177
    :goto_1
    const/4 v0, 0x0

    :try_start_4
    iput-object v0, p0, Landroid/app/wallpaperbackup/LivePreview$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    .line 178
    monitor-exit p0

    .line 179
    return-void

    .line 178
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 174
    :catch_0
    move-exception v0

    goto :goto_1

    .line 167
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public engineShown(Landroid/service/wallpaper/IWallpaperEngine;)V
    .locals 0
    .param p1, "engine"    # Landroid/service/wallpaper/IWallpaperEngine;

    .prologue
    .line 235
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 11
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 182
    # getter for: Landroid/app/wallpaperbackup/LivePreview;->mWallpaperConnection:Landroid/app/wallpaperbackup/LivePreview$WallpaperConnection;
    invoke-static {}, Landroid/app/wallpaperbackup/LivePreview;->access$100()Landroid/app/wallpaperbackup/LivePreview$WallpaperConnection;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 183
    invoke-static {p2}, Landroid/service/wallpaper/IWallpaperService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/wallpaper/IWallpaperService;

    move-result-object v0

    iput-object v0, p0, Landroid/app/wallpaperbackup/LivePreview$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    .line 185
    :try_start_0
    # getter for: Landroid/app/wallpaperbackup/LivePreview;->mView:Landroid/view/View;
    invoke-static {}, Landroid/app/wallpaperbackup/LivePreview;->access$200()Landroid/view/View;

    move-result-object v10

    .line 186
    .local v10, "view":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v9

    .line 187
    .local v9, "root":Landroid/view/View;
    new-instance v7, Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {v9}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {v9}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    invoke-virtual {v9}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-direct {v7, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 189
    .local v7, "rect":Landroid/graphics/Rect;
    iget-object v0, p0, Landroid/app/wallpaperbackup/LivePreview$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    invoke-virtual {v10}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/16 v3, 0x3ec

    const/4 v4, 0x1

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v6

    move-object v1, p0

    invoke-interface/range {v0 .. v7}, Landroid/service/wallpaper/IWallpaperService;->attach(Landroid/service/wallpaper/IWallpaperConnection;Landroid/os/IBinder;IZIILandroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    .end local v7    # "rect":Landroid/graphics/Rect;
    .end local v9    # "root":Landroid/view/View;
    .end local v10    # "view":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 192
    :catch_0
    move-exception v8

    .line 193
    .local v8, "e":Landroid/os/RemoteException;
    sget-boolean v0, Landroid/app/wallpaperbackup/LivePreview;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 194
    const-string v0, "LiveWallpaperPreview"

    const-string v1, "Failed attaching wallpaper; clearing"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    const/4 v0, 0x0

    .line 201
    iput-object v0, p0, Landroid/app/wallpaperbackup/LivePreview$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    .line 202
    iput-object v0, p0, Landroid/app/wallpaperbackup/LivePreview$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    .line 203
    # getter for: Landroid/app/wallpaperbackup/LivePreview;->mWallpaperConnection:Landroid/app/wallpaperbackup/LivePreview$WallpaperConnection;
    invoke-static {}, Landroid/app/wallpaperbackup/LivePreview;->access$100()Landroid/app/wallpaperbackup/LivePreview$WallpaperConnection;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 204
    sget-boolean v0, Landroid/app/wallpaperbackup/LivePreview;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 205
    const-string v0, "LiveWallpaperPreview"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wallpaper service gone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_0
    return-void
.end method

.method public setWallpaper(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 230
    const/4 v0, 0x0

    return-object v0
.end method
