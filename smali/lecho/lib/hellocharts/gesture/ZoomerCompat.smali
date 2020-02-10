.class public Llecho/lib/hellocharts/gesture/ZoomerCompat;
.super Ljava/lang/Object;
.source "ZoomerCompat.java"


# static fields
.field private static final DEFAULT_SHORT_ANIMATION_DURATION:I = 0xc8


# instance fields
.field private mAnimationDurationMillis:J

.field private mCurrentZoom:F

.field private mEndZoom:F

.field private mFinished:Z

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mStartRTC:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 42
    iput-boolean p1, p0, Llecho/lib/hellocharts/gesture/ZoomerCompat;->mFinished:Z

    .line 60
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object p1, p0, Llecho/lib/hellocharts/gesture/ZoomerCompat;->mInterpolator:Landroid/view/animation/Interpolator;

    const-wide/16 v0, 0xc8

    .line 62
    iput-wide v0, p0, Llecho/lib/hellocharts/gesture/ZoomerCompat;->mAnimationDurationMillis:J

    return-void
.end method


# virtual methods
.method public abortAnimation()V
    .locals 1

    const/4 v0, 0x1

    .line 81
    iput-boolean v0, p0, Llecho/lib/hellocharts/gesture/ZoomerCompat;->mFinished:Z

    .line 82
    iget v0, p0, Llecho/lib/hellocharts/gesture/ZoomerCompat;->mEndZoom:F

    iput v0, p0, Llecho/lib/hellocharts/gesture/ZoomerCompat;->mCurrentZoom:F

    return-void
.end method

.method public computeZoom()Z
    .locals 7

    .line 104
    iget-boolean v0, p0, Llecho/lib/hellocharts/gesture/ZoomerCompat;->mFinished:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 108
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Llecho/lib/hellocharts/gesture/ZoomerCompat;->mStartRTC:J

    sub-long/2addr v2, v4

    .line 109
    iget-wide v4, p0, Llecho/lib/hellocharts/gesture/ZoomerCompat;->mAnimationDurationMillis:J

    const/4 v0, 0x1

    cmp-long v6, v2, v4

    if-ltz v6, :cond_1

    .line 110
    iput-boolean v0, p0, Llecho/lib/hellocharts/gesture/ZoomerCompat;->mFinished:Z

    .line 111
    iget v0, p0, Llecho/lib/hellocharts/gesture/ZoomerCompat;->mEndZoom:F

    iput v0, p0, Llecho/lib/hellocharts/gesture/ZoomerCompat;->mCurrentZoom:F

    return v1

    :cond_1
    long-to-float v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v1, v1, v2

    .line 115
    iget-wide v2, p0, Llecho/lib/hellocharts/gesture/ZoomerCompat;->mAnimationDurationMillis:J

    long-to-float v2, v2

    div-float/2addr v1, v2

    .line 116
    iget v2, p0, Llecho/lib/hellocharts/gesture/ZoomerCompat;->mEndZoom:F

    iget-object v3, p0, Llecho/lib/hellocharts/gesture/ZoomerCompat;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v3, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    mul-float v2, v2, v1

    iput v2, p0, Llecho/lib/hellocharts/gesture/ZoomerCompat;->mCurrentZoom:F

    return v0
.end method

.method public forceFinished(Z)V
    .locals 0

    .line 72
    iput-boolean p1, p0, Llecho/lib/hellocharts/gesture/ZoomerCompat;->mFinished:Z

    return-void
.end method

.method public getCurrZoom()F
    .locals 1

    .line 126
    iget v0, p0, Llecho/lib/hellocharts/gesture/ZoomerCompat;->mCurrentZoom:F

    return v0
.end method

.method public startZoom(F)V
    .locals 2

    .line 91
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Llecho/lib/hellocharts/gesture/ZoomerCompat;->mStartRTC:J

    .line 92
    iput p1, p0, Llecho/lib/hellocharts/gesture/ZoomerCompat;->mEndZoom:F

    const/4 p1, 0x0

    .line 94
    iput-boolean p1, p0, Llecho/lib/hellocharts/gesture/ZoomerCompat;->mFinished:Z

    const/high16 p1, 0x3f800000    # 1.0f

    .line 95
    iput p1, p0, Llecho/lib/hellocharts/gesture/ZoomerCompat;->mCurrentZoom:F

    return-void
.end method
