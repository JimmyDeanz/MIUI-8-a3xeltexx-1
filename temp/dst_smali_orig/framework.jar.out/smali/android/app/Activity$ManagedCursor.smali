.class final Landroid/app/Activity$ManagedCursor;
.super Ljava/lang/Object;
.source "Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ManagedCursor"
.end annotation


# instance fields
.field private final mCursor:Landroid/database/Cursor;

.field private mReleased:Z

.field private mUpdated:Z


# direct methods
.method constructor <init>(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/Activity$ManagedCursor;->mCursor:Landroid/database/Cursor;

    iput-boolean v0, p0, Landroid/app/Activity$ManagedCursor;->mReleased:Z

    iput-boolean v0, p0, Landroid/app/Activity$ManagedCursor;->mUpdated:Z

    return-void
.end method

.method static synthetic access$200(Landroid/app/Activity$ManagedCursor;)Landroid/database/Cursor;
    .locals 1
    .param p0, "x0"    # Landroid/app/Activity$ManagedCursor;

    .prologue
    iget-object v0, p0, Landroid/app/Activity$ManagedCursor;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$500(Landroid/app/Activity$ManagedCursor;)Z
    .locals 1
    .param p0, "x0"    # Landroid/app/Activity$ManagedCursor;

    .prologue
    iget-boolean v0, p0, Landroid/app/Activity$ManagedCursor;->mReleased:Z

    return v0
.end method

.method static synthetic access$502(Landroid/app/Activity$ManagedCursor;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/app/Activity$ManagedCursor;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/app/Activity$ManagedCursor;->mReleased:Z

    return p1
.end method

.method static synthetic access$600(Landroid/app/Activity$ManagedCursor;)Z
    .locals 1
    .param p0, "x0"    # Landroid/app/Activity$ManagedCursor;

    .prologue
    iget-boolean v0, p0, Landroid/app/Activity$ManagedCursor;->mUpdated:Z

    return v0
.end method

.method static synthetic access$602(Landroid/app/Activity$ManagedCursor;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/app/Activity$ManagedCursor;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/app/Activity$ManagedCursor;->mUpdated:Z

    return p1
.end method
