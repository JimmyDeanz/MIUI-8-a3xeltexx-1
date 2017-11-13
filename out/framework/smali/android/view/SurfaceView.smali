.class public Landroid/view/SurfaceView;
.super Landroid/view/View;
.source "SurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/SurfaceView$MyWindow;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEBUG_DCS:Z

.field public static final DYNAMIC_BUFFER_QUEUE_ENABLED:Z = true

.field private static final DYNAMIC_COLOR_SCALING_ENABLED:Z = true

.field static final GET_NEW_SURFACE_MSG:I = 0x2

.field static final KEEP_SCREEN_ON_MSG:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SurfaceView"

.field private static final TAG_DCS:Ljava/lang/String; = "SRIB_DCS:SurfaceView"

.field static final UPDATE_WINDOW_MSG:I = 0x3


# instance fields
.field final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/SurfaceHolder$Callback;",
            ">;"
        }
    .end annotation
.end field

.field final mConfiguration:Landroid/content/res/Configuration;

.field final mContentInsets:Landroid/graphics/Rect;

.field private mCurrentOrientation:I

.field private final mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field mDrawingStopped:Z

.field mFormat:I

.field private mGlobalListenersAdded:Z

.field final mHandler:Landroid/os/Handler;

.field mHaveFrame:Z

.field mHeight:I

.field mIsCreating:Z

.field private mIsDcsEnabledApp:Z

.field private mIsFixedOrientation:Z

.field public mIsSixteenBitApp:I

.field mLastLockTime:J

.field mLastSurfaceHeight:I

.field mLastSurfaceWidth:I

.field final mLayout:Landroid/view/WindowManager$LayoutParams;

.field mLeft:I

