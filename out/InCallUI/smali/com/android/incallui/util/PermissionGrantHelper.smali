.class public Lcom/android/incallui/util/PermissionGrantHelper;
.super Ljava/lang/Object;
.source "PermissionGrantHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/util/PermissionGrantHelper$OnPermissionGrantedListener;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/incallui/util/PermissionGrantHelper;


# instance fields
.field private BASE_RUNTIME_REQUEST_CODE:I

.field private listeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/incallui/util/PermissionGrantHelper$OnPermissionGrantedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/android/incallui/util/PermissionGrantHelper;->sInstance:Lcom/android/incallui/util/PermissionGrantHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/incallui/util/PermissionGrantHelper;->BASE_RUNTIME_REQUEST_CODE:I

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/util/PermissionGrantHelper;->listeners:Landroid/util/SparseArray;

    .line 24
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/incallui/util/PermissionGrantHelper;
    .locals 3

    .prologue
    .line 27
    const-class v1, Lcom/android/incallui/util/PermissionGrantHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/incallui/util/PermissionGrantHelper;->sInstance:Lcom/android/incallui/util/PermissionGrantHelper;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/android/incallui/util/PermissionGrantHelper;

    invoke-direct {v0}, Lcom/android/incallui/util/PermissionGrantHelper;-><init>()V

    sput-object v0, Lcom/android/incallui/util/PermissionGrantHelper;->sInstance:Lcom/android/incallui/util/PermissionGrantHelper;

    .line 29
    sget-object v0, Lcom/android/incallui/util/PermissionGrantHelper;->sInstance:Lcom/android/incallui/util/PermissionGrantHelper;

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, v0, Lcom/android/incallui/util/PermissionGrantHelper;->listeners:Landroid/util/SparseArray;

    .line 31
    :cond_0
    sget-object v0, Lcom/android/incallui/util/PermissionGrantHelper;->sInstance:Lcom/android/incallui/util/PermissionGrantHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 27
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 90
    sget-object v0, Lcom/android/incallui/util/PermissionGrantHelper;->sInstance:Lcom/android/incallui/util/PermissionGrantHelper;

    if-eqz v0, :cond_0

    .line 91
    sget-object v0, Lcom/android/incallui/util/PermissionGrantHelper;->sInstance:Lcom/android/incallui/util/PermissionGrantHelper;

    iput-object v1, v0, Lcom/android/incallui/util/PermissionGrantHelper;->listeners:Landroid/util/SparseArray;

    .line 93
    :cond_0
    sput-object v1, Lcom/android/incallui/util/PermissionGrantHelper;->sInstance:Lcom/android/incallui/util/PermissionGrantHelper;

    .line 94
    return-void
.end method


# virtual methods
.method public varargs checkPermissions(Landroid/app/Activity;Lcom/android/incallui/util/PermissionGrantHelper$OnPermissionGrantedListener;[Ljava/lang/String;)V
    .locals 9
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "listener"    # Lcom/android/incallui/util/PermissionGrantHelper$OnPermissionGrantedListener;
    .param p3, "permissions"    # [Ljava/lang/String;

    .prologue
    .line 45
    if-eqz p1, :cond_0

    iget-object v8, p0, Lcom/android/incallui/util/PermissionGrantHelper;->listeners:Landroid/util/SparseArray;

    if-nez v8, :cond_1

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    new-instance v7, Ljava/util/ArrayList;

    array-length v8, p3

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 50
    .local v7, "unGrantedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v0, p3

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v3, :cond_3

    aget-object v4, v0, v1

    .line 51
    .local v4, "permission":Ljava/lang/String;
    invoke-virtual {p0, p1, v4}, Lcom/android/incallui/util/PermissionGrantHelper;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    .line 52
    .local v2, "isGranted":Z
    if-nez v2, :cond_2

    .line 53
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 56
    .end local v2    # "isGranted":Z
    .end local v4    # "permission":Ljava/lang/String;
    :cond_3
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_4

    .line 57
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    .line 58
    .local v6, "unGrantedPermissionArray":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/incallui/util/PermissionGrantHelper;->getRequestCode()I

    move-result v5

    .line 59
    .local v5, "requestCode":I
    iget-object v8, p0, Lcom/android/incallui/util/PermissionGrantHelper;->listeners:Landroid/util/SparseArray;

    invoke-virtual {v8, v5, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 60
    invoke-virtual {p0, p1, v6, v5}, Lcom/android/incallui/util/PermissionGrantHelper;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    .line 62
    .end local v5    # "requestCode":I
    .end local v6    # "unGrantedPermissionArray":[Ljava/lang/String;
    :cond_4
    invoke-interface {p2}, Lcom/android/incallui/util/PermissionGrantHelper$OnPermissionGrantedListener;->onPermissionGranted()V

    goto :goto_0
.end method

.method public checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "permission"    # Ljava/lang/String;

    .prologue
    .line 97
    invoke-static {p1, p2}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRequestCode()I
    .locals 2

    .prologue
    .line 35
    iget v0, p0, Lcom/android/incallui/util/PermissionGrantHelper;->BASE_RUNTIME_REQUEST_CODE:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/incallui/util/PermissionGrantHelper;->BASE_RUNTIME_REQUEST_CODE:I

    return v0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 7
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 67
    iget-object v6, p0, Lcom/android/incallui/util/PermissionGrantHelper;->listeners:Landroid/util/SparseArray;

    if-nez v6, :cond_1

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    iget-object v6, p0, Lcom/android/incallui/util/PermissionGrantHelper;->listeners:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/incallui/util/PermissionGrantHelper$OnPermissionGrantedListener;

    .line 71
    .local v5, "onPermissionGrantedListener":Lcom/android/incallui/util/PermissionGrantHelper$OnPermissionGrantedListener;
    if-eqz v5, :cond_0

    .line 74
    iget-object v6, p0, Lcom/android/incallui/util/PermissionGrantHelper;->listeners:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 75
    const/4 v3, 0x0

    .line 76
    .local v3, "isGranted":Z
    move-object v0, p3

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v4, :cond_2

    aget v1, v0, v2

    .line 77
    .local v1, "grantResult":I
    if-nez v1, :cond_3

    const/4 v3, 0x1

    .line 78
    :goto_2
    if-nez v3, :cond_4

    .line 82
    .end local v1    # "grantResult":I
    :cond_2
    if-eqz v3, :cond_5

    .line 83
    invoke-interface {v5}, Lcom/android/incallui/util/PermissionGrantHelper$OnPermissionGrantedListener;->onPermissionGranted()V

    goto :goto_0

    .line 77
    .restart local v1    # "grantResult":I
    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    .line 76
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 85
    .end local v1    # "grantResult":I
    :cond_5
    invoke-interface {v5}, Lcom/android/incallui/util/PermissionGrantHelper$OnPermissionGrantedListener;->onPermissionDenied()V

    goto :goto_0
.end method

.method public requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "requestCode"    # I

    .prologue
    .line 101
    invoke-static {p1, p2, p3}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 102
    return-void
.end method