.field final mLocation:[I

.field private mNeedForceDrawAtSetFrame:Z

.field final mNewSurface:Landroid/view/Surface;

.field final mOutsets:Landroid/graphics/Rect;

.field final mOverscanInsets:Landroid/graphics/Rect;

.field mReportDrawNeeded:Z

.field mRequestedFormat:I

.field mRequestedHeight:I

.field mRequestedVisible:Z

.field mRequestedWidth:I

.field private mRequestedX:I

.field private mRequestedY:I

.field private mSVBufferCount:I

.field final mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field mSession:Landroid/view/IWindowSession;

.field final mStableInsets:Landroid/graphics/Rect;

.field final mSurface:Landroid/view/Surface;

.field mSurfaceCreated:Z

.field final mSurfaceFrame:Landroid/graphics/Rect;

.field private final mSurfaceHolder:Landroid/view/SurfaceHolder;

.field final mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

.field mTargetHeight:I

.field mTargetWidth:I

.field mTop:I

.field private mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

.field mUpdateWindowNeeded:Z

.field mViewVisibility:Z

.field mVisible:Z

.field final mVisibleInsets:Landroid/graphics/Rect;

.field mWidth:I

.field final mWinFrame:Landroid/graphics/Rect;

.field mWindow:Landroid/view/SurfaceView$MyWindow;

.field mWindowType:I

.field mWindowVisibility:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 148
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/view/SurfaceView;->DEBUG_DCS:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 222
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    .line 113
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/view/SurfaceView;->mLocation:[I

    .line 115
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 116
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    .line 117
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mNewSurface:Landroid/view/Surface;

    .line 118
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mDrawingStopped:Z

    .line 120
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    .line 124
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mVisibleInsets:Landroid/graphics/Rect;

    .line 125
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    .line 126
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mOverscanInsets:Landroid/graphics/Rect;

    .line 127
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mContentInsets:Landroid/graphics/Rect;

    .line 128
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mStableInsets:Landroid/graphics/Rect;

    .line 129
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mOutsets:Landroid/graphics/Rect;

    .line 130
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mConfiguration:Landroid/content/res/Configuration;

    .line 136
    iput v2, p0, Landroid/view/SurfaceView;->mSVBufferCount:I

    .line 143
    iput v3, p0, Landroid/view/SurfaceView;->mIsSixteenBitApp:I

    .line 145
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mIsDcsEnabledApp:Z

    .line 151
    const/16 v0, 0x3e9

    iput v0, p0, Landroid/view/SurfaceView;->mWindowType:I

    .line 153
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mIsCreating:Z

    .line 155
    new-instance v0, Landroid/view/SurfaceView$1;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$1;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mHandler:Landroid/os/Handler;

    .line 172
    new-instance v0, Landroid/view/SurfaceView$2;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$2;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 180
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    .line 181
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    .line 182
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    .line 183
    iput v2, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    .line 184
    iput v2, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    .line 185
    iput v2, p0, Landroid/view/SurfaceView;->mTargetWidth:I

    .line 186
    iput v2, p0, Landroid/view/SurfaceView;->mTargetHeight:I

    .line 191
    const/4 v0, 0x4

    iput v0, p0, Landroid/view/SurfaceView;->mRequestedFormat:I

    .line 193
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mHaveFrame:Z

    .line 194
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    .line 195
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/SurfaceView;->mLastLockTime:J

    .line 197
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mVisible:Z

    .line 198
    iput v2, p0, Landroid/view/SurfaceView;->mLeft:I

    .line 199
    iput v2, p0, Landroid/view/SurfaceView;->mTop:I

    .line 200
    iput v2, p0, Landroid/view/SurfaceView;->mWidth:I

    .line 201
    iput v2, p0, Landroid/view/SurfaceView;->mHeight:I

    .line 202
    iput v2, p0, Landroid/view/SurfaceView;->mFormat:I

    .line 203
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    .line 204
    iput v2, p0, Landroid/view/SurfaceView;->mLastSurfaceWidth:I

    iput v2, p0, Landroid/view/SurfaceView;->mLastSurfaceHeight:I

    .line 209
    new-instance v0, Landroid/view/SurfaceView$3;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$3;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 400
    iput v2, p0, Landroid/view/SurfaceView;->mCurrentOrientation:I

    .line 401
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mNeedForceDrawAtSetFrame:Z

    .line 857
    new-instance v0, Landroid/view/SurfaceView$4;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$4;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 1035
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mIsFixedOrientation:Z

    .line 1036
    iput v3, p0, Landroid/view/SurfaceView;->mRequestedX:I

    .line 1037
    iput v3, p0, Landroid/view/SurfaceView;->mRequestedY:I

    .line 226
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;->init(Landroid/content/Context;)V

    .line 230
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 233
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    .line 113
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/view/SurfaceView;->mLocation:[I

    .line 115
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 116
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    .line 117
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mNewSurface:Landroid/view/Surface;

    .line 118
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mDrawingStopped:Z

    .line 120
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    .line 124
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mVisibleInsets:Landroid/graphics/Rect;

    .line 125
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    .line 126
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mOverscanInsets:Landroid/graphics/Rect;

    .line 127
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mContentInsets:Landroid/graphics/Rect;

    .line 128
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mStableInsets:Landroid/graphics/Rect;

    .line 129
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mOutsets:Landroid/graphics/Rect;

    .line 130
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mConfiguration:Landroid/content/res/Configuration;

    .line 136
    iput v2, p0, Landroid/view/SurfaceView;->mSVBufferCount:I

    .line 143
    iput v3, p0, Landroid/view/SurfaceView;->mIsSixteenBitApp:I

    .line 145
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mIsDcsEnabledApp:Z

    .line 151
    const/16 v0, 0x3e9

    iput v0, p0, Landroid/view/SurfaceView;->mWindowType:I

    .line 153
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mIsCreating:Z

    .line 155
    new-instance v0, Landroid/view/SurfaceView$1;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$1;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mHandler:Landroid/os/Handler;

    .line 172
    new-instance v0, Landroid/view/SurfaceView$2;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$2;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 180
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    .line 181
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    .line 182
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    .line 183
    iput v2, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    .line 184
    iput v2, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    .line 185
    iput v2, p0, Landroid/view/SurfaceView;->mTargetWidth:I

    .line 186
    iput v2, p0, Landroid/view/SurfaceView;->mTargetHeight:I

    .line 191
    const/4 v0, 0x4

    iput v0, p0, Landroid/view/SurfaceView;->mRequestedFormat:I

    .line 193
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mHaveFrame:Z

    .line 194
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    .line 195
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/SurfaceView;->mLastLockTime:J

    .line 197
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mVisible:Z

    .line 198
    iput v2, p0, Landroid/view/SurfaceView;->mLeft:I

    .line 199
    iput v2, p0, Landroid/view/SurfaceView;->mTop:I

    .line 200
    iput v2, p0, Landroid/view/SurfaceView;->mWidth:I

    .line 201
    iput v2, p0, Landroid/view/SurfaceView;->mHeight:I

    .line 202
    iput v2, p0, Landroid/view/SurfaceView;->mFormat:I

    .line 203
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    .line 204
    iput v2, p0, Landroid/view/SurfaceView;->mLastSurfaceWidth:I

    iput v2, p0, Landroid/view/SurfaceView;->mLastSurfaceHeight:I

    .line 209
    new-instance v0, Landroid/view/SurfaceView$3;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$3;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 400
    iput v2, p0, Landroid/view/SurfaceView;->mCurrentOrientation:I

    .line 401
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mNeedForceDrawAtSetFrame:Z

    .line 857
    new-instance v0, Landroid/view/SurfaceView$4;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$4;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 1035
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mIsFixedOrientation:Z

    .line 1036
    iput v3, p0, Landroid/view/SurfaceView;->mRequestedX:I

    .line 1037
    iput v3, p0, Landroid/view/SurfaceView;->mRequestedY:I

    .line 237
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;->init(Landroid/content/Context;)V

    .line 241
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 244
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    .line 113
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/view/SurfaceView;->mLocation:[I

    .line 115
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 116
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    .line 117
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mNewSurface:Landroid/view/Surface;

    .line 118
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mDrawingStopped:Z

    .line 120
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    .line 124
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mVisibleInsets:Landroid/graphics/Rect;

    .line 125
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    .line 126
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mOverscanInsets:Landroid/graphics/Rect;

    .line 127
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mContentInsets:Landroid/graphics/Rect;

    .line 128
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mStableInsets:Landroid/graphics/Rect;

    .line 129
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mOutsets:Landroid/graphics/Rect;

    .line 130
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mConfiguration:Landroid/content/res/Configuration;

    .line 136
    iput v2, p0, Landroid/view/SurfaceView;->mSVBufferCount:I

    .line 143
    iput v3, p0, Landroid/view/SurfaceView;->mIsSixteenBitApp:I

    .line 145
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mIsDcsEnabledApp:Z

    .line 151
    const/16 v0, 0x3e9

    iput v0, p0, Landroid/view/SurfaceView;->mWindowType:I

    .line 153
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mIsCreating:Z

    .line 155
    new-instance v0, Landroid/view/SurfaceView$1;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$1;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mHandler:Landroid/os/Handler;

    .line 172
    new-instance v0, Landroid/view/SurfaceView$2;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$2;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 180
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    .line 181
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    .line 182
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    .line 183
    iput v2, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    .line 184
    iput v2, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    .line 185
    iput v2, p0, Landroid/view/SurfaceView;->mTargetWidth:I

    .line 186
    iput v2, p0, Landroid/view/SurfaceView;->mTargetHeight:I

    .line 191
    const/4 v0, 0x4

    iput v0, p0, Landroid/view/SurfaceView;->mRequestedFormat:I

    .line 193
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mHaveFrame:Z

    .line 194
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    .line 195
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/SurfaceView;->mLastLockTime:J

    .line 197
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mVisible:Z

    .line 198
    iput v2, p0, Landroid/view/SurfaceView;->mLeft:I

    .line 199
    iput v2, p0, Landroid/view/SurfaceView;->mTop:I

    .line 200
    iput v2, p0, Landroid/view/SurfaceView;->mWidth:I

    .line 201
    iput v2, p0, Landroid/view/SurfaceView;->mHeight:I

    .line 202
    iput v2, p0, Landroid/view/SurfaceView;->mFormat:I

    .line 203
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    .line 204
    iput v2, p0, Landroid/view/SurfaceView;->mLastSurfaceWidth:I

    iput v2, p0, Landroid/view/SurfaceView;->mLastSurfaceHeight:I

    .line 209
    new-instance v0, Landroid/view/SurfaceView$3;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$3;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 400
    iput v2, p0, Landroid/view/SurfaceView;->mCurrentOrientation:I

    .line 401
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mNeedForceDrawAtSetFrame:Z

    .line 857
    new-instance v0, Landroid/view/SurfaceView$4;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$4;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 1035
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mIsFixedOrientation:Z

    .line 1036
    iput v3, p0, Landroid/view/SurfaceView;->mRequestedX:I

    .line 1037
    iput v3, p0, Landroid/view/SurfaceView;->mRequestedY:I

    .line 248
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;->init(Landroid/content/Context;)V

    .line 252
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 255
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    .line 113
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/view/SurfaceView;->mLocation:[I

    .line 115
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 116
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    .line 117
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mNewSurface:Landroid/view/Surface;

    .line 118
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mDrawingStopped:Z

    .line 120
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    .line 124
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mVisibleInsets:Landroid/graphics/Rect;

    .line 125
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    .line 126
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mOverscanInsets:Landroid/graphics/Rect;

    .line 127
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mContentInsets:Landroid/graphics/Rect;

    .line 128
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mStableInsets:Landroid/graphics/Rect;

    .line 129
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mOutsets:Landroid/graphics/Rect;

    .line 130
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mConfiguration:Landroid/content/res/Configuration;

    .line 136
    iput v2, p0, Landroid/view/SurfaceView;->mSVBufferCount:I

    .line 143
    iput v3, p0, Landroid/view/SurfaceView;->mIsSixteenBitApp:I

    .line 145
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mIsDcsEnabledApp:Z

    .line 151
    const/16 v0, 0x3e9

    iput v0, p0, Landroid/view/SurfaceView;->mWindowType:I

    .line 153
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mIsCreating:Z

    .line 155
    new-instance v0, Landroid/view/SurfaceView$1;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$1;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mHandler:Landroid/os/Handler;

    .line 172
    new-instance v0, Landroid/view/SurfaceView$2;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$2;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 180
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    .line 181
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    .line 182
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    .line 183
    iput v2, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    .line 184
    iput v2, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    .line 185
    iput v2, p0, Landroid/view/SurfaceView;->mTargetWidth:I

    .line 186
    iput v2, p0, Landroid/view/SurfaceView;->mTargetHeight:I

    .line 191
    const/4 v0, 0x4

    iput v0, p0, Landroid/view/SurfaceView;->mRequestedFormat:I

    .line 193
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mHaveFrame:Z

    .line 194
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    .line 195
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/SurfaceView;->mLastLockTime:J

    .line 197
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mVisible:Z

    .line 198
    iput v2, p0, Landroid/view/SurfaceView;->mLeft:I

    .line 199
    iput v2, p0, Landroid/view/SurfaceView;->mTop:I

    .line 200
    iput v2, p0, Landroid/view/SurfaceView;->mWidth:I

    .line 201
    iput v2, p0, Landroid/view/SurfaceView;->mHeight:I

    .line 202
    iput v2, p0, Landroid/view/SurfaceView;->mFormat:I

    .line 203
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    .line 204
    iput v2, p0, Landroid/view/SurfaceView;->mLastSurfaceWidth:I

    iput v2, p0, Landroid/view/SurfaceView;->mLastSurfaceHeight:I

    .line 209
    new-instance v0, Landroid/view/SurfaceView$3;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$3;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 400
    iput v2, p0, Landroid/view/SurfaceView;->mCurrentOrientation:I

    .line 401
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mNeedForceDrawAtSetFrame:Z

    .line 857
    new-instance v0, Landroid/view/SurfaceView$4;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$4;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 1035
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mIsFixedOrientation:Z

    .line 1036
    iput v3, p0, Landroid/view/SurfaceView;->mRequestedX:I

    .line 1037
    iput v3, p0, Landroid/view/SurfaceView;->mRequestedY:I

    .line 259
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;->init(Landroid/content/Context;)V

    .line 263
    return-void
.end method

.method static synthetic access$000(Landroid/view/SurfaceView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/SurfaceView;

    .prologue
    .line 106
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mIsDcsEnabledApp:Z

    return v0
.end method

.method private getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;
    .locals 3

    .prologue
    .line 775
    iget-object v2, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v2

    .line 776
    :try_start_0
    iget-object v1, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v0, v1, [Landroid/view/SurfaceHolder$Callback;

    .line 777
    .local v0, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    iget-object v1, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 778
    monitor-exit v2

    .line 779
    return-object v0

    .line 778
    .end local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private init()V
    .locals 1

    .prologue
    .line 266
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->setWillNotDraw(Z)V

    .line 267
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 5
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 273
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 274
    .local v1, "pi":Landroid/content/pm/PackageInfo;
    iget-boolean v2, v1, Landroid/content/pm/PackageInfo;->isDcsEnabledApp:Z

    iput-boolean v2, p0, Landroid/view/SurfaceView;->mIsDcsEnabledApp:Z

    .line 275
    iget v2, v1, Landroid/content/pm/PackageInfo;->dcsFormat:I

    iput v2, p0, Landroid/view/SurfaceView;->mFormat:I

    .line 276
    iget-boolean v2, p0, Landroid/view/SurfaceView;->mIsDcsEnabledApp:Z

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/view/SurfaceView;->mFormat:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 277
    sget-boolean v2, Landroid/view/SurfaceView;->DEBUG_DCS:Z

    if-eqz v2, :cond_0

    .line 278
    const-string v2, "SRIB_DCS:SurfaceView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting top Z-order for RGB565 for package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Format"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/SurfaceView;->mFormat:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    .end local v1    # "pi":Landroid/content/pm/PackageInfo;
    :cond_1
    :goto_0
    invoke-direct {p0}, Landroid/view/SurfaceView;->init()V

    .line 287
    return-void

    .line 281
    :catch_0
    move-exception v0

    .line 282
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "SRIB_DCS:SurfaceView"

    const-string v3, "SV init NameNotFoundException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setSamsungFlags(II)V
    .locals 3
    .param p1, "flags"    # I
    .param p2, "mask"    # I

    .prologue
    .line 1135
    iget-object v0, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    xor-int/lit8 v2, p2, -0x1

    and-int/2addr v1, v2

    and-int v2, p1, p2

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 1136
    return-void
.end method


# virtual methods
.method public addSamsungFlags(I)V
    .locals 0
    .param p1, "flags"    # I

    .prologue
    .line 1123
    invoke-direct {p0, p1, p1}, Landroid/view/SurfaceView;->setSamsungFlags(II)V

    .line 1124
    return-void
.end method

.method public clearSamsungFlags(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 1131
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/view/SurfaceView;->setSamsungFlags(II)V

    .line 1132
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 453
    iget v0, p0, Landroid/view/SurfaceView;->mWindowType:I

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 455
    iget v0, p0, Landroid/view/SurfaceView;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    .line 457
    const/4 v0, 0x0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 460
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 461
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 441
    iget v0, p0, Landroid/view/SurfaceView;->mWindowType:I

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 443
    iget v0, p0, Landroid/view/SurfaceView;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_0

    .line 445
    const/4 v0, 0x0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 448
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 449
    return-void
.end method

.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .locals 9
    .param p1, "region"    # Landroid/graphics/Region;

    .prologue
    .line 405
    iget v0, p0, Landroid/view/SurfaceView;->mWindowType:I

    const/16 v3, 0x3e8

    if-ne v0, v3, :cond_1

    .line 406
    invoke-super {p0, p1}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result v7

    .line 436
    :cond_0
    :goto_0
    return v7

    .line 418
    :cond_1
    const/4 v7, 0x1

    .line 419
    .local v7, "opaque":Z
    iget v0, p0, Landroid/view/SurfaceView;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_3

    .line 421
    invoke-super {p0, p1}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result v7

    .line 433
    :cond_2
    :goto_1
    iget v0, p0, Landroid/view/SurfaceView;->mRequestedFormat:I

    invoke-static {v0}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 434
    const/4 v7, 0x0

    goto :goto_0

    .line 422
    :cond_3
    if-eqz p1, :cond_2

    .line 423
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v8

    .line 424
    .local v8, "w":I
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v6

    .line 425
    .local v6, "h":I
    if-lez v8, :cond_2

    if-lez v6, :cond_2

    .line 426
    iget-object v0, p0, Landroid/view/SurfaceView;->mLocation:[I

    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->getLocationInWindow([I)V

    .line 428
    iget-object v0, p0, Landroid/view/SurfaceView;->mLocation:[I

    const/4 v3, 0x0

    aget v1, v0, v3

    .line 429
    .local v1, "l":I
    iget-object v0, p0, Landroid/view/SurfaceView;->mLocation:[I

    const/4 v3, 0x1

    aget v2, v0, v3

    .line 430
    .local v2, "t":I
    add-int v3, v1, v8

    add-int v4, v2, v6

    sget-object v5, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    goto :goto_1
.end method

.method public getHolder()Landroid/view/SurfaceHolder;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method handleGetNewSurface()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 783
    invoke-virtual {p0, v0, v0}, Landroid/view/SurfaceView;->updateWindow(ZZ)V

    .line 784
    return-void
.end method

.method public isFixedSize()Z
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 794
    iget v0, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 302
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 303
    iget-object v1, p0, Landroid/view/SurfaceView;->mParent:Landroid/view/ViewParent;

    invoke-interface {v1, p0}, Landroid/view/ViewParent;->requestTransparentRegion(Landroid/view/View;)V

    .line 304
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v1

    iput-object v1, p0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    .line 305
    iget-object v1, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    iput-object v3, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 306
    iget-object v1, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    const-string v3, "SurfaceView"

    invoke-virtual {v1, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 307
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    .line 309
    iget-boolean v1, p0, Landroid/view/SurfaceView;->mGlobalListenersAdded:Z

    if-nez v1, :cond_0

    .line 310
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 311
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/view/SurfaceView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 312
    iget-object v1, p0, Landroid/view/SurfaceView;->mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 313
    iput-boolean v2, p0, Landroid/view/SurfaceView;->mGlobalListenersAdded:Z

    .line 315
    .end local v0    # "observer":Landroid/view/ViewTreeObserver;
    :cond_0
    return-void

    .line 307
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 393
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 394
    iget v0, p0, Landroid/view/SurfaceView;->mCurrentOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    .line 395
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/SurfaceView;->mNeedForceDrawAtSetFrame:Z

    .line 396
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Landroid/view/SurfaceView;->mCurrentOrientation:I

    .line 398
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 345
    iget-boolean v1, p0, Landroid/view/SurfaceView;->mGlobalListenersAdded:Z

    if-eqz v1, :cond_0

    .line 346
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 347
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/view/SurfaceView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 348
    iget-object v1, p0, Landroid/view/SurfaceView;->mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 349
    iput-boolean v2, p0, Landroid/view/SurfaceView;->mGlobalListenersAdded:Z

    .line 352
    .end local v0    # "observer":Landroid/view/ViewTreeObserver;
    :cond_0
    iput-boolean v2, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    .line 353
    invoke-virtual {p0, v2, v2}, Landroid/view/SurfaceView;->updateWindow(ZZ)V

    .line 354
    iput-boolean v2, p0, Landroid/view/SurfaceView;->mHaveFrame:Z

    .line 355
    iget-object v1, p0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    if-eqz v1, :cond_1

    .line 357
    :try_start_0
    iget-object v1, p0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    iget-object v2, p0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    invoke-interface {v1, v2}, Landroid/view/IWindowSession;->remove(Landroid/view/IWindow;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 361
    :goto_0
    iput-object v3, p0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    .line 363
    :cond_1
    iput-object v3, p0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    .line 364
    iget-object v1, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iput-object v3, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 366
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 367
    return-void

    .line 358
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v3, 0x0

    .line 371
    iget v2, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    if-ltz v2, :cond_0

    iget v2, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    invoke-static {v2, p1, v3}, Landroid/view/SurfaceView;->resolveSizeAndState(III)I

    move-result v1

    .line 374
    .local v1, "width":I
    :goto_0
    iget v2, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    if-ltz v2, :cond_1

    iget v2, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    invoke-static {v2, p2, v3}, Landroid/view/SurfaceView;->resolveSizeAndState(III)I

    move-result v0

    .line 377
    .local v0, "height":I
    :goto_1
    invoke-virtual {p0, v1, v0}, Landroid/view/SurfaceView;->setMeasuredDimension(II)V

    .line 378
    return-void

    .line 371
    .end local v0    # "height":I
    .end local v1    # "width":I
    :cond_0
    invoke-static {v3, p1}, Landroid/view/SurfaceView;->getDefaultSize(II)I

    move-result v1

    goto :goto_0

    .line 374
    .restart local v1    # "width":I
    :cond_1
    invoke-static {v3, p2}, Landroid/view/SurfaceView;->getDefaultSize(II)I

    move-result v0

    goto :goto_1
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 3
    .param p1, "visibility"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 319
    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    .line 320
    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    .line 321
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    .line 322
    invoke-virtual {p0, v2, v2}, Landroid/view/SurfaceView;->updateWindow(ZZ)V

    .line 323
    return-void

    :cond_0
    move v0, v2

    .line 320
    goto :goto_0

    :cond_1
    move v1, v2

    .line 321
    goto :goto_1
.end method

.method public setBufferCount(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 508
    iput p1, p0, Landroid/view/SurfaceView;->mSVBufferCount:I

    .line 510
    return-void
.end method

.method public setFixedOrientation(I)V
    .locals 4
    .param p1, "samsungFlagFixedOrientation"    # I

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 1045
    if-eqz p1, :cond_2

    .line 1046
    iget-object v2, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    or-int/2addr v3, p1

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 1047
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/view/SurfaceView;->mIsFixedOrientation:Z

    .line 1049
    iget-object v2, p0, Landroid/view/SurfaceView;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManagerImpl;

    .line 1050
    .local v1, "wm":Landroid/view/WindowManagerImpl;
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    .line 1051
    .local v0, "di":Landroid/view/DisplayInfo;
    invoke-virtual {v1}, Landroid/view/WindowManagerImpl;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 1052
    const/4 v2, 0x4

    if-ne p1, v2, :cond_1

    .line 1053
    iget v2, v0, Landroid/view/DisplayInfo;->appWidth:I

    iget v3, v0, Landroid/view/DisplayInfo;->appHeight:I

    invoke-static {v2, v3}, Landroid/util/MathUtils;->max(II)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    .line 1054
    iget v2, v0, Landroid/view/DisplayInfo;->appWidth:I

    iget v3, v0, Landroid/view/DisplayInfo;->appHeight:I

    invoke-static {v2, v3}, Landroid/util/MathUtils;->min(II)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    .line 1068
    .end local v0    # "di":Landroid/view/DisplayInfo;
    .end local v1    # "wm":Landroid/view/WindowManagerImpl;
    :cond_0
    :goto_0
    return-void

    .line 1055
    .restart local v0    # "di":Landroid/view/DisplayInfo;
    .restart local v1    # "wm":Landroid/view/WindowManagerImpl;
    :cond_1
    const/16 v2, 0x8

    if-ne p1, v2, :cond_0

    .line 1056
    iget v2, v0, Landroid/view/DisplayInfo;->appWidth:I

    iget v3, v0, Landroid/view/DisplayInfo;->appHeight:I

    invoke-static {v2, v3}, Landroid/util/MathUtils;->min(II)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    .line 1057
    iget v2, v0, Landroid/view/DisplayInfo;->appWidth:I

    iget v3, v0, Landroid/view/DisplayInfo;->appHeight:I

    invoke-static {v2, v3}, Landroid/util/MathUtils;->max(II)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    goto :goto_0

    .line 1060
    .end local v0    # "di":Landroid/view/DisplayInfo;
    .end local v1    # "wm":Landroid/view/WindowManagerImpl;
    :cond_2
    iput v2, p0, Landroid/view/SurfaceView;->mRequestedX:I

    .line 1061
    iput v2, p0, Landroid/view/SurfaceView;->mRequestedY:I

    .line 1062
    iput v3, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    .line 1063
    iput v3, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    .line 1064
    iput-boolean v2, p0, Landroid/view/SurfaceView;->mIsFixedOrientation:Z

    .line 1065
    iget-object v2, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/lit8 v3, v3, -0xd

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    goto :goto_0
.end method

.method public setFixedOrientation(IIIII)V
    .locals 8
    .param p1, "samsungFlagFixedOrientation"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    const/4 v6, -0x1

    .line 1079
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v7, v6

    invoke-virtual/range {v0 .. v7}, Landroid/view/SurfaceView;->setFixedOrientationWithScale(IIIIIII)V

    .line 1080
    return-void
.end method

.method public setFixedOrientationWithScale(IIIIIII)V
    .locals 2
    .param p1, "samsungFlagFixedOrientation"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "sourceWidth"    # I
    .param p5, "sourceHeight"    # I
    .param p6, "targetWidth"    # I
    .param p7, "targetHeight"    # I

    .prologue
    .line 1105
    iget-object v0, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    or-int/2addr v1, p1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 1106
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/SurfaceView;->mIsFixedOrientation:Z

    .line 1108
    iput p2, p0, Landroid/view/SurfaceView;->mRequestedX:I

    .line 1109
    iput p3, p0, Landroid/view/SurfaceView;->mRequestedY:I

    .line 1110
    iput p4, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    .line 1111
    iput p5, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    .line 1112
    iput p6, p0, Landroid/view/SurfaceView;->mTargetWidth:I

    .line 1113
    iput p7, p0, Landroid/view/SurfaceView;->mTargetHeight:I

    .line 1114
    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 4
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    const/4 v2, 0x0

    .line 383
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setFrame(IIII)Z

    move-result v1

    .line 384
    .local v1, "result":Z
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/SurfaceView;->isFixedSize()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Landroid/view/SurfaceView;->mNeedForceDrawAtSetFrame:Z

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 385
    .local v0, "force":Z
    :goto_0
    iput-boolean v2, p0, Landroid/view/SurfaceView;->mNeedForceDrawAtSetFrame:Z

    .line 386
    invoke-virtual {p0, v0, v2}, Landroid/view/SurfaceView;->updateWindow(ZZ)V

    .line 387
    return v1

    .end local v0    # "force":Z
    :cond_0
    move v0, v2

    .line 384
    goto :goto_0
.end method

.method public setSecure(Z)V
    .locals 2
    .param p1, "isSecure"    # Z

    .prologue
    .line 526
    if-eqz p1, :cond_0

    .line 527
    iget-object v0, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x2000

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 531
    :goto_0
    return-void

    .line 529
    :cond_0
    iget-object v0, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v1, v1, -0x2001

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 4
    .param p1, "visibility"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 327
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 328
    if-nez p1, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    .line 329
    iget-boolean v1, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    if-eqz v1, :cond_2

    move v0, v2

    .line 330
    .local v0, "newRequestedVisible":Z
    :goto_1
    iget-boolean v1, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    if-eq v0, v1, :cond_0

    .line 337
    invoke-virtual {p0}, Landroid/view/SurfaceView;->requestLayout()V

    .line 339
    :cond_0
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    .line 340
    invoke-virtual {p0, v3, v3}, Landroid/view/SurfaceView;->updateWindow(ZZ)V

    .line 341
    return-void

    .end local v0    # "newRequestedVisible":Z
    :cond_1
    move v1, v3

    .line 328
    goto :goto_0

    :cond_2
    move v0, v3

    .line 329
    goto :goto_1
.end method

.method public setWindowType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 539
    iput p1, p0, Landroid/view/SurfaceView;->mWindowType:I

    .line 540
    return-void
.end method

.method public setZOrderMediaOverlay(Z)V
    .locals 1
    .param p1, "isMediaOverlay"    # Z

    .prologue
    .line 475
    if-eqz p1, :cond_0

    const/16 v0, 0x3ec

    :goto_0
    iput v0, p0, Landroid/view/SurfaceView;->mWindowType:I

    .line 478
    return-void

    .line 475
    :cond_0
    const/16 v0, 0x3e9

    goto :goto_0
.end method

.method public setZOrderOnTop(Z)V
    .locals 3
    .param p1, "onTop"    # Z

    .prologue
    .line 494
    if-eqz p1, :cond_0

    .line 495
    const/16 v0, 0x3e8

    iput v0, p0, Landroid/view/SurfaceView;->mWindowType:I

    .line 497
    iget-object v0, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x20000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 502
    :goto_0
    return-void

    .line 499
    :cond_0
    const/16 v0, 0x3e9

    iput v0, p0, Landroid/view/SurfaceView;->mWindowType:I

    .line 500
    iget-object v0, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, -0x20001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0
.end method

.method protected updateWindow(ZZ)V
    .locals 45
    .param p1, "force"    # Z
    .param p2, "redrawNeeded"    # Z

    .prologue
    .line 544
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/view/SurfaceView;->mHaveFrame:Z

    if-nez v3, :cond_1

    .line 771
    :cond_0
    :goto_0
    return-void

    .line 547
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v42

    .line 548
    .local v42, "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v42, :cond_2

    .line 549
    move-object/from16 v0, v42

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    .line 552
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v3, :cond_3

    .line 553
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v3, v4}, Landroid/view/Surface;->setCompatibilityTranslator(Landroid/content/res/CompatibilityInfo$Translator;)V

    .line 556
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/SurfaceView;->mRequestedWidth:I

    move/from16 v34, v0

    .line 557
    .local v34, "myWidth":I
    if-gtz v34, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v34

    .line 558
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/SurfaceView;->mRequestedHeight:I

    move/from16 v33, v0

    .line 559
    .local v33, "myHeight":I
    if-gtz v33, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v33

    .line 561
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mLocation:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/SurfaceView;->getLocationInWindow([I)V

    .line 562
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    if-nez v3, :cond_f

    const/16 v27, 0x1

    .line 563
    .local v27, "creating":Z
    :goto_1
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/SurfaceView;->mFormat:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/SurfaceView;->mRequestedFormat:I

    if-eq v3, v4, :cond_10

    const/16 v29, 0x1

    .line 567
    .local v29, "formatChanged":Z
    :goto_2
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/SurfaceView;->mHeight:I

    move/from16 v0, v33

    if-le v3, v0, :cond_11

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->usingInputMethodInCascade()Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v24, 0x1

    .line 568
    .local v24, "blockSizeChange":Z
    :goto_3
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/SurfaceView;->mWidth:I

    move/from16 v0, v34

    if-ne v3, v0, :cond_6

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/SurfaceView;->mHeight:I

    move/from16 v0, v33

    if-eq v3, v0, :cond_12

    if-nez v24, :cond_12

    :cond_6
    const/16 v38, 0x1

    .line 570
    .local v38, "sizeChanged":Z
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/view/SurfaceView;->mVisible:Z

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    if-eq v3, v4, :cond_13

    const/16 v44, 0x1

    .line 571
    .local v44, "visibleChanged":Z
    :goto_5
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v3, v4, :cond_7

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eq v3, v4, :cond_14

    if-nez v24, :cond_14

    :cond_7
    const/16 v31, 0x1

    .line 573
    .local v31, "layoutSizeChanged":Z
    :goto_6
    if-nez p1, :cond_8

    if-nez v27, :cond_8

    if-nez v29, :cond_8

    if-nez v38, :cond_8

    if-nez v44, :cond_8

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/SurfaceView;->mLeft:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mLocation:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    if-ne v3, v4, :cond_8

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/SurfaceView;->mTop:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mLocation:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    if-ne v3, v4, :cond_8

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/view/SurfaceView;->mUpdateWindowNeeded:Z

    if-nez v3, :cond_8

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/view/SurfaceView;->mReportDrawNeeded:Z

    if-nez v3, :cond_8

    if-nez p2, :cond_8

    if-eqz v31, :cond_0

    .line 584
    :cond_8
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    move/from16 v43, v0

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/SurfaceView;->mVisible:Z

    .line 585
    .local v43, "visible":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mLocation:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/view/SurfaceView;->mLeft:I

    .line 586
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mLocation:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/view/SurfaceView;->mTop:I

    .line 587
    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/SurfaceView;->mWidth:I

    .line 588
    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/SurfaceView;->mHeight:I

    .line 589
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/SurfaceView;->mRequestedFormat:I

    move-object/from16 v0, p0

    iput v3, v0, Landroid/view/SurfaceView;->mFormat:I

    .line 594
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/SurfaceView;->mLeft:I

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 595
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/SurfaceView;->mTop:I

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 597
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/view/SurfaceView;->mIsFixedOrientation:Z

    if-eqz v3, :cond_16

    .line 598
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/SurfaceView;->mRequestedX:I

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 599
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/SurfaceView;->mRequestedY:I

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 601
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/SurfaceView;->mTargetWidth:I

    if-lez v3, :cond_15

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/SurfaceView;->mTargetHeight:I

    if-lez v3, :cond_15

    .line 602
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/SurfaceView;->mTargetWidth:I

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 603
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/SurfaceView;->mTargetHeight:I

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 613
    :goto_7
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v3, :cond_9

    .line 614
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v3, v4}, Landroid/content/res/CompatibilityInfo$Translator;->translateLayoutParamsInAppWindowToScreen(Landroid/view/WindowManager$LayoutParams;)V

    .line 617
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/SurfaceView;->mRequestedFormat:I

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 618
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v4, v4, 0x4218

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 625
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v3

    if-nez v3, :cond_a

    .line 626
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v4, v4, 0x80

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 629
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v4, v4, 0x40

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 631
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    if-nez v3, :cond_b

    .line 632
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getDisplay()Landroid/view/Display;

    move-result-object v28

    .line 633
    .local v28, "display":Landroid/view/Display;
    new-instance v3, Landroid/view/SurfaceView$MyWindow;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Landroid/view/SurfaceView$MyWindow;-><init>(Landroid/view/SurfaceView;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    .line 634
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/SurfaceView;->mWindowType:I

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 635
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    const v4, 0x800033

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 636
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    iget v5, v5, Landroid/view/SurfaceView$MyWindow;->mSeq:I

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget-boolean v7, v0, Landroid/view/SurfaceView;->mVisible:Z

    if-eqz v7, :cond_17

    const/4 v7, 0x0

    :goto_8
    invoke-virtual/range {v28 .. v28}, Landroid/view/Display;->getDisplayId()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/view/SurfaceView;->mContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/SurfaceView;->mStableInsets:Landroid/graphics/Rect;

    invoke-interface/range {v3 .. v10}, Landroid/view/IWindowSession;->addToDisplayWithoutInputChannel(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    .line 646
    .end local v28    # "display":Landroid/view/Display;
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 648
    const/4 v3, 0x0

    :try_start_1
    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/view/SurfaceView;->mUpdateWindowNeeded:Z

    .line 649
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/SurfaceView;->mReportDrawNeeded:Z

    move/from16 v37, v0

    .line 650
    .local v37, "reportDrawNeeded":Z
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/view/SurfaceView;->mReportDrawNeeded:Z

    .line 651
    if-nez v43, :cond_18

    const/4 v3, 0x1

    :goto_9
    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/view/SurfaceView;->mDrawingStopped:Z

    .line 655
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    iget v5, v5, Landroid/view/SurfaceView$MyWindow;->mSeq:I

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget v7, v0, Landroid/view/SurfaceView;->mWidth:I

    move-object/from16 v0, p0

    iget v8, v0, Landroid/view/SurfaceView;->mHeight:I

    if-eqz v43, :cond_19

    const/4 v9, 0x0

    :goto_a
    const/4 v10, 0x2

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/SurfaceView;->mOverscanInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/SurfaceView;->mContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/SurfaceView;->mVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/view/SurfaceView;->mStableInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mOutsets:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mNewSurface:Landroid/view/Surface;

    move-object/from16 v18, v0

    new-instance v19, Landroid/graphics/PointF;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/PointF;-><init>()V

    new-instance v20, Landroid/graphics/Rect;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Rect;-><init>()V

    new-instance v21, Landroid/graphics/PointF;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/PointF;-><init>()V

    invoke-interface/range {v3 .. v21}, Landroid/view/IWindowSession;->relayout(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IIIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;Landroid/view/Surface;Landroid/graphics/PointF;Landroid/graphics/Rect;Landroid/graphics/PointF;)I

    move-result v36

    .line 663
    .local v36, "relayoutResult":I
    and-int/lit8 v3, v36, 0x2

    if-eqz v3, :cond_c

    .line 664
    const/16 v37, 0x1

    .line 670
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    const/4 v4, 0x0

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 671
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    const/4 v4, 0x0

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 672
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-nez v3, :cond_1a

    .line 673
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 674
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 681
    :goto_b
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iget v0, v3, Landroid/graphics/Rect;->right:I

    move/from16 v41, v0

    .line 682
    .local v41, "surfaceWidth":I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iget v0, v3, Landroid/graphics/Rect;->bottom:I

    move/from16 v40, v0

    .line 683
    .local v40, "surfaceHeight":I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/SurfaceView;->mLastSurfaceWidth:I

    move/from16 v0, v41

    if-ne v3, v0, :cond_d

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/SurfaceView;->mLastSurfaceHeight:I

    move/from16 v0, v40

    if-eq v3, v0, :cond_1b

    :cond_d
    const/16 v35, 0x1

    .line 685
    .local v35, "realSizeChanged":Z
    :goto_c
    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/SurfaceView;->mLastSurfaceWidth:I

    .line 686
    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/SurfaceView;->mLastSurfaceHeight:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 688
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 692
    or-int v3, v27, v37

    or-int p2, p2, v3

    .line 694
    const/16 v26, 0x0

    .line 696
    .local v26, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    and-int/lit8 v3, v36, 0x4

    if-eqz v3, :cond_1c

    const/16 v39, 0x1

    .line 698
    .local v39, "surfaceChanged":Z
    :goto_d
    :try_start_3
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    if-eqz v3, :cond_1d

    if-nez v39, :cond_e

    if-nez v43, :cond_1d

    if-eqz v44, :cond_1d

    .line 699
    :cond_e
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    .line 700
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v3}, Landroid/view/Surface;->isValid()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 702
    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v26

    .line 703
    move-object/from16 v23, v26

    .local v23, "arr$":[Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v32, v0

    .local v32, "len$":I
    const/16 v30, 0x0

    .local v30, "i$":I
    :goto_e
    move/from16 v0, v30

    move/from16 v1, v32

    if-ge v0, v1, :cond_1d

    aget-object v25, v23, v30

    .line 704
    .local v25, "c":Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/view/SurfaceHolder$Callback;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 703
    add-int/lit8 v30, v30, 0x1

    goto :goto_e

    .line 562
    .end local v23    # "arr$":[Landroid/view/SurfaceHolder$Callback;
    .end local v24    # "blockSizeChange":Z
    .end local v25    # "c":Landroid/view/SurfaceHolder$Callback;
    .end local v26    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .end local v27    # "creating":Z
    .end local v29    # "formatChanged":Z
    .end local v30    # "i$":I
    .end local v31    # "layoutSizeChanged":Z
    .end local v32    # "len$":I
    .end local v35    # "realSizeChanged":Z
    .end local v36    # "relayoutResult":I
    .end local v37    # "reportDrawNeeded":Z
    .end local v38    # "sizeChanged":Z
    .end local v39    # "surfaceChanged":Z
    .end local v40    # "surfaceHeight":I
    .end local v41    # "surfaceWidth":I
    .end local v43    # "visible":Z
    .end local v44    # "visibleChanged":Z
    :cond_f
    const/16 v27, 0x0

    goto/16 :goto_1

    .line 563
    .restart local v27    # "creating":Z
    :cond_10
    const/16 v29, 0x0

    goto/16 :goto_2

    .line 567
    .restart local v29    # "formatChanged":Z
    :cond_11
    const/16 v24, 0x0

    goto/16 :goto_3

    .line 568
    .restart local v24    # "blockSizeChange":Z
    :cond_12
    const/16 v38, 0x0

    goto/16 :goto_4

    .line 570
    .restart local v38    # "sizeChanged":Z
    :cond_13
    const/16 v44, 0x0

    goto/16 :goto_5

    .line 571
    .restart local v44    # "visibleChanged":Z
    :cond_14
    const/16 v31, 0x0

    goto/16 :goto_6

    .line 605
    .restart local v31    # "layoutSizeChanged":Z
    .restart local v43    # "visible":Z
    :cond_15
    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move/from16 v0, v34

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 606
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move/from16 v0, v33

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    goto/16 :goto_7

    .line 764
    .end local v43    # "visible":Z
    :catch_0
    move-exception v3

    goto/16 :goto_0

    .line 609
    .restart local v43    # "visible":Z
    :cond_16
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v4

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 610
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v4

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->height:I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_7

    .line 636
    .restart local v28    # "display":Landroid/view/Display;
    :cond_17
    const/16 v7, 0x8

    goto/16 :goto_8

    .line 651
    .end local v28    # "display":Landroid/view/Display;
    .restart local v37    # "reportDrawNeeded":Z
    :cond_18
    const/4 v3, 0x0

    goto/16 :goto_9

    .line 655
    :cond_19
    const/16 v9, 0x8

    goto/16 :goto_a

    .line 676
    .restart local v36    # "relayoutResult":I
    :cond_1a
    :try_start_5
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget v0, v3, Landroid/content/res/CompatibilityInfo$Translator;->applicationInvertedScale:F

    move/from16 v22, v0

    .line 677
    .local v22, "appInvertedScale":F
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v22

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 678
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v22

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->bottom:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_b

    .line 688
    .end local v22    # "appInvertedScale":F
    .end local v36    # "relayoutResult":I
    .end local v37    # "reportDrawNeeded":Z
    :catchall_0
    move-exception v3

    :try_start_6
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    .line 683
    .restart local v36    # "relayoutResult":I
    .restart local v37    # "reportDrawNeeded":Z
    .restart local v40    # "surfaceHeight":I
    .restart local v41    # "surfaceWidth":I
    :cond_1b
    const/16 v35, 0x0

    goto/16 :goto_c

    .line 696
    .restart local v26    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .restart local v35    # "realSizeChanged":Z
    :cond_1c
    const/16 v39, 0x0

    goto/16 :goto_d

    .line 709
    .restart local v39    # "surfaceChanged":Z
    :cond_1d
    :try_start_7
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mNewSurface:Landroid/view/Surface;

    invoke-virtual {v3, v4}, Landroid/view/Surface;->transferFrom(Landroid/view/Surface;)V

    .line 711
    if-eqz v43, :cond_29

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v3}, Landroid/view/Surface;->isValid()Z

    move-result v3

    if-eqz v3, :cond_29

    .line 712
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    if-nez v3, :cond_21

    if-nez v39, :cond_1e

    if-eqz v44, :cond_21

    .line 713
    :cond_1e
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    .line 714
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/view/SurfaceView;->mIsCreating:Z

    .line 716
    if-nez v26, :cond_1f

    .line 717
    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v26

    .line 719
    :cond_1f
    move-object/from16 v23, v26

    .restart local v23    # "arr$":[Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v32, v0

    .restart local v32    # "len$":I
    const/16 v30, 0x0

    .restart local v30    # "i$":I
    :goto_f
    move/from16 v0, v30

    move/from16 v1, v32

    if-ge v0, v1, :cond_20

    aget-object v25, v23, v30

    .line 720
    .restart local v25    # "c":Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/view/SurfaceHolder$Callback;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 719
    add-int/lit8 v30, v30, 0x1

    goto :goto_f

    .line 723
    .end local v25    # "c":Landroid/view/SurfaceHolder$Callback;
    :cond_20
    if-eqz v42, :cond_21

    .line 725
    sget v3, Landroid/view/ViewRootImpl;->sSVBufferCount:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_24

    .line 726
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    sget v4, Landroid/view/ViewRootImpl;->sSVBufferCount:I

    invoke-virtual {v3, v4}, Landroid/view/Surface;->setBufferCount(I)V

    .line 732
    .end local v23    # "arr$":[Landroid/view/SurfaceHolder$Callback;
    .end local v30    # "i$":I
    .end local v32    # "len$":I
    :cond_21
    :goto_10
    if-nez v27, :cond_22

    if-nez v29, :cond_22

    if-nez v38, :cond_22

    if-nez v44, :cond_22

    if-eqz v35, :cond_26

    .line 736
    :cond_22
    if-nez v26, :cond_23

    .line 737
    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v26

    .line 739
    :cond_23
    move-object/from16 v23, v26

    .restart local v23    # "arr$":[Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v32, v0

    .restart local v32    # "len$":I
    const/16 v30, 0x0

    .restart local v30    # "i$":I
    :goto_11
    move/from16 v0, v30

    move/from16 v1, v32

    if-ge v0, v1, :cond_26

    aget-object v25, v23, v30

    .line 740
    .restart local v25    # "c":Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/SurfaceView;->mFormat:I

    move-object/from16 v0, v25

    move/from16 v1, v34

    move/from16 v2, v33

    invoke-interface {v0, v3, v4, v1, v2}, Landroid/view/SurfaceHolder$Callback;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 739
    add-int/lit8 v30, v30, 0x1

    goto :goto_11

    .line 727
    .end local v25    # "c":Landroid/view/SurfaceHolder$Callback;
    :cond_24
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/SurfaceView;->mSVBufferCount:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_21

    .line 728
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/SurfaceView;->mSVBufferCount:I

    invoke-virtual {v3, v4}, Landroid/view/Surface;->setBufferCount(I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_10

    .line 757
    .end local v23    # "arr$":[Landroid/view/SurfaceHolder$Callback;
    .end local v30    # "i$":I
    .end local v32    # "len$":I
    :catchall_1
    move-exception v3

    const/4 v4, 0x0

    :try_start_8
    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/SurfaceView;->mIsCreating:Z

    .line 758
    if-eqz p2, :cond_25

    .line 760
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    invoke-interface {v4, v5}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;)V

    .line 762
    :cond_25
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    invoke-interface {v4, v5}, Landroid/view/IWindowSession;->performDeferredDestroy(Landroid/view/IWindow;)V

    throw v3
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_0

    .line 743
    :cond_26
    if-eqz p2, :cond_29

    .line 745
    if-nez v26, :cond_27

    .line 746
    :try_start_9
    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v26

    .line 748
    :cond_27
    move-object/from16 v23, v26

    .restart local v23    # "arr$":[Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v32, v0

    .restart local v32    # "len$":I
    const/16 v30, 0x0

    .restart local v30    # "i$":I
    :goto_12
    move/from16 v0, v30

    move/from16 v1, v32

    if-ge v0, v1, :cond_29

    aget-object v25, v23, v30

    .line 749
    .restart local v25    # "c":Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, v25

    instance-of v3, v0, Landroid/view/SurfaceHolder$Callback2;

    if-eqz v3, :cond_28

    .line 750
    check-cast v25, Landroid/view/SurfaceHolder$Callback2;

    .end local v25    # "c":Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/view/SurfaceHolder$Callback2;->surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 748
    :cond_28
    add-int/lit8 v30, v30, 0x1

    goto :goto_12

    .line 757
    .end local v23    # "arr$":[Landroid/view/SurfaceHolder$Callback;
    .end local v30    # "i$":I
    .end local v32    # "len$":I
    :cond_29
    const/4 v3, 0x0

    :try_start_a
    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/view/SurfaceView;->mIsCreating:Z

    .line 758
    if-eqz p2, :cond_2a

    .line 760
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    invoke-interface {v3, v4}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;)V

    .line 762
    :cond_2a
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    invoke-interface {v3, v4}, Landroid/view/IWindowSession;->performDeferredDestroy(Landroid/view/IWindow;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_0

    goto/16 :goto_0
.end method
